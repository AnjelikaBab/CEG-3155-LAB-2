LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY dividerDatapath is
    PORT(
        clk, greset: IN STD_LOGIC;
        selA, selBComp, ldRem, ldDiv, ldQuot, ldSign, shiftQuot, shiftDiv, quotSerialIn: IN STD_LOGIC; -- Load and shift control signals
        addSel0, addSel1, selZ, sub, inc: IN STD_LOGIC; -- Arithmetic control signals
        INA, INB: IN STD_LOGIC_VECTOR(3 downto 0);
        A_msb, B_msb, incEq5, rgtz, sgn: OUT STD_LOGIC; -- Status signals
        zero, overflow : OUT STD_LOGIC; -- Status signals for errors
        quotient: OUT STD_LOGIC_VECTOR(7 downto 0);
        remainder: OUT STD_LOGIC_VECTOR(7 downto 0));
END dividerDatapath;

ARCHITECTURE structural OF dividerDatapath IS
    SIGNAL int_rem_out, int_div_out, int_quot_out: STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL rem_mux_out, div_mux_out: STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL eight_bit_INA, left_shifted_INB: STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL adder_input_A, adder_input_B, int_addr_out: STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL int_inc_out: STD_LOGIC_VECTOR(2 downto 0);
    SIGNAL not_greset, int_sign_in: STD_LOGIC;

    CONSTANT regWidth: INTEGER := 8;
    CONSTANT incWidth: INTEGER := 3;
    
    COMPONENT nBitAdderSubtractor
        GENERIC (n : INTEGER := 4);
        PORT(
            i_Ai, i_Bi: IN  STD_LOGIC_VECTOR(n-1 downto 0);
            operationFlag: IN  STD_LOGIC;
            o_CarryOut: OUT STD_LOGIC;
            o_Sum: OUT STD_LOGIC_VECTOR(n-1 downto 0));
    END COMPONENT;

    COMPONENT nBitRegister
        GENERIC(n : INTEGER := 8);
        PORT(
            i_resetBar, i_load: IN STD_LOGIC;
            i_clock: IN  STD_LOGIC;
            i_Value: IN  STD_LOGIC_VECTOR(n-1 downto 0);
            o_Value: OUT STD_LOGIC_VECTOR(n-1 downto 0));
    END COMPONENT;
    
    COMPONENT nBitShiftRegister
        GENERIC(n : INTEGER := 8);
        PORT(
            i_resetBar, i_clock: IN STD_LOGIC;
            i_load, i_shift_right, i_shift_left: IN STD_LOGIC;
            serial_in: IN STD_LOGIC;
            parallel_in: IN	STD_LOGIC_VECTOR(n-1 downto 0);
            o_Value: OUT STD_LOGIC_VECTOR(n-1 downto 0));
    END COMPONENT;

    COMPONENT nBitIncrementer
        GENERIC (n : INTEGER := 3);
        PORT ( clk, reset, increment: IN STD_LOGIC;
                y: OUT STD_LOGIC_VECTOR(n-1 downto 0));
    END COMPONENT;

    COMPONENT enardFF_2
        PORT(
            i_resetBar  : IN  STD_LOGIC;
            i_d         : IN  STD_LOGIC;
            i_enable    : IN  STD_LOGIC;
            i_clock     : IN  STD_LOGIC;
            o_q, o_qBar : OUT STD_LOGIC);
    END COMPONENT;

    COMPONENT nBitMux21
        GENERIC (n: INTEGER := 8);
        PORT ( s: IN STD_LOGIC;
            x0, x1: IN STD_LOGIC_VECTOR(n-1 downto 0);
            y: OUT STD_LOGIC_VECTOR(n-1 downto 0));
    END COMPONENT;

    COMPONENT nBitMux41
        GENERIC (n: INTEGER := 8);
        PORT ( s0, s1: IN STD_LOGIC;
            x0, x1, x2, x3: IN STD_LOGIC_VECTOR(n-1 downto 0);
            y: OUT STD_LOGIC_VECTOR(n-1 downto 0));
    END COMPONENT;

BEGIN 
    -- Remainder
    remainder_mux: nBitMux21
        GENERIC MAP (n => regWidth)
        PORT MAP (s => selA, x0 => int_addr_out, x1 => eight_bit_INA, y => rem_mux_out);

    remainder_reg: nBitRegister
        GENERIC MAP (n => regWidth)
        PORT MAP (i_resetBar => not_greset, i_load => ldRem, i_clock => clk, i_Value => rem_mux_out, o_Value => int_rem_out);

    eight_bit_INA <= INA(3) & INA(3) & INA(3) & INA(3) & INA; -- Must sign extend to allow for proper calculations

    -- Divisor
    divisor_mux: nBitMux21
        GENERIC MAP (n => regWidth)
        PORT MAP (s => selBComp, x0 => left_shifted_INB, x1 => int_addr_out, y => div_mux_out);

    divisor_reg: nBitShiftRegister
        GENERIC MAP (n => regWidth)
        PORT MAP (i_resetBar => not_greset, 
                i_clock => clk, 
                i_load => ldDiv, 
                i_shift_right => shiftDiv, 
                i_shift_left => '0', 
                serial_in => '0', 
                parallel_in => div_mux_out, 
                o_Value => int_div_out);

    left_shifted_INB <= INB & "0000";

    -- Adder
    inputA_mux: nBitMux21
        GENERIC MAP (n => regWidth)
        PORT MAP (s => selZ, x0 => int_rem_out, x1 => "00000000", y => adder_input_A); 

    inputB_mux: nBitMux41
        GENERIC MAP (n => regWidth)
        PORT MAP(s0 => addSel0, s1 => addSel1, x0 => int_div_out, x1 => int_quot_out, x2 => left_shifted_INB, x3 => eight_bit_INA, y => adder_input_B);

    adder: nBitAdderSubtractor
        GENERIC MAP (n => regWidth)
        PORT MAP (i_Ai => adder_input_A, i_Bi => adder_input_B, operationFlag => sub, o_CarryOut => overflow, o_Sum => int_addr_out);

    -- Quotient
    quotient_reg: nBitShiftRegister
        GENERIC MAP (n => regWidth)
        PORT MAP (i_resetBar => not_greset, 
                i_clock => clk, 
                i_load => ldQuot, 
                i_shift_right => '0', 
                i_shift_left => shiftQuot, 
                serial_in => quotSerialIn, 
                parallel_in => int_addr_out, 
                o_Value => int_quot_out); 
    
    -- Incrementer
    incrementer: nBitIncrementer
        GENERIC MAP (n => incWidth)
        PORT MAP (clk => clk, reset => greset, increment => inc, y => int_inc_out);

    -- Status Signals
    A_msb <= INA(3);
    B_msb <= INB(3);
    rgtz <= NOT int_addr_out(7);
    incEq5 <= int_inc_out(2) AND (NOT int_inc_out(1)) AND int_inc_out(0); -- 101
	zero <= NOT (int_quot_out(7) OR int_quot_out(6) OR int_quot_out(5) OR int_quot_out(4) OR int_quot_out(3) OR int_quot_out(2) OR int_quot_out(1) OR int_quot_out(0));

    int_sign_in <= INA(3) XOR INB(3);
    sign_reg: enardFF_2
        PORT MAP (i_resetBar => '1', 
                i_d => int_sign_in, 
                i_enable => ldSign, 
                i_clock => clk, 
                o_q => sgn, 
                o_qBar => open);

    -- Output Drivers
    quotient <= int_quot_out;
    remainder <= int_rem_out;

    not_greset <= not greset;

END structural;
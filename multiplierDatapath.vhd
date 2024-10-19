LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY multiplierDatapath IS
    PORT(
        clk, greset: IN STD_LOGIC;
        selA, selB, selOperand, p_neg, loadA, loadB, loadP, ldSign, shiftLA, shiftRB: IN STD_LOGIC; -- Load and shift control signals
        INA, INB: IN STD_LOGIC_VECTOR(3 downto 0);
        product: OUT STD_LOGIC_VECTOR(7 downto 0);
        eightbit_INA, eightbit_INB: OUT STD_LOGIC_VECTOR(7 downto 0);  -- Changed to OUT since it's used in COMPONENTS
        A_msb, B_msb, B_lsb, sgn, beq0: OUT STD_LOGIC; -- Status signals
        zero, overflow: OUT STD_LOGIC  -- Status signals for errors
    );
END multiplierDatapath;

ARCHITECTURE structural OF multiplierDatapath IS
    SIGNAL two_comp_A, two_comp_B, two_comp_P: STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL A_mux_out, B_mux_out, P_mux_out, adder_mux_out: STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL left_shift_A, right_shift_B, int_addr_out, reg_P_output: STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL not_greset, int_sign_in: STD_LOGIC;

    CONSTANT regWidth: INTEGER := 8;

BEGIN 
    -- Signal assignment for sign extension
    eightbit_INA <= (INA(3) & INA(3) & INA(3) & INA(3) & INA);
    eightbit_INB <= (INB(3) & INB(3) & INB(3) & INB(3) & INB);

    -- Inversion of greset for internal use
    not_greset <= NOT greset; 


    COMPONENT complement2s
        PORT (
            din: IN STD_LOGIC_VECTOR(7 downto 0); 
            overflow: OUT STD_LOGIC;
            dout: OUT STD_LOGIC_VECTOR(7 downto 0)
        );
    END COMPONENT;
    
    COMPONENT nBitAdderSubtractor
        GENERIC (n: INTEGER := 8);
        PORT(
            i_Ai, i_Bi: IN  STD_LOGIC_VECTOR(n-1 downto 0);
            operationFlag: IN  STD_LOGIC;
            o_CarryOut: OUT STD_LOGIC;
            o_Sum: OUT STD_LOGIC_VECTOR(n-1 downto 0)
        );
    END COMPONENT;

    COMPONENT nBitRegister
        GENERIC(n: INTEGER := 8);
        PORT(
            i_resetBar, i_load: IN STD_LOGIC;
            i_clock: IN  STD_LOGIC;
            i_Value: IN  STD_LOGIC_VECTOR(n-1 downto 0);
            o_Value: OUT STD_LOGIC_VECTOR(n-1 downto 0)
        );
    END COMPONENT;
    
    COMPONENT nBitShiftRegister
        GENERIC(n: INTEGER := 8);
        PORT(
            i_resetBar, i_clock: IN STD_LOGIC;
            i_load, i_shift_right, i_shift_left: IN STD_LOGIC;
            serial_in: IN STD_LOGIC;
            parallel_in: IN	STD_LOGIC_VECTOR(n-1 downto 0);
            o_Value: OUT STD_LOGIC_VECTOR(n-1 downto 0)
        );
    END COMPONENT;

    COMPONENT enardFF_2
        PORT(
            i_resetBar: IN  STD_LOGIC;
            i_d: IN  STD_LOGIC;
            i_enable: IN  STD_LOGIC;
            i_clock: IN  STD_LOGIC;
            o_q, o_qBar: OUT STD_LOGIC
        );
    END COMPONENT;

    COMPONENT nBitMux21
        GENERIC (n: INTEGER := 8);
        PORT(
            s: IN STD_LOGIC;
            x0, x1: IN STD_LOGIC_VECTOR(n-1 downto 0);
            y: OUT STD_LOGIC_VECTOR(n-1 downto 0)
        );
    END COMPONENT;

    COMPONENT nBitMux41
        GENERIC (n: INTEGER := 8);
        PORT(
            s0, s1: IN STD_LOGIC;
            x0, x1, x2, x3: IN STD_LOGIC_VECTOR(n-1 downto 0);
            y: OUT STD_LOGIC_VECTOR(n-1 downto 0)
        );
    END COMPONENT;

    -- Signal assignments for two's complement
    two_comp_A_inst: complement2s
        PORT MAP (
            din => eightbit_INA,        
            overflow => overflow,
            dout => two_comp_A         
        );

    two_comp_B_inst: complement2s
        PORT MAP (
            din => eightbit_INB,        
            overflow => overflow,
            dout => two_comp_B         
        );

    two_comp_P_inst: complement2s
        PORT MAP (
            din => int_addr_out,        
            overflow => overflow,
            dout => two_comp_P         
        );

    -- Multiplexers and Registers
    mux_A: nBitMux21
        GENERIC MAP (n => regWidth)
        PORT MAP (s => selA, x0 => eightbit_INA, x1 => two_comp_A, y => A_mux_out);

    reg_A_left_shift: nBitShiftRegister
        GENERIC MAP (n => regWidth)
        PORT MAP (
            i_resetBar => not_greset, 
            i_clock => clk, 
            i_load => loadA, 
            i_shift_right => '0', 
            i_shift_left => shiftLA, 
            serial_in => '0', 
            parallel_in => A_mux_out, 
            o_Value => left_shift_A
        );

    mux_B: nBitMux21
        GENERIC MAP (n => regWidth)
        PORT MAP (s => selB, x0 => eightbit_INB, x1 => two_comp_B, y => B_mux_out);

    reg_B_right_shift: nBitShiftRegister
        GENERIC MAP (n => regWidth)
        PORT MAP (
            i_resetBar => not_greset, 
            i_clock => clk, 
            i_load => loadB, 
            i_shift_right => shiftRB, 
            i_shift_left => '0', 
            serial_in => '0', 
            parallel_in => B_mux_out, 
            o_Value => right_shift_B
        );

    mux_P: nBitMux21
        GENERIC MAP (n => regWidth)
        PORT MAP (s => p_neg, x0 => int_addr_out, x1 => two_comp_P, y => P_mux_out); 

    reg_P: nBitRegister
        GENERIC MAP (n => regWidth)
        PORT MAP (
            i_resetBar => not_greset, 
            i_load => loadP, 
            i_clock => clk, 
            i_Value => P_mux_out, 
            o_Value => product
        );

    -- Prepare adder input correctly
    mux_adder: nBitMux21
        GENERIC MAP (n => regWidth)
        PORT MAP (s => selOperand, x0 => (others => '0'), x1 => left_shift_A, y => adder_mux_out);

    adder: nBitAdderSubtractor
        GENERIC MAP (n => regWidth)
        PORT MAP (
            i_Ai => adder_mux_out, 
            i_Bi => reg_P_output, 
            operationFlag => '0', 
            o_CarryOut => overflow, 
            o_Sum => int_addr_out
        );

    -- Status Signals
    A_msb <= INA(3);
    B_msb <= INB(3);
    B_lsb <= INB(0);
    beq0 <= NOT (right_shift_B(7) OR right_shift_B(6) OR right_shift_B(5) OR right_shift_B(4) OR right_shift_B(3) OR right_shift_B(2) OR right_shift_B(1) OR right_shift_B(0));
    zero <= NOT (reg_P_output(7) OR reg_P_output(6) OR reg_P_output(5) OR reg_P_output(4) OR reg_P_output(3) OR reg_P_output(2) OR reg_P_output(1) OR reg_P_output(0));

    int_sign_in <= INA(3) XOR INB(3);
    sign_reg: enardFF_2
        PORT MAP (
            i_resetBar => '1', 
            i_d => int_sign_in, 
            i_enable => ldSign, 
            i_clock => clk, 
            o_q => sgn, 
            o_qBar => OPEN
        );

END structural;

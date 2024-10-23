LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY multiplierControlpath IS
    PORT(
        clk, reset: IN STD_LOGIC;
        selA, selB, selOperand, p_neg, loadA, loadB, loadP, ldSign, shiftLA, shiftRB: OUT STD_LOGIC;
        A_msb, B_msb, B_lsb, beq0, sgn: IN STD_LOGIC;
        greset: OUT STD_LOGIC
    ); 
END multiplierControlpath;

ARCHITECTURE rtl OF multiplierControlpath IS
    SIGNAL state_in, state_out: STD_LOGIC_VECTOR(9 downto 0);
    SIGNAL control_path_reset: STD_LOGIC;

    COMPONENT enardff_2
        PORT(
            i_resetBar: IN STD_LOGIC;
            i_d: IN STD_LOGIC;
            i_enable: IN STD_LOGIC;
            i_clock: IN STD_LOGIC;
            o_q, o_qBar: OUT STD_LOGIC
        );
    END COMPONENT;

BEGIN 
    stateReg0: enardff_2 PORT MAP(
        i_resetBar => '1',
        i_d => state_in(0),
        i_enable => '1',
        i_clock => clk,
        o_q => state_out(0),
        o_qBar => open
    );

    -- State registers
    stateRegloop: FOR i IN 1 TO 9 GENERATE
        state_n: enardff_2 PORT MAP(
            i_resetBar => control_path_reset,
            i_d => state_in(i),
            i_enable => '1',
            i_clock => clk,
            o_q => state_out(i),
            o_qBar => open
        );
    END GENERATE stateRegloop;

    -- State Input Signals
    state_in(0) <= reset;
    state_in(1) <= state_out(0) AND A_msb;
    state_in(2) <= state_out(0) AND (NOT A_msb);
    state_in(3) <= (state_out(1) OR state_out(2)) AND B_msb;
    state_in(4) <= (state_out(1) OR state_out(2)) AND (NOT B_msb);
    state_in(5) <= (((state_out(3) OR state_out(4)) AND (NOT B_lsb)) OR state_out(7) OR (state_out(6) AND NOT(beq0) AND (NOT B_lsb))); 
    state_in(6) <= state_out(5);
    state_in(7) <= (((state_out(3) OR state_out(4)) AND B_lsb) OR (state_out(6) AND NOT(beq0) AND B_lsb)); 
    state_in(8) <= state_out(6) AND beq0 AND sgn;
    state_in(9) <= state_out(6) AND beq0 AND (NOT sgn);

    control_path_reset <= NOT reset;

    -- Output Control Signals
    selA <= state_out(1);
    selB <= state_out(3);
    selOperand <= state_out(7);
    loadP <= state_out(7) OR state_out(8);
    loadB <= state_out(3) OR state_out(4);
    loadA <= state_out(1) OR state_out(2); 
    ldSign <= state_out(0);
    p_neg <= state_out(8); 
    shiftRB <= state_out(5);
    shiftLA <= state_out(6);
    greset <= state_out(0);

END rtl;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY dividerControlpath is
    PORT(
        clk, reset: IN STD_LOGIC;
        A_msb, B_msb, incEq5, rgtz, sgn: IN STD_LOGIC; -- Status signals
        selA, selBComp, ldRem, ldDiv, ldQuot, ldSign, shiftQuot, shiftDiv, quotSerialIn: OUT STD_LOGIC; -- Load and shift control signals
        addSel0, addSel1, selZ, sub, inc: OUT STD_LOGIC; -- Arithmetic control signals
        greset: OUT STD_LOGIC); 
END dividerControlpath;

ARCHITECTURE rtl OF dividerControlpath is
    SIGNAL state_in, state_out: STD_LOGIC_VECTOR(9 downto 0);
    SIGNAL control_path_reset: STD_LOGIC;

    COMPONENT enardff_2
        PORT(
            i_resetBar	: IN	STD_LOGIC;
            i_d		: IN	STD_LOGIC;
            i_enable	: IN	STD_LOGIC;
            i_clock		: IN	STD_LOGIC;
            o_q, o_qBar	: OUT	STD_LOGIC);
    END COMPONENT;

BEGIN 
    stateReg0: enardff_2 PORT MAP(
        i_resetBar => '1',
        i_d => state_in(0),
        i_enable => '1',
        i_clock => clk,
        o_q => state_out(0),
        o_qBar => open);

    -- State registers
    stateRegloop: FOR i IN 1 TO 9 GENERATE
        state_n: enardff_2 PORT MAP(
            i_resetBar => control_path_reset,
            i_d => state_in(i),
            i_enable => '1',
            i_clock => clk,
            o_q => state_out(i),
            o_qBar => open);
    END GENERATE stateRegloop;

    -- State Input Signals
    state_in(0) <= reset;
    state_in(1) <= state_out(0) AND A_msb;
    state_in(2) <= state_out(0) AND (NOT A_msb);
    state_in(3) <= (state_out(1) OR state_out(2)) AND B_msb;
    state_in(4) <= (state_out(1) OR state_out(2)) AND (NOT B_msb);
    state_in(5) <= (state_out(3) OR state_out(4) OR state_out(8)) AND (NOT incEq5);
    state_in(6) <= state_out(5) AND rgtz;
    state_in(7) <= state_out(5) AND (NOT rgtz);
    state_in(8) <= state_out(6) OR state_out(7);
    state_in(9) <= state_out(8) AND (NOT incEq5) AND sgn;

    control_path_reset <= NOT reset;

    -- Output Control Signals
    selA <= state_out(2);
    selBComp <= state_out(3);
    ldRem <= state_out(1) OR state_out(2) OR state_out(5) OR state_out(7);
    ldDiv <= state_out(3) OR state_out(4);
    ldQuot <= state_out(9);
    ldSign <= state_out(0);
    shiftQuot <= state_out(7) OR state_out(6);
    shiftDiv <= state_out(8);
    quotSerialIn <= state_out(6);
    addSel0 <= state_out(1) OR state_out(9);
    addSel1 <= state_out(1) OR state_out(3);
    selZ <= state_out(1) OR state_out(3) OR state_out(9);
    sub <= state_out(1) OR state_out(3) OR state_out(5) OR state_out(9);
    inc <= state_out(5);
    greset <= state_out(0);

end rtl;
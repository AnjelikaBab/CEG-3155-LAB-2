LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY multiplierTopLevel is
    PORT(
        clk, reset: IN STD_LOGIC;
        INA, INB: IN STD_LOGIC_VECTOR(3 downto 0);  -- Input signals (4 bits each)
        zero, overflow: OUT STD_LOGIC;               -- Status output signals
        product: OUT STD_LOGIC_VECTOR(7 downto 0)    -- Output for the product (8 bits)
    );
END multiplierTopLevel;

ARCHITECTURE rtl OF multiplierTopLevel IS 
    -- Internal control signals
    SIGNAL int_selA, int_selBComp, int_selOperand, int_p_neg: STD_LOGIC;
    SIGNAL int_loadA, int_loadB, int_loadP: STD_LOGIC;
    SIGNAL int_ldSign, int_shiftLA, int_shiftRB: STD_LOGIC;
    SIGNAL int_A_msb, int_B_msb, int_B_lsb, int_beq0, int_sgn: STD_LOGIC;
    SIGNAL int_greset: STD_LOGIC;

    COMPONENT multiplierControlpath
        PORT(
            clk, reset: IN STD_LOGIC;
            selA, selB, selOperand, p_neg, loadA, loadB, loadP, ldSign, shiftLA, shiftRB: OUT STD_LOGIC; -- Changed to OUT
            A_msb, B_msb, B_lsb, beq0, sgn: IN STD_LOGIC;
            greset: OUT STD_LOGIC
        ); 
    END COMPONENT;

    COMPONENT multiplierDatapath
        PORT(
            clk, greset: IN STD_LOGIC;
            selA, selB, selOperand, p_neg, loadA, loadB, loadP, ldSign, shiftLA, shiftRB: IN STD_LOGIC; -- Load and shift control signals
            INA, INB: IN STD_LOGIC_VECTOR(3 downto 0);
            product: OUT STD_LOGIC_VECTOR(7 downto 0);
            A_msb, B_msb, B_lsb, sgn, beq0: OUT STD_LOGIC; -- Status signals
            zero, overflow: OUT STD_LOGIC  -- Status signals for errors
        );
    END COMPONENT;

BEGIN
    controlPath: multiplierControlpath PORT MAP(
        clk => clk,
        reset => reset,
        selA => int_selA,
        selB => int_selBComp,
        selOperand => int_selOperand,
        p_neg => int_p_neg,
        loadA => int_loadA,
        loadB => int_loadB,
        loadP => int_loadP,
        ldSign => int_ldSign,
        shiftLA => int_shiftLA,
        shiftRB => int_shiftRB,
        A_msb => int_A_msb,
        B_msb => int_B_msb,
        B_lsb => int_B_lsb,
        beq0 => int_beq0,
        sgn => int_sgn,
        greset => int_greset
    );

    dataPath: multiplierDatapath PORT MAP(
        clk => clk,
        greset => int_greset,
        selA => int_selA,
        selB => int_selBComp,
        selOperand => int_selOperand,
        p_neg => int_p_neg,
        loadA => int_loadA,
        loadB => int_loadB,
        loadP => int_loadP,
        ldSign => int_ldSign,
        shiftLA => int_shiftLA,
        shiftRB => int_shiftRB,
        INA => INA,
        INB => INB,
        product => product,
        A_msb => int_A_msb,
        B_msb => int_B_msb,
        B_lsb => int_B_lsb,
        sgn => int_sgn,
        beq0 => int_beq0,
        zero => zero,
        overflow => overflow 
    );

END rtl;
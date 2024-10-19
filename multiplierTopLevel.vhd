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
    SIGNAL int_A_msb, int_B_msb, int_beq0, int_sgn: STD_LOGIC;
    SIGNAL int_greset: STD_LOGIC;

    COMPONENT multiplierControlpath
        PORT(
            clk, reset: IN STD_LOGIC;
            A_msb, B_msb: IN STD_LOGIC;               -- Status signals
            selA, selBComp, selOperand, p_neg, loadA, loadB, loadP: OUT STD_LOGIC  -- Control signals
        );
    END COMPONENT;

    COMPONENT multiplierDatapath
        PORT(
            clk, reset: IN STD_LOGIC;
            selA, selBComp, selOperand, p_neg, loadA, loadB, loadP: IN STD_LOGIC; -- Control signals
            INA, INB: IN STD_LOGIC_VECTOR(3 downto 0);          -- Input signals (4 bits each)
            A_msb, B_msb, beq0, sgn: OUT STD_LOGIC;            -- Status signals
            zero, overflow: OUT STD_LOGIC;                      -- Status output signals
            product: OUT STD_LOGIC_VECTOR(7 downto 0)         -- Product output (8 bits)
        );
    END COMPONENT;

BEGIN
    controlPath: multiplierControlpath PORT MAP(
        clk => clk,
        reset => reset,
        A_msb => int_A_msb,
        B_msb => int_B_msb,
        selA => int_selA,
        selBComp => int_selBComp,
        selOperand => int_selOperand,
        p_neg => int_p_neg,
        loadA => int_loadA,
        loadB => int_loadB,
        loadP => int_loadP
    );

    dataPath: multiplierDatapath PORT MAP(
        clk => clk,
        reset => reset,
        selA => int_selA,
        selBComp => int_selBComp,
        selOperand => int_selOperand,
        p_neg => int_p_neg,
        loadA => int_loadA,
        loadB => int_loadB,
        loadP => int_loadP,
        INA => INA,
        INB => INB,
        A_msb => int_A_msb,
        B_msb => int_B_msb,
        beq0 => int_beq0,
        sgn => int_sgn,
        zero => zero,
        overflow => overflow,
        product => product
    );

END rtl;

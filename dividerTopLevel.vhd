LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY dividerTopLevel is
    PORT(
        clk, reset: IN STD_LOGIC;
        INA, INB: IN STD_LOGIC_VECTOR(3 downto 0);
        zero, overflow: OUT STD_LOGIC; 
        quotient, remainder: OUT STD_LOGIC_VECTOR(7 downto 0)
    );
END dividerTopLevel;

ARCHITECTURE rtl OF dividerTopLevel IS 
    SIGNAL int_selA, int_selBComp, int_ldRem, int_ldDiv, int_ldQuot, int_ldSign: STD_LOGIC;
    SIGNAL int_shiftQuot, int_shiftDiv, int_quotSerialIn: STD_LOGIC;
    SIGNAL int_addSel0, int_addSel1, int_selZ, int_sub, int_inc: STD_LOGIC;
    SIGNAL int_greset: STD_LOGIC;
    SIGNAL int_A_msb, int_B_msb, int_incEq5, int_rgtz, int_sgn: STD_LOGIC;

    COMPONENT dividerControlpath
        PORT(
            clk, reset: IN STD_LOGIC;
            A_msb, B_msb, incEq5, rgtz, sgn: IN STD_LOGIC; -- Status signals
            selA, selBComp, ldRem, ldDiv, ldQuot, ldSign, shiftQuot, shiftDiv, quotSerialIn: OUT STD_LOGIC; -- Load and shift control signals
            addSel0, addSel1, selZ, sub, inc: OUT STD_LOGIC; -- Arithmetic control signals
            greset: OUT STD_LOGIC); 
    END COMPONENT;

    COMPONENT dividerDatapath
        PORT(
            clk, greset: IN STD_LOGIC;
            selA, selBComp, ldRem, ldDiv, ldQuot, ldSign, shiftQuot, shiftDiv, quotSerialIn: IN STD_LOGIC; -- Load and shift control signals
            addSel0, addSel1, selZ, sub, inc: IN STD_LOGIC; -- Arithmetic control signals
            INA, INB: IN STD_LOGIC_VECTOR(3 downto 0);
            A_msb, B_msb, incEq5, rgtz, sgn: OUT STD_LOGIC; -- Status signals
            zero, overflow : OUT STD_LOGIC; -- Status signals for errors
            quotient: OUT STD_LOGIC_VECTOR(7 downto 0);
            remainder: OUT STD_LOGIC_VECTOR(7 downto 0));
    END COMPONENT;

BEGIN
    controlPath: dividerControlpath PORT MAP(
        clk => clk,
        reset => reset,
        A_msb => int_A_msb,
        B_msb => int_B_msb,
        incEq5 => int_incEq5,
        rgtz => int_rgtz,
        sgn => int_sgn,
        selA => int_selA,
        selBComp => int_selBComp,
        ldRem => int_ldRem,
        ldDiv => int_ldDiv,
        ldQuot => int_ldQuot,
        ldSign => int_ldSign,
        shiftQuot => int_shiftQuot,
        shiftDiv => int_shiftDiv,
        quotSerialIn => int_quotSerialIn,
        addSel0 => int_addSel0,
        addSel1 => int_addSel1,
        selZ => int_selZ,
        sub => int_sub,
        inc => int_inc,
        greset => int_greset
    );

    dataPath: dividerDatapath PORT MAP(
        clk => clk,
        greset => int_greset,
        selA => int_selA,
        selBComp => int_selBComp,
        ldRem => int_ldRem,
        ldDiv => int_ldDiv,
        ldQuot => int_ldQuot,
        ldSign => int_ldSign,
        shiftQuot => int_shiftQuot,
        shiftDiv => int_shiftDiv,
        quotSerialIn => int_quotSerialIn,
        addSel0 => int_addSel0,
        addSel1 => int_addSel1,
        selZ => int_selZ,
        sub => int_sub,
        inc => int_inc,
        INA => INA,
        INB => INB,
        A_msb => int_A_msb,
        B_msb => int_B_msb,
        incEq5 => int_incEq5,
        rgtz => int_rgtz,
        sgn => int_sgn,
        zero => zero,
        overflow => overflow,
        quotient => quotient,
        remainder => remainder
    );
END rtl;
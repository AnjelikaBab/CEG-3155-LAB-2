LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY complement2s IS
    PORT ( 
        din : IN STD_LOGIC_VECTOR(7 downto 0);
        overflow: OUT STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (7 downto 0)
    );
END complement2s;

ARCHITECTURE func OF complement2s IS

   
    SIGNAL not_din : STD_LOGIC_VECTOR(7 downto 0);

    COMPONENT nBitAdderSubtractor 
        PORT(
            i_Ai, i_Bi: IN  STD_LOGIC_VECTOR(7 downto 0);
            operationFlag: IN  STD_LOGIC;
            o_CarryOut: OUT STD_LOGIC;
            o_Sum: OUT STD_LOGIC_VECTOR(7 downto 0)
        );
    END COMPONENT;

BEGIN


    not_din <= not din;

 
    adder: nBitAdderSubtractor
        PORT MAP (
            i_Ai => "00000001", 
            i_Bi => not_din,     
            operationFlag => '0', -- '0' for addition
            o_CarryOut => overflow,
            o_Sum => dout
        );

END func;

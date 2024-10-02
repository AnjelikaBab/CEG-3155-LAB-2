LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY threeBitAdderSubtractor IS
	PORT(
		i_Ai, i_Bi     : IN  STD_LOGIC_VECTOR(2 downto 0);
		operationFlag  : IN  STD_LOGIC;
		o_CarryOut     : OUT STD_LOGIC;
		o_Sum          : OUT STD_LOGIC_VECTOR(2 downto 0));
END threeBitAdderSubtractor;

ARCHITECTURE rtl OF threeBitAdderSubtractor IS
	SIGNAL int_Sum, int_CarryOut : STD_LOGIC_VECTOR(2 downto 0);

	COMPONENT oneBitAdderSubtractor
	PORT(
		i_CarryIn      : IN  STD_LOGIC;
		operationFlag  : IN  STD_LOGIC;
		i_Ai, i_Bi     : IN  STD_LOGIC;
		o_Sum, o_CarryOut : OUT STD_LOGIC);
	END COMPONENT;

BEGIN
	-- Instantiation for the most significant bit (bit 2)
	add2: oneBitAdderSubtractor
	PORT MAP (i_CarryIn => int_CarryOut(1), -- Connect carry from bit 1
			  operationFlag => operationFlag,
			  i_Ai => i_Ai(2),
			  i_Bi => i_Bi(2),
			  o_Sum => int_Sum(2),
			  o_CarryOut => int_CarryOut(2));

	-- Instantiation for bit 1
	add1: oneBitAdderSubtractor
	PORT MAP (i_CarryIn => int_CarryOut(0), -- Connect carry from bit 0
			  operationFlag => operationFlag,
			  i_Ai => i_Ai(1),
			  i_Bi => i_Bi(1),
			  o_Sum => int_Sum(1),
			  o_CarryOut => int_CarryOut(1));

	-- Instantiation for the least significant bit (bit 0)
	add0: oneBitAdderSubtractor
	PORT MAP (i_CarryIn => operationFlag, -- Carry-in for the least significant bit is the operationFlag
			  operationFlag => operationFlag,
			  i_Ai => i_Ai(0),
			  i_Bi => i_Bi(0),
			  o_Sum => int_Sum(0),
			  o_CarryOut => int_CarryOut(0));

	-- Output Driver
	o_Sum <= int_Sum;
	o_CarryOut <= int_CarryOut(2); -- Carry-out from the most significant bit

END rtl;

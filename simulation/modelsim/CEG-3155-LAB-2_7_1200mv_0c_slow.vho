-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/18/2024 18:28:07"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	dividerTopLevel IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	INA : IN std_logic_vector(3 DOWNTO 0);
	INB : IN std_logic_vector(3 DOWNTO 0);
	zero : OUT std_logic;
	overflow : OUT std_logic;
	quotient : OUT std_logic_vector(7 DOWNTO 0);
	remainder : OUT std_logic_vector(7 DOWNTO 0)
	);
END dividerTopLevel;

-- Design Ports Information
-- zero	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[0]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[1]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[2]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[4]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[6]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[2]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[3]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[4]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[5]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[6]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[7]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INB[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INA[3]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INB[2]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INB[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INB[0]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INA[2]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INA[0]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INA[1]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF dividerTopLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_INA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_INB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_zero : std_logic;
SIGNAL ww_overflow : std_logic;
SIGNAL ww_quotient : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_remainder : std_logic_vector(7 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \dataPath|divisor_reg|regloop:2:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|divisor_reg|regloop:0:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|divisor_reg|regloop:1:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ : std_logic;
SIGNAL \dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\ : std_logic;
SIGNAL \dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \dataPath|divisor_reg|mux_0|muxfinal|y~0_combout\ : std_logic;
SIGNAL \dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0_combout\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \quotient[0]~output_o\ : std_logic;
SIGNAL \quotient[1]~output_o\ : std_logic;
SIGNAL \quotient[2]~output_o\ : std_logic;
SIGNAL \quotient[3]~output_o\ : std_logic;
SIGNAL \quotient[4]~output_o\ : std_logic;
SIGNAL \quotient[5]~output_o\ : std_logic;
SIGNAL \quotient[6]~output_o\ : std_logic;
SIGNAL \quotient[7]~output_o\ : std_logic;
SIGNAL \remainder[0]~output_o\ : std_logic;
SIGNAL \remainder[1]~output_o\ : std_logic;
SIGNAL \remainder[2]~output_o\ : std_logic;
SIGNAL \remainder[3]~output_o\ : std_logic;
SIGNAL \remainder[4]~output_o\ : std_logic;
SIGNAL \remainder[5]~output_o\ : std_logic;
SIGNAL \remainder[6]~output_o\ : std_logic;
SIGNAL \remainder[7]~output_o\ : std_logic;
SIGNAL \dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \controlPath|stateReg0|int_q~q\ : std_logic;
SIGNAL \dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\ : std_logic;
SIGNAL \dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0_combout\ : std_logic;
SIGNAL \dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\ : std_logic;
SIGNAL \INB[3]~input_o\ : std_logic;
SIGNAL \INA[3]~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \controlPath|stateRegloop:1:state_n|int_q~q\ : std_logic;
SIGNAL \controlPath|stateRegloop:2:state_n|int_q~q\ : std_logic;
SIGNAL \controlPath|state_in[4]~5_combout\ : std_logic;
SIGNAL \controlPath|stateRegloop:4:state_n|int_q~q\ : std_logic;
SIGNAL \dataPath|int_sign_in~combout\ : std_logic;
SIGNAL \dataPath|sign_reg|int_q~q\ : std_logic;
SIGNAL \controlPath|state_in[9]~1_combout\ : std_logic;
SIGNAL \controlPath|state_in[9]~2_combout\ : std_logic;
SIGNAL \controlPath|stateRegloop:9:state_n|int_q~q\ : std_logic;
SIGNAL \controlPath|selZ~0_combout\ : std_logic;
SIGNAL \dataPath|remainder_mux|muxloop:4:mux_n|y~0_combout\ : std_logic;
SIGNAL \controlPath|ldRem~0_combout\ : std_logic;
SIGNAL \dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\ : std_logic;
SIGNAL \controlPath|state_in[3]~0_combout\ : std_logic;
SIGNAL \controlPath|stateRegloop:3:state_n|int_q~q\ : std_logic;
SIGNAL \dataPath|remainder_mux|muxloop:3:mux_n|y~0_combout\ : std_logic;
SIGNAL \dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\ : std_logic;
SIGNAL \controlPath|sub~combout\ : std_logic;
SIGNAL \controlPath|addSel1~combout\ : std_logic;
SIGNAL \controlPath|addSel0~combout\ : std_logic;
SIGNAL \dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \INA[0]~input_o\ : std_logic;
SIGNAL \dataPath|quotient_reg|mux_0|mux1|y~0_combout\ : std_logic;
SIGNAL \dataPath|quotient_reg|int_enable~combout\ : std_logic;
SIGNAL \dataPath|quotient_reg|regloop:0:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \dataPath|adder|add_0|o_Sum~combout\ : std_logic;
SIGNAL \dataPath|remainder_mux|muxloop:0:mux_n|y~0_combout\ : std_logic;
SIGNAL \dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\ : std_logic;
SIGNAL \dataPath|adder|add_0|carryFromBoth~combout\ : std_logic;
SIGNAL \INA[1]~input_o\ : std_logic;
SIGNAL \dataPath|adder|add_0|carryFromBi~combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:1:addrn|o_Sum~combout\ : std_logic;
SIGNAL \dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \dataPath|quotient_reg|regloop:1:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|inputB_mux|muxloop:1:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \dataPath|inputB_mux|muxloop:1:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:1:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:3:addrn|o_Sum~combout\ : std_logic;
SIGNAL \dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \dataPath|divisor_reg|regloop:3:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \dataPath|quotient_reg|regloop:4:bit_n|int_q~q\ : std_logic;
SIGNAL \INB[0]~input_o\ : std_logic;
SIGNAL \dataPath|divisor_reg|regloop:4:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \INB[1]~input_o\ : std_logic;
SIGNAL \dataPath|divisor_reg|regloop:5:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \INB[2]~input_o\ : std_logic;
SIGNAL \dataPath|divisor_reg|regloop:6:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \dataPath|divisor_reg|mux_msb|muxfinal|selX0~0_combout\ : std_logic;
SIGNAL \dataPath|divisor_reg|regloop:7:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|divisor_reg|regloop:6:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|divisor_reg|regloop:5:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|divisor_reg|regloop:4:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \dataPath|remainder_mux|muxloop:5:mux_n|y~0_combout\ : std_logic;
SIGNAL \dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\ : std_logic;
SIGNAL \dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \dataPath|remainder_mux|muxloop:6:mux_n|y~0_combout\ : std_logic;
SIGNAL \dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\ : std_logic;
SIGNAL \dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \dataPath|remainder_mux|muxloop:7:mux_n|y~0_combout\ : std_logic;
SIGNAL \dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\ : std_logic;
SIGNAL \dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\ : std_logic;
SIGNAL \controlPath|stateRegloop:6:state_n|int_q~q\ : std_logic;
SIGNAL \controlPath|shiftQuot~combout\ : std_logic;
SIGNAL \controlPath|stateRegloop:8:state_n|int_q~q\ : std_logic;
SIGNAL \controlPath|state_in~3_combout\ : std_logic;
SIGNAL \controlPath|state_in[5]~4_combout\ : std_logic;
SIGNAL \controlPath|stateRegloop:5:state_n|int_q~q\ : std_logic;
SIGNAL \controlPath|stateRegloop:7:state_n|int_q~q\ : std_logic;
SIGNAL \dataPath|adder|loop_add:2:addrn|o_Sum~combout\ : std_logic;
SIGNAL \dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \dataPath|quotient_reg|regloop:2:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \dataPath|quotient_reg|regloop:3:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|zero~0_combout\ : std_logic;
SIGNAL \dataPath|quotient_reg|mux_msb|mux1|y~2_combout\ : std_logic;
SIGNAL \dataPath|quotient_reg|regloop:7:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \dataPath|quotient_reg|regloop:5:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|zero~1_combout\ : std_logic;
SIGNAL \dataPath|zero~2_combout\ : std_logic;
SIGNAL \dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:7:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:7:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \dataPath|quotient_reg|regloop:6:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|remainder_mux|muxloop:1:mux_n|y~0_combout\ : std_logic;
SIGNAL \dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\ : std_logic;
SIGNAL \INA[2]~input_o\ : std_logic;
SIGNAL \dataPath|remainder_mux|muxloop:2:mux_n|y~0_combout\ : std_logic;
SIGNAL \dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\ : std_logic;
SIGNAL \controlPath|state_in\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \controlPath|stateReg0|ALT_INV_int_q~q\ : std_logic;
SIGNAL \dataPath|ALT_INV_zero~2_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_INA <= INA;
ww_INB <= INB;
zero <= ww_zero;
overflow <= ww_overflow;
quotient <= ww_quotient;
remainder <= ww_remainder;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\controlPath|stateReg0|ALT_INV_int_q~q\ <= NOT \controlPath|stateReg0|int_q~q\;
\dataPath|ALT_INV_zero~2_combout\ <= NOT \dataPath|zero~2_combout\;

-- Location: LCCOMB_X4_Y43_N14
\dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\ = (\controlPath|addSel1~combout\ & (((\controlPath|addSel0~combout\)))) # (!\controlPath|addSel1~combout\ & ((\controlPath|addSel0~combout\ & ((\dataPath|quotient_reg|regloop:6:bit_n|int_q~q\))) # 
-- (!\controlPath|addSel0~combout\ & (\dataPath|divisor_reg|regloop:6:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|divisor_reg|regloop:6:bit_n|int_q~q\,
	datab => \controlPath|addSel1~combout\,
	datac => \dataPath|quotient_reg|regloop:6:bit_n|int_q~q\,
	datad => \controlPath|addSel0~combout\,
	combout => \dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X4_Y43_N8
\dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\ = (\dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\ & ((\INA[3]~input_o\) # ((!\controlPath|addSel1~combout\)))) # (!\dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\ & 
-- (((\INB[2]~input_o\ & \controlPath|addSel1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INA[3]~input_o\,
	datab => \INB[2]~input_o\,
	datac => \dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\,
	datad => \controlPath|addSel1~combout\,
	combout => \dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X4_Y43_N22
\dataPath|adder|loop_add:6:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ = \dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\ $ (\controlPath|sub~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\,
	datad => \controlPath|sub~combout\,
	combout => \dataPath|adder|loop_add:6:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X4_Y43_N20
\dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\ = (\controlPath|addSel0~combout\ & (((\dataPath|quotient_reg|regloop:5:bit_n|int_q~q\) # (\controlPath|addSel1~combout\)))) # (!\controlPath|addSel0~combout\ & 
-- (\dataPath|divisor_reg|regloop:5:bit_n|int_q~q\ & ((!\controlPath|addSel1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|divisor_reg|regloop:5:bit_n|int_q~q\,
	datab => \controlPath|addSel0~combout\,
	datac => \dataPath|quotient_reg|regloop:5:bit_n|int_q~q\,
	datad => \controlPath|addSel1~combout\,
	combout => \dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X4_Y43_N2
\dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\ = (\controlPath|addSel1~combout\ & ((\dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\ & ((\INA[3]~input_o\))) # (!\dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\ & 
-- (\INB[1]~input_o\)))) # (!\controlPath|addSel1~combout\ & (((\dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[1]~input_o\,
	datab => \controlPath|addSel1~combout\,
	datac => \INA[3]~input_o\,
	datad => \dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\,
	combout => \dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X4_Y43_N16
\dataPath|adder|loop_add:5:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ = \controlPath|sub~combout\ $ (\dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|sub~combout\,
	datad => \dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\,
	combout => \dataPath|adder|loop_add:5:addrn|xor_Bi~combout\);

-- Location: FF_X1_Y43_N29
\dataPath|divisor_reg|regloop:2:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|divisor_reg|regloop:2:bit_n|int_q~q\);

-- Location: FF_X1_Y43_N7
\dataPath|divisor_reg|regloop:0:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|divisor_reg|mux_0|muxfinal|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|divisor_reg|regloop:0:bit_n|int_q~q\);

-- Location: FF_X1_Y43_N11
\dataPath|divisor_reg|regloop:1:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|divisor_reg|regloop:1:bit_n|int_q~q\);

-- Location: LCCOMB_X3_Y43_N8
\dataPath|inputA_mux|muxloop:1:mux_n|selX0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ = (!\controlPath|stateRegloop:3:state_n|int_q~q\ & (\dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\ & (!\controlPath|stateRegloop:1:state_n|int_q~q\ & !\controlPath|stateRegloop:9:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\,
	datac => \controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \controlPath|stateRegloop:9:state_n|int_q~q\,
	combout => \dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\);

-- Location: FF_X2_Y43_N31
\dataPath|incrementer|reg|reg_n_bits:0:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\);

-- Location: LCCOMB_X1_Y43_N28
\dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0_combout\ = (\controlPath|stateRegloop:8:state_n|int_q~q\ & (((\dataPath|divisor_reg|regloop:3:bit_n|int_q~q\)))) # (!\controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- (\dataPath|adder|loop_add:2:addrn|o_Sum~combout\ & ((\controlPath|stateRegloop:3:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|adder|loop_add:2:addrn|o_Sum~combout\,
	datab => \dataPath|divisor_reg|regloop:3:bit_n|int_q~q\,
	datac => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \controlPath|stateRegloop:8:state_n|int_q~q\,
	combout => \dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X1_Y43_N6
\dataPath|divisor_reg|mux_0|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|divisor_reg|mux_0|muxfinal|y~0_combout\ = (\controlPath|stateRegloop:8:state_n|int_q~q\ & (((\dataPath|divisor_reg|regloop:1:bit_n|int_q~q\)))) # (!\controlPath|stateRegloop:8:state_n|int_q~q\ & (\controlPath|stateRegloop:3:state_n|int_q~q\ & 
-- ((\dataPath|adder|add_0|o_Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \dataPath|divisor_reg|regloop:1:bit_n|int_q~q\,
	datac => \dataPath|adder|add_0|o_Sum~combout\,
	datad => \controlPath|stateRegloop:8:state_n|int_q~q\,
	combout => \dataPath|divisor_reg|mux_0|muxfinal|y~0_combout\);

-- Location: LCCOMB_X1_Y43_N10
\dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0_combout\ = (\controlPath|stateRegloop:8:state_n|int_q~q\ & (((\dataPath|divisor_reg|regloop:2:bit_n|int_q~q\)))) # (!\controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- (\dataPath|adder|loop_add:1:addrn|o_Sum~combout\ & ((\controlPath|stateRegloop:3:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|adder|loop_add:1:addrn|o_Sum~combout\,
	datab => \dataPath|divisor_reg|regloop:2:bit_n|int_q~q\,
	datac => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \controlPath|stateRegloop:8:state_n|int_q~q\,
	combout => \dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X2_Y43_N30
\dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0_combout\ = \dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\ $ (\controlPath|stateRegloop:5:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	datad => \controlPath|stateRegloop:5:state_n|int_q~q\,
	combout => \dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0_combout\);

-- Location: IOOBUF_X0_Y35_N2
\zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|ALT_INV_zero~2_combout\,
	devoe => ww_devoe,
	o => \zero~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\overflow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|adder|loop_add:7:addrn|o_CarryOut~0_combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\quotient[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|quotient_reg|regloop:0:bit_n|int_q~q\,
	devoe => ww_devoe,
	o => \quotient[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\quotient[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|quotient_reg|regloop:1:bit_n|int_q~q\,
	devoe => ww_devoe,
	o => \quotient[1]~output_o\);

-- Location: IOOBUF_X0_Y50_N16
\quotient[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|quotient_reg|regloop:2:bit_n|int_q~q\,
	devoe => ww_devoe,
	o => \quotient[2]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\quotient[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|quotient_reg|regloop:3:bit_n|int_q~q\,
	devoe => ww_devoe,
	o => \quotient[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\quotient[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|quotient_reg|regloop:4:bit_n|int_q~q\,
	devoe => ww_devoe,
	o => \quotient[4]~output_o\);

-- Location: IOOBUF_X0_Y47_N16
\quotient[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|quotient_reg|regloop:5:bit_n|int_q~q\,
	devoe => ww_devoe,
	o => \quotient[5]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\quotient[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|quotient_reg|regloop:6:bit_n|int_q~q\,
	devoe => ww_devoe,
	o => \quotient[6]~output_o\);

-- Location: IOOBUF_X0_Y48_N2
\quotient[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|quotient_reg|regloop:7:bit_n|int_q~q\,
	devoe => ww_devoe,
	o => \quotient[7]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\remainder[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\,
	devoe => ww_devoe,
	o => \remainder[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\remainder[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\,
	devoe => ww_devoe,
	o => \remainder[1]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\remainder[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\,
	devoe => ww_devoe,
	o => \remainder[2]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\remainder[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\,
	devoe => ww_devoe,
	o => \remainder[3]~output_o\);

-- Location: IOOBUF_X0_Y49_N2
\remainder[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\,
	devoe => ww_devoe,
	o => \remainder[4]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\remainder[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\,
	devoe => ww_devoe,
	o => \remainder[5]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\remainder[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\,
	devoe => ww_devoe,
	o => \remainder[6]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\remainder[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\,
	devoe => ww_devoe,
	o => \remainder[7]~output_o\);

-- Location: LCCOMB_X2_Y43_N26
\dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0_combout\ = \dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\ $ (((\dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\ & \controlPath|stateRegloop:5:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	datac => \dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\,
	datad => \controlPath|stateRegloop:5:state_n|int_q~q\,
	combout => \dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X2_Y43_N21
\controlPath|stateReg0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateReg0|int_q~q\);

-- Location: FF_X2_Y43_N27
\dataPath|incrementer|reg|reg_n_bits:1:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\);

-- Location: LCCOMB_X2_Y43_N8
\dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0_combout\ = \dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\ $ (((\dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\ & (\dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\ & 
-- \controlPath|stateRegloop:5:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	datab => \dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\,
	datac => \dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\,
	datad => \controlPath|stateRegloop:5:state_n|int_q~q\,
	combout => \dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0_combout\);

-- Location: FF_X2_Y43_N9
\dataPath|incrementer|reg|reg_n_bits:2:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\);

-- Location: IOIBUF_X0_Y43_N15
\INB[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INB(3),
	o => \INB[3]~input_o\);

-- Location: IOIBUF_X0_Y44_N15
\INA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INA(3),
	o => \INA[3]~input_o\);

-- Location: LCCOMB_X6_Y43_N18
\controlPath|state_in[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in\(1) = (\INA[3]~input_o\ & \controlPath|stateReg0|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INA[3]~input_o\,
	datad => \controlPath|stateReg0|int_q~q\,
	combout => \controlPath|state_in\(1));

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X3_Y43_N9
\controlPath|stateRegloop:1:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \controlPath|state_in\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateRegloop:1:state_n|int_q~q\);

-- Location: LCCOMB_X6_Y43_N28
\controlPath|state_in[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in\(2) = (!\INA[3]~input_o\ & \controlPath|stateReg0|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INA[3]~input_o\,
	datad => \controlPath|stateReg0|int_q~q\,
	combout => \controlPath|state_in\(2));

-- Location: FF_X6_Y43_N29
\controlPath|stateRegloop:2:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlPath|state_in\(2),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateRegloop:2:state_n|int_q~q\);

-- Location: LCCOMB_X6_Y43_N30
\controlPath|state_in[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in[4]~5_combout\ = (!\INB[3]~input_o\ & ((\controlPath|stateRegloop:1:state_n|int_q~q\) # (\controlPath|stateRegloop:2:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INB[3]~input_o\,
	datac => \controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \controlPath|stateRegloop:2:state_n|int_q~q\,
	combout => \controlPath|state_in[4]~5_combout\);

-- Location: FF_X5_Y43_N3
\controlPath|stateRegloop:4:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \controlPath|state_in[4]~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateRegloop:4:state_n|int_q~q\);

-- Location: LCCOMB_X6_Y43_N22
\dataPath|int_sign_in\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|int_sign_in~combout\ = \INA[3]~input_o\ $ (\INB[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INA[3]~input_o\,
	datad => \INB[3]~input_o\,
	combout => \dataPath|int_sign_in~combout\);

-- Location: FF_X6_Y43_N23
\dataPath|sign_reg|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|int_sign_in~combout\,
	ena => \controlPath|stateReg0|int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|sign_reg|int_q~q\);

-- Location: LCCOMB_X6_Y43_N0
\controlPath|state_in[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in[9]~1_combout\ = (\dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\ & (\dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\ & (!\dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\ & \controlPath|stateRegloop:8:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	datab => \dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\,
	datac => \dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\,
	datad => \controlPath|stateRegloop:8:state_n|int_q~q\,
	combout => \controlPath|state_in[9]~1_combout\);

-- Location: LCCOMB_X6_Y43_N10
\controlPath|state_in[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in[9]~2_combout\ = (\dataPath|sign_reg|int_q~q\ & \controlPath|state_in[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dataPath|sign_reg|int_q~q\,
	datad => \controlPath|state_in[9]~1_combout\,
	combout => \controlPath|state_in[9]~2_combout\);

-- Location: FF_X4_Y43_N27
\controlPath|stateRegloop:9:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \controlPath|state_in[9]~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateRegloop:9:state_n|int_q~q\);

-- Location: LCCOMB_X3_Y43_N28
\controlPath|selZ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|selZ~0_combout\ = (!\controlPath|stateRegloop:3:state_n|int_q~q\ & (!\controlPath|stateRegloop:1:state_n|int_q~q\ & !\controlPath|stateRegloop:9:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \controlPath|stateRegloop:9:state_n|int_q~q\,
	combout => \controlPath|selZ~0_combout\);

-- Location: LCCOMB_X2_Y43_N14
\dataPath|remainder_mux|muxloop:4:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|remainder_mux|muxloop:4:mux_n|y~0_combout\ = (\controlPath|stateRegloop:2:state_n|int_q~q\ & (\INA[3]~input_o\)) # (!\controlPath|stateRegloop:2:state_n|int_q~q\ & ((\dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \INA[3]~input_o\,
	datad => \dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	combout => \dataPath|remainder_mux|muxloop:4:mux_n|y~0_combout\);

-- Location: LCCOMB_X5_Y43_N20
\controlPath|ldRem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|ldRem~0_combout\ = (\controlPath|stateRegloop:5:state_n|int_q~q\) # ((\controlPath|stateRegloop:2:state_n|int_q~q\) # ((\controlPath|stateRegloop:1:state_n|int_q~q\) # (\controlPath|stateRegloop:7:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:5:state_n|int_q~q\,
	datab => \controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \controlPath|ldRem~0_combout\);

-- Location: FF_X2_Y43_N15
\dataPath|remainder_reg|reg_n_bits:4:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|remainder_mux|muxloop:4:mux_n|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\);

-- Location: LCCOMB_X6_Y43_N8
\controlPath|state_in[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in[3]~0_combout\ = (\INB[3]~input_o\ & ((\controlPath|stateRegloop:1:state_n|int_q~q\) # (\controlPath|stateRegloop:2:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INB[3]~input_o\,
	datac => \controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \controlPath|stateRegloop:2:state_n|int_q~q\,
	combout => \controlPath|state_in[3]~0_combout\);

-- Location: FF_X3_Y43_N7
\controlPath|stateRegloop:3:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \controlPath|state_in[3]~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateRegloop:3:state_n|int_q~q\);

-- Location: LCCOMB_X2_Y43_N12
\dataPath|remainder_mux|muxloop:3:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|remainder_mux|muxloop:3:mux_n|y~0_combout\ = (\controlPath|stateRegloop:2:state_n|int_q~q\ & (\INA[3]~input_o\)) # (!\controlPath|stateRegloop:2:state_n|int_q~q\ & ((\dataPath|adder|loop_add:3:addrn|o_Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \INA[3]~input_o\,
	datad => \dataPath|adder|loop_add:3:addrn|o_Sum~combout\,
	combout => \dataPath|remainder_mux|muxloop:3:mux_n|y~0_combout\);

-- Location: FF_X2_Y43_N13
\dataPath|remainder_reg|reg_n_bits:3:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|remainder_mux|muxloop:3:mux_n|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\);

-- Location: LCCOMB_X5_Y43_N4
\controlPath|sub\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|sub~combout\ = (\controlPath|stateRegloop:5:state_n|int_q~q\) # ((\controlPath|stateRegloop:3:state_n|int_q~q\) # ((\controlPath|stateRegloop:9:state_n|int_q~q\) # (\controlPath|stateRegloop:1:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:5:state_n|int_q~q\,
	datab => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \controlPath|stateRegloop:9:state_n|int_q~q\,
	datad => \controlPath|stateRegloop:1:state_n|int_q~q\,
	combout => \controlPath|sub~combout\);

-- Location: LCCOMB_X3_Y43_N18
\controlPath|addSel1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|addSel1~combout\ = (\controlPath|stateRegloop:1:state_n|int_q~q\) # (\controlPath|stateRegloop:3:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \controlPath|stateRegloop:3:state_n|int_q~q\,
	combout => \controlPath|addSel1~combout\);

-- Location: LCCOMB_X4_Y43_N24
\controlPath|addSel0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|addSel0~combout\ = (\controlPath|stateRegloop:9:state_n|int_q~q\) # (\controlPath|stateRegloop:1:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlPath|stateRegloop:9:state_n|int_q~q\,
	datad => \controlPath|stateRegloop:1:state_n|int_q~q\,
	combout => \controlPath|addSel0~combout\);

-- Location: LCCOMB_X5_Y43_N16
\dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\ = (\controlPath|addSel0~combout\ & ((\controlPath|addSel1~combout\ & (\INA[2]~input_o\)) # (!\controlPath|addSel1~combout\ & ((\dataPath|quotient_reg|regloop:2:bit_n|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INA[2]~input_o\,
	datab => \dataPath|quotient_reg|regloop:2:bit_n|int_q~q\,
	datac => \controlPath|addSel1~combout\,
	datad => \controlPath|addSel0~combout\,
	combout => \dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X5_Y43_N14
\dataPath|adder|loop_add:2:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ = \controlPath|sub~combout\ $ (((\dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\) # ((\dataPath|divisor_reg|regloop:2:bit_n|int_q~q\ & \controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|divisor_reg|regloop:2:bit_n|int_q~q\,
	datab => \controlPath|sub~combout\,
	datac => \controlPath|selZ~0_combout\,
	datad => \dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\,
	combout => \dataPath|adder|loop_add:2:addrn|xor_Bi~combout\);

-- Location: IOIBUF_X0_Y46_N22
\INA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INA(0),
	o => \INA[0]~input_o\);

-- Location: LCCOMB_X1_Y43_N22
\dataPath|quotient_reg|mux_0|mux1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|quotient_reg|mux_0|mux1|y~0_combout\ = (\controlPath|stateRegloop:6:state_n|int_q~q\) # ((\dataPath|adder|add_0|o_Sum~combout\ & !\controlPath|stateRegloop:7:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|adder|add_0|o_Sum~combout\,
	datab => \controlPath|stateRegloop:6:state_n|int_q~q\,
	datad => \controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \dataPath|quotient_reg|mux_0|mux1|y~0_combout\);

-- Location: LCCOMB_X5_Y43_N10
\dataPath|quotient_reg|int_enable\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|quotient_reg|int_enable~combout\ = (\controlPath|stateRegloop:9:state_n|int_q~q\) # ((\controlPath|stateRegloop:7:state_n|int_q~q\) # (\controlPath|stateRegloop:6:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:9:state_n|int_q~q\,
	datab => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \controlPath|stateRegloop:6:state_n|int_q~q\,
	combout => \dataPath|quotient_reg|int_enable~combout\);

-- Location: FF_X1_Y43_N23
\dataPath|quotient_reg|regloop:0:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|quotient_reg|mux_0|mux1|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|quotient_reg|regloop:0:bit_n|int_q~q\);

-- Location: LCCOMB_X3_Y43_N4
\dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\ = (\controlPath|stateRegloop:3:state_n|int_q~q\ & (((\INA[0]~input_o\)))) # (!\controlPath|stateRegloop:3:state_n|int_q~q\ & ((\controlPath|stateRegloop:1:state_n|int_q~q\ & (\INA[0]~input_o\)) # 
-- (!\controlPath|stateRegloop:1:state_n|int_q~q\ & ((\dataPath|quotient_reg|regloop:0:bit_n|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \controlPath|stateRegloop:1:state_n|int_q~q\,
	datac => \INA[0]~input_o\,
	datad => \dataPath|quotient_reg|regloop:0:bit_n|int_q~q\,
	combout => \dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X3_Y43_N2
\dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\ = (\controlPath|addSel0~combout\ & (((\dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\)))) # (!\controlPath|addSel0~combout\ & (\dataPath|divisor_reg|regloop:0:bit_n|int_q~q\ & 
-- (!\controlPath|addSel1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|divisor_reg|regloop:0:bit_n|int_q~q\,
	datab => \controlPath|addSel1~combout\,
	datac => \dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\,
	datad => \controlPath|addSel0~combout\,
	combout => \dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X2_Y43_N20
\dataPath|adder|add_0|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|add_0|o_Sum~combout\ = \dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\ $ (((\controlPath|selZ~0_combout\ & \dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|selZ~0_combout\,
	datab => \dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\,
	datad => \dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\,
	combout => \dataPath|adder|add_0|o_Sum~combout\);

-- Location: LCCOMB_X2_Y43_N10
\dataPath|remainder_mux|muxloop:0:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|remainder_mux|muxloop:0:mux_n|y~0_combout\ = (\controlPath|stateRegloop:2:state_n|int_q~q\ & (\INA[0]~input_o\)) # (!\controlPath|stateRegloop:2:state_n|int_q~q\ & ((\dataPath|adder|add_0|o_Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INA[0]~input_o\,
	datab => \controlPath|stateRegloop:2:state_n|int_q~q\,
	datad => \dataPath|adder|add_0|o_Sum~combout\,
	combout => \dataPath|remainder_mux|muxloop:0:mux_n|y~0_combout\);

-- Location: FF_X2_Y43_N11
\dataPath|remainder_reg|reg_n_bits:0:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|remainder_mux|muxloop:0:mux_n|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\);

-- Location: LCCOMB_X3_Y43_N6
\dataPath|adder|add_0|carryFromBoth\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|add_0|carryFromBoth~combout\ = (\controlPath|stateRegloop:5:state_n|int_q~q\ & (\controlPath|selZ~0_combout\ & \dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:5:state_n|int_q~q\,
	datab => \controlPath|selZ~0_combout\,
	datad => \dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\,
	combout => \dataPath|adder|add_0|carryFromBoth~combout\);

-- Location: IOIBUF_X0_Y49_N8
\INA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INA(1),
	o => \INA[1]~input_o\);

-- Location: LCCOMB_X3_Y43_N20
\dataPath|adder|add_0|carryFromBi\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|add_0|carryFromBi~combout\ = (\controlPath|selZ~0_combout\ & ((\dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\ & ((\controlPath|stateRegloop:5:state_n|int_q~q\) # (!\dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\))) # 
-- (!\dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\ & ((\dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\) # (!\controlPath|stateRegloop:5:state_n|int_q~q\))))) # (!\controlPath|selZ~0_combout\ & 
-- (((\dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\,
	datab => \controlPath|selZ~0_combout\,
	datac => \controlPath|stateRegloop:5:state_n|int_q~q\,
	datad => \dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\,
	combout => \dataPath|adder|add_0|carryFromBi~combout\);

-- Location: LCCOMB_X4_Y43_N0
\dataPath|adder|loop_add:1:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:1:addrn|o_Sum~combout\ = \dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ $ (\dataPath|adder|loop_add:1:addrn|xor_Bi~combout\ $ (((\dataPath|adder|add_0|carryFromBoth~combout\) # (!\dataPath|adder|add_0|carryFromBi~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\,
	datab => \dataPath|adder|loop_add:1:addrn|xor_Bi~combout\,
	datac => \dataPath|adder|add_0|carryFromBoth~combout\,
	datad => \dataPath|adder|add_0|carryFromBi~combout\,
	combout => \dataPath|adder|loop_add:1:addrn|o_Sum~combout\);

-- Location: LCCOMB_X4_Y43_N28
\dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2_combout\ = (\controlPath|stateRegloop:6:state_n|int_q~q\ & (((\dataPath|quotient_reg|regloop:0:bit_n|int_q~q\)))) # (!\controlPath|stateRegloop:6:state_n|int_q~q\ & 
-- ((\controlPath|stateRegloop:7:state_n|int_q~q\ & (\dataPath|quotient_reg|regloop:0:bit_n|int_q~q\)) # (!\controlPath|stateRegloop:7:state_n|int_q~q\ & ((\dataPath|adder|loop_add:1:addrn|o_Sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:6:state_n|int_q~q\,
	datab => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \dataPath|quotient_reg|regloop:0:bit_n|int_q~q\,
	datad => \dataPath|adder|loop_add:1:addrn|o_Sum~combout\,
	combout => \dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2_combout\);

-- Location: FF_X4_Y43_N29
\dataPath|quotient_reg|regloop:1:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|quotient_reg|regloop:1:bit_n|int_q~q\);

-- Location: LCCOMB_X3_Y43_N30
\dataPath|inputB_mux|muxloop:1:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|inputB_mux|muxloop:1:mux_n|muxfinal|y~0_combout\ = (\controlPath|stateRegloop:3:state_n|int_q~q\ & (((\INA[1]~input_o\)))) # (!\controlPath|stateRegloop:3:state_n|int_q~q\ & ((\controlPath|stateRegloop:1:state_n|int_q~q\ & (\INA[1]~input_o\)) # 
-- (!\controlPath|stateRegloop:1:state_n|int_q~q\ & ((\dataPath|quotient_reg|regloop:1:bit_n|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \controlPath|stateRegloop:1:state_n|int_q~q\,
	datac => \INA[1]~input_o\,
	datad => \dataPath|quotient_reg|regloop:1:bit_n|int_q~q\,
	combout => \dataPath|inputB_mux|muxloop:1:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X3_Y43_N0
\dataPath|inputB_mux|muxloop:1:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|inputB_mux|muxloop:1:mux_n|muxfinal|y~1_combout\ = (\controlPath|addSel0~combout\ & (((\dataPath|inputB_mux|muxloop:1:mux_n|muxfinal|y~0_combout\)))) # (!\controlPath|addSel0~combout\ & (\dataPath|divisor_reg|regloop:1:bit_n|int_q~q\ & 
-- (!\controlPath|addSel1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|divisor_reg|regloop:1:bit_n|int_q~q\,
	datab => \controlPath|addSel1~combout\,
	datac => \dataPath|inputB_mux|muxloop:1:mux_n|muxfinal|y~0_combout\,
	datad => \controlPath|addSel0~combout\,
	combout => \dataPath|inputB_mux|muxloop:1:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X3_Y43_N22
\dataPath|adder|loop_add:1:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:1:addrn|xor_Bi~combout\ = \dataPath|inputB_mux|muxloop:1:mux_n|muxfinal|y~1_combout\ $ (((\controlPath|stateRegloop:5:state_n|int_q~q\) # (!\controlPath|selZ~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:5:state_n|int_q~q\,
	datab => \controlPath|selZ~0_combout\,
	datad => \dataPath|inputB_mux|muxloop:1:mux_n|muxfinal|y~1_combout\,
	combout => \dataPath|adder|loop_add:1:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X3_Y43_N16
\dataPath|adder|loop_add:1:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ = (\dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ & ((\dataPath|adder|add_0|carryFromBoth~combout\) # ((\dataPath|adder|loop_add:1:addrn|xor_Bi~combout\) # 
-- (!\dataPath|adder|add_0|carryFromBi~combout\)))) # (!\dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ & (\dataPath|adder|loop_add:1:addrn|xor_Bi~combout\ & ((\dataPath|adder|add_0|carryFromBoth~combout\) # 
-- (!\dataPath|adder|add_0|carryFromBi~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\,
	datab => \dataPath|adder|add_0|carryFromBoth~combout\,
	datac => \dataPath|adder|loop_add:1:addrn|xor_Bi~combout\,
	datad => \dataPath|adder|add_0|carryFromBi~combout\,
	combout => \dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X3_Y43_N10
\dataPath|adder|loop_add:2:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ = (\dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ & ((\dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\) # ((\dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\ & \controlPath|selZ~0_combout\)))) # 
-- (!\dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ & (\dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\ & (\controlPath|selZ~0_combout\ & \dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\,
	datab => \controlPath|selZ~0_combout\,
	datac => \dataPath|adder|loop_add:2:addrn|xor_Bi~combout\,
	datad => \dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X5_Y43_N26
\dataPath|adder|loop_add:3:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:3:addrn|o_Sum~combout\ = \dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ $ (\dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ $ (((\controlPath|selZ~0_combout\ & \dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|selZ~0_combout\,
	datab => \dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\,
	datac => \dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\,
	datad => \dataPath|adder|loop_add:3:addrn|xor_Bi~combout\,
	combout => \dataPath|adder|loop_add:3:addrn|o_Sum~combout\);

-- Location: LCCOMB_X1_Y43_N26
\dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0_combout\ = (\controlPath|stateRegloop:8:state_n|int_q~q\ & (\dataPath|divisor_reg|regloop:4:bit_n|int_q~q\)) # (!\controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- (((\controlPath|stateRegloop:3:state_n|int_q~q\ & \dataPath|adder|loop_add:3:addrn|o_Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|divisor_reg|regloop:4:bit_n|int_q~q\,
	datab => \controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \dataPath|adder|loop_add:3:addrn|o_Sum~combout\,
	combout => \dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0_combout\);

-- Location: FF_X1_Y43_N27
\dataPath|divisor_reg|regloop:3:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|divisor_reg|regloop:3:bit_n|int_q~q\);

-- Location: LCCOMB_X5_Y43_N24
\dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\ = (\controlPath|addSel0~combout\ & ((\controlPath|addSel1~combout\ & (\INA[3]~input_o\)) # (!\controlPath|addSel1~combout\ & ((\dataPath|quotient_reg|regloop:3:bit_n|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INA[3]~input_o\,
	datab => \dataPath|quotient_reg|regloop:3:bit_n|int_q~q\,
	datac => \controlPath|addSel1~combout\,
	datad => \controlPath|addSel0~combout\,
	combout => \dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X5_Y43_N6
\dataPath|adder|loop_add:3:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ = \controlPath|sub~combout\ $ (((\dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\) # ((\controlPath|selZ~0_combout\ & \dataPath|divisor_reg|regloop:3:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|selZ~0_combout\,
	datab => \dataPath|divisor_reg|regloop:3:bit_n|int_q~q\,
	datac => \controlPath|sub~combout\,
	datad => \dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\,
	combout => \dataPath|adder|loop_add:3:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X3_Y43_N24
\dataPath|adder|loop_add:3:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ = (\dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ & ((\dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\) # ((\dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\ & \controlPath|selZ~0_combout\)))) # 
-- (!\dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ & (\dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\ & (\controlPath|selZ~0_combout\ & \dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\,
	datab => \controlPath|selZ~0_combout\,
	datac => \dataPath|adder|loop_add:3:addrn|xor_Bi~combout\,
	datad => \dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X2_Y43_N6
\dataPath|adder|loop_add:4:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ = \dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ $ (\dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ $ (((\dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\ & \controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|adder|loop_add:4:addrn|xor_Bi~combout\,
	datab => \dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\,
	datac => \controlPath|selZ~0_combout\,
	datad => \dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X1_Y43_N30
\dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2_combout\ = (\controlPath|stateRegloop:6:state_n|int_q~q\ & (\dataPath|quotient_reg|regloop:3:bit_n|int_q~q\)) # (!\controlPath|stateRegloop:6:state_n|int_q~q\ & ((\controlPath|stateRegloop:7:state_n|int_q~q\ 
-- & (\dataPath|quotient_reg|regloop:3:bit_n|int_q~q\)) # (!\controlPath|stateRegloop:7:state_n|int_q~q\ & ((\dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:6:state_n|int_q~q\,
	datab => \dataPath|quotient_reg|regloop:3:bit_n|int_q~q\,
	datac => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	combout => \dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2_combout\);

-- Location: FF_X1_Y43_N31
\dataPath|quotient_reg|regloop:4:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|quotient_reg|regloop:4:bit_n|int_q~q\);

-- Location: IOIBUF_X0_Y45_N22
\INB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INB(0),
	o => \INB[0]~input_o\);

-- Location: LCCOMB_X1_Y43_N12
\dataPath|divisor_reg|regloop:4:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|divisor_reg|regloop:4:bit_n|int_q~0_combout\ = (\controlPath|stateRegloop:3:state_n|int_q~q\ & ((\dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\))) # (!\controlPath|stateRegloop:3:state_n|int_q~q\ & (\INB[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \INB[0]~input_o\,
	datad => \dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	combout => \dataPath|divisor_reg|regloop:4:bit_n|int_q~0_combout\);

-- Location: IOIBUF_X0_Y46_N15
\INB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INB(1),
	o => \INB[1]~input_o\);

-- Location: LCCOMB_X1_Y43_N8
\dataPath|divisor_reg|regloop:5:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|divisor_reg|regloop:5:bit_n|int_q~0_combout\ = (\controlPath|stateRegloop:3:state_n|int_q~q\ & ((\dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\))) # (!\controlPath|stateRegloop:3:state_n|int_q~q\ & (\INB[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \INB[1]~input_o\,
	datad => \dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	combout => \dataPath|divisor_reg|regloop:5:bit_n|int_q~0_combout\);

-- Location: IOIBUF_X0_Y34_N8
\INB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INB(2),
	o => \INB[2]~input_o\);

-- Location: LCCOMB_X1_Y43_N4
\dataPath|divisor_reg|regloop:6:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|divisor_reg|regloop:6:bit_n|int_q~0_combout\ = (\controlPath|stateRegloop:3:state_n|int_q~q\ & ((\dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\))) # (!\controlPath|stateRegloop:3:state_n|int_q~q\ & (\INB[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \INB[2]~input_o\,
	datad => \dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	combout => \dataPath|divisor_reg|regloop:6:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X1_Y43_N14
\dataPath|divisor_reg|mux_msb|muxfinal|selX0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|divisor_reg|mux_msb|muxfinal|selX0~0_combout\ = (!\controlPath|stateRegloop:8:state_n|int_q~q\ & ((\controlPath|stateRegloop:3:state_n|int_q~q\ & ((\dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\))) # 
-- (!\controlPath|stateRegloop:3:state_n|int_q~q\ & (\INB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[3]~input_o\,
	datab => \controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\,
	combout => \dataPath|divisor_reg|mux_msb|muxfinal|selX0~0_combout\);

-- Location: FF_X1_Y43_N15
\dataPath|divisor_reg|regloop:7:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|divisor_reg|mux_msb|muxfinal|selX0~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|divisor_reg|regloop:7:bit_n|int_q~q\);

-- Location: FF_X1_Y43_N5
\dataPath|divisor_reg|regloop:6:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|divisor_reg|regloop:6:bit_n|int_q~0_combout\,
	asdata => \dataPath|divisor_reg|regloop:7:bit_n|int_q~q\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \controlPath|stateRegloop:8:state_n|int_q~q\,
	ena => \controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|divisor_reg|regloop:6:bit_n|int_q~q\);

-- Location: FF_X1_Y43_N9
\dataPath|divisor_reg|regloop:5:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|divisor_reg|regloop:5:bit_n|int_q~0_combout\,
	asdata => \dataPath|divisor_reg|regloop:6:bit_n|int_q~q\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \controlPath|stateRegloop:8:state_n|int_q~q\,
	ena => \controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|divisor_reg|regloop:5:bit_n|int_q~q\);

-- Location: FF_X1_Y43_N13
\dataPath|divisor_reg|regloop:4:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|divisor_reg|regloop:4:bit_n|int_q~0_combout\,
	asdata => \dataPath|divisor_reg|regloop:5:bit_n|int_q~q\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \controlPath|stateRegloop:8:state_n|int_q~q\,
	ena => \controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|divisor_reg|regloop:4:bit_n|int_q~q\);

-- Location: LCCOMB_X4_Y43_N30
\dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\ = (\controlPath|addSel0~combout\ & (((\controlPath|addSel1~combout\)))) # (!\controlPath|addSel0~combout\ & ((\controlPath|addSel1~combout\ & (\INB[0]~input_o\)) # (!\controlPath|addSel1~combout\ 
-- & ((\dataPath|divisor_reg|regloop:4:bit_n|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[0]~input_o\,
	datab => \controlPath|addSel0~combout\,
	datac => \dataPath|divisor_reg|regloop:4:bit_n|int_q~q\,
	datad => \controlPath|addSel1~combout\,
	combout => \dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X4_Y43_N4
\dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\ = (\dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\ & ((\INA[3]~input_o\) # ((!\controlPath|addSel0~combout\)))) # (!\dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\ & 
-- (((\dataPath|quotient_reg|regloop:4:bit_n|int_q~q\ & \controlPath|addSel0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INA[3]~input_o\,
	datab => \dataPath|quotient_reg|regloop:4:bit_n|int_q~q\,
	datac => \dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\,
	datad => \controlPath|addSel0~combout\,
	combout => \dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X4_Y43_N10
\dataPath|adder|loop_add:4:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ = \dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\ $ (\controlPath|sub~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\,
	datad => \controlPath|sub~combout\,
	combout => \dataPath|adder|loop_add:4:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X3_Y43_N26
\dataPath|adder|loop_add:4:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ = (\dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ & ((\dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\) # ((\dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\ & \controlPath|selZ~0_combout\)))) # 
-- (!\dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ & (\dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\ & (\controlPath|selZ~0_combout\ & \dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\,
	datab => \controlPath|selZ~0_combout\,
	datac => \dataPath|adder|loop_add:4:addrn|xor_Bi~combout\,
	datad => \dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X2_Y43_N24
\dataPath|adder|loop_add:5:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ = \dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ $ (\dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ $ (((\dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\ & \controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|adder|loop_add:5:addrn|xor_Bi~combout\,
	datab => \dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\,
	datac => \controlPath|selZ~0_combout\,
	datad => \dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X2_Y43_N16
\dataPath|remainder_mux|muxloop:5:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|remainder_mux|muxloop:5:mux_n|y~0_combout\ = (\controlPath|stateRegloop:2:state_n|int_q~q\ & (\INA[3]~input_o\)) # (!\controlPath|stateRegloop:2:state_n|int_q~q\ & ((\dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \INA[3]~input_o\,
	datad => \dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	combout => \dataPath|remainder_mux|muxloop:5:mux_n|y~0_combout\);

-- Location: FF_X2_Y43_N17
\dataPath|remainder_reg|reg_n_bits:5:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|remainder_mux|muxloop:5:mux_n|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\);

-- Location: LCCOMB_X2_Y43_N0
\dataPath|adder|loop_add:5:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ = (\dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ & ((\dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\) # ((\dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\ & \controlPath|selZ~0_combout\)))) # 
-- (!\dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ & (\dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\ & (\controlPath|selZ~0_combout\ & \dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|adder|loop_add:5:addrn|xor_Bi~combout\,
	datab => \dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\,
	datac => \controlPath|selZ~0_combout\,
	datad => \dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X2_Y43_N22
\dataPath|adder|loop_add:6:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\ = \dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ $ (\dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ $ (((\dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\ & \controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|adder|loop_add:6:addrn|xor_Bi~combout\,
	datab => \dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\,
	datac => \controlPath|selZ~0_combout\,
	datad => \dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X2_Y43_N2
\dataPath|remainder_mux|muxloop:6:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|remainder_mux|muxloop:6:mux_n|y~0_combout\ = (\controlPath|stateRegloop:2:state_n|int_q~q\ & (\INA[3]~input_o\)) # (!\controlPath|stateRegloop:2:state_n|int_q~q\ & ((\dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INA[3]~input_o\,
	datac => \dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	datad => \controlPath|stateRegloop:2:state_n|int_q~q\,
	combout => \dataPath|remainder_mux|muxloop:6:mux_n|y~0_combout\);

-- Location: FF_X2_Y43_N3
\dataPath|remainder_reg|reg_n_bits:6:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|remainder_mux|muxloop:6:mux_n|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\);

-- Location: LCCOMB_X2_Y43_N18
\dataPath|adder|loop_add:6:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ = (\dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ & ((\dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\) # ((\dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\ & \controlPath|selZ~0_combout\)))) # 
-- (!\dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ & (\dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\ & (\controlPath|selZ~0_combout\ & \dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|adder|loop_add:6:addrn|xor_Bi~combout\,
	datab => \dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\,
	datac => \controlPath|selZ~0_combout\,
	datad => \dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X2_Y43_N4
\dataPath|adder|loop_add:7:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\ = \dataPath|adder|loop_add:7:addrn|xor_Bi~combout\ $ (\dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ $ (((\dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\ & \controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|adder|loop_add:7:addrn|xor_Bi~combout\,
	datab => \dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\,
	datac => \controlPath|selZ~0_combout\,
	datad => \dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X2_Y43_N28
\dataPath|remainder_mux|muxloop:7:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|remainder_mux|muxloop:7:mux_n|y~0_combout\ = (\controlPath|stateRegloop:2:state_n|int_q~q\ & ((\INA[3]~input_o\))) # (!\controlPath|stateRegloop:2:state_n|int_q~q\ & (\dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\,
	datad => \INA[3]~input_o\,
	combout => \dataPath|remainder_mux|muxloop:7:mux_n|y~0_combout\);

-- Location: FF_X2_Y43_N29
\dataPath|remainder_reg|reg_n_bits:7:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|remainder_mux|muxloop:7:mux_n|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\);

-- Location: LCCOMB_X4_Y43_N26
\dataPath|inputA_mux|muxloop:7:mux_n|selX0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\ = (!\controlPath|stateRegloop:3:state_n|int_q~q\ & (\dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\ & (!\controlPath|stateRegloop:9:state_n|int_q~q\ & !\controlPath|stateRegloop:1:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\,
	datac => \controlPath|stateRegloop:9:state_n|int_q~q\,
	datad => \controlPath|stateRegloop:1:state_n|int_q~q\,
	combout => \dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\);

-- Location: LCCOMB_X3_Y43_N12
\controlPath|state_in[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in\(6) = (\controlPath|stateRegloop:5:state_n|int_q~q\ & (\dataPath|adder|loop_add:7:addrn|xor_Bi~combout\ $ (\dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\ $ (!\dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|adder|loop_add:7:addrn|xor_Bi~combout\,
	datab => \controlPath|stateRegloop:5:state_n|int_q~q\,
	datac => \dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\,
	datad => \dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	combout => \controlPath|state_in\(6));

-- Location: FF_X3_Y43_N13
\controlPath|stateRegloop:6:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlPath|state_in\(6),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateRegloop:6:state_n|int_q~q\);

-- Location: LCCOMB_X5_Y43_N28
\controlPath|shiftQuot\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|shiftQuot~combout\ = (\controlPath|stateRegloop:6:state_n|int_q~q\) # (\controlPath|stateRegloop:7:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlPath|stateRegloop:6:state_n|int_q~q\,
	datad => \controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \controlPath|shiftQuot~combout\);

-- Location: FF_X5_Y43_N29
\controlPath|stateRegloop:8:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlPath|shiftQuot~combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateRegloop:8:state_n|int_q~q\);

-- Location: LCCOMB_X5_Y43_N2
\controlPath|state_in~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in~3_combout\ = (\controlPath|stateRegloop:3:state_n|int_q~q\) # ((\controlPath|stateRegloop:4:state_n|int_q~q\) # (\controlPath|stateRegloop:8:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \controlPath|stateRegloop:4:state_n|int_q~q\,
	datad => \controlPath|stateRegloop:8:state_n|int_q~q\,
	combout => \controlPath|state_in~3_combout\);

-- Location: LCCOMB_X6_Y43_N20
\controlPath|state_in[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in[5]~4_combout\ = (\controlPath|state_in~3_combout\ & (((\dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\) # (!\dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\)) # (!\dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	datab => \dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\,
	datac => \dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\,
	datad => \controlPath|state_in~3_combout\,
	combout => \controlPath|state_in[5]~4_combout\);

-- Location: FF_X5_Y43_N11
\controlPath|stateRegloop:5:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \controlPath|state_in[5]~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateRegloop:5:state_n|int_q~q\);

-- Location: LCCOMB_X3_Y43_N14
\controlPath|state_in[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in\(7) = (\controlPath|stateRegloop:5:state_n|int_q~q\ & (\dataPath|adder|loop_add:7:addrn|xor_Bi~combout\ $ (\dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\ $ (\dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|adder|loop_add:7:addrn|xor_Bi~combout\,
	datab => \controlPath|stateRegloop:5:state_n|int_q~q\,
	datac => \dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\,
	datad => \dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	combout => \controlPath|state_in\(7));

-- Location: FF_X3_Y43_N15
\controlPath|stateRegloop:7:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlPath|state_in\(7),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateRegloop:7:state_n|int_q~q\);

-- Location: LCCOMB_X4_Y43_N18
\dataPath|adder|loop_add:2:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:2:addrn|o_Sum~combout\ = \dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ $ (\dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ $ (((\dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\ & \controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\,
	datab => \controlPath|selZ~0_combout\,
	datac => \dataPath|adder|loop_add:2:addrn|xor_Bi~combout\,
	datad => \dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:2:addrn|o_Sum~combout\);

-- Location: LCCOMB_X5_Y43_N8
\dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2_combout\ = (\controlPath|stateRegloop:6:state_n|int_q~q\ & (((\dataPath|quotient_reg|regloop:1:bit_n|int_q~q\)))) # (!\controlPath|stateRegloop:6:state_n|int_q~q\ & 
-- ((\controlPath|stateRegloop:7:state_n|int_q~q\ & ((\dataPath|quotient_reg|regloop:1:bit_n|int_q~q\))) # (!\controlPath|stateRegloop:7:state_n|int_q~q\ & (\dataPath|adder|loop_add:2:addrn|o_Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:6:state_n|int_q~q\,
	datab => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \dataPath|adder|loop_add:2:addrn|o_Sum~combout\,
	datad => \dataPath|quotient_reg|regloop:1:bit_n|int_q~q\,
	combout => \dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2_combout\);

-- Location: FF_X5_Y43_N9
\dataPath|quotient_reg|regloop:2:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|quotient_reg|regloop:2:bit_n|int_q~q\);

-- Location: LCCOMB_X5_Y43_N18
\dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2_combout\ = (\controlPath|stateRegloop:6:state_n|int_q~q\ & (\dataPath|quotient_reg|regloop:2:bit_n|int_q~q\)) # (!\controlPath|stateRegloop:6:state_n|int_q~q\ & ((\controlPath|stateRegloop:7:state_n|int_q~q\ 
-- & (\dataPath|quotient_reg|regloop:2:bit_n|int_q~q\)) # (!\controlPath|stateRegloop:7:state_n|int_q~q\ & ((\dataPath|adder|loop_add:3:addrn|o_Sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:6:state_n|int_q~q\,
	datab => \dataPath|quotient_reg|regloop:2:bit_n|int_q~q\,
	datac => \dataPath|adder|loop_add:3:addrn|o_Sum~combout\,
	datad => \controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2_combout\);

-- Location: FF_X5_Y43_N19
\dataPath|quotient_reg|regloop:3:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|quotient_reg|regloop:3:bit_n|int_q~q\);

-- Location: LCCOMB_X5_Y43_N0
\dataPath|zero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|zero~0_combout\ = (\dataPath|quotient_reg|regloop:0:bit_n|int_q~q\) # ((\dataPath|quotient_reg|regloop:3:bit_n|int_q~q\) # ((\dataPath|quotient_reg|regloop:2:bit_n|int_q~q\) # (\dataPath|quotient_reg|regloop:1:bit_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|quotient_reg|regloop:0:bit_n|int_q~q\,
	datab => \dataPath|quotient_reg|regloop:3:bit_n|int_q~q\,
	datac => \dataPath|quotient_reg|regloop:2:bit_n|int_q~q\,
	datad => \dataPath|quotient_reg|regloop:1:bit_n|int_q~q\,
	combout => \dataPath|zero~0_combout\);

-- Location: LCCOMB_X1_Y43_N16
\dataPath|quotient_reg|mux_msb|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|quotient_reg|mux_msb|mux1|y~2_combout\ = (\controlPath|stateRegloop:6:state_n|int_q~q\ & (\dataPath|quotient_reg|regloop:6:bit_n|int_q~q\)) # (!\controlPath|stateRegloop:6:state_n|int_q~q\ & ((\controlPath|stateRegloop:7:state_n|int_q~q\ & 
-- (\dataPath|quotient_reg|regloop:6:bit_n|int_q~q\)) # (!\controlPath|stateRegloop:7:state_n|int_q~q\ & ((\dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|quotient_reg|regloop:6:bit_n|int_q~q\,
	datab => \controlPath|stateRegloop:6:state_n|int_q~q\,
	datac => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\,
	combout => \dataPath|quotient_reg|mux_msb|mux1|y~2_combout\);

-- Location: FF_X1_Y43_N17
\dataPath|quotient_reg|regloop:7:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|quotient_reg|mux_msb|mux1|y~2_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|quotient_reg|regloop:7:bit_n|int_q~q\);

-- Location: LCCOMB_X1_Y43_N20
\dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2_combout\ = (\controlPath|stateRegloop:6:state_n|int_q~q\ & (\dataPath|quotient_reg|regloop:4:bit_n|int_q~q\)) # (!\controlPath|stateRegloop:6:state_n|int_q~q\ & ((\controlPath|stateRegloop:7:state_n|int_q~q\ 
-- & (\dataPath|quotient_reg|regloop:4:bit_n|int_q~q\)) # (!\controlPath|stateRegloop:7:state_n|int_q~q\ & ((\dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|quotient_reg|regloop:4:bit_n|int_q~q\,
	datab => \controlPath|stateRegloop:6:state_n|int_q~q\,
	datac => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	combout => \dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2_combout\);

-- Location: FF_X1_Y43_N21
\dataPath|quotient_reg|regloop:5:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|quotient_reg|regloop:5:bit_n|int_q~q\);

-- Location: LCCOMB_X1_Y43_N24
\dataPath|zero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|zero~1_combout\ = (\dataPath|quotient_reg|regloop:6:bit_n|int_q~q\) # ((\dataPath|quotient_reg|regloop:7:bit_n|int_q~q\) # ((\dataPath|quotient_reg|regloop:4:bit_n|int_q~q\) # (\dataPath|quotient_reg|regloop:5:bit_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|quotient_reg|regloop:6:bit_n|int_q~q\,
	datab => \dataPath|quotient_reg|regloop:7:bit_n|int_q~q\,
	datac => \dataPath|quotient_reg|regloop:4:bit_n|int_q~q\,
	datad => \dataPath|quotient_reg|regloop:5:bit_n|int_q~q\,
	combout => \dataPath|zero~1_combout\);

-- Location: LCCOMB_X1_Y43_N0
\dataPath|zero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|zero~2_combout\ = (\dataPath|zero~0_combout\) # (\dataPath|zero~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|zero~0_combout\,
	datad => \dataPath|zero~1_combout\,
	combout => \dataPath|zero~2_combout\);

-- Location: LCCOMB_X5_Y43_N30
\dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\ = (\controlPath|addSel1~combout\ & (((\controlPath|addSel0~combout\)))) # (!\controlPath|addSel1~combout\ & ((\controlPath|addSel0~combout\ & ((\dataPath|quotient_reg|regloop:7:bit_n|int_q~q\))) # 
-- (!\controlPath|addSel0~combout\ & (\dataPath|divisor_reg|regloop:7:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|divisor_reg|regloop:7:bit_n|int_q~q\,
	datab => \controlPath|addSel1~combout\,
	datac => \dataPath|quotient_reg|regloop:7:bit_n|int_q~q\,
	datad => \controlPath|addSel0~combout\,
	combout => \dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X5_Y43_N12
\dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\ = (\dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\ & ((\INA[3]~input_o\) # ((!\controlPath|addSel1~combout\)))) # (!\dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\ & 
-- (((\INB[3]~input_o\ & \controlPath|addSel1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INA[3]~input_o\,
	datab => \INB[3]~input_o\,
	datac => \dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\,
	datad => \controlPath|addSel1~combout\,
	combout => \dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X5_Y43_N22
\dataPath|adder|loop_add:7:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:7:addrn|xor_Bi~combout\ = \controlPath|sub~combout\ $ (\dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controlPath|sub~combout\,
	datad => \dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\,
	combout => \dataPath|adder|loop_add:7:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X1_Y43_N18
\dataPath|adder|loop_add:7:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:7:addrn|o_CarryOut~0_combout\ = (\dataPath|adder|loop_add:7:addrn|xor_Bi~combout\ & ((\dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\) # ((\dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\ & \controlPath|selZ~0_combout\)))) # 
-- (!\dataPath|adder|loop_add:7:addrn|xor_Bi~combout\ & (\dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\ & (\controlPath|selZ~0_combout\ & \dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\,
	datab => \controlPath|selZ~0_combout\,
	datac => \dataPath|adder|loop_add:7:addrn|xor_Bi~combout\,
	datad => \dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:7:addrn|o_CarryOut~0_combout\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y43_N2
\dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2_combout\ = (\controlPath|stateRegloop:6:state_n|int_q~q\ & (((\dataPath|quotient_reg|regloop:5:bit_n|int_q~q\)))) # (!\controlPath|stateRegloop:6:state_n|int_q~q\ & 
-- ((\controlPath|stateRegloop:7:state_n|int_q~q\ & (\dataPath|quotient_reg|regloop:5:bit_n|int_q~q\)) # (!\controlPath|stateRegloop:7:state_n|int_q~q\ & ((\dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:6:state_n|int_q~q\,
	datab => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \dataPath|quotient_reg|regloop:5:bit_n|int_q~q\,
	datad => \dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	combout => \dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2_combout\);

-- Location: FF_X1_Y43_N3
\dataPath|quotient_reg|regloop:6:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|quotient_reg|regloop:6:bit_n|int_q~q\);

-- Location: LCCOMB_X4_Y43_N6
\dataPath|remainder_mux|muxloop:1:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|remainder_mux|muxloop:1:mux_n|y~0_combout\ = (\controlPath|stateRegloop:2:state_n|int_q~q\ & (\INA[1]~input_o\)) # (!\controlPath|stateRegloop:2:state_n|int_q~q\ & ((\dataPath|adder|loop_add:1:addrn|o_Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \INA[1]~input_o\,
	datad => \dataPath|adder|loop_add:1:addrn|o_Sum~combout\,
	combout => \dataPath|remainder_mux|muxloop:1:mux_n|y~0_combout\);

-- Location: FF_X3_Y43_N23
\dataPath|remainder_reg|reg_n_bits:1:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dataPath|remainder_mux|muxloop:1:mux_n|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => VCC,
	ena => \controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\);

-- Location: IOIBUF_X0_Y48_N8
\INA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INA(2),
	o => \INA[2]~input_o\);

-- Location: LCCOMB_X4_Y43_N12
\dataPath|remainder_mux|muxloop:2:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|remainder_mux|muxloop:2:mux_n|y~0_combout\ = (\controlPath|stateRegloop:2:state_n|int_q~q\ & (\INA[2]~input_o\)) # (!\controlPath|stateRegloop:2:state_n|int_q~q\ & ((\dataPath|adder|loop_add:2:addrn|o_Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:2:state_n|int_q~q\,
	datab => \INA[2]~input_o\,
	datad => \dataPath|adder|loop_add:2:addrn|o_Sum~combout\,
	combout => \dataPath|remainder_mux|muxloop:2:mux_n|y~0_combout\);

-- Location: FF_X3_Y43_N29
\dataPath|remainder_reg|reg_n_bits:2:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \dataPath|remainder_mux|muxloop:2:mux_n|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => VCC,
	ena => \controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\);

ww_zero <= \zero~output_o\;

ww_overflow <= \overflow~output_o\;

ww_quotient(0) <= \quotient[0]~output_o\;

ww_quotient(1) <= \quotient[1]~output_o\;

ww_quotient(2) <= \quotient[2]~output_o\;

ww_quotient(3) <= \quotient[3]~output_o\;

ww_quotient(4) <= \quotient[4]~output_o\;

ww_quotient(5) <= \quotient[5]~output_o\;

ww_quotient(6) <= \quotient[6]~output_o\;

ww_quotient(7) <= \quotient[7]~output_o\;

ww_remainder(0) <= \remainder[0]~output_o\;

ww_remainder(1) <= \remainder[1]~output_o\;

ww_remainder(2) <= \remainder[2]~output_o\;

ww_remainder(3) <= \remainder[3]~output_o\;

ww_remainder(4) <= \remainder[4]~output_o\;

ww_remainder(5) <= \remainder[5]~output_o\;

ww_remainder(6) <= \remainder[6]~output_o\;

ww_remainder(7) <= \remainder[7]~output_o\;
END structure;



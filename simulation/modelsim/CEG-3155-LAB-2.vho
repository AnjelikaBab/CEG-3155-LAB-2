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

-- DATE "10/22/2024 20:33:27"

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

ENTITY 	multiplierTopLevel IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	INA : IN std_logic_vector(3 DOWNTO 0);
	INB : IN std_logic_vector(3 DOWNTO 0);
	zero : OUT std_logic;
	overflow : OUT std_logic;
	product : OUT std_logic_vector(7 DOWNTO 0)
	);
END multiplierTopLevel;

-- Design Ports Information
-- zero	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_AD8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[1]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[2]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[3]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[4]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[5]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- product[7]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INB[3]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INB[2]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INB[0]	=>  Location: PIN_AH4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INB[1]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INA[2]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INA[0]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INA[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INA[3]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multiplierTopLevel IS
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
SIGNAL ww_product : std_logic_vector(7 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:7:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\ : std_logic;
SIGNAL \controlPath|stateRegloop:2:state_n|int_q~q\ : std_logic;
SIGNAL \dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\ : std_logic;
SIGNAL \dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\ : std_logic;
SIGNAL \zero~output_o\ : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \product[0]~output_o\ : std_logic;
SIGNAL \product[1]~output_o\ : std_logic;
SIGNAL \product[2]~output_o\ : std_logic;
SIGNAL \product[3]~output_o\ : std_logic;
SIGNAL \product[4]~output_o\ : std_logic;
SIGNAL \product[5]~output_o\ : std_logic;
SIGNAL \product[6]~output_o\ : std_logic;
SIGNAL \product[7]~output_o\ : std_logic;
SIGNAL \INA[3]~input_o\ : std_logic;
SIGNAL \INB[3]~input_o\ : std_logic;
SIGNAL \dataPath|int_sign_in~combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \controlPath|stateReg0|int_q~q\ : std_logic;
SIGNAL \dataPath|sign_reg|int_q~q\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \controlPath|stateRegloop:3:state_n|int_q~q\ : std_logic;
SIGNAL \INB[0]~input_o\ : std_logic;
SIGNAL \INB[1]~input_o\ : std_logic;
SIGNAL \dataPath|overflow~0_combout\ : std_logic;
SIGNAL \dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~1_combout\ : std_logic;
SIGNAL \dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \controlPath|stateRegloop:1:state_n|int_q~q\ : std_logic;
SIGNAL \controlPath|stateRegloop:4:state_n|int_q~q\ : std_logic;
SIGNAL \controlPath|state_in[7]~0_combout\ : std_logic;
SIGNAL \dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\ : std_logic;
SIGNAL \dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\ : std_logic;
SIGNAL \dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~combout\ : std_logic;
SIGNAL \dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \INB[2]~input_o\ : std_logic;
SIGNAL \dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \dataPath|reg_B_right_shift|int_enable~combout\ : std_logic;
SIGNAL \dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|reg_B_right_shift|mux_0|muxfinal|y~0_combout\ : std_logic;
SIGNAL \dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|beq0~0_combout\ : std_logic;
SIGNAL \controlPath|state_in[7]~1_combout\ : std_logic;
SIGNAL \controlPath|stateRegloop:7:state_n|int_q~q\ : std_logic;
SIGNAL \controlPath|state_in[5]~2_combout\ : std_logic;
SIGNAL \controlPath|stateRegloop:5:state_n|int_q~q\ : std_logic;
SIGNAL \controlPath|stateRegloop:6:state_n|int_q~feeder_combout\ : std_logic;
SIGNAL \controlPath|stateRegloop:6:state_n|int_q~q\ : std_logic;
SIGNAL \dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0_combout\ : std_logic;
SIGNAL \dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|beq0~1_combout\ : std_logic;
SIGNAL \controlPath|stateRegloop:8:state_n|int_q~q\ : std_logic;
SIGNAL \INA[2]~input_o\ : std_logic;
SIGNAL \INA[1]~input_o\ : std_logic;
SIGNAL \INA[0]~input_o\ : std_logic;
SIGNAL \dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\ : std_logic;
SIGNAL \dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\ : std_logic;
SIGNAL \dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\ : std_logic;
SIGNAL \dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \dataPath|reg_A_left_shift|mux_0|mux1|selX0~combout\ : std_logic;
SIGNAL \dataPath|reg_A_left_shift|int_enable~combout\ : std_logic;
SIGNAL \dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\ : std_logic;
SIGNAL \dataPath|adder|add_0|o_Sum~combout\ : std_logic;
SIGNAL \controlPath|loadP~combout\ : std_logic;
SIGNAL \dataPath|reg_P|reg_n_bits:0:b|int_q~q\ : std_logic;
SIGNAL \dataPath|adder|loop_add:1:addrn|o_Sum~combout\ : std_logic;
SIGNAL \dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\ : std_logic;
SIGNAL \dataPath|mux_P|muxloop:1:mux_n|y~0_combout\ : std_logic;
SIGNAL \dataPath|reg_P|reg_n_bits:1:b|int_q~q\ : std_logic;
SIGNAL \dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\ : std_logic;
SIGNAL \dataPath|mux_P|muxloop:2:mux_n|y~0_combout\ : std_logic;
SIGNAL \dataPath|reg_P|reg_n_bits:2:b|int_q~q\ : std_logic;
SIGNAL \dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \dataPath|mux_P|muxloop:3:mux_n|y~0_combout\ : std_logic;
SIGNAL \dataPath|reg_P|reg_n_bits:3:b|int_q~q\ : std_logic;
SIGNAL \dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\ : std_logic;
SIGNAL \dataPath|mux_P|muxloop:5:mux_n|y~0_combout\ : std_logic;
SIGNAL \dataPath|reg_P|reg_n_bits:5:b|int_q~q\ : std_logic;
SIGNAL \dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\ : std_logic;
SIGNAL \dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\ : std_logic;
SIGNAL \dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \dataPath|mux_P|muxloop:6:mux_n|y~0_combout\ : std_logic;
SIGNAL \dataPath|mux_P|muxloop:6:mux_n|y~1_combout\ : std_logic;
SIGNAL \dataPath|reg_P|reg_n_bits:6:b|int_q~q\ : std_logic;
SIGNAL \dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \dataPath|two_comp_P_inst|adder|loop_add:6:addrn|carryFromBi~combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \dataPath|mux_P|muxloop:7:mux_n|y~0_combout\ : std_logic;
SIGNAL \dataPath|reg_P|reg_n_bits:7:b|int_q~q\ : std_logic;
SIGNAL \dataPath|zero~1_combout\ : std_logic;
SIGNAL \dataPath|zero~0_combout\ : std_logic;
SIGNAL \dataPath|zero~2_combout\ : std_logic;
SIGNAL \dataPath|reg_A_left_shift|mux_msb|mux1|y~0_combout\ : std_logic;
SIGNAL \dataPath|overflow~1_combout\ : std_logic;
SIGNAL \dataPath|overflow~2_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dataPath|mux_P|muxloop:4:mux_n|y~0_combout\ : std_logic;
SIGNAL \dataPath|reg_P|reg_n_bits:4:b|int_q~q\ : std_logic;
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
product <= ww_product;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\controlPath|stateReg0|ALT_INV_int_q~q\ <= NOT \controlPath|stateReg0|int_q~q\;
\dataPath|ALT_INV_zero~2_combout\ <= NOT \dataPath|zero~2_combout\;

-- Location: FF_X13_Y1_N7
\dataPath|reg_A_left_shift|regloop:7:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0_combout\,
	asdata => \dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\);

-- Location: FF_X13_Y1_N5
\dataPath|reg_A_left_shift|regloop:6:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0_combout\,
	asdata => \dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\);

-- Location: LCCOMB_X13_Y1_N6
\dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0_combout\ = (\INA[3]~input_o\ & (!\controlPath|stateRegloop:1:state_n|int_q~q\)) # (!\INA[3]~input_o\ & ((\dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\,
	datad => \INA[3]~input_o\,
	combout => \dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0_combout\);

-- Location: FF_X11_Y1_N31
\dataPath|reg_B_right_shift|regloop:1:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0_combout\,
	asdata => \dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\);

-- Location: LCCOMB_X13_Y1_N4
\dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0_combout\ = (\INA[3]~input_o\ & (!\controlPath|stateRegloop:1:state_n|int_q~q\)) # (!\INA[3]~input_o\ & ((\dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\,
	datad => \INA[3]~input_o\,
	combout => \dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X11_Y1_N30
\dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0_combout\ = (\controlPath|stateRegloop:3:state_n|int_q~q\ & ((\dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\))) # (!\controlPath|stateRegloop:3:state_n|int_q~q\ & (\INB[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[1]~input_o\,
	datab => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\,
	combout => \dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X10_Y1_N12
\dataPath|adder|loop_add:7:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:7:addrn|o_CarryOut~0_combout\ = (\dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ & ((\dataPath|reg_P|reg_n_bits:7:b|int_q~q\) # ((\controlPath|stateRegloop:7:state_n|int_q~q\ & 
-- \dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\)))) # (!\dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ & (\controlPath|stateRegloop:7:state_n|int_q~q\ & (\dataPath|reg_P|reg_n_bits:7:b|int_q~q\ & 
-- \dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	datac => \dataPath|reg_P|reg_n_bits:7:b|int_q~q\,
	datad => \dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\,
	combout => \dataPath|adder|loop_add:7:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X14_Y1_N18
\dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\ = (\controlPath|stateRegloop:1:state_n|int_q~q\ & ((\INA[3]~input_o\) # (!\dataPath|reg_A_left_shift|mux_msb|mux1|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlPath|stateRegloop:1:state_n|int_q~q\,
	datac => \INA[3]~input_o\,
	datad => \dataPath|reg_A_left_shift|mux_msb|mux1|y~0_combout\,
	combout => \dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\);

-- Location: FF_X10_Y1_N23
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

-- Location: LCCOMB_X14_Y1_N2
\dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\ = \INA[2]~input_o\ $ (((\INA[1]~input_o\) # (\INA[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INA[1]~input_o\,
	datac => \INA[2]~input_o\,
	datad => \INA[0]~input_o\,
	combout => \dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\);

-- Location: LCCOMB_X10_Y1_N22
\controlPath|state_in[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in\(2) = (!\INA[3]~input_o\ & \controlPath|stateReg0|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INA[3]~input_o\,
	datad => \controlPath|stateReg0|int_q~q\,
	combout => \controlPath|state_in\(2));

-- Location: LCCOMB_X11_Y1_N2
\dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\ = \INB[0]~input_o\ $ (\INB[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INB[0]~input_o\,
	datad => \INB[1]~input_o\,
	combout => \dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\);

-- Location: IOOBUF_X5_Y0_N16
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

-- Location: IOOBUF_X9_Y0_N9
\overflow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|overflow~2_combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\product[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	devoe => ww_devoe,
	o => \product[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\product[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|reg_P|reg_n_bits:1:b|int_q~q\,
	devoe => ww_devoe,
	o => \product[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\product[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|reg_P|reg_n_bits:2:b|int_q~q\,
	devoe => ww_devoe,
	o => \product[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\product[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|reg_P|reg_n_bits:3:b|int_q~q\,
	devoe => ww_devoe,
	o => \product[3]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\product[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|reg_P|reg_n_bits:4:b|int_q~q\,
	devoe => ww_devoe,
	o => \product[4]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\product[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|reg_P|reg_n_bits:5:b|int_q~q\,
	devoe => ww_devoe,
	o => \product[5]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\product[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|reg_P|reg_n_bits:6:b|int_q~q\,
	devoe => ww_devoe,
	o => \product[6]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\product[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataPath|reg_P|reg_n_bits:7:b|int_q~q\,
	devoe => ww_devoe,
	o => \product[7]~output_o\);

-- Location: IOIBUF_X7_Y0_N15
\INA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INA(3),
	o => \INA[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N22
\INB[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INB(3),
	o => \INB[3]~input_o\);

-- Location: LCCOMB_X10_Y1_N4
\dataPath|int_sign_in\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|int_sign_in~combout\ = \INA[3]~input_o\ $ (\INB[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INA[3]~input_o\,
	datad => \INB[3]~input_o\,
	combout => \dataPath|int_sign_in~combout\);

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

-- Location: FF_X12_Y1_N25
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

-- Location: FF_X10_Y1_N5
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

-- Location: LCCOMB_X10_Y1_N20
\controlPath|state_in[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in\(3) = (\controlPath|stateReg0|int_q~q\ & \INB[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlPath|stateReg0|int_q~q\,
	datad => \INB[3]~input_o\,
	combout => \controlPath|state_in\(3));

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

-- Location: FF_X10_Y1_N21
\controlPath|stateRegloop:3:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlPath|state_in\(3),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateRegloop:3:state_n|int_q~q\);

-- Location: IOIBUF_X9_Y0_N15
\INB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INB(0),
	o => \INB[0]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\INB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INB(1),
	o => \INB[1]~input_o\);

-- Location: LCCOMB_X11_Y1_N20
\dataPath|overflow~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|overflow~0_combout\ = (!\INB[2]~input_o\ & (!\INB[0]~input_o\ & (!\INB[3]~input_o\ & !\INB[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[2]~input_o\,
	datab => \INB[0]~input_o\,
	datac => \INB[3]~input_o\,
	datad => \INB[1]~input_o\,
	combout => \dataPath|overflow~0_combout\);

-- Location: LCCOMB_X10_Y1_N2
\dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~1_combout\ = (!\dataPath|overflow~0_combout\ & \controlPath|stateRegloop:3:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dataPath|overflow~0_combout\,
	datad => \controlPath|stateRegloop:3:state_n|int_q~q\,
	combout => \dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~1_combout\);

-- Location: LCCOMB_X11_Y1_N22
\dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0_combout\ = (\INB[3]~input_o\ & (!\controlPath|stateRegloop:3:state_n|int_q~q\)) # (!\INB[3]~input_o\ & ((\dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[3]~input_o\,
	datab => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~1_combout\,
	combout => \dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X10_Y1_N14
\controlPath|state_in[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in\(1) = (\INA[3]~input_o\ & \controlPath|stateReg0|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INA[3]~input_o\,
	datad => \controlPath|stateReg0|int_q~q\,
	combout => \controlPath|state_in\(1));

-- Location: FF_X10_Y1_N15
\controlPath|stateRegloop:1:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlPath|state_in\(1),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateRegloop:1:state_n|int_q~q\);

-- Location: LCCOMB_X10_Y1_N26
\controlPath|state_in[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in\(4) = (\controlPath|stateReg0|int_q~q\ & !\INB[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlPath|stateReg0|int_q~q\,
	datad => \INB[3]~input_o\,
	combout => \controlPath|state_in\(4));

-- Location: FF_X10_Y1_N27
\controlPath|stateRegloop:4:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlPath|state_in\(4),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateRegloop:4:state_n|int_q~q\);

-- Location: LCCOMB_X10_Y1_N8
\controlPath|state_in[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in[7]~0_combout\ = (\controlPath|stateRegloop:2:state_n|int_q~q\) # ((\controlPath|stateRegloop:1:state_n|int_q~q\) # ((\controlPath|stateRegloop:4:state_n|int_q~q\) # (\controlPath|stateRegloop:3:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:2:state_n|int_q~q\,
	datab => \controlPath|stateRegloop:1:state_n|int_q~q\,
	datac => \controlPath|stateRegloop:4:state_n|int_q~q\,
	datad => \controlPath|stateRegloop:3:state_n|int_q~q\,
	combout => \controlPath|state_in[7]~0_combout\);

-- Location: LCCOMB_X11_Y1_N12
\dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\ = \INB[2]~input_o\ $ (((\INB[0]~input_o\) # (\INB[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[2]~input_o\,
	datab => \INB[0]~input_o\,
	datad => \INB[1]~input_o\,
	combout => \dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\);

-- Location: LCCOMB_X11_Y1_N24
\dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0_combout\ = (\controlPath|stateRegloop:3:state_n|int_q~q\ & ((\dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\))) # (!\controlPath|stateRegloop:3:state_n|int_q~q\ & (\INB[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[2]~input_o\,
	datab => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\,
	combout => \dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X11_Y1_N26
\dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\ = \INB[3]~input_o\ $ (((\INB[2]~input_o\) # ((\INB[0]~input_o\) # (\INB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[2]~input_o\,
	datab => \INB[0]~input_o\,
	datac => \INB[3]~input_o\,
	datad => \INB[1]~input_o\,
	combout => \dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\);

-- Location: LCCOMB_X11_Y1_N4
\dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0_combout\ = (\controlPath|stateRegloop:3:state_n|int_q~q\ & ((\dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\))) # (!\controlPath|stateRegloop:3:state_n|int_q~q\ & (\INB[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[3]~input_o\,
	datab => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\,
	combout => \dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X11_Y1_N16
\dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~combout\ = (!\INB[3]~input_o\ & ((\INB[2]~input_o\) # ((\INB[0]~input_o\) # (\INB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[2]~input_o\,
	datab => \INB[0]~input_o\,
	datac => \INB[3]~input_o\,
	datad => \INB[1]~input_o\,
	combout => \dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~combout\);

-- Location: LCCOMB_X11_Y1_N6
\dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0_combout\ = (\controlPath|stateRegloop:3:state_n|int_q~q\ & ((\dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~combout\))) # (!\controlPath|stateRegloop:3:state_n|int_q~q\ & (\INB[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[3]~input_o\,
	datab => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~combout\,
	combout => \dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0_combout\);

-- Location: IOIBUF_X11_Y0_N15
\INB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INB(2),
	o => \INB[2]~input_o\);

-- Location: LCCOMB_X11_Y1_N0
\dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\ = (\controlPath|stateRegloop:3:state_n|int_q~q\ & ((\INB[1]~input_o\) # ((\INB[0]~input_o\) # (\INB[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[1]~input_o\,
	datab => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \INB[0]~input_o\,
	datad => \INB[2]~input_o\,
	combout => \dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X11_Y1_N14
\dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0_combout\ = (\INB[3]~input_o\ & (!\controlPath|stateRegloop:3:state_n|int_q~q\)) # (!\INB[3]~input_o\ & ((\dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[3]~input_o\,
	datab => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\,
	combout => \dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X10_Y1_N0
\dataPath|reg_B_right_shift|int_enable\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_B_right_shift|int_enable~combout\ = (\controlPath|stateRegloop:3:state_n|int_q~q\) # ((\controlPath|stateRegloop:4:state_n|int_q~q\) # (\controlPath|stateRegloop:6:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \controlPath|stateRegloop:4:state_n|int_q~q\,
	datad => \controlPath|stateRegloop:6:state_n|int_q~q\,
	combout => \dataPath|reg_B_right_shift|int_enable~combout\);

-- Location: FF_X11_Y1_N15
\dataPath|reg_B_right_shift|regloop:5:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0_combout\,
	asdata => \dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\);

-- Location: FF_X11_Y1_N7
\dataPath|reg_B_right_shift|regloop:4:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0_combout\,
	asdata => \dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\);

-- Location: FF_X11_Y1_N5
\dataPath|reg_B_right_shift|regloop:3:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0_combout\,
	asdata => \dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\);

-- Location: FF_X11_Y1_N25
\dataPath|reg_B_right_shift|regloop:2:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0_combout\,
	asdata => \dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\);

-- Location: LCCOMB_X11_Y1_N10
\dataPath|reg_B_right_shift|mux_0|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_B_right_shift|mux_0|muxfinal|y~0_combout\ = (\controlPath|stateRegloop:6:state_n|int_q~q\ & (\dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\)) # (!\controlPath|stateRegloop:6:state_n|int_q~q\ & ((\INB[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\,
	datac => \controlPath|stateRegloop:6:state_n|int_q~q\,
	datad => \INB[0]~input_o\,
	combout => \dataPath|reg_B_right_shift|mux_0|muxfinal|y~0_combout\);

-- Location: FF_X11_Y1_N11
\dataPath|reg_B_right_shift|regloop:0:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|reg_B_right_shift|mux_0|muxfinal|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\);

-- Location: LCCOMB_X11_Y1_N18
\dataPath|beq0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|beq0~0_combout\ = (\dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\) # ((\dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\) # ((\dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\) # 
-- (\dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\,
	datab => \dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\,
	datac => \dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\,
	datad => \dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\,
	combout => \dataPath|beq0~0_combout\);

-- Location: LCCOMB_X13_Y1_N10
\controlPath|state_in[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in[7]~1_combout\ = (\INB[0]~input_o\ & ((\dataPath|beq0~1_combout\) # ((\controlPath|state_in[7]~0_combout\) # (\dataPath|beq0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|beq0~1_combout\,
	datab => \INB[0]~input_o\,
	datac => \controlPath|state_in[7]~0_combout\,
	datad => \dataPath|beq0~0_combout\,
	combout => \controlPath|state_in[7]~1_combout\);

-- Location: FF_X13_Y1_N11
\controlPath|stateRegloop:7:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlPath|state_in[7]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateRegloop:7:state_n|int_q~q\);

-- Location: LCCOMB_X10_Y1_N18
\controlPath|state_in[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in\(7) = (\controlPath|state_in[7]~0_combout\) # ((\dataPath|beq0~1_combout\) # (\dataPath|beq0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlPath|state_in[7]~0_combout\,
	datac => \dataPath|beq0~1_combout\,
	datad => \dataPath|beq0~0_combout\,
	combout => \controlPath|state_in\(7));

-- Location: LCCOMB_X10_Y1_N28
\controlPath|state_in[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in[5]~2_combout\ = (\controlPath|stateRegloop:7:state_n|int_q~q\) # ((!\INB[0]~input_o\ & \controlPath|state_in\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[0]~input_o\,
	datac => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \controlPath|state_in\(7),
	combout => \controlPath|state_in[5]~2_combout\);

-- Location: FF_X10_Y1_N29
\controlPath|stateRegloop:5:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlPath|state_in[5]~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateRegloop:5:state_n|int_q~q\);

-- Location: LCCOMB_X10_Y1_N6
\controlPath|stateRegloop:6:state_n|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|stateRegloop:6:state_n|int_q~feeder_combout\ = \controlPath|stateRegloop:5:state_n|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlPath|stateRegloop:5:state_n|int_q~q\,
	combout => \controlPath|stateRegloop:6:state_n|int_q~feeder_combout\);

-- Location: FF_X10_Y1_N7
\controlPath|stateRegloop:6:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlPath|stateRegloop:6:state_n|int_q~feeder_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateRegloop:6:state_n|int_q~q\);

-- Location: LCCOMB_X11_Y1_N8
\dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0_combout\ = (!\controlPath|stateRegloop:6:state_n|int_q~q\ & ((\INB[3]~input_o\ & (!\controlPath|stateRegloop:3:state_n|int_q~q\)) # (!\INB[3]~input_o\ & (\controlPath|stateRegloop:3:state_n|int_q~q\ & 
-- !\dataPath|overflow~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INB[3]~input_o\,
	datab => \controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \controlPath|stateRegloop:6:state_n|int_q~q\,
	datad => \dataPath|overflow~0_combout\,
	combout => \dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0_combout\);

-- Location: FF_X11_Y1_N9
\dataPath|reg_B_right_shift|regloop:7:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\);

-- Location: FF_X11_Y1_N23
\dataPath|reg_B_right_shift|regloop:6:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0_combout\,
	asdata => \dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\);

-- Location: LCCOMB_X10_Y1_N30
\dataPath|beq0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|beq0~1_combout\ = (\dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\) # ((\dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\) # ((\dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\) # 
-- (\dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\,
	datab => \dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\,
	datac => \dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\,
	datad => \dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\,
	combout => \dataPath|beq0~1_combout\);

-- Location: LCCOMB_X10_Y1_N24
\controlPath|state_in[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in\(8) = (\controlPath|stateRegloop:6:state_n|int_q~q\ & (\dataPath|sign_reg|int_q~q\ & (!\dataPath|beq0~1_combout\ & !\dataPath|beq0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:6:state_n|int_q~q\,
	datab => \dataPath|sign_reg|int_q~q\,
	datac => \dataPath|beq0~1_combout\,
	datad => \dataPath|beq0~0_combout\,
	combout => \controlPath|state_in\(8));

-- Location: FF_X10_Y1_N25
\controlPath|stateRegloop:8:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlPath|state_in\(8),
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateRegloop:8:state_n|int_q~q\);

-- Location: IOIBUF_X13_Y0_N22
\INA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INA(2),
	o => \INA[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\INA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INA(1),
	o => \INA[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\INA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INA(0),
	o => \INA[0]~input_o\);

-- Location: LCCOMB_X14_Y1_N14
\dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\ = (!\INA[3]~input_o\ & ((\INA[2]~input_o\) # ((\INA[1]~input_o\) # (\INA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INA[3]~input_o\,
	datab => \INA[2]~input_o\,
	datac => \INA[1]~input_o\,
	datad => \INA[0]~input_o\,
	combout => \dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\);

-- Location: LCCOMB_X13_Y1_N30
\dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0_combout\ = (\controlPath|stateRegloop:1:state_n|int_q~q\ & ((\dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\))) # (!\controlPath|stateRegloop:1:state_n|int_q~q\ & (\INA[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INA[3]~input_o\,
	datab => \dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\,
	datad => \controlPath|stateRegloop:1:state_n|int_q~q\,
	combout => \dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X14_Y1_N4
\dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\ = \INA[3]~input_o\ $ (((\INA[2]~input_o\) # ((\INA[1]~input_o\) # (\INA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INA[3]~input_o\,
	datab => \INA[2]~input_o\,
	datac => \INA[1]~input_o\,
	datad => \INA[0]~input_o\,
	combout => \dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\);

-- Location: LCCOMB_X13_Y1_N26
\dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0_combout\ = (\controlPath|stateRegloop:1:state_n|int_q~q\ & ((\dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\))) # (!\controlPath|stateRegloop:1:state_n|int_q~q\ & (\INA[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \INA[3]~input_o\,
	datad => \dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\,
	combout => \dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X13_Y1_N22
\dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0_combout\ = (\controlPath|stateRegloop:1:state_n|int_q~q\ & (\dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\)) # (!\controlPath|stateRegloop:1:state_n|int_q~q\ & ((\INA[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\,
	datab => \INA[2]~input_o\,
	datad => \controlPath|stateRegloop:1:state_n|int_q~q\,
	combout => \dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X14_Y1_N20
\dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\ = \INA[1]~input_o\ $ (\INA[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INA[1]~input_o\,
	datad => \INA[0]~input_o\,
	combout => \dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\);

-- Location: LCCOMB_X13_Y1_N14
\dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0_combout\ = (\controlPath|stateRegloop:1:state_n|int_q~q\ & (\dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\)) # (!\controlPath|stateRegloop:1:state_n|int_q~q\ & ((\INA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\,
	datad => \INA[1]~input_o\,
	combout => \dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X13_Y1_N20
\dataPath|reg_A_left_shift|mux_0|mux1|selX0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_A_left_shift|mux_0|mux1|selX0~combout\ = (!\controlPath|stateRegloop:5:state_n|int_q~q\ & \INA[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlPath|stateRegloop:5:state_n|int_q~q\,
	datad => \INA[0]~input_o\,
	combout => \dataPath|reg_A_left_shift|mux_0|mux1|selX0~combout\);

-- Location: LCCOMB_X10_Y1_N16
\dataPath|reg_A_left_shift|int_enable\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_A_left_shift|int_enable~combout\ = (\controlPath|stateRegloop:2:state_n|int_q~q\) # ((\controlPath|stateRegloop:1:state_n|int_q~q\) # (\controlPath|stateRegloop:5:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \controlPath|stateRegloop:5:state_n|int_q~q\,
	combout => \dataPath|reg_A_left_shift|int_enable~combout\);

-- Location: FF_X13_Y1_N21
\dataPath|reg_A_left_shift|regloop:0:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|reg_A_left_shift|mux_0|mux1|selX0~combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\);

-- Location: FF_X13_Y1_N15
\dataPath|reg_A_left_shift|regloop:1:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0_combout\,
	asdata => \dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\);

-- Location: FF_X13_Y1_N23
\dataPath|reg_A_left_shift|regloop:2:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0_combout\,
	asdata => \dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\);

-- Location: FF_X13_Y1_N27
\dataPath|reg_A_left_shift|regloop:3:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0_combout\,
	asdata => \dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\);

-- Location: FF_X13_Y1_N31
\dataPath|reg_A_left_shift|regloop:4:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0_combout\,
	asdata => \dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\);

-- Location: LCCOMB_X13_Y1_N28
\dataPath|mux_adder|muxloop:1:mux_n|selX1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\ = (\dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\ & \controlPath|stateRegloop:7:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\,
	datad => \controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\);

-- Location: LCCOMB_X12_Y1_N16
\dataPath|adder|add_0|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|add_0|o_Sum~combout\ = \dataPath|reg_P|reg_n_bits:0:b|int_q~q\ $ (((\dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\ & \controlPath|stateRegloop:7:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\,
	datac => \dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	datad => \controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \dataPath|adder|add_0|o_Sum~combout\);

-- Location: LCCOMB_X14_Y1_N30
\controlPath|loadP\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|loadP~combout\ = (\controlPath|stateRegloop:7:state_n|int_q~q\) # (\controlPath|stateRegloop:8:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \controlPath|stateRegloop:8:state_n|int_q~q\,
	combout => \controlPath|loadP~combout\);

-- Location: FF_X12_Y1_N17
\dataPath|reg_P|reg_n_bits:0:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|adder|add_0|o_Sum~combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_P|reg_n_bits:0:b|int_q~q\);

-- Location: LCCOMB_X14_Y1_N8
\dataPath|adder|loop_add:1:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:1:addrn|o_Sum~combout\ = \dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\ $ (\dataPath|reg_P|reg_n_bits:1:b|int_q~q\ $ (((\dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\ & \dataPath|reg_P|reg_n_bits:0:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\,
	datab => \dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\,
	datac => \dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	datad => \dataPath|reg_P|reg_n_bits:1:b|int_q~q\,
	combout => \dataPath|adder|loop_add:1:addrn|o_Sum~combout\);

-- Location: LCCOMB_X13_Y1_N18
\dataPath|mux_adder|muxloop:0:mux_n|selX1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\ = (\controlPath|stateRegloop:7:state_n|int_q~q\ & \dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\,
	combout => \dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\);

-- Location: LCCOMB_X14_Y1_N12
\dataPath|mux_P|muxloop:1:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|mux_P|muxloop:1:mux_n|y~0_combout\ = \dataPath|adder|loop_add:1:addrn|o_Sum~combout\ $ (((\controlPath|stateRegloop:8:state_n|int_q~q\ & (\dataPath|reg_P|reg_n_bits:0:b|int_q~q\ $ (\dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:8:state_n|int_q~q\,
	datab => \dataPath|adder|loop_add:1:addrn|o_Sum~combout\,
	datac => \dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	datad => \dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\,
	combout => \dataPath|mux_P|muxloop:1:mux_n|y~0_combout\);

-- Location: FF_X14_Y1_N13
\dataPath|reg_P|reg_n_bits:1:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|mux_P|muxloop:1:mux_n|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_P|reg_n_bits:1:b|int_q~q\);

-- Location: LCCOMB_X13_Y1_N16
\dataPath|adder|loop_add:1:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ = (\dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\ & ((\dataPath|reg_P|reg_n_bits:1:b|int_q~q\) # ((\dataPath|reg_P|reg_n_bits:0:b|int_q~q\ & \dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\)))) 
-- # (!\dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\ & (\dataPath|reg_P|reg_n_bits:0:b|int_q~q\ & (\dataPath|reg_P|reg_n_bits:1:b|int_q~q\ & \dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	datab => \dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\,
	datac => \dataPath|reg_P|reg_n_bits:1:b|int_q~q\,
	datad => \dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\,
	combout => \dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X14_Y1_N0
\dataPath|adder|loop_add:2:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\ = \dataPath|reg_P|reg_n_bits:2:b|int_q~q\ $ (\dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ $ (((\dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\ & 
-- \controlPath|stateRegloop:7:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|reg_P|reg_n_bits:2:b|int_q~q\,
	datab => \dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\,
	datac => \dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\,
	datad => \controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X14_Y1_N6
\dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\ = (\dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\ & ((\dataPath|reg_P|reg_n_bits:1:b|int_q~q\ $ (!\dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\)) # 
-- (!\dataPath|reg_P|reg_n_bits:0:b|int_q~q\))) # (!\dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\ & ((\dataPath|reg_P|reg_n_bits:0:b|int_q~q\) # (\dataPath|reg_P|reg_n_bits:1:b|int_q~q\ $ (\dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|reg_P|reg_n_bits:1:b|int_q~q\,
	datab => \dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\,
	datac => \dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	datad => \dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\,
	combout => \dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\);

-- Location: LCCOMB_X14_Y1_N10
\dataPath|mux_P|muxloop:2:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|mux_P|muxloop:2:mux_n|y~0_combout\ = \dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\ $ (((\controlPath|stateRegloop:8:state_n|int_q~q\ & \dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\,
	datad => \dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\,
	combout => \dataPath|mux_P|muxloop:2:mux_n|y~0_combout\);

-- Location: FF_X14_Y1_N11
\dataPath|reg_P|reg_n_bits:2:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|mux_P|muxloop:2:mux_n|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_P|reg_n_bits:2:b|int_q~q\);

-- Location: LCCOMB_X13_Y1_N0
\dataPath|adder|loop_add:2:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ = (\dataPath|reg_P|reg_n_bits:2:b|int_q~q\ & ((\dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\) # ((\dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\ & 
-- \controlPath|stateRegloop:7:state_n|int_q~q\)))) # (!\dataPath|reg_P|reg_n_bits:2:b|int_q~q\ & (\dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\ & (\controlPath|stateRegloop:7:state_n|int_q~q\ & \dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\,
	datab => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \dataPath|reg_P|reg_n_bits:2:b|int_q~q\,
	datad => \dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X13_Y1_N12
\dataPath|adder|loop_add:3:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\ = \dataPath|reg_P|reg_n_bits:3:b|int_q~q\ $ (\dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ $ (((\dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\ & 
-- \controlPath|stateRegloop:7:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\,
	datab => \dataPath|reg_P|reg_n_bits:3:b|int_q~q\,
	datac => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X14_Y1_N16
\dataPath|mux_P|muxloop:3:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|mux_P|muxloop:3:mux_n|y~0_combout\ = \dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\ $ (((\controlPath|stateRegloop:8:state_n|int_q~q\ & ((\dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\) # 
-- (\dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:8:state_n|int_q~q\,
	datab => \dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\,
	datac => \dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\,
	datad => \dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\,
	combout => \dataPath|mux_P|muxloop:3:mux_n|y~0_combout\);

-- Location: FF_X14_Y1_N17
\dataPath|reg_P|reg_n_bits:3:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|mux_P|muxloop:3:mux_n|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_P|reg_n_bits:3:b|int_q~q\);

-- Location: LCCOMB_X13_Y1_N24
\dataPath|adder|loop_add:3:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ = (\dataPath|reg_P|reg_n_bits:3:b|int_q~q\ & ((\dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\) # ((\controlPath|stateRegloop:7:state_n|int_q~q\ & 
-- \dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\)))) # (!\dataPath|reg_P|reg_n_bits:3:b|int_q~q\ & (\controlPath|stateRegloop:7:state_n|int_q~q\ & (\dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\ & 
-- \dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \dataPath|reg_P|reg_n_bits:3:b|int_q~q\,
	datac => \dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\,
	datad => \dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X12_Y1_N12
\dataPath|adder|loop_add:4:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ = \dataPath|reg_P|reg_n_bits:4:b|int_q~q\ $ (\dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ $ (((\controlPath|stateRegloop:7:state_n|int_q~q\ & 
-- \dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|reg_P|reg_n_bits:4:b|int_q~q\,
	datab => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\,
	datad => \dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X13_Y1_N2
\dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\ = (\dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\) # ((\dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\) # (\dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\,
	datac => \dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\,
	datad => \dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\,
	combout => \dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\);

-- Location: LCCOMB_X12_Y1_N8
\dataPath|mux_P|muxloop:5:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|mux_P|muxloop:5:mux_n|y~0_combout\ = \dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ $ (((\controlPath|stateRegloop:8:state_n|int_q~q\ & ((\dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\) # 
-- (\dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datab => \controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	datad => \dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\,
	combout => \dataPath|mux_P|muxloop:5:mux_n|y~0_combout\);

-- Location: FF_X12_Y1_N9
\dataPath|reg_P|reg_n_bits:5:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|mux_P|muxloop:5:mux_n|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_P|reg_n_bits:5:b|int_q~q\);

-- Location: LCCOMB_X14_Y1_N24
\dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\ = (\controlPath|stateRegloop:1:state_n|int_q~q\ & ((\INA[2]~input_o\) # ((\INA[1]~input_o\) # (\INA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INA[2]~input_o\,
	datab => \controlPath|stateRegloop:1:state_n|int_q~q\,
	datac => \INA[1]~input_o\,
	datad => \INA[0]~input_o\,
	combout => \dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\);

-- Location: LCCOMB_X13_Y1_N8
\dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0_combout\ = (\INA[3]~input_o\ & (!\controlPath|stateRegloop:1:state_n|int_q~q\)) # (!\INA[3]~input_o\ & ((\dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\,
	datad => \INA[3]~input_o\,
	combout => \dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0_combout\);

-- Location: FF_X13_Y1_N9
\dataPath|reg_A_left_shift|regloop:5:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0_combout\,
	asdata => \dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\);

-- Location: LCCOMB_X12_Y1_N6
\dataPath|adder|loop_add:4:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ = (\dataPath|reg_P|reg_n_bits:4:b|int_q~q\ & ((\dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\) # ((\controlPath|stateRegloop:7:state_n|int_q~q\ & 
-- \dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\)))) # (!\dataPath|reg_P|reg_n_bits:4:b|int_q~q\ & (\controlPath|stateRegloop:7:state_n|int_q~q\ & (\dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\ & 
-- \dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|reg_P|reg_n_bits:4:b|int_q~q\,
	datab => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\,
	datad => \dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X12_Y1_N30
\dataPath|adder|loop_add:5:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ = \dataPath|reg_P|reg_n_bits:5:b|int_q~q\ $ (\dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ $ (((\controlPath|stateRegloop:7:state_n|int_q~q\ & 
-- \dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \dataPath|reg_P|reg_n_bits:5:b|int_q~q\,
	datac => \dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\,
	datad => \dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X12_Y1_N22
\dataPath|mux_P|muxloop:6:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|mux_P|muxloop:6:mux_n|y~0_combout\ = (\controlPath|stateRegloop:8:state_n|int_q~q\ & ((\dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\) # ((\dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\) # 
-- (\dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datab => \controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	datad => \dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\,
	combout => \dataPath|mux_P|muxloop:6:mux_n|y~0_combout\);

-- Location: LCCOMB_X12_Y1_N26
\dataPath|mux_P|muxloop:6:mux_n|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|mux_P|muxloop:6:mux_n|y~1_combout\ = \dataPath|mux_P|muxloop:6:mux_n|y~0_combout\ $ (\dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dataPath|mux_P|muxloop:6:mux_n|y~0_combout\,
	datad => \dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	combout => \dataPath|mux_P|muxloop:6:mux_n|y~1_combout\);

-- Location: FF_X12_Y1_N27
\dataPath|reg_P|reg_n_bits:6:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|mux_P|muxloop:6:mux_n|y~1_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_P|reg_n_bits:6:b|int_q~q\);

-- Location: LCCOMB_X12_Y1_N0
\dataPath|adder|loop_add:5:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ = (\dataPath|reg_P|reg_n_bits:5:b|int_q~q\ & ((\dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\) # ((\controlPath|stateRegloop:7:state_n|int_q~q\ & 
-- \dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\)))) # (!\dataPath|reg_P|reg_n_bits:5:b|int_q~q\ & (\controlPath|stateRegloop:7:state_n|int_q~q\ & (\dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\ & 
-- \dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \dataPath|reg_P|reg_n_bits:5:b|int_q~q\,
	datac => \dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\,
	datad => \dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X12_Y1_N28
\dataPath|adder|loop_add:6:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\ = \dataPath|reg_P|reg_n_bits:6:b|int_q~q\ $ (\dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ $ (((\dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\ & 
-- \controlPath|stateRegloop:7:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\,
	datab => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \dataPath|reg_P|reg_n_bits:6:b|int_q~q\,
	datad => \dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X12_Y1_N14
\dataPath|two_comp_P_inst|adder|loop_add:6:addrn|carryFromBi\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|two_comp_P_inst|adder|loop_add:6:addrn|carryFromBi~combout\ = (\dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\) # ((\dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\) # ((\dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\) # 
-- (\dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\,
	datab => \dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datac => \dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	datad => \dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	combout => \dataPath|two_comp_P_inst|adder|loop_add:6:addrn|carryFromBi~combout\);

-- Location: LCCOMB_X12_Y1_N2
\dataPath|adder|loop_add:6:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ = (\dataPath|reg_P|reg_n_bits:6:b|int_q~q\ & ((\dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\) # ((\dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\ & 
-- \controlPath|stateRegloop:7:state_n|int_q~q\)))) # (!\dataPath|reg_P|reg_n_bits:6:b|int_q~q\ & (\dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\ & (\controlPath|stateRegloop:7:state_n|int_q~q\ & \dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\,
	datab => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \dataPath|reg_P|reg_n_bits:6:b|int_q~q\,
	datad => \dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X12_Y1_N20
\dataPath|adder|loop_add:7:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\ = \dataPath|reg_P|reg_n_bits:7:b|int_q~q\ $ (\dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ $ (((\dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\ & 
-- \controlPath|stateRegloop:7:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\,
	datab => \controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \dataPath|reg_P|reg_n_bits:7:b|int_q~q\,
	datad => \dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	combout => \dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X12_Y1_N4
\dataPath|mux_P|muxloop:7:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|mux_P|muxloop:7:mux_n|y~0_combout\ = \dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\ $ (((\controlPath|stateRegloop:8:state_n|int_q~q\ & \dataPath|two_comp_P_inst|adder|loop_add:6:addrn|carryFromBi~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \dataPath|two_comp_P_inst|adder|loop_add:6:addrn|carryFromBi~combout\,
	datad => \dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\,
	combout => \dataPath|mux_P|muxloop:7:mux_n|y~0_combout\);

-- Location: FF_X12_Y1_N5
\dataPath|reg_P|reg_n_bits:7:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|mux_P|muxloop:7:mux_n|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_P|reg_n_bits:7:b|int_q~q\);

-- Location: LCCOMB_X12_Y1_N10
\dataPath|zero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|zero~1_combout\ = (\dataPath|reg_P|reg_n_bits:4:b|int_q~q\) # ((\dataPath|reg_P|reg_n_bits:7:b|int_q~q\) # ((\dataPath|reg_P|reg_n_bits:5:b|int_q~q\) # (\dataPath|reg_P|reg_n_bits:6:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|reg_P|reg_n_bits:4:b|int_q~q\,
	datab => \dataPath|reg_P|reg_n_bits:7:b|int_q~q\,
	datac => \dataPath|reg_P|reg_n_bits:5:b|int_q~q\,
	datad => \dataPath|reg_P|reg_n_bits:6:b|int_q~q\,
	combout => \dataPath|zero~1_combout\);

-- Location: LCCOMB_X14_Y1_N22
\dataPath|zero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|zero~0_combout\ = (\dataPath|reg_P|reg_n_bits:2:b|int_q~q\) # ((\dataPath|reg_P|reg_n_bits:3:b|int_q~q\) # ((\dataPath|reg_P|reg_n_bits:0:b|int_q~q\) # (\dataPath|reg_P|reg_n_bits:1:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|reg_P|reg_n_bits:2:b|int_q~q\,
	datab => \dataPath|reg_P|reg_n_bits:3:b|int_q~q\,
	datac => \dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	datad => \dataPath|reg_P|reg_n_bits:1:b|int_q~q\,
	combout => \dataPath|zero~0_combout\);

-- Location: LCCOMB_X12_Y1_N24
\dataPath|zero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|zero~2_combout\ = (\dataPath|zero~1_combout\) # (\dataPath|zero~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|zero~1_combout\,
	datad => \dataPath|zero~0_combout\,
	combout => \dataPath|zero~2_combout\);

-- Location: LCCOMB_X14_Y1_N28
\dataPath|reg_A_left_shift|mux_msb|mux1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|reg_A_left_shift|mux_msb|mux1|y~0_combout\ = (!\INA[1]~input_o\ & (!\INA[2]~input_o\ & !\INA[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INA[1]~input_o\,
	datac => \INA[2]~input_o\,
	datad => \INA[0]~input_o\,
	combout => \dataPath|reg_A_left_shift|mux_msb|mux1|y~0_combout\);

-- Location: LCCOMB_X10_Y1_N10
\dataPath|overflow~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|overflow~1_combout\ = (\dataPath|adder|loop_add:7:addrn|o_CarryOut~0_combout\) # ((\dataPath|overflow~0_combout\) # ((!\INA[3]~input_o\ & \dataPath|reg_A_left_shift|mux_msb|mux1|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|adder|loop_add:7:addrn|o_CarryOut~0_combout\,
	datab => \INA[3]~input_o\,
	datac => \dataPath|overflow~0_combout\,
	datad => \dataPath|reg_A_left_shift|mux_msb|mux1|y~0_combout\,
	combout => \dataPath|overflow~1_combout\);

-- Location: LCCOMB_X11_Y1_N28
\dataPath|overflow~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|overflow~2_combout\ = (\dataPath|overflow~1_combout\) # ((!\dataPath|two_comp_P_inst|adder|loop_add:6:addrn|carryFromBi~combout\ & !\dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataPath|two_comp_P_inst|adder|loop_add:6:addrn|carryFromBi~combout\,
	datac => \dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\,
	datad => \dataPath|overflow~1_combout\,
	combout => \dataPath|overflow~2_combout\);

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

-- Location: LCCOMB_X12_Y1_N18
\dataPath|mux_P|muxloop:4:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataPath|mux_P|muxloop:4:mux_n|y~0_combout\ = \dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ $ (((\controlPath|stateRegloop:8:state_n|int_q~q\ & \dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datab => \controlPath|stateRegloop:8:state_n|int_q~q\,
	datad => \dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\,
	combout => \dataPath|mux_P|muxloop:4:mux_n|y~0_combout\);

-- Location: FF_X12_Y1_N19
\dataPath|reg_P|reg_n_bits:4:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dataPath|mux_P|muxloop:4:mux_n|y~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataPath|reg_P|reg_n_bits:4:b|int_q~q\);

ww_zero <= \zero~output_o\;

ww_overflow <= \overflow~output_o\;

ww_product(0) <= \product[0]~output_o\;

ww_product(1) <= \product[1]~output_o\;

ww_product(2) <= \product[2]~output_o\;

ww_product(3) <= \product[3]~output_o\;

ww_product(4) <= \product[4]~output_o\;

ww_product(5) <= \product[5]~output_o\;

ww_product(6) <= \product[6]~output_o\;

ww_product(7) <= \product[7]~output_o\;
END structure;



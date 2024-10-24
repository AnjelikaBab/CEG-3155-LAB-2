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

-- DATE "10/23/2024 21:20:33"

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

ENTITY 	\CEG-3155-LAB-2-Other\ IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 3);
	SW : IN std_logic_vector(17 DOWNTO 7);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END \CEG-3155-LAB-2-Other\;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF \CEG-3155-LAB-2-Other\ IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 3);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 7);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \inst3|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \inst3|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\ : std_logic;
SIGNAL \inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|mux_P|muxloop:4:mux_n|y~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|mux_P|muxloop:7:mux_n|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|remainder_mux|muxloop:6:mux_n|y~0_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \inst3|adder_subtractor_inst|loop_add:2:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|int_sign_in~0_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|stateReg0|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|sign_reg|int_q~q\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|mux_0|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|state_in[3]~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|state_in[4]~6_combout\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|controlPath|state_in[10]~1_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|controlPath|stateRegloop:10:state_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|controlPath|state_in[5]~2_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|controlPath|state_in[7]~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|controlPath|state_in[5]~3_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|beq0~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|beq0~1_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|mux_0|mux1|selX0~combout\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|adder|add_0|o_Sum~combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~feeder_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|controlPath|loadP~combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|mux_P|muxloop:1:mux_n|y~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~feeder_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|mux_P|muxloop:2:mux_n|y~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \inst3|adder_subtractor_inst|loop_add:1:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|state_in~3_combout\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|state_in[5]~4_combout\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|sub~combout\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|state_in[7]~5_combout\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|addSel0~combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|quotient_reg|mux_0|mux1|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|quotient_reg|int_enable~combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|addSel1~combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|remainder_mux|muxloop:4:mux_n|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|remainder_mux|muxloop:5:mux_n|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~2_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|quotient_reg|regloop:7:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~1_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|divisor_reg|regloop:7:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|ldRem~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|shiftQuot~combout\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|state_in[9]~1_combout\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|state_in[9]~2_combout\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|controlPath|selZ~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~2_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~3_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~4_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|add_0|carryFromBi~combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|remainder_mux|muxloop:2:mux_n|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|remainder_mux|muxloop:3:mux_n|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|divisor_reg|mux_0|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|divisor_reg|regloop:0:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|add_0|o_Sum~combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|remainder_mux|muxloop:0:mux_n|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|add_0|carryFromBoth~combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|remainder_mux|muxloop:1:mux_n|y~0_combout\ : std_logic;
SIGNAL \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\ : std_logic;
SIGNAL \inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|mux_P|muxloop:3:mux_n|y~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\ : std_logic;
SIGNAL \inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|mux_P|muxloop:5:mux_n|y~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:5:addrn|carryFromBi~combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~1_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|mux_P|muxloop:6:mux_n|y~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\ : std_logic;
SIGNAL \inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \inst3|adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \inst3|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|multiplier_inst|controlPath|state_in\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst3|divider_inst|controlPath|state_in\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[15]~input_o\ : std_logic;

BEGIN

HEX0 <= ww_HEX0;
ww_KEY <= KEY;
ww_SW <= SW;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\ <= NOT \inst3|divider_inst|controlPath|stateReg0|int_q~q\;
\inst2|ALT_INV_Mux6~0_combout\ <= NOT \inst2|Mux6~0_combout\;
\inst|ALT_INV_Mux6~0_combout\ <= NOT \inst|Mux6~0_combout\;
\ALT_INV_SW[15]~input_o\ <= NOT \SW[15]~input_o\;

-- Location: FF_X114_Y34_N23
\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0_combout\,
	asdata => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \inst3|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\);

-- Location: LCCOMB_X114_Y34_N22
\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0_combout\ = (\SW[14]~input_o\ & (!\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\)) # (!\SW[14]~input_o\ & 
-- ((\inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\,
	datad => \SW[14]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X113_Y36_N18
\inst3|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\ = (\SW[7]~input_o\ & (\SW[16]~input_o\ $ (\SW[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst3|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X113_Y36_N0
\inst3|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\ = (\SW[8]~input_o\ & ((\inst3|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\ & (!\SW[16]~input_o\)) # (!\inst3|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\ & 
-- ((\SW[12]~input_o\))))) # (!\SW[8]~input_o\ & ((\inst3|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\ & ((\SW[12]~input_o\))) # (!\inst3|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\ & (\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst3|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\,
	datac => \SW[16]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \inst3|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\);

-- Location: FF_X114_Y33_N5
\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|mux_P|muxloop:4:mux_n|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\);

-- Location: LCCOMB_X114_Y33_N26
\inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~0_combout\ = (\SW[17]~input_o\ & ((\SW[16]~input_o\ & (\inst3|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\)) # (!\SW[16]~input_o\ & 
-- ((\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\,
	datac => \SW[16]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X114_Y33_N22
\inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~0_combout\ = (\SW[17]~input_o\ & ((\SW[16]~input_o\ & (\inst3|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\)) # (!\SW[16]~input_o\ & 
-- ((\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\,
	datac => \SW[16]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~0_combout\);

-- Location: FF_X113_Y33_N17
\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|mux_P|muxloop:7:mux_n|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\);

-- Location: LCCOMB_X114_Y33_N4
\inst3|multiplier_inst|dataPath|mux_P|muxloop:4:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|mux_P|muxloop:4:mux_n|y~0_combout\ = \inst3|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ $ (((\inst3|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\,
	datad => \inst3|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|mux_P|muxloop:4:mux_n|y~0_combout\);

-- Location: LCCOMB_X113_Y33_N20
\inst3|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ = (\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\ & ((\inst3|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\) # 
-- ((\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\ & \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\)))) # (!\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\ & 
-- (\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\ & (\inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \inst3|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\,
	datac => \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X113_Y33_N14
\inst3|multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\ = \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\ $ (\inst3|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ $ 
-- (((\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\ & \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\,
	datac => \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X113_Y33_N16
\inst3|multiplier_inst|dataPath|mux_P|muxloop:7:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|mux_P|muxloop:7:mux_n|y~0_combout\ = \inst3|multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\ $ (((\inst3|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- ((\inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:5:addrn|carryFromBi~combout\) # (\inst3|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:5:addrn|carryFromBi~combout\,
	datab => \inst3|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \inst3|multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\,
	datad => \inst3|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|mux_P|muxloop:7:mux_n|y~0_combout\);

-- Location: FF_X114_Y35_N3
\inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\);

-- Location: FF_X113_Y35_N27
\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|remainder_mux|muxloop:6:mux_n|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\);

-- Location: LCCOMB_X114_Y35_N2
\inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0_combout\ = \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\ $ (((\inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & 
-- (\inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\ & \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datab => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\,
	datac => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\,
	datad => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	combout => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0_combout\);

-- Location: LCCOMB_X113_Y35_N26
\inst3|divider_inst|dataPath|remainder_mux|muxloop:6:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|remainder_mux|muxloop:6:mux_n|y~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\SW[14]~input_o\)) # (!\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	combout => \inst3|divider_inst|dataPath|remainder_mux|muxloop:6:mux_n|y~0_combout\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X114_Y32_N4
\inst3|adder_subtractor_inst|loop_add:2:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|adder_subtractor_inst|loop_add:2:addrn|o_Sum~0_combout\ = \inst3|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\ $ (\SW[13]~input_o\ $ (\SW[16]~input_o\ $ (\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\,
	datab => \SW[13]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst3|adder_subtractor_inst|loop_add:2:addrn|o_Sum~0_combout\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: LCCOMB_X114_Y32_N24
\inst3|divider_inst|dataPath|int_sign_in~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|int_sign_in~0_combout\ = \SW[10]~input_o\ $ (\SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[10]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \inst3|divider_inst|dataPath|int_sign_in~0_combout\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: FF_X114_Y35_N7
\inst3|divider_inst|controlPath|stateReg0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	asdata => \SW[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|controlPath|stateReg0|int_q~q\);

-- Location: FF_X111_Y35_N13
\inst3|divider_inst|dataPath|sign_reg|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	asdata => \inst3|divider_inst|dataPath|int_sign_in~0_combout\,
	sload => VCC,
	ena => \inst3|divider_inst|controlPath|stateReg0|int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|sign_reg|int_q~q\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X114_Y36_N18
\inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\ = (!\SW[10]~input_o\ & ((\SW[8]~input_o\) # ((\SW[7]~input_o\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \SW[10]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X114_Y36_N16
\inst3|multiplier_inst|dataPath|reg_B_right_shift|mux_0|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_B_right_shift|mux_0|muxfinal|y~0_combout\ = (\inst3|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & (\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\)) # 
-- (!\inst3|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & ((\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\,
	datab => \SW[7]~input_o\,
	datad => \inst3|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	combout => \inst3|multiplier_inst|dataPath|reg_B_right_shift|mux_0|muxfinal|y~0_combout\);

-- Location: LCCOMB_X109_Y35_N6
\inst3|divider_inst|controlPath|state_in[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|controlPath|state_in\(2) = (\inst3|divider_inst|controlPath|stateReg0|int_q~q\ & !\SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|divider_inst|controlPath|stateReg0|int_q~q\,
	datad => \SW[14]~input_o\,
	combout => \inst3|divider_inst|controlPath|state_in\(2));

-- Location: FF_X111_Y35_N29
\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	asdata => \inst3|divider_inst|controlPath|state_in\(2),
	clrn => \ALT_INV_SW[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\);

-- Location: LCCOMB_X110_Y35_N16
\inst3|divider_inst|controlPath|state_in[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|controlPath|state_in[3]~0_combout\ = (\SW[10]~input_o\ & ((\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) # (\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datad => \SW[10]~input_o\,
	combout => \inst3|divider_inst|controlPath|state_in[3]~0_combout\);

-- Location: FF_X111_Y35_N11
\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	asdata => \inst3|divider_inst|controlPath|state_in[3]~0_combout\,
	clrn => \ALT_INV_SW[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\);

-- Location: LCCOMB_X110_Y35_N2
\inst3|divider_inst|controlPath|state_in[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|controlPath|state_in[4]~6_combout\ = (!\SW[10]~input_o\ & ((\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) # (\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datad => \SW[10]~input_o\,
	combout => \inst3|divider_inst|controlPath|state_in[4]~6_combout\);

-- Location: FF_X111_Y35_N25
\inst3|divider_inst|controlPath|stateRegloop:4:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	asdata => \inst3|divider_inst|controlPath|state_in[4]~6_combout\,
	clrn => \ALT_INV_SW[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\);

-- Location: LCCOMB_X111_Y35_N4
\inst3|multiplier_inst|dataPath|reg_B_right_shift|int_enable\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\ = (\inst3|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\) # ((\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # 
-- (\inst3|divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datab => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\,
	combout => \inst3|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\);

-- Location: FF_X114_Y36_N17
\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|reg_B_right_shift|mux_0|muxfinal|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\);

-- Location: LCCOMB_X110_Y35_N20
\inst3|multiplier_inst|controlPath|state_in[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|controlPath|state_in[10]~1_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # (\inst3|divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\,
	combout => \inst3|multiplier_inst|controlPath|state_in[10]~1_combout\);

-- Location: FF_X111_Y35_N23
\inst3|multiplier_inst|controlPath|stateRegloop:10:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	asdata => \inst3|multiplier_inst|controlPath|state_in[10]~1_combout\,
	clrn => \ALT_INV_SW[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|controlPath|stateRegloop:10:state_n|int_q~q\);

-- Location: FF_X111_Y35_N5
\inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	asdata => \inst3|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	clrn => \ALT_INV_SW[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\);

-- Location: LCCOMB_X111_Y36_N30
\inst3|multiplier_inst|controlPath|state_in[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|controlPath|state_in[5]~2_combout\ = (\inst3|multiplier_inst|controlPath|stateRegloop:10:state_n|int_q~q\) # ((\inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\inst3|multiplier_inst|dataPath|beq0~1_combout\) # 
-- (\inst3|multiplier_inst|dataPath|beq0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|beq0~1_combout\,
	datab => \inst3|multiplier_inst|dataPath|beq0~0_combout\,
	datac => \inst3|multiplier_inst|controlPath|stateRegloop:10:state_n|int_q~q\,
	datad => \inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	combout => \inst3|multiplier_inst|controlPath|state_in[5]~2_combout\);

-- Location: LCCOMB_X111_Y35_N18
\inst3|multiplier_inst|controlPath|state_in[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|controlPath|state_in[7]~0_combout\ = (\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\ & ((\inst3|multiplier_inst|controlPath|stateRegloop:10:state_n|int_q~q\) # 
-- (\inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|controlPath|stateRegloop:10:state_n|int_q~q\,
	datab => \inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datac => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\,
	combout => \inst3|multiplier_inst|controlPath|state_in[7]~0_combout\);

-- Location: FF_X111_Y35_N19
\inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|controlPath|state_in[7]~0_combout\,
	clrn => \ALT_INV_SW[15]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\);

-- Location: LCCOMB_X111_Y35_N30
\inst3|multiplier_inst|controlPath|state_in[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|controlPath|state_in[5]~3_combout\ = (\inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\) # ((!\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\ & 
-- \inst3|multiplier_inst|controlPath|state_in[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\,
	datac => \inst3|multiplier_inst|controlPath|state_in[5]~2_combout\,
	datad => \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \inst3|multiplier_inst|controlPath|state_in[5]~3_combout\);

-- Location: FF_X111_Y35_N31
\inst3|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|controlPath|state_in[5]~3_combout\,
	clrn => \ALT_INV_SW[15]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\);

-- Location: LCCOMB_X114_Y36_N4
\inst3|multiplier_inst|dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0_combout\ = (!\inst3|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & ((\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & 
-- (\inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\)) # (!\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\SW[10]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datac => \inst3|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datad => \SW[10]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0_combout\);

-- Location: FF_X114_Y36_N5
\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:7:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X113_Y36_N14
\inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\ = \SW[8]~input_o\ $ (\SW[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[8]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\);

-- Location: LCCOMB_X114_Y36_N30
\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\)) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\,
	datad => \SW[8]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X114_Y36_N24
\inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\ = \SW[9]~input_o\ $ (((\SW[7]~input_o\) # (\SW[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[7]~input_o\,
	datac => \SW[8]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\);

-- Location: LCCOMB_X114_Y36_N6
\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\)) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\SW[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\,
	datad => \SW[9]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X114_Y36_N28
\inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\ = \SW[10]~input_o\ $ (((\SW[9]~input_o\) # ((\SW[8]~input_o\) # (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\);

-- Location: LCCOMB_X114_Y36_N10
\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\)) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\,
	datad => \SW[10]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X114_Y36_N26
\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\)) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datad => \SW[10]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X114_Y36_N2
\inst3|multiplier_inst|dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\SW[8]~input_o\) # ((\SW[7]~input_o\) # (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \SW[8]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X114_Y36_N8
\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0_combout\ = (\SW[10]~input_o\ & (!\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\)) # (!\SW[10]~input_o\ & 
-- ((\inst3|multiplier_inst|dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \SW[10]~input_o\,
	datad => \inst3|multiplier_inst|dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X114_Y36_N12
\inst3|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~0_combout\ = (\SW[9]~input_o\) # ((\SW[8]~input_o\) # ((\SW[7]~input_o\) # (\SW[10]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[9]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[7]~input_o\,
	datad => \SW[10]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X114_Y36_N0
\inst3|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~1_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & \inst3|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X114_Y36_N20
\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0_combout\ = (\SW[10]~input_o\ & (!\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\)) # (!\SW[10]~input_o\ & 
-- ((\inst3|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \SW[10]~input_o\,
	datad => \inst3|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~1_combout\,
	combout => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0_combout\);

-- Location: FF_X114_Y36_N21
\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0_combout\,
	asdata => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \inst3|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \inst3|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\);

-- Location: FF_X114_Y36_N9
\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0_combout\,
	asdata => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \inst3|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \inst3|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\);

-- Location: FF_X114_Y36_N27
\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0_combout\,
	asdata => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \inst3|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \inst3|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\);

-- Location: FF_X114_Y36_N11
\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0_combout\,
	asdata => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \inst3|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \inst3|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\);

-- Location: FF_X114_Y36_N7
\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0_combout\,
	asdata => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \inst3|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \inst3|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\);

-- Location: FF_X114_Y36_N31
\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0_combout\,
	asdata => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \inst3|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \inst3|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\);

-- Location: LCCOMB_X114_Y36_N14
\inst3|multiplier_inst|dataPath|beq0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|beq0~0_combout\ = (\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\) # ((\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\) # 
-- ((\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\) # (\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\,
	datac => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\,
	combout => \inst3|multiplier_inst|dataPath|beq0~0_combout\);

-- Location: LCCOMB_X114_Y36_N22
\inst3|multiplier_inst|dataPath|beq0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|beq0~1_combout\ = (\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\) # ((\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\) # 
-- ((\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\) # (\inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\,
	datac => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\,
	combout => \inst3|multiplier_inst|dataPath|beq0~1_combout\);

-- Location: LCCOMB_X111_Y36_N8
\inst3|multiplier_inst|controlPath|state_in[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|controlPath|state_in\(8) = (\inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (\inst3|divider_inst|dataPath|sign_reg|int_q~q\ & (!\inst3|multiplier_inst|dataPath|beq0~0_combout\ & 
-- !\inst3|multiplier_inst|dataPath|beq0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datab => \inst3|divider_inst|dataPath|sign_reg|int_q~q\,
	datac => \inst3|multiplier_inst|dataPath|beq0~0_combout\,
	datad => \inst3|multiplier_inst|dataPath|beq0~1_combout\,
	combout => \inst3|multiplier_inst|controlPath|state_in\(8));

-- Location: FF_X111_Y35_N15
\inst3|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	asdata => \inst3|multiplier_inst|controlPath|state_in\(8),
	clrn => \ALT_INV_SW[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: LCCOMB_X114_Y34_N28
\inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\ = \SW[11]~input_o\ $ (\SW[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[11]~input_o\,
	datad => \SW[12]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\);

-- Location: LCCOMB_X114_Y34_N16
\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & (\inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\)) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & ((\SW[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\,
	datad => \SW[12]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X114_Y34_N20
\inst3|multiplier_inst|dataPath|reg_A_left_shift|mux_0|mux1|selX0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_A_left_shift|mux_0|mux1|selX0~combout\ = (\SW[11]~input_o\ & !\inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[11]~input_o\,
	datad => \inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	combout => \inst3|multiplier_inst|dataPath|reg_A_left_shift|mux_0|mux1|selX0~combout\);

-- Location: LCCOMB_X109_Y35_N12
\inst3|divider_inst|controlPath|state_in[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|controlPath|state_in\(1) = (\inst3|divider_inst|controlPath|stateReg0|int_q~q\ & \SW[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|divider_inst|controlPath|stateReg0|int_q~q\,
	datad => \SW[14]~input_o\,
	combout => \inst3|divider_inst|controlPath|state_in\(1));

-- Location: FF_X111_Y35_N17
\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	asdata => \inst3|divider_inst|controlPath|state_in\(1),
	clrn => \ALT_INV_SW[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\);

-- Location: LCCOMB_X114_Y34_N6
\inst3|multiplier_inst|dataPath|reg_A_left_shift|int_enable\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\ = (\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\) # ((\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) # 
-- (\inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	combout => \inst3|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\);

-- Location: FF_X114_Y34_N21
\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|reg_A_left_shift|mux_0|mux1|selX0~combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\);

-- Location: FF_X114_Y34_N17
\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0_combout\,
	asdata => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \inst3|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\);

-- Location: LCCOMB_X112_Y34_N4
\inst3|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\ = (\inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\,
	combout => \inst3|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\);

-- Location: LCCOMB_X112_Y34_N28
\inst3|multiplier_inst|dataPath|adder|add_0|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|adder|add_0|o_Sum~combout\ = \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\ $ (((\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\ & 
-- \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\,
	datac => \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	combout => \inst3|multiplier_inst|dataPath|adder|add_0|o_Sum~combout\);

-- Location: LCCOMB_X113_Y34_N4
\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~feeder_combout\ = \inst3|multiplier_inst|dataPath|adder|add_0|o_Sum~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|multiplier_inst|dataPath|adder|add_0|o_Sum~combout\,
	combout => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~feeder_combout\);

-- Location: LCCOMB_X113_Y33_N26
\inst3|multiplier_inst|controlPath|loadP\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|controlPath|loadP~combout\ = (\inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\) # (\inst3|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \inst3|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	combout => \inst3|multiplier_inst|controlPath|loadP~combout\);

-- Location: FF_X113_Y34_N5
\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~feeder_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\);

-- Location: LCCOMB_X112_Y34_N22
\inst3|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\ = \inst3|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\ $ (\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\ $ 
-- (((\inst3|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\ & \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\,
	datab => \inst3|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\,
	datac => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	combout => \inst3|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\);

-- Location: LCCOMB_X112_Y34_N24
\inst3|multiplier_inst|dataPath|mux_P|muxloop:1:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|mux_P|muxloop:1:mux_n|y~0_combout\ = \inst3|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\ $ (((\inst3|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- (\inst3|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\ $ (\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\,
	datab => \inst3|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \inst3|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\,
	datad => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	combout => \inst3|multiplier_inst|dataPath|mux_P|muxloop:1:mux_n|y~0_combout\);

-- Location: LCCOMB_X113_Y34_N0
\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~feeder_combout\ = \inst3|multiplier_inst|dataPath|mux_P|muxloop:1:mux_n|y~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|multiplier_inst|dataPath|mux_P|muxloop:1:mux_n|y~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~feeder_combout\);

-- Location: FF_X113_Y34_N1
\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~feeder_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\);

-- Location: LCCOMB_X112_Y34_N18
\inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\ = (\inst3|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\ & ((\inst3|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\ $ 
-- (!\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\)) # (!\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\))) # (!\inst3|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\ & 
-- ((\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\) # (\inst3|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\ $ (\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\,
	datab => \inst3|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\,
	datac => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	combout => \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\);

-- Location: LCCOMB_X113_Y34_N8
\inst3|multiplier_inst|dataPath|mux_P|muxloop:2:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|mux_P|muxloop:2:mux_n|y~0_combout\ = \inst3|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\ $ (((\inst3|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\,
	datac => \inst3|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\,
	combout => \inst3|multiplier_inst|dataPath|mux_P|muxloop:2:mux_n|y~0_combout\);

-- Location: FF_X113_Y34_N9
\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|mux_P|muxloop:2:mux_n|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: LCCOMB_X113_Y34_N22
\inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~0_combout\ = (\SW[17]~input_o\ & ((\SW[16]~input_o\ & (\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\)) # (!\SW[16]~input_o\ & 
-- ((\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\,
	datac => \SW[17]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X113_Y34_N16
\inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ = (\inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~0_combout\) # ((!\SW[17]~input_o\ & \inst3|adder_subtractor_inst|loop_add:2:addrn|o_Sum~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \inst3|adder_subtractor_inst|loop_add:2:addrn|o_Sum~0_combout\,
	datac => \inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~0_combout\,
	combout => \inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X113_Y36_N2
\inst3|adder_subtractor_inst|loop_add:1:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|adder_subtractor_inst|loop_add:1:addrn|o_Sum~0_combout\ = \SW[8]~input_o\ $ (((\SW[7]~input_o\ & (\SW[11]~input_o\ $ (\SW[16]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[7]~input_o\,
	combout => \inst3|adder_subtractor_inst|loop_add:1:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X114_Y35_N12
\inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0_combout\ = \inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ $ (\inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datac => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	combout => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0_combout\);

-- Location: FF_X114_Y35_N13
\inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\);

-- Location: LCCOMB_X114_Y35_N8
\inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0_combout\ = \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\ $ (((\inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & 
-- \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datac => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\,
	datad => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	combout => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0_combout\);

-- Location: FF_X114_Y35_N9
\inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\);

-- Location: LCCOMB_X110_Y35_N30
\inst3|divider_inst|controlPath|state_in~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|controlPath|state_in~3_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # ((\inst3|divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\) # 
-- (\inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \inst3|divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\,
	datac => \inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	combout => \inst3|divider_inst|controlPath|state_in~3_combout\);

-- Location: LCCOMB_X110_Y35_N26
\inst3|divider_inst|controlPath|state_in[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|controlPath|state_in[5]~4_combout\ = (\inst3|divider_inst|controlPath|state_in~3_combout\ & (((\inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\) # 
-- (!\inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\)) # (!\inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\,
	datab => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\,
	datac => \inst3|divider_inst|controlPath|state_in~3_combout\,
	datad => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	combout => \inst3|divider_inst|controlPath|state_in[5]~4_combout\);

-- Location: FF_X111_Y35_N27
\inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	asdata => \inst3|divider_inst|controlPath|state_in[5]~4_combout\,
	clrn => \ALT_INV_SW[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\);

-- Location: LCCOMB_X114_Y35_N26
\inst3|divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\SW[14]~input_o\)) # (!\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\inst3|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \SW[14]~input_o\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\,
	combout => \inst3|divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~0_combout\);

-- Location: LCCOMB_X111_Y35_N10
\inst3|divider_inst|controlPath|sub\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|controlPath|sub~combout\ = (\inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\) # ((\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) # ((\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # 
-- (\inst3|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datab => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datac => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	combout => \inst3|divider_inst|controlPath|sub~combout\);

-- Location: LCCOMB_X111_Y35_N24
\inst3|divider_inst|controlPath|state_in[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|controlPath|state_in[7]~5_combout\ = \inst3|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\ $ (\inst3|divider_inst|controlPath|sub~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\,
	datab => \inst3|divider_inst|controlPath|sub~combout\,
	combout => \inst3|divider_inst|controlPath|state_in[7]~5_combout\);

-- Location: LCCOMB_X111_Y35_N28
\inst3|divider_inst|controlPath|addSel0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|controlPath|addSel0~combout\ = (\inst3|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\) # (\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	combout => \inst3|divider_inst|controlPath|addSel0~combout\);

-- Location: LCCOMB_X112_Y35_N4
\inst3|divider_inst|dataPath|quotient_reg|mux_0|mux1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|quotient_reg|mux_0|mux1|y~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\) # ((!\inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & 
-- \inst3|divider_inst|dataPath|adder|add_0|o_Sum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datac => \inst3|divider_inst|dataPath|adder|add_0|o_Sum~combout\,
	combout => \inst3|divider_inst|dataPath|quotient_reg|mux_0|mux1|y~0_combout\);

-- Location: LCCOMB_X111_Y35_N22
\inst3|divider_inst|dataPath|quotient_reg|int_enable\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|quotient_reg|int_enable~combout\ = (\inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\) # ((\inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\) # 
-- (\inst3|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	combout => \inst3|divider_inst|dataPath|quotient_reg|int_enable~combout\);

-- Location: FF_X112_Y35_N5
\inst3|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|quotient_reg|mux_0|mux1|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\);

-- Location: LCCOMB_X112_Y35_N30
\inst3|divider_inst|dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\inst3|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\)) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & ((\inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (\inst3|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\)) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\inst3|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \inst3|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\,
	datac => \inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\,
	combout => \inst3|divider_inst|dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2_combout\);

-- Location: FF_X112_Y35_N31
\inst3|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\);

-- Location: LCCOMB_X112_Y35_N8
\inst3|divider_inst|dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (((\inst3|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\)))) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & ((\inst3|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\))) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\inst3|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\,
	datab => \inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datac => \inst3|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \inst3|divider_inst|dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2_combout\);

-- Location: FF_X112_Y35_N9
\inst3|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\);

-- Location: LCCOMB_X112_Y35_N10
\inst3|divider_inst|dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\inst3|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\)) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & ((\inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (\inst3|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\)) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\inst3|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \inst3|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\,
	datac => \inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\,
	combout => \inst3|divider_inst|dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2_combout\);

-- Location: FF_X112_Y35_N11
\inst3|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\);

-- Location: LCCOMB_X111_Y35_N14
\inst3|divider_inst|controlPath|addSel1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|controlPath|addSel1~combout\ = (\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # (\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	combout => \inst3|divider_inst|controlPath|addSel1~combout\);

-- Location: LCCOMB_X112_Y35_N24
\inst3|divider_inst|dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\ = (\inst3|divider_inst|controlPath|addSel0~combout\ & ((\inst3|divider_inst|controlPath|addSel1~combout\ & ((\SW[14]~input_o\))) # 
-- (!\inst3|divider_inst|controlPath|addSel1~combout\ & (\inst3|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|addSel0~combout\,
	datab => \inst3|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\,
	datac => \inst3|divider_inst|controlPath|addSel1~combout\,
	datad => \SW[14]~input_o\,
	combout => \inst3|divider_inst|dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X112_Y35_N26
\inst3|divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ = \inst3|divider_inst|controlPath|sub~combout\ $ (((\inst3|divider_inst|dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\) # 
-- ((\inst3|divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q~q\ & \inst3|divider_inst|controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q~q\,
	datab => \inst3|divider_inst|controlPath|sub~combout\,
	datac => \inst3|divider_inst|controlPath|selZ~0_combout\,
	datad => \inst3|divider_inst|dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X113_Y35_N18
\inst3|divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ = (\inst3|divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ & ((\inst3|divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\) # 
-- ((\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\ & \inst3|divider_inst|controlPath|selZ~0_combout\)))) # (!\inst3|divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ & 
-- (\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\ & (\inst3|divider_inst|controlPath|selZ~0_combout\ & \inst3|divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\,
	datab => \inst3|divider_inst|controlPath|selZ~0_combout\,
	datac => \inst3|divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X113_Y35_N0
\inst3|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ = \inst3|divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ $ (\inst3|divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ $ 
-- (((\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\ & \inst3|divider_inst|controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\,
	datab => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\,
	datac => \inst3|divider_inst|controlPath|selZ~0_combout\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X114_Y35_N4
\inst3|divider_inst|dataPath|remainder_mux|muxloop:4:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|remainder_mux|muxloop:4:mux_n|y~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\SW[14]~input_o\)) # (!\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\inst3|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[14]~input_o\,
	datac => \inst3|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	combout => \inst3|divider_inst|dataPath|remainder_mux|muxloop:4:mux_n|y~0_combout\);

-- Location: FF_X114_Y35_N5
\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|remainder_mux|muxloop:4:mux_n|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\);

-- Location: LCCOMB_X109_Y35_N14
\inst3|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\inst3|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\))) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \SW[7]~input_o\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	combout => \inst3|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X109_Y35_N4
\inst3|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\inst3|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\))) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \SW[8]~input_o\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	combout => \inst3|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~0_combout\);

-- Location: FF_X109_Y35_N5
\inst3|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~0_combout\,
	asdata => \inst3|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~q\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	ena => \inst3|divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~q\);

-- Location: FF_X109_Y35_N15
\inst3|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~0_combout\,
	asdata => \inst3|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~q\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	ena => \inst3|divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~q\);

-- Location: LCCOMB_X109_Y35_N16
\inst3|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\ = (\inst3|divider_inst|controlPath|addSel0~combout\ & ((\inst3|divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\) # 
-- ((\inst3|divider_inst|controlPath|addSel1~combout\)))) # (!\inst3|divider_inst|controlPath|addSel0~combout\ & (((\inst3|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~q\ & !\inst3|divider_inst|controlPath|addSel1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\,
	datab => \inst3|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~q\,
	datac => \inst3|divider_inst|controlPath|addSel0~combout\,
	datad => \inst3|divider_inst|controlPath|addSel1~combout\,
	combout => \inst3|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X109_Y35_N2
\inst3|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\ = (\inst3|divider_inst|controlPath|addSel1~combout\ & ((\inst3|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\ & ((\SW[14]~input_o\))) # 
-- (!\inst3|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\ & (\SW[7]~input_o\)))) # (!\inst3|divider_inst|controlPath|addSel1~combout\ & (((\inst3|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|addSel1~combout\,
	datab => \SW[7]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \inst3|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\,
	combout => \inst3|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X109_Y35_N20
\inst3|divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ = \inst3|divider_inst|controlPath|sub~combout\ $ (\inst3|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|sub~combout\,
	datad => \inst3|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X113_Y35_N16
\inst3|divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ = (\inst3|divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ & ((\inst3|divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\) # 
-- ((\inst3|divider_inst|controlPath|selZ~0_combout\ & \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\)))) # (!\inst3|divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ & (\inst3|divider_inst|controlPath|selZ~0_combout\ & 
-- (\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\ & \inst3|divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|selZ~0_combout\,
	datab => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\,
	datac => \inst3|divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X113_Y35_N2
\inst3|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ = \inst3|divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ $ (\inst3|divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ $ 
-- (((\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\ & \inst3|divider_inst|controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\,
	datab => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\,
	datac => \inst3|divider_inst|controlPath|selZ~0_combout\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X114_Y35_N10
\inst3|divider_inst|dataPath|remainder_mux|muxloop:5:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|remainder_mux|muxloop:5:mux_n|y~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\SW[14]~input_o\)) # (!\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\inst3|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \SW[14]~input_o\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	combout => \inst3|divider_inst|dataPath|remainder_mux|muxloop:5:mux_n|y~0_combout\);

-- Location: FF_X114_Y35_N11
\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|remainder_mux|muxloop:5:mux_n|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\);

-- Location: LCCOMB_X112_Y35_N18
\inst3|divider_inst|dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (\inst3|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\)) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\inst3|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\)) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & ((\inst3|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\,
	datab => \inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datac => \inst3|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \inst3|divider_inst|dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2_combout\);

-- Location: FF_X112_Y35_N19
\inst3|divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\);

-- Location: LCCOMB_X112_Y35_N20
\inst3|divider_inst|dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (((\inst3|divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\)))) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & ((\inst3|divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\))) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\inst3|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	datab => \inst3|divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\,
	datac => \inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \inst3|divider_inst|dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2_combout\);

-- Location: FF_X112_Y35_N21
\inst3|divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\);

-- Location: LCCOMB_X109_Y35_N0
\inst3|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\ = (\inst3|divider_inst|controlPath|addSel1~combout\ & (((\inst3|divider_inst|controlPath|addSel0~combout\)))) # (!\inst3|divider_inst|controlPath|addSel1~combout\ & 
-- ((\inst3|divider_inst|controlPath|addSel0~combout\ & (\inst3|divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\)) # (!\inst3|divider_inst|controlPath|addSel0~combout\ & ((\inst3|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|addSel1~combout\,
	datab => \inst3|divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\,
	datac => \inst3|divider_inst|controlPath|addSel0~combout\,
	datad => \inst3|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~q\,
	combout => \inst3|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X109_Y35_N10
\inst3|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\ = (\inst3|divider_inst|controlPath|addSel1~combout\ & ((\inst3|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\ & (\SW[14]~input_o\)) # 
-- (!\inst3|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\ & ((\SW[8]~input_o\))))) # (!\inst3|divider_inst|controlPath|addSel1~combout\ & (((\inst3|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[14]~input_o\,
	datab => \SW[8]~input_o\,
	datac => \inst3|divider_inst|controlPath|addSel1~combout\,
	datad => \inst3|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\,
	combout => \inst3|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X113_Y35_N8
\inst3|divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ = \inst3|divider_inst|controlPath|sub~combout\ $ (\inst3|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|divider_inst|controlPath|sub~combout\,
	datad => \inst3|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X113_Y35_N10
\inst3|divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ = (\inst3|divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ & ((\inst3|divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\) # 
-- ((\inst3|divider_inst|controlPath|selZ~0_combout\ & \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\)))) # (!\inst3|divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ & (\inst3|divider_inst|controlPath|selZ~0_combout\ & 
-- (\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\ & \inst3|divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|selZ~0_combout\,
	datab => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\,
	datac => \inst3|divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X113_Y35_N4
\inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\ = \inst3|divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ $ (\inst3|divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ $ 
-- (((\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\ & \inst3|divider_inst|controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\,
	datab => \inst3|divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\,
	datac => \inst3|divider_inst|controlPath|selZ~0_combout\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X110_Y35_N12
\inst3|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\))) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \SW[9]~input_o\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	combout => \inst3|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X112_Y35_N2
\inst3|divider_inst|dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (((\inst3|divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\)))) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & ((\inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (\inst3|divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\)) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datac => \inst3|divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	combout => \inst3|divider_inst|dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2_combout\);

-- Location: FF_X112_Y35_N3
\inst3|divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\);

-- Location: LCCOMB_X112_Y35_N12
\inst3|divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~2_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\inst3|divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\)) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & ((\inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (\inst3|divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\)) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\inst3|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \inst3|divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\,
	datac => \inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\,
	combout => \inst3|divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~2_combout\);

-- Location: FF_X112_Y35_N13
\inst3|divider_inst|dataPath|quotient_reg|regloop:7:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~2_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|quotient_reg|regloop:7:bit_n|int_q~q\);

-- Location: LCCOMB_X110_Y35_N18
\inst3|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\ = (\inst3|divider_inst|controlPath|addSel1~combout\ & ((\inst3|divider_inst|controlPath|addSel0~combout\) # ((\SW[10]~input_o\)))) # 
-- (!\inst3|divider_inst|controlPath|addSel1~combout\ & (!\inst3|divider_inst|controlPath|addSel0~combout\ & (\inst3|divider_inst|dataPath|divisor_reg|regloop:7:bit_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|addSel1~combout\,
	datab => \inst3|divider_inst|controlPath|addSel0~combout\,
	datac => \inst3|divider_inst|dataPath|divisor_reg|regloop:7:bit_n|int_q~q\,
	datad => \SW[10]~input_o\,
	combout => \inst3|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X109_Y35_N26
\inst3|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\ = (\inst3|divider_inst|controlPath|addSel0~combout\ & ((\inst3|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\ & (\SW[14]~input_o\)) # 
-- (!\inst3|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\ & ((\inst3|divider_inst|dataPath|quotient_reg|regloop:7:bit_n|int_q~q\))))) # (!\inst3|divider_inst|controlPath|addSel0~combout\ & 
-- (((\inst3|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|addSel0~combout\,
	datab => \SW[14]~input_o\,
	datac => \inst3|divider_inst|dataPath|quotient_reg|regloop:7:bit_n|int_q~q\,
	datad => \inst3|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\,
	combout => \inst3|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X113_Y35_N14
\inst3|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~0_combout\ = \inst3|divider_inst|controlPath|sub~combout\ $ (\inst3|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\ $ 
-- (\inst3|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\ $ (\inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|sub~combout\,
	datab => \inst3|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\,
	datac => \inst3|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	combout => \inst3|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~0_combout\);

-- Location: LCCOMB_X110_Y35_N8
\inst3|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~1_combout\ = (!\inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & ((\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & 
-- ((\inst3|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~0_combout\))) # (!\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\SW[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datab => \SW[10]~input_o\,
	datac => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \inst3|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~0_combout\,
	combout => \inst3|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~1_combout\);

-- Location: FF_X110_Y35_N9
\inst3|divider_inst|dataPath|divisor_reg|regloop:7:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~1_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|divisor_reg|regloop:7:bit_n|int_q~q\);

-- Location: FF_X110_Y35_N13
\inst3|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~0_combout\,
	asdata => \inst3|divider_inst|dataPath|divisor_reg|regloop:7:bit_n|int_q~q\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	ena => \inst3|divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~q\);

-- Location: LCCOMB_X111_Y35_N2
\inst3|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\ = (\inst3|divider_inst|controlPath|addSel0~combout\ & ((\inst3|divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\) # 
-- ((\inst3|divider_inst|controlPath|addSel1~combout\)))) # (!\inst3|divider_inst|controlPath|addSel0~combout\ & (((\inst3|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~q\ & !\inst3|divider_inst|controlPath|addSel1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\,
	datab => \inst3|divider_inst|controlPath|addSel0~combout\,
	datac => \inst3|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~q\,
	datad => \inst3|divider_inst|controlPath|addSel1~combout\,
	combout => \inst3|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X112_Y35_N0
\inst3|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\ = (\inst3|divider_inst|controlPath|addSel1~combout\ & ((\inst3|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\ & ((\SW[14]~input_o\))) # 
-- (!\inst3|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\ & (\SW[9]~input_o\)))) # (!\inst3|divider_inst|controlPath|addSel1~combout\ & (((\inst3|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|addSel1~combout\,
	datab => \SW[9]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \inst3|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\,
	combout => \inst3|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X112_Y35_N22
\inst3|divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ = \inst3|divider_inst|controlPath|sub~combout\ $ (\inst3|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|divider_inst|controlPath|sub~combout\,
	datad => \inst3|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X113_Y35_N24
\inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ = (\inst3|divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ & ((\inst3|divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\) # 
-- ((\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\ & \inst3|divider_inst|controlPath|selZ~0_combout\)))) # (!\inst3|divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ & 
-- (\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\ & (\inst3|divider_inst|controlPath|selZ~0_combout\ & \inst3|divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\,
	datab => \inst3|divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\,
	datac => \inst3|divider_inst|controlPath|selZ~0_combout\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X111_Y35_N8
\inst3|divider_inst|controlPath|state_in[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|controlPath|state_in\(7) = (\inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & (\inst3|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\ $ (\inst3|divider_inst|controlPath|state_in[7]~5_combout\ $ 
-- (\inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datab => \inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datac => \inst3|divider_inst|controlPath|state_in[7]~5_combout\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	combout => \inst3|divider_inst|controlPath|state_in\(7));

-- Location: FF_X111_Y35_N9
\inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|controlPath|state_in\(7),
	clrn => \ALT_INV_SW[15]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\);

-- Location: LCCOMB_X114_Y35_N20
\inst3|divider_inst|controlPath|ldRem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|controlPath|ldRem~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\) # ((\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\) # ((\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) 
-- # (\inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datab => \inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \inst3|divider_inst|controlPath|ldRem~0_combout\);

-- Location: FF_X114_Y35_N27
\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\);

-- Location: LCCOMB_X111_Y35_N16
\inst3|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\ = (!\inst3|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\ & (!\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & 
-- (!\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	datab => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\,
	combout => \inst3|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\);

-- Location: LCCOMB_X113_Y35_N22
\inst3|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\ = \inst3|divider_inst|controlPath|sub~combout\ $ (\inst3|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\ $ 
-- (\inst3|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\ $ (\inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|sub~combout\,
	datab => \inst3|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\,
	datac => \inst3|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X111_Y35_N20
\inst3|divider_inst|controlPath|state_in[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|controlPath|state_in\(6) = (\inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & !\inst3|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\,
	combout => \inst3|divider_inst|controlPath|state_in\(6));

-- Location: FF_X111_Y35_N21
\inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|controlPath|state_in\(6),
	clrn => \ALT_INV_SW[15]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\);

-- Location: LCCOMB_X111_Y35_N0
\inst3|divider_inst|controlPath|shiftQuot\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|controlPath|shiftQuot~combout\ = (\inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\) # (\inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \inst3|divider_inst|controlPath|shiftQuot~combout\);

-- Location: FF_X111_Y35_N1
\inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|controlPath|shiftQuot~combout\,
	clrn => \ALT_INV_SW[15]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\);

-- Location: LCCOMB_X110_Y35_N10
\inst3|divider_inst|controlPath|state_in[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|controlPath|state_in[9]~1_combout\ = (\inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\ & (\inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- (!\inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\ & \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\,
	datab => \inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\,
	datad => \inst3|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	combout => \inst3|divider_inst|controlPath|state_in[9]~1_combout\);

-- Location: LCCOMB_X111_Y35_N6
\inst3|divider_inst|controlPath|state_in[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|controlPath|state_in[9]~2_combout\ = (\inst3|divider_inst|dataPath|sign_reg|int_q~q\ & \inst3|divider_inst|controlPath|state_in[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|sign_reg|int_q~q\,
	datad => \inst3|divider_inst|controlPath|state_in[9]~1_combout\,
	combout => \inst3|divider_inst|controlPath|state_in[9]~2_combout\);

-- Location: FF_X111_Y35_N7
\inst3|divider_inst|controlPath|stateRegloop:9:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|controlPath|state_in[9]~2_combout\,
	clrn => \ALT_INV_SW[15]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\);

-- Location: LCCOMB_X111_Y35_N12
\inst3|divider_inst|controlPath|selZ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|controlPath|selZ~0_combout\ = (!\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (!\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & !\inst3|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	combout => \inst3|divider_inst|controlPath|selZ~0_combout\);

-- Location: LCCOMB_X111_Y35_N26
\inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~2_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # ((\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) # 
-- ((\inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\) # (\inst3|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datac => \inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~2_combout\);

-- Location: LCCOMB_X112_Y35_N6
\inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~3_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & (((!\SW[12]~input_o\)))) # (!\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & 
-- ((\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((!\SW[12]~input_o\))) # (!\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (!\inst3|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\,
	datab => \SW[12]~input_o\,
	datac => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~3_combout\);

-- Location: LCCOMB_X112_Y35_N14
\inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~4_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # ((\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) # 
-- (!\inst3|divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \inst3|divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q~q\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~4_combout\);

-- Location: LCCOMB_X113_Y35_N30
\inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\ = \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~2_combout\ $ (((\inst3|divider_inst|controlPath|addSel0~combout\ & 
-- (!\inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~3_combout\)) # (!\inst3|divider_inst|controlPath|addSel0~combout\ & ((!\inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|addSel0~combout\,
	datab => \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~2_combout\,
	datac => \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~3_combout\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~4_combout\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X113_Y35_N20
\inst3|divider_inst|dataPath|adder|add_0|carryFromBi\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|add_0|carryFromBi~combout\ = (\inst3|divider_inst|controlPath|selZ~0_combout\ & ((\inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & ((\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\) # 
-- (\inst3|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\))) # (!\inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & ((!\inst3|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\) # 
-- (!\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\))))) # (!\inst3|divider_inst|controlPath|selZ~0_combout\ & (((\inst3|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datab => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\,
	datac => \inst3|divider_inst|controlPath|selZ~0_combout\,
	datad => \inst3|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\,
	combout => \inst3|divider_inst|dataPath|adder|add_0|carryFromBi~combout\);

-- Location: LCCOMB_X113_Y35_N6
\inst3|divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ = (\inst3|divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ & ((\inst3|divider_inst|dataPath|adder|add_0|carryFromBoth~combout\) # 
-- ((\inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\) # (!\inst3|divider_inst|dataPath|adder|add_0|carryFromBi~combout\)))) # (!\inst3|divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ & 
-- (\inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\ & ((\inst3|divider_inst|dataPath|adder|add_0|carryFromBoth~combout\) # (!\inst3|divider_inst|dataPath|adder|add_0|carryFromBi~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\,
	datab => \inst3|divider_inst|dataPath|adder|add_0|carryFromBoth~combout\,
	datac => \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\,
	datad => \inst3|divider_inst|dataPath|adder|add_0|carryFromBi~combout\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X110_Y35_N28
\inst3|divider_inst|dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\ = (\inst3|divider_inst|controlPath|addSel0~combout\ & ((\inst3|divider_inst|controlPath|addSel1~combout\ & (\SW[13]~input_o\)) # 
-- (!\inst3|divider_inst|controlPath|addSel1~combout\ & ((\inst3|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[13]~input_o\,
	datab => \inst3|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\,
	datac => \inst3|divider_inst|controlPath|addSel1~combout\,
	datad => \inst3|divider_inst|controlPath|addSel0~combout\,
	combout => \inst3|divider_inst|dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X110_Y35_N24
\inst3|divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ = \inst3|divider_inst|controlPath|sub~combout\ $ (((\inst3|divider_inst|dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\) # 
-- ((\inst3|divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q~q\ & \inst3|divider_inst|controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q~q\,
	datab => \inst3|divider_inst|controlPath|selZ~0_combout\,
	datac => \inst3|divider_inst|controlPath|sub~combout\,
	datad => \inst3|divider_inst|dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X110_Y35_N4
\inst3|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\ = \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ $ (\inst3|divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ $ 
-- (((\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\ & \inst3|divider_inst|controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\,
	datab => \inst3|divider_inst|controlPath|selZ~0_combout\,
	datac => \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\);

-- Location: LCCOMB_X114_Y35_N24
\inst3|divider_inst|dataPath|remainder_mux|muxloop:2:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|remainder_mux|muxloop:2:mux_n|y~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\SW[13]~input_o\)) # (!\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\inst3|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \SW[13]~input_o\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\,
	combout => \inst3|divider_inst|dataPath|remainder_mux|muxloop:2:mux_n|y~0_combout\);

-- Location: FF_X114_Y35_N25
\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|remainder_mux|muxloop:2:mux_n|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\);

-- Location: LCCOMB_X113_Y35_N12
\inst3|divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ = (\inst3|divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ & ((\inst3|divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\) # 
-- ((\inst3|divider_inst|controlPath|selZ~0_combout\ & \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\)))) # (!\inst3|divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ & (\inst3|divider_inst|controlPath|selZ~0_combout\ & 
-- (\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\ & \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|selZ~0_combout\,
	datab => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\,
	datac => \inst3|divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X114_Y35_N18
\inst3|divider_inst|dataPath|remainder_mux|muxloop:3:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|remainder_mux|muxloop:3:mux_n|y~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\SW[14]~input_o\)) # (!\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\inst3|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \SW[14]~input_o\,
	datad => \inst3|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\,
	combout => \inst3|divider_inst|dataPath|remainder_mux|muxloop:3:mux_n|y~0_combout\);

-- Location: FF_X114_Y35_N19
\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|remainder_mux|muxloop:3:mux_n|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\);

-- Location: LCCOMB_X112_Y35_N16
\inst3|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\ = \inst3|divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ $ (\inst3|divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ $ 
-- (((\inst3|divider_inst|controlPath|selZ~0_combout\ & \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\,
	datab => \inst3|divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\,
	datac => \inst3|divider_inst|controlPath|selZ~0_combout\,
	datad => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\);

-- Location: LCCOMB_X110_Y35_N14
\inst3|divider_inst|dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (((\inst3|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~q\)))) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\inst3|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datab => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \inst3|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\,
	datad => \inst3|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~q\,
	combout => \inst3|divider_inst|dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0_combout\);

-- Location: FF_X110_Y35_N15
\inst3|divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q~q\);

-- Location: LCCOMB_X110_Y35_N22
\inst3|divider_inst|dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (\inst3|divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q~q\)) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (((\inst3|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\ & \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datab => \inst3|divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q~q\,
	datac => \inst3|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	combout => \inst3|divider_inst|dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0_combout\);

-- Location: FF_X110_Y35_N23
\inst3|divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q~q\);

-- Location: LCCOMB_X110_Y35_N6
\inst3|divider_inst|dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (((\inst3|divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q~q\)))) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\inst3|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\,
	datac => \inst3|divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q~q\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	combout => \inst3|divider_inst|dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0_combout\);

-- Location: FF_X110_Y35_N7
\inst3|divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q~q\);

-- Location: LCCOMB_X110_Y35_N0
\inst3|divider_inst|dataPath|divisor_reg|mux_0|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|divisor_reg|mux_0|muxfinal|y~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (\inst3|divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q~q\)) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (((\inst3|divider_inst|dataPath|adder|add_0|o_Sum~combout\ & \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datab => \inst3|divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q~q\,
	datac => \inst3|divider_inst|dataPath|adder|add_0|o_Sum~combout\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	combout => \inst3|divider_inst|dataPath|divisor_reg|mux_0|muxfinal|y~0_combout\);

-- Location: FF_X110_Y35_N1
\inst3|divider_inst|dataPath|divisor_reg|regloop:0:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|divisor_reg|mux_0|muxfinal|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|divisor_reg|regloop:0:bit_n|int_q~q\);

-- Location: LCCOMB_X112_Y35_N28
\inst3|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & (\SW[11]~input_o\)) # (!\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & 
-- ((\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\SW[11]~input_o\)) # (!\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\inst3|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \inst3|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\,
	datac => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	combout => \inst3|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X113_Y35_N28
\inst3|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\ = (\inst3|divider_inst|controlPath|addSel0~combout\ & (((\inst3|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\)))) # 
-- (!\inst3|divider_inst|controlPath|addSel0~combout\ & (\inst3|divider_inst|dataPath|divisor_reg|regloop:0:bit_n|int_q~q\ & (!\inst3|divider_inst|controlPath|addSel1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|addSel0~combout\,
	datab => \inst3|divider_inst|dataPath|divisor_reg|regloop:0:bit_n|int_q~q\,
	datac => \inst3|divider_inst|controlPath|addSel1~combout\,
	datad => \inst3|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\,
	combout => \inst3|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X114_Y35_N16
\inst3|divider_inst|dataPath|adder|add_0|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|add_0|o_Sum~combout\ = \inst3|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\ $ (((\inst3|divider_inst|controlPath|selZ~0_combout\ & 
-- \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|selZ~0_combout\,
	datab => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\,
	datad => \inst3|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\,
	combout => \inst3|divider_inst|dataPath|adder|add_0|o_Sum~combout\);

-- Location: LCCOMB_X114_Y35_N28
\inst3|divider_inst|dataPath|remainder_mux|muxloop:0:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|remainder_mux|muxloop:0:mux_n|y~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\SW[11]~input_o\)) # (!\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\inst3|divider_inst|dataPath|adder|add_0|o_Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \SW[11]~input_o\,
	datad => \inst3|divider_inst|dataPath|adder|add_0|o_Sum~combout\,
	combout => \inst3|divider_inst|dataPath|remainder_mux|muxloop:0:mux_n|y~0_combout\);

-- Location: FF_X114_Y35_N29
\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|remainder_mux|muxloop:0:mux_n|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\);

-- Location: LCCOMB_X114_Y35_N0
\inst3|divider_inst|dataPath|adder|add_0|carryFromBoth\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|add_0|carryFromBoth~combout\ = (\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\ & (\inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & \inst3|divider_inst|controlPath|selZ~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\,
	datac => \inst3|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datad => \inst3|divider_inst|controlPath|selZ~0_combout\,
	combout => \inst3|divider_inst|dataPath|adder|add_0|carryFromBoth~combout\);

-- Location: LCCOMB_X114_Y35_N30
\inst3|divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ = (!\inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\ & 
-- (!\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & !\inst3|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\,
	datac => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \inst3|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	combout => \inst3|divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\);

-- Location: LCCOMB_X114_Y35_N22
\inst3|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\ = \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\ $ (\inst3|divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ $ 
-- (((\inst3|divider_inst|dataPath|adder|add_0|carryFromBoth~combout\) # (!\inst3|divider_inst|dataPath|adder|add_0|carryFromBi~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\,
	datab => \inst3|divider_inst|dataPath|adder|add_0|carryFromBoth~combout\,
	datac => \inst3|divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\,
	datad => \inst3|divider_inst|dataPath|adder|add_0|carryFromBi~combout\,
	combout => \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\);

-- Location: LCCOMB_X114_Y35_N14
\inst3|divider_inst|dataPath|remainder_mux|muxloop:1:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|divider_inst|dataPath|remainder_mux|muxloop:1:mux_n|y~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & ((\SW[12]~input_o\))) # (!\inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- (\inst3|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \inst3|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\,
	datad => \SW[12]~input_o\,
	combout => \inst3|divider_inst|dataPath|remainder_mux|muxloop:1:mux_n|y~0_combout\);

-- Location: FF_X114_Y35_N15
\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|divider_inst|dataPath|remainder_mux|muxloop:1:mux_n|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\);

-- Location: LCCOMB_X113_Y34_N10
\inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~0_combout\ = (\SW[17]~input_o\ & ((\SW[16]~input_o\ & ((\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\))) # (!\SW[16]~input_o\ & 
-- (\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\,
	datab => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\,
	datac => \SW[17]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X113_Y36_N12
\inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ = (\inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~0_combout\) # ((!\SW[17]~input_o\ & (\SW[12]~input_o\ $ (\inst3|adder_subtractor_inst|loop_add:1:addrn|o_Sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[12]~input_o\,
	datab => \inst3|adder_subtractor_inst|loop_add:1:addrn|o_Sum~0_combout\,
	datac => \inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~0_combout\,
	datad => \SW[17]~input_o\,
	combout => \inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X113_Y34_N6
\inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~0_combout\ = (\SW[17]~input_o\ & ((\SW[16]~input_o\ & (\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\)) # (!\SW[16]~input_o\ & 
-- ((\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	datac => \SW[17]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X113_Y36_N16
\inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ = (\inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~0_combout\) # ((!\SW[17]~input_o\ & (\SW[11]~input_o\ $ (\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[17]~input_o\,
	datac => \inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~0_combout\,
	datad => \SW[7]~input_o\,
	combout => \inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X114_Y34_N2
\inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\ = \SW[14]~input_o\ $ (((\SW[11]~input_o\) # ((\SW[12]~input_o\) # (\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\);

-- Location: LCCOMB_X114_Y34_N26
\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & (\inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\)) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & ((\SW[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\,
	datad => \SW[14]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X114_Y34_N24
\inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\ = \SW[13]~input_o\ $ (((\SW[12]~input_o\) # (\SW[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[12]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\);

-- Location: LCCOMB_X114_Y34_N4
\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & (\inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\)) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & ((\SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\,
	datad => \SW[13]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0_combout\);

-- Location: FF_X114_Y34_N5
\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0_combout\,
	asdata => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \inst3|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\);

-- Location: FF_X114_Y34_N27
\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0_combout\,
	asdata => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \inst3|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\);

-- Location: LCCOMB_X112_Y34_N6
\inst3|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\ = (\inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\,
	combout => \inst3|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\);

-- Location: LCCOMB_X112_Y34_N10
\inst3|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ = (\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\ & ((\inst3|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\) # 
-- ((\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\ & \inst3|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\)))) # (!\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\ & 
-- (\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\ & (\inst3|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\ & \inst3|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\,
	datac => \inst3|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\,
	datad => \inst3|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\,
	combout => \inst3|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X112_Y34_N20
\inst3|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ = (\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\ & ((\inst3|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\) # 
-- ((\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\ & \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\)))) # (!\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\ & 
-- (\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\ & (\inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \inst3|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\,
	datac => \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X112_Y34_N2
\inst3|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\ = \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\ $ (\inst3|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ $ 
-- (((\inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\,
	datab => \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X113_Y34_N30
\inst3|multiplier_inst|dataPath|mux_P|muxloop:3:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|mux_P|muxloop:3:mux_n|y~0_combout\ = \inst3|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\ $ (((\inst3|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- ((\inst3|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\) # (\inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\,
	datab => \inst3|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\,
	datac => \inst3|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\,
	combout => \inst3|multiplier_inst|dataPath|mux_P|muxloop:3:mux_n|y~0_combout\);

-- Location: FF_X113_Y34_N31
\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|mux_P|muxloop:3:mux_n|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\);

-- Location: LCCOMB_X113_Y34_N12
\inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~0_combout\ = (\SW[17]~input_o\ & ((\SW[16]~input_o\ & (\inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\)) # (!\SW[16]~input_o\ & 
-- ((\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\))))) # (!\SW[17]~input_o\ & (((\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\,
	datac => \SW[17]~input_o\,
	datad => \SW[16]~input_o\,
	combout => \inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X113_Y34_N26
\inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\ = \inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~0_combout\ $ (((!\SW[17]~input_o\ & (\inst3|adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\ $ 
-- (\inst3|divider_inst|dataPath|int_sign_in~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\,
	datab => \inst3|divider_inst|dataPath|int_sign_in~0_combout\,
	datac => \SW[17]~input_o\,
	datad => \inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~0_combout\,
	combout => \inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X114_Y47_N12
\inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (\inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ & ((\inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\) # (\inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ $ (\inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\)))) 
-- # (!\inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ & ((\inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\) # (\inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ $ (\inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\,
	datab => \inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\,
	datac => \inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\,
	datad => \inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\,
	combout => \inst|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y47_N10
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (\inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ $ (\inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\)))) # 
-- (!\inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & (!\inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\ & ((\inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\) # (\inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\,
	datab => \inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\,
	datac => \inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\,
	datad => \inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\,
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y47_N16
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (\inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ & (((\inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ & !\inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\)))) # 
-- (!\inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ & ((\inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & ((!\inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\))) # (!\inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & 
-- (\inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\,
	datab => \inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\,
	datac => \inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\,
	datad => \inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\,
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y47_N26
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ & ((\inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\)) # (!\inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & 
-- (!\inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ & \inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\)))) # (!\inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ & (!\inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\ & 
-- (\inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ $ (\inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\,
	datab => \inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\,
	datac => \inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\,
	datad => \inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\,
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y47_N8
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\ & ((\inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\) # 
-- (!\inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\)))) # (!\inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ & (!\inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ & 
-- !\inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\,
	datab => \inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\,
	datac => \inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\,
	datad => \inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\,
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y47_N22
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (\inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ & ((\inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ & ((\inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\))) # (!\inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ 
-- & (\inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\)))) # (!\inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ $ 
-- (\inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\,
	datab => \inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\,
	datac => \inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\,
	datad => \inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\,
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y47_N28
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & (!\inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ $ (!\inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\)))) 
-- # (!\inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ $ (!\inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\,
	datab => \inst3|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\,
	datac => \inst3|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\,
	datad => \inst3|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\,
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y34_N12
\inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\ = (!\SW[14]~input_o\ & ((\SW[11]~input_o\) # ((\SW[12]~input_o\) # (\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\);

-- Location: LCCOMB_X114_Y34_N30
\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & ((\inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\))) # 
-- (!\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & (\SW[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \SW[14]~input_o\,
	datad => \inst3|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\,
	combout => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0_combout\);

-- Location: FF_X114_Y34_N31
\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0_combout\,
	asdata => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \inst3|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\);

-- Location: LCCOMB_X112_Y34_N12
\inst3|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ = (\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\ & ((\inst3|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\) # 
-- ((\inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\)))) # (!\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\ & 
-- (\inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\ & \inst3|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\,
	datab => \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X113_Y33_N28
\inst3|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ = \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\ $ (\inst3|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ $ 
-- (((\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\ & \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\,
	datac => \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X112_Y34_N8
\inst3|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\ = \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\ $ (\inst3|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ $ 
-- (((\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\ & \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\,
	datab => \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X112_Y34_N30
\inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\ = (\inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\) # 
-- ((\inst3|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\) # (\inst3|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\,
	datac => \inst3|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\,
	datad => \inst3|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\);

-- Location: LCCOMB_X114_Y34_N0
\inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & ((\SW[11]~input_o\) # ((\SW[12]~input_o\) # (\SW[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \SW[13]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\);

-- Location: LCCOMB_X114_Y34_N8
\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0_combout\ = (\SW[14]~input_o\ & (!\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\)) # (!\SW[14]~input_o\ & 
-- ((\inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\,
	datad => \SW[14]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0_combout\);

-- Location: FF_X114_Y34_N9
\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0_combout\,
	asdata => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \inst3|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\);

-- Location: LCCOMB_X113_Y33_N24
\inst3|multiplier_inst|dataPath|mux_P|muxloop:5:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|mux_P|muxloop:5:mux_n|y~0_combout\ = \inst3|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ $ (((\inst3|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- ((\inst3|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\) # (\inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datac => \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\,
	datad => \inst3|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|mux_P|muxloop:5:mux_n|y~0_combout\);

-- Location: FF_X113_Y33_N25
\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|mux_P|muxloop:5:mux_n|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\);

-- Location: LCCOMB_X113_Y33_N10
\inst3|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ = (\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\ & ((\inst3|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\) # 
-- ((\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\ & \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\)))) # (!\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\ & 
-- (\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\ & (\inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \inst3|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\,
	datac => \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X113_Y33_N0
\inst3|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ = \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\ $ (\inst3|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ $ 
-- (((\inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\,
	datac => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X113_Y33_N22
\inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:5:addrn|carryFromBi\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:5:addrn|carryFromBi~combout\ = (\inst3|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\) # 
-- ((\inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\) # (\inst3|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datac => \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\,
	datad => \inst3|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:5:addrn|carryFromBi~combout\);

-- Location: LCCOMB_X114_Y34_N10
\inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\ = (\SW[11]~input_o\) # ((\SW[12]~input_o\) # ((\SW[14]~input_o\) # (\SW[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[11]~input_o\,
	datab => \SW[12]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \SW[13]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\);

-- Location: LCCOMB_X114_Y34_N18
\inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~1_combout\ = (\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & \inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~1_combout\);

-- Location: LCCOMB_X114_Y34_N14
\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0_combout\ = (\SW[14]~input_o\ & (!\inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\)) # (!\SW[14]~input_o\ & 
-- ((\inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~1_combout\,
	datad => \SW[14]~input_o\,
	combout => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0_combout\);

-- Location: FF_X114_Y34_N15
\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0_combout\,
	asdata => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \inst3|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \inst3|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\);

-- Location: LCCOMB_X113_Y33_N2
\inst3|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ = (\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\ & ((\inst3|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\) # 
-- ((\inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\)))) # (!\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\ & 
-- (\inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\ & \inst3|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\,
	datac => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X113_Y33_N12
\inst3|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\ = \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\ $ (\inst3|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ $ 
-- (((\inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\ & \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\,
	datab => \inst3|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\,
	datac => \inst3|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \inst3|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X113_Y33_N6
\inst3|multiplier_inst|dataPath|mux_P|muxloop:6:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|multiplier_inst|dataPath|mux_P|muxloop:6:mux_n|y~0_combout\ = \inst3|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\ $ (((\inst3|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:5:addrn|carryFromBi~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \inst3|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:5:addrn|carryFromBi~combout\,
	datad => \inst3|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	combout => \inst3|multiplier_inst|dataPath|mux_P|muxloop:6:mux_n|y~0_combout\);

-- Location: FF_X113_Y33_N7
\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[3]~input_o\,
	d => \inst3|multiplier_inst|dataPath|mux_P|muxloop:6:mux_n|y~0_combout\,
	clrn => \inst3|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \inst3|multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\);

-- Location: LCCOMB_X114_Y33_N6
\inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~0_combout\ = (\SW[17]~input_o\ & ((\SW[16]~input_o\ & (\inst3|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\)) # (!\SW[16]~input_o\ & 
-- ((\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[16]~input_o\,
	datab => \inst3|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\,
	datac => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\,
	datad => \SW[17]~input_o\,
	combout => \inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X114_Y33_N12
\inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ = (\inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~0_combout\) # ((!\inst3|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\ & (!\SW[17]~input_o\ & \SW[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\,
	datab => \SW[17]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~0_combout\,
	combout => \inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X114_Y32_N14
\inst3|adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\ = (\inst3|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\ & ((\SW[13]~input_o\) # (\SW[16]~input_o\ $ (\SW[9]~input_o\)))) # 
-- (!\inst3|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\ & (\SW[13]~input_o\ & (\SW[16]~input_o\ $ (\SW[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\,
	datab => \SW[13]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \inst3|adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X114_Y32_N10
\inst3|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\ = (\inst3|adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\ & ((\SW[14]~input_o\) # (\SW[10]~input_o\ $ (\SW[16]~input_o\)))) # 
-- (!\inst3|adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\ & (\SW[14]~input_o\ & (\SW[10]~input_o\ $ (\SW[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[10]~input_o\,
	datab => \inst3|adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\,
	datac => \SW[16]~input_o\,
	datad => \SW[14]~input_o\,
	combout => \inst3|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X114_Y33_N16
\inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ = (\inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~0_combout\) # ((!\SW[17]~input_o\ & (\SW[16]~input_o\ & !\inst3|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~0_combout\,
	datab => \SW[17]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \inst3|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X114_Y33_N18
\inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~0_combout\ = (\SW[17]~input_o\ & ((\SW[16]~input_o\ & ((\inst3|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\))) # (!\SW[16]~input_o\ & 
-- (\inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\,
	datab => \inst3|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\,
	datac => \SW[16]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X114_Y33_N8
\inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ = (\inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~0_combout\) # ((!\inst3|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\ & (\SW[16]~input_o\ & !\SW[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\,
	datab => \inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~0_combout\,
	datac => \SW[16]~input_o\,
	datad => \SW[17]~input_o\,
	combout => \inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X114_Y33_N0
\inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\ = (\inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~0_combout\) # ((!\SW[17]~input_o\ & (\SW[16]~input_o\ $ (\inst3|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~0_combout\,
	datab => \SW[17]~input_o\,
	datac => \SW[16]~input_o\,
	datad => \inst3|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X114_Y33_N30
\inst2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\ & ((\inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\) # (\inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ $ 
-- (\inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\)))) # (!\inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\ & ((\inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\) # (\inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ $ 
-- (\inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\,
	datab => \inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\,
	datac => \inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datad => \inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\,
	combout => \inst2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y33_N24
\inst2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ $ (\inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\)))) 
-- # (!\inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & (!\inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ & ((\inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\) # (\inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\,
	datab => \inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\,
	datac => \inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datad => \inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\,
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y33_N10
\inst2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ & (((!\inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ & \inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\)))) # 
-- (!\inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ & ((\inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & (!\inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\)) # (!\inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & 
-- ((\inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\,
	datab => \inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\,
	datac => \inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datad => \inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\,
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y33_N28
\inst2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ & ((\inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & ((\inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\))) # 
-- (!\inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ & !\inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\)))) # (!\inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ & 
-- (!\inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ $ (\inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\,
	datab => \inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\,
	datac => \inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datad => \inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\,
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y33_N14
\inst2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ & ((\inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\) # 
-- (!\inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\)))) # (!\inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ & (!\inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ & 
-- !\inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\,
	datab => \inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\,
	datac => \inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datad => \inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\,
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y33_N20
\inst2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ & ((\inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\ & ((\inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\))) # 
-- (!\inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\)))) # (!\inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & 
-- (\inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ $ (\inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\,
	datab => \inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\,
	datac => \inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datad => \inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\,
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y33_N2
\inst2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & (!\inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ $ 
-- (!\inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\)))) # (!\inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\ & (\inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ $ 
-- (!\inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\,
	datab => \inst3|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\,
	datac => \inst3|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datad => \inst3|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\,
	combout => \inst2|Mux0~0_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;
END structure;



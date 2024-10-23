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

-- DATE "10/23/2024 17:29:44"

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

ENTITY 	bcdtoplevel IS
    PORT (
	GClock : IN std_logic;
	GReset : IN std_logic;
	OperandA : IN std_logic_vector(3 DOWNTO 0);
	OperandB : IN std_logic_vector(3 DOWNTO 0);
	OperationSelect : IN std_logic_vector(1 DOWNTO 0);
	BCDOutA : OUT std_logic_vector(6 DOWNTO 0);
	BCDOutB : OUT std_logic_vector(6 DOWNTO 0)
	);
END bcdtoplevel;

-- Design Ports Information
-- BCDOutA[0]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDOutA[1]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDOutA[2]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDOutA[3]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDOutA[4]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDOutA[5]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDOutA[6]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDOutB[0]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDOutB[1]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDOutB[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDOutB[3]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDOutB[4]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDOutB[5]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCDOutB[6]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperationSelect[1]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperationSelect[0]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandA[0]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandB[0]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandA[1]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandB[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandA[2]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandB[2]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandA[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandB[3]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GClock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GReset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bcdtoplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_GClock : std_logic;
SIGNAL ww_GReset : std_logic;
SIGNAL ww_OperandA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OperandB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OperationSelect : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_BCDOutA : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_BCDOutB : std_logic_vector(6 DOWNTO 0);
SIGNAL \GReset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GClock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALU_Inst|adder_subtractor_inst|loop_add:2:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:3:mux_n|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|beq0~1_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:5:mux_n|y~0_combout\ : std_logic;
SIGNAL \OperandB[2]~input_o\ : std_logic;
SIGNAL \GClock~input_o\ : std_logic;
SIGNAL \GClock~inputclkctrl_outclk\ : std_logic;
SIGNAL \BCDOutA[0]~output_o\ : std_logic;
SIGNAL \BCDOutA[1]~output_o\ : std_logic;
SIGNAL \BCDOutA[2]~output_o\ : std_logic;
SIGNAL \BCDOutA[3]~output_o\ : std_logic;
SIGNAL \BCDOutA[4]~output_o\ : std_logic;
SIGNAL \BCDOutA[5]~output_o\ : std_logic;
SIGNAL \BCDOutA[6]~output_o\ : std_logic;
SIGNAL \BCDOutB[0]~output_o\ : std_logic;
SIGNAL \BCDOutB[1]~output_o\ : std_logic;
SIGNAL \BCDOutB[2]~output_o\ : std_logic;
SIGNAL \BCDOutB[3]~output_o\ : std_logic;
SIGNAL \BCDOutB[4]~output_o\ : std_logic;
SIGNAL \BCDOutB[5]~output_o\ : std_logic;
SIGNAL \BCDOutB[6]~output_o\ : std_logic;
SIGNAL \OperationSelect[0]~input_o\ : std_logic;
SIGNAL \OperationSelect[1]~input_o\ : std_logic;
SIGNAL \OperandB[1]~input_o\ : std_logic;
SIGNAL \OperandB[0]~input_o\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \GReset~input_o\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|stateReg0|int_q~feeder_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|stateReg0|int_q~q\ : std_logic;
SIGNAL \GReset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ : std_logic;
SIGNAL \OperandA[3]~input_o\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|state_in[3]~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \OperandB[3]~input_o\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|state_in[4]~6_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|controlPath|state_in[10]~1_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|controlPath|stateRegloop:10:state_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|controlPath|state_in[5]~2_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|mux_0|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|controlPath|state_in[7]~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~feeder_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|controlPath|state_in[5]~3_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|beq0~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|int_sign_in~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|sign_reg|int_q~feeder_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|sign_reg|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ : std_logic;
SIGNAL \OperandA[0]~input_o\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|mux_0|mux1|selX0~combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|adder|add_0|o_Sum~combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|controlPath|loadP~combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\ : std_logic;
SIGNAL \OperandA[1]~input_o\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:1:mux_n|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:2:mux_n|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \OperandA[2]~input_o\ : std_logic;
SIGNAL \ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\ : std_logic;
SIGNAL \ALU_Inst|adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:4:mux_n|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|state_in[9]~1_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|state_in[9]~2_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|sub~combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|state_in[7]~5_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|addSel1~combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|quotient_reg|mux_0|mux1|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|quotient_reg|int_enable~combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|selZ~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|addSel0~combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:1:mux_n|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~2_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~3_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~4_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|add_0|carryFromBi~combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~1_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:7:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:6:mux_n|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~2_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:7:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|shiftQuot~combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|state_in~3_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|state_in[5]~4_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|ldRem~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:2:mux_n|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|add_0|carryFromBoth~combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|divisor_reg|mux_0|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:0:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|adder|add_0|o_Sum~combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:0:mux_n|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \bcd_decoder_A|Mux0~0_combout\ : std_logic;
SIGNAL \bcd_decoder_A|Mux1~0_combout\ : std_logic;
SIGNAL \bcd_decoder_A|Mux2~0_combout\ : std_logic;
SIGNAL \bcd_decoder_A|Mux3~0_combout\ : std_logic;
SIGNAL \bcd_decoder_A|Mux4~0_combout\ : std_logic;
SIGNAL \bcd_decoder_A|Mux5~0_combout\ : std_logic;
SIGNAL \bcd_decoder_A|Mux6~0_combout\ : std_logic;
SIGNAL \ALU_Inst|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:3:mux_n|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:4:mux_n|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:5:mux_n|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:5:addrn|carryFromBi~combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:6:mux_n|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~1_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:7:mux_n|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\ : std_logic;
SIGNAL \ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \bcd_decoder_B|Mux0~0_combout\ : std_logic;
SIGNAL \bcd_decoder_B|Mux1~0_combout\ : std_logic;
SIGNAL \bcd_decoder_B|Mux2~0_combout\ : std_logic;
SIGNAL \bcd_decoder_B|Mux3~0_combout\ : std_logic;
SIGNAL \bcd_decoder_B|Mux4~0_combout\ : std_logic;
SIGNAL \bcd_decoder_B|Mux5~0_combout\ : std_logic;
SIGNAL \bcd_decoder_B|Mux6~0_combout\ : std_logic;
SIGNAL \ALU_Inst|multiplier_inst|controlPath|state_in\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALU_Inst|divider_inst|controlPath|state_in\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_GReset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\ : std_logic;
SIGNAL \bcd_decoder_B|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \bcd_decoder_A|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_GClock <= GClock;
ww_GReset <= GReset;
ww_OperandA <= OperandA;
ww_OperandB <= OperandB;
ww_OperationSelect <= OperationSelect;
BCDOutA <= ww_BCDOutA;
BCDOutB <= ww_BCDOutB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\GReset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GReset~input_o\);

\GClock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GClock~input_o\);
\ALT_INV_GReset~inputclkctrl_outclk\ <= NOT \GReset~inputclkctrl_outclk\;
\ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\ <= NOT \ALU_Inst|divider_inst|controlPath|stateReg0|int_q~q\;
\bcd_decoder_B|ALT_INV_Mux6~0_combout\ <= NOT \bcd_decoder_B|Mux6~0_combout\;
\bcd_decoder_A|ALT_INV_Mux6~0_combout\ <= NOT \bcd_decoder_A|Mux6~0_combout\;

-- Location: LCCOMB_X45_Y1_N10
\ALU_Inst|adder_subtractor_inst|loop_add:2:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|adder_subtractor_inst|loop_add:2:addrn|o_Sum~0_combout\ = \OperandB[2]~input_o\ $ (\OperationSelect[0]~input_o\ $ (\OperandA[2]~input_o\ $ (\ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[2]~input_o\,
	datab => \OperationSelect[0]~input_o\,
	datac => \OperandA[2]~input_o\,
	datad => \ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\,
	combout => \ALU_Inst|adder_subtractor_inst|loop_add:2:addrn|o_Sum~0_combout\);

-- Location: FF_X46_Y2_N15
\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:3:mux_n|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\);

-- Location: LCCOMB_X46_Y1_N28
\ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~0_combout\ = (\OperationSelect[0]~input_o\ & (((\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\) # (!\OperationSelect[1]~input_o\)))) # (!\OperationSelect[0]~input_o\ & 
-- (\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\ & ((\OperationSelect[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperationSelect[0]~input_o\,
	datab => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\,
	datac => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\,
	datad => \OperationSelect[1]~input_o\,
	combout => \ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X46_Y2_N14
\ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:3:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:3:mux_n|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\OperandA[3]~input_o\)) # (!\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \OperandA[3]~input_o\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\,
	combout => \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:3:mux_n|y~0_combout\);

-- Location: FF_X46_Y2_N27
\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:5:mux_n|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\);

-- Location: LCCOMB_X47_Y1_N20
\ALU_Inst|multiplier_inst|dataPath|beq0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|beq0~1_combout\ = (\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\) # ((\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\) # 
-- ((\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\) # (\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\,
	datab => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\,
	combout => \ALU_Inst|multiplier_inst|dataPath|beq0~1_combout\);

-- Location: LCCOMB_X46_Y2_N26
\ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:5:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:5:mux_n|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\OperandA[3]~input_o\)) # (!\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \OperandA[3]~input_o\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:5:mux_n|y~0_combout\);

-- Location: IOIBUF_X42_Y0_N15
\OperandB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandB(2),
	o => \OperandB[2]~input_o\);

-- Location: IOIBUF_X0_Y36_N8
\GClock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GClock,
	o => \GClock~input_o\);

-- Location: CLKCTRL_G2
\GClock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GClock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GClock~inputclkctrl_outclk\);

-- Location: IOOBUF_X56_Y0_N23
\BCDOutA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_decoder_A|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \BCDOutA[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\BCDOutA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_decoder_A|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \BCDOutA[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\BCDOutA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_decoder_A|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \BCDOutA[2]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\BCDOutA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_decoder_A|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \BCDOutA[3]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\BCDOutA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_decoder_A|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \BCDOutA[4]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\BCDOutA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_decoder_A|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \BCDOutA[5]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\BCDOutA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_decoder_A|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \BCDOutA[6]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\BCDOutB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_decoder_B|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \BCDOutB[0]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\BCDOutB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_decoder_B|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \BCDOutB[1]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\BCDOutB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_decoder_B|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \BCDOutB[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\BCDOutB[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_decoder_B|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \BCDOutB[3]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\BCDOutB[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_decoder_B|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \BCDOutB[4]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\BCDOutB[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_decoder_B|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \BCDOutB[5]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\BCDOutB[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_decoder_B|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \BCDOutB[6]~output_o\);

-- Location: IOIBUF_X40_Y0_N22
\OperationSelect[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperationSelect(0),
	o => \OperationSelect[0]~input_o\);

-- Location: IOIBUF_X42_Y0_N22
\OperationSelect[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperationSelect(1),
	o => \OperationSelect[1]~input_o\);

-- Location: IOIBUF_X47_Y0_N8
\OperandB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandB(1),
	o => \OperandB[1]~input_o\);

-- Location: IOIBUF_X47_Y0_N1
\OperandB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandB(0),
	o => \OperandB[0]~input_o\);

-- Location: LCCOMB_X47_Y1_N8
\ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\ = \OperandB[0]~input_o\ $ (\OperandB[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OperandB[0]~input_o\,
	datad => \OperandB[1]~input_o\,
	combout => \ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\);

-- Location: LCCOMB_X47_Y1_N28
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\OperandB[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \OperandB[1]~input_o\,
	datad => \ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0_combout\);

-- Location: IOIBUF_X0_Y36_N15
\GReset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_GReset,
	o => \GReset~input_o\);

-- Location: LCCOMB_X47_Y1_N0
\ALU_Inst|divider_inst|controlPath|stateReg0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|controlPath|stateReg0|int_q~feeder_combout\ = \GReset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GReset~input_o\,
	combout => \ALU_Inst|divider_inst|controlPath|stateReg0|int_q~feeder_combout\);

-- Location: FF_X47_Y1_N1
\ALU_Inst|divider_inst|controlPath|stateReg0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|controlPath|stateReg0|int_q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|controlPath|stateReg0|int_q~q\);

-- Location: LCCOMB_X50_Y2_N30
\ALU_Inst|divider_inst|controlPath|state_in[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|controlPath|state_in\(1) = (\OperandA[3]~input_o\ & \ALU_Inst|divider_inst|controlPath|stateReg0|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[3]~input_o\,
	datad => \ALU_Inst|divider_inst|controlPath|stateReg0|int_q~q\,
	combout => \ALU_Inst|divider_inst|controlPath|state_in\(1));

-- Location: CLKCTRL_G4
\GReset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GReset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GReset~inputclkctrl_outclk\);

-- Location: FF_X49_Y2_N9
\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ALU_Inst|divider_inst|controlPath|state_in\(1),
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\);

-- Location: IOIBUF_X45_Y0_N15
\OperandA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandA(3),
	o => \OperandA[3]~input_o\);

-- Location: LCCOMB_X50_Y1_N0
\ALU_Inst|divider_inst|controlPath|state_in[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|controlPath|state_in\(2) = (\ALU_Inst|divider_inst|controlPath|stateReg0|int_q~q\ & !\OperandA[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Inst|divider_inst|controlPath|stateReg0|int_q~q\,
	datad => \OperandA[3]~input_o\,
	combout => \ALU_Inst|divider_inst|controlPath|state_in\(2));

-- Location: FF_X50_Y1_N1
\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|controlPath|state_in\(2),
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\);

-- Location: LCCOMB_X48_Y2_N16
\ALU_Inst|divider_inst|controlPath|state_in[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|controlPath|state_in[3]~0_combout\ = (\OperandB[3]~input_o\ & ((\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) # (\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[3]~input_o\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|controlPath|state_in[3]~0_combout\);

-- Location: FF_X49_Y2_N15
\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ALU_Inst|divider_inst|controlPath|state_in[3]~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\);

-- Location: LCCOMB_X48_Y1_N2
\ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\ = \OperandB[2]~input_o\ $ (((\OperandB[0]~input_o\) # (\OperandB[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[2]~input_o\,
	datab => \OperandB[0]~input_o\,
	datac => \OperandB[1]~input_o\,
	combout => \ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\);

-- Location: LCCOMB_X47_Y1_N12
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\OperandB[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[2]~input_o\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0_combout\);

-- Location: IOIBUF_X45_Y0_N22
\OperandB[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandB(3),
	o => \OperandB[3]~input_o\);

-- Location: LCCOMB_X47_Y1_N18
\ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\ = \OperandB[3]~input_o\ $ (((\OperandB[2]~input_o\) # ((\OperandB[0]~input_o\) # (\OperandB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[2]~input_o\,
	datab => \OperandB[3]~input_o\,
	datac => \OperandB[0]~input_o\,
	datad => \OperandB[1]~input_o\,
	combout => \ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\);

-- Location: LCCOMB_X47_Y1_N26
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\OperandB[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[3]~input_o\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X47_Y1_N24
\ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\ = (!\OperandB[3]~input_o\ & ((\OperandB[2]~input_o\) # ((\OperandB[0]~input_o\) # (\OperandB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[2]~input_o\,
	datab => \OperandB[3]~input_o\,
	datac => \OperandB[0]~input_o\,
	datad => \OperandB[1]~input_o\,
	combout => \ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X47_Y1_N14
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\OperandB[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[3]~input_o\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X47_Y1_N6
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\OperandB[2]~input_o\) # ((\OperandB[0]~input_o\) # (\OperandB[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[2]~input_o\,
	datab => \OperandB[0]~input_o\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \OperandB[1]~input_o\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X47_Y1_N30
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0_combout\ = (\OperandB[3]~input_o\ & (!\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\)) # (!\OperandB[3]~input_o\ & 
-- ((\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[3]~input_o\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X47_Y1_N2
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~0_combout\ = (\OperandB[2]~input_o\) # ((\OperandB[3]~input_o\) # ((\OperandB[0]~input_o\) # (\OperandB[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[2]~input_o\,
	datab => \OperandB[3]~input_o\,
	datac => \OperandB[0]~input_o\,
	datad => \OperandB[1]~input_o\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X47_Y1_N10
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~1_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X47_Y1_N4
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0_combout\ = (\OperandB[3]~input_o\ & (!\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\)) # (!\OperandB[3]~input_o\ & 
-- ((\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[3]~input_o\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~1_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X46_Y1_N12
\ALU_Inst|divider_inst|controlPath|state_in[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|controlPath|state_in[4]~6_combout\ = (!\OperandB[3]~input_o\ & ((\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\) # (\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datab => \OperandB[3]~input_o\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|controlPath|state_in[4]~6_combout\);

-- Location: FF_X46_Y1_N13
\ALU_Inst|divider_inst|controlPath|stateRegloop:4:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|controlPath|state_in[4]~6_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\);

-- Location: LCCOMB_X46_Y1_N8
\ALU_Inst|multiplier_inst|controlPath|state_in[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|controlPath|state_in[10]~1_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # (\ALU_Inst|divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\,
	combout => \ALU_Inst|multiplier_inst|controlPath|state_in[10]~1_combout\);

-- Location: FF_X46_Y1_N9
\ALU_Inst|multiplier_inst|controlPath|stateRegloop:10:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|controlPath|state_in[10]~1_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:10:state_n|int_q~q\);

-- Location: FF_X46_Y1_N19
\ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\);

-- Location: LCCOMB_X46_Y1_N30
\ALU_Inst|multiplier_inst|controlPath|state_in[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|controlPath|state_in[5]~2_combout\ = (\ALU_Inst|multiplier_inst|controlPath|stateRegloop:10:state_n|int_q~q\) # ((\ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & 
-- ((\ALU_Inst|multiplier_inst|dataPath|beq0~1_combout\) # (\ALU_Inst|multiplier_inst|dataPath|beq0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|dataPath|beq0~1_combout\,
	datab => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:10:state_n|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|dataPath|beq0~0_combout\,
	datad => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	combout => \ALU_Inst|multiplier_inst|controlPath|state_in[5]~2_combout\);

-- Location: LCCOMB_X47_Y1_N16
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|mux_0|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|mux_0|muxfinal|y~0_combout\ = (\ALU_Inst|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & ((\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\))) # 
-- (!\ALU_Inst|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & (\OperandB[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datac => \OperandB[0]~input_o\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|mux_0|muxfinal|y~0_combout\);

-- Location: LCCOMB_X46_Y1_N16
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|int_enable\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # ((\ALU_Inst|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\) # 
-- (\ALU_Inst|divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\);

-- Location: FF_X47_Y1_N17
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|mux_0|muxfinal|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\);

-- Location: LCCOMB_X46_Y1_N24
\ALU_Inst|multiplier_inst|controlPath|state_in[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|controlPath|state_in[7]~0_combout\ = (\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\ & ((\ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\) # 
-- (\ALU_Inst|multiplier_inst|controlPath|stateRegloop:10:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:10:state_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\,
	combout => \ALU_Inst|multiplier_inst|controlPath|state_in[7]~0_combout\);

-- Location: LCCOMB_X49_Y1_N12
\ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~feeder_combout\ = \ALU_Inst|multiplier_inst|controlPath|state_in[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALU_Inst|multiplier_inst|controlPath|state_in[7]~0_combout\,
	combout => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~feeder_combout\);

-- Location: FF_X49_Y1_N13
\ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\);

-- Location: LCCOMB_X46_Y1_N22
\ALU_Inst|multiplier_inst|controlPath|state_in[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|controlPath|state_in[5]~3_combout\ = (\ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\) # ((!\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\ & 
-- \ALU_Inst|multiplier_inst|controlPath|state_in[5]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|controlPath|state_in[5]~2_combout\,
	datad => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \ALU_Inst|multiplier_inst|controlPath|state_in[5]~3_combout\);

-- Location: FF_X46_Y1_N23
\ALU_Inst|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|controlPath|state_in[5]~3_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\);

-- Location: LCCOMB_X46_Y1_N26
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0_combout\ = (!\ALU_Inst|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & 
-- ((\ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\))) # (!\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\OperandB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datac => \OperandB[3]~input_o\,
	datad => \ALU_Inst|multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0_combout\);

-- Location: FF_X46_Y1_N27
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:7:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\);

-- Location: FF_X47_Y1_N5
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0_combout\,
	asdata => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\);

-- Location: FF_X47_Y1_N31
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0_combout\,
	asdata => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\);

-- Location: FF_X47_Y1_N15
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0_combout\,
	asdata => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\);

-- Location: FF_X47_Y1_N27
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0_combout\,
	asdata => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\);

-- Location: FF_X47_Y1_N13
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0_combout\,
	asdata => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\);

-- Location: FF_X47_Y1_N29
\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0_combout\,
	asdata => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\);

-- Location: LCCOMB_X46_Y1_N4
\ALU_Inst|multiplier_inst|dataPath|beq0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|beq0~0_combout\ = (\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\) # ((\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\) # 
-- ((\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\) # (\ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\,
	datab => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\,
	combout => \ALU_Inst|multiplier_inst|dataPath|beq0~0_combout\);

-- Location: LCCOMB_X45_Y1_N16
\ALU_Inst|divider_inst|dataPath|int_sign_in~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|int_sign_in~0_combout\ = \OperandA[3]~input_o\ $ (\OperandB[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OperandA[3]~input_o\,
	datad => \OperandB[3]~input_o\,
	combout => \ALU_Inst|divider_inst|dataPath|int_sign_in~0_combout\);

-- Location: LCCOMB_X45_Y1_N26
\ALU_Inst|divider_inst|dataPath|sign_reg|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|sign_reg|int_q~feeder_combout\ = \ALU_Inst|divider_inst|dataPath|int_sign_in~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ALU_Inst|divider_inst|dataPath|int_sign_in~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|sign_reg|int_q~feeder_combout\);

-- Location: FF_X45_Y1_N27
\ALU_Inst|divider_inst|dataPath|sign_reg|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|sign_reg|int_q~feeder_combout\,
	ena => \ALU_Inst|divider_inst|controlPath|stateReg0|int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|sign_reg|int_q~q\);

-- Location: LCCOMB_X46_Y1_N14
\ALU_Inst|multiplier_inst|controlPath|state_in[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|controlPath|state_in\(8) = (!\ALU_Inst|multiplier_inst|dataPath|beq0~1_combout\ & (!\ALU_Inst|multiplier_inst|dataPath|beq0~0_combout\ & (\ALU_Inst|divider_inst|dataPath|sign_reg|int_q~q\ & 
-- \ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|dataPath|beq0~1_combout\,
	datab => \ALU_Inst|multiplier_inst|dataPath|beq0~0_combout\,
	datac => \ALU_Inst|divider_inst|dataPath|sign_reg|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	combout => \ALU_Inst|multiplier_inst|controlPath|state_in\(8));

-- Location: FF_X46_Y1_N15
\ALU_Inst|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|controlPath|state_in\(8),
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\);

-- Location: IOIBUF_X49_Y0_N15
\OperandA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandA(0),
	o => \OperandA[0]~input_o\);

-- Location: LCCOMB_X49_Y1_N10
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|mux_0|mux1|selX0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|mux_0|mux1|selX0~combout\ = (!\ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & \OperandA[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datad => \OperandA[0]~input_o\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|mux_0|mux1|selX0~combout\);

-- Location: LCCOMB_X50_Y1_N18
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|int_enable\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\ = (\ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\) # ((\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) # 
-- (\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\);

-- Location: FF_X48_Y1_N17
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|mux_0|mux1|selX0~combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => VCC,
	ena => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\);

-- Location: LCCOMB_X48_Y1_N8
\ALU_Inst|multiplier_inst|dataPath|adder|add_0|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|adder|add_0|o_Sum~combout\ = \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\ $ (((\ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & 
-- \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\,
	combout => \ALU_Inst|multiplier_inst|dataPath|adder|add_0|o_Sum~combout\);

-- Location: LCCOMB_X48_Y1_N16
\ALU_Inst|multiplier_inst|controlPath|loadP\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|controlPath|loadP~combout\ = (\ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\) # (\ALU_Inst|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	combout => \ALU_Inst|multiplier_inst|controlPath|loadP~combout\);

-- Location: FF_X48_Y1_N9
\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|adder|add_0|o_Sum~combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\);

-- Location: LCCOMB_X48_Y1_N22
\ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\ = (\ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\,
	combout => \ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\);

-- Location: IOIBUF_X49_Y0_N22
\OperandA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandA(1),
	o => \OperandA[1]~input_o\);

-- Location: LCCOMB_X50_Y1_N20
\ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\ = \OperandA[0]~input_o\ $ (\OperandA[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OperandA[0]~input_o\,
	datac => \OperandA[1]~input_o\,
	combout => \ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\);

-- Location: LCCOMB_X50_Y1_N4
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & ((\ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & (\OperandA[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \OperandA[1]~input_o\,
	datad => \ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0_combout\);

-- Location: FF_X50_Y1_N5
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0_combout\,
	asdata => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\);

-- Location: LCCOMB_X49_Y1_N6
\ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\ = (\ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\,
	combout => \ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\);

-- Location: LCCOMB_X48_Y1_N12
\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\ = \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\ $ (\ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\ $ 
-- (((\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\ & \ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\,
	datab => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\,
	datad => \ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\);

-- Location: LCCOMB_X48_Y1_N6
\ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:1:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:1:mux_n|y~0_combout\ = \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\ $ (((\ALU_Inst|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- (\ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\ $ (\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\,
	datab => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:1:mux_n|y~0_combout\);

-- Location: FF_X48_Y1_N7
\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:1:mux_n|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\);

-- Location: LCCOMB_X52_Y1_N0
\ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~0_combout\ = (\OperationSelect[1]~input_o\ & ((\OperationSelect[0]~input_o\ & (\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\)) # (!\OperationSelect[0]~input_o\ & 
-- ((\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\,
	datab => \OperationSelect[0]~input_o\,
	datac => \OperationSelect[1]~input_o\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\,
	combout => \ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X52_Y1_N2
\ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_Sum~0_combout\ = \OperandB[1]~input_o\ $ (((\OperandB[0]~input_o\ & (\OperationSelect[0]~input_o\ $ (\OperandA[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[0]~input_o\,
	datab => \OperationSelect[0]~input_o\,
	datac => \OperandB[1]~input_o\,
	datad => \OperandA[0]~input_o\,
	combout => \ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X52_Y1_N12
\ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ = (\ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~0_combout\) # ((!\OperationSelect[1]~input_o\ & (\OperandA[1]~input_o\ $ (\ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_Sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[1]~input_o\,
	datab => \ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~0_combout\,
	datac => \OperationSelect[1]~input_o\,
	datad => \ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_Sum~0_combout\,
	combout => \ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X48_Y1_N30
\ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\ = (\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\ & ((\ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\ $ 
-- (!\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\)) # (!\ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\))) # (!\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\ & 
-- ((\ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\) # (\ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\ $ (\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\,
	datab => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\,
	combout => \ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\);

-- Location: LCCOMB_X48_Y1_N18
\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ = (\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\ & ((\ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\) # 
-- ((\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\ & \ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\)))) # (!\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\ & 
-- (\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\ & (\ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\ & \ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\,
	datab => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\,
	datad => \ALU_Inst|multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X48_Y1_N28
\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\ = \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\ $ (\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ $ 
-- (((\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\ & \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\,
	datab => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X48_Y1_N24
\ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:2:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:2:mux_n|y~0_combout\ = \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\ $ (((\ALU_Inst|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- \ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\,
	datad => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:2:mux_n|y~0_combout\);

-- Location: FF_X48_Y1_N25
\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:2:mux_n|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\);

-- Location: LCCOMB_X45_Y1_N0
\ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~0_combout\ = (\OperationSelect[1]~input_o\ & ((\OperationSelect[0]~input_o\ & (\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\)) # (!\OperationSelect[0]~input_o\ & 
-- ((\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\,
	datab => \OperationSelect[1]~input_o\,
	datac => \OperationSelect[0]~input_o\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\,
	combout => \ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X45_Y1_N12
\ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ = (\ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~0_combout\) # ((\ALU_Inst|adder_subtractor_inst|loop_add:2:addrn|o_Sum~0_combout\ & !\OperationSelect[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|adder_subtractor_inst|loop_add:2:addrn|o_Sum~0_combout\,
	datac => \OperationSelect[1]~input_o\,
	datad => \ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~0_combout\,
	combout => \ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\);

-- Location: IOIBUF_X40_Y0_N15
\OperandA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandA(2),
	o => \OperandA[2]~input_o\);

-- Location: LCCOMB_X52_Y1_N10
\ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\ = (\OperandB[0]~input_o\ & (\OperationSelect[0]~input_o\ $ (\OperandA[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[0]~input_o\,
	datab => \OperationSelect[0]~input_o\,
	datad => \OperandA[0]~input_o\,
	combout => \ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X52_Y1_N4
\ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\ = (\OperandB[1]~input_o\ & ((\ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\ & ((!\OperationSelect[0]~input_o\))) # 
-- (!\ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\ & (\OperandA[1]~input_o\)))) # (!\OperandB[1]~input_o\ & ((\ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\ & (\OperandA[1]~input_o\)) # 
-- (!\ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\ & ((\OperationSelect[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[1]~input_o\,
	datab => \OperationSelect[0]~input_o\,
	datac => \OperandB[1]~input_o\,
	datad => \ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\);

-- Location: LCCOMB_X45_Y1_N2
\ALU_Inst|adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\ = (\OperandA[2]~input_o\ & ((\ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\) # (\OperandB[2]~input_o\ $ (\OperationSelect[0]~input_o\)))) # 
-- (!\OperandA[2]~input_o\ & (\ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\ & (\OperandB[2]~input_o\ $ (\OperationSelect[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[2]~input_o\,
	datab => \OperationSelect[0]~input_o\,
	datac => \OperandA[2]~input_o\,
	datad => \ALU_Inst|adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\,
	combout => \ALU_Inst|adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X45_Y1_N14
\ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\ = \ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~0_combout\ $ (((!\OperationSelect[1]~input_o\ & (\ALU_Inst|divider_inst|dataPath|int_sign_in~0_combout\ $ 
-- (\ALU_Inst|adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~0_combout\,
	datab => \ALU_Inst|divider_inst|dataPath|int_sign_in~0_combout\,
	datac => \OperationSelect[1]~input_o\,
	datad => \ALU_Inst|adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X46_Y2_N24
\ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:4:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:4:mux_n|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\OperandA[3]~input_o\)) # (!\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \OperandA[3]~input_o\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:4:mux_n|y~0_combout\);

-- Location: LCCOMB_X47_Y1_N22
\ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0_combout\ = \ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ $ (\ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0_combout\);

-- Location: FF_X47_Y1_N23
\ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\);

-- Location: LCCOMB_X46_Y1_N10
\ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0_combout\ = \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\ $ (((\ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & 
-- \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\,
	datad => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0_combout\);

-- Location: FF_X46_Y1_N11
\ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\);

-- Location: LCCOMB_X46_Y1_N6
\ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0_combout\ = \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\ $ (((\ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\ & 
-- (\ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\,
	datad => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0_combout\);

-- Location: FF_X46_Y1_N7
\ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\);

-- Location: LCCOMB_X46_Y1_N2
\ALU_Inst|divider_inst|controlPath|state_in[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|controlPath|state_in[9]~1_combout\ = (!\ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\ & (\ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\ & 
-- (\ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\,
	datab => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\,
	combout => \ALU_Inst|divider_inst|controlPath|state_in[9]~1_combout\);

-- Location: LCCOMB_X46_Y1_N0
\ALU_Inst|divider_inst|controlPath|state_in[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|controlPath|state_in[9]~2_combout\ = (\ALU_Inst|divider_inst|dataPath|sign_reg|int_q~q\ & \ALU_Inst|divider_inst|controlPath|state_in[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Inst|divider_inst|dataPath|sign_reg|int_q~q\,
	datad => \ALU_Inst|divider_inst|controlPath|state_in[9]~1_combout\,
	combout => \ALU_Inst|divider_inst|controlPath|state_in[9]~2_combout\);

-- Location: FF_X49_Y2_N31
\ALU_Inst|divider_inst|controlPath|stateRegloop:9:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ALU_Inst|divider_inst|controlPath|state_in[9]~2_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\);

-- Location: LCCOMB_X46_Y2_N22
\ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\OperandA[3]~input_o\)) # (!\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \OperandA[3]~input_o\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~0_combout\);

-- Location: FF_X46_Y2_N23
\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\);

-- Location: LCCOMB_X48_Y2_N8
\ALU_Inst|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\ = (!\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (!\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\ & \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\);

-- Location: LCCOMB_X50_Y2_N14
\ALU_Inst|divider_inst|controlPath|sub\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|controlPath|sub~combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # ((\ALU_Inst|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\) # 
-- ((\ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\) # (\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|controlPath|sub~combout\);

-- Location: LCCOMB_X48_Y2_N30
\ALU_Inst|divider_inst|controlPath|state_in[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|controlPath|state_in[7]~5_combout\ = \ALU_Inst|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\ $ (\ALU_Inst|divider_inst|controlPath|sub~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Inst|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\,
	datac => \ALU_Inst|divider_inst|controlPath|sub~combout\,
	combout => \ALU_Inst|divider_inst|controlPath|state_in[7]~5_combout\);

-- Location: LCCOMB_X49_Y2_N6
\ALU_Inst|divider_inst|controlPath|addSel1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|controlPath|addSel1~combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # (\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|controlPath|addSel1~combout\);

-- Location: LCCOMB_X49_Y2_N24
\ALU_Inst|divider_inst|dataPath|quotient_reg|mux_0|mux1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|quotient_reg|mux_0|mux1|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\) # ((\ALU_Inst|divider_inst|dataPath|adder|add_0|o_Sum~combout\ & 
-- !\ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|dataPath|adder|add_0|o_Sum~combout\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|quotient_reg|mux_0|mux1|y~0_combout\);

-- Location: LCCOMB_X49_Y2_N14
\ALU_Inst|divider_inst|dataPath|quotient_reg|int_enable\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|quotient_reg|int_enable~combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\) # ((\ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\) # 
-- (\ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|quotient_reg|int_enable~combout\);

-- Location: FF_X49_Y2_N25
\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|quotient_reg|mux_0|mux1|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\);

-- Location: LCCOMB_X49_Y2_N26
\ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (((\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\)))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (\ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2_combout\);

-- Location: FF_X49_Y2_N27
\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\);

-- Location: LCCOMB_X50_Y2_N4
\ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (((\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\)))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\,
	datab => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2_combout\);

-- Location: FF_X50_Y2_N5
\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\);

-- Location: LCCOMB_X49_Y2_N8
\ALU_Inst|divider_inst|controlPath|selZ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|controlPath|selZ~0_combout\ = (!\ALU_Inst|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\ & (!\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & 
-- !\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|controlPath|selZ~0_combout\);

-- Location: LCCOMB_X49_Y2_N4
\ALU_Inst|divider_inst|controlPath|addSel0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|controlPath|addSel0~combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\) # (\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|controlPath|addSel0~combout\);

-- Location: LCCOMB_X50_Y2_N16
\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|addSel0~combout\ & ((\ALU_Inst|divider_inst|controlPath|addSel1~combout\ & (\OperandA[2]~input_o\)) # 
-- (!\ALU_Inst|divider_inst|controlPath|addSel1~combout\ & ((\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[2]~input_o\,
	datab => \ALU_Inst|divider_inst|controlPath|addSel0~combout\,
	datac => \ALU_Inst|divider_inst|controlPath|addSel1~combout\,
	datad => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X50_Y2_N12
\ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ = \ALU_Inst|divider_inst|controlPath|sub~combout\ $ (((\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\) # 
-- ((\ALU_Inst|divider_inst|controlPath|selZ~0_combout\ & \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|selZ~0_combout\,
	datab => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|sub~combout\,
	datad => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X50_Y2_N26
\ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:1:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:1:mux_n|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & ((\OperandA[1]~input_o\))) # (!\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- (\ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\,
	datac => \OperandA[1]~input_o\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:1:mux_n|y~0_combout\);

-- Location: FF_X50_Y2_N27
\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:1:mux_n|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\);

-- Location: LCCOMB_X50_Y2_N10
\ALU_Inst|divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ = (!\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\ & 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & !\ALU_Inst|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\);

-- Location: LCCOMB_X49_Y2_N18
\ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~2_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\) # ((\ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\) # 
-- ((\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # (\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~2_combout\);

-- Location: LCCOMB_X49_Y2_N20
\ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~3_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (!\OperandA[1]~input_o\)) # (!\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & 
-- ((\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & (!\OperandA[1]~input_o\)) # (!\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & ((!\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[1]~input_o\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~3_combout\);

-- Location: LCCOMB_X49_Y2_N2
\ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~4_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) # ((\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # 
-- (!\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~4_combout\);

-- Location: LCCOMB_X49_Y2_N22
\ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\ = \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~2_combout\ $ (((\ALU_Inst|divider_inst|controlPath|addSel0~combout\ & 
-- (!\ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~3_combout\)) # (!\ALU_Inst|divider_inst|controlPath|addSel0~combout\ & ((!\ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|addSel0~combout\,
	datab => \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~2_combout\,
	datac => \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~3_combout\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~4_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X49_Y2_N16
\ALU_Inst|divider_inst|dataPath|adder|add_0|carryFromBi\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|add_0|carryFromBi~combout\ = (\ALU_Inst|divider_inst|controlPath|selZ~0_combout\ & ((\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\ & 
-- ((\ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\) # (!\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\))) # (!\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\ & 
-- ((\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\) # (!\ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\))))) # (!\ALU_Inst|divider_inst|controlPath|selZ~0_combout\ & 
-- (((\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|selZ~0_combout\,
	datab => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|add_0|carryFromBi~combout\);

-- Location: LCCOMB_X47_Y2_N18
\ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ = (\ALU_Inst|divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ & ((\ALU_Inst|divider_inst|dataPath|adder|add_0|carryFromBoth~combout\) # 
-- ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\) # (!\ALU_Inst|divider_inst|dataPath|adder|add_0|carryFromBi~combout\)))) # (!\ALU_Inst|divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ & 
-- (\ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\ & ((\ALU_Inst|divider_inst|dataPath|adder|add_0|carryFromBoth~combout\) # (!\ALU_Inst|divider_inst|dataPath|adder|add_0|carryFromBi~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|adder|add_0|carryFromBoth~combout\,
	datab => \ALU_Inst|divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\,
	datac => \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|add_0|carryFromBi~combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X47_Y2_N12
\ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ = (\ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ & ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\) # 
-- ((\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\ & \ALU_Inst|divider_inst|controlPath|selZ~0_combout\)))) # (!\ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ & 
-- (\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\ & (\ALU_Inst|divider_inst|controlPath|selZ~0_combout\ & \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\,
	datab => \ALU_Inst|divider_inst|controlPath|selZ~0_combout\,
	datac => \ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X50_Y2_N6
\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|addSel0~combout\ & ((\ALU_Inst|divider_inst|controlPath|addSel1~combout\ & (\OperandA[3]~input_o\)) # 
-- (!\ALU_Inst|divider_inst|controlPath|addSel1~combout\ & ((\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[3]~input_o\,
	datab => \ALU_Inst|divider_inst|controlPath|addSel0~combout\,
	datac => \ALU_Inst|divider_inst|controlPath|addSel1~combout\,
	datad => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X50_Y2_N20
\ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ = \ALU_Inst|divider_inst|controlPath|sub~combout\ $ (((\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\) # 
-- ((\ALU_Inst|divider_inst|controlPath|selZ~0_combout\ & \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|selZ~0_combout\,
	datab => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|sub~combout\,
	datad => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X46_Y2_N10
\ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\ = \ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ $ (\ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ $ 
-- (((\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\ & \ALU_Inst|divider_inst|controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\,
	datab => \ALU_Inst|divider_inst|controlPath|selZ~0_combout\,
	datac => \ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\);

-- Location: LCCOMB_X50_Y2_N18
\ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (((\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\)))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\)) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\,
	combout => \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2_combout\);

-- Location: FF_X50_Y2_N19
\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\);

-- Location: LCCOMB_X48_Y2_N0
\ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\)) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\)) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2_combout\);

-- Location: FF_X48_Y2_N1
\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\);

-- Location: LCCOMB_X48_Y2_N4
\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|addSel0~combout\ & (((\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\) # 
-- (\ALU_Inst|divider_inst|controlPath|addSel1~combout\)))) # (!\ALU_Inst|divider_inst|controlPath|addSel0~combout\ & (\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~q\ & ((!\ALU_Inst|divider_inst|controlPath|addSel1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|addSel0~combout\,
	datad => \ALU_Inst|divider_inst|controlPath|addSel1~combout\,
	combout => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X48_Y2_N10
\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\ = (\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\ & ((\OperandA[3]~input_o\) # ((!\ALU_Inst|divider_inst|controlPath|addSel1~combout\)))) # 
-- (!\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\ & (((\OperandB[1]~input_o\ & \ALU_Inst|divider_inst|controlPath|addSel1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[3]~input_o\,
	datab => \OperandB[1]~input_o\,
	datac => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\,
	datad => \ALU_Inst|divider_inst|controlPath|addSel1~combout\,
	combout => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X48_Y2_N18
\ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ = \ALU_Inst|divider_inst|controlPath|sub~combout\ $ (\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Inst|divider_inst|controlPath|sub~combout\,
	datad => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X48_Y2_N12
\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|addSel0~combout\ & (((\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\) # 
-- (\ALU_Inst|divider_inst|controlPath|addSel1~combout\)))) # (!\ALU_Inst|divider_inst|controlPath|addSel0~combout\ & (\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~q\ & ((!\ALU_Inst|divider_inst|controlPath|addSel1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|addSel0~combout\,
	datad => \ALU_Inst|divider_inst|controlPath|addSel1~combout\,
	combout => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X48_Y2_N24
\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\ = (\ALU_Inst|divider_inst|controlPath|addSel1~combout\ & ((\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\ & ((\OperandA[3]~input_o\))) # 
-- (!\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\ & (\OperandB[0]~input_o\)))) # (!\ALU_Inst|divider_inst|controlPath|addSel1~combout\ & 
-- (((\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|addSel1~combout\,
	datab => \OperandB[0]~input_o\,
	datac => \OperandA[3]~input_o\,
	datad => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X47_Y2_N26
\ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ = \ALU_Inst|divider_inst|controlPath|sub~combout\ $ (\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|sub~combout\,
	datad => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X47_Y2_N20
\ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ = (\ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ & ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\) # 
-- ((\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\ & \ALU_Inst|divider_inst|controlPath|selZ~0_combout\)))) # (!\ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ & 
-- (\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\ & (\ALU_Inst|divider_inst|controlPath|selZ~0_combout\ & \ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\,
	datab => \ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\,
	datac => \ALU_Inst|divider_inst|controlPath|selZ~0_combout\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X47_Y2_N28
\ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ = (\ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ & ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\) # 
-- ((\ALU_Inst|divider_inst|controlPath|selZ~0_combout\ & \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\)))) # (!\ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ & 
-- (\ALU_Inst|divider_inst|controlPath|selZ~0_combout\ & (\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\ & \ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|selZ~0_combout\,
	datab => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\,
	datac => \ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X47_Y2_N22
\ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ = \ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ $ (\ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ $ 
-- (((\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\ & \ALU_Inst|divider_inst|controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\,
	datab => \ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\,
	datac => \ALU_Inst|divider_inst|controlPath|selZ~0_combout\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X48_Y2_N2
\ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\)) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\)) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2_combout\);

-- Location: FF_X48_Y2_N3
\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\);

-- Location: LCCOMB_X48_Y2_N20
\ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\)) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\)) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2_combout\);

-- Location: FF_X48_Y2_N21
\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\);

-- Location: LCCOMB_X47_Y2_N14
\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\OperandB[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[2]~input_o\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X47_Y2_N24
\ALU_Inst|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~0_combout\ = \ALU_Inst|divider_inst|controlPath|sub~combout\ $ (\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\ $ 
-- (\ALU_Inst|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\ $ (\ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|sub~combout\,
	datab => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datac => \ALU_Inst|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~0_combout\);

-- Location: LCCOMB_X47_Y2_N8
\ALU_Inst|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~1_combout\ = (!\ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & 
-- ((\ALU_Inst|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~0_combout\))) # (!\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\OperandB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[3]~input_o\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~1_combout\);

-- Location: FF_X47_Y2_N9
\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:7:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~1_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:7:bit_n|int_q~q\);

-- Location: FF_X47_Y2_N15
\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~0_combout\,
	asdata => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:7:bit_n|int_q~q\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	ena => \ALU_Inst|divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~q\);

-- Location: LCCOMB_X49_Y2_N12
\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|addSel1~combout\ & (((\ALU_Inst|divider_inst|controlPath|addSel0~combout\)))) # (!\ALU_Inst|divider_inst|controlPath|addSel1~combout\ & 
-- ((\ALU_Inst|divider_inst|controlPath|addSel0~combout\ & (\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\)) # (!\ALU_Inst|divider_inst|controlPath|addSel0~combout\ & 
-- ((\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|addSel1~combout\,
	datab => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|addSel0~combout\,
	datad => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X46_Y2_N18
\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\ = (\ALU_Inst|divider_inst|controlPath|addSel1~combout\ & ((\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\ & ((\OperandA[3]~input_o\))) # 
-- (!\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\ & (\OperandB[2]~input_o\)))) # (!\ALU_Inst|divider_inst|controlPath|addSel1~combout\ & 
-- (((\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[2]~input_o\,
	datab => \OperandA[3]~input_o\,
	datac => \ALU_Inst|divider_inst|controlPath|addSel1~combout\,
	datad => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X46_Y2_N16
\ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ = \ALU_Inst|divider_inst|controlPath|sub~combout\ $ (\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Inst|divider_inst|controlPath|sub~combout\,
	datad => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X47_Y2_N6
\ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ = (\ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ & ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\) # 
-- ((\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\ & \ALU_Inst|divider_inst|controlPath|selZ~0_combout\)))) # (!\ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ & 
-- (\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\ & (\ALU_Inst|divider_inst|controlPath|selZ~0_combout\ & \ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\,
	datab => \ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\,
	datac => \ALU_Inst|divider_inst|controlPath|selZ~0_combout\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X47_Y2_N2
\ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\ = \ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ $ (\ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ $ 
-- (((\ALU_Inst|divider_inst|controlPath|selZ~0_combout\ & \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|selZ~0_combout\,
	datab => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\,
	datac => \ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X46_Y2_N12
\ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:6:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:6:mux_n|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\OperandA[3]~input_o\)) # (!\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \OperandA[3]~input_o\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:6:mux_n|y~0_combout\);

-- Location: FF_X46_Y2_N13
\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:6:mux_n|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\);

-- Location: LCCOMB_X47_Y2_N0
\ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ = (\ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ & ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\) # 
-- ((\ALU_Inst|divider_inst|controlPath|selZ~0_combout\ & \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\)))) # (!\ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ & 
-- (\ALU_Inst|divider_inst|controlPath|selZ~0_combout\ & (\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\ & \ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|selZ~0_combout\,
	datab => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\,
	datac => \ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X47_Y2_N30
\ALU_Inst|divider_inst|controlPath|state_in[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|controlPath|state_in\(7) = (\ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & (\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\ $ 
-- (\ALU_Inst|divider_inst|controlPath|state_in[7]~5_combout\ $ (\ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datac => \ALU_Inst|divider_inst|controlPath|state_in[7]~5_combout\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|divider_inst|controlPath|state_in\(7));

-- Location: FF_X47_Y2_N31
\ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|controlPath|state_in\(7),
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\);

-- Location: LCCOMB_X48_Y2_N28
\ALU_Inst|divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~2_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (((\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\)))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\ALU_Inst|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\,
	datad => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~2_combout\);

-- Location: FF_X48_Y2_N29
\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:7:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~2_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:7:bit_n|int_q~q\);

-- Location: LCCOMB_X46_Y2_N2
\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|addSel1~combout\ & ((\OperandB[3]~input_o\) # ((\ALU_Inst|divider_inst|controlPath|addSel0~combout\)))) # 
-- (!\ALU_Inst|divider_inst|controlPath|addSel1~combout\ & (((\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:7:bit_n|int_q~q\ & !\ALU_Inst|divider_inst|controlPath|addSel0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[3]~input_o\,
	datab => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:7:bit_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|addSel1~combout\,
	datad => \ALU_Inst|divider_inst|controlPath|addSel0~combout\,
	combout => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X46_Y2_N4
\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\ = (\ALU_Inst|divider_inst|controlPath|addSel0~combout\ & ((\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\ & (\OperandA[3]~input_o\)) # 
-- (!\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\ & ((\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:7:bit_n|int_q~q\))))) # (!\ALU_Inst|divider_inst|controlPath|addSel0~combout\ & 
-- (((\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|addSel0~combout\,
	datab => \OperandA[3]~input_o\,
	datac => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:7:bit_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X47_Y2_N16
\ALU_Inst|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\ = \ALU_Inst|divider_inst|controlPath|sub~combout\ $ (\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\ $ 
-- (\ALU_Inst|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\ $ (\ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|sub~combout\,
	datab => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datac => \ALU_Inst|divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X47_Y2_N10
\ALU_Inst|divider_inst|controlPath|state_in[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|controlPath|state_in\(6) = (\ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & !\ALU_Inst|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\,
	combout => \ALU_Inst|divider_inst|controlPath|state_in\(6));

-- Location: FF_X47_Y2_N11
\ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|controlPath|state_in\(6),
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\);

-- Location: LCCOMB_X49_Y2_N10
\ALU_Inst|divider_inst|controlPath|shiftQuot\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|controlPath|shiftQuot~combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\) # (\ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|controlPath|shiftQuot~combout\);

-- Location: FF_X49_Y2_N11
\ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|controlPath|shiftQuot~combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\);

-- Location: LCCOMB_X46_Y1_N18
\ALU_Inst|divider_inst|controlPath|state_in~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|controlPath|state_in~3_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # ((\ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\) # 
-- (\ALU_Inst|divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|controlPath|state_in~3_combout\);

-- Location: LCCOMB_X46_Y1_N20
\ALU_Inst|divider_inst|controlPath|state_in[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|controlPath|state_in[5]~4_combout\ = (\ALU_Inst|divider_inst|controlPath|state_in~3_combout\ & (((\ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\) # 
-- (!\ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\)) # (!\ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\,
	datab => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	datac => \ALU_Inst|divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\,
	datad => \ALU_Inst|divider_inst|controlPath|state_in~3_combout\,
	combout => \ALU_Inst|divider_inst|controlPath|state_in[5]~4_combout\);

-- Location: FF_X49_Y2_N5
\ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \ALU_Inst|divider_inst|controlPath|state_in[5]~4_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\);

-- Location: LCCOMB_X50_Y2_N28
\ALU_Inst|divider_inst|controlPath|ldRem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|controlPath|ldRem~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) # ((\ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\) # 
-- ((\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\) # (\ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|controlPath|ldRem~0_combout\);

-- Location: FF_X46_Y2_N25
\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:4:mux_n|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\);

-- Location: LCCOMB_X47_Y2_N4
\ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ = \ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ $ (\ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ $ 
-- (((\ALU_Inst|divider_inst|controlPath|selZ~0_combout\ & \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|selZ~0_combout\,
	datab => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\,
	datac => \ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X48_Y2_N22
\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\OperandB[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[0]~input_o\,
	datab => \ALU_Inst|divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X48_Y2_N26
\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\OperandB[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \OperandB[1]~input_o\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~0_combout\);

-- Location: FF_X48_Y2_N27
\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~0_combout\,
	asdata => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~q\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	ena => \ALU_Inst|divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~q\);

-- Location: FF_X48_Y2_N23
\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~0_combout\,
	asdata => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~q\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	ena => \ALU_Inst|divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~q\);

-- Location: LCCOMB_X46_Y2_N20
\ALU_Inst|divider_inst|dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (((\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~q\)))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\,
	combout => \ALU_Inst|divider_inst|dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0_combout\);

-- Location: FF_X46_Y2_N21
\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q~q\);

-- Location: LCCOMB_X46_Y2_N0
\ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:2:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:2:mux_n|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\OperandA[2]~input_o\)) # (!\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \OperandA[2]~input_o\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\,
	combout => \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:2:mux_n|y~0_combout\);

-- Location: FF_X46_Y2_N1
\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:2:mux_n|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\);

-- Location: LCCOMB_X46_Y2_N6
\ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\ = \ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ $ (\ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ $ 
-- (((\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\ & \ALU_Inst|divider_inst|controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\,
	datab => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|selZ~0_combout\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\);

-- Location: LCCOMB_X46_Y2_N28
\ALU_Inst|divider_inst|dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (((\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q~q\)))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\,
	combout => \ALU_Inst|divider_inst|dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0_combout\);

-- Location: FF_X46_Y2_N29
\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q~q\);

-- Location: LCCOMB_X50_Y2_N24
\ALU_Inst|divider_inst|dataPath|adder|add_0|carryFromBoth\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|add_0|carryFromBoth~combout\ = (\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\ & (\ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & 
-- \ALU_Inst|divider_inst|controlPath|selZ~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|controlPath|selZ~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|add_0|carryFromBoth~combout\);

-- Location: LCCOMB_X50_Y2_N22
\ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\ = \ALU_Inst|divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ $ (\ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\ $ 
-- (((\ALU_Inst|divider_inst|dataPath|adder|add_0|carryFromBoth~combout\) # (!\ALU_Inst|divider_inst|dataPath|adder|add_0|carryFromBi~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\,
	datab => \ALU_Inst|divider_inst|dataPath|adder|add_0|carryFromBoth~combout\,
	datac => \ALU_Inst|divider_inst|dataPath|adder|add_0|carryFromBi~combout\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\);

-- Location: LCCOMB_X48_Y2_N14
\ALU_Inst|divider_inst|dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (((\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q~q\)))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\,
	combout => \ALU_Inst|divider_inst|dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0_combout\);

-- Location: FF_X48_Y2_N15
\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q~q\);

-- Location: LCCOMB_X48_Y2_N6
\ALU_Inst|divider_inst|dataPath|divisor_reg|mux_0|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|divisor_reg|mux_0|muxfinal|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (((\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q~q\)))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (\ALU_Inst|divider_inst|dataPath|adder|add_0|o_Sum~combout\ & (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datab => \ALU_Inst|divider_inst|dataPath|adder|add_0|o_Sum~combout\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|divisor_reg|mux_0|muxfinal|y~0_combout\);

-- Location: FF_X48_Y2_N7
\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:0:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|divisor_reg|mux_0|muxfinal|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:0:bit_n|int_q~q\);

-- Location: LCCOMB_X49_Y2_N0
\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\OperandA[0]~input_o\)) # (!\ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & 
-- ((\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & (\OperandA[0]~input_o\)) # (!\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & ((\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[0]~input_o\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X49_Y2_N28
\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\ = (\ALU_Inst|divider_inst|controlPath|addSel0~combout\ & (((\ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\)))) # 
-- (!\ALU_Inst|divider_inst|controlPath|addSel0~combout\ & (!\ALU_Inst|divider_inst|controlPath|addSel1~combout\ & (\ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:0:bit_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|addSel1~combout\,
	datab => \ALU_Inst|divider_inst|dataPath|divisor_reg|regloop:0:bit_n|int_q~q\,
	datac => \ALU_Inst|divider_inst|controlPath|addSel0~combout\,
	datad => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X49_Y2_N30
\ALU_Inst|divider_inst|dataPath|adder|add_0|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|adder|add_0|o_Sum~combout\ = \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\ $ (((\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\ & 
-- \ALU_Inst|divider_inst|controlPath|selZ~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\,
	datab => \ALU_Inst|divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\,
	datad => \ALU_Inst|divider_inst|controlPath|selZ~0_combout\,
	combout => \ALU_Inst|divider_inst|dataPath|adder|add_0|o_Sum~combout\);

-- Location: LCCOMB_X50_Y2_N8
\ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:0:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:0:mux_n|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\OperandA[0]~input_o\)) # (!\ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\ALU_Inst|divider_inst|dataPath|adder|add_0|o_Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OperandA[0]~input_o\,
	datac => \ALU_Inst|divider_inst|dataPath|adder|add_0|o_Sum~combout\,
	datad => \ALU_Inst|divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	combout => \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:0:mux_n|y~0_combout\);

-- Location: FF_X50_Y2_N9
\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|divider_inst|dataPath|remainder_mux|muxloop:0:mux_n|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\);

-- Location: LCCOMB_X52_Y1_N20
\ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~0_combout\ = (\OperationSelect[1]~input_o\ & ((\OperationSelect[0]~input_o\ & ((\ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\))) # (!\OperationSelect[0]~input_o\ & 
-- (\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	datab => \OperationSelect[0]~input_o\,
	datac => \OperationSelect[1]~input_o\,
	datad => \ALU_Inst|divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\,
	combout => \ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X52_Y1_N18
\ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ = (\ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~0_combout\) # ((!\OperationSelect[1]~input_o\ & (\OperandB[0]~input_o\ $ (\OperandA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[0]~input_o\,
	datab => \OperandA[0]~input_o\,
	datac => \OperationSelect[1]~input_o\,
	datad => \ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~0_combout\,
	combout => \ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X52_Y1_N6
\bcd_decoder_A|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_decoder_A|Mux0~0_combout\ = (\ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & (!\ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\ $ 
-- (!\ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\)))) # (!\ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ $ 
-- (!\ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\,
	datab => \ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\,
	datac => \ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\,
	datad => \ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\,
	combout => \bcd_decoder_A|Mux0~0_combout\);

-- Location: LCCOMB_X52_Y1_N8
\bcd_decoder_A|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_decoder_A|Mux1~0_combout\ = (\ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ & ((\ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ & ((\ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\))) # 
-- (!\ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\)))) # (!\ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & 
-- (\ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\ $ (\ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\,
	datab => \ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\,
	datac => \ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\,
	datad => \ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\,
	combout => \bcd_decoder_A|Mux1~0_combout\);

-- Location: LCCOMB_X52_Y1_N22
\bcd_decoder_A|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_decoder_A|Mux2~0_combout\ = (\ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\ & ((\ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\) # 
-- (!\ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\)))) # (!\ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ & (!\ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\ & 
-- !\ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\,
	datab => \ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\,
	datac => \ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\,
	datad => \ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\,
	combout => \bcd_decoder_A|Mux2~0_combout\);

-- Location: LCCOMB_X52_Y1_N28
\bcd_decoder_A|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_decoder_A|Mux3~0_combout\ = (\ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ & ((\ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & ((\ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\))) # 
-- (!\ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\ & !\ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\)))) # (!\ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ & 
-- (!\ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ $ (\ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\,
	datab => \ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\,
	datac => \ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\,
	datad => \ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\,
	combout => \bcd_decoder_A|Mux3~0_combout\);

-- Location: LCCOMB_X52_Y1_N30
\bcd_decoder_A|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_decoder_A|Mux4~0_combout\ = (\ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ & (((!\ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\ & \ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\)))) # 
-- (!\ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ & ((\ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & (!\ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\)) # (!\ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ & 
-- ((\ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\,
	datab => \ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\,
	datac => \ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\,
	datad => \ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\,
	combout => \bcd_decoder_A|Mux4~0_combout\);

-- Location: LCCOMB_X52_Y1_N16
\bcd_decoder_A|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_decoder_A|Mux5~0_combout\ = (\ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ & (!\ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\ & ((\ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\) # 
-- (!\ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\)))) # (!\ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ $ 
-- (!\ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\,
	datab => \ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\,
	datac => \ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\,
	datad => \ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\,
	combout => \bcd_decoder_A|Mux5~0_combout\);

-- Location: LCCOMB_X52_Y1_N26
\bcd_decoder_A|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_decoder_A|Mux6~0_combout\ = (\ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ & ((\ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\) # (\ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ $ 
-- (\ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\)))) # (!\ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ & ((\ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\) # (\ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ $ 
-- (\ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\,
	datab => \ALU_Inst|mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\,
	datac => \ALU_Inst|mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\,
	datad => \ALU_Inst|mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\,
	combout => \bcd_decoder_A|Mux6~0_combout\);

-- Location: LCCOMB_X45_Y1_N20
\ALU_Inst|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\ = (\OperandA[3]~input_o\ & ((\ALU_Inst|adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\) # (\OperandB[3]~input_o\ $ (\OperationSelect[0]~input_o\)))) # 
-- (!\OperandA[3]~input_o\ & (\ALU_Inst|adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\ & (\OperandB[3]~input_o\ $ (\OperationSelect[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[3]~input_o\,
	datab => \OperandA[3]~input_o\,
	datac => \OperationSelect[0]~input_o\,
	datad => \ALU_Inst|adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X48_Y1_N26
\ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:3:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:3:mux_n|y~0_combout\ = \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\ $ (((\ALU_Inst|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- ((\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\) # (\ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datab => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\,
	datac => \ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\,
	datad => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:3:mux_n|y~0_combout\);

-- Location: FF_X48_Y1_N27
\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:3:mux_n|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\);

-- Location: LCCOMB_X48_Y1_N20
\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ = (\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\ & ((\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\) # 
-- ((\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\ & \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\)))) # (!\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\ & 
-- (\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\ & (\ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\,
	datab => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X48_Y1_N10
\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\ = \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\ $ (\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ $ 
-- (((\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\ & \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\,
	datab => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X48_Y1_N4
\ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\ = (\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\) # 
-- ((\ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\) # (\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\,
	datac => \ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\,
	datad => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\);

-- Location: LCCOMB_X49_Y1_N8
\ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:4:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:4:mux_n|y~0_combout\ = \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ $ (((\ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\ & 
-- \ALU_Inst|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\,
	datac => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datad => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	combout => \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:4:mux_n|y~0_combout\);

-- Location: FF_X49_Y1_N9
\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:4:mux_n|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\);

-- Location: LCCOMB_X50_Y1_N10
\ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\ = (!\OperandA[3]~input_o\ & ((\OperandA[2]~input_o\) # ((\OperandA[1]~input_o\) # (\OperandA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[2]~input_o\,
	datab => \OperandA[3]~input_o\,
	datac => \OperandA[1]~input_o\,
	datad => \OperandA[0]~input_o\,
	combout => \ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\);

-- Location: LCCOMB_X50_Y1_N8
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & ((\ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & (\OperandA[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \OperandA[3]~input_o\,
	datad => \ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X50_Y1_N16
\ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\ = \OperandA[3]~input_o\ $ (((\OperandA[2]~input_o\) # ((\OperandA[1]~input_o\) # (\OperandA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[2]~input_o\,
	datab => \OperandA[3]~input_o\,
	datac => \OperandA[1]~input_o\,
	datad => \OperandA[0]~input_o\,
	combout => \ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\);

-- Location: LCCOMB_X50_Y1_N22
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & ((\ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & (\OperandA[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \OperandA[3]~input_o\,
	datad => \ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X50_Y1_N24
\ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\ = \OperandA[2]~input_o\ $ (((\OperandA[0]~input_o\) # (\OperandA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[2]~input_o\,
	datab => \OperandA[0]~input_o\,
	datac => \OperandA[1]~input_o\,
	combout => \ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\);

-- Location: LCCOMB_X50_Y1_N14
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & ((\ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\))) # 
-- (!\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & (\OperandA[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[2]~input_o\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0_combout\);

-- Location: FF_X50_Y1_N15
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0_combout\,
	asdata => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\);

-- Location: FF_X50_Y1_N23
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0_combout\,
	asdata => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\);

-- Location: FF_X50_Y1_N9
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0_combout\,
	asdata => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\);

-- Location: LCCOMB_X49_Y1_N20
\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ = (\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\ & ((\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\) # 
-- ((\ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\)))) # (!\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\ & 
-- (\ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\ & \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X49_Y1_N14
\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ = \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\ $ (\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ $ 
-- (((\ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X49_Y1_N26
\ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:5:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:5:mux_n|y~0_combout\ = \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ $ (((\ALU_Inst|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- ((\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\) # (\ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datab => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datac => \ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\,
	datad => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:5:mux_n|y~0_combout\);

-- Location: FF_X49_Y1_N27
\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:5:mux_n|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\);

-- Location: LCCOMB_X49_Y1_N28
\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ = (\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\ & ((\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\) # 
-- ((\ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\)))) # (!\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\ & 
-- (\ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\ & \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X49_Y1_N18
\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ = \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\ $ (\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ $ 
-- (((\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\ & \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\,
	datab => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X49_Y1_N0
\ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:5:addrn|carryFromBi\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:5:addrn|carryFromBi~combout\ = (\ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\) # 
-- ((\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\) # (\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\,
	datac => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datad => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:5:addrn|carryFromBi~combout\);

-- Location: LCCOMB_X49_Y1_N4
\ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:6:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:6:mux_n|y~0_combout\ = \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\ $ (((\ALU_Inst|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- \ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:5:addrn|carryFromBi~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	datad => \ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:5:addrn|carryFromBi~combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:6:mux_n|y~0_combout\);

-- Location: FF_X49_Y1_N5
\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:6:mux_n|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\);

-- Location: LCCOMB_X50_Y1_N2
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\ = (\OperandA[2]~input_o\) # ((\OperandA[3]~input_o\) # ((\OperandA[1]~input_o\) # (\OperandA[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[2]~input_o\,
	datab => \OperandA[3]~input_o\,
	datac => \OperandA[1]~input_o\,
	datad => \OperandA[0]~input_o\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\);

-- Location: LCCOMB_X50_Y1_N12
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~1_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~1_combout\);

-- Location: LCCOMB_X50_Y1_N30
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0_combout\ = (\OperandA[3]~input_o\ & (!\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\)) # (!\OperandA[3]~input_o\ & 
-- ((\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \OperandA[3]~input_o\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~1_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X50_Y1_N6
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\ = (\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & ((\OperandA[2]~input_o\) # ((\OperandA[1]~input_o\) # (\OperandA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[2]~input_o\,
	datab => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datac => \OperandA[1]~input_o\,
	datad => \OperandA[0]~input_o\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\);

-- Location: LCCOMB_X50_Y1_N26
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0_combout\ = (\OperandA[3]~input_o\ & (!\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\)) # (!\OperandA[3]~input_o\ & 
-- ((\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \OperandA[3]~input_o\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0_combout\);

-- Location: FF_X50_Y1_N27
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0_combout\,
	asdata => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\);

-- Location: FF_X50_Y1_N31
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0_combout\,
	asdata => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\);

-- Location: LCCOMB_X49_Y1_N16
\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ = (\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\ & ((\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\) # 
-- ((\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\ & \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\)))) # (!\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\ & 
-- (\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\ & (\ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\,
	datab => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X49_Y1_N30
\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\ = \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\ $ (\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ $ 
-- (((\ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X50_Y1_N28
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0_combout\ = (\OperandA[3]~input_o\ & (!\ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\)) # (!\OperandA[3]~input_o\ & 
-- ((\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \OperandA[3]~input_o\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0_combout\);

-- Location: FF_X50_Y1_N29
\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0_combout\,
	asdata => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\);

-- Location: LCCOMB_X49_Y1_N2
\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ = (\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\ & ((\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\) # 
-- ((\ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\)))) # (!\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\ & 
-- (\ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\ & \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X49_Y1_N24
\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\ = \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\ $ (\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ $ 
-- (((\ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \ALU_Inst|multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\,
	datac => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\,
	datad => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X49_Y1_N22
\ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:7:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:7:mux_n|y~0_combout\ = \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\ $ (((\ALU_Inst|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- ((\ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:5:addrn|carryFromBi~combout\) # (\ALU_Inst|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datab => \ALU_Inst|multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:5:addrn|carryFromBi~combout\,
	datac => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	datad => \ALU_Inst|multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\,
	combout => \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:7:mux_n|y~0_combout\);

-- Location: FF_X49_Y1_N23
\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \ALU_Inst|multiplier_inst|dataPath|mux_P|muxloop:7:mux_n|y~0_combout\,
	clrn => \ALU_Inst|divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \ALU_Inst|multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\);

-- Location: LCCOMB_X52_Y1_N14
\ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~0_combout\ = (\OperationSelect[1]~input_o\ & ((\OperationSelect[0]~input_o\ & (\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\)) # (!\OperationSelect[0]~input_o\ & 
-- ((\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\,
	datab => \OperationSelect[0]~input_o\,
	datac => \OperationSelect[1]~input_o\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\,
	combout => \ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X53_Y1_N10
\ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ = (\ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~0_combout\) # ((!\OperationSelect[1]~input_o\ & (!\ALU_Inst|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\ & 
-- \OperationSelect[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperationSelect[1]~input_o\,
	datab => \ALU_Inst|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\,
	datac => \OperationSelect[0]~input_o\,
	datad => \ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~0_combout\,
	combout => \ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X53_Y1_N2
\ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~0_combout\ = (\OperationSelect[1]~input_o\ & ((\OperationSelect[0]~input_o\ & (\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\)) # (!\OperationSelect[0]~input_o\ & 
-- ((\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperationSelect[0]~input_o\,
	datab => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\,
	datac => \OperationSelect[1]~input_o\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\,
	combout => \ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X53_Y1_N24
\ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ = (\ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~0_combout\) # ((!\OperationSelect[1]~input_o\ & (!\ALU_Inst|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\ & 
-- \OperationSelect[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperationSelect[1]~input_o\,
	datab => \ALU_Inst|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\,
	datac => \OperationSelect[0]~input_o\,
	datad => \ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~0_combout\,
	combout => \ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X52_Y1_N24
\ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~0_combout\ = (\OperationSelect[1]~input_o\ & ((\OperationSelect[0]~input_o\ & (\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\)) # (!\OperationSelect[0]~input_o\ & 
-- ((\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\,
	datab => \OperationSelect[0]~input_o\,
	datac => \OperationSelect[1]~input_o\,
	datad => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\,
	combout => \ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X53_Y1_N8
\ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ = (\ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~0_combout\) # ((!\OperationSelect[1]~input_o\ & (!\ALU_Inst|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\ & 
-- \OperationSelect[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperationSelect[1]~input_o\,
	datab => \ALU_Inst|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\,
	datac => \OperationSelect[0]~input_o\,
	datad => \ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~0_combout\,
	combout => \ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X53_Y1_N16
\ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~0_combout\ = (\OperationSelect[1]~input_o\ & ((\OperationSelect[0]~input_o\ & ((\ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\))) # (!\OperationSelect[0]~input_o\ & 
-- (\ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperationSelect[0]~input_o\,
	datab => \ALU_Inst|multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\,
	datac => \OperationSelect[1]~input_o\,
	datad => \ALU_Inst|divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\,
	combout => \ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X53_Y1_N18
\ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\ = (\ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~0_combout\) # ((!\OperationSelect[1]~input_o\ & (\ALU_Inst|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\ $ 
-- (\OperationSelect[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperationSelect[1]~input_o\,
	datab => \ALU_Inst|adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\,
	datac => \OperationSelect[0]~input_o\,
	datad => \ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~0_combout\,
	combout => \ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X53_Y1_N12
\bcd_decoder_B|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_decoder_B|Mux0~0_combout\ = (\ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ $ 
-- (\ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\)))) # (!\ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ & (!\ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ $ 
-- (\ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datab => \ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\,
	datac => \ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\,
	datad => \ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\,
	combout => \bcd_decoder_B|Mux0~0_combout\);

-- Location: LCCOMB_X53_Y1_N30
\bcd_decoder_B|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_decoder_B|Mux1~0_combout\ = (\ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ & ((\ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\ & ((\ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\))) # 
-- (!\ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\)))) # (!\ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & 
-- (\ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ $ (\ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datab => \ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\,
	datac => \ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\,
	datad => \ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\,
	combout => \bcd_decoder_B|Mux1~0_combout\);

-- Location: LCCOMB_X53_Y1_N28
\bcd_decoder_B|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_decoder_B|Mux2~0_combout\ = (\ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & ((\ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\) # 
-- (!\ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\)))) # (!\ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ & (!\ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ & 
-- !\ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datab => \ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\,
	datac => \ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\,
	datad => \ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\,
	combout => \bcd_decoder_B|Mux2~0_combout\);

-- Location: LCCOMB_X53_Y1_N26
\bcd_decoder_B|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_decoder_B|Mux3~0_combout\ = (\ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ & ((\ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & ((\ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\))) # 
-- (!\ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ & !\ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\)))) # (!\ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ & 
-- (!\ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ $ (\ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datab => \ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\,
	datac => \ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\,
	datad => \ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\,
	combout => \bcd_decoder_B|Mux3~0_combout\);

-- Location: LCCOMB_X53_Y1_N0
\bcd_decoder_B|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_decoder_B|Mux4~0_combout\ = (\ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ & (!\ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ & ((\ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\)))) # 
-- (!\ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ & ((\ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & (!\ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\)) # (!\ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & 
-- ((\ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datab => \ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\,
	datac => \ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\,
	datad => \ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\,
	combout => \bcd_decoder_B|Mux4~0_combout\);

-- Location: LCCOMB_X53_Y1_N14
\bcd_decoder_B|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_decoder_B|Mux5~0_combout\ = (\ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\ & (\ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ $ 
-- (\ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\)))) # (!\ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ & (!\ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ & ((\ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\) # 
-- (\ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datab => \ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\,
	datac => \ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\,
	datad => \ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\,
	combout => \bcd_decoder_B|Mux5~0_combout\);

-- Location: LCCOMB_X53_Y1_N20
\bcd_decoder_B|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bcd_decoder_B|Mux6~0_combout\ = (\ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\ & ((\ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\) # (\ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ $ 
-- (\ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\)))) # (!\ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\ & ((\ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\) # (\ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ $ 
-- (\ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU_Inst|mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datab => \ALU_Inst|mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\,
	datac => \ALU_Inst|mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\,
	datad => \ALU_Inst|mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\,
	combout => \bcd_decoder_B|Mux6~0_combout\);

ww_BCDOutA(0) <= \BCDOutA[0]~output_o\;

ww_BCDOutA(1) <= \BCDOutA[1]~output_o\;

ww_BCDOutA(2) <= \BCDOutA[2]~output_o\;

ww_BCDOutA(3) <= \BCDOutA[3]~output_o\;

ww_BCDOutA(4) <= \BCDOutA[4]~output_o\;

ww_BCDOutA(5) <= \BCDOutA[5]~output_o\;

ww_BCDOutA(6) <= \BCDOutA[6]~output_o\;

ww_BCDOutB(0) <= \BCDOutB[0]~output_o\;

ww_BCDOutB(1) <= \BCDOutB[1]~output_o\;

ww_BCDOutB(2) <= \BCDOutB[2]~output_o\;

ww_BCDOutB(3) <= \BCDOutB[3]~output_o\;

ww_BCDOutB(4) <= \BCDOutB[4]~output_o\;

ww_BCDOutB(5) <= \BCDOutB[5]~output_o\;

ww_BCDOutB(6) <= \BCDOutB[6]~output_o\;
END structure;



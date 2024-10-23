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

-- DATE "10/23/2024 16:54:53"

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

ENTITY 	fixedPointALUStruct IS
    PORT (
	GClock : IN std_logic;
	GReset : IN std_logic;
	OperandA : IN std_logic_vector(3 DOWNTO 0);
	OperandB : IN std_logic_vector(3 DOWNTO 0);
	OperationSelect : IN std_logic_vector(1 DOWNTO 0);
	MuxOut : OUT std_logic_vector(7 DOWNTO 0);
	CarryOut : OUT std_logic;
	ZeroOut : OUT std_logic;
	OverflowOut : OUT std_logic
	);
END fixedPointALUStruct;

-- Design Ports Information
-- MuxOut[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[2]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[3]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[4]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[5]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[6]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MuxOut[7]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CarryOut	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZeroOut	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OverflowOut	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperationSelect[1]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperationSelect[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandA[0]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandB[0]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandA[1]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandB[1]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandA[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandB[2]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandA[3]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OperandB[3]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GClock	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GReset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fixedPointALUStruct IS
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
SIGNAL ww_MuxOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CarryOut : std_logic;
SIGNAL ww_ZeroOut : std_logic;
SIGNAL ww_OverflowOut : std_logic;
SIGNAL \GReset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GClock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|quotient_reg|regloop:7:bit_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|add_0|carryFromBoth~combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~2_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|adder|loop_add:7:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~1_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|remainder_mux|muxloop:5:mux_n|y~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|remainder_mux|muxloop:4:mux_n|y~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|beq0~1_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\ : std_logic;
SIGNAL \divider_inst|dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \GClock~input_o\ : std_logic;
SIGNAL \GClock~inputclkctrl_outclk\ : std_logic;
SIGNAL \MuxOut[0]~output_o\ : std_logic;
SIGNAL \MuxOut[1]~output_o\ : std_logic;
SIGNAL \MuxOut[2]~output_o\ : std_logic;
SIGNAL \MuxOut[3]~output_o\ : std_logic;
SIGNAL \MuxOut[4]~output_o\ : std_logic;
SIGNAL \MuxOut[5]~output_o\ : std_logic;
SIGNAL \MuxOut[6]~output_o\ : std_logic;
SIGNAL \MuxOut[7]~output_o\ : std_logic;
SIGNAL \CarryOut~output_o\ : std_logic;
SIGNAL \ZeroOut~output_o\ : std_logic;
SIGNAL \OverflowOut~output_o\ : std_logic;
SIGNAL \OperationSelect[1]~input_o\ : std_logic;
SIGNAL \GReset~input_o\ : std_logic;
SIGNAL \divider_inst|controlPath|stateReg0|int_q~feeder_combout\ : std_logic;
SIGNAL \divider_inst|controlPath|stateReg0|int_q~q\ : std_logic;
SIGNAL \OperandA[3]~input_o\ : std_logic;
SIGNAL \GReset~inputclkctrl_outclk\ : std_logic;
SIGNAL \divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ : std_logic;
SIGNAL \OperandB[3]~input_o\ : std_logic;
SIGNAL \divider_inst|controlPath|state_in[3]~0_combout\ : std_logic;
SIGNAL \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|int_sign_in~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|sign_reg|int_q~feeder_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|sign_reg|int_q~q\ : std_logic;
SIGNAL \divider_inst|controlPath|sub~combout\ : std_logic;
SIGNAL \divider_inst|controlPath|addSel1~combout\ : std_logic;
SIGNAL \divider_inst|controlPath|addSel0~combout\ : std_logic;
SIGNAL \OperandB[1]~input_o\ : std_logic;
SIGNAL \OperandA[2]~input_o\ : std_logic;
SIGNAL \divider_inst|dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \OperandA[1]~input_o\ : std_logic;
SIGNAL \divider_inst|dataPath|remainder_mux|muxloop:1:mux_n|y~0_combout\ : std_logic;
SIGNAL \divider_inst|controlPath|ldRem~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ : std_logic;
SIGNAL \divider_inst|dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \divider_inst|controlPath|state_in[4]~5_combout\ : std_logic;
SIGNAL \divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|controlPath|state_in~3_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~4_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|quotient_reg|mux_0|mux1|y~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\ : std_logic;
SIGNAL \divider_inst|controlPath|state_in[5]~4_combout\ : std_logic;
SIGNAL \divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|quotient_reg|int_enable~combout\ : std_logic;
SIGNAL \divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|divisor_reg|mux_0|muxfinal|y~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|divisor_reg|regloop:0:bit_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|add_0|carryFromBi~combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\ : std_logic;
SIGNAL \divider_inst|dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~3_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\ : std_logic;
SIGNAL \divider_inst|dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|remainder_mux|muxloop:3:mux_n|y~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \divider_inst|dataPath|remainder_mux|muxloop:2:mux_n|y~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\ : std_logic;
SIGNAL \divider_inst|dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\ : std_logic;
SIGNAL \OperandB[0]~input_o\ : std_logic;
SIGNAL \divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \OperandB[2]~input_o\ : std_logic;
SIGNAL \divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|remainder_mux|muxloop:6:mux_n|y~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~1_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~1_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|divisor_reg|regloop:7:bit_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:7:addrn|xor_Bi~combout\ : std_logic;
SIGNAL \divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|controlPath|shiftQuot~combout\ : std_logic;
SIGNAL \divider_inst|controlPath|stateRegloop:8:state_n|int_q~feeder_combout\ : std_logic;
SIGNAL \divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|controlPath|state_in[9]~1_combout\ : std_logic;
SIGNAL \divider_inst|controlPath|state_in[9]~2_combout\ : std_logic;
SIGNAL \divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\ : std_logic;
SIGNAL \divider_inst|controlPath|selZ~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|add_0|o_Sum~combout\ : std_logic;
SIGNAL \divider_inst|dataPath|remainder_mux|muxloop:0:mux_n|y~0_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_B_right_shift|mux_0|muxfinal|y~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \OverflowOut~1_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|dataPath|beq0~0_combout\ : std_logic;
SIGNAL \multiplier_inst|controlPath|state_in[5]~1_combout\ : std_logic;
SIGNAL \multiplier_inst|controlPath|state_in[5]~2_combout\ : std_logic;
SIGNAL \multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\ : std_logic;
SIGNAL \OperandA[0]~input_o\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_A_left_shift|mux_0|mux1|selX0~combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|dataPath|adder|add_0|o_Sum~combout\ : std_logic;
SIGNAL \multiplier_inst|controlPath|state_in[7]~0_combout\ : std_logic;
SIGNAL \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|controlPath|loadP~combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\ : std_logic;
SIGNAL \mux_inst|muxloop:0:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|dataPath|adder|loop_add:1:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|mux_P|muxloop:1:mux_n|y~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\ : std_logic;
SIGNAL \mux_inst|muxloop:1:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \OperationSelect[0]~input_o\ : std_logic;
SIGNAL \adder_subtractor_inst|loop_add:1:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \adder_subtractor_inst|loop_add:2:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|mux_P|muxloop:2:mux_n|y~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\ : std_logic;
SIGNAL \mux_inst|muxloop:2:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|mux_P|muxloop:3:mux_n|y~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\ : std_logic;
SIGNAL \mux_inst|muxloop:3:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|mux_P|muxloop:4:mux_n|y~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\ : std_logic;
SIGNAL \mux_inst|muxloop:4:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\ : std_logic;
SIGNAL \multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:4:addrn|carryFromBi~combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|mux_P|muxloop:5:mux_n|y~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\ : std_logic;
SIGNAL \mux_inst|muxloop:5:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|mux_P|muxloop:6:mux_n|y~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\ : std_logic;
SIGNAL \mux_inst|muxloop:6:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:6:addrn|carryFromBi~combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|mux_P|muxloop:7:mux_n|y~0_combout\ : std_logic;
SIGNAL \multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\ : std_logic;
SIGNAL \mux_inst|muxloop:7:mux_n|muxfinal|y~0_combout\ : std_logic;
SIGNAL \mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ : std_logic;
SIGNAL \CarryOut~0_combout\ : std_logic;
SIGNAL \ZeroOut~1_combout\ : std_logic;
SIGNAL \ZeroOut~0_combout\ : std_logic;
SIGNAL \ZeroOut~2_combout\ : std_logic;
SIGNAL \divider_inst|dataPath|adder|loop_add:7:addrn|o_CarryOut~0_combout\ : std_logic;
SIGNAL \OverflowOut~0_combout\ : std_logic;
SIGNAL \OverflowOut~2_combout\ : std_logic;
SIGNAL \OverflowOut~3_combout\ : std_logic;
SIGNAL \OverflowOut~4_combout\ : std_logic;
SIGNAL \multiplier_inst|controlPath|state_in\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \divider_inst|controlPath|state_in\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_GReset~inputclkctrl_outclk\ : std_logic;
SIGNAL \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\ : std_logic;
SIGNAL \ALT_INV_ZeroOut~2_combout\ : std_logic;

BEGIN

ww_GClock <= GClock;
ww_GReset <= GReset;
ww_OperandA <= OperandA;
ww_OperandB <= OperandB;
ww_OperationSelect <= OperationSelect;
MuxOut <= ww_MuxOut;
CarryOut <= ww_CarryOut;
ZeroOut <= ww_ZeroOut;
OverflowOut <= ww_OverflowOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\GReset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GReset~input_o\);

\GClock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GClock~input_o\);
\ALT_INV_GReset~inputclkctrl_outclk\ <= NOT \GReset~inputclkctrl_outclk\;
\divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\ <= NOT \divider_inst|controlPath|stateReg0|int_q~q\;
\ALT_INV_ZeroOut~2_combout\ <= NOT \ZeroOut~2_combout\;

-- Location: FF_X8_Y27_N1
\multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0_combout\,
	asdata => \multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\);

-- Location: FF_X8_Y27_N31
\multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0_combout\,
	asdata => \multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\);

-- Location: FF_X8_Y27_N15
\multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0_combout\,
	asdata => \multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\);

-- Location: LCCOMB_X8_Y27_N0
\multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0_combout\ = (\OperandA[3]~input_o\ & (!\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\)) # (!\OperandA[3]~input_o\ & 
-- ((\multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\,
	datad => \OperandA[3]~input_o\,
	combout => \multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X8_Y27_N30
\multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0_combout\ = (\OperandA[3]~input_o\ & (!\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\)) # (!\OperandA[3]~input_o\ & 
-- ((\multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \OperandA[3]~input_o\,
	datad => \multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\,
	combout => \multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X8_Y27_N14
\multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0_combout\ = (\OperandA[3]~input_o\ & (!\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\)) # (!\OperandA[3]~input_o\ & 
-- ((\multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\,
	datad => \OperandA[3]~input_o\,
	combout => \multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~0_combout\);

-- Location: FF_X7_Y27_N27
\multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0_combout\,
	asdata => \multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\);

-- Location: LCCOMB_X7_Y27_N26
\multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0_combout\ = (\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\))) # 
-- (!\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\OperandB[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \OperandB[1]~input_o\,
	datad => \multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\,
	combout => \multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X3_Y26_N22
\adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\ = (\OperandB[0]~input_o\ & (\OperandA[0]~input_o\ $ (\OperationSelect[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OperandA[0]~input_o\,
	datac => \OperandB[0]~input_o\,
	datad => \OperationSelect[0]~input_o\,
	combout => \adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X3_Y26_N12
\adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\ = (\adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\ & ((\OperandB[1]~input_o\ & ((!\OperationSelect[0]~input_o\))) # (!\OperandB[1]~input_o\ & (\OperandA[1]~input_o\)))) # 
-- (!\adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\ & ((\OperandB[1]~input_o\ & (\OperandA[1]~input_o\)) # (!\OperandB[1]~input_o\ & ((\OperationSelect[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[1]~input_o\,
	datab => \OperationSelect[0]~input_o\,
	datac => \adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~0_combout\,
	datad => \OperandB[1]~input_o\,
	combout => \adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\);

-- Location: FF_X3_Y27_N3
\divider_inst|dataPath|quotient_reg|regloop:7:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~1_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|quotient_reg|regloop:7:bit_n|int_q~q\);

-- Location: FF_X3_Y27_N5
\divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\);

-- Location: LCCOMB_X3_Y27_N10
\divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\ = (\divider_inst|controlPath|addSel0~combout\ & ((\divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\) # ((\divider_inst|controlPath|addSel1~combout\)))) # 
-- (!\divider_inst|controlPath|addSel0~combout\ & (((!\divider_inst|controlPath|addSel1~combout\ & \divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|addSel0~combout\,
	datab => \divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\,
	datac => \divider_inst|controlPath|addSel1~combout\,
	datad => \divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~q\,
	combout => \divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X3_Y27_N12
\divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\ = (\divider_inst|controlPath|addSel1~combout\ & ((\divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\ & (\OperandA[3]~input_o\)) # 
-- (!\divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\ & ((\OperandB[2]~input_o\))))) # (!\divider_inst|controlPath|addSel1~combout\ & (((\divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[3]~input_o\,
	datab => \OperandB[2]~input_o\,
	datac => \divider_inst|controlPath|addSel1~combout\,
	datad => \divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~0_combout\,
	combout => \divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X3_Y27_N14
\divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ = \divider_inst|controlPath|sub~combout\ $ (\divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divider_inst|controlPath|sub~combout\,
	datad => \divider_inst|dataPath|inputB_mux|muxloop:6:mux_n|muxfinal|y~1_combout\,
	combout => \divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\);

-- Location: FF_X4_Y27_N27
\divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|remainder_mux|muxloop:5:mux_n|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\);

-- Location: FF_X5_Y27_N5
\divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|remainder_mux|muxloop:4:mux_n|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\);

-- Location: LCCOMB_X6_Y27_N24
\divider_inst|dataPath|adder|add_0|carryFromBoth\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|add_0|carryFromBoth~combout\ = (\divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & (\divider_inst|controlPath|selZ~0_combout\ & \divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datac => \divider_inst|controlPath|selZ~0_combout\,
	datad => \divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\,
	combout => \divider_inst|dataPath|adder|add_0|carryFromBoth~combout\);

-- Location: LCCOMB_X6_Y27_N12
\divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~2_combout\ = (\divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\) # ((\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # ((\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) # 
-- (\divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datab => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	combout => \divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~2_combout\);

-- Location: LCCOMB_X8_Y26_N8
\multiplier_inst|dataPath|adder|loop_add:7:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|adder|loop_add:7:addrn|o_CarryOut~0_combout\ = (\multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\ & ((\multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\) # 
-- ((\multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\ & \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\)))) # (!\multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\ & 
-- (\multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\ & (\multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\,
	datab => \multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\,
	datac => \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	combout => \multiplier_inst|dataPath|adder|loop_add:7:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X2_Y27_N6
\divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~0_combout\ = (\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\OperandA[3]~input_o\)) # (!\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- (((\divider_inst|controlPath|selZ~0_combout\ & \divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[3]~input_o\,
	datab => \divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \divider_inst|controlPath|selZ~0_combout\,
	datad => \divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\,
	combout => \divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~0_combout\);

-- Location: FF_X8_Y27_N5
\divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\);

-- Location: LCCOMB_X2_Y27_N10
\divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~0_combout\ = (\divider_inst|controlPath|shiftQuot~combout\ & (\divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\)) # (!\divider_inst|controlPath|shiftQuot~combout\ & 
-- (((\divider_inst|controlPath|selZ~0_combout\ & \divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|quotient_reg|regloop:6:bit_n|int_q~q\,
	datab => \divider_inst|controlPath|shiftQuot~combout\,
	datac => \divider_inst|controlPath|selZ~0_combout\,
	datad => \divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\,
	combout => \divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~0_combout\);

-- Location: LCCOMB_X3_Y27_N2
\divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~1_combout\ = \divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~0_combout\ $ (((!\divider_inst|controlPath|shiftQuot~combout\ & (\divider_inst|dataPath|adder|loop_add:7:addrn|xor_Bi~combout\ $ 
-- (\divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~0_combout\,
	datab => \divider_inst|dataPath|adder|loop_add:7:addrn|xor_Bi~combout\,
	datac => \divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	datad => \divider_inst|controlPath|shiftQuot~combout\,
	combout => \divider_inst|dataPath|quotient_reg|mux_msb|mux1|y~1_combout\);

-- Location: LCCOMB_X4_Y27_N26
\divider_inst|dataPath|remainder_mux|muxloop:5:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|remainder_mux|muxloop:5:mux_n|y~0_combout\ = (\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\OperandA[3]~input_o\)) # (!\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[3]~input_o\,
	datab => \divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	combout => \divider_inst|dataPath|remainder_mux|muxloop:5:mux_n|y~0_combout\);

-- Location: LCCOMB_X5_Y27_N4
\divider_inst|dataPath|remainder_mux|muxloop:4:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|remainder_mux|muxloop:4:mux_n|y~0_combout\ = (\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\OperandA[3]~input_o\)) # (!\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[3]~input_o\,
	datac => \divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datad => \divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	combout => \divider_inst|dataPath|remainder_mux|muxloop:4:mux_n|y~0_combout\);

-- Location: LCCOMB_X8_Y27_N2
\multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\ = (\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & ((\OperandA[2]~input_o\) # ((\OperandA[1]~input_o\) # (\OperandA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[2]~input_o\,
	datab => \OperandA[1]~input_o\,
	datac => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \OperandA[0]~input_o\,
	combout => \multiplier_inst|dataPath|reg_A_left_shift|muxloop:5:mux_n|mux1|y~0_combout\);

-- Location: LCCOMB_X7_Y27_N14
\multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\ = (\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & !\OverflowOut~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \OverflowOut~0_combout\,
	combout => \multiplier_inst|dataPath|reg_A_left_shift|muxloop:6:mux_n|mux1|y~0_combout\);

-- Location: LCCOMB_X2_Y27_N16
\divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\ = (!\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\ & (!\divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\ & 
-- !\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\,
	datac => \divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	datad => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	combout => \divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\);

-- Location: LCCOMB_X9_Y26_N24
\multiplier_inst|dataPath|beq0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|beq0~1_combout\ = (\multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\) # ((\multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\) # 
-- ((\multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\) # (\multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\,
	datab => \multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\,
	datac => \multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\,
	datad => \multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\,
	combout => \multiplier_inst|dataPath|beq0~1_combout\);

-- Location: LCCOMB_X8_Y27_N4
\divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0_combout\ = \divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\ $ (((\divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & 
-- (\divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\ & \divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datab => \divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	datac => \divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\,
	datad => \divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\,
	combout => \divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0_combout\);

-- Location: LCCOMB_X7_Y27_N16
\multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\ = \OperandB[1]~input_o\ $ (\OperandB[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OperandB[1]~input_o\,
	datad => \OperandB[0]~input_o\,
	combout => \multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:1:addrn|o_Sum~combout\);

-- Location: LCCOMB_X3_Y27_N4
\divider_inst|dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2_combout\ = (\divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\)) # 
-- (!\divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & ((\divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (\divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\)) # (!\divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & 
-- ((\divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\,
	datac => \divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datad => \divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	combout => \divider_inst|dataPath|quotient_reg|muxloop:6:mux_n|mux1|y~2_combout\);

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

-- Location: IOOBUF_X0_Y32_N16
\MuxOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\,
	devoe => ww_devoe,
	o => \MuxOut[0]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\MuxOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\,
	devoe => ww_devoe,
	o => \MuxOut[1]~output_o\);

-- Location: IOOBUF_X0_Y24_N2
\MuxOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\,
	devoe => ww_devoe,
	o => \MuxOut[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\MuxOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\,
	devoe => ww_devoe,
	o => \MuxOut[3]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\MuxOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\,
	devoe => ww_devoe,
	o => \MuxOut[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\MuxOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\,
	devoe => ww_devoe,
	o => \MuxOut[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\MuxOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\,
	devoe => ww_devoe,
	o => \MuxOut[6]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\MuxOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\,
	devoe => ww_devoe,
	o => \MuxOut[7]~output_o\);

-- Location: IOOBUF_X0_Y24_N9
\CarryOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CarryOut~0_combout\,
	devoe => ww_devoe,
	o => \CarryOut~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\ZeroOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ZeroOut~2_combout\,
	devoe => ww_devoe,
	o => \ZeroOut~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\OverflowOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \OverflowOut~4_combout\,
	devoe => ww_devoe,
	o => \OverflowOut~output_o\);

-- Location: IOIBUF_X0_Y24_N15
\OperationSelect[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperationSelect(1),
	o => \OperationSelect[1]~input_o\);

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

-- Location: LCCOMB_X8_Y27_N22
\divider_inst|controlPath|stateReg0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|controlPath|stateReg0|int_q~feeder_combout\ = \GReset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GReset~input_o\,
	combout => \divider_inst|controlPath|stateReg0|int_q~feeder_combout\);

-- Location: FF_X8_Y27_N23
\divider_inst|controlPath|stateReg0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|controlPath|stateReg0|int_q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|controlPath|stateReg0|int_q~q\);

-- Location: IOIBUF_X0_Y27_N22
\OperandA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandA(3),
	o => \OperandA[3]~input_o\);

-- Location: LCCOMB_X2_Y27_N8
\divider_inst|controlPath|state_in[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|controlPath|state_in\(2) = (\divider_inst|controlPath|stateReg0|int_q~q\ & !\OperandA[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divider_inst|controlPath|stateReg0|int_q~q\,
	datad => \OperandA[3]~input_o\,
	combout => \divider_inst|controlPath|state_in\(2));

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

-- Location: FF_X2_Y27_N9
\divider_inst|controlPath|stateRegloop:2:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|controlPath|state_in\(2),
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\);

-- Location: IOIBUF_X0_Y27_N15
\OperandB[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandB(3),
	o => \OperandB[3]~input_o\);

-- Location: LCCOMB_X7_Y27_N12
\divider_inst|controlPath|state_in[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|controlPath|state_in[3]~0_combout\ = (\OperandB[3]~input_o\ & ((\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) # (\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datac => \divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datad => \OperandB[3]~input_o\,
	combout => \divider_inst|controlPath|state_in[3]~0_combout\);

-- Location: FF_X6_Y27_N17
\divider_inst|controlPath|stateRegloop:3:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \divider_inst|controlPath|state_in[3]~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\);

-- Location: LCCOMB_X7_Y27_N10
\divider_inst|controlPath|state_in[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|controlPath|state_in\(1) = (\divider_inst|controlPath|stateReg0|int_q~q\ & \OperandA[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divider_inst|controlPath|stateReg0|int_q~q\,
	datad => \OperandA[3]~input_o\,
	combout => \divider_inst|controlPath|state_in\(1));

-- Location: FF_X6_Y27_N23
\divider_inst|controlPath|stateRegloop:1:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \divider_inst|controlPath|state_in\(1),
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\);

-- Location: LCCOMB_X4_Y26_N14
\divider_inst|dataPath|int_sign_in~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|int_sign_in~0_combout\ = \OperandB[3]~input_o\ $ (\OperandA[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OperandB[3]~input_o\,
	datac => \OperandA[3]~input_o\,
	combout => \divider_inst|dataPath|int_sign_in~0_combout\);

-- Location: LCCOMB_X5_Y26_N12
\divider_inst|dataPath|sign_reg|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|sign_reg|int_q~feeder_combout\ = \divider_inst|dataPath|int_sign_in~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divider_inst|dataPath|int_sign_in~0_combout\,
	combout => \divider_inst|dataPath|sign_reg|int_q~feeder_combout\);

-- Location: FF_X5_Y26_N13
\divider_inst|dataPath|sign_reg|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|sign_reg|int_q~feeder_combout\,
	ena => \divider_inst|controlPath|stateReg0|int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|sign_reg|int_q~q\);

-- Location: LCCOMB_X6_Y27_N28
\divider_inst|controlPath|sub\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|controlPath|sub~combout\ = (\divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\) # ((\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # ((\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) # 
-- (\divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datab => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	combout => \divider_inst|controlPath|sub~combout\);

-- Location: LCCOMB_X6_Y27_N30
\divider_inst|controlPath|addSel1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|controlPath|addSel1~combout\ = (\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) # (\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	combout => \divider_inst|controlPath|addSel1~combout\);

-- Location: LCCOMB_X6_Y27_N0
\divider_inst|controlPath|addSel0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|controlPath|addSel0~combout\ = (\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) # (\divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	combout => \divider_inst|controlPath|addSel0~combout\);

-- Location: IOIBUF_X0_Y25_N15
\OperandB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandB(1),
	o => \OperandB[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\OperandA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandA(2),
	o => \OperandA[2]~input_o\);

-- Location: LCCOMB_X6_Y27_N10
\divider_inst|dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\ = (\divider_inst|controlPath|addSel0~combout\ & ((\divider_inst|controlPath|addSel1~combout\ & ((\OperandA[2]~input_o\))) # (!\divider_inst|controlPath|addSel1~combout\ & 
-- (\divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\,
	datab => \OperandA[2]~input_o\,
	datac => \divider_inst|controlPath|addSel1~combout\,
	datad => \divider_inst|controlPath|addSel0~combout\,
	combout => \divider_inst|dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X5_Y27_N14
\divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ = \divider_inst|controlPath|sub~combout\ $ (((\divider_inst|dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\) # ((\divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q~q\ & 
-- \divider_inst|controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q~q\,
	datab => \divider_inst|controlPath|selZ~0_combout\,
	datac => \divider_inst|dataPath|inputB_mux|muxloop:2:mux_n|muxfinal|y~0_combout\,
	datad => \divider_inst|controlPath|sub~combout\,
	combout => \divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\);

-- Location: IOIBUF_X0_Y29_N15
\OperandA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandA(1),
	o => \OperandA[1]~input_o\);

-- Location: LCCOMB_X5_Y27_N0
\divider_inst|dataPath|remainder_mux|muxloop:1:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|remainder_mux|muxloop:1:mux_n|y~0_combout\ = (\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & ((\OperandA[1]~input_o\))) # (!\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- (\divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\,
	datab => \divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datad => \OperandA[1]~input_o\,
	combout => \divider_inst|dataPath|remainder_mux|muxloop:1:mux_n|y~0_combout\);

-- Location: LCCOMB_X6_Y27_N22
\divider_inst|controlPath|ldRem~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|controlPath|ldRem~0_combout\ = (\divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\) # ((\divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\) # ((\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) # 
-- (\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datab => \divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	combout => \divider_inst|controlPath|ldRem~0_combout\);

-- Location: FF_X5_Y27_N1
\divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|remainder_mux|muxloop:1:mux_n|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\);

-- Location: LCCOMB_X5_Y27_N16
\divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ = (!\divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\ & (!\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\ & 
-- !\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	datab => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\,
	datad => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	combout => \divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\);

-- Location: LCCOMB_X5_Y27_N12
\divider_inst|dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0_combout\ = (\divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (\divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q~q\)) # 
-- (!\divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (((\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & \divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q~q\,
	datab => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datad => \divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\,
	combout => \divider_inst|dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X2_Y27_N18
\divider_inst|controlPath|state_in[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|controlPath|state_in[4]~5_combout\ = (!\OperandB[3]~input_o\ & ((\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) # (\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \OperandB[3]~input_o\,
	datac => \divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	combout => \divider_inst|controlPath|state_in[4]~5_combout\);

-- Location: FF_X2_Y27_N19
\divider_inst|controlPath|stateRegloop:4:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|controlPath|state_in[4]~5_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\);

-- Location: LCCOMB_X2_Y27_N20
\divider_inst|controlPath|state_in~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|controlPath|state_in~3_combout\ = (\divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\) # ((\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # (\divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\,
	datac => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	combout => \divider_inst|controlPath|state_in~3_combout\);

-- Location: FF_X5_Y27_N13
\divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|divisor_reg|muxloop:2:mux_n|muxfinal|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q~q\);

-- Location: LCCOMB_X5_Y27_N22
\divider_inst|dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0_combout\ = (\divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (((\divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q~q\)))) # 
-- (!\divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (\divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\ & (\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\,
	datab => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datad => \divider_inst|dataPath|divisor_reg|regloop:2:bit_n|int_q~q\,
	combout => \divider_inst|dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0_combout\);

-- Location: FF_X5_Y27_N23
\divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|divisor_reg|muxloop:1:mux_n|muxfinal|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q~q\);

-- Location: LCCOMB_X6_Y27_N14
\divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~4_combout\ = (\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) # ((\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # (!\divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q~q\,
	combout => \divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~4_combout\);

-- Location: LCCOMB_X7_Y27_N4
\divider_inst|dataPath|quotient_reg|mux_0|mux1|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|quotient_reg|mux_0|mux1|y~0_combout\ = (\divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\) # ((!\divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \divider_inst|dataPath|adder|add_0|o_Sum~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datab => \divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \divider_inst|dataPath|adder|add_0|o_Sum~combout\,
	combout => \divider_inst|dataPath|quotient_reg|mux_0|mux1|y~0_combout\);

-- Location: LCCOMB_X8_Y27_N20
\divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0_combout\ = \divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ $ (\divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datac => \divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	combout => \divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0_combout\);

-- Location: FF_X8_Y27_N21
\divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\);

-- Location: LCCOMB_X8_Y27_N6
\divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0_combout\ = \divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\ $ (((\divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & 
-- \divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datac => \divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\,
	datad => \divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	combout => \divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0_combout\);

-- Location: FF_X8_Y27_N7
\divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\);

-- Location: LCCOMB_X7_Y27_N0
\divider_inst|controlPath|state_in[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|controlPath|state_in[5]~4_combout\ = (\divider_inst|controlPath|state_in~3_combout\ & (((\divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\) # (!\divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\)) # 
-- (!\divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\,
	datab => \divider_inst|controlPath|state_in~3_combout\,
	datac => \divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	datad => \divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\,
	combout => \divider_inst|controlPath|state_in[5]~4_combout\);

-- Location: FF_X6_Y27_N27
\divider_inst|controlPath|stateRegloop:5:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \divider_inst|controlPath|state_in[5]~4_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\);

-- Location: LCCOMB_X3_Y27_N22
\divider_inst|controlPath|state_in[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|controlPath|state_in\(6) = (\divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & (\divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\ $ (\divider_inst|dataPath|adder|loop_add:7:addrn|xor_Bi~combout\ $ 
-- (!\divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\,
	datab => \divider_inst|dataPath|adder|loop_add:7:addrn|xor_Bi~combout\,
	datac => \divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	datad => \divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	combout => \divider_inst|controlPath|state_in\(6));

-- Location: FF_X3_Y27_N23
\divider_inst|controlPath|stateRegloop:6:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|controlPath|state_in\(6),
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\);

-- Location: LCCOMB_X2_Y27_N14
\divider_inst|dataPath|quotient_reg|int_enable\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|quotient_reg|int_enable~combout\ = (\divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\) # ((\divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\) # (\divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	datac => \divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	combout => \divider_inst|dataPath|quotient_reg|int_enable~combout\);

-- Location: FF_X7_Y27_N5
\divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|quotient_reg|mux_0|mux1|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\);

-- Location: LCCOMB_X5_Y27_N8
\divider_inst|dataPath|divisor_reg|mux_0|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|divisor_reg|mux_0|muxfinal|y~0_combout\ = (\divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (\divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q~q\)) # (!\divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- (((\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & \divider_inst|dataPath|adder|add_0|o_Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|divisor_reg|regloop:1:bit_n|int_q~q\,
	datab => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datad => \divider_inst|dataPath|adder|add_0|o_Sum~combout\,
	combout => \divider_inst|dataPath|divisor_reg|mux_0|muxfinal|y~0_combout\);

-- Location: FF_X5_Y27_N9
\divider_inst|dataPath|divisor_reg|regloop:0:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|divisor_reg|mux_0|muxfinal|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|divisor_reg|regloop:0:bit_n|int_q~q\);

-- Location: LCCOMB_X6_Y27_N6
\divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\ = (\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\OperandA[0]~input_o\)) # (!\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & 
-- ((\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & (\OperandA[0]~input_o\)) # (!\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & ((\divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[0]~input_o\,
	datab => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\,
	combout => \divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X5_Y27_N2
\divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\ = (\divider_inst|controlPath|addSel0~combout\ & (((\divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\)))) # (!\divider_inst|controlPath|addSel0~combout\ & 
-- (!\divider_inst|controlPath|addSel1~combout\ & (\divider_inst|dataPath|divisor_reg|regloop:0:bit_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|addSel1~combout\,
	datab => \divider_inst|dataPath|divisor_reg|regloop:0:bit_n|int_q~q\,
	datac => \divider_inst|controlPath|addSel0~combout\,
	datad => \divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~0_combout\,
	combout => \divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X5_Y27_N28
\divider_inst|dataPath|adder|add_0|carryFromBi\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|add_0|carryFromBi~combout\ = (\divider_inst|controlPath|selZ~0_combout\ & ((\divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\ & ((\divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\) # 
-- (!\divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\))) # (!\divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\ & ((\divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\) # 
-- (!\divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\))))) # (!\divider_inst|controlPath|selZ~0_combout\ & (((\divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\,
	datab => \divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datac => \divider_inst|controlPath|selZ~0_combout\,
	datad => \divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\,
	combout => \divider_inst|dataPath|adder|add_0|carryFromBi~combout\);

-- Location: LCCOMB_X5_Y27_N6
\divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\ = \divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\ $ (\divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ $ 
-- (((\divider_inst|dataPath|adder|add_0|carryFromBoth~combout\) # (!\divider_inst|dataPath|adder|add_0|carryFromBi~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|adder|add_0|carryFromBoth~combout\,
	datab => \divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\,
	datac => \divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\,
	datad => \divider_inst|dataPath|adder|add_0|carryFromBi~combout\,
	combout => \divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\);

-- Location: LCCOMB_X7_Y27_N18
\divider_inst|dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2_combout\ = (\divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (((\divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\)))) # 
-- (!\divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\)) # (!\divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & 
-- ((\divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datab => \divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\,
	datad => \divider_inst|dataPath|adder|loop_add:1:addrn|o_Sum~combout\,
	combout => \divider_inst|dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2_combout\);

-- Location: FF_X7_Y27_N19
\divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|quotient_reg|muxloop:1:mux_n|mux1|y~2_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\);

-- Location: LCCOMB_X6_Y27_N18
\divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~3_combout\ = (\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & (((!\OperandA[1]~input_o\)))) # (!\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & 
-- ((\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (!\OperandA[1]~input_o\)) # (!\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((!\divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \OperandA[1]~input_o\,
	datad => \divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\,
	combout => \divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~3_combout\);

-- Location: LCCOMB_X6_Y27_N4
\divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\ = \divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~2_combout\ $ (((\divider_inst|controlPath|addSel0~combout\ & ((!\divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~3_combout\))) # 
-- (!\divider_inst|controlPath|addSel0~combout\ & (!\divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~2_combout\,
	datab => \divider_inst|controlPath|addSel0~combout\,
	datac => \divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~4_combout\,
	datad => \divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~3_combout\,
	combout => \divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X4_Y27_N20
\divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ = (\divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ & ((\divider_inst|dataPath|adder|add_0|carryFromBoth~combout\) # 
-- ((\divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\) # (!\divider_inst|dataPath|adder|add_0|carryFromBi~combout\)))) # (!\divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\ & 
-- (\divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\ & ((\divider_inst|dataPath|adder|add_0|carryFromBoth~combout\) # (!\divider_inst|dataPath|adder|add_0|carryFromBi~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|adder|add_0|carryFromBoth~combout\,
	datab => \divider_inst|dataPath|inputA_mux|muxloop:1:mux_n|selX0~combout\,
	datac => \divider_inst|dataPath|adder|loop_add:1:addrn|xor_Bi~combout\,
	datad => \divider_inst|dataPath|adder|add_0|carryFromBi~combout\,
	combout => \divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X5_Y27_N20
\divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\ = \divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ $ (\divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ $ 
-- (((\divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\ & \divider_inst|controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\,
	datab => \divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\,
	datac => \divider_inst|controlPath|selZ~0_combout\,
	datad => \divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\,
	combout => \divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\);

-- Location: LCCOMB_X7_Y27_N2
\divider_inst|dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2_combout\ = (\divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (((\divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\)))) # 
-- (!\divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & ((\divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\))) # (!\divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & 
-- (\divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datab => \divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\,
	datad => \divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\,
	combout => \divider_inst|dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2_combout\);

-- Location: FF_X7_Y27_N3
\divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|quotient_reg|muxloop:2:mux_n|mux1|y~2_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\);

-- Location: LCCOMB_X5_Y27_N24
\divider_inst|dataPath|remainder_mux|muxloop:3:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|remainder_mux|muxloop:3:mux_n|y~0_combout\ = (\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\OperandA[3]~input_o\)) # (!\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[3]~input_o\,
	datab => \divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datad => \divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\,
	combout => \divider_inst|dataPath|remainder_mux|muxloop:3:mux_n|y~0_combout\);

-- Location: FF_X5_Y27_N25
\divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|remainder_mux|muxloop:3:mux_n|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\);

-- Location: LCCOMB_X5_Y27_N26
\divider_inst|dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0_combout\ = (\divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (\divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~q\)) # 
-- (!\divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (((\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & \divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~q\,
	datab => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datad => \divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\,
	combout => \divider_inst|dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0_combout\);

-- Location: FF_X5_Y27_N27
\divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|divisor_reg|muxloop:3:mux_n|muxfinal|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q~q\);

-- Location: LCCOMB_X4_Y27_N16
\divider_inst|dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\ = (\divider_inst|controlPath|addSel0~combout\ & ((\divider_inst|controlPath|addSel1~combout\ & ((\OperandA[3]~input_o\))) # (!\divider_inst|controlPath|addSel1~combout\ & 
-- (\divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\,
	datab => \OperandA[3]~input_o\,
	datac => \divider_inst|controlPath|addSel0~combout\,
	datad => \divider_inst|controlPath|addSel1~combout\,
	combout => \divider_inst|dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X4_Y27_N22
\divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ = \divider_inst|controlPath|sub~combout\ $ (((\divider_inst|dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\) # ((\divider_inst|controlPath|selZ~0_combout\ & 
-- \divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|selZ~0_combout\,
	datab => \divider_inst|dataPath|divisor_reg|regloop:3:bit_n|int_q~q\,
	datac => \divider_inst|controlPath|sub~combout\,
	datad => \divider_inst|dataPath|inputB_mux|muxloop:3:mux_n|muxfinal|y~0_combout\,
	combout => \divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X5_Y27_N18
\divider_inst|dataPath|remainder_mux|muxloop:2:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|remainder_mux|muxloop:2:mux_n|y~0_combout\ = (\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\OperandA[2]~input_o\)) # (!\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[2]~input_o\,
	datac => \divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datad => \divider_inst|dataPath|adder|loop_add:2:addrn|o_Sum~combout\,
	combout => \divider_inst|dataPath|remainder_mux|muxloop:2:mux_n|y~0_combout\);

-- Location: FF_X5_Y27_N19
\divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|remainder_mux|muxloop:2:mux_n|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\);

-- Location: LCCOMB_X4_Y27_N6
\divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ = (\divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ & ((\divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\) # ((\divider_inst|controlPath|selZ~0_combout\ & 
-- \divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\)))) # (!\divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\ & (\divider_inst|controlPath|selZ~0_combout\ & (\divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\ & 
-- \divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|selZ~0_combout\,
	datab => \divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\,
	datac => \divider_inst|dataPath|adder|loop_add:2:addrn|xor_Bi~combout\,
	datad => \divider_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\,
	combout => \divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X4_Y27_N12
\divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\ = \divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ $ (\divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ $ (((\divider_inst|controlPath|selZ~0_combout\ & 
-- \divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|selZ~0_combout\,
	datab => \divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\,
	datac => \divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\,
	datad => \divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\,
	combout => \divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\);

-- Location: LCCOMB_X3_Y27_N8
\divider_inst|dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2_combout\ = (\divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (\divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\)) # 
-- (!\divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\)) # (!\divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & 
-- ((\divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datab => \divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\,
	datac => \divider_inst|dataPath|adder|loop_add:3:addrn|o_Sum~combout\,
	datad => \divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \divider_inst|dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2_combout\);

-- Location: FF_X3_Y27_N9
\divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|quotient_reg|muxloop:3:mux_n|mux1|y~2_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\);

-- Location: IOIBUF_X0_Y28_N15
\OperandB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandB(0),
	o => \OperandB[0]~input_o\);

-- Location: LCCOMB_X2_Y27_N30
\divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~0_combout\ = (\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\))) # 
-- (!\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\OperandB[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \OperandB[0]~input_o\,
	datad => \divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	combout => \divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X4_Y27_N28
\divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ = (\divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ & ((\divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\) # ((\divider_inst|controlPath|selZ~0_combout\ & 
-- \divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\)))) # (!\divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\ & (\divider_inst|controlPath|selZ~0_combout\ & (\divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\ & 
-- \divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|selZ~0_combout\,
	datab => \divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\,
	datac => \divider_inst|dataPath|adder|loop_add:3:addrn|xor_Bi~combout\,
	datad => \divider_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\,
	combout => \divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X4_Y27_N2
\divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ = (\divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ & ((\divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\) # 
-- ((\divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\ & \divider_inst|controlPath|selZ~0_combout\)))) # (!\divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ & (\divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\ & 
-- (\divider_inst|controlPath|selZ~0_combout\ & \divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\,
	datab => \divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\,
	datac => \divider_inst|controlPath|selZ~0_combout\,
	datad => \divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X4_Y27_N4
\divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ = \divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ $ (\divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ $ 
-- (((\divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\ & \divider_inst|controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\,
	datab => \divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\,
	datac => \divider_inst|controlPath|selZ~0_combout\,
	datad => \divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\,
	combout => \divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X2_Y27_N4
\divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~0_combout\ = (\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\))) # 
-- (!\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\OperandB[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \OperandB[1]~input_o\,
	datad => \divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	combout => \divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~0_combout\);

-- Location: IOIBUF_X0_Y28_N22
\OperandB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandB(2),
	o => \OperandB[2]~input_o\);

-- Location: LCCOMB_X4_Y27_N24
\divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~0_combout\ = (\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\))) # 
-- (!\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\OperandB[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \OperandB[2]~input_o\,
	datad => \divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	combout => \divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~0_combout\);

-- Location: FF_X4_Y27_N25
\divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~0_combout\,
	asdata => \divider_inst|dataPath|divisor_reg|regloop:7:bit_n|int_q~q\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	ena => \divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~q\);

-- Location: FF_X2_Y27_N5
\divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~0_combout\,
	asdata => \divider_inst|dataPath|divisor_reg|regloop:6:bit_n|int_q~q\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	ena => \divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~q\);

-- Location: FF_X2_Y27_N31
\divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~0_combout\,
	asdata => \divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~q\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	ena => \divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~q\);

-- Location: LCCOMB_X3_Y27_N30
\divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\ = (\divider_inst|controlPath|addSel1~combout\ & ((\OperandB[0]~input_o\) # ((\divider_inst|controlPath|addSel0~combout\)))) # (!\divider_inst|controlPath|addSel1~combout\ & 
-- (((\divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~q\ & !\divider_inst|controlPath|addSel0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[0]~input_o\,
	datab => \divider_inst|dataPath|divisor_reg|regloop:4:bit_n|int_q~q\,
	datac => \divider_inst|controlPath|addSel1~combout\,
	datad => \divider_inst|controlPath|addSel0~combout\,
	combout => \divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X3_Y27_N20
\divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\ = (\divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\ & ((\OperandA[3]~input_o\) # ((!\divider_inst|controlPath|addSel0~combout\)))) # 
-- (!\divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\ & (((\divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\ & \divider_inst|controlPath|addSel0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[3]~input_o\,
	datab => \divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\,
	datac => \divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~0_combout\,
	datad => \divider_inst|controlPath|addSel0~combout\,
	combout => \divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X3_Y27_N6
\divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ = \divider_inst|controlPath|sub~combout\ $ (\divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divider_inst|controlPath|sub~combout\,
	datad => \divider_inst|dataPath|inputB_mux|muxloop:4:mux_n|muxfinal|y~1_combout\,
	combout => \divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X4_Y27_N10
\divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ = \divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\ $ (\divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ $ 
-- (((\divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\ & \divider_inst|controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|remainder_reg|reg_n_bits:4:b|int_q~q\,
	datab => \divider_inst|dataPath|adder|loop_add:4:addrn|xor_Bi~combout\,
	datac => \divider_inst|controlPath|selZ~0_combout\,
	datad => \divider_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X3_Y27_N0
\divider_inst|dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2_combout\ = (\divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (\divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\)) # 
-- (!\divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\)) # (!\divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & 
-- ((\divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datab => \divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\,
	datac => \divider_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datad => \divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \divider_inst|dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2_combout\);

-- Location: FF_X3_Y27_N1
\divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|quotient_reg|muxloop:4:mux_n|mux1|y~2_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\);

-- Location: LCCOMB_X3_Y27_N16
\divider_inst|dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2_combout\ = (\divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\)) # 
-- (!\divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & ((\divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & (\divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\)) # (!\divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & 
-- ((\divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \divider_inst|dataPath|quotient_reg|regloop:4:bit_n|int_q~q\,
	datac => \divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datad => \divider_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	combout => \divider_inst|dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2_combout\);

-- Location: FF_X3_Y27_N17
\divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|quotient_reg|muxloop:5:mux_n|mux1|y~2_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|dataPath|quotient_reg|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\);

-- Location: LCCOMB_X3_Y27_N26
\divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\ = (\divider_inst|controlPath|addSel1~combout\ & (((\divider_inst|controlPath|addSel0~combout\)))) # (!\divider_inst|controlPath|addSel1~combout\ & 
-- ((\divider_inst|controlPath|addSel0~combout\ & (\divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\)) # (!\divider_inst|controlPath|addSel0~combout\ & ((\divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|addSel1~combout\,
	datab => \divider_inst|dataPath|quotient_reg|regloop:5:bit_n|int_q~q\,
	datac => \divider_inst|dataPath|divisor_reg|regloop:5:bit_n|int_q~q\,
	datad => \divider_inst|controlPath|addSel0~combout\,
	combout => \divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X3_Y27_N28
\divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\ = (\divider_inst|controlPath|addSel1~combout\ & ((\divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\ & ((\OperandA[3]~input_o\))) # 
-- (!\divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\ & (\OperandB[1]~input_o\)))) # (!\divider_inst|controlPath|addSel1~combout\ & (((\divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|addSel1~combout\,
	datab => \OperandB[1]~input_o\,
	datac => \divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~0_combout\,
	datad => \OperandA[3]~input_o\,
	combout => \divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X3_Y27_N18
\divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ = \divider_inst|controlPath|sub~combout\ $ (\divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divider_inst|controlPath|sub~combout\,
	datad => \divider_inst|dataPath|inputB_mux|muxloop:5:mux_n|muxfinal|y~1_combout\,
	combout => \divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X4_Y27_N0
\divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ = (\divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ & ((\divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\) # 
-- ((\divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\ & \divider_inst|controlPath|selZ~0_combout\)))) # (!\divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\ & (\divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\ & 
-- (\divider_inst|controlPath|selZ~0_combout\ & \divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|remainder_reg|reg_n_bits:5:b|int_q~q\,
	datab => \divider_inst|dataPath|adder|loop_add:5:addrn|xor_Bi~combout\,
	datac => \divider_inst|controlPath|selZ~0_combout\,
	datad => \divider_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\,
	combout => \divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X4_Y27_N18
\divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\ = \divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ $ (\divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ $ 
-- (((\divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\ & \divider_inst|controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\,
	datab => \divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\,
	datac => \divider_inst|controlPath|selZ~0_combout\,
	datad => \divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\,
	combout => \divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X4_Y27_N8
\divider_inst|dataPath|remainder_mux|muxloop:6:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|remainder_mux|muxloop:6:mux_n|y~0_combout\ = (\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\OperandA[3]~input_o\)) # (!\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OperandA[3]~input_o\,
	datac => \divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datad => \divider_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	combout => \divider_inst|dataPath|remainder_mux|muxloop:6:mux_n|y~0_combout\);

-- Location: FF_X4_Y27_N9
\divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|remainder_mux|muxloop:6:mux_n|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\);

-- Location: LCCOMB_X4_Y27_N14
\divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ = (\divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ & ((\divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\) # 
-- ((\divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\ & \divider_inst|controlPath|selZ~0_combout\)))) # (!\divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\ & (\divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\ & 
-- (\divider_inst|controlPath|selZ~0_combout\ & \divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|adder|loop_add:6:addrn|xor_Bi~combout\,
	datab => \divider_inst|dataPath|remainder_reg|reg_n_bits:6:b|int_q~q\,
	datac => \divider_inst|controlPath|selZ~0_combout\,
	datad => \divider_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\,
	combout => \divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X4_Y27_N30
\divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~1_combout\ = \divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~0_combout\ $ (((!\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- (\divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ $ (\divider_inst|dataPath|adder|loop_add:7:addrn|xor_Bi~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~0_combout\,
	datab => \divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datac => \divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	datad => \divider_inst|dataPath|adder|loop_add:7:addrn|xor_Bi~combout\,
	combout => \divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~1_combout\);

-- Location: FF_X4_Y27_N31
\divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|remainder_mux|muxloop:7:mux_n|y~1_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\);

-- Location: LCCOMB_X5_Y27_N10
\divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~0_combout\ = \divider_inst|dataPath|adder|loop_add:7:addrn|xor_Bi~combout\ $ (\divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ $ 
-- (((\divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\ & \divider_inst|controlPath|selZ~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|adder|loop_add:7:addrn|xor_Bi~combout\,
	datab => \divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\,
	datac => \divider_inst|controlPath|selZ~0_combout\,
	datad => \divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	combout => \divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~0_combout\);

-- Location: LCCOMB_X5_Y27_N30
\divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~1_combout\ = (!\divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & ((\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & 
-- ((\divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~0_combout\))) # (!\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\OperandB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[3]~input_o\,
	datab => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datad => \divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~0_combout\,
	combout => \divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~1_combout\);

-- Location: FF_X5_Y27_N31
\divider_inst|dataPath|divisor_reg|regloop:7:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|divisor_reg|mux_msb|muxfinal|selX0~1_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|controlPath|state_in~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|divisor_reg|regloop:7:bit_n|int_q~q\);

-- Location: LCCOMB_X2_Y27_N24
\divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\ = (\divider_inst|controlPath|addSel0~combout\ & ((\divider_inst|dataPath|quotient_reg|regloop:7:bit_n|int_q~q\) # ((\divider_inst|controlPath|addSel1~combout\)))) # 
-- (!\divider_inst|controlPath|addSel0~combout\ & (((!\divider_inst|controlPath|addSel1~combout\ & \divider_inst|dataPath|divisor_reg|regloop:7:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|quotient_reg|regloop:7:bit_n|int_q~q\,
	datab => \divider_inst|controlPath|addSel0~combout\,
	datac => \divider_inst|controlPath|addSel1~combout\,
	datad => \divider_inst|dataPath|divisor_reg|regloop:7:bit_n|int_q~q\,
	combout => \divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X2_Y27_N2
\divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\ = (\divider_inst|controlPath|addSel1~combout\ & ((\divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\ & (\OperandA[3]~input_o\)) # 
-- (!\divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\ & ((\OperandB[3]~input_o\))))) # (!\divider_inst|controlPath|addSel1~combout\ & (((\divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[3]~input_o\,
	datab => \OperandB[3]~input_o\,
	datac => \divider_inst|controlPath|addSel1~combout\,
	datad => \divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~0_combout\,
	combout => \divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X2_Y27_N28
\divider_inst|dataPath|adder|loop_add:7:addrn|xor_Bi\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:7:addrn|xor_Bi~combout\ = \divider_inst|controlPath|sub~combout\ $ (\divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divider_inst|controlPath|sub~combout\,
	datad => \divider_inst|dataPath|inputB_mux|muxloop:7:mux_n|muxfinal|y~1_combout\,
	combout => \divider_inst|dataPath|adder|loop_add:7:addrn|xor_Bi~combout\);

-- Location: LCCOMB_X3_Y27_N24
\divider_inst|controlPath|state_in[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|controlPath|state_in\(7) = (\divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & (\divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\ $ (\divider_inst|dataPath|adder|loop_add:7:addrn|xor_Bi~combout\ $ 
-- (\divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|inputA_mux|muxloop:7:mux_n|selX0~combout\,
	datab => \divider_inst|dataPath|adder|loop_add:7:addrn|xor_Bi~combout\,
	datac => \divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	datad => \divider_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	combout => \divider_inst|controlPath|state_in\(7));

-- Location: FF_X3_Y27_N25
\divider_inst|controlPath|stateRegloop:7:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|controlPath|state_in\(7),
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\);

-- Location: LCCOMB_X2_Y27_N0
\divider_inst|controlPath|shiftQuot\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|controlPath|shiftQuot~combout\ = (\divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\) # (\divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divider_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \divider_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	combout => \divider_inst|controlPath|shiftQuot~combout\);

-- Location: LCCOMB_X2_Y27_N12
\divider_inst|controlPath|stateRegloop:8:state_n|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|controlPath|stateRegloop:8:state_n|int_q~feeder_combout\ = \divider_inst|controlPath|shiftQuot~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \divider_inst|controlPath|shiftQuot~combout\,
	combout => \divider_inst|controlPath|stateRegloop:8:state_n|int_q~feeder_combout\);

-- Location: FF_X2_Y27_N13
\divider_inst|controlPath|stateRegloop:8:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|controlPath|stateRegloop:8:state_n|int_q~feeder_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\);

-- Location: LCCOMB_X7_Y27_N22
\divider_inst|controlPath|state_in[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|controlPath|state_in[9]~1_combout\ = (\divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\ & (\divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & (\divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\ & 
-- !\divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\,
	datab => \divider_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \divider_inst|dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	datad => \divider_inst|dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\,
	combout => \divider_inst|controlPath|state_in[9]~1_combout\);

-- Location: LCCOMB_X6_Y27_N2
\divider_inst|controlPath|state_in[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|controlPath|state_in[9]~2_combout\ = (\divider_inst|dataPath|sign_reg|int_q~q\ & \divider_inst|controlPath|state_in[9]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \divider_inst|dataPath|sign_reg|int_q~q\,
	datad => \divider_inst|controlPath|state_in[9]~1_combout\,
	combout => \divider_inst|controlPath|state_in[9]~2_combout\);

-- Location: FF_X6_Y27_N3
\divider_inst|controlPath|stateRegloop:9:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|controlPath|state_in[9]~2_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\);

-- Location: LCCOMB_X6_Y27_N8
\divider_inst|controlPath|selZ~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|controlPath|selZ~0_combout\ = (!\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (!\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & !\divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datad => \divider_inst|controlPath|stateRegloop:9:state_n|int_q~q\,
	combout => \divider_inst|controlPath|selZ~0_combout\);

-- Location: LCCOMB_X6_Y27_N26
\divider_inst|dataPath|adder|add_0|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|add_0|o_Sum~combout\ = \divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\ $ (((\divider_inst|controlPath|selZ~0_combout\ & \divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|inputB_mux|muxloop:0:mux_n|muxfinal|y~1_combout\,
	datab => \divider_inst|controlPath|selZ~0_combout\,
	datad => \divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\,
	combout => \divider_inst|dataPath|adder|add_0|o_Sum~combout\);

-- Location: LCCOMB_X6_Y27_N20
\divider_inst|dataPath|remainder_mux|muxloop:0:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|remainder_mux|muxloop:0:mux_n|y~0_combout\ = (\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & (\OperandA[0]~input_o\)) # (!\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\ & 
-- ((\divider_inst|dataPath|adder|add_0|o_Sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[0]~input_o\,
	datab => \divider_inst|dataPath|adder|add_0|o_Sum~combout\,
	datad => \divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	combout => \divider_inst|dataPath|remainder_mux|muxloop:0:mux_n|y~0_combout\);

-- Location: FF_X6_Y27_N21
\divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \divider_inst|dataPath|remainder_mux|muxloop:0:mux_n|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \divider_inst|controlPath|ldRem~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\);

-- Location: LCCOMB_X7_Y27_N24
\multiplier_inst|dataPath|reg_B_right_shift|mux_0|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_B_right_shift|mux_0|muxfinal|y~0_combout\ = (\multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & (\multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\)) # 
-- (!\multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & ((\OperandB[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\,
	datab => \multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datad => \OperandB[0]~input_o\,
	combout => \multiplier_inst|dataPath|reg_B_right_shift|mux_0|muxfinal|y~0_combout\);

-- Location: LCCOMB_X7_Y27_N30
\multiplier_inst|dataPath|reg_B_right_shift|int_enable\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\ = (\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # ((\multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\) # (\divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	datad => \divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\,
	combout => \multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\);

-- Location: FF_X7_Y27_N25
\multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|reg_B_right_shift|mux_0|muxfinal|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\);

-- Location: LCCOMB_X7_Y27_N20
\multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\ = \OperandB[2]~input_o\ $ (((\OperandB[1]~input_o\) # (\OperandB[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[2]~input_o\,
	datac => \OperandB[1]~input_o\,
	datad => \OperandB[0]~input_o\,
	combout => \multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\);

-- Location: LCCOMB_X7_Y27_N8
\multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0_combout\ = (\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\))) # 
-- (!\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\OperandB[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[2]~input_o\,
	datab => \multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:2:addrn|o_Sum~combout\,
	datad => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	combout => \multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X6_Y26_N12
\multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\ = \OperandB[3]~input_o\ $ (((\OperandB[2]~input_o\) # ((\OperandB[0]~input_o\) # (\OperandB[1]~input_o\))))

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
	combout => \multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\);

-- Location: LCCOMB_X9_Y26_N16
\multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0_combout\ = (\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\))) # 
-- (!\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\OperandB[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \OperandB[3]~input_o\,
	datad => \multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:3:addrn|o_Sum~combout\,
	combout => \multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X6_Y26_N10
\multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\ = (!\OperandB[3]~input_o\ & ((\OperandB[2]~input_o\) # ((\OperandB[0]~input_o\) # (\OperandB[1]~input_o\))))

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
	combout => \multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X9_Y26_N22
\multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0_combout\ = (\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\))) # 
-- (!\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & (\OperandB[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \OperandB[3]~input_o\,
	datad => \multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\,
	combout => \multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X6_Y26_N26
\multiplier_inst|dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\ = (\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\OperandB[1]~input_o\) # ((\OperandB[0]~input_o\) # (\OperandB[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[1]~input_o\,
	datab => \OperandB[0]~input_o\,
	datac => \OperandB[2]~input_o\,
	datad => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	combout => \multiplier_inst|dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X9_Y26_N12
\multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0_combout\ = (\OperandB[3]~input_o\ & (!\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\)) # (!\OperandB[3]~input_o\ & 
-- ((\multiplier_inst|dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \OperandB[3]~input_o\,
	datad => \multiplier_inst|dataPath|reg_B_right_shift|muxloop:5:mux_n|muxfinal|y~0_combout\,
	combout => \multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X6_Y26_N28
\OverflowOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \OverflowOut~1_combout\ = (!\OperandB[2]~input_o\ & (!\OperandB[0]~input_o\ & !\OperandB[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[2]~input_o\,
	datab => \OperandB[0]~input_o\,
	datac => \OperandB[1]~input_o\,
	combout => \OverflowOut~1_combout\);

-- Location: LCCOMB_X9_Y26_N2
\multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~0_combout\ = (\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\OperandB[3]~input_o\) # (!\OverflowOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[3]~input_o\,
	datac => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datad => \OverflowOut~1_combout\,
	combout => \multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X9_Y26_N26
\multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0_combout\ = (\OperandB[3]~input_o\ & (!\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\)) # (!\OperandB[3]~input_o\ & 
-- ((\multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \OperandB[3]~input_o\,
	datad => \multiplier_inst|dataPath|reg_B_right_shift|muxloop:6:mux_n|muxfinal|y~0_combout\,
	combout => \multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X9_Y26_N30
\multiplier_inst|dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0_combout\ = (!\multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\ & ((\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & 
-- (\multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\)) # (!\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\ & ((\OperandB[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datab => \multiplier_inst|dataPath|two_comp_B_inst|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datac => \OperandB[3]~input_o\,
	datad => \multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	combout => \multiplier_inst|dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0_combout\);

-- Location: FF_X9_Y26_N31
\multiplier_inst|dataPath|reg_B_right_shift|regloop:7:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|reg_B_right_shift|mux_msb|muxfinal|selX0~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\);

-- Location: FF_X9_Y26_N27
\multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~0_combout\,
	asdata => \multiplier_inst|dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\);

-- Location: FF_X9_Y26_N13
\multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~0_combout\,
	asdata => \multiplier_inst|dataPath|reg_B_right_shift|regloop:6:bit_n|int_q~q\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\);

-- Location: FF_X9_Y26_N23
\multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~0_combout\,
	asdata => \multiplier_inst|dataPath|reg_B_right_shift|regloop:5:bit_n|int_q~q\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\);

-- Location: FF_X9_Y26_N17
\multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~0_combout\,
	asdata => \multiplier_inst|dataPath|reg_B_right_shift|regloop:4:bit_n|int_q~q\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\);

-- Location: FF_X7_Y27_N9
\multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~0_combout\,
	asdata => \multiplier_inst|dataPath|reg_B_right_shift|regloop:3:bit_n|int_q~q\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	ena => \multiplier_inst|dataPath|reg_B_right_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\);

-- Location: LCCOMB_X7_Y27_N28
\multiplier_inst|dataPath|beq0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|beq0~0_combout\ = (\multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\) # ((\multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\) # 
-- ((\multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\) # (\multiplier_inst|dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|reg_B_right_shift|regloop:1:bit_n|int_q~q\,
	datab => \multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\,
	datac => \multiplier_inst|dataPath|reg_B_right_shift|regloop:2:bit_n|int_q~q\,
	datad => \multiplier_inst|dataPath|reg_B_right_shift|regloop:7:bit_n|int_q~q\,
	combout => \multiplier_inst|dataPath|beq0~0_combout\);

-- Location: LCCOMB_X6_Y26_N24
\multiplier_inst|controlPath|state_in[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|controlPath|state_in[5]~1_combout\ = (\divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\) # ((\multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & ((\multiplier_inst|dataPath|beq0~1_combout\) # 
-- (\multiplier_inst|dataPath|beq0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|beq0~1_combout\,
	datab => \multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datac => \multiplier_inst|dataPath|beq0~0_combout\,
	datad => \divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\,
	combout => \multiplier_inst|controlPath|state_in[5]~1_combout\);

-- Location: LCCOMB_X7_Y26_N30
\multiplier_inst|controlPath|state_in[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|controlPath|state_in[5]~2_combout\ = (\multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\) # ((!\multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\ & ((\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\) # 
-- (\multiplier_inst|controlPath|state_in[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	datac => \multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\,
	datad => \multiplier_inst|controlPath|state_in[5]~1_combout\,
	combout => \multiplier_inst|controlPath|state_in[5]~2_combout\);

-- Location: FF_X7_Y26_N31
\multiplier_inst|controlPath|stateRegloop:5:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|controlPath|state_in[5]~2_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\);

-- Location: FF_X7_Y26_N1
\multiplier_inst|controlPath|stateRegloop:6:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \multiplier_inst|controlPath|stateRegloop:5:state_n|int_q~q\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\);

-- Location: IOIBUF_X0_Y29_N22
\OperandA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperandA(0),
	o => \OperandA[0]~input_o\);

-- Location: LCCOMB_X8_Y26_N4
\multiplier_inst|dataPath|reg_A_left_shift|mux_0|mux1|selX0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_A_left_shift|mux_0|mux1|selX0~combout\ = (!\multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & \OperandA[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datac => \OperandA[0]~input_o\,
	combout => \multiplier_inst|dataPath|reg_A_left_shift|mux_0|mux1|selX0~combout\);

-- Location: LCCOMB_X7_Y27_N6
\multiplier_inst|dataPath|reg_A_left_shift|int_enable\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\ = (\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\) # ((\divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\) # (\multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datac => \divider_inst|controlPath|stateRegloop:2:state_n|int_q~q\,
	datad => \multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	combout => \multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\);

-- Location: FF_X8_Y26_N5
\multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|reg_A_left_shift|mux_0|mux1|selX0~combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\);

-- Location: LCCOMB_X7_Y26_N10
\multiplier_inst|dataPath|adder|add_0|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|adder|add_0|o_Sum~combout\ = \multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\ $ (((\multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datac => \multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	datad => \multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\,
	combout => \multiplier_inst|dataPath|adder|add_0|o_Sum~combout\);

-- Location: LCCOMB_X6_Y26_N16
\multiplier_inst|controlPath|state_in[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|controlPath|state_in[7]~0_combout\ = (\multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\ & ((\divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\) # ((\multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\) # 
-- (\divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|reg_B_right_shift|regloop:0:bit_n|int_q~q\,
	datab => \divider_inst|controlPath|stateRegloop:4:state_n|int_q~q\,
	datac => \multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datad => \divider_inst|controlPath|stateRegloop:3:state_n|int_q~q\,
	combout => \multiplier_inst|controlPath|state_in[7]~0_combout\);

-- Location: FF_X7_Y26_N7
\multiplier_inst|controlPath|stateRegloop:7:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	asdata => \multiplier_inst|controlPath|state_in[7]~0_combout\,
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\);

-- Location: LCCOMB_X6_Y26_N14
\multiplier_inst|controlPath|state_in[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|controlPath|state_in\(8) = (!\multiplier_inst|dataPath|beq0~1_combout\ & (!\multiplier_inst|dataPath|beq0~0_combout\ & (\multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\ & \divider_inst|dataPath|sign_reg|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|beq0~1_combout\,
	datab => \multiplier_inst|dataPath|beq0~0_combout\,
	datac => \multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	datad => \divider_inst|dataPath|sign_reg|int_q~q\,
	combout => \multiplier_inst|controlPath|state_in\(8));

-- Location: FF_X6_Y26_N15
\multiplier_inst|controlPath|stateRegloop:8:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|controlPath|state_in\(8),
	clrn => \ALT_INV_GReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\);

-- Location: LCCOMB_X7_Y26_N6
\multiplier_inst|controlPath|loadP\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|controlPath|loadP~combout\ = (\multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\) # (\multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	combout => \multiplier_inst|controlPath|loadP~combout\);

-- Location: FF_X7_Y26_N11
\multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|adder|add_0|o_Sum~combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\);

-- Location: LCCOMB_X4_Y26_N4
\mux_inst|muxloop:0:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_inst|muxloop:0:mux_n|muxfinal|y~0_combout\ = (\OperationSelect[1]~input_o\ & ((\OperationSelect[0]~input_o\ & (\divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\)) # (!\OperationSelect[0]~input_o\ & 
-- ((\multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperationSelect[0]~input_o\,
	datab => \OperationSelect[1]~input_o\,
	datac => \divider_inst|dataPath|remainder_reg|reg_n_bits:0:b|int_q~q\,
	datad => \multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	combout => \mux_inst|muxloop:0:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X3_Y26_N16
\mux_inst|muxloop:0:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\ = (\mux_inst|muxloop:0:mux_n|muxfinal|y~0_combout\) # ((!\OperationSelect[1]~input_o\ & (\OperandB[0]~input_o\ $ (\OperandA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_inst|muxloop:0:mux_n|muxfinal|y~0_combout\,
	datab => \OperandB[0]~input_o\,
	datac => \OperationSelect[1]~input_o\,
	datad => \OperandA[0]~input_o\,
	combout => \mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X8_Y27_N10
\multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\ = \OperandA[1]~input_o\ $ (\OperandA[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OperandA[1]~input_o\,
	datad => \OperandA[0]~input_o\,
	combout => \multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\);

-- Location: LCCOMB_X8_Y27_N8
\multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0_combout\ = (\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & ((\multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\))) # 
-- (!\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & (\OperandA[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \OperandA[1]~input_o\,
	datad => \multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:1:addrn|o_Sum~combout\,
	combout => \multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0_combout\);

-- Location: FF_X8_Y27_N9
\multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~0_combout\,
	asdata => \multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\);

-- Location: LCCOMB_X7_Y26_N24
\multiplier_inst|dataPath|adder|loop_add:1:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|adder|loop_add:1:addrn|o_Sum~0_combout\ = (\multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\ $ 
-- (((\multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\ & \multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\,
	datac => \multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	datad => \multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\,
	combout => \multiplier_inst|dataPath|adder|loop_add:1:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X7_Y26_N4
\multiplier_inst|dataPath|mux_P|muxloop:1:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|mux_P|muxloop:1:mux_n|y~0_combout\ = \multiplier_inst|dataPath|adder|loop_add:1:addrn|o_Sum~0_combout\ $ (\multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\ $ (((\multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- \multiplier_inst|dataPath|adder|add_0|o_Sum~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datab => \multiplier_inst|dataPath|adder|loop_add:1:addrn|o_Sum~0_combout\,
	datac => \multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\,
	datad => \multiplier_inst|dataPath|adder|add_0|o_Sum~combout\,
	combout => \multiplier_inst|dataPath|mux_P|muxloop:1:mux_n|y~0_combout\);

-- Location: FF_X7_Y26_N5
\multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|mux_P|muxloop:1:mux_n|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\);

-- Location: LCCOMB_X4_Y26_N30
\mux_inst|muxloop:1:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_inst|muxloop:1:mux_n|muxfinal|y~0_combout\ = (\OperationSelect[1]~input_o\ & ((\OperationSelect[0]~input_o\ & (\divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\)) # (!\OperationSelect[0]~input_o\ & 
-- ((\multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperationSelect[0]~input_o\,
	datab => \OperationSelect[1]~input_o\,
	datac => \divider_inst|dataPath|remainder_reg|reg_n_bits:1:b|int_q~q\,
	datad => \multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\,
	combout => \mux_inst|muxloop:1:mux_n|muxfinal|y~0_combout\);

-- Location: IOIBUF_X0_Y31_N15
\OperationSelect[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OperationSelect(0),
	o => \OperationSelect[0]~input_o\);

-- Location: LCCOMB_X3_Y26_N10
\adder_subtractor_inst|loop_add:1:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_subtractor_inst|loop_add:1:addrn|o_Sum~0_combout\ = \OperandB[1]~input_o\ $ (((\OperandB[0]~input_o\ & (\OperandA[0]~input_o\ $ (\OperationSelect[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandB[1]~input_o\,
	datab => \OperandA[0]~input_o\,
	datac => \OperandB[0]~input_o\,
	datad => \OperationSelect[0]~input_o\,
	combout => \adder_subtractor_inst|loop_add:1:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X3_Y26_N24
\mux_inst|muxloop:1:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\ = (\mux_inst|muxloop:1:mux_n|muxfinal|y~0_combout\) # ((!\OperationSelect[1]~input_o\ & (\OperandA[1]~input_o\ $ (\adder_subtractor_inst|loop_add:1:addrn|o_Sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[1]~input_o\,
	datab => \OperationSelect[1]~input_o\,
	datac => \mux_inst|muxloop:1:mux_n|muxfinal|y~0_combout\,
	datad => \adder_subtractor_inst|loop_add:1:addrn|o_Sum~0_combout\,
	combout => \mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X3_Y26_N26
\adder_subtractor_inst|loop_add:2:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_subtractor_inst|loop_add:2:addrn|o_Sum~0_combout\ = \adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\ $ (\OperandB[2]~input_o\ $ (\OperandA[2]~input_o\ $ (\OperationSelect[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\,
	datab => \OperandB[2]~input_o\,
	datac => \OperandA[2]~input_o\,
	datad => \OperationSelect[0]~input_o\,
	combout => \adder_subtractor_inst|loop_add:2:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X7_Y26_N8
\multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\ = (\multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \multiplier_inst|dataPath|reg_A_left_shift|regloop:0:bit_n|int_q~q\,
	combout => \multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\);

-- Location: LCCOMB_X7_Y26_N0
\multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\ = (\multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\,
	combout => \multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\);

-- Location: LCCOMB_X7_Y26_N26
\multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\ = (\multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\ & ((\multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\ $ 
-- (!\multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\)) # (!\multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\))) # (!\multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\ & 
-- ((\multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\) # (\multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\ $ (\multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	datab => \multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\,
	datac => \multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\,
	datad => \multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\,
	combout => \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\);

-- Location: LCCOMB_X7_Y26_N20
\multiplier_inst|dataPath|mux_P|muxloop:2:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|mux_P|muxloop:2:mux_n|y~0_combout\ = \multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\ $ (((\multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\ & 
-- \multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\,
	datac => \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\,
	datad => \multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	combout => \multiplier_inst|dataPath|mux_P|muxloop:2:mux_n|y~0_combout\);

-- Location: FF_X7_Y26_N21
\multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|mux_P|muxloop:2:mux_n|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\);

-- Location: LCCOMB_X4_Y26_N28
\mux_inst|muxloop:2:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_inst|muxloop:2:mux_n|muxfinal|y~0_combout\ = (\OperationSelect[1]~input_o\ & ((\OperationSelect[0]~input_o\ & (\divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\)) # (!\OperationSelect[0]~input_o\ & 
-- ((\multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperationSelect[0]~input_o\,
	datab => \divider_inst|dataPath|remainder_reg|reg_n_bits:2:b|int_q~q\,
	datac => \OperationSelect[1]~input_o\,
	datad => \multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\,
	combout => \mux_inst|muxloop:2:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X3_Y26_N28
\mux_inst|muxloop:2:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\ = (\mux_inst|muxloop:2:mux_n|muxfinal|y~0_combout\) # ((\adder_subtractor_inst|loop_add:2:addrn|o_Sum~0_combout\ & !\OperationSelect[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_subtractor_inst|loop_add:2:addrn|o_Sum~0_combout\,
	datac => \OperationSelect[1]~input_o\,
	datad => \mux_inst|muxloop:2:mux_n|muxfinal|y~0_combout\,
	combout => \mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X8_Y27_N18
\multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\ = \OperandA[3]~input_o\ $ (((\OperandA[2]~input_o\) # ((\OperandA[1]~input_o\) # (\OperandA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[2]~input_o\,
	datab => \OperandA[1]~input_o\,
	datac => \OperandA[3]~input_o\,
	datad => \OperandA[0]~input_o\,
	combout => \multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\);

-- Location: LCCOMB_X8_Y27_N26
\multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0_combout\ = (\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & ((\multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\))) # 
-- (!\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & (\OperandA[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \OperandA[3]~input_o\,
	datad => \multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:3:addrn|o_Sum~combout\,
	combout => \multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0_combout\);

-- Location: LCCOMB_X6_Y27_N16
\multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\ = \OperandA[2]~input_o\ $ (((\OperandA[0]~input_o\) # (\OperandA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[0]~input_o\,
	datab => \OperandA[1]~input_o\,
	datad => \OperandA[2]~input_o\,
	combout => \multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\);

-- Location: LCCOMB_X8_Y27_N12
\multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0_combout\ = (\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & (\multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\)) # 
-- (!\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & ((\OperandA[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:2:addrn|o_Sum~combout\,
	datad => \OperandA[2]~input_o\,
	combout => \multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0_combout\);

-- Location: FF_X8_Y27_N13
\multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~0_combout\,
	asdata => \multiplier_inst|dataPath|reg_A_left_shift|regloop:1:bit_n|int_q~q\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\);

-- Location: FF_X8_Y27_N27
\multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~0_combout\,
	asdata => \multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\);

-- Location: LCCOMB_X7_Y26_N2
\multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ = (\multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\ & ((\multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\) # 
-- ((\multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\ & \multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\)))) # (!\multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\ & (\multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\ & 
-- (\multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\ & \multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|reg_P|reg_n_bits:0:b|int_q~q\,
	datab => \multiplier_inst|dataPath|reg_P|reg_n_bits:1:b|int_q~q\,
	datac => \multiplier_inst|dataPath|mux_adder|muxloop:0:mux_n|selX1~combout\,
	datad => \multiplier_inst|dataPath|mux_adder|muxloop:1:mux_n|selX1~combout\,
	combout => \multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X7_Y26_N28
\multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ = (\multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\ & ((\multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\) # 
-- ((\multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\)))) # (!\multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\ & 
-- (\multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\ & \multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\,
	datac => \multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\,
	datad => \multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\,
	combout => \multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X7_Y26_N12
\multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\ = \multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\ $ (\multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\ $ 
-- (((\multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\,
	datac => \multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\,
	datad => \multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\,
	combout => \multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X7_Y26_N14
\multiplier_inst|dataPath|mux_P|muxloop:3:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|mux_P|muxloop:3:mux_n|y~0_combout\ = \multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\ $ (((\multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- ((\multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\) # (\multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\,
	datab => \multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\,
	datad => \multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\,
	combout => \multiplier_inst|dataPath|mux_P|muxloop:3:mux_n|y~0_combout\);

-- Location: FF_X7_Y26_N15
\multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|mux_P|muxloop:3:mux_n|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\);

-- Location: LCCOMB_X4_Y26_N12
\mux_inst|muxloop:3:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_inst|muxloop:3:mux_n|muxfinal|y~0_combout\ = (\OperationSelect[0]~input_o\ & (((\divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\) # (!\OperationSelect[1]~input_o\)))) # (!\OperationSelect[0]~input_o\ & 
-- (\multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\ & (\OperationSelect[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperationSelect[0]~input_o\,
	datab => \multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\,
	datac => \OperationSelect[1]~input_o\,
	datad => \divider_inst|dataPath|remainder_reg|reg_n_bits:3:b|int_q~q\,
	combout => \mux_inst|muxloop:3:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X3_Y26_N14
\adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\ = (\adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\ & ((\OperandA[2]~input_o\) # (\OperandB[2]~input_o\ $ (\OperationSelect[0]~input_o\)))) # 
-- (!\adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\ & (\OperandA[2]~input_o\ & (\OperandB[2]~input_o\ $ (\OperationSelect[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_subtractor_inst|loop_add:1:addrn|o_CarryOut~1_combout\,
	datab => \OperandB[2]~input_o\,
	datac => \OperandA[2]~input_o\,
	datad => \OperationSelect[0]~input_o\,
	combout => \adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X4_Y26_N26
\mux_inst|muxloop:3:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\ = \mux_inst|muxloop:3:mux_n|muxfinal|y~0_combout\ $ (((!\OperationSelect[1]~input_o\ & (\divider_inst|dataPath|int_sign_in~0_combout\ $ (\adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_inst|muxloop:3:mux_n|muxfinal|y~0_combout\,
	datab => \OperationSelect[1]~input_o\,
	datac => \divider_inst|dataPath|int_sign_in~0_combout\,
	datad => \adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\,
	combout => \mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X4_Y26_N6
\adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\ = (\OperandA[3]~input_o\ & ((\adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\) # (\OperationSelect[0]~input_o\ $ (\OperandB[3]~input_o\)))) # (!\OperandA[3]~input_o\ & 
-- (\adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\ & (\OperationSelect[0]~input_o\ $ (\OperandB[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperationSelect[0]~input_o\,
	datab => \OperandB[3]~input_o\,
	datac => \OperandA[3]~input_o\,
	datad => \adder_subtractor_inst|loop_add:2:addrn|o_CarryOut~0_combout\,
	combout => \adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X7_Y26_N22
\multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\ = \multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\ $ (\multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\ $ 
-- (((\multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \multiplier_inst|dataPath|reg_P|reg_n_bits:2:b|int_q~q\,
	datac => \multiplier_inst|dataPath|reg_A_left_shift|regloop:2:bit_n|int_q~q\,
	datad => \multiplier_inst|dataPath|adder|loop_add:1:addrn|o_CarryOut~0_combout\,
	combout => \multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X7_Y26_N16
\multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\ = (\multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\) # ((\multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\) # 
-- (\multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\,
	datac => \multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\,
	datad => \multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\,
	combout => \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\);

-- Location: LCCOMB_X8_Y26_N0
\multiplier_inst|dataPath|mux_P|muxloop:4:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|mux_P|muxloop:4:mux_n|y~0_combout\ = \multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ $ (((\multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datab => \multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\,
	combout => \multiplier_inst|dataPath|mux_P|muxloop:4:mux_n|y~0_combout\);

-- Location: FF_X8_Y26_N1
\multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|mux_P|muxloop:4:mux_n|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\);

-- Location: LCCOMB_X4_Y26_N16
\mux_inst|muxloop:4:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_inst|muxloop:4:mux_n|muxfinal|y~0_combout\ = (\OperationSelect[1]~input_o\ & ((\OperationSelect[0]~input_o\ & ((\divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\))) # (!\OperationSelect[0]~input_o\ & 
-- (\multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperationSelect[0]~input_o\,
	datab => \OperationSelect[1]~input_o\,
	datac => \multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\,
	datad => \divider_inst|dataPath|quotient_reg|regloop:0:bit_n|int_q~q\,
	combout => \mux_inst|muxloop:4:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X3_Y26_N20
\mux_inst|muxloop:4:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\ = (\mux_inst|muxloop:4:mux_n|muxfinal|y~0_combout\) # ((!\OperationSelect[1]~input_o\ & (\adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\ $ (\OperationSelect[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\,
	datab => \OperationSelect[0]~input_o\,
	datac => \OperationSelect[1]~input_o\,
	datad => \mux_inst|muxloop:4:mux_n|muxfinal|y~0_combout\,
	combout => \mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X8_Y27_N28
\multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\ = (!\OperandA[3]~input_o\ & ((\OperandA[2]~input_o\) # ((\OperandA[1]~input_o\) # (\OperandA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[2]~input_o\,
	datab => \OperandA[1]~input_o\,
	datac => \OperandA[3]~input_o\,
	datad => \OperandA[0]~input_o\,
	combout => \multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\);

-- Location: LCCOMB_X8_Y27_N16
\multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0_combout\ = (\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & ((\multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\))) # 
-- (!\divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\ & (\OperandA[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|controlPath|stateRegloop:1:state_n|int_q~q\,
	datab => \OperandA[3]~input_o\,
	datad => \multiplier_inst|dataPath|two_comp_A_inst|adder|loop_add:4:addrn|o_Sum~combout\,
	combout => \multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0_combout\);

-- Location: FF_X8_Y27_N17
\multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~0_combout\,
	asdata => \multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	sload => \multiplier_inst|controlPath|stateRegloop:6:state_n|int_q~q\,
	ena => \multiplier_inst|dataPath|reg_A_left_shift|int_enable~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\);

-- Location: LCCOMB_X7_Y26_N18
\multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ = (\multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\ & ((\multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\) # 
-- ((\multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\)))) # (!\multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\ & 
-- (\multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\ & \multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \multiplier_inst|dataPath|reg_A_left_shift|regloop:3:bit_n|int_q~q\,
	datac => \multiplier_inst|dataPath|reg_P|reg_n_bits:3:b|int_q~q\,
	datad => \multiplier_inst|dataPath|adder|loop_add:2:addrn|o_CarryOut~0_combout\,
	combout => \multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X8_Y26_N22
\multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\ = \multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\ $ (\multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\ $ 
-- (((\multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\,
	datac => \multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\,
	datad => \multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X8_Y26_N26
\multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:4:addrn|carryFromBi\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:4:addrn|carryFromBi~combout\ = (\multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\) # ((\multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\) # 
-- ((\multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\) # (\multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:1:addrn|carryFromBi~combout\,
	datab => \multiplier_inst|dataPath|adder|loop_add:3:addrn|o_Sum~0_combout\,
	datac => \multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datad => \multiplier_inst|dataPath|adder|loop_add:2:addrn|o_Sum~0_combout\,
	combout => \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:4:addrn|carryFromBi~combout\);

-- Location: LCCOMB_X8_Y26_N10
\multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ = (\multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\ & ((\multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\) # 
-- ((\multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\)))) # (!\multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\ & 
-- (\multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & (\multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\ & \multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datab => \multiplier_inst|dataPath|reg_P|reg_n_bits:4:b|int_q~q\,
	datac => \multiplier_inst|dataPath|reg_A_left_shift|regloop:4:bit_n|int_q~q\,
	datad => \multiplier_inst|dataPath|adder|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X8_Y26_N16
\multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ = \multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\ $ (\multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\ $ 
-- (((\multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\ & \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\,
	datab => \multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\,
	datac => \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\,
	combout => \multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X8_Y26_N2
\multiplier_inst|dataPath|mux_P|muxloop:5:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|mux_P|muxloop:5:mux_n|y~0_combout\ = \multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\ $ (((\multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:4:addrn|carryFromBi~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:4:addrn|carryFromBi~combout\,
	datad => \multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	combout => \multiplier_inst|dataPath|mux_P|muxloop:5:mux_n|y~0_combout\);

-- Location: FF_X8_Y26_N3
\multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|mux_P|muxloop:5:mux_n|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\);

-- Location: LCCOMB_X4_Y26_N20
\mux_inst|muxloop:5:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_inst|muxloop:5:mux_n|muxfinal|y~0_combout\ = (\OperationSelect[1]~input_o\ & ((\OperationSelect[0]~input_o\ & ((\divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\))) # (!\OperationSelect[0]~input_o\ & 
-- (\multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperationSelect[0]~input_o\,
	datab => \OperationSelect[1]~input_o\,
	datac => \multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\,
	datad => \divider_inst|dataPath|quotient_reg|regloop:1:bit_n|int_q~q\,
	combout => \mux_inst|muxloop:5:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X4_Y26_N22
\mux_inst|muxloop:5:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\ = (\mux_inst|muxloop:5:mux_n|muxfinal|y~0_combout\) # ((\OperationSelect[0]~input_o\ & (!\OperationSelect[1]~input_o\ & !\adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperationSelect[0]~input_o\,
	datab => \mux_inst|muxloop:5:mux_n|muxfinal|y~0_combout\,
	datac => \OperationSelect[1]~input_o\,
	datad => \adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X8_Y26_N24
\multiplier_inst|dataPath|mux_P|muxloop:6:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|mux_P|muxloop:6:mux_n|y~0_combout\ = \multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\ $ (((\multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- ((\multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:4:addrn|carryFromBi~combout\) # (\multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	datab => \multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:4:addrn|carryFromBi~combout\,
	datad => \multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	combout => \multiplier_inst|dataPath|mux_P|muxloop:6:mux_n|y~0_combout\);

-- Location: FF_X8_Y26_N25
\multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|mux_P|muxloop:6:mux_n|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\);

-- Location: LCCOMB_X4_Y26_N24
\mux_inst|muxloop:6:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_inst|muxloop:6:mux_n|muxfinal|y~0_combout\ = (\OperationSelect[1]~input_o\ & ((\OperationSelect[0]~input_o\ & ((\divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\))) # (!\OperationSelect[0]~input_o\ & 
-- (\multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperationSelect[0]~input_o\,
	datab => \multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\,
	datac => \OperationSelect[1]~input_o\,
	datad => \divider_inst|dataPath|quotient_reg|regloop:2:bit_n|int_q~q\,
	combout => \mux_inst|muxloop:6:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X4_Y26_N2
\mux_inst|muxloop:6:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\ = (\mux_inst|muxloop:6:mux_n|muxfinal|y~0_combout\) # ((\OperationSelect[0]~input_o\ & (!\OperationSelect[1]~input_o\ & !\adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperationSelect[0]~input_o\,
	datab => \mux_inst|muxloop:6:mux_n|muxfinal|y~0_combout\,
	datac => \OperationSelect[1]~input_o\,
	datad => \adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X8_Y26_N28
\multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ = (\multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\ & ((\multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\) # 
-- ((\multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\ & \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\)))) # (!\multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\ & 
-- (\multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\ & (\multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|reg_A_left_shift|regloop:5:bit_n|int_q~q\,
	datab => \multiplier_inst|dataPath|reg_P|reg_n_bits:5:b|int_q~q\,
	datac => \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \multiplier_inst|dataPath|adder|loop_add:4:addrn|o_CarryOut~0_combout\,
	combout => \multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X8_Y26_N18
\multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ = (\multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\ & ((\multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\) # 
-- ((\multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\ & \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\)))) # (!\multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\ & 
-- (\multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\ & (\multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\ & \multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\,
	datab => \multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\,
	datac => \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\,
	combout => \multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X8_Y26_N30
\multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\ = \multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\ $ (\multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ $ 
-- (((\multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\ & \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|reg_A_left_shift|regloop:7:bit_n|int_q~q\,
	datab => \multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\,
	datac => \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \multiplier_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	combout => \multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X8_Y26_N6
\multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\ = \multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\ $ (\multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\ $ 
-- (((\multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\ & \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|reg_A_left_shift|regloop:6:bit_n|int_q~q\,
	datab => \multiplier_inst|dataPath|reg_P|reg_n_bits:6:b|int_q~q\,
	datac => \multiplier_inst|controlPath|stateRegloop:7:state_n|int_q~q\,
	datad => \multiplier_inst|dataPath|adder|loop_add:5:addrn|o_CarryOut~0_combout\,
	combout => \multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\);

-- Location: LCCOMB_X8_Y26_N20
\multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:6:addrn|carryFromBi\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:6:addrn|carryFromBi~combout\ = (\multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\) # ((\multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\) # 
-- ((\multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\) # (\multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:3:addrn|carryFromBi~combout\,
	datab => \multiplier_inst|dataPath|adder|loop_add:5:addrn|o_Sum~0_combout\,
	datac => \multiplier_inst|dataPath|adder|loop_add:4:addrn|o_Sum~0_combout\,
	datad => \multiplier_inst|dataPath|adder|loop_add:6:addrn|o_Sum~0_combout\,
	combout => \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:6:addrn|carryFromBi~combout\);

-- Location: LCCOMB_X8_Y26_N14
\multiplier_inst|dataPath|mux_P|muxloop:7:mux_n|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \multiplier_inst|dataPath|mux_P|muxloop:7:mux_n|y~0_combout\ = \multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\ $ (((\multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\ & 
-- \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:6:addrn|carryFromBi~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \multiplier_inst|controlPath|stateRegloop:8:state_n|int_q~q\,
	datac => \multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\,
	datad => \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:6:addrn|carryFromBi~combout\,
	combout => \multiplier_inst|dataPath|mux_P|muxloop:7:mux_n|y~0_combout\);

-- Location: FF_X8_Y26_N15
\multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GClock~inputclkctrl_outclk\,
	d => \multiplier_inst|dataPath|mux_P|muxloop:7:mux_n|y~0_combout\,
	clrn => \divider_inst|controlPath|stateReg0|ALT_INV_int_q~q\,
	ena => \multiplier_inst|controlPath|loadP~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\);

-- Location: LCCOMB_X4_Y26_N8
\mux_inst|muxloop:7:mux_n|muxfinal|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_inst|muxloop:7:mux_n|muxfinal|y~0_combout\ = (\OperationSelect[1]~input_o\ & ((\OperationSelect[0]~input_o\ & ((\divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\))) # (!\OperationSelect[0]~input_o\ & 
-- (\multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperationSelect[0]~input_o\,
	datab => \OperationSelect[1]~input_o\,
	datac => \multiplier_inst|dataPath|reg_P|reg_n_bits:7:b|int_q~q\,
	datad => \divider_inst|dataPath|quotient_reg|regloop:3:bit_n|int_q~q\,
	combout => \mux_inst|muxloop:7:mux_n|muxfinal|y~0_combout\);

-- Location: LCCOMB_X4_Y26_N18
\mux_inst|muxloop:7:mux_n|muxfinal|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\ = (\mux_inst|muxloop:7:mux_n|muxfinal|y~0_combout\) # ((\OperationSelect[0]~input_o\ & (!\OperationSelect[1]~input_o\ & !\adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperationSelect[0]~input_o\,
	datab => \mux_inst|muxloop:7:mux_n|muxfinal|y~0_combout\,
	datac => \OperationSelect[1]~input_o\,
	datad => \adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\);

-- Location: LCCOMB_X3_Y26_N30
\CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CarryOut~0_combout\ = (\OperationSelect[0]~input_o\ & (!\OperationSelect[1]~input_o\ & \adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OperationSelect[0]~input_o\,
	datac => \OperationSelect[1]~input_o\,
	datad => \adder_subtractor_inst|loop_add:3:addrn|o_CarryOut~0_combout\,
	combout => \CarryOut~0_combout\);

-- Location: LCCOMB_X3_Y26_N8
\ZeroOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroOut~1_combout\ = (\mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\) # ((\mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\) # (\mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_inst|muxloop:0:mux_n|muxfinal|y~1_combout\,
	datab => \mux_inst|muxloop:4:mux_n|muxfinal|y~1_combout\,
	datad => \mux_inst|muxloop:1:mux_n|muxfinal|y~1_combout\,
	combout => \ZeroOut~1_combout\);

-- Location: LCCOMB_X4_Y26_N0
\ZeroOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroOut~0_combout\ = (\mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\) # ((\mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\) # (\mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_inst|muxloop:5:mux_n|muxfinal|y~1_combout\,
	datab => \mux_inst|muxloop:7:mux_n|muxfinal|y~1_combout\,
	datad => \mux_inst|muxloop:6:mux_n|muxfinal|y~1_combout\,
	combout => \ZeroOut~0_combout\);

-- Location: LCCOMB_X3_Y26_N2
\ZeroOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ZeroOut~2_combout\ = (\mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\) # ((\ZeroOut~1_combout\) # ((\ZeroOut~0_combout\) # (\mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux_inst|muxloop:2:mux_n|muxfinal|y~1_combout\,
	datab => \ZeroOut~1_combout\,
	datac => \ZeroOut~0_combout\,
	datad => \mux_inst|muxloop:3:mux_n|muxfinal|y~1_combout\,
	combout => \ZeroOut~2_combout\);

-- Location: LCCOMB_X2_Y27_N26
\divider_inst|dataPath|adder|loop_add:7:addrn|o_CarryOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \divider_inst|dataPath|adder|loop_add:7:addrn|o_CarryOut~0_combout\ = (\divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ & ((\divider_inst|dataPath|adder|loop_add:7:addrn|xor_Bi~combout\) # ((\divider_inst|controlPath|selZ~0_combout\ & 
-- \divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\)))) # (!\divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\ & (\divider_inst|dataPath|adder|loop_add:7:addrn|xor_Bi~combout\ & (\divider_inst|controlPath|selZ~0_combout\ & 
-- \divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|adder|loop_add:6:addrn|o_CarryOut~0_combout\,
	datab => \divider_inst|dataPath|adder|loop_add:7:addrn|xor_Bi~combout\,
	datac => \divider_inst|controlPath|selZ~0_combout\,
	datad => \divider_inst|dataPath|remainder_reg|reg_n_bits:7:b|int_q~q\,
	combout => \divider_inst|dataPath|adder|loop_add:7:addrn|o_CarryOut~0_combout\);

-- Location: LCCOMB_X8_Y27_N24
\OverflowOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \OverflowOut~0_combout\ = (!\OperandA[2]~input_o\ & (!\OperandA[1]~input_o\ & (!\OperandA[3]~input_o\ & !\OperandA[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OperandA[2]~input_o\,
	datab => \OperandA[1]~input_o\,
	datac => \OperandA[3]~input_o\,
	datad => \OperandA[0]~input_o\,
	combout => \OverflowOut~0_combout\);

-- Location: LCCOMB_X9_Y26_N4
\OverflowOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \OverflowOut~2_combout\ = (\multiplier_inst|dataPath|adder|loop_add:7:addrn|o_CarryOut~0_combout\) # ((!\OperandB[3]~input_o\ & \OverflowOut~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|adder|loop_add:7:addrn|o_CarryOut~0_combout\,
	datac => \OperandB[3]~input_o\,
	datad => \OverflowOut~1_combout\,
	combout => \OverflowOut~2_combout\);

-- Location: LCCOMB_X8_Y26_N12
\OverflowOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \OverflowOut~3_combout\ = (\OverflowOut~0_combout\) # ((\OverflowOut~2_combout\) # ((!\multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\ & !\multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:6:addrn|carryFromBi~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \multiplier_inst|dataPath|adder|loop_add:7:addrn|o_Sum~0_combout\,
	datab => \multiplier_inst|dataPath|two_comp_P_inst|adder|loop_add:6:addrn|carryFromBi~combout\,
	datac => \OverflowOut~0_combout\,
	datad => \OverflowOut~2_combout\,
	combout => \OverflowOut~3_combout\);

-- Location: LCCOMB_X3_Y26_N0
\OverflowOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \OverflowOut~4_combout\ = (\OperationSelect[1]~input_o\ & ((\OperationSelect[0]~input_o\ & (\divider_inst|dataPath|adder|loop_add:7:addrn|o_CarryOut~0_combout\)) # (!\OperationSelect[0]~input_o\ & ((\OverflowOut~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \divider_inst|dataPath|adder|loop_add:7:addrn|o_CarryOut~0_combout\,
	datab => \OperationSelect[1]~input_o\,
	datac => \OverflowOut~3_combout\,
	datad => \OperationSelect[0]~input_o\,
	combout => \OverflowOut~4_combout\);

ww_MuxOut(0) <= \MuxOut[0]~output_o\;

ww_MuxOut(1) <= \MuxOut[1]~output_o\;

ww_MuxOut(2) <= \MuxOut[2]~output_o\;

ww_MuxOut(3) <= \MuxOut[3]~output_o\;

ww_MuxOut(4) <= \MuxOut[4]~output_o\;

ww_MuxOut(5) <= \MuxOut[5]~output_o\;

ww_MuxOut(6) <= \MuxOut[6]~output_o\;

ww_MuxOut(7) <= \MuxOut[7]~output_o\;

ww_CarryOut <= \CarryOut~output_o\;

ww_ZeroOut <= \ZeroOut~output_o\;

ww_OverflowOut <= \OverflowOut~output_o\;
END structure;



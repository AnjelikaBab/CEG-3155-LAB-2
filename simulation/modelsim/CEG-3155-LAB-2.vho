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

-- DATE "10/18/2024 16:58:36"

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
-- zero	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[0]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[1]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[2]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[3]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[4]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[5]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[6]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- quotient[7]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[0]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[1]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[2]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[4]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[6]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- remainder[7]	=>  Location: PIN_G27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INB[3]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INB[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INB[1]	=>  Location: PIN_E27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INB[0]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INA[3]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INA[2]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INA[0]	=>  Location: PIN_H25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INA[1]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\ : std_logic;
SIGNAL \dataPath|incrementer|reg|reg_n_bits:0:b|int_q~0_combout\ : std_logic;
SIGNAL \INB[3]~input_o\ : std_logic;
SIGNAL \INB[2]~input_o\ : std_logic;
SIGNAL \INB[1]~input_o\ : std_logic;
SIGNAL \INB[0]~input_o\ : std_logic;
SIGNAL \INA[3]~input_o\ : std_logic;
SIGNAL \INA[2]~input_o\ : std_logic;
SIGNAL \INA[0]~input_o\ : std_logic;
SIGNAL \INA[1]~input_o\ : std_logic;
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dataPath|incrementer|reg|reg_n_bits:1:b|int_q~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \controlPath|stateReg0|int_q~feeder_combout\ : std_logic;
SIGNAL \controlPath|stateReg0|int_q~q\ : std_logic;
SIGNAL \dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\ : std_logic;
SIGNAL \dataPath|incrementer|reg|reg_n_bits:2:b|int_q~0_combout\ : std_logic;
SIGNAL \dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\ : std_logic;
SIGNAL \controlPath|stateRegloop:7:state_n|int_q~feeder_combout\ : std_logic;
SIGNAL \controlPath|stateRegloop:7:state_n|int_q~q\ : std_logic;
SIGNAL \controlPath|stateRegloop:8:state_n|int_q~feeder_combout\ : std_logic;
SIGNAL \controlPath|stateRegloop:8:state_n|int_q~q\ : std_logic;
SIGNAL \controlPath|state_in[5]~0_combout\ : std_logic;
SIGNAL \controlPath|stateRegloop:5:state_n|int_q~q\ : std_logic;
SIGNAL \controlPath|stateReg0|ALT_INV_int_q~q\ : std_logic;

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

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\controlPath|stateReg0|ALT_INV_int_q~q\ <= NOT \controlPath|stateReg0|int_q~q\;

-- Location: FF_X1_Y23_N7
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

-- Location: LCCOMB_X1_Y23_N6
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

-- Location: IOOBUF_X58_Y73_N16
\zero~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \zero~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\overflow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlPath|stateRegloop:5:state_n|int_q~q\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\quotient[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \quotient[0]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\quotient[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \quotient[1]~output_o\);

-- Location: IOOBUF_X115_Y24_N9
\quotient[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \quotient[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\quotient[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \quotient[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\quotient[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \quotient[4]~output_o\);

-- Location: IOOBUF_X96_Y0_N9
\quotient[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \quotient[5]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\quotient[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \quotient[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\quotient[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \quotient[7]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\remainder[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \remainder[0]~output_o\);

-- Location: IOOBUF_X102_Y73_N2
\remainder[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \remainder[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\remainder[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \remainder[2]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\remainder[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \remainder[3]~output_o\);

-- Location: IOOBUF_X9_Y73_N9
\remainder[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \remainder[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\remainder[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \remainder[5]~output_o\);

-- Location: IOOBUF_X3_Y73_N23
\remainder[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \remainder[6]~output_o\);

-- Location: IOOBUF_X115_Y52_N2
\remainder[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \remainder[7]~output_o\);

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

-- Location: LCCOMB_X1_Y23_N28
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

-- Location: IOIBUF_X0_Y23_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X1_Y23_N14
\controlPath|stateReg0|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|stateReg0|int_q~feeder_combout\ = \reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset~input_o\,
	combout => \controlPath|stateReg0|int_q~feeder_combout\);

-- Location: FF_X1_Y23_N15
\controlPath|stateReg0|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlPath|stateReg0|int_q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateReg0|int_q~q\);

-- Location: FF_X1_Y23_N29
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

-- Location: LCCOMB_X1_Y23_N8
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

-- Location: FF_X1_Y23_N9
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

-- Location: LCCOMB_X1_Y23_N24
\controlPath|stateRegloop:7:state_n|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|stateRegloop:7:state_n|int_q~feeder_combout\ = \controlPath|stateRegloop:5:state_n|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlPath|stateRegloop:5:state_n|int_q~q\,
	combout => \controlPath|stateRegloop:7:state_n|int_q~feeder_combout\);

-- Location: FF_X1_Y23_N25
\controlPath|stateRegloop:7:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlPath|stateRegloop:7:state_n|int_q~feeder_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateRegloop:7:state_n|int_q~q\);

-- Location: LCCOMB_X1_Y23_N10
\controlPath|stateRegloop:8:state_n|int_q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|stateRegloop:8:state_n|int_q~feeder_combout\ = \controlPath|stateRegloop:7:state_n|int_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controlPath|stateRegloop:7:state_n|int_q~q\,
	combout => \controlPath|stateRegloop:8:state_n|int_q~feeder_combout\);

-- Location: FF_X1_Y23_N11
\controlPath|stateRegloop:8:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlPath|stateRegloop:8:state_n|int_q~feeder_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateRegloop:8:state_n|int_q~q\);

-- Location: LCCOMB_X1_Y23_N0
\controlPath|state_in[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controlPath|state_in[5]~0_combout\ = (\controlPath|stateRegloop:8:state_n|int_q~q\ & (((\dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\) # (!\dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\)) # (!\dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataPath|incrementer|reg|reg_n_bits:0:b|int_q~q\,
	datab => \dataPath|incrementer|reg|reg_n_bits:1:b|int_q~q\,
	datac => \dataPath|incrementer|reg|reg_n_bits:2:b|int_q~q\,
	datad => \controlPath|stateRegloop:8:state_n|int_q~q\,
	combout => \controlPath|state_in[5]~0_combout\);

-- Location: FF_X1_Y23_N1
\controlPath|stateRegloop:5:state_n|int_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \controlPath|state_in[5]~0_combout\,
	clrn => \controlPath|stateReg0|ALT_INV_int_q~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlPath|stateRegloop:5:state_n|int_q~q\);

-- Location: IOIBUF_X72_Y73_N8
\INB[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INB(3),
	o => \INB[3]~input_o\);

-- Location: IOIBUF_X107_Y0_N8
\INB[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INB(2),
	o => \INB[2]~input_o\);

-- Location: IOIBUF_X115_Y57_N15
\INB[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INB(1),
	o => \INB[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\INB[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INB(0),
	o => \INB[0]~input_o\);

-- Location: IOIBUF_X115_Y31_N8
\INA[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INA(3),
	o => \INA[3]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\INA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INA(2),
	o => \INA[2]~input_o\);

-- Location: IOIBUF_X115_Y58_N15
\INA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INA(0),
	o => \INA[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\INA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INA(1),
	o => \INA[1]~input_o\);

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



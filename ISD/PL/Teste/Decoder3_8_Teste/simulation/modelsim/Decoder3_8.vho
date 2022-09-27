-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "12/16/2021 23:17:36"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Decoder3_8 IS
    PORT (
	y : OUT std_logic_vector(15 DOWNTO 0);
	\in\ : IN std_logic_vector(3 DOWNTO 0);
	En : IN std_logic
	);
END Decoder3_8;

-- Design Ports Information
-- y[15]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[14]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[13]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[12]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[11]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[10]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[9]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[8]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[7]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[6]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[5]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[4]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[1]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[0]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[3]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Decoder3_8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_y : std_logic_vector(15 DOWNTO 0);
SIGNAL \ww_in\ : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_En : std_logic;
SIGNAL \y[15]~output_o\ : std_logic;
SIGNAL \y[14]~output_o\ : std_logic;
SIGNAL \y[13]~output_o\ : std_logic;
SIGNAL \y[12]~output_o\ : std_logic;
SIGNAL \y[11]~output_o\ : std_logic;
SIGNAL \y[10]~output_o\ : std_logic;
SIGNAL \y[9]~output_o\ : std_logic;
SIGNAL \y[8]~output_o\ : std_logic;
SIGNAL \y[7]~output_o\ : std_logic;
SIGNAL \y[6]~output_o\ : std_logic;
SIGNAL \y[5]~output_o\ : std_logic;
SIGNAL \y[4]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \En~input_o\ : std_logic;
SIGNAL \in[1]~input_o\ : std_logic;
SIGNAL \in[2]~input_o\ : std_logic;
SIGNAL \inst1|22~0_combout\ : std_logic;
SIGNAL \in[0]~input_o\ : std_logic;
SIGNAL \in[3]~input_o\ : std_logic;
SIGNAL \inst1|22~combout\ : std_logic;
SIGNAL \inst1|21~combout\ : std_logic;
SIGNAL \inst1|20~0_combout\ : std_logic;
SIGNAL \inst1|20~combout\ : std_logic;
SIGNAL \inst1|19~combout\ : std_logic;
SIGNAL \inst1|18~0_combout\ : std_logic;
SIGNAL \inst1|18~combout\ : std_logic;
SIGNAL \inst1|17~combout\ : std_logic;
SIGNAL \inst1|16~0_combout\ : std_logic;
SIGNAL \inst1|16~combout\ : std_logic;
SIGNAL \inst1|15~combout\ : std_logic;
SIGNAL \inst|22~combout\ : std_logic;
SIGNAL \inst|21~combout\ : std_logic;
SIGNAL \inst|20~combout\ : std_logic;
SIGNAL \inst|19~combout\ : std_logic;
SIGNAL \inst|18~combout\ : std_logic;
SIGNAL \inst|17~combout\ : std_logic;
SIGNAL \inst|16~combout\ : std_logic;
SIGNAL \inst|15~combout\ : std_logic;
SIGNAL \inst|ALT_INV_15~combout\ : std_logic;
SIGNAL \inst|ALT_INV_16~combout\ : std_logic;
SIGNAL \inst|ALT_INV_17~combout\ : std_logic;
SIGNAL \inst|ALT_INV_18~combout\ : std_logic;
SIGNAL \inst|ALT_INV_19~combout\ : std_logic;
SIGNAL \inst|ALT_INV_20~combout\ : std_logic;
SIGNAL \inst|ALT_INV_21~combout\ : std_logic;
SIGNAL \inst|ALT_INV_22~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_15~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_16~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_17~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_18~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_19~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_20~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_21~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_22~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

y <= ww_y;
\ww_in\ <= \in\;
ww_En <= En;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_15~combout\ <= NOT \inst|15~combout\;
\inst|ALT_INV_16~combout\ <= NOT \inst|16~combout\;
\inst|ALT_INV_17~combout\ <= NOT \inst|17~combout\;
\inst|ALT_INV_18~combout\ <= NOT \inst|18~combout\;
\inst|ALT_INV_19~combout\ <= NOT \inst|19~combout\;
\inst|ALT_INV_20~combout\ <= NOT \inst|20~combout\;
\inst|ALT_INV_21~combout\ <= NOT \inst|21~combout\;
\inst|ALT_INV_22~combout\ <= NOT \inst|22~combout\;
\inst1|ALT_INV_15~combout\ <= NOT \inst1|15~combout\;
\inst1|ALT_INV_16~combout\ <= NOT \inst1|16~combout\;
\inst1|ALT_INV_17~combout\ <= NOT \inst1|17~combout\;
\inst1|ALT_INV_18~combout\ <= NOT \inst1|18~combout\;
\inst1|ALT_INV_19~combout\ <= NOT \inst1|19~combout\;
\inst1|ALT_INV_20~combout\ <= NOT \inst1|20~combout\;
\inst1|ALT_INV_21~combout\ <= NOT \inst1|21~combout\;
\inst1|ALT_INV_22~combout\ <= NOT \inst1|22~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y24_N16
\y[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_22~combout\,
	devoe => ww_devoe,
	o => \y[15]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\y[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_21~combout\,
	devoe => ww_devoe,
	o => \y[14]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\y[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_20~combout\,
	devoe => ww_devoe,
	o => \y[13]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\y[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_19~combout\,
	devoe => ww_devoe,
	o => \y[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\y[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_18~combout\,
	devoe => ww_devoe,
	o => \y[11]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\y[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_17~combout\,
	devoe => ww_devoe,
	o => \y[10]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\y[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_16~combout\,
	devoe => ww_devoe,
	o => \y[9]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\y[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_15~combout\,
	devoe => ww_devoe,
	o => \y[8]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\y[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_22~combout\,
	devoe => ww_devoe,
	o => \y[7]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\y[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_21~combout\,
	devoe => ww_devoe,
	o => \y[6]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\y[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_20~combout\,
	devoe => ww_devoe,
	o => \y[5]~output_o\);

-- Location: IOOBUF_X1_Y24_N2
\y[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_19~combout\,
	devoe => ww_devoe,
	o => \y[4]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_18~combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_17~combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_16~combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_15~combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: IOIBUF_X23_Y24_N1
\En~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_En,
	o => \En~input_o\);

-- Location: IOIBUF_X3_Y24_N22
\in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(1),
	o => \in[1]~input_o\);

-- Location: IOIBUF_X9_Y24_N8
\in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(2),
	o => \in[2]~input_o\);

-- Location: LCCOMB_X9_Y21_N16
\inst1|22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|22~0_combout\ = (\in[1]~input_o\ & \in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[1]~input_o\,
	datac => \in[2]~input_o\,
	combout => \inst1|22~0_combout\);

-- Location: IOIBUF_X23_Y24_N15
\in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(0),
	o => \in[0]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(3),
	o => \in[3]~input_o\);

-- Location: LCCOMB_X9_Y21_N18
\inst1|22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|22~combout\ = (!\En~input_o\ & (\inst1|22~0_combout\ & (\in[0]~input_o\ & \in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \En~input_o\,
	datab => \inst1|22~0_combout\,
	datac => \in[0]~input_o\,
	datad => \in[3]~input_o\,
	combout => \inst1|22~combout\);

-- Location: LCCOMB_X9_Y21_N28
\inst1|21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|21~combout\ = (!\En~input_o\ & (\inst1|22~0_combout\ & (!\in[0]~input_o\ & \in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \En~input_o\,
	datab => \inst1|22~0_combout\,
	datac => \in[0]~input_o\,
	datad => \in[3]~input_o\,
	combout => \inst1|21~combout\);

-- Location: LCCOMB_X9_Y21_N30
\inst1|20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|20~0_combout\ = (!\in[1]~input_o\ & \in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[1]~input_o\,
	datac => \in[2]~input_o\,
	combout => \inst1|20~0_combout\);

-- Location: LCCOMB_X9_Y21_N0
\inst1|20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|20~combout\ = (\inst1|20~0_combout\ & (\in[0]~input_o\ & (!\En~input_o\ & \in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|20~0_combout\,
	datab => \in[0]~input_o\,
	datac => \En~input_o\,
	datad => \in[3]~input_o\,
	combout => \inst1|20~combout\);

-- Location: LCCOMB_X9_Y21_N2
\inst1|19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|19~combout\ = (\inst1|20~0_combout\ & (!\in[0]~input_o\ & (!\En~input_o\ & \in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|20~0_combout\,
	datab => \in[0]~input_o\,
	datac => \En~input_o\,
	datad => \in[3]~input_o\,
	combout => \inst1|19~combout\);

-- Location: LCCOMB_X9_Y21_N12
\inst1|18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|18~0_combout\ = (\in[1]~input_o\ & !\in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[1]~input_o\,
	datac => \in[2]~input_o\,
	combout => \inst1|18~0_combout\);

-- Location: LCCOMB_X9_Y21_N14
\inst1|18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|18~combout\ = (\inst1|18~0_combout\ & (\in[0]~input_o\ & (!\En~input_o\ & \in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|18~0_combout\,
	datab => \in[0]~input_o\,
	datac => \En~input_o\,
	datad => \in[3]~input_o\,
	combout => \inst1|18~combout\);

-- Location: LCCOMB_X9_Y21_N24
\inst1|17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|17~combout\ = (\inst1|18~0_combout\ & (!\in[0]~input_o\ & (!\En~input_o\ & \in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|18~0_combout\,
	datab => \in[0]~input_o\,
	datac => \En~input_o\,
	datad => \in[3]~input_o\,
	combout => \inst1|17~combout\);

-- Location: LCCOMB_X9_Y21_N26
\inst1|16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|16~0_combout\ = (!\in[1]~input_o\ & !\in[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in[1]~input_o\,
	datac => \in[2]~input_o\,
	combout => \inst1|16~0_combout\);

-- Location: LCCOMB_X26_Y18_N0
\inst1|16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|16~combout\ = (\inst1|16~0_combout\ & (!\En~input_o\ & (\in[3]~input_o\ & \in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|16~0_combout\,
	datab => \En~input_o\,
	datac => \in[3]~input_o\,
	datad => \in[0]~input_o\,
	combout => \inst1|16~combout\);

-- Location: LCCOMB_X26_Y18_N26
\inst1|15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|15~combout\ = (\inst1|16~0_combout\ & (!\En~input_o\ & (\in[3]~input_o\ & !\in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|16~0_combout\,
	datab => \En~input_o\,
	datac => \in[3]~input_o\,
	datad => \in[0]~input_o\,
	combout => \inst1|15~combout\);

-- Location: LCCOMB_X9_Y21_N4
\inst|22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|22~combout\ = (!\En~input_o\ & (\inst1|22~0_combout\ & (\in[0]~input_o\ & !\in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \En~input_o\,
	datab => \inst1|22~0_combout\,
	datac => \in[0]~input_o\,
	datad => \in[3]~input_o\,
	combout => \inst|22~combout\);

-- Location: LCCOMB_X9_Y21_N22
\inst|21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|21~combout\ = (!\En~input_o\ & (\inst1|22~0_combout\ & (!\in[0]~input_o\ & !\in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \En~input_o\,
	datab => \inst1|22~0_combout\,
	datac => \in[0]~input_o\,
	datad => \in[3]~input_o\,
	combout => \inst|21~combout\);

-- Location: LCCOMB_X9_Y21_N8
\inst|20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|20~combout\ = (\inst1|20~0_combout\ & (\in[0]~input_o\ & (!\En~input_o\ & !\in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|20~0_combout\,
	datab => \in[0]~input_o\,
	datac => \En~input_o\,
	datad => \in[3]~input_o\,
	combout => \inst|20~combout\);

-- Location: LCCOMB_X9_Y21_N10
\inst|19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|19~combout\ = (\inst1|20~0_combout\ & (!\in[0]~input_o\ & (!\En~input_o\ & !\in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|20~0_combout\,
	datab => \in[0]~input_o\,
	datac => \En~input_o\,
	datad => \in[3]~input_o\,
	combout => \inst|19~combout\);

-- Location: LCCOMB_X9_Y21_N20
\inst|18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|18~combout\ = (\inst1|18~0_combout\ & (\in[0]~input_o\ & (!\En~input_o\ & !\in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|18~0_combout\,
	datab => \in[0]~input_o\,
	datac => \En~input_o\,
	datad => \in[3]~input_o\,
	combout => \inst|18~combout\);

-- Location: LCCOMB_X9_Y21_N6
\inst|17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|17~combout\ = (\inst1|18~0_combout\ & (!\in[0]~input_o\ & (!\En~input_o\ & !\in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|18~0_combout\,
	datab => \in[0]~input_o\,
	datac => \En~input_o\,
	datad => \in[3]~input_o\,
	combout => \inst|17~combout\);

-- Location: LCCOMB_X26_Y18_N4
\inst|16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|16~combout\ = (\inst1|16~0_combout\ & (!\En~input_o\ & (!\in[3]~input_o\ & \in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|16~0_combout\,
	datab => \En~input_o\,
	datac => \in[3]~input_o\,
	datad => \in[0]~input_o\,
	combout => \inst|16~combout\);

-- Location: LCCOMB_X26_Y18_N30
\inst|15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|15~combout\ = (\inst1|16~0_combout\ & (!\En~input_o\ & (!\in[3]~input_o\ & !\in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|16~0_combout\,
	datab => \En~input_o\,
	datac => \in[3]~input_o\,
	datad => \in[0]~input_o\,
	combout => \inst|15~combout\);

ww_y(15) <= \y[15]~output_o\;

ww_y(14) <= \y[14]~output_o\;

ww_y(13) <= \y[13]~output_o\;

ww_y(12) <= \y[12]~output_o\;

ww_y(11) <= \y[11]~output_o\;

ww_y(10) <= \y[10]~output_o\;

ww_y(9) <= \y[9]~output_o\;

ww_y(8) <= \y[8]~output_o\;

ww_y(7) <= \y[7]~output_o\;

ww_y(6) <= \y[6]~output_o\;

ww_y(5) <= \y[5]~output_o\;

ww_y(4) <= \y[4]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(0) <= \y[0]~output_o\;
END structure;



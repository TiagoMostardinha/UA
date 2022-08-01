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

-- DATE "12/14/2021 21:30:29"

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

ENTITY 	PEnc8_3_T IS
    PORT (
	OS : OUT std_logic;
	En0 : IN std_logic;
	x : IN std_logic_vector(7 DOWNTO 0);
	y2 : OUT std_logic;
	y0 : OUT std_logic;
	y1 : OUT std_logic
	);
END PEnc8_3_T;

-- Design Ports Information
-- OS	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y2	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y0	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y1	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[7]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[6]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[5]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[4]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[3]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[2]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[1]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x[0]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- En0	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PEnc8_3_T IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OS : std_logic;
SIGNAL ww_En0 : std_logic;
SIGNAL ww_x : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y2 : std_logic;
SIGNAL ww_y0 : std_logic;
SIGNAL ww_y1 : std_logic;
SIGNAL \OS~output_o\ : std_logic;
SIGNAL \y2~output_o\ : std_logic;
SIGNAL \y0~output_o\ : std_logic;
SIGNAL \y1~output_o\ : std_logic;
SIGNAL \x[1]~input_o\ : std_logic;
SIGNAL \x[3]~input_o\ : std_logic;
SIGNAL \x[0]~input_o\ : std_logic;
SIGNAL \x[2]~input_o\ : std_logic;
SIGNAL \inst1|inst6~0_combout\ : std_logic;
SIGNAL \x[4]~input_o\ : std_logic;
SIGNAL \x[5]~input_o\ : std_logic;
SIGNAL \x[7]~input_o\ : std_logic;
SIGNAL \x[6]~input_o\ : std_logic;
SIGNAL \inst|inst6~0_combout\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \En0~input_o\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;
SIGNAL \inst8~1_combout\ : std_logic;
SIGNAL \inst7~0_combout\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \ALT_INV_inst7~combout\ : std_logic;
SIGNAL \ALT_INV_inst6~combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst6~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

OS <= ww_OS;
ww_En0 <= En0;
ww_x <= x;
y2 <= ww_y2;
y0 <= ww_y0;
y1 <= ww_y1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst7~combout\ <= NOT \inst7~combout\;
\ALT_INV_inst6~combout\ <= NOT \inst6~combout\;
\inst|ALT_INV_inst6~0_combout\ <= NOT \inst|inst6~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y0_N2
\OS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst6~combout\,
	devoe => ww_devoe,
	o => \OS~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\y2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_inst6~0_combout\,
	devoe => ww_devoe,
	o => \y2~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\y0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8~1_combout\,
	devoe => ww_devoe,
	o => \y0~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\y1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst7~combout\,
	devoe => ww_devoe,
	o => \y1~output_o\);

-- Location: IOIBUF_X0_Y5_N15
\x[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(1),
	o => \x[1]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\x[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(3),
	o => \x[3]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\x[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(0),
	o => \x[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\x[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(2),
	o => \x[2]~input_o\);

-- Location: LCCOMB_X12_Y1_N10
\inst1|inst6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst6~0_combout\ = (\x[1]~input_o\ & (\x[3]~input_o\ & (\x[0]~input_o\ & \x[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \x[3]~input_o\,
	datac => \x[0]~input_o\,
	datad => \x[2]~input_o\,
	combout => \inst1|inst6~0_combout\);

-- Location: IOIBUF_X1_Y0_N22
\x[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(4),
	o => \x[4]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\x[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(5),
	o => \x[5]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\x[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(7),
	o => \x[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\x[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x(6),
	o => \x[6]~input_o\);

-- Location: LCCOMB_X12_Y1_N16
\inst|inst6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst6~0_combout\ = (\x[4]~input_o\ & (\x[5]~input_o\ & (\x[7]~input_o\ & \x[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[4]~input_o\,
	datab => \x[5]~input_o\,
	datac => \x[7]~input_o\,
	datad => \x[6]~input_o\,
	combout => \inst|inst6~0_combout\);

-- Location: LCCOMB_X12_Y1_N12
inst6 : cycloneive_lcell_comb
-- Equation(s):
-- \inst6~combout\ = (\inst1|inst6~0_combout\) # (\inst|inst6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6~0_combout\,
	datad => \inst|inst6~0_combout\,
	combout => \inst6~combout\);

-- Location: IOIBUF_X5_Y0_N22
\En0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_En0,
	o => \En0~input_o\);

-- Location: LCCOMB_X12_Y1_N6
\inst8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = (!\En0~input_o\ & ((\x[3]~input_o\) # ((\x[1]~input_o\ & !\x[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[1]~input_o\,
	datab => \x[3]~input_o\,
	datac => \En0~input_o\,
	datad => \x[2]~input_o\,
	combout => \inst8~0_combout\);

-- Location: LCCOMB_X12_Y1_N24
\inst8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8~1_combout\ = (\inst8~0_combout\ & ((\x[7]~input_o\) # ((\x[5]~input_o\ & !\x[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8~0_combout\,
	datab => \x[5]~input_o\,
	datac => \x[7]~input_o\,
	datad => \x[6]~input_o\,
	combout => \inst8~1_combout\);

-- Location: LCCOMB_X12_Y1_N26
\inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7~0_combout\ = (\x[2]~input_o\ & (((!\x[7]~input_o\ & !\x[6]~input_o\)))) # (!\x[2]~input_o\ & (((!\x[7]~input_o\ & !\x[6]~input_o\)) # (!\x[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x[2]~input_o\,
	datab => \x[3]~input_o\,
	datac => \x[7]~input_o\,
	datad => \x[6]~input_o\,
	combout => \inst7~0_combout\);

-- Location: LCCOMB_X12_Y1_N4
inst7 : cycloneive_lcell_comb
-- Equation(s):
-- \inst7~combout\ = (\inst7~0_combout\) # (\En0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~0_combout\,
	datac => \En0~input_o\,
	combout => \inst7~combout\);

ww_OS <= \OS~output_o\;

ww_y2 <= \y2~output_o\;

ww_y0 <= \y0~output_o\;

ww_y1 <= \y1~output_o\;
END structure;



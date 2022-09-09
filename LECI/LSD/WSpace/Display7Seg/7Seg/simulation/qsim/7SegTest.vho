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

-- DATE "06/14/2021 20:02:58"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bin7seg_buffer IS
    PORT (
	binIn : IN std_logic_vector(3 DOWNTO 0);
	binOut : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END bin7seg_buffer;

ARCHITECTURE structure OF bin7seg_buffer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_binIn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_binOut : std_logic_vector(15 DOWNTO 0);
SIGNAL \binOut[0]~output_o\ : std_logic;
SIGNAL \binOut[1]~output_o\ : std_logic;
SIGNAL \binOut[2]~output_o\ : std_logic;
SIGNAL \binOut[3]~output_o\ : std_logic;
SIGNAL \binOut[4]~output_o\ : std_logic;
SIGNAL \binOut[5]~output_o\ : std_logic;
SIGNAL \binOut[6]~output_o\ : std_logic;
SIGNAL \binOut[7]~output_o\ : std_logic;
SIGNAL \binOut[8]~output_o\ : std_logic;
SIGNAL \binOut[9]~output_o\ : std_logic;
SIGNAL \binOut[10]~output_o\ : std_logic;
SIGNAL \binOut[11]~output_o\ : std_logic;
SIGNAL \binOut[12]~output_o\ : std_logic;
SIGNAL \binOut[13]~output_o\ : std_logic;
SIGNAL \binOut[14]~output_o\ : std_logic;
SIGNAL \binOut[15]~output_o\ : std_logic;
SIGNAL \binIn[0]~input_o\ : std_logic;
SIGNAL \binIn[1]~input_o\ : std_logic;
SIGNAL \binIn[2]~input_o\ : std_logic;
SIGNAL \binIn[3]~input_o\ : std_logic;
SIGNAL \binOut~0_combout\ : std_logic;
SIGNAL \binOut~1_combout\ : std_logic;
SIGNAL \binOut~2_combout\ : std_logic;
SIGNAL \binOut~3_combout\ : std_logic;
SIGNAL \binOut~4_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \binOut~5_combout\ : std_logic;
SIGNAL \binOut~6_combout\ : std_logic;
SIGNAL \binOut~7_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \binOut~8_combout\ : std_logic;
SIGNAL \binOut~9_combout\ : std_logic;
SIGNAL \ALT_INV_binOut~3_combout\ : std_logic;
SIGNAL \ALT_INV_binOut~6_combout\ : std_logic;

BEGIN

ww_binIn <= binIn;
binOut <= ww_binOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_binOut~3_combout\ <= NOT \binOut~3_combout\;
\ALT_INV_binOut~6_combout\ <= NOT \binOut~6_combout\;

\binOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binOut~0_combout\,
	devoe => ww_devoe,
	o => \binOut[0]~output_o\);

\binOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binOut~1_combout\,
	devoe => ww_devoe,
	o => \binOut[1]~output_o\);

\binOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binOut~2_combout\,
	devoe => ww_devoe,
	o => \binOut[2]~output_o\);

\binOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \binOut[3]~output_o\);

\binOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_binOut~3_combout\,
	devoe => ww_devoe,
	o => \binOut[4]~output_o\);

\binOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binOut~4_combout\,
	devoe => ww_devoe,
	o => \binOut[5]~output_o\);

\binOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal3~0_combout\,
	devoe => ww_devoe,
	o => \binOut[6]~output_o\);

\binOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binOut~5_combout\,
	devoe => ww_devoe,
	o => \binOut[7]~output_o\);

\binOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binOut~1_combout\,
	devoe => ww_devoe,
	o => \binOut[8]~output_o\);

\binOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_binOut~6_combout\,
	devoe => ww_devoe,
	o => \binOut[9]~output_o\);

\binOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binOut~1_combout\,
	devoe => ww_devoe,
	o => \binOut[10]~output_o\);

\binOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binOut~7_combout\,
	devoe => ww_devoe,
	o => \binOut[11]~output_o\);

\binOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_binOut~6_combout\,
	devoe => ww_devoe,
	o => \binOut[12]~output_o\);

\binOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => \binOut[13]~output_o\);

\binOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binOut~8_combout\,
	devoe => ww_devoe,
	o => \binOut[14]~output_o\);

\binOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \binOut~9_combout\,
	devoe => ww_devoe,
	o => \binOut[15]~output_o\);

\binIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binIn(0),
	o => \binIn[0]~input_o\);

\binIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binIn(1),
	o => \binIn[1]~input_o\);

\binIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binIn(2),
	o => \binIn[2]~input_o\);

\binIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_binIn(3),
	o => \binIn[3]~input_o\);

\binOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \binOut~0_combout\ = (!\binIn[2]~input_o\ & (!\binIn[3]~input_o\ & ((\binIn[0]~input_o\) # (!\binIn[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIn[0]~input_o\,
	datab => \binIn[1]~input_o\,
	datac => \binIn[2]~input_o\,
	datad => \binIn[3]~input_o\,
	combout => \binOut~0_combout\);

\binOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \binOut~1_combout\ = (!\binIn[2]~input_o\ & (!\binIn[3]~input_o\ & (\binIn[0]~input_o\ $ (!\binIn[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIn[0]~input_o\,
	datab => \binIn[1]~input_o\,
	datac => \binIn[2]~input_o\,
	datad => \binIn[3]~input_o\,
	combout => \binOut~1_combout\);

\binOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \binOut~2_combout\ = (!\binIn[3]~input_o\ & ((\binIn[0]~input_o\ & (\binIn[1]~input_o\ & !\binIn[2]~input_o\)) # (!\binIn[0]~input_o\ & (!\binIn[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIn[0]~input_o\,
	datab => \binIn[1]~input_o\,
	datac => \binIn[2]~input_o\,
	datad => \binIn[3]~input_o\,
	combout => \binOut~2_combout\);

\binOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \binOut~3_combout\ = (\binIn[3]~input_o\) # ((\binIn[2]~input_o\ & ((\binIn[0]~input_o\) # (\binIn[1]~input_o\))) # (!\binIn[2]~input_o\ & (\binIn[0]~input_o\ & \binIn[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIn[3]~input_o\,
	datab => \binIn[2]~input_o\,
	datac => \binIn[0]~input_o\,
	datad => \binIn[1]~input_o\,
	combout => \binOut~3_combout\);

\binOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \binOut~4_combout\ = (!\binIn[2]~input_o\ & (!\binIn[3]~input_o\ & ((\binIn[1]~input_o\) # (!\binIn[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIn[1]~input_o\,
	datab => \binIn[0]~input_o\,
	datac => \binIn[2]~input_o\,
	datad => \binIn[3]~input_o\,
	combout => \binOut~4_combout\);

\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\binIn[0]~input_o\ & (\binIn[1]~input_o\ & (!\binIn[2]~input_o\ & !\binIn[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIn[0]~input_o\,
	datab => \binIn[1]~input_o\,
	datac => \binIn[2]~input_o\,
	datad => \binIn[3]~input_o\,
	combout => \Equal3~0_combout\);

\binOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \binOut~5_combout\ = (!\binIn[3]~input_o\ & (!\binIn[1]~input_o\ & ((!\binIn[0]~input_o\) # (!\binIn[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIn[2]~input_o\,
	datab => \binIn[0]~input_o\,
	datac => \binIn[3]~input_o\,
	datad => \binIn[1]~input_o\,
	combout => \binOut~5_combout\);

\binOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \binOut~6_combout\ = (\binIn[2]~input_o\) # ((\binIn[3]~input_o\) # ((\binIn[0]~input_o\ & \binIn[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIn[2]~input_o\,
	datab => \binIn[3]~input_o\,
	datac => \binIn[0]~input_o\,
	datad => \binIn[1]~input_o\,
	combout => \binOut~6_combout\);

\binOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \binOut~7_combout\ = (!\binIn[3]~input_o\ & (!\binIn[1]~input_o\ & (\binIn[2]~input_o\ $ (\binIn[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIn[2]~input_o\,
	datab => \binIn[0]~input_o\,
	datac => \binIn[3]~input_o\,
	datad => \binIn[1]~input_o\,
	combout => \binOut~7_combout\);

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\binIn[2]~input_o\ & (!\binIn[3]~input_o\ & (!\binIn[0]~input_o\ & !\binIn[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIn[2]~input_o\,
	datab => \binIn[3]~input_o\,
	datac => \binIn[0]~input_o\,
	datad => \binIn[1]~input_o\,
	combout => \Equal0~0_combout\);

\binOut~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \binOut~8_combout\ = (!\binIn[3]~input_o\ & ((\binIn[0]~input_o\ & (\binIn[1]~input_o\ & !\binIn[2]~input_o\)) # (!\binIn[0]~input_o\ & (!\binIn[1]~input_o\ & \binIn[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binIn[0]~input_o\,
	datab => \binIn[1]~input_o\,
	datac => \binIn[2]~input_o\,
	datad => \binIn[3]~input_o\,
	combout => \binOut~8_combout\);

\binOut~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \binOut~9_combout\ = (!\binIn[2]~input_o\ & (!\binIn[3]~input_o\ & !\binIn[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \binIn[2]~input_o\,
	datac => \binIn[3]~input_o\,
	datad => \binIn[1]~input_o\,
	combout => \binOut~9_combout\);

ww_binOut(0) <= \binOut[0]~output_o\;

ww_binOut(1) <= \binOut[1]~output_o\;

ww_binOut(2) <= \binOut[2]~output_o\;

ww_binOut(3) <= \binOut[3]~output_o\;

ww_binOut(4) <= \binOut[4]~output_o\;

ww_binOut(5) <= \binOut[5]~output_o\;

ww_binOut(6) <= \binOut[6]~output_o\;

ww_binOut(7) <= \binOut[7]~output_o\;

ww_binOut(8) <= \binOut[8]~output_o\;

ww_binOut(9) <= \binOut[9]~output_o\;

ww_binOut(10) <= \binOut[10]~output_o\;

ww_binOut(11) <= \binOut[11]~output_o\;

ww_binOut(12) <= \binOut[12]~output_o\;

ww_binOut(13) <= \binOut[13]~output_o\;

ww_binOut(14) <= \binOut[14]~output_o\;

ww_binOut(15) <= \binOut[15]~output_o\;
END structure;



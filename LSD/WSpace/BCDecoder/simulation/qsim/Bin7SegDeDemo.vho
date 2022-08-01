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

-- DATE "04/24/2021 17:10:11"

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

ENTITY 	Bin7SegDe IS
    PORT (
	in0 : IN std_logic_vector(3 DOWNTO 0);
	out0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Bin7SegDe;

ARCHITECTURE structure OF Bin7SegDe IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_out0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \out0[0]~output_o\ : std_logic;
SIGNAL \out0[1]~output_o\ : std_logic;
SIGNAL \out0[2]~output_o\ : std_logic;
SIGNAL \out0[3]~output_o\ : std_logic;
SIGNAL \out0[4]~output_o\ : std_logic;
SIGNAL \out0[5]~output_o\ : std_logic;
SIGNAL \out0[6]~output_o\ : std_logic;
SIGNAL \in0[3]~input_o\ : std_logic;
SIGNAL \in0[2]~input_o\ : std_logic;
SIGNAL \in0[1]~input_o\ : std_logic;
SIGNAL \in0[0]~input_o\ : std_logic;
SIGNAL \out0~0_combout\ : std_logic;
SIGNAL \out0~1_combout\ : std_logic;
SIGNAL \out0~2_combout\ : std_logic;
SIGNAL \out0~3_combout\ : std_logic;
SIGNAL \out0~4_combout\ : std_logic;
SIGNAL \out0~5_combout\ : std_logic;
SIGNAL \out0~6_combout\ : std_logic;

BEGIN

ww_in0 <= in0;
out0 <= ww_out0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\out0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out0~0_combout\,
	devoe => ww_devoe,
	o => \out0[0]~output_o\);

\out0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out0~1_combout\,
	devoe => ww_devoe,
	o => \out0[1]~output_o\);

\out0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out0~2_combout\,
	devoe => ww_devoe,
	o => \out0[2]~output_o\);

\out0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out0~3_combout\,
	devoe => ww_devoe,
	o => \out0[3]~output_o\);

\out0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out0~4_combout\,
	devoe => ww_devoe,
	o => \out0[4]~output_o\);

\out0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out0~5_combout\,
	devoe => ww_devoe,
	o => \out0[5]~output_o\);

\out0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out0~6_combout\,
	devoe => ww_devoe,
	o => \out0[6]~output_o\);

\in0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(3),
	o => \in0[3]~input_o\);

\in0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(2),
	o => \in0[2]~input_o\);

\in0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(1),
	o => \in0[1]~input_o\);

\in0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(0),
	o => \in0[0]~input_o\);

\out0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out0~0_combout\ = (\in0[3]~input_o\ & (!\in0[2]~input_o\ & (\in0[1]~input_o\ & \in0[0]~input_o\))) # (!\in0[3]~input_o\ & (!\in0[1]~input_o\ & (\in0[2]~input_o\ $ (\in0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[3]~input_o\,
	datab => \in0[2]~input_o\,
	datac => \in0[1]~input_o\,
	datad => \in0[0]~input_o\,
	combout => \out0~0_combout\);

\out0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out0~1_combout\ = (\in0[3]~input_o\ & ((\in0[0]~input_o\ & ((\in0[1]~input_o\))) # (!\in0[0]~input_o\ & (\in0[2]~input_o\)))) # (!\in0[3]~input_o\ & (\in0[2]~input_o\ & (\in0[0]~input_o\ $ (\in0[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[3]~input_o\,
	datab => \in0[2]~input_o\,
	datac => \in0[0]~input_o\,
	datad => \in0[1]~input_o\,
	combout => \out0~1_combout\);

\out0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \out0~2_combout\ = (\in0[3]~input_o\ & (\in0[2]~input_o\ & ((\in0[1]~input_o\) # (!\in0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[3]~input_o\,
	datab => \in0[2]~input_o\,
	datac => \in0[1]~input_o\,
	datad => \in0[0]~input_o\,
	combout => \out0~2_combout\);

\out0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \out0~3_combout\ = (\in0[1]~input_o\ & ((\in0[2]~input_o\ & (\in0[0]~input_o\)) # (!\in0[2]~input_o\ & (!\in0[0]~input_o\ & \in0[3]~input_o\)))) # (!\in0[1]~input_o\ & (!\in0[3]~input_o\ & (\in0[2]~input_o\ $ (\in0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[1]~input_o\,
	datab => \in0[2]~input_o\,
	datac => \in0[0]~input_o\,
	datad => \in0[3]~input_o\,
	combout => \out0~3_combout\);

\out0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \out0~4_combout\ = (\in0[1]~input_o\ & (\in0[0]~input_o\ & ((!\in0[3]~input_o\)))) # (!\in0[1]~input_o\ & ((\in0[2]~input_o\ & ((!\in0[3]~input_o\))) # (!\in0[2]~input_o\ & (\in0[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[0]~input_o\,
	datab => \in0[1]~input_o\,
	datac => \in0[2]~input_o\,
	datad => \in0[3]~input_o\,
	combout => \out0~4_combout\);

\out0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \out0~5_combout\ = (\in0[0]~input_o\ & (!\in0[3]~input_o\ & ((\in0[1]~input_o\) # (!\in0[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[0]~input_o\,
	datab => \in0[1]~input_o\,
	datac => \in0[2]~input_o\,
	datad => \in0[3]~input_o\,
	combout => \out0~5_combout\);

\out0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \out0~6_combout\ = (\in0[3]~input_o\ & (\in0[2]~input_o\ & ((!\in0[1]~input_o\)))) # (!\in0[3]~input_o\ & (\in0[2]~input_o\ $ (((!\in0[1]~input_o\) # (!\in0[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[2]~input_o\,
	datab => \in0[0]~input_o\,
	datac => \in0[3]~input_o\,
	datad => \in0[1]~input_o\,
	combout => \out0~6_combout\);

ww_out0(0) <= \out0[0]~output_o\;

ww_out0(1) <= \out0[1]~output_o\;

ww_out0(2) <= \out0[2]~output_o\;

ww_out0(3) <= \out0[3]~output_o\;

ww_out0(4) <= \out0[4]~output_o\;

ww_out0(5) <= \out0[5]~output_o\;

ww_out0(6) <= \out0[6]~output_o\;
END structure;



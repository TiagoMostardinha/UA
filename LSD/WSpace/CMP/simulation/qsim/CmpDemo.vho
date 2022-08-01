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

-- DATE "04/25/2021 10:13:48"

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

ENTITY 	Cmp2_noP IS
    PORT (
	in0 : IN std_logic_vector(1 DOWNTO 0);
	in1 : IN std_logic_vector(1 DOWNTO 0);
	outl : BUFFER std_logic;
	oute : BUFFER std_logic;
	outg : BUFFER std_logic
	);
END Cmp2_noP;

ARCHITECTURE structure OF Cmp2_noP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in0 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_in1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_outl : std_logic;
SIGNAL ww_oute : std_logic;
SIGNAL ww_outg : std_logic;
SIGNAL \outl~output_o\ : std_logic;
SIGNAL \oute~output_o\ : std_logic;
SIGNAL \outg~output_o\ : std_logic;
SIGNAL \in1[1]~input_o\ : std_logic;
SIGNAL \in1[0]~input_o\ : std_logic;
SIGNAL \in0[0]~input_o\ : std_logic;
SIGNAL \in0[1]~input_o\ : std_logic;
SIGNAL \outl~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \outg~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_in0 <= in0;
ww_in1 <= in1;
outl <= ww_outl;
oute <= ww_oute;
outg <= ww_outg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;

\outl~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outl~0_combout\,
	devoe => ww_devoe,
	o => \outl~output_o\);

\oute~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Equal0~0_combout\,
	devoe => ww_devoe,
	o => \oute~output_o\);

\outg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outg~0_combout\,
	devoe => ww_devoe,
	o => \outg~output_o\);

\in1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(1),
	o => \in1[1]~input_o\);

\in1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1(0),
	o => \in1[0]~input_o\);

\in0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(0),
	o => \in0[0]~input_o\);

\in0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0(1),
	o => \in0[1]~input_o\);

\outl~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outl~0_combout\ = (\in1[1]~input_o\ & (((\in1[0]~input_o\ & !\in0[0]~input_o\)) # (!\in0[1]~input_o\))) # (!\in1[1]~input_o\ & (\in1[0]~input_o\ & (!\in0[0]~input_o\ & !\in0[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in1[1]~input_o\,
	datab => \in1[0]~input_o\,
	datac => \in0[0]~input_o\,
	datad => \in0[1]~input_o\,
	combout => \outl~0_combout\);

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\in0[1]~input_o\ & ((\in0[0]~input_o\ $ (\in1[0]~input_o\)) # (!\in1[1]~input_o\))) # (!\in0[1]~input_o\ & ((\in1[1]~input_o\) # (\in0[0]~input_o\ $ (\in1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[1]~input_o\,
	datab => \in1[1]~input_o\,
	datac => \in0[0]~input_o\,
	datad => \in1[0]~input_o\,
	combout => \Equal0~0_combout\);

\outg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \outg~0_combout\ = (\in0[1]~input_o\ & (((\in0[0]~input_o\ & !\in1[0]~input_o\)) # (!\in1[1]~input_o\))) # (!\in0[1]~input_o\ & (\in0[0]~input_o\ & (!\in1[0]~input_o\ & !\in1[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[1]~input_o\,
	datab => \in0[0]~input_o\,
	datac => \in1[0]~input_o\,
	datad => \in1[1]~input_o\,
	combout => \outg~0_combout\);

ww_outl <= \outl~output_o\;

ww_oute <= \oute~output_o\;

ww_outg <= \outg~output_o\;
END structure;



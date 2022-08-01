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

-- DATE "04/20/2021 17:27:18"

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

ENTITY 	EqCmp4 IS
    PORT (
	inPort0 : IN std_logic_vector(3 DOWNTO 0);
	inPort1 : IN std_logic_vector(3 DOWNTO 0);
	cmpOut : BUFFER std_logic
	);
END EqCmp4;

ARCHITECTURE structure OF EqCmp4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_inPort0 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_inPort1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cmpOut : std_logic;
SIGNAL \cmpOut~output_o\ : std_logic;
SIGNAL \inPort0[0]~input_o\ : std_logic;
SIGNAL \inPort0[1]~input_o\ : std_logic;
SIGNAL \inPort1[1]~input_o\ : std_logic;
SIGNAL \inPort1[0]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \inPort0[2]~input_o\ : std_logic;
SIGNAL \inPort0[3]~input_o\ : std_logic;
SIGNAL \inPort1[3]~input_o\ : std_logic;
SIGNAL \inPort1[2]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;

BEGIN

ww_inPort0 <= inPort0;
ww_inPort1 <= inPort1;
cmpOut <= ww_cmpOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cmpOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~2_combout\,
	devoe => ww_devoe,
	o => \cmpOut~output_o\);

\inPort0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPort0(0),
	o => \inPort0[0]~input_o\);

\inPort0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPort0(1),
	o => \inPort0[1]~input_o\);

\inPort1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPort1(1),
	o => \inPort1[1]~input_o\);

\inPort1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPort1(0),
	o => \inPort1[0]~input_o\);

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\inPort0[0]~input_o\ & (\inPort1[0]~input_o\ & (\inPort0[1]~input_o\ $ (!\inPort1[1]~input_o\)))) # (!\inPort0[0]~input_o\ & (!\inPort1[0]~input_o\ & (\inPort0[1]~input_o\ $ (!\inPort1[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inPort0[0]~input_o\,
	datab => \inPort0[1]~input_o\,
	datac => \inPort1[1]~input_o\,
	datad => \inPort1[0]~input_o\,
	combout => \Equal0~0_combout\);

\inPort0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPort0(2),
	o => \inPort0[2]~input_o\);

\inPort0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPort0(3),
	o => \inPort0[3]~input_o\);

\inPort1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPort1(3),
	o => \inPort1[3]~input_o\);

\inPort1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inPort1(2),
	o => \inPort1[2]~input_o\);

\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\inPort0[2]~input_o\ & (\inPort1[2]~input_o\ & (\inPort0[3]~input_o\ $ (!\inPort1[3]~input_o\)))) # (!\inPort0[2]~input_o\ & (!\inPort1[2]~input_o\ & (\inPort0[3]~input_o\ $ (!\inPort1[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inPort0[2]~input_o\,
	datab => \inPort0[3]~input_o\,
	datac => \inPort1[3]~input_o\,
	datad => \inPort1[2]~input_o\,
	combout => \Equal0~1_combout\);

\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & \Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

ww_cmpOut <= \cmpOut~output_o\;
END structure;



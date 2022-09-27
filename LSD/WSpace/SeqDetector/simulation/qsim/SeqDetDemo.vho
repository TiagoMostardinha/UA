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

-- DATE "06/01/2021 20:06:05"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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

ENTITY 	SeqDet101me IS
    PORT (
	clk : IN std_logic;
	din : IN std_logic;
	rst : IN std_logic;
	dout : OUT std_logic
	);
END SeqDet101me;

ARCHITECTURE structure OF SeqDet101me IS
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
SIGNAL ww_din : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_dout : std_logic;
SIGNAL \dout~output_o\ : std_logic;
SIGNAL \din~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \PS~6_combout\ : std_logic;
SIGNAL \PS.s1~q\ : std_logic;
SIGNAL \PS~5_combout\ : std_logic;
SIGNAL \PS.s2~q\ : std_logic;
SIGNAL \dout~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_din <= din;
ww_rst <= rst;
dout <= ww_dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dout~1_combout\,
	devoe => ww_devoe,
	o => \dout~output_o\);

\din~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din,
	o => \din~input_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

\PS~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~6_combout\ = (\din~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~input_o\,
	datad => \rst~input_o\,
	combout => \PS~6_combout\);

\PS.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PS~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.s1~q\);

\PS~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~5_combout\ = (!\din~input_o\ & (!\rst~input_o\ & \PS.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~input_o\,
	datab => \rst~input_o\,
	datad => \PS.s1~q\,
	combout => \PS~5_combout\);

\PS.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PS~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.s2~q\);

\dout~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dout~1_combout\ = (\din~input_o\ & \PS.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din~input_o\,
	datab => \PS.s2~q\,
	combout => \dout~1_combout\);

ww_dout <= \dout~output_o\;
END structure;



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

-- DATE "04/23/2021 17:35:15"

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

ENTITY 	NAND2Gate IS
    PORT (
	in0 : IN std_logic;
	in1 : IN std_logic;
	out0 : OUT std_logic
	);
END NAND2Gate;

ARCHITECTURE structure OF NAND2Gate IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_in0 : std_logic;
SIGNAL ww_in1 : std_logic;
SIGNAL ww_out0 : std_logic;
SIGNAL \out0~output_o\ : std_logic;
SIGNAL \in0~input_o\ : std_logic;
SIGNAL \in1~input_o\ : std_logic;
SIGNAL \and_gate|out0~combout\ : std_logic;
SIGNAL \and_gate|ALT_INV_out0~combout\ : std_logic;

BEGIN

ww_in0 <= in0;
ww_in1 <= in1;
out0 <= ww_out0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\and_gate|ALT_INV_out0~combout\ <= NOT \and_gate|out0~combout\;

\out0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \and_gate|ALT_INV_out0~combout\,
	devoe => ww_devoe,
	o => \out0~output_o\);

\in0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in0,
	o => \in0~input_o\);

\in1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in1,
	o => \in1~input_o\);

\and_gate|out0\ : cycloneive_lcell_comb
-- Equation(s):
-- \and_gate|out0~combout\ = (\in0~input_o\ & \in1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0~input_o\,
	datab => \in1~input_o\,
	combout => \and_gate|out0~combout\);

ww_out0 <= \out0~output_o\;
END structure;



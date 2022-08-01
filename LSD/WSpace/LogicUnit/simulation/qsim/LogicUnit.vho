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

-- DATE "04/21/2021 16:25:28"

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

ENTITY 	LogicDemo1 IS
    PORT (
	\NOT\ : OUT std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	\AND\ : OUT std_logic;
	\OR\ : OUT std_logic;
	\XOR\ : OUT std_logic;
	\NAND\ : OUT std_logic;
	\NOR\ : OUT std_logic
	);
END LogicDemo1;

ARCHITECTURE structure OF LogicDemo1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_NOT\ : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL \ww_AND\ : std_logic;
SIGNAL \ww_OR\ : std_logic;
SIGNAL \ww_XOR\ : std_logic;
SIGNAL \ww_NAND\ : std_logic;
SIGNAL \ww_NOR\ : std_logic;
SIGNAL \NOT~output_o\ : std_logic;
SIGNAL \AND~output_o\ : std_logic;
SIGNAL \OR~output_o\ : std_logic;
SIGNAL \XOR~output_o\ : std_logic;
SIGNAL \NAND~output_o\ : std_logic;
SIGNAL \NOR~output_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|andOut~combout\ : std_logic;
SIGNAL \inst|orOut~combout\ : std_logic;
SIGNAL \inst|xorOut~0_combout\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_andOut~combout\ : std_logic;
SIGNAL \inst|ALT_INV_orOut~combout\ : std_logic;

BEGIN

\NOT\ <= \ww_NOT\;
ww_SW <= SW;
\AND\ <= \ww_AND\;
\OR\ <= \ww_OR\;
\XOR\ <= \ww_XOR\;
\NAND\ <= \ww_NAND\;
\NOR\ <= \ww_NOR\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\inst|ALT_INV_andOut~combout\ <= NOT \inst|andOut~combout\;
\inst|ALT_INV_orOut~combout\ <= NOT \inst|orOut~combout\;

\NOT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SW[0]~input_o\,
	devoe => ww_devoe,
	o => \NOT~output_o\);

\AND~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|andOut~combout\,
	devoe => ww_devoe,
	o => \AND~output_o\);

\OR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|orOut~combout\,
	devoe => ww_devoe,
	o => \OR~output_o\);

\XOR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|xorOut~0_combout\,
	devoe => ww_devoe,
	o => \XOR~output_o\);

\NAND~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_andOut~combout\,
	devoe => ww_devoe,
	o => \NAND~output_o\);

\NOR~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_orOut~combout\,
	devoe => ww_devoe,
	o => \NOR~output_o\);

\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\inst|andOut\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|andOut~combout\ = (\SW[0]~input_o\ & \SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	combout => \inst|andOut~combout\);

\inst|orOut\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|orOut~combout\ = (\SW[0]~input_o\) # (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	combout => \inst|orOut~combout\);

\inst|xorOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|xorOut~0_combout\ = \SW[0]~input_o\ $ (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \inst|xorOut~0_combout\);

\ww_NOT\ <= \NOT~output_o\;

\ww_AND\ <= \AND~output_o\;

\ww_OR\ <= \OR~output_o\;

\ww_XOR\ <= \XOR~output_o\;

\ww_NAND\ <= \NAND~output_o\;

\ww_NOR\ <= \NOR~output_o\;
END structure;



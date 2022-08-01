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

-- DATE "04/23/2021 18:46:08"

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

ENTITY 	De2_4_noP IS
    PORT (
	enable : IN std_logic;
	in0 : IN std_logic_vector(1 DOWNTO 0);
	out0 : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END De2_4_noP;

ARCHITECTURE structure OF De2_4_noP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_in0 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_out0 : std_logic_vector(3 DOWNTO 0);
SIGNAL \out0[0]~output_o\ : std_logic;
SIGNAL \out0[1]~output_o\ : std_logic;
SIGNAL \out0[2]~output_o\ : std_logic;
SIGNAL \out0[3]~output_o\ : std_logic;
SIGNAL \in0[1]~input_o\ : std_logic;
SIGNAL \in0[0]~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \out0~0_combout\ : std_logic;
SIGNAL \out0~1_combout\ : std_logic;
SIGNAL \out0~2_combout\ : std_logic;
SIGNAL \out0~3_combout\ : std_logic;
SIGNAL \ALT_INV_out0~1_combout\ : std_logic;
SIGNAL \ALT_INV_out0~0_combout\ : std_logic;

BEGIN

ww_enable <= enable;
ww_in0 <= in0;
out0 <= ww_out0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_out0~1_combout\ <= NOT \out0~1_combout\;
\ALT_INV_out0~0_combout\ <= NOT \out0~0_combout\;

\out0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_out0~0_combout\,
	devoe => ww_devoe,
	o => \out0[0]~output_o\);

\out0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_out0~1_combout\,
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

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\out0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \out0~0_combout\ = (\in0[1]~input_o\) # ((\in0[0]~input_o\) # (!\enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[1]~input_o\,
	datab => \in0[0]~input_o\,
	datad => \enable~input_o\,
	combout => \out0~0_combout\);

\out0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \out0~1_combout\ = (\in0[1]~input_o\) # ((!\in0[0]~input_o\) # (!\enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[1]~input_o\,
	datac => \enable~input_o\,
	datad => \in0[0]~input_o\,
	combout => \out0~1_combout\);

\out0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \out0~2_combout\ = (\in0[1]~input_o\ & (\enable~input_o\ & !\in0[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[1]~input_o\,
	datab => \enable~input_o\,
	datad => \in0[0]~input_o\,
	combout => \out0~2_combout\);

\out0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \out0~3_combout\ = (\in0[1]~input_o\ & (\enable~input_o\ & \in0[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in0[1]~input_o\,
	datab => \enable~input_o\,
	datac => \in0[0]~input_o\,
	combout => \out0~3_combout\);

ww_out0(0) <= \out0[0]~output_o\;

ww_out0(1) <= \out0[1]~output_o\;

ww_out0(2) <= \out0[2]~output_o\;

ww_out0(3) <= \out0[3]~output_o\;
END structure;



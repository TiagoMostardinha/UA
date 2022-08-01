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

-- DATE "06/18/2021 18:15:30"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
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

ENTITY 	TimerAuxFSM IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	newTime : IN std_logic;
	enable : IN std_logic;
	timeVal : IN std_logic_vector(3 DOWNTO 0);
	timeExp : OUT std_logic
	);
END TimerAuxFSM;

ARCHITECTURE structure OF TimerAuxFSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_newTime : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_timeVal : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_timeExp : std_logic;
SIGNAL \timeExp~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \newTime~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \timeVal[2]~input_o\ : std_logic;
SIGNAL \timeVal[0]~input_o\ : std_logic;
SIGNAL \timeVal[1]~input_o\ : std_logic;
SIGNAL \s_counter~4_combout\ : std_logic;
SIGNAL \timeVal[3]~input_o\ : std_logic;
SIGNAL \s_counter~5_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \s_counter[0]~0_combout\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \s_counter[0]~7_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \s_counter[1]~1_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \s_counter[2]~2_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \s_counter[3]~3_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \s_counter~6_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \s_counter~8_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \s_counter~9_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \s_counter~10_combout\ : std_logic;
SIGNAL \s_cntZero~0_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \s_counter~11_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \s_counter~12_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \s_counter~13_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \s_counter~14_combout\ : std_logic;
SIGNAL \s_cntZero~1_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \s_counter~15_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \s_counter~16_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \s_counter~17_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \s_counter~18_combout\ : std_logic;
SIGNAL \s_cntZero~2_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \s_counter~19_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \s_counter~20_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \s_counter~21_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \s_counter~22_combout\ : std_logic;
SIGNAL \s_cntZero~3_combout\ : std_logic;
SIGNAL \s_cntZero~4_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \s_counter~23_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \s_counter~24_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \s_counter~25_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \s_counter~26_combout\ : std_logic;
SIGNAL \s_cntZero~5_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \s_counter~27_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \s_counter~28_combout\ : std_logic;
SIGNAL \s_cntZero~6_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \s_counter~29_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \s_counter~30_combout\ : std_logic;
SIGNAL \s_cntZero~7_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \s_counter~31_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \s_counter~32_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \s_counter~33_combout\ : std_logic;
SIGNAL \s_cntZero~8_combout\ : std_logic;
SIGNAL \s_cntZero~9_combout\ : std_logic;
SIGNAL \s_cntZero~10_combout\ : std_logic;
SIGNAL \s_cntZero~11_combout\ : std_logic;
SIGNAL \s_cntZero~q\ : std_logic;
SIGNAL s_counter : std_logic_vector(30 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_clk <= clk;
ww_newTime <= newTime;
ww_enable <= enable;
ww_timeVal <= timeVal;
timeExp <= ww_timeExp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\timeExp~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \s_cntZero~q\,
	devoe => ww_devoe,
	o => \timeExp~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\newTime~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_newTime,
	o => \newTime~input_o\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\timeVal[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeVal(2),
	o => \timeVal[2]~input_o\);

\timeVal[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeVal(0),
	o => \timeVal[0]~input_o\);

\timeVal[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeVal(1),
	o => \timeVal[1]~input_o\);

\s_counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~4_combout\ = (!\reset~input_o\ & (!\timeVal[2]~input_o\ & (!\timeVal[0]~input_o\ & !\timeVal[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \timeVal[2]~input_o\,
	datac => \timeVal[0]~input_o\,
	datad => \timeVal[1]~input_o\,
	combout => \s_counter~4_combout\);

\timeVal[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_timeVal(3),
	o => \timeVal[3]~input_o\);

\s_counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~5_combout\ = (\newTime~input_o\ & (\s_counter~4_combout\ & !\timeVal[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \newTime~input_o\,
	datab => \s_counter~4_combout\,
	datad => \timeVal[3]~input_o\,
	combout => \s_counter~5_combout\);

\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = s_counter(0) $ (VCC)
-- \Add1~1\ = CARRY(s_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

\s_counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[0]~0_combout\ = (\newTime~input_o\ & ((!\timeVal[0]~input_o\))) # (!\newTime~input_o\ & (\Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \timeVal[0]~input_o\,
	datad => \newTime~input_o\,
	combout => \s_counter[0]~0_combout\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\s_counter[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[0]~7_combout\ = (\reset~input_o\) # ((!\s_cntZero~10_combout\ & \enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_cntZero~10_combout\,
	datac => \enable~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter[0]~7_combout\);

\s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter[0]~0_combout\,
	asdata => \timeVal[0]~input_o\,
	sload => \reset~input_o\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(0));

\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (s_counter(1) & (\Add1~1\ & VCC)) # (!s_counter(1) & (!\Add1~1\))
-- \Add1~3\ = CARRY((!s_counter(1) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \timeVal[0]~input_o\ $ (\timeVal[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \timeVal[0]~input_o\,
	datad => \timeVal[1]~input_o\,
	combout => \Add0~0_combout\);

\s_counter[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[1]~1_combout\ = (\newTime~input_o\ & ((!\Add0~0_combout\))) # (!\newTime~input_o\ & (\Add1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Add0~0_combout\,
	datad => \newTime~input_o\,
	combout => \s_counter[1]~1_combout\);

\s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter[1]~1_combout\,
	asdata => \timeVal[1]~input_o\,
	sload => \reset~input_o\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(1));

\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (s_counter(2) & ((GND) # (!\Add1~3\))) # (!s_counter(2) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((s_counter(2)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \timeVal[2]~input_o\ $ (((\timeVal[0]~input_o\) # (\timeVal[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \timeVal[0]~input_o\,
	datac => \timeVal[1]~input_o\,
	datad => \timeVal[2]~input_o\,
	combout => \Add0~1_combout\);

\s_counter[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[2]~2_combout\ = (\newTime~input_o\ & ((!\Add0~1_combout\))) # (!\newTime~input_o\ & (\Add1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Add0~1_combout\,
	datad => \newTime~input_o\,
	combout => \s_counter[2]~2_combout\);

\s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter[2]~2_combout\,
	asdata => \timeVal[2]~input_o\,
	sload => \reset~input_o\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(2));

\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (s_counter(3) & (\Add1~5\ & VCC)) # (!s_counter(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!s_counter(3) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \timeVal[3]~input_o\ $ (((\timeVal[2]~input_o\) # ((\timeVal[0]~input_o\) # (\timeVal[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timeVal[2]~input_o\,
	datab => \timeVal[0]~input_o\,
	datac => \timeVal[1]~input_o\,
	datad => \timeVal[3]~input_o\,
	combout => \Add0~2_combout\);

\s_counter[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[3]~3_combout\ = (\newTime~input_o\ & ((!\Add0~2_combout\))) # (!\newTime~input_o\ & (\Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \Add0~2_combout\,
	datad => \newTime~input_o\,
	combout => \s_counter[3]~3_combout\);

\s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter[3]~3_combout\,
	asdata => \timeVal[3]~input_o\,
	sload => \reset~input_o\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(3));

\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (s_counter(4) & ((GND) # (!\Add1~7\))) # (!s_counter(4) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((s_counter(4)) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

\s_counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~6_combout\ = (\s_counter~5_combout\) # ((\Add1~8_combout\ & (!\newTime~input_o\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_counter~5_combout\,
	datab => \Add1~8_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~6_combout\);

\s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~6_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(4));

\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (s_counter(5) & (\Add1~9\ & VCC)) # (!s_counter(5) & (!\Add1~9\))
-- \Add1~11\ = CARRY((!s_counter(5) & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

\s_counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~8_combout\ = (\s_counter~5_combout\) # ((\Add1~10_combout\ & (!\newTime~input_o\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_counter~5_combout\,
	datab => \Add1~10_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~8_combout\);

\s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~8_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(5));

\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (s_counter(6) & ((GND) # (!\Add1~11\))) # (!s_counter(6) & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((s_counter(6)) # (!\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

\s_counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~9_combout\ = (\Add1~12_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~9_combout\);

\s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~9_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(6));

\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (s_counter(7) & (\Add1~13\ & VCC)) # (!s_counter(7) & (!\Add1~13\))
-- \Add1~15\ = CARRY((!s_counter(7) & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

\s_counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~10_combout\ = (\Add1~14_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~14_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~10_combout\);

\s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~10_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(7));

\s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntZero~0_combout\ = (!s_counter(4) & (!s_counter(5) & (!s_counter(6) & !s_counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(4),
	datab => s_counter(5),
	datac => s_counter(6),
	datad => s_counter(7),
	combout => \s_cntZero~0_combout\);

\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (s_counter(8) & ((GND) # (!\Add1~15\))) # (!s_counter(8) & (\Add1~15\ $ (GND)))
-- \Add1~17\ = CARRY((s_counter(8)) # (!\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

\s_counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~11_combout\ = (\Add1~16_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~11_combout\);

\s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~11_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(8));

\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (s_counter(9) & (\Add1~17\ & VCC)) # (!s_counter(9) & (!\Add1~17\))
-- \Add1~19\ = CARRY((!s_counter(9) & !\Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

\s_counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~12_combout\ = (\Add1~18_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~12_combout\);

\s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~12_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(9));

\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (s_counter(10) & ((GND) # (!\Add1~19\))) # (!s_counter(10) & (\Add1~19\ $ (GND)))
-- \Add1~21\ = CARRY((s_counter(10)) # (!\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

\s_counter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~13_combout\ = (\Add1~20_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~20_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~13_combout\);

\s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~13_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(10));

\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (s_counter(11) & (\Add1~21\ & VCC)) # (!s_counter(11) & (!\Add1~21\))
-- \Add1~23\ = CARRY((!s_counter(11) & !\Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

\s_counter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~14_combout\ = (\Add1~22_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~22_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~14_combout\);

\s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~14_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(11));

\s_cntZero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntZero~1_combout\ = (!s_counter(8) & (!s_counter(9) & (!s_counter(10) & !s_counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(8),
	datab => s_counter(9),
	datac => s_counter(10),
	datad => s_counter(11),
	combout => \s_cntZero~1_combout\);

\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (s_counter(12) & ((GND) # (!\Add1~23\))) # (!s_counter(12) & (\Add1~23\ $ (GND)))
-- \Add1~25\ = CARRY((s_counter(12)) # (!\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

\s_counter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~15_combout\ = (\Add1~24_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~24_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~15_combout\);

\s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~15_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(12));

\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (s_counter(13) & (\Add1~25\ & VCC)) # (!s_counter(13) & (!\Add1~25\))
-- \Add1~27\ = CARRY((!s_counter(13) & !\Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

\s_counter~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~16_combout\ = (\Add1~26_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~26_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~16_combout\);

\s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~16_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(13));

\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (s_counter(14) & ((GND) # (!\Add1~27\))) # (!s_counter(14) & (\Add1~27\ $ (GND)))
-- \Add1~29\ = CARRY((s_counter(14)) # (!\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

\s_counter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~17_combout\ = (\Add1~28_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~28_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~17_combout\);

\s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~17_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(14));

\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (s_counter(15) & (\Add1~29\ & VCC)) # (!s_counter(15) & (!\Add1~29\))
-- \Add1~31\ = CARRY((!s_counter(15) & !\Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

\s_counter~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~18_combout\ = (\Add1~30_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~30_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~18_combout\);

\s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~18_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(15));

\s_cntZero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntZero~2_combout\ = (!s_counter(12) & (!s_counter(13) & (!s_counter(14) & !s_counter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(12),
	datab => s_counter(13),
	datac => s_counter(14),
	datad => s_counter(15),
	combout => \s_cntZero~2_combout\);

\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (s_counter(16) & ((GND) # (!\Add1~31\))) # (!s_counter(16) & (\Add1~31\ $ (GND)))
-- \Add1~33\ = CARRY((s_counter(16)) # (!\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

\s_counter~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~19_combout\ = (\Add1~32_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~32_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~19_combout\);

\s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~19_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(16));

\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (s_counter(17) & (\Add1~33\ & VCC)) # (!s_counter(17) & (!\Add1~33\))
-- \Add1~35\ = CARRY((!s_counter(17) & !\Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

\s_counter~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~20_combout\ = (\Add1~34_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~34_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~20_combout\);

\s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~20_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(17));

\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (s_counter(18) & ((GND) # (!\Add1~35\))) # (!s_counter(18) & (\Add1~35\ $ (GND)))
-- \Add1~37\ = CARRY((s_counter(18)) # (!\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

\s_counter~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~21_combout\ = (\Add1~36_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~36_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~21_combout\);

\s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~21_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(18));

\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (s_counter(19) & (\Add1~37\ & VCC)) # (!s_counter(19) & (!\Add1~37\))
-- \Add1~39\ = CARRY((!s_counter(19) & !\Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

\s_counter~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~22_combout\ = (\Add1~38_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~38_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~22_combout\);

\s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~22_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(19));

\s_cntZero~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntZero~3_combout\ = (!s_counter(16) & (!s_counter(17) & (!s_counter(18) & !s_counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(16),
	datab => s_counter(17),
	datac => s_counter(18),
	datad => s_counter(19),
	combout => \s_cntZero~3_combout\);

\s_cntZero~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntZero~4_combout\ = (\s_cntZero~0_combout\ & (\s_cntZero~1_combout\ & (\s_cntZero~2_combout\ & \s_cntZero~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_cntZero~0_combout\,
	datab => \s_cntZero~1_combout\,
	datac => \s_cntZero~2_combout\,
	datad => \s_cntZero~3_combout\,
	combout => \s_cntZero~4_combout\);

\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (s_counter(20) & ((GND) # (!\Add1~39\))) # (!s_counter(20) & (\Add1~39\ $ (GND)))
-- \Add1~41\ = CARRY((s_counter(20)) # (!\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

\s_counter~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~23_combout\ = (\Add1~40_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~23_combout\);

\s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~23_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(20));

\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (s_counter(21) & (\Add1~41\ & VCC)) # (!s_counter(21) & (!\Add1~41\))
-- \Add1~43\ = CARRY((!s_counter(21) & !\Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

\s_counter~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~24_combout\ = (\Add1~42_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~42_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~24_combout\);

\s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~24_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(21));

\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (s_counter(22) & ((GND) # (!\Add1~43\))) # (!s_counter(22) & (\Add1~43\ $ (GND)))
-- \Add1~45\ = CARRY((s_counter(22)) # (!\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

\s_counter~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~25_combout\ = (\Add1~44_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~44_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~25_combout\);

\s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~25_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(22));

\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (s_counter(23) & (\Add1~45\ & VCC)) # (!s_counter(23) & (!\Add1~45\))
-- \Add1~47\ = CARRY((!s_counter(23) & !\Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

\s_counter~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~26_combout\ = (\Add1~46_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~46_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~26_combout\);

\s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~26_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(23));

\s_cntZero~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntZero~5_combout\ = (!s_counter(20) & (!s_counter(21) & (!s_counter(22) & !s_counter(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(20),
	datab => s_counter(21),
	datac => s_counter(22),
	datad => s_counter(23),
	combout => \s_cntZero~5_combout\);

\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (s_counter(24) & ((GND) # (!\Add1~47\))) # (!s_counter(24) & (\Add1~47\ $ (GND)))
-- \Add1~49\ = CARRY((s_counter(24)) # (!\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

\s_counter~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~27_combout\ = (\Add1~48_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~48_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~27_combout\);

\s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~27_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(24));

\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (s_counter(25) & (\Add1~49\ & VCC)) # (!s_counter(25) & (!\Add1~49\))
-- \Add1~51\ = CARRY((!s_counter(25) & !\Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

\s_counter~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~28_combout\ = (\Add1~50_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~50_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~28_combout\);

\s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~28_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(25));

\s_cntZero~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntZero~6_combout\ = (!s_counter(24) & !s_counter(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => s_counter(24),
	datad => s_counter(25),
	combout => \s_cntZero~6_combout\);

\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (s_counter(26) & ((GND) # (!\Add1~51\))) # (!s_counter(26) & (\Add1~51\ $ (GND)))
-- \Add1~53\ = CARRY((s_counter(26)) # (!\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

\s_counter~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~29_combout\ = (\Add1~52_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~52_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~29_combout\);

\s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~29_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(26));

\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (s_counter(27) & (\Add1~53\ & VCC)) # (!s_counter(27) & (!\Add1~53\))
-- \Add1~55\ = CARRY((!s_counter(27) & !\Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

\s_counter~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~30_combout\ = (\Add1~54_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~54_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~30_combout\);

\s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~30_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(27));

\s_cntZero~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntZero~7_combout\ = (\s_cntZero~5_combout\ & (\s_cntZero~6_combout\ & (!s_counter(26) & !s_counter(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_cntZero~5_combout\,
	datab => \s_cntZero~6_combout\,
	datac => s_counter(26),
	datad => s_counter(27),
	combout => \s_cntZero~7_combout\);

\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (s_counter(28) & ((GND) # (!\Add1~55\))) # (!s_counter(28) & (\Add1~55\ $ (GND)))
-- \Add1~57\ = CARRY((s_counter(28)) # (!\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

\s_counter~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~31_combout\ = (\Add1~56_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~56_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~31_combout\);

\s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~31_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(28));

\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (s_counter(29) & (\Add1~57\ & VCC)) # (!s_counter(29) & (!\Add1~57\))
-- \Add1~59\ = CARRY((!s_counter(29) & !\Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

\s_counter~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~32_combout\ = (\Add1~58_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~58_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~32_combout\);

\s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~32_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(29));

\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = s_counter(30) $ (\Add1~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(30),
	cin => \Add1~59\,
	combout => \Add1~60_combout\);

\s_counter~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~33_combout\ = (\Add1~60_combout\ & (!\newTime~input_o\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~60_combout\,
	datac => \newTime~input_o\,
	datad => \reset~input_o\,
	combout => \s_counter~33_combout\);

\s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_counter~33_combout\,
	ena => \s_counter[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(30));

\s_cntZero~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntZero~8_combout\ = (!s_counter(28) & (!s_counter(29) & (!s_counter(30) & !\newTime~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(28),
	datab => s_counter(29),
	datac => s_counter(30),
	datad => \newTime~input_o\,
	combout => \s_cntZero~8_combout\);

\s_cntZero~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntZero~9_combout\ = (!s_counter(0) & (!s_counter(1) & (!s_counter(2) & !s_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(0),
	datab => s_counter(1),
	datac => s_counter(2),
	datad => s_counter(3),
	combout => \s_cntZero~9_combout\);

\s_cntZero~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntZero~10_combout\ = (\s_cntZero~4_combout\ & (\s_cntZero~7_combout\ & (\s_cntZero~8_combout\ & \s_cntZero~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_cntZero~4_combout\,
	datab => \s_cntZero~7_combout\,
	datac => \s_cntZero~8_combout\,
	datad => \s_cntZero~9_combout\,
	combout => \s_cntZero~10_combout\);

\s_cntZero~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_cntZero~11_combout\ = (!\reset~input_o\ & ((\enable~input_o\ & (\s_cntZero~10_combout\)) # (!\enable~input_o\ & ((\s_cntZero~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_cntZero~10_combout\,
	datab => \s_cntZero~q\,
	datac => \enable~input_o\,
	datad => \reset~input_o\,
	combout => \s_cntZero~11_combout\);

s_cntZero : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \s_cntZero~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \s_cntZero~q\);

ww_timeExp <= \timeExp~output_o\;
END structure;



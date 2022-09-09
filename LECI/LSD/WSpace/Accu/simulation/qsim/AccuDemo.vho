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

-- DATE "05/19/2021 02:01:28"

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

ENTITY 	Accu IS
    PORT (
	dataIn : IN std_logic_vector(3 DOWNTO 0);
	rst : IN std_logic;
	EN : IN std_logic;
	CK : IN std_logic;
	dataOut : OUT std_logic_vector(3 DOWNTO 0)
	);
END Accu;

ARCHITECTURE structure OF Accu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_dataIn : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_rst : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_CK : std_logic;
SIGNAL ww_dataOut : std_logic_vector(3 DOWNTO 0);
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \CK~input_o\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \Reg|dout[0]~4_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \Reg|dout[0]~6_combout\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \Reg|dout[0]~5\ : std_logic;
SIGNAL \Reg|dout[1]~7_combout\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \Reg|dout[1]~8\ : std_logic;
SIGNAL \Reg|dout[2]~9_combout\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \Reg|dout[2]~10\ : std_logic;
SIGNAL \Reg|dout[3]~11_combout\ : std_logic;
SIGNAL \Reg|dout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_dataIn <= dataIn;
ww_rst <= rst;
ww_EN <= EN;
ww_CK <= CK;
dataOut <= ww_dataOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg|dout\(0),
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg|dout\(1),
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg|dout\(2),
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Reg|dout\(3),
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

\CK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CK,
	o => \CK~input_o\);

\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

\Reg|dout[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|dout[0]~4_combout\ = (\Reg|dout\(0) & (\dataIn[0]~input_o\ $ (VCC))) # (!\Reg|dout\(0) & (\dataIn[0]~input_o\ & VCC))
-- \Reg|dout[0]~5\ = CARRY((\Reg|dout\(0) & \dataIn[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|dout\(0),
	datab => \dataIn[0]~input_o\,
	datad => VCC,
	combout => \Reg|dout[0]~4_combout\,
	cout => \Reg|dout[0]~5\);

\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

\Reg|dout[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|dout[0]~6_combout\ = (\rst~input_o\) # (\EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \EN~input_o\,
	combout => \Reg|dout[0]~6_combout\);

\Reg|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \Reg|dout[0]~4_combout\,
	sclr => \rst~input_o\,
	ena => \Reg|dout[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|dout\(0));

\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

\Reg|dout[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|dout[1]~7_combout\ = (\Reg|dout\(1) & ((\dataIn[1]~input_o\ & (\Reg|dout[0]~5\ & VCC)) # (!\dataIn[1]~input_o\ & (!\Reg|dout[0]~5\)))) # (!\Reg|dout\(1) & ((\dataIn[1]~input_o\ & (!\Reg|dout[0]~5\)) # (!\dataIn[1]~input_o\ & ((\Reg|dout[0]~5\) # 
-- (GND)))))
-- \Reg|dout[1]~8\ = CARRY((\Reg|dout\(1) & (!\dataIn[1]~input_o\ & !\Reg|dout[0]~5\)) # (!\Reg|dout\(1) & ((!\Reg|dout[0]~5\) # (!\dataIn[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|dout\(1),
	datab => \dataIn[1]~input_o\,
	datad => VCC,
	cin => \Reg|dout[0]~5\,
	combout => \Reg|dout[1]~7_combout\,
	cout => \Reg|dout[1]~8\);

\Reg|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \Reg|dout[1]~7_combout\,
	sclr => \rst~input_o\,
	ena => \Reg|dout[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|dout\(1));

\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

\Reg|dout[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|dout[2]~9_combout\ = ((\Reg|dout\(2) $ (\dataIn[2]~input_o\ $ (!\Reg|dout[1]~8\)))) # (GND)
-- \Reg|dout[2]~10\ = CARRY((\Reg|dout\(2) & ((\dataIn[2]~input_o\) # (!\Reg|dout[1]~8\))) # (!\Reg|dout\(2) & (\dataIn[2]~input_o\ & !\Reg|dout[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|dout\(2),
	datab => \dataIn[2]~input_o\,
	datad => VCC,
	cin => \Reg|dout[1]~8\,
	combout => \Reg|dout[2]~9_combout\,
	cout => \Reg|dout[2]~10\);

\Reg|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \Reg|dout[2]~9_combout\,
	sclr => \rst~input_o\,
	ena => \Reg|dout[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|dout\(2));

\dataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

\Reg|dout[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Reg|dout[3]~11_combout\ = \Reg|dout\(3) $ (\dataIn[3]~input_o\ $ (\Reg|dout[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Reg|dout\(3),
	datab => \dataIn[3]~input_o\,
	cin => \Reg|dout[2]~10\,
	combout => \Reg|dout[3]~11_combout\);

\Reg|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \Reg|dout[3]~11_combout\,
	sclr => \rst~input_o\,
	ena => \Reg|dout[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Reg|dout\(3));

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;
END structure;



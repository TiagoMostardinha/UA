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

-- DATE "04/28/2021 10:28:20"

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

ENTITY 	AccN IS
    PORT (
	CK : IN std_logic;
	EN : IN std_logic;
	rst : IN std_logic;
	dataIn : IN std_logic_vector(7 DOWNTO 0);
	dataOut : OUT std_logic_vector(7 DOWNTO 0)
	);
END AccN;

ARCHITECTURE structure OF AccN IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CK : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_dataIn : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dataOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \dataOut[4]~output_o\ : std_logic;
SIGNAL \dataOut[5]~output_o\ : std_logic;
SIGNAL \dataOut[6]~output_o\ : std_logic;
SIGNAL \dataOut[7]~output_o\ : std_logic;
SIGNAL \CK~input_o\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \REG|dout[0]~8_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \REG|dout[0]~10_combout\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \REG|dout[0]~9\ : std_logic;
SIGNAL \REG|dout[1]~11_combout\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \REG|dout[1]~12\ : std_logic;
SIGNAL \REG|dout[2]~13_combout\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \REG|dout[2]~14\ : std_logic;
SIGNAL \REG|dout[3]~15_combout\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \REG|dout[3]~16\ : std_logic;
SIGNAL \REG|dout[4]~17_combout\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \REG|dout[4]~18\ : std_logic;
SIGNAL \REG|dout[5]~19_combout\ : std_logic;
SIGNAL \dataIn[6]~input_o\ : std_logic;
SIGNAL \REG|dout[5]~20\ : std_logic;
SIGNAL \REG|dout[6]~21_combout\ : std_logic;
SIGNAL \dataIn[7]~input_o\ : std_logic;
SIGNAL \REG|dout[6]~22\ : std_logic;
SIGNAL \REG|dout[7]~23_combout\ : std_logic;
SIGNAL \REG|dout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_CK <= CK;
ww_EN <= EN;
ww_rst <= rst;
ww_dataIn <= dataIn;
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
	i => \REG|dout\(0),
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|dout\(1),
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|dout\(2),
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|dout\(3),
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

\dataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|dout\(4),
	devoe => ww_devoe,
	o => \dataOut[4]~output_o\);

\dataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|dout\(5),
	devoe => ww_devoe,
	o => \dataOut[5]~output_o\);

\dataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|dout\(6),
	devoe => ww_devoe,
	o => \dataOut[6]~output_o\);

\dataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \REG|dout\(7),
	devoe => ww_devoe,
	o => \dataOut[7]~output_o\);

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

\REG|dout[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG|dout[0]~8_combout\ = (\REG|dout\(0) & (\dataIn[0]~input_o\ $ (VCC))) # (!\REG|dout\(0) & (\dataIn[0]~input_o\ & VCC))
-- \REG|dout[0]~9\ = CARRY((\REG|dout\(0) & \dataIn[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG|dout\(0),
	datab => \dataIn[0]~input_o\,
	datad => VCC,
	combout => \REG|dout[0]~8_combout\,
	cout => \REG|dout[0]~9\);

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

\REG|dout[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG|dout[0]~10_combout\ = (\rst~input_o\) # (\EN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \EN~input_o\,
	combout => \REG|dout[0]~10_combout\);

\REG|dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \REG|dout[0]~8_combout\,
	sclr => \rst~input_o\,
	ena => \REG|dout[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|dout\(0));

\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

\REG|dout[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG|dout[1]~11_combout\ = (\REG|dout\(1) & ((\dataIn[1]~input_o\ & (\REG|dout[0]~9\ & VCC)) # (!\dataIn[1]~input_o\ & (!\REG|dout[0]~9\)))) # (!\REG|dout\(1) & ((\dataIn[1]~input_o\ & (!\REG|dout[0]~9\)) # (!\dataIn[1]~input_o\ & ((\REG|dout[0]~9\) # 
-- (GND)))))
-- \REG|dout[1]~12\ = CARRY((\REG|dout\(1) & (!\dataIn[1]~input_o\ & !\REG|dout[0]~9\)) # (!\REG|dout\(1) & ((!\REG|dout[0]~9\) # (!\dataIn[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG|dout\(1),
	datab => \dataIn[1]~input_o\,
	datad => VCC,
	cin => \REG|dout[0]~9\,
	combout => \REG|dout[1]~11_combout\,
	cout => \REG|dout[1]~12\);

\REG|dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \REG|dout[1]~11_combout\,
	sclr => \rst~input_o\,
	ena => \REG|dout[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|dout\(1));

\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

\REG|dout[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG|dout[2]~13_combout\ = ((\REG|dout\(2) $ (\dataIn[2]~input_o\ $ (!\REG|dout[1]~12\)))) # (GND)
-- \REG|dout[2]~14\ = CARRY((\REG|dout\(2) & ((\dataIn[2]~input_o\) # (!\REG|dout[1]~12\))) # (!\REG|dout\(2) & (\dataIn[2]~input_o\ & !\REG|dout[1]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG|dout\(2),
	datab => \dataIn[2]~input_o\,
	datad => VCC,
	cin => \REG|dout[1]~12\,
	combout => \REG|dout[2]~13_combout\,
	cout => \REG|dout[2]~14\);

\REG|dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \REG|dout[2]~13_combout\,
	sclr => \rst~input_o\,
	ena => \REG|dout[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|dout\(2));

\dataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

\REG|dout[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG|dout[3]~15_combout\ = (\REG|dout\(3) & ((\dataIn[3]~input_o\ & (\REG|dout[2]~14\ & VCC)) # (!\dataIn[3]~input_o\ & (!\REG|dout[2]~14\)))) # (!\REG|dout\(3) & ((\dataIn[3]~input_o\ & (!\REG|dout[2]~14\)) # (!\dataIn[3]~input_o\ & ((\REG|dout[2]~14\) # 
-- (GND)))))
-- \REG|dout[3]~16\ = CARRY((\REG|dout\(3) & (!\dataIn[3]~input_o\ & !\REG|dout[2]~14\)) # (!\REG|dout\(3) & ((!\REG|dout[2]~14\) # (!\dataIn[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG|dout\(3),
	datab => \dataIn[3]~input_o\,
	datad => VCC,
	cin => \REG|dout[2]~14\,
	combout => \REG|dout[3]~15_combout\,
	cout => \REG|dout[3]~16\);

\REG|dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \REG|dout[3]~15_combout\,
	sclr => \rst~input_o\,
	ena => \REG|dout[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|dout\(3));

\dataIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

\REG|dout[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG|dout[4]~17_combout\ = ((\REG|dout\(4) $ (\dataIn[4]~input_o\ $ (!\REG|dout[3]~16\)))) # (GND)
-- \REG|dout[4]~18\ = CARRY((\REG|dout\(4) & ((\dataIn[4]~input_o\) # (!\REG|dout[3]~16\))) # (!\REG|dout\(4) & (\dataIn[4]~input_o\ & !\REG|dout[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG|dout\(4),
	datab => \dataIn[4]~input_o\,
	datad => VCC,
	cin => \REG|dout[3]~16\,
	combout => \REG|dout[4]~17_combout\,
	cout => \REG|dout[4]~18\);

\REG|dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \REG|dout[4]~17_combout\,
	sclr => \rst~input_o\,
	ena => \REG|dout[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|dout\(4));

\dataIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

\REG|dout[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG|dout[5]~19_combout\ = (\REG|dout\(5) & ((\dataIn[5]~input_o\ & (\REG|dout[4]~18\ & VCC)) # (!\dataIn[5]~input_o\ & (!\REG|dout[4]~18\)))) # (!\REG|dout\(5) & ((\dataIn[5]~input_o\ & (!\REG|dout[4]~18\)) # (!\dataIn[5]~input_o\ & ((\REG|dout[4]~18\) # 
-- (GND)))))
-- \REG|dout[5]~20\ = CARRY((\REG|dout\(5) & (!\dataIn[5]~input_o\ & !\REG|dout[4]~18\)) # (!\REG|dout\(5) & ((!\REG|dout[4]~18\) # (!\dataIn[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG|dout\(5),
	datab => \dataIn[5]~input_o\,
	datad => VCC,
	cin => \REG|dout[4]~18\,
	combout => \REG|dout[5]~19_combout\,
	cout => \REG|dout[5]~20\);

\REG|dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \REG|dout[5]~19_combout\,
	sclr => \rst~input_o\,
	ena => \REG|dout[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|dout\(5));

\dataIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(6),
	o => \dataIn[6]~input_o\);

\REG|dout[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG|dout[6]~21_combout\ = ((\REG|dout\(6) $ (\dataIn[6]~input_o\ $ (!\REG|dout[5]~20\)))) # (GND)
-- \REG|dout[6]~22\ = CARRY((\REG|dout\(6) & ((\dataIn[6]~input_o\) # (!\REG|dout[5]~20\))) # (!\REG|dout\(6) & (\dataIn[6]~input_o\ & !\REG|dout[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG|dout\(6),
	datab => \dataIn[6]~input_o\,
	datad => VCC,
	cin => \REG|dout[5]~20\,
	combout => \REG|dout[6]~21_combout\,
	cout => \REG|dout[6]~22\);

\REG|dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \REG|dout[6]~21_combout\,
	sclr => \rst~input_o\,
	ena => \REG|dout[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|dout\(6));

\dataIn[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(7),
	o => \dataIn[7]~input_o\);

\REG|dout[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \REG|dout[7]~23_combout\ = \REG|dout\(7) $ (\dataIn[7]~input_o\ $ (\REG|dout[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \REG|dout\(7),
	datab => \dataIn[7]~input_o\,
	cin => \REG|dout[6]~22\,
	combout => \REG|dout[7]~23_combout\);

\REG|dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~input_o\,
	d => \REG|dout[7]~23_combout\,
	sclr => \rst~input_o\,
	ena => \REG|dout[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG|dout\(7));

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;

ww_dataOut(4) <= \dataOut[4]~output_o\;

ww_dataOut(5) <= \dataOut[5]~output_o\;

ww_dataOut(6) <= \dataOut[6]~output_o\;

ww_dataOut(7) <= \dataOut[7]~output_o\;
END structure;



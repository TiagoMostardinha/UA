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

-- DATE "06/18/2021 12:11:25"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TimerAuxFSM_B IS
    PORT (
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(5 DOWNTO 0)
	);
END TimerAuxFSM_B;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TimerAuxFSM_B IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(5 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst|s_counter[0]~31_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst|s_counter[0]~33_combout\ : std_logic;
SIGNAL \inst|s_counter[0]~32\ : std_logic;
SIGNAL \inst|s_counter[1]~34_combout\ : std_logic;
SIGNAL \inst|s_counter[1]~35\ : std_logic;
SIGNAL \inst|s_counter[2]~36_combout\ : std_logic;
SIGNAL \inst|s_counter[2]~37\ : std_logic;
SIGNAL \inst|s_counter[3]~38_combout\ : std_logic;
SIGNAL \inst|s_counter[3]~39\ : std_logic;
SIGNAL \inst|s_counter[4]~40_combout\ : std_logic;
SIGNAL \inst|s_counter[4]~41\ : std_logic;
SIGNAL \inst|s_counter[5]~42_combout\ : std_logic;
SIGNAL \inst|s_counter[5]~43\ : std_logic;
SIGNAL \inst|s_counter[6]~44_combout\ : std_logic;
SIGNAL \inst|s_counter[6]~45\ : std_logic;
SIGNAL \inst|s_counter[7]~46_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[2]~_wirecell_combout\ : std_logic;
SIGNAL \inst|s_counter[7]~47\ : std_logic;
SIGNAL \inst|s_counter[8]~48_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst|Add0~1_cout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|s_counter[8]~49\ : std_logic;
SIGNAL \inst|s_counter[9]~50_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|s_counter[9]~51\ : std_logic;
SIGNAL \inst|s_counter[10]~52_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|s_counter[10]~53\ : std_logic;
SIGNAL \inst|s_counter[11]~54_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|s_counter[11]~55\ : std_logic;
SIGNAL \inst|s_counter[12]~56_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|s_counter[12]~57\ : std_logic;
SIGNAL \inst|s_counter[13]~58_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][13]~0_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|s_counter[13]~59\ : std_logic;
SIGNAL \inst|s_counter[14]~60_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][14]~1_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|s_counter[14]~61\ : std_logic;
SIGNAL \inst|s_counter[15]~62_combout\ : std_logic;
SIGNAL \inst|s_counter[15]~feeder_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][15]~combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|s_counter[15]~63\ : std_logic;
SIGNAL \inst|s_counter[16]~64_combout\ : std_logic;
SIGNAL \inst|s_counter[16]~feeder_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][16]~2_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|s_counter[16]~65\ : std_logic;
SIGNAL \inst|s_counter[17]~66_combout\ : std_logic;
SIGNAL \inst|s_counter[17]~feeder_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][17]~3_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|s_counter[17]~67\ : std_logic;
SIGNAL \inst|s_counter[18]~68_combout\ : std_logic;
SIGNAL \inst|s_counter[18]~feeder_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][18]~4_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|s_counter[18]~69\ : std_logic;
SIGNAL \inst|s_counter[19]~70_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][19]~5_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|s_counter[19]~71\ : std_logic;
SIGNAL \inst|s_counter[20]~72_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][20]~6_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|s_counter[20]~73\ : std_logic;
SIGNAL \inst|s_counter[21]~74_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][21]~combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|s_counter[21]~75\ : std_logic;
SIGNAL \inst|s_counter[22]~76_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][22]~7_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|s_counter[22]~77\ : std_logic;
SIGNAL \inst|s_counter[23]~78_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][23]~8_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|s_counter[23]~79\ : std_logic;
SIGNAL \inst|s_counter[24]~80_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|s_counter[24]~81\ : std_logic;
SIGNAL \inst|s_counter[25]~82_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|s_counter[25]~83\ : std_logic;
SIGNAL \inst|s_counter[26]~84_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|s_counter[26]~85\ : std_logic;
SIGNAL \inst|s_counter[27]~86_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][27]~9_combout\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|s_counter[27]~87\ : std_logic;
SIGNAL \inst|s_counter[28]~88_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][28]~combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|s_counter[28]~89\ : std_logic;
SIGNAL \inst|s_counter[29]~90_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][29]~combout\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|s_counter[29]~91\ : std_logic;
SIGNAL \inst|s_counter[30]~92_combout\ : std_logic;
SIGNAL \inst|Add0~45\ : std_logic;
SIGNAL \inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|s_cntZero~9_combout\ : std_logic;
SIGNAL \inst|s_cntZero~5_combout\ : std_logic;
SIGNAL \inst|s_cntZero~6_combout\ : std_logic;
SIGNAL \inst|s_cntZero~7_combout\ : std_logic;
SIGNAL \inst|s_cntZero~8_combout\ : std_logic;
SIGNAL \inst|s_cntZero~1_combout\ : std_logic;
SIGNAL \inst|s_cntZero~2_combout\ : std_logic;
SIGNAL \inst|s_cntZero~0_combout\ : std_logic;
SIGNAL \inst|s_cntZero~3_combout\ : std_logic;
SIGNAL \inst|s_cntZero~4_combout\ : std_logic;
SIGNAL \inst|s_cntZero~10_combout\ : std_logic;
SIGNAL \inst|s_cntZero~11_combout\ : std_logic;
SIGNAL \inst|s_cntZero~q\ : std_logic;
SIGNAL \inst|s_counter\ : std_logic_vector(30 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_cntZero~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X106_Y16_N2
\inst|s_counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[0]~31_combout\ = \inst|s_counter\(0) $ (VCC)
-- \inst|s_counter[0]~32\ = CARRY(\inst|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(0),
	datad => VCC,
	combout => \inst|s_counter[0]~31_combout\,
	cout => \inst|s_counter[0]~32\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X105_Y16_N30
\inst|s_counter[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[0]~33_combout\ = (\SW[1]~input_o\ & !\inst|s_cntZero~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datad => \inst|s_cntZero~10_combout\,
	combout => \inst|s_counter[0]~33_combout\);

-- Location: FF_X106_Y16_N3
\inst|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[0]~31_combout\,
	asdata => VCC,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(0));

-- Location: LCCOMB_X106_Y16_N4
\inst|s_counter[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[1]~34_combout\ = (\inst|s_counter\(1) & (\inst|s_counter[0]~32\ & VCC)) # (!\inst|s_counter\(1) & (!\inst|s_counter[0]~32\))
-- \inst|s_counter[1]~35\ = CARRY((!\inst|s_counter\(1) & !\inst|s_counter[0]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(1),
	datad => VCC,
	cin => \inst|s_counter[0]~32\,
	combout => \inst|s_counter[1]~34_combout\,
	cout => \inst|s_counter[1]~35\);

-- Location: FF_X106_Y16_N5
\inst|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[1]~34_combout\,
	asdata => VCC,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(1));

-- Location: LCCOMB_X106_Y16_N6
\inst|s_counter[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[2]~36_combout\ = (\inst|s_counter\(2) & ((GND) # (!\inst|s_counter[1]~35\))) # (!\inst|s_counter\(2) & (\inst|s_counter[1]~35\ $ (GND)))
-- \inst|s_counter[2]~37\ = CARRY((\inst|s_counter\(2)) # (!\inst|s_counter[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(2),
	datad => VCC,
	cin => \inst|s_counter[1]~35\,
	combout => \inst|s_counter[2]~36_combout\,
	cout => \inst|s_counter[2]~37\);

-- Location: FF_X106_Y16_N7
\inst|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[2]~36_combout\,
	asdata => VCC,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(2));

-- Location: LCCOMB_X106_Y16_N8
\inst|s_counter[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[3]~38_combout\ = (\inst|s_counter\(3) & (\inst|s_counter[2]~37\ & VCC)) # (!\inst|s_counter\(3) & (!\inst|s_counter[2]~37\))
-- \inst|s_counter[3]~39\ = CARRY((!\inst|s_counter\(3) & !\inst|s_counter[2]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(3),
	datad => VCC,
	cin => \inst|s_counter[2]~37\,
	combout => \inst|s_counter[3]~38_combout\,
	cout => \inst|s_counter[3]~39\);

-- Location: FF_X106_Y16_N9
\inst|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[3]~38_combout\,
	asdata => VCC,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(3));

-- Location: LCCOMB_X106_Y16_N10
\inst|s_counter[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[4]~40_combout\ = (\inst|s_counter\(4) & ((GND) # (!\inst|s_counter[3]~39\))) # (!\inst|s_counter\(4) & (\inst|s_counter[3]~39\ $ (GND)))
-- \inst|s_counter[4]~41\ = CARRY((\inst|s_counter\(4)) # (!\inst|s_counter[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(4),
	datad => VCC,
	cin => \inst|s_counter[3]~39\,
	combout => \inst|s_counter[4]~40_combout\,
	cout => \inst|s_counter[4]~41\);

-- Location: FF_X106_Y16_N11
\inst|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[4]~40_combout\,
	asdata => VCC,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(4));

-- Location: LCCOMB_X106_Y16_N12
\inst|s_counter[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[5]~42_combout\ = (\inst|s_counter\(5) & (\inst|s_counter[4]~41\ & VCC)) # (!\inst|s_counter\(5) & (!\inst|s_counter[4]~41\))
-- \inst|s_counter[5]~43\ = CARRY((!\inst|s_counter\(5) & !\inst|s_counter[4]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(5),
	datad => VCC,
	cin => \inst|s_counter[4]~41\,
	combout => \inst|s_counter[5]~42_combout\,
	cout => \inst|s_counter[5]~43\);

-- Location: FF_X106_Y16_N13
\inst|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[5]~42_combout\,
	asdata => VCC,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(5));

-- Location: LCCOMB_X106_Y16_N14
\inst|s_counter[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[6]~44_combout\ = (\inst|s_counter\(6) & ((GND) # (!\inst|s_counter[5]~43\))) # (!\inst|s_counter\(6) & (\inst|s_counter[5]~43\ $ (GND)))
-- \inst|s_counter[6]~45\ = CARRY((\inst|s_counter\(6)) # (!\inst|s_counter[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(6),
	datad => VCC,
	cin => \inst|s_counter[5]~43\,
	combout => \inst|s_counter[6]~44_combout\,
	cout => \inst|s_counter[6]~45\);

-- Location: FF_X106_Y16_N15
\inst|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[6]~44_combout\,
	asdata => VCC,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(6));

-- Location: LCCOMB_X106_Y16_N16
\inst|s_counter[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[7]~46_combout\ = (\inst|s_counter\(7) & (\inst|s_counter[6]~45\ & VCC)) # (!\inst|s_counter\(7) & (!\inst|s_counter[6]~45\))
-- \inst|s_counter[7]~47\ = CARRY((!\inst|s_counter\(7) & !\inst|s_counter[6]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(7),
	datad => VCC,
	cin => \inst|s_counter[6]~45\,
	combout => \inst|s_counter[7]~46_combout\,
	cout => \inst|s_counter[7]~47\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X109_Y16_N28
\SW[2]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW[2]~_wirecell_combout\ = !\SW[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	combout => \SW[2]~_wirecell_combout\);

-- Location: FF_X106_Y16_N17
\inst|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[7]~46_combout\,
	asdata => \SW[2]~_wirecell_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(7));

-- Location: LCCOMB_X106_Y16_N18
\inst|s_counter[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[8]~48_combout\ = (\inst|s_counter\(8) & ((GND) # (!\inst|s_counter[7]~47\))) # (!\inst|s_counter\(8) & (\inst|s_counter[7]~47\ $ (GND)))
-- \inst|s_counter[8]~49\ = CARRY((\inst|s_counter\(8)) # (!\inst|s_counter[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(8),
	datad => VCC,
	cin => \inst|s_counter[7]~47\,
	combout => \inst|s_counter[8]~48_combout\,
	cout => \inst|s_counter[8]~49\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X107_Y16_N8
\inst|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~1_cout\ = CARRY(\SW[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datad => VCC,
	cout => \inst|Add0~1_cout\);

-- Location: LCCOMB_X107_Y16_N10
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\SW[3]~input_o\ & (\inst|Add0~1_cout\ & VCC)) # (!\SW[3]~input_o\ & (!\inst|Add0~1_cout\))
-- \inst|Add0~3\ = CARRY((!\SW[3]~input_o\ & !\inst|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datad => VCC,
	cin => \inst|Add0~1_cout\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X106_Y16_N19
\inst|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[8]~48_combout\,
	asdata => \inst|Add0~2_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(8));

-- Location: LCCOMB_X106_Y16_N20
\inst|s_counter[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[9]~50_combout\ = (\inst|s_counter\(9) & (\inst|s_counter[8]~49\ & VCC)) # (!\inst|s_counter\(9) & (!\inst|s_counter[8]~49\))
-- \inst|s_counter[9]~51\ = CARRY((!\inst|s_counter\(9) & !\inst|s_counter[8]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(9),
	datad => VCC,
	cin => \inst|s_counter[8]~49\,
	combout => \inst|s_counter[9]~50_combout\,
	cout => \inst|s_counter[9]~51\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X107_Y16_N12
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\SW[4]~input_o\ & ((GND) # (!\inst|Add0~3\))) # (!\SW[4]~input_o\ & (\inst|Add0~3\ $ (GND)))
-- \inst|Add0~5\ = CARRY((\SW[4]~input_o\) # (!\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X106_Y16_N21
\inst|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[9]~50_combout\,
	asdata => \inst|Add0~4_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(9));

-- Location: LCCOMB_X106_Y16_N22
\inst|s_counter[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[10]~52_combout\ = (\inst|s_counter\(10) & ((GND) # (!\inst|s_counter[9]~51\))) # (!\inst|s_counter\(10) & (\inst|s_counter[9]~51\ $ (GND)))
-- \inst|s_counter[10]~53\ = CARRY((\inst|s_counter\(10)) # (!\inst|s_counter[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(10),
	datad => VCC,
	cin => \inst|s_counter[9]~51\,
	combout => \inst|s_counter[10]~52_combout\,
	cout => \inst|s_counter[10]~53\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X107_Y16_N14
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\SW[5]~input_o\ & (\inst|Add0~5\ & VCC)) # (!\SW[5]~input_o\ & (!\inst|Add0~5\))
-- \inst|Add0~7\ = CARRY((!\SW[5]~input_o\ & !\inst|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: FF_X106_Y16_N23
\inst|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[10]~52_combout\,
	asdata => \inst|Add0~6_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(10));

-- Location: LCCOMB_X106_Y16_N24
\inst|s_counter[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[11]~54_combout\ = (\inst|s_counter\(11) & (\inst|s_counter[10]~53\ & VCC)) # (!\inst|s_counter\(11) & (!\inst|s_counter[10]~53\))
-- \inst|s_counter[11]~55\ = CARRY((!\inst|s_counter\(11) & !\inst|s_counter[10]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(11),
	datad => VCC,
	cin => \inst|s_counter[10]~53\,
	combout => \inst|s_counter[11]~54_combout\,
	cout => \inst|s_counter[11]~55\);

-- Location: LCCOMB_X107_Y16_N16
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = \inst|Add0~7\ $ (GND)
-- \inst|Add0~9\ = CARRY(!\inst|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X106_Y16_N25
\inst|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[11]~54_combout\,
	asdata => \inst|Add0~8_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(11));

-- Location: LCCOMB_X106_Y16_N26
\inst|s_counter[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[12]~56_combout\ = (\inst|s_counter\(12) & ((GND) # (!\inst|s_counter[11]~55\))) # (!\inst|s_counter\(12) & (\inst|s_counter[11]~55\ $ (GND)))
-- \inst|s_counter[12]~57\ = CARRY((\inst|s_counter\(12)) # (!\inst|s_counter[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(12),
	datad => VCC,
	cin => \inst|s_counter[11]~55\,
	combout => \inst|s_counter[12]~56_combout\,
	cout => \inst|s_counter[12]~57\);

-- Location: LCCOMB_X107_Y16_N18
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\SW[2]~input_o\ & (\inst|Add0~9\ & VCC)) # (!\SW[2]~input_o\ & (!\inst|Add0~9\))
-- \inst|Add0~11\ = CARRY((!\SW[2]~input_o\ & !\inst|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: FF_X106_Y16_N27
\inst|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[12]~56_combout\,
	asdata => \inst|Add0~10_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(12));

-- Location: LCCOMB_X106_Y16_N28
\inst|s_counter[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[13]~58_combout\ = (\inst|s_counter\(13) & (\inst|s_counter[12]~57\ & VCC)) # (!\inst|s_counter\(13) & (!\inst|s_counter[12]~57\))
-- \inst|s_counter[13]~59\ = CARRY((!\inst|s_counter\(13) & !\inst|s_counter[12]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(13),
	datad => VCC,
	cin => \inst|s_counter[12]~57\,
	combout => \inst|s_counter[13]~58_combout\,
	cout => \inst|s_counter[13]~59\);

-- Location: LCCOMB_X108_Y16_N4
\inst|Mult0|mult_core|romout[0][13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][13]~0_combout\ = \SW[2]~input_o\ $ (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[2]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][13]~0_combout\);

-- Location: LCCOMB_X107_Y16_N20
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|Mult0|mult_core|romout[0][13]~0_combout\ & ((GND) # (!\inst|Add0~11\))) # (!\inst|Mult0|mult_core|romout[0][13]~0_combout\ & (\inst|Add0~11\ $ (GND)))
-- \inst|Add0~13\ = CARRY((\inst|Mult0|mult_core|romout[0][13]~0_combout\) # (!\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|mult_core|romout[0][13]~0_combout\,
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: FF_X106_Y16_N29
\inst|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[13]~58_combout\,
	asdata => \inst|Add0~12_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(13));

-- Location: LCCOMB_X106_Y16_N30
\inst|s_counter[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[14]~60_combout\ = (\inst|s_counter\(14) & ((GND) # (!\inst|s_counter[13]~59\))) # (!\inst|s_counter\(14) & (\inst|s_counter[13]~59\ $ (GND)))
-- \inst|s_counter[14]~61\ = CARRY((\inst|s_counter\(14)) # (!\inst|s_counter[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(14),
	datad => VCC,
	cin => \inst|s_counter[13]~59\,
	combout => \inst|s_counter[14]~60_combout\,
	cout => \inst|s_counter[14]~61\);

-- Location: LCCOMB_X108_Y16_N2
\inst|Mult0|mult_core|romout[0][14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][14]~1_combout\ = \SW[4]~input_o\ $ (((\SW[3]~input_o\) # (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[2]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][14]~1_combout\);

-- Location: LCCOMB_X107_Y16_N22
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|Mult0|mult_core|romout[0][14]~1_combout\ & (\inst|Add0~13\ & VCC)) # (!\inst|Mult0|mult_core|romout[0][14]~1_combout\ & (!\inst|Add0~13\))
-- \inst|Add0~15\ = CARRY((!\inst|Mult0|mult_core|romout[0][14]~1_combout\ & !\inst|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|mult_core|romout[0][14]~1_combout\,
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: FF_X106_Y16_N31
\inst|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[14]~60_combout\,
	asdata => \inst|Add0~14_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(14));

-- Location: LCCOMB_X106_Y15_N0
\inst|s_counter[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[15]~62_combout\ = (\inst|s_counter\(15) & (\inst|s_counter[14]~61\ & VCC)) # (!\inst|s_counter\(15) & (!\inst|s_counter[14]~61\))
-- \inst|s_counter[15]~63\ = CARRY((!\inst|s_counter\(15) & !\inst|s_counter[14]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(15),
	datad => VCC,
	cin => \inst|s_counter[14]~61\,
	combout => \inst|s_counter[15]~62_combout\,
	cout => \inst|s_counter[15]~63\);

-- Location: LCCOMB_X105_Y16_N8
\inst|s_counter[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[15]~feeder_combout\ = \inst|s_counter[15]~62_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|s_counter[15]~62_combout\,
	combout => \inst|s_counter[15]~feeder_combout\);

-- Location: LCCOMB_X107_Y16_N4
\inst|Mult0|mult_core|romout[0][15]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][15]~combout\ = \SW[5]~input_o\ $ (((\SW[3]~input_o\) # ((\SW[2]~input_o\) # (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][15]~combout\);

-- Location: LCCOMB_X107_Y16_N24
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|Mult0|mult_core|romout[0][15]~combout\ & ((GND) # (!\inst|Add0~15\))) # (!\inst|Mult0|mult_core|romout[0][15]~combout\ & (\inst|Add0~15\ $ (GND)))
-- \inst|Add0~17\ = CARRY((\inst|Mult0|mult_core|romout[0][15]~combout\) # (!\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|mult_core|romout[0][15]~combout\,
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: FF_X105_Y16_N9
\inst|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[15]~feeder_combout\,
	asdata => \inst|Add0~16_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(15));

-- Location: LCCOMB_X106_Y15_N2
\inst|s_counter[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[16]~64_combout\ = (\inst|s_counter\(16) & ((GND) # (!\inst|s_counter[15]~63\))) # (!\inst|s_counter\(16) & (\inst|s_counter[15]~63\ $ (GND)))
-- \inst|s_counter[16]~65\ = CARRY((\inst|s_counter\(16)) # (!\inst|s_counter[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(16),
	datad => VCC,
	cin => \inst|s_counter[15]~63\,
	combout => \inst|s_counter[16]~64_combout\,
	cout => \inst|s_counter[16]~65\);

-- Location: LCCOMB_X105_Y16_N6
\inst|s_counter[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[16]~feeder_combout\ = \inst|s_counter[16]~64_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|s_counter[16]~64_combout\,
	combout => \inst|s_counter[16]~feeder_combout\);

-- Location: LCCOMB_X107_Y16_N2
\inst|Mult0|mult_core|romout[0][16]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][16]~2_combout\ = (!\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\SW[5]~input_o\) # (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][16]~2_combout\);

-- Location: LCCOMB_X107_Y16_N26
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|Mult0|mult_core|romout[0][16]~2_combout\ & (\inst|Add0~17\ & VCC)) # (!\inst|Mult0|mult_core|romout[0][16]~2_combout\ & (!\inst|Add0~17\))
-- \inst|Add0~19\ = CARRY((!\inst|Mult0|mult_core|romout[0][16]~2_combout\ & !\inst|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|mult_core|romout[0][16]~2_combout\,
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: FF_X105_Y16_N7
\inst|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[16]~feeder_combout\,
	asdata => \inst|Add0~18_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(16));

-- Location: LCCOMB_X106_Y15_N4
\inst|s_counter[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[17]~66_combout\ = (\inst|s_counter\(17) & (\inst|s_counter[16]~65\ & VCC)) # (!\inst|s_counter\(17) & (!\inst|s_counter[16]~65\))
-- \inst|s_counter[17]~67\ = CARRY((!\inst|s_counter\(17) & !\inst|s_counter[16]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(17),
	datad => VCC,
	cin => \inst|s_counter[16]~65\,
	combout => \inst|s_counter[17]~66_combout\,
	cout => \inst|s_counter[17]~67\);

-- Location: LCCOMB_X105_Y16_N20
\inst|s_counter[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[17]~feeder_combout\ = \inst|s_counter[17]~66_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|s_counter[17]~66_combout\,
	combout => \inst|s_counter[17]~feeder_combout\);

-- Location: LCCOMB_X107_Y16_N0
\inst|Mult0|mult_core|romout[0][17]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][17]~3_combout\ = (!\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\SW[5]~input_o\) # (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][17]~3_combout\);

-- Location: LCCOMB_X107_Y16_N28
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|Mult0|mult_core|romout[0][17]~3_combout\ & ((GND) # (!\inst|Add0~19\))) # (!\inst|Mult0|mult_core|romout[0][17]~3_combout\ & (\inst|Add0~19\ $ (GND)))
-- \inst|Add0~21\ = CARRY((\inst|Mult0|mult_core|romout[0][17]~3_combout\) # (!\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|mult_core|romout[0][17]~3_combout\,
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: FF_X105_Y16_N21
\inst|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[17]~feeder_combout\,
	asdata => \inst|Add0~20_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(17));

-- Location: LCCOMB_X106_Y15_N6
\inst|s_counter[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[18]~68_combout\ = (\inst|s_counter\(18) & ((GND) # (!\inst|s_counter[17]~67\))) # (!\inst|s_counter\(18) & (\inst|s_counter[17]~67\ $ (GND)))
-- \inst|s_counter[18]~69\ = CARRY((\inst|s_counter\(18)) # (!\inst|s_counter[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(18),
	datad => VCC,
	cin => \inst|s_counter[17]~67\,
	combout => \inst|s_counter[18]~68_combout\,
	cout => \inst|s_counter[18]~69\);

-- Location: LCCOMB_X105_Y16_N10
\inst|s_counter[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[18]~feeder_combout\ = \inst|s_counter[18]~68_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|s_counter[18]~68_combout\,
	combout => \inst|s_counter[18]~feeder_combout\);

-- Location: LCCOMB_X107_Y16_N6
\inst|Mult0|mult_core|romout[0][18]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][18]~4_combout\ = (\SW[2]~input_o\ & (((\SW[4]~input_o\)))) # (!\SW[2]~input_o\ & (!\SW[4]~input_o\ & ((\SW[3]~input_o\) # (\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][18]~4_combout\);

-- Location: LCCOMB_X107_Y16_N30
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|Mult0|mult_core|romout[0][18]~4_combout\ & (\inst|Add0~21\ & VCC)) # (!\inst|Mult0|mult_core|romout[0][18]~4_combout\ & (!\inst|Add0~21\))
-- \inst|Add0~23\ = CARRY((!\inst|Mult0|mult_core|romout[0][18]~4_combout\ & !\inst|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|mult_core|romout[0][18]~4_combout\,
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: FF_X105_Y16_N11
\inst|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[18]~feeder_combout\,
	asdata => \inst|Add0~22_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(18));

-- Location: LCCOMB_X106_Y15_N8
\inst|s_counter[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[19]~70_combout\ = (\inst|s_counter\(19) & (\inst|s_counter[18]~69\ & VCC)) # (!\inst|s_counter\(19) & (!\inst|s_counter[18]~69\))
-- \inst|s_counter[19]~71\ = CARRY((!\inst|s_counter\(19) & !\inst|s_counter[18]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(19),
	datad => VCC,
	cin => \inst|s_counter[18]~69\,
	combout => \inst|s_counter[19]~70_combout\,
	cout => \inst|s_counter[19]~71\);

-- Location: LCCOMB_X108_Y15_N8
\inst|Mult0|mult_core|romout[0][19]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][19]~5_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\ $ (\SW[5]~input_o\ $ (!\SW[4]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\SW[5]~input_o\)) # (!\SW[3]~input_o\ & (!\SW[5]~input_o\ & \SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][19]~5_combout\);

-- Location: LCCOMB_X107_Y15_N0
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|Mult0|mult_core|romout[0][19]~5_combout\ & ((GND) # (!\inst|Add0~23\))) # (!\inst|Mult0|mult_core|romout[0][19]~5_combout\ & (\inst|Add0~23\ $ (GND)))
-- \inst|Add0~25\ = CARRY((\inst|Mult0|mult_core|romout[0][19]~5_combout\) # (!\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|mult_core|romout[0][19]~5_combout\,
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: FF_X106_Y15_N9
\inst|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[19]~70_combout\,
	asdata => \inst|Add0~24_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(19));

-- Location: LCCOMB_X106_Y15_N10
\inst|s_counter[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[20]~72_combout\ = (\inst|s_counter\(20) & ((GND) # (!\inst|s_counter[19]~71\))) # (!\inst|s_counter\(20) & (\inst|s_counter[19]~71\ $ (GND)))
-- \inst|s_counter[20]~73\ = CARRY((\inst|s_counter\(20)) # (!\inst|s_counter[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(20),
	datad => VCC,
	cin => \inst|s_counter[19]~71\,
	combout => \inst|s_counter[20]~72_combout\,
	cout => \inst|s_counter[20]~73\);

-- Location: LCCOMB_X108_Y15_N2
\inst|Mult0|mult_core|romout[0][20]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][20]~6_combout\ = (\SW[3]~input_o\ & ((\SW[5]~input_o\ & ((\SW[4]~input_o\))) # (!\SW[5]~input_o\ & ((\SW[2]~input_o\) # (!\SW[4]~input_o\))))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\SW[5]~input_o\) # 
-- (!\SW[4]~input_o\))) # (!\SW[2]~input_o\ & (\SW[5]~input_o\ & !\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][20]~6_combout\);

-- Location: LCCOMB_X107_Y15_N2
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|Mult0|mult_core|romout[0][20]~6_combout\ & (\inst|Add0~25\ & VCC)) # (!\inst|Mult0|mult_core|romout[0][20]~6_combout\ & (!\inst|Add0~25\))
-- \inst|Add0~27\ = CARRY((!\inst|Mult0|mult_core|romout[0][20]~6_combout\ & !\inst|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|mult_core|romout[0][20]~6_combout\,
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: FF_X106_Y15_N11
\inst|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[20]~72_combout\,
	asdata => \inst|Add0~26_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(20));

-- Location: LCCOMB_X106_Y15_N12
\inst|s_counter[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[21]~74_combout\ = (\inst|s_counter\(21) & (\inst|s_counter[20]~73\ & VCC)) # (!\inst|s_counter\(21) & (!\inst|s_counter[20]~73\))
-- \inst|s_counter[21]~75\ = CARRY((!\inst|s_counter\(21) & !\inst|s_counter[20]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(21),
	datad => VCC,
	cin => \inst|s_counter[20]~73\,
	combout => \inst|s_counter[21]~74_combout\,
	cout => \inst|s_counter[21]~75\);

-- Location: LCCOMB_X108_Y15_N12
\inst|Mult0|mult_core|romout[0][21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][21]~combout\ = (\SW[5]~input_o\ & (\SW[4]~input_o\ & ((\SW[2]~input_o\) # (\SW[3]~input_o\)))) # (!\SW[5]~input_o\ & ((\SW[2]~input_o\ & ((!\SW[4]~input_o\) # (!\SW[3]~input_o\))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\) # 
-- (\SW[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][21]~combout\);

-- Location: LCCOMB_X107_Y15_N4
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|Mult0|mult_core|romout[0][21]~combout\ & ((GND) # (!\inst|Add0~27\))) # (!\inst|Mult0|mult_core|romout[0][21]~combout\ & (\inst|Add0~27\ $ (GND)))
-- \inst|Add0~29\ = CARRY((\inst|Mult0|mult_core|romout[0][21]~combout\) # (!\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|mult_core|romout[0][21]~combout\,
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: FF_X106_Y15_N13
\inst|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[21]~74_combout\,
	asdata => \inst|Add0~28_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(21));

-- Location: LCCOMB_X106_Y15_N14
\inst|s_counter[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[22]~76_combout\ = (\inst|s_counter\(22) & ((GND) # (!\inst|s_counter[21]~75\))) # (!\inst|s_counter\(22) & (\inst|s_counter[21]~75\ $ (GND)))
-- \inst|s_counter[22]~77\ = CARRY((\inst|s_counter\(22)) # (!\inst|s_counter[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(22),
	datad => VCC,
	cin => \inst|s_counter[21]~75\,
	combout => \inst|s_counter[22]~76_combout\,
	cout => \inst|s_counter[22]~77\);

-- Location: LCCOMB_X108_Y15_N10
\inst|Mult0|mult_core|romout[0][22]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][22]~7_combout\ = (\SW[5]~input_o\ & (((!\SW[2]~input_o\ & !\SW[3]~input_o\)) # (!\SW[4]~input_o\))) # (!\SW[5]~input_o\ & ((\SW[2]~input_o\) # ((\SW[3]~input_o\) # (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][22]~7_combout\);

-- Location: LCCOMB_X107_Y15_N6
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|Mult0|mult_core|romout[0][22]~7_combout\ & (\inst|Add0~29\ & VCC)) # (!\inst|Mult0|mult_core|romout[0][22]~7_combout\ & (!\inst|Add0~29\))
-- \inst|Add0~31\ = CARRY((!\inst|Mult0|mult_core|romout[0][22]~7_combout\ & !\inst|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|mult_core|romout[0][22]~7_combout\,
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: FF_X106_Y15_N15
\inst|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[22]~76_combout\,
	asdata => \inst|Add0~30_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(22));

-- Location: LCCOMB_X106_Y15_N16
\inst|s_counter[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[23]~78_combout\ = (\inst|s_counter\(23) & (\inst|s_counter[22]~77\ & VCC)) # (!\inst|s_counter\(23) & (!\inst|s_counter[22]~77\))
-- \inst|s_counter[23]~79\ = CARRY((!\inst|s_counter\(23) & !\inst|s_counter[22]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(23),
	datad => VCC,
	cin => \inst|s_counter[22]~77\,
	combout => \inst|s_counter[23]~78_combout\,
	cout => \inst|s_counter[23]~79\);

-- Location: LCCOMB_X108_Y15_N20
\inst|Mult0|mult_core|romout[0][23]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][23]~8_combout\ = (\SW[2]~input_o\) # ((\SW[3]~input_o\) # ((\SW[5]~input_o\) # (\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][23]~8_combout\);

-- Location: LCCOMB_X107_Y15_N8
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|Mult0|mult_core|romout[0][23]~8_combout\ & ((GND) # (!\inst|Add0~31\))) # (!\inst|Mult0|mult_core|romout[0][23]~8_combout\ & (\inst|Add0~31\ $ (GND)))
-- \inst|Add0~33\ = CARRY((\inst|Mult0|mult_core|romout[0][23]~8_combout\) # (!\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|mult_core|romout[0][23]~8_combout\,
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: FF_X106_Y15_N17
\inst|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[23]~78_combout\,
	asdata => \inst|Add0~32_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(23));

-- Location: LCCOMB_X106_Y15_N18
\inst|s_counter[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[24]~80_combout\ = (\inst|s_counter\(24) & ((GND) # (!\inst|s_counter[23]~79\))) # (!\inst|s_counter\(24) & (\inst|s_counter[23]~79\ $ (GND)))
-- \inst|s_counter[24]~81\ = CARRY((\inst|s_counter\(24)) # (!\inst|s_counter[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(24),
	datad => VCC,
	cin => \inst|s_counter[23]~79\,
	combout => \inst|s_counter[24]~80_combout\,
	cout => \inst|s_counter[24]~81\);

-- Location: LCCOMB_X107_Y15_N10
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|Mult0|mult_core|romout[0][16]~2_combout\ & (\inst|Add0~33\ & VCC)) # (!\inst|Mult0|mult_core|romout[0][16]~2_combout\ & (!\inst|Add0~33\))
-- \inst|Add0~35\ = CARRY((!\inst|Mult0|mult_core|romout[0][16]~2_combout\ & !\inst|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|mult_core|romout[0][16]~2_combout\,
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: FF_X106_Y15_N19
\inst|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[24]~80_combout\,
	asdata => \inst|Add0~34_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(24));

-- Location: LCCOMB_X106_Y15_N20
\inst|s_counter[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[25]~82_combout\ = (\inst|s_counter\(25) & (\inst|s_counter[24]~81\ & VCC)) # (!\inst|s_counter\(25) & (!\inst|s_counter[24]~81\))
-- \inst|s_counter[25]~83\ = CARRY((!\inst|s_counter\(25) & !\inst|s_counter[24]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(25),
	datad => VCC,
	cin => \inst|s_counter[24]~81\,
	combout => \inst|s_counter[25]~82_combout\,
	cout => \inst|s_counter[25]~83\);

-- Location: LCCOMB_X107_Y15_N12
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|Mult0|mult_core|romout[0][17]~3_combout\ & ((GND) # (!\inst|Add0~35\))) # (!\inst|Mult0|mult_core|romout[0][17]~3_combout\ & (\inst|Add0~35\ $ (GND)))
-- \inst|Add0~37\ = CARRY((\inst|Mult0|mult_core|romout[0][17]~3_combout\) # (!\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|mult_core|romout[0][17]~3_combout\,
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: FF_X106_Y15_N21
\inst|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[25]~82_combout\,
	asdata => \inst|Add0~36_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(25));

-- Location: LCCOMB_X106_Y15_N22
\inst|s_counter[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[26]~84_combout\ = (\inst|s_counter\(26) & ((GND) # (!\inst|s_counter[25]~83\))) # (!\inst|s_counter\(26) & (\inst|s_counter[25]~83\ $ (GND)))
-- \inst|s_counter[26]~85\ = CARRY((\inst|s_counter\(26)) # (!\inst|s_counter[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(26),
	datad => VCC,
	cin => \inst|s_counter[25]~83\,
	combout => \inst|s_counter[26]~84_combout\,
	cout => \inst|s_counter[26]~85\);

-- Location: LCCOMB_X107_Y15_N14
\inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|Mult0|mult_core|romout[0][18]~4_combout\ & (\inst|Add0~37\ & VCC)) # (!\inst|Mult0|mult_core|romout[0][18]~4_combout\ & (!\inst|Add0~37\))
-- \inst|Add0~39\ = CARRY((!\inst|Mult0|mult_core|romout[0][18]~4_combout\ & !\inst|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|mult_core|romout[0][18]~4_combout\,
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: FF_X106_Y15_N23
\inst|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[26]~84_combout\,
	asdata => \inst|Add0~38_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(26));

-- Location: LCCOMB_X106_Y15_N24
\inst|s_counter[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[27]~86_combout\ = (\inst|s_counter\(27) & (\inst|s_counter[26]~85\ & VCC)) # (!\inst|s_counter\(27) & (!\inst|s_counter[26]~85\))
-- \inst|s_counter[27]~87\ = CARRY((!\inst|s_counter\(27) & !\inst|s_counter[26]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(27),
	datad => VCC,
	cin => \inst|s_counter[26]~85\,
	combout => \inst|s_counter[27]~86_combout\,
	cout => \inst|s_counter[27]~87\);

-- Location: LCCOMB_X108_Y15_N22
\inst|Mult0|mult_core|romout[0][27]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][27]~9_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\ $ (\SW[5]~input_o\ $ (\SW[4]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\SW[5]~input_o\)) # (!\SW[3]~input_o\ & (!\SW[5]~input_o\ & \SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][27]~9_combout\);

-- Location: LCCOMB_X107_Y15_N16
\inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|Mult0|mult_core|romout[0][27]~9_combout\ & ((GND) # (!\inst|Add0~39\))) # (!\inst|Mult0|mult_core|romout[0][27]~9_combout\ & (\inst|Add0~39\ $ (GND)))
-- \inst|Add0~41\ = CARRY((\inst|Mult0|mult_core|romout[0][27]~9_combout\) # (!\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|mult_core|romout[0][27]~9_combout\,
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: FF_X106_Y15_N25
\inst|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[27]~86_combout\,
	asdata => \inst|Add0~40_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(27));

-- Location: LCCOMB_X106_Y15_N26
\inst|s_counter[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[28]~88_combout\ = (\inst|s_counter\(28) & ((GND) # (!\inst|s_counter[27]~87\))) # (!\inst|s_counter\(28) & (\inst|s_counter[27]~87\ $ (GND)))
-- \inst|s_counter[28]~89\ = CARRY((\inst|s_counter\(28)) # (!\inst|s_counter[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(28),
	datad => VCC,
	cin => \inst|s_counter[27]~87\,
	combout => \inst|s_counter[28]~88_combout\,
	cout => \inst|s_counter[28]~89\);

-- Location: LCCOMB_X108_Y15_N4
\inst|Mult0|mult_core|romout[0][28]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][28]~combout\ = (\SW[5]~input_o\ & (!\SW[4]~input_o\ & ((!\SW[3]~input_o\) # (!\SW[2]~input_o\)))) # (!\SW[5]~input_o\ & (((\SW[3]~input_o\ & \SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][28]~combout\);

-- Location: LCCOMB_X107_Y15_N18
\inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|Mult0|mult_core|romout[0][28]~combout\ & (\inst|Add0~41\ & VCC)) # (!\inst|Mult0|mult_core|romout[0][28]~combout\ & (!\inst|Add0~41\))
-- \inst|Add0~43\ = CARRY((!\inst|Mult0|mult_core|romout[0][28]~combout\ & !\inst|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|mult_core|romout[0][28]~combout\,
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: FF_X106_Y15_N27
\inst|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[28]~88_combout\,
	asdata => \inst|Add0~42_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(28));

-- Location: LCCOMB_X106_Y15_N28
\inst|s_counter[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[29]~90_combout\ = (\inst|s_counter\(29) & (\inst|s_counter[28]~89\ & VCC)) # (!\inst|s_counter\(29) & (!\inst|s_counter[28]~89\))
-- \inst|s_counter[29]~91\ = CARRY((!\inst|s_counter\(29) & !\inst|s_counter[28]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(29),
	datad => VCC,
	cin => \inst|s_counter[28]~89\,
	combout => \inst|s_counter[29]~90_combout\,
	cout => \inst|s_counter[29]~91\);

-- Location: LCCOMB_X108_Y15_N18
\inst|Mult0|mult_core|romout[0][29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][29]~combout\ = (\SW[5]~input_o\ & ((\SW[4]~input_o\) # ((\SW[2]~input_o\ & \SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][29]~combout\);

-- Location: LCCOMB_X107_Y15_N20
\inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (\inst|Mult0|mult_core|romout[0][29]~combout\ & ((GND) # (!\inst|Add0~43\))) # (!\inst|Mult0|mult_core|romout[0][29]~combout\ & (\inst|Add0~43\ $ (GND)))
-- \inst|Add0~45\ = CARRY((\inst|Mult0|mult_core|romout[0][29]~combout\) # (!\inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|mult_core|romout[0][29]~combout\,
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\,
	cout => \inst|Add0~45\);

-- Location: FF_X106_Y15_N29
\inst|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[29]~90_combout\,
	asdata => \inst|Add0~44_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(29));

-- Location: LCCOMB_X106_Y15_N30
\inst|s_counter[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[30]~92_combout\ = \inst|s_counter\(30) $ (\inst|s_counter[29]~91\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(30),
	cin => \inst|s_counter[29]~91\,
	combout => \inst|s_counter[30]~92_combout\);

-- Location: LCCOMB_X107_Y15_N22
\inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = !\inst|Add0~45\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add0~45\,
	combout => \inst|Add0~46_combout\);

-- Location: FF_X106_Y15_N31
\inst|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_counter[30]~92_combout\,
	asdata => \inst|Add0~46_combout\,
	sload => \SW[0]~input_o\,
	ena => \inst|s_counter[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(30));

-- Location: LCCOMB_X105_Y16_N26
\inst|s_cntZero~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~9_combout\ = (!\inst|s_counter\(30) & (!\inst|s_counter\(27) & (!\inst|s_counter\(28) & !\inst|s_counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(30),
	datab => \inst|s_counter\(27),
	datac => \inst|s_counter\(28),
	datad => \inst|s_counter\(29),
	combout => \inst|s_cntZero~9_combout\);

-- Location: LCCOMB_X105_Y16_N2
\inst|s_cntZero~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~5_combout\ = (!\inst|s_counter\(16) & (!\inst|s_counter\(17) & (!\inst|s_counter\(15) & !\inst|s_counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(16),
	datab => \inst|s_counter\(17),
	datac => \inst|s_counter\(15),
	datad => \inst|s_counter\(18),
	combout => \inst|s_cntZero~5_combout\);

-- Location: LCCOMB_X105_Y16_N0
\inst|s_cntZero~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~6_combout\ = (!\inst|s_counter\(20) & !\inst|s_counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_counter\(20),
	datad => \inst|s_counter\(19),
	combout => \inst|s_cntZero~6_combout\);

-- Location: LCCOMB_X105_Y16_N14
\inst|s_cntZero~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~7_combout\ = (!\inst|s_counter\(21) & (\inst|s_cntZero~5_combout\ & (!\inst|s_counter\(22) & \inst|s_cntZero~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(21),
	datab => \inst|s_cntZero~5_combout\,
	datac => \inst|s_counter\(22),
	datad => \inst|s_cntZero~6_combout\,
	combout => \inst|s_cntZero~7_combout\);

-- Location: LCCOMB_X105_Y16_N4
\inst|s_cntZero~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~8_combout\ = (!\inst|s_counter\(25) & (!\inst|s_counter\(24) & (!\inst|s_counter\(26) & !\inst|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(25),
	datab => \inst|s_counter\(24),
	datac => \inst|s_counter\(26),
	datad => \inst|s_counter\(23),
	combout => \inst|s_cntZero~8_combout\);

-- Location: LCCOMB_X105_Y16_N12
\inst|s_cntZero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~1_combout\ = (!\inst|s_counter\(5) & (!\inst|s_counter\(4) & (!\inst|s_counter\(3) & !\inst|s_counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(5),
	datab => \inst|s_counter\(4),
	datac => \inst|s_counter\(3),
	datad => \inst|s_counter\(6),
	combout => \inst|s_cntZero~1_combout\);

-- Location: LCCOMB_X106_Y16_N0
\inst|s_cntZero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~2_combout\ = (!\inst|s_counter\(10) & (!\inst|s_counter\(9) & (!\inst|s_counter\(7) & !\inst|s_counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(10),
	datab => \inst|s_counter\(9),
	datac => \inst|s_counter\(7),
	datad => \inst|s_counter\(8),
	combout => \inst|s_cntZero~2_combout\);

-- Location: LCCOMB_X105_Y16_N22
\inst|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~0_combout\ = (!\inst|s_counter\(1) & (!\SW[0]~input_o\ & (!\inst|s_counter\(2) & !\inst|s_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(1),
	datab => \SW[0]~input_o\,
	datac => \inst|s_counter\(2),
	datad => \inst|s_counter\(0),
	combout => \inst|s_cntZero~0_combout\);

-- Location: LCCOMB_X105_Y16_N18
\inst|s_cntZero~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~3_combout\ = (!\inst|s_counter\(14) & (!\inst|s_counter\(13) & (!\inst|s_counter\(11) & !\inst|s_counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(14),
	datab => \inst|s_counter\(13),
	datac => \inst|s_counter\(11),
	datad => \inst|s_counter\(12),
	combout => \inst|s_cntZero~3_combout\);

-- Location: LCCOMB_X105_Y16_N28
\inst|s_cntZero~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~4_combout\ = (\inst|s_cntZero~1_combout\ & (\inst|s_cntZero~2_combout\ & (\inst|s_cntZero~0_combout\ & \inst|s_cntZero~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntZero~1_combout\,
	datab => \inst|s_cntZero~2_combout\,
	datac => \inst|s_cntZero~0_combout\,
	datad => \inst|s_cntZero~3_combout\,
	combout => \inst|s_cntZero~4_combout\);

-- Location: LCCOMB_X105_Y16_N16
\inst|s_cntZero~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~10_combout\ = (\inst|s_cntZero~9_combout\ & (\inst|s_cntZero~7_combout\ & (\inst|s_cntZero~8_combout\ & \inst|s_cntZero~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntZero~9_combout\,
	datab => \inst|s_cntZero~7_combout\,
	datac => \inst|s_cntZero~8_combout\,
	datad => \inst|s_cntZero~4_combout\,
	combout => \inst|s_cntZero~10_combout\);

-- Location: LCCOMB_X105_Y16_N24
\inst|s_cntZero~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~11_combout\ = (\SW[1]~input_o\ & ((\inst|s_cntZero~10_combout\))) # (!\SW[1]~input_o\ & (\inst|s_cntZero~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \inst|s_cntZero~q\,
	datad => \inst|s_cntZero~10_combout\,
	combout => \inst|s_cntZero~11_combout\);

-- Location: FF_X105_Y16_N25
\inst|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_cntZero~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cntZero~q\);

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;



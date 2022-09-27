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

-- DATE "06/09/2021 10:53:33"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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

ENTITY 	TimerN IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	enable : IN std_logic;
	start : IN std_logic;
	timerOnDelay : BUFFER std_logic
	);
END TimerN;

-- Design Ports Information
-- timerOnDelay	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TimerN IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_timerOnDelay : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timerOnDelay~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \s_count[0]~32_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \s_count[2]~37\ : std_logic;
SIGNAL \s_count[3]~41_combout\ : std_logic;
SIGNAL \s_count[0]~39_combout\ : std_logic;
SIGNAL \s_count[0]~40_combout\ : std_logic;
SIGNAL \s_count[3]~42\ : std_logic;
SIGNAL \s_count[4]~43_combout\ : std_logic;
SIGNAL \s_count[4]~44\ : std_logic;
SIGNAL \s_count[5]~45_combout\ : std_logic;
SIGNAL \s_count[5]~46\ : std_logic;
SIGNAL \s_count[6]~47_combout\ : std_logic;
SIGNAL \s_count[6]~48\ : std_logic;
SIGNAL \s_count[7]~49_combout\ : std_logic;
SIGNAL \s_count[7]~50\ : std_logic;
SIGNAL \s_count[8]~51_combout\ : std_logic;
SIGNAL \s_count[8]~52\ : std_logic;
SIGNAL \s_count[9]~53_combout\ : std_logic;
SIGNAL \s_count[9]~54\ : std_logic;
SIGNAL \s_count[10]~55_combout\ : std_logic;
SIGNAL \s_count[10]~56\ : std_logic;
SIGNAL \s_count[11]~57_combout\ : std_logic;
SIGNAL \s_count[11]~58\ : std_logic;
SIGNAL \s_count[12]~59_combout\ : std_logic;
SIGNAL \s_count[12]~60\ : std_logic;
SIGNAL \s_count[13]~61_combout\ : std_logic;
SIGNAL \s_count[13]~62\ : std_logic;
SIGNAL \s_count[14]~63_combout\ : std_logic;
SIGNAL \s_count[14]~64\ : std_logic;
SIGNAL \s_count[15]~65_combout\ : std_logic;
SIGNAL \s_count[15]~66\ : std_logic;
SIGNAL \s_count[16]~67_combout\ : std_logic;
SIGNAL \s_count[16]~68\ : std_logic;
SIGNAL \s_count[17]~69_combout\ : std_logic;
SIGNAL \s_count[17]~70\ : std_logic;
SIGNAL \s_count[18]~71_combout\ : std_logic;
SIGNAL \s_count[18]~72\ : std_logic;
SIGNAL \s_count[19]~73_combout\ : std_logic;
SIGNAL \s_count[19]~74\ : std_logic;
SIGNAL \s_count[20]~75_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \s_count[20]~76\ : std_logic;
SIGNAL \s_count[21]~77_combout\ : std_logic;
SIGNAL \s_count[21]~78\ : std_logic;
SIGNAL \s_count[22]~79_combout\ : std_logic;
SIGNAL \s_count[22]~80\ : std_logic;
SIGNAL \s_count[23]~81_combout\ : std_logic;
SIGNAL \s_count[23]~82\ : std_logic;
SIGNAL \s_count[24]~83_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \s_count[24]~84\ : std_logic;
SIGNAL \s_count[25]~85_combout\ : std_logic;
SIGNAL \s_count[25]~86\ : std_logic;
SIGNAL \s_count[26]~87_combout\ : std_logic;
SIGNAL \s_count[26]~88\ : std_logic;
SIGNAL \s_count[27]~89_combout\ : std_logic;
SIGNAL \s_count[27]~90\ : std_logic;
SIGNAL \s_count[28]~91_combout\ : std_logic;
SIGNAL \s_count[28]~92\ : std_logic;
SIGNAL \s_count[29]~93_combout\ : std_logic;
SIGNAL \s_count[29]~94\ : std_logic;
SIGNAL \s_count[30]~95_combout\ : std_logic;
SIGNAL \s_count[30]~96\ : std_logic;
SIGNAL \s_count[31]~97_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \s_count[0]~38_combout\ : std_logic;
SIGNAL \s_count[0]~33\ : std_logic;
SIGNAL \s_count[1]~34_combout\ : std_logic;
SIGNAL \s_count[1]~35\ : std_logic;
SIGNAL \s_count[2]~36_combout\ : std_logic;
SIGNAL \timerOnDelay~0_combout\ : std_logic;
SIGNAL \timerOnDelay~1_combout\ : std_logic;
SIGNAL \timerOnDelay~reg0_q\ : std_logic;
SIGNAL s_count : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_enable <= enable;
ww_start <= start;
timerOnDelay <= ww_timerOnDelay;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y17_N23
\timerOnDelay~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timerOnDelay~reg0_q\,
	devoe => ww_devoe,
	o => \timerOnDelay~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y17_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X29_Y19_N0
\s_count[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[0]~32_combout\ = s_count(0) $ (VCC)
-- \s_count[0]~33\ = CARRY(s_count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_count(0),
	datad => VCC,
	combout => \s_count[0]~32_combout\,
	cout => \s_count[0]~33\);

-- Location: IOIBUF_X34_Y18_N1
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X29_Y19_N4
\s_count[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[2]~36_combout\ = (s_count(2) & (\s_count[1]~35\ $ (GND))) # (!s_count(2) & (!\s_count[1]~35\ & VCC))
-- \s_count[2]~37\ = CARRY((s_count(2) & !\s_count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(2),
	datad => VCC,
	cin => \s_count[1]~35\,
	combout => \s_count[2]~36_combout\,
	cout => \s_count[2]~37\);

-- Location: LCCOMB_X29_Y19_N6
\s_count[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[3]~41_combout\ = (s_count(3) & (!\s_count[2]~37\)) # (!s_count(3) & ((\s_count[2]~37\) # (GND)))
-- \s_count[3]~42\ = CARRY((!\s_count[2]~37\) # (!s_count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(3),
	datad => VCC,
	cin => \s_count[2]~37\,
	combout => \s_count[3]~41_combout\,
	cout => \s_count[3]~42\);

-- Location: LCCOMB_X30_Y18_N10
\s_count[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[0]~39_combout\ = (!\start~input_o\ & (!\reset~input_o\ & (!s_count(2) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \reset~input_o\,
	datac => s_count(2),
	datad => \Equal0~9_combout\,
	combout => \s_count[0]~39_combout\);

-- Location: LCCOMB_X30_Y18_N24
\s_count[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[0]~40_combout\ = (!\s_count[0]~39_combout\ & ((\reset~input_o\) # (\enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \enable~input_o\,
	datad => \s_count[0]~39_combout\,
	combout => \s_count[0]~40_combout\);

-- Location: FF_X29_Y19_N7
\s_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[3]~41_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(3));

-- Location: LCCOMB_X29_Y19_N8
\s_count[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[4]~43_combout\ = (s_count(4) & (\s_count[3]~42\ $ (GND))) # (!s_count(4) & (!\s_count[3]~42\ & VCC))
-- \s_count[4]~44\ = CARRY((s_count(4) & !\s_count[3]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(4),
	datad => VCC,
	cin => \s_count[3]~42\,
	combout => \s_count[4]~43_combout\,
	cout => \s_count[4]~44\);

-- Location: FF_X29_Y19_N9
\s_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[4]~43_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(4));

-- Location: LCCOMB_X29_Y19_N10
\s_count[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[5]~45_combout\ = (s_count(5) & (!\s_count[4]~44\)) # (!s_count(5) & ((\s_count[4]~44\) # (GND)))
-- \s_count[5]~46\ = CARRY((!\s_count[4]~44\) # (!s_count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(5),
	datad => VCC,
	cin => \s_count[4]~44\,
	combout => \s_count[5]~45_combout\,
	cout => \s_count[5]~46\);

-- Location: FF_X29_Y19_N11
\s_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[5]~45_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(5));

-- Location: LCCOMB_X29_Y19_N12
\s_count[6]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[6]~47_combout\ = (s_count(6) & (\s_count[5]~46\ $ (GND))) # (!s_count(6) & (!\s_count[5]~46\ & VCC))
-- \s_count[6]~48\ = CARRY((s_count(6) & !\s_count[5]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(6),
	datad => VCC,
	cin => \s_count[5]~46\,
	combout => \s_count[6]~47_combout\,
	cout => \s_count[6]~48\);

-- Location: FF_X29_Y19_N13
\s_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[6]~47_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(6));

-- Location: LCCOMB_X29_Y19_N14
\s_count[7]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[7]~49_combout\ = (s_count(7) & (!\s_count[6]~48\)) # (!s_count(7) & ((\s_count[6]~48\) # (GND)))
-- \s_count[7]~50\ = CARRY((!\s_count[6]~48\) # (!s_count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(7),
	datad => VCC,
	cin => \s_count[6]~48\,
	combout => \s_count[7]~49_combout\,
	cout => \s_count[7]~50\);

-- Location: FF_X29_Y19_N15
\s_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[7]~49_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(7));

-- Location: LCCOMB_X29_Y19_N16
\s_count[8]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[8]~51_combout\ = (s_count(8) & (\s_count[7]~50\ $ (GND))) # (!s_count(8) & (!\s_count[7]~50\ & VCC))
-- \s_count[8]~52\ = CARRY((s_count(8) & !\s_count[7]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(8),
	datad => VCC,
	cin => \s_count[7]~50\,
	combout => \s_count[8]~51_combout\,
	cout => \s_count[8]~52\);

-- Location: FF_X29_Y19_N17
\s_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[8]~51_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(8));

-- Location: LCCOMB_X29_Y19_N18
\s_count[9]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[9]~53_combout\ = (s_count(9) & (!\s_count[8]~52\)) # (!s_count(9) & ((\s_count[8]~52\) # (GND)))
-- \s_count[9]~54\ = CARRY((!\s_count[8]~52\) # (!s_count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(9),
	datad => VCC,
	cin => \s_count[8]~52\,
	combout => \s_count[9]~53_combout\,
	cout => \s_count[9]~54\);

-- Location: FF_X29_Y19_N19
\s_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[9]~53_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(9));

-- Location: LCCOMB_X29_Y19_N20
\s_count[10]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[10]~55_combout\ = (s_count(10) & (\s_count[9]~54\ $ (GND))) # (!s_count(10) & (!\s_count[9]~54\ & VCC))
-- \s_count[10]~56\ = CARRY((s_count(10) & !\s_count[9]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(10),
	datad => VCC,
	cin => \s_count[9]~54\,
	combout => \s_count[10]~55_combout\,
	cout => \s_count[10]~56\);

-- Location: FF_X29_Y19_N21
\s_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[10]~55_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(10));

-- Location: LCCOMB_X29_Y19_N22
\s_count[11]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[11]~57_combout\ = (s_count(11) & (!\s_count[10]~56\)) # (!s_count(11) & ((\s_count[10]~56\) # (GND)))
-- \s_count[11]~58\ = CARRY((!\s_count[10]~56\) # (!s_count(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(11),
	datad => VCC,
	cin => \s_count[10]~56\,
	combout => \s_count[11]~57_combout\,
	cout => \s_count[11]~58\);

-- Location: FF_X29_Y19_N23
\s_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[11]~57_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(11));

-- Location: LCCOMB_X29_Y19_N24
\s_count[12]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[12]~59_combout\ = (s_count(12) & (\s_count[11]~58\ $ (GND))) # (!s_count(12) & (!\s_count[11]~58\ & VCC))
-- \s_count[12]~60\ = CARRY((s_count(12) & !\s_count[11]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(12),
	datad => VCC,
	cin => \s_count[11]~58\,
	combout => \s_count[12]~59_combout\,
	cout => \s_count[12]~60\);

-- Location: FF_X31_Y18_N21
\s_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \s_count[12]~59_combout\,
	sclr => \s_count[0]~38_combout\,
	sload => VCC,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(12));

-- Location: LCCOMB_X29_Y19_N26
\s_count[13]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[13]~61_combout\ = (s_count(13) & (!\s_count[12]~60\)) # (!s_count(13) & ((\s_count[12]~60\) # (GND)))
-- \s_count[13]~62\ = CARRY((!\s_count[12]~60\) # (!s_count(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(13),
	datad => VCC,
	cin => \s_count[12]~60\,
	combout => \s_count[13]~61_combout\,
	cout => \s_count[13]~62\);

-- Location: FF_X29_Y19_N27
\s_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[13]~61_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(13));

-- Location: LCCOMB_X29_Y19_N28
\s_count[14]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[14]~63_combout\ = (s_count(14) & (\s_count[13]~62\ $ (GND))) # (!s_count(14) & (!\s_count[13]~62\ & VCC))
-- \s_count[14]~64\ = CARRY((s_count(14) & !\s_count[13]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(14),
	datad => VCC,
	cin => \s_count[13]~62\,
	combout => \s_count[14]~63_combout\,
	cout => \s_count[14]~64\);

-- Location: FF_X29_Y19_N29
\s_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[14]~63_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(14));

-- Location: LCCOMB_X29_Y19_N30
\s_count[15]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[15]~65_combout\ = (s_count(15) & (!\s_count[14]~64\)) # (!s_count(15) & ((\s_count[14]~64\) # (GND)))
-- \s_count[15]~66\ = CARRY((!\s_count[14]~64\) # (!s_count(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(15),
	datad => VCC,
	cin => \s_count[14]~64\,
	combout => \s_count[15]~65_combout\,
	cout => \s_count[15]~66\);

-- Location: FF_X29_Y19_N31
\s_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[15]~65_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(15));

-- Location: LCCOMB_X29_Y18_N0
\s_count[16]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[16]~67_combout\ = (s_count(16) & (\s_count[15]~66\ $ (GND))) # (!s_count(16) & (!\s_count[15]~66\ & VCC))
-- \s_count[16]~68\ = CARRY((s_count(16) & !\s_count[15]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(16),
	datad => VCC,
	cin => \s_count[15]~66\,
	combout => \s_count[16]~67_combout\,
	cout => \s_count[16]~68\);

-- Location: FF_X29_Y18_N1
\s_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[16]~67_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(16));

-- Location: LCCOMB_X29_Y18_N2
\s_count[17]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[17]~69_combout\ = (s_count(17) & (!\s_count[16]~68\)) # (!s_count(17) & ((\s_count[16]~68\) # (GND)))
-- \s_count[17]~70\ = CARRY((!\s_count[16]~68\) # (!s_count(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(17),
	datad => VCC,
	cin => \s_count[16]~68\,
	combout => \s_count[17]~69_combout\,
	cout => \s_count[17]~70\);

-- Location: FF_X29_Y18_N3
\s_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[17]~69_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(17));

-- Location: LCCOMB_X29_Y18_N4
\s_count[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[18]~71_combout\ = (s_count(18) & (\s_count[17]~70\ $ (GND))) # (!s_count(18) & (!\s_count[17]~70\ & VCC))
-- \s_count[18]~72\ = CARRY((s_count(18) & !\s_count[17]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(18),
	datad => VCC,
	cin => \s_count[17]~70\,
	combout => \s_count[18]~71_combout\,
	cout => \s_count[18]~72\);

-- Location: FF_X29_Y18_N5
\s_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[18]~71_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(18));

-- Location: LCCOMB_X29_Y18_N6
\s_count[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[19]~73_combout\ = (s_count(19) & (!\s_count[18]~72\)) # (!s_count(19) & ((\s_count[18]~72\) # (GND)))
-- \s_count[19]~74\ = CARRY((!\s_count[18]~72\) # (!s_count(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(19),
	datad => VCC,
	cin => \s_count[18]~72\,
	combout => \s_count[19]~73_combout\,
	cout => \s_count[19]~74\);

-- Location: FF_X29_Y18_N7
\s_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[19]~73_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(19));

-- Location: LCCOMB_X29_Y18_N8
\s_count[20]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[20]~75_combout\ = (s_count(20) & (\s_count[19]~74\ $ (GND))) # (!s_count(20) & (!\s_count[19]~74\ & VCC))
-- \s_count[20]~76\ = CARRY((s_count(20) & !\s_count[19]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(20),
	datad => VCC,
	cin => \s_count[19]~74\,
	combout => \s_count[20]~75_combout\,
	cout => \s_count[20]~76\);

-- Location: FF_X29_Y18_N9
\s_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[20]~75_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(20));

-- Location: LCCOMB_X30_Y18_N8
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!s_count(20) & (!s_count(19) & (!s_count(17) & !s_count(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(20),
	datab => s_count(19),
	datac => s_count(17),
	datad => s_count(18),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X29_Y18_N10
\s_count[21]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[21]~77_combout\ = (s_count(21) & (!\s_count[20]~76\)) # (!s_count(21) & ((\s_count[20]~76\) # (GND)))
-- \s_count[21]~78\ = CARRY((!\s_count[20]~76\) # (!s_count(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(21),
	datad => VCC,
	cin => \s_count[20]~76\,
	combout => \s_count[21]~77_combout\,
	cout => \s_count[21]~78\);

-- Location: FF_X29_Y18_N11
\s_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[21]~77_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(21));

-- Location: LCCOMB_X29_Y18_N12
\s_count[22]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[22]~79_combout\ = (s_count(22) & (\s_count[21]~78\ $ (GND))) # (!s_count(22) & (!\s_count[21]~78\ & VCC))
-- \s_count[22]~80\ = CARRY((s_count(22) & !\s_count[21]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(22),
	datad => VCC,
	cin => \s_count[21]~78\,
	combout => \s_count[22]~79_combout\,
	cout => \s_count[22]~80\);

-- Location: FF_X29_Y18_N13
\s_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[22]~79_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(22));

-- Location: LCCOMB_X29_Y18_N14
\s_count[23]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[23]~81_combout\ = (s_count(23) & (!\s_count[22]~80\)) # (!s_count(23) & ((\s_count[22]~80\) # (GND)))
-- \s_count[23]~82\ = CARRY((!\s_count[22]~80\) # (!s_count(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(23),
	datad => VCC,
	cin => \s_count[22]~80\,
	combout => \s_count[23]~81_combout\,
	cout => \s_count[23]~82\);

-- Location: FF_X29_Y18_N15
\s_count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[23]~81_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(23));

-- Location: LCCOMB_X29_Y18_N16
\s_count[24]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[24]~83_combout\ = (s_count(24) & (\s_count[23]~82\ $ (GND))) # (!s_count(24) & (!\s_count[23]~82\ & VCC))
-- \s_count[24]~84\ = CARRY((s_count(24) & !\s_count[23]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(24),
	datad => VCC,
	cin => \s_count[23]~82\,
	combout => \s_count[24]~83_combout\,
	cout => \s_count[24]~84\);

-- Location: FF_X29_Y18_N17
\s_count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[24]~83_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(24));

-- Location: LCCOMB_X30_Y18_N2
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!s_count(23) & (!s_count(22) & (!s_count(24) & !s_count(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(23),
	datab => s_count(22),
	datac => s_count(24),
	datad => s_count(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X29_Y18_N18
\s_count[25]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[25]~85_combout\ = (s_count(25) & (!\s_count[24]~84\)) # (!s_count(25) & ((\s_count[24]~84\) # (GND)))
-- \s_count[25]~86\ = CARRY((!\s_count[24]~84\) # (!s_count(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(25),
	datad => VCC,
	cin => \s_count[24]~84\,
	combout => \s_count[25]~85_combout\,
	cout => \s_count[25]~86\);

-- Location: FF_X29_Y18_N19
\s_count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[25]~85_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(25));

-- Location: LCCOMB_X29_Y18_N20
\s_count[26]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[26]~87_combout\ = (s_count(26) & (\s_count[25]~86\ $ (GND))) # (!s_count(26) & (!\s_count[25]~86\ & VCC))
-- \s_count[26]~88\ = CARRY((s_count(26) & !\s_count[25]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(26),
	datad => VCC,
	cin => \s_count[25]~86\,
	combout => \s_count[26]~87_combout\,
	cout => \s_count[26]~88\);

-- Location: FF_X29_Y18_N21
\s_count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[26]~87_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(26));

-- Location: LCCOMB_X29_Y18_N22
\s_count[27]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[27]~89_combout\ = (s_count(27) & (!\s_count[26]~88\)) # (!s_count(27) & ((\s_count[26]~88\) # (GND)))
-- \s_count[27]~90\ = CARRY((!\s_count[26]~88\) # (!s_count(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(27),
	datad => VCC,
	cin => \s_count[26]~88\,
	combout => \s_count[27]~89_combout\,
	cout => \s_count[27]~90\);

-- Location: FF_X29_Y18_N23
\s_count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[27]~89_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(27));

-- Location: LCCOMB_X29_Y18_N24
\s_count[28]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[28]~91_combout\ = (s_count(28) & (\s_count[27]~90\ $ (GND))) # (!s_count(28) & (!\s_count[27]~90\ & VCC))
-- \s_count[28]~92\ = CARRY((s_count(28) & !\s_count[27]~90\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(28),
	datad => VCC,
	cin => \s_count[27]~90\,
	combout => \s_count[28]~91_combout\,
	cout => \s_count[28]~92\);

-- Location: FF_X29_Y18_N25
\s_count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[28]~91_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(28));

-- Location: LCCOMB_X29_Y18_N26
\s_count[29]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[29]~93_combout\ = (s_count(29) & (!\s_count[28]~92\)) # (!s_count(29) & ((\s_count[28]~92\) # (GND)))
-- \s_count[29]~94\ = CARRY((!\s_count[28]~92\) # (!s_count(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(29),
	datad => VCC,
	cin => \s_count[28]~92\,
	combout => \s_count[29]~93_combout\,
	cout => \s_count[29]~94\);

-- Location: FF_X29_Y18_N27
\s_count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[29]~93_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(29));

-- Location: LCCOMB_X29_Y18_N28
\s_count[30]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[30]~95_combout\ = (s_count(30) & (\s_count[29]~94\ $ (GND))) # (!s_count(30) & (!\s_count[29]~94\ & VCC))
-- \s_count[30]~96\ = CARRY((s_count(30) & !\s_count[29]~94\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(30),
	datad => VCC,
	cin => \s_count[29]~94\,
	combout => \s_count[30]~95_combout\,
	cout => \s_count[30]~96\);

-- Location: FF_X29_Y18_N29
\s_count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[30]~95_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(30));

-- Location: LCCOMB_X29_Y18_N30
\s_count[31]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[31]~97_combout\ = s_count(31) $ (\s_count[30]~96\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_count(31),
	cin => \s_count[30]~96\,
	combout => \s_count[31]~97_combout\);

-- Location: FF_X29_Y18_N31
\s_count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[31]~97_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(31));

-- Location: LCCOMB_X30_Y18_N0
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!s_count(27) & (!s_count(26) & (!s_count(25) & !s_count(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(27),
	datab => s_count(26),
	datac => s_count(25),
	datad => s_count(28),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X30_Y18_N14
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!s_count(29) & (!s_count(31) & (!s_count(30) & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(29),
	datab => s_count(31),
	datac => s_count(30),
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X30_Y18_N22
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!s_count(1) & (!s_count(4) & (!s_count(3) & !s_count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(1),
	datab => s_count(4),
	datac => s_count(3),
	datad => s_count(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X30_Y18_N4
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!s_count(7) & (!s_count(8) & (!s_count(5) & !s_count(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(7),
	datab => s_count(8),
	datac => s_count(5),
	datad => s_count(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X30_Y18_N30
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!s_count(11) & (!s_count(10) & (!s_count(12) & !s_count(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(11),
	datab => s_count(10),
	datac => s_count(12),
	datad => s_count(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X30_Y18_N16
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!s_count(13) & (!s_count(15) & (!s_count(14) & !s_count(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_count(13),
	datab => s_count(15),
	datac => s_count(14),
	datad => s_count(16),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X30_Y18_N18
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X30_Y18_N28
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5_combout\ & (\Equal0~6_combout\ & (\Equal0~8_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal0~8_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X30_Y18_N12
\s_count[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[0]~38_combout\ = (\reset~input_o\) # ((\Equal0~9_combout\ & ((s_count(2)) # (!\start~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \Equal0~9_combout\,
	datac => s_count(2),
	datad => \reset~input_o\,
	combout => \s_count[0]~38_combout\);

-- Location: FF_X29_Y19_N1
\s_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[0]~32_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(0));

-- Location: LCCOMB_X29_Y19_N2
\s_count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_count[1]~34_combout\ = (s_count(1) & (!\s_count[0]~33\)) # (!s_count(1) & ((\s_count[0]~33\) # (GND)))
-- \s_count[1]~35\ = CARRY((!\s_count[0]~33\) # (!s_count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_count(1),
	datad => VCC,
	cin => \s_count[0]~33\,
	combout => \s_count[1]~34_combout\,
	cout => \s_count[1]~35\);

-- Location: FF_X29_Y19_N3
\s_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[1]~34_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(1));

-- Location: FF_X29_Y19_N5
\s_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_count[2]~36_combout\,
	sclr => \s_count[0]~38_combout\,
	ena => \s_count[0]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_count(2));

-- Location: LCCOMB_X30_Y18_N26
\timerOnDelay~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOnDelay~0_combout\ = (!\reset~input_o\ & (\enable~input_o\ & (s_count(2) & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \enable~input_o\,
	datac => s_count(2),
	datad => \Equal0~9_combout\,
	combout => \timerOnDelay~0_combout\);

-- Location: LCCOMB_X30_Y18_N20
\timerOnDelay~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOnDelay~1_combout\ = (\timerOnDelay~0_combout\) # ((!\enable~input_o\ & (\timerOnDelay~reg0_q\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \timerOnDelay~0_combout\,
	datab => \enable~input_o\,
	datac => \timerOnDelay~reg0_q\,
	datad => \reset~input_o\,
	combout => \timerOnDelay~1_combout\);

-- Location: FF_X30_Y18_N21
\timerOnDelay~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timerOnDelay~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOnDelay~reg0_q\);

ww_timerOnDelay <= \timerOnDelay~output_o\;
END structure;


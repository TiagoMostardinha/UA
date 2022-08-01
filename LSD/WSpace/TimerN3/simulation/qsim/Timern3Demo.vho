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

-- DATE "06/18/2021 19:05:33"

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

ENTITY 	TimerN3 IS
    PORT (
	clk : IN std_logic;
	start : IN std_logic;
	halt : IN std_logic;
	timerOut : BUFFER std_logic
	);
END TimerN3;

-- Design Ports Information
-- timerOut	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- halt	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TimerN3 IS
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
SIGNAL ww_start : std_logic;
SIGNAL ww_halt : std_logic;
SIGNAL ww_timerOut : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \timerOut~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \s_counter[0]~32_combout\ : std_logic;
SIGNAL \halt~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \s_counter[0]~33\ : std_logic;
SIGNAL \s_counter[1]~35_combout\ : std_logic;
SIGNAL \s_counter[1]~36\ : std_logic;
SIGNAL \s_counter[2]~37_combout\ : std_logic;
SIGNAL \s_counter[2]~38\ : std_logic;
SIGNAL \s_counter[3]~39_combout\ : std_logic;
SIGNAL \s_counter[3]~40\ : std_logic;
SIGNAL \s_counter[4]~41_combout\ : std_logic;
SIGNAL \s_counter[4]~42\ : std_logic;
SIGNAL \s_counter[5]~43_combout\ : std_logic;
SIGNAL \s_counter[5]~44\ : std_logic;
SIGNAL \s_counter[6]~45_combout\ : std_logic;
SIGNAL \s_counter[6]~46\ : std_logic;
SIGNAL \s_counter[7]~47_combout\ : std_logic;
SIGNAL \s_counter[7]~48\ : std_logic;
SIGNAL \s_counter[8]~49_combout\ : std_logic;
SIGNAL \s_counter[8]~50\ : std_logic;
SIGNAL \s_counter[9]~51_combout\ : std_logic;
SIGNAL \s_counter[9]~52\ : std_logic;
SIGNAL \s_counter[10]~53_combout\ : std_logic;
SIGNAL \s_counter[10]~54\ : std_logic;
SIGNAL \s_counter[11]~55_combout\ : std_logic;
SIGNAL \s_counter[11]~56\ : std_logic;
SIGNAL \s_counter[12]~57_combout\ : std_logic;
SIGNAL \s_counter[12]~58\ : std_logic;
SIGNAL \s_counter[13]~59_combout\ : std_logic;
SIGNAL \s_counter[13]~feeder_combout\ : std_logic;
SIGNAL \s_counter[13]~60\ : std_logic;
SIGNAL \s_counter[14]~61_combout\ : std_logic;
SIGNAL \s_counter[14]~feeder_combout\ : std_logic;
SIGNAL \s_counter[14]~62\ : std_logic;
SIGNAL \s_counter[15]~63_combout\ : std_logic;
SIGNAL \s_counter[15]~feeder_combout\ : std_logic;
SIGNAL \s_counter[15]~64\ : std_logic;
SIGNAL \s_counter[16]~65_combout\ : std_logic;
SIGNAL \s_counter[16]~66\ : std_logic;
SIGNAL \s_counter[17]~67_combout\ : std_logic;
SIGNAL \s_counter[17]~68\ : std_logic;
SIGNAL \s_counter[18]~69_combout\ : std_logic;
SIGNAL \s_counter[18]~70\ : std_logic;
SIGNAL \s_counter[19]~71_combout\ : std_logic;
SIGNAL \s_counter[19]~72\ : std_logic;
SIGNAL \s_counter[20]~73_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \s_counter[20]~74\ : std_logic;
SIGNAL \s_counter[21]~75_combout\ : std_logic;
SIGNAL \s_counter[21]~76\ : std_logic;
SIGNAL \s_counter[22]~77_combout\ : std_logic;
SIGNAL \s_counter[22]~78\ : std_logic;
SIGNAL \s_counter[23]~79_combout\ : std_logic;
SIGNAL \s_counter[23]~80\ : std_logic;
SIGNAL \s_counter[24]~81_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \s_counter[24]~82\ : std_logic;
SIGNAL \s_counter[25]~83_combout\ : std_logic;
SIGNAL \s_counter[25]~84\ : std_logic;
SIGNAL \s_counter[26]~85_combout\ : std_logic;
SIGNAL \s_counter[26]~86\ : std_logic;
SIGNAL \s_counter[27]~87_combout\ : std_logic;
SIGNAL \s_counter[27]~88\ : std_logic;
SIGNAL \s_counter[28]~89_combout\ : std_logic;
SIGNAL \s_counter[28]~90\ : std_logic;
SIGNAL \s_counter[29]~91_combout\ : std_logic;
SIGNAL \s_counter[29]~92\ : std_logic;
SIGNAL \s_counter[30]~93_combout\ : std_logic;
SIGNAL \s_counter[30]~94\ : std_logic;
SIGNAL \s_counter[31]~95_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \s_counter~34_combout\ : std_logic;
SIGNAL \timerOut~0_combout\ : std_logic;
SIGNAL \timerOut~reg0_q\ : std_logic;
SIGNAL s_counter : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_start <= start;
ww_halt <= halt;
timerOut <= ww_timerOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X27_Y0_N9
\timerOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \timerOut~reg0_q\,
	devoe => ww_devoe,
	o => \timerOut~output_o\);

-- Location: IOIBUF_X0_Y36_N8
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

-- Location: LCCOMB_X27_Y5_N0
\s_counter[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[0]~32_combout\ = s_counter(0) $ (VCC)
-- \s_counter[0]~33\ = CARRY(s_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => s_counter(0),
	datad => VCC,
	combout => \s_counter[0]~32_combout\,
	cout => \s_counter[0]~33\);

-- Location: IOIBUF_X27_Y0_N22
\halt~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_halt,
	o => \halt~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X27_Y5_N2
\s_counter[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[1]~35_combout\ = (s_counter(1) & (!\s_counter[0]~33\)) # (!s_counter(1) & ((\s_counter[0]~33\) # (GND)))
-- \s_counter[1]~36\ = CARRY((!\s_counter[0]~33\) # (!s_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(1),
	datad => VCC,
	cin => \s_counter[0]~33\,
	combout => \s_counter[1]~35_combout\,
	cout => \s_counter[1]~36\);

-- Location: FF_X27_Y5_N3
\s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[1]~35_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(1));

-- Location: LCCOMB_X27_Y5_N4
\s_counter[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[2]~37_combout\ = (s_counter(2) & (\s_counter[1]~36\ $ (GND))) # (!s_counter(2) & (!\s_counter[1]~36\ & VCC))
-- \s_counter[2]~38\ = CARRY((s_counter(2) & !\s_counter[1]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(2),
	datad => VCC,
	cin => \s_counter[1]~36\,
	combout => \s_counter[2]~37_combout\,
	cout => \s_counter[2]~38\);

-- Location: FF_X27_Y5_N5
\s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[2]~37_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(2));

-- Location: LCCOMB_X27_Y5_N6
\s_counter[3]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[3]~39_combout\ = (s_counter(3) & (!\s_counter[2]~38\)) # (!s_counter(3) & ((\s_counter[2]~38\) # (GND)))
-- \s_counter[3]~40\ = CARRY((!\s_counter[2]~38\) # (!s_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(3),
	datad => VCC,
	cin => \s_counter[2]~38\,
	combout => \s_counter[3]~39_combout\,
	cout => \s_counter[3]~40\);

-- Location: FF_X27_Y5_N7
\s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[3]~39_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(3));

-- Location: LCCOMB_X27_Y5_N8
\s_counter[4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[4]~41_combout\ = (s_counter(4) & (\s_counter[3]~40\ $ (GND))) # (!s_counter(4) & (!\s_counter[3]~40\ & VCC))
-- \s_counter[4]~42\ = CARRY((s_counter(4) & !\s_counter[3]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(4),
	datad => VCC,
	cin => \s_counter[3]~40\,
	combout => \s_counter[4]~41_combout\,
	cout => \s_counter[4]~42\);

-- Location: FF_X27_Y5_N9
\s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[4]~41_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(4));

-- Location: LCCOMB_X27_Y5_N10
\s_counter[5]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[5]~43_combout\ = (s_counter(5) & (!\s_counter[4]~42\)) # (!s_counter(5) & ((\s_counter[4]~42\) # (GND)))
-- \s_counter[5]~44\ = CARRY((!\s_counter[4]~42\) # (!s_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(5),
	datad => VCC,
	cin => \s_counter[4]~42\,
	combout => \s_counter[5]~43_combout\,
	cout => \s_counter[5]~44\);

-- Location: FF_X27_Y5_N11
\s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[5]~43_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(5));

-- Location: LCCOMB_X27_Y5_N12
\s_counter[6]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[6]~45_combout\ = (s_counter(6) & (\s_counter[5]~44\ $ (GND))) # (!s_counter(6) & (!\s_counter[5]~44\ & VCC))
-- \s_counter[6]~46\ = CARRY((s_counter(6) & !\s_counter[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(6),
	datad => VCC,
	cin => \s_counter[5]~44\,
	combout => \s_counter[6]~45_combout\,
	cout => \s_counter[6]~46\);

-- Location: FF_X27_Y5_N13
\s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[6]~45_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(6));

-- Location: LCCOMB_X27_Y5_N14
\s_counter[7]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[7]~47_combout\ = (s_counter(7) & (!\s_counter[6]~46\)) # (!s_counter(7) & ((\s_counter[6]~46\) # (GND)))
-- \s_counter[7]~48\ = CARRY((!\s_counter[6]~46\) # (!s_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(7),
	datad => VCC,
	cin => \s_counter[6]~46\,
	combout => \s_counter[7]~47_combout\,
	cout => \s_counter[7]~48\);

-- Location: FF_X27_Y5_N15
\s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[7]~47_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(7));

-- Location: LCCOMB_X27_Y5_N16
\s_counter[8]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[8]~49_combout\ = (s_counter(8) & (\s_counter[7]~48\ $ (GND))) # (!s_counter(8) & (!\s_counter[7]~48\ & VCC))
-- \s_counter[8]~50\ = CARRY((s_counter(8) & !\s_counter[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(8),
	datad => VCC,
	cin => \s_counter[7]~48\,
	combout => \s_counter[8]~49_combout\,
	cout => \s_counter[8]~50\);

-- Location: FF_X27_Y5_N17
\s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[8]~49_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(8));

-- Location: LCCOMB_X27_Y5_N18
\s_counter[9]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[9]~51_combout\ = (s_counter(9) & (!\s_counter[8]~50\)) # (!s_counter(9) & ((\s_counter[8]~50\) # (GND)))
-- \s_counter[9]~52\ = CARRY((!\s_counter[8]~50\) # (!s_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(9),
	datad => VCC,
	cin => \s_counter[8]~50\,
	combout => \s_counter[9]~51_combout\,
	cout => \s_counter[9]~52\);

-- Location: FF_X27_Y5_N19
\s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[9]~51_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(9));

-- Location: LCCOMB_X27_Y5_N20
\s_counter[10]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[10]~53_combout\ = (s_counter(10) & (\s_counter[9]~52\ $ (GND))) # (!s_counter(10) & (!\s_counter[9]~52\ & VCC))
-- \s_counter[10]~54\ = CARRY((s_counter(10) & !\s_counter[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(10),
	datad => VCC,
	cin => \s_counter[9]~52\,
	combout => \s_counter[10]~53_combout\,
	cout => \s_counter[10]~54\);

-- Location: FF_X27_Y5_N21
\s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[10]~53_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(10));

-- Location: LCCOMB_X27_Y5_N22
\s_counter[11]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[11]~55_combout\ = (s_counter(11) & (!\s_counter[10]~54\)) # (!s_counter(11) & ((\s_counter[10]~54\) # (GND)))
-- \s_counter[11]~56\ = CARRY((!\s_counter[10]~54\) # (!s_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(11),
	datad => VCC,
	cin => \s_counter[10]~54\,
	combout => \s_counter[11]~55_combout\,
	cout => \s_counter[11]~56\);

-- Location: FF_X27_Y5_N23
\s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[11]~55_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(11));

-- Location: LCCOMB_X27_Y5_N24
\s_counter[12]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[12]~57_combout\ = (s_counter(12) & (\s_counter[11]~56\ $ (GND))) # (!s_counter(12) & (!\s_counter[11]~56\ & VCC))
-- \s_counter[12]~58\ = CARRY((s_counter(12) & !\s_counter[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(12),
	datad => VCC,
	cin => \s_counter[11]~56\,
	combout => \s_counter[12]~57_combout\,
	cout => \s_counter[12]~58\);

-- Location: FF_X27_Y5_N25
\s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[12]~57_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(12));

-- Location: LCCOMB_X27_Y5_N26
\s_counter[13]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[13]~59_combout\ = (s_counter(13) & (!\s_counter[12]~58\)) # (!s_counter(13) & ((\s_counter[12]~58\) # (GND)))
-- \s_counter[13]~60\ = CARRY((!\s_counter[12]~58\) # (!s_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(13),
	datad => VCC,
	cin => \s_counter[12]~58\,
	combout => \s_counter[13]~59_combout\,
	cout => \s_counter[13]~60\);

-- Location: LCCOMB_X28_Y4_N12
\s_counter[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[13]~feeder_combout\ = \s_counter[13]~59_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \s_counter[13]~59_combout\,
	combout => \s_counter[13]~feeder_combout\);

-- Location: FF_X28_Y4_N13
\s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[13]~feeder_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(13));

-- Location: LCCOMB_X27_Y5_N28
\s_counter[14]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[14]~61_combout\ = (s_counter(14) & (\s_counter[13]~60\ $ (GND))) # (!s_counter(14) & (!\s_counter[13]~60\ & VCC))
-- \s_counter[14]~62\ = CARRY((s_counter(14) & !\s_counter[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(14),
	datad => VCC,
	cin => \s_counter[13]~60\,
	combout => \s_counter[14]~61_combout\,
	cout => \s_counter[14]~62\);

-- Location: LCCOMB_X28_Y4_N14
\s_counter[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[14]~feeder_combout\ = \s_counter[14]~61_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_counter[14]~61_combout\,
	combout => \s_counter[14]~feeder_combout\);

-- Location: FF_X28_Y4_N15
\s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[14]~feeder_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(14));

-- Location: LCCOMB_X27_Y5_N30
\s_counter[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[15]~63_combout\ = (s_counter(15) & (!\s_counter[14]~62\)) # (!s_counter(15) & ((\s_counter[14]~62\) # (GND)))
-- \s_counter[15]~64\ = CARRY((!\s_counter[14]~62\) # (!s_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(15),
	datad => VCC,
	cin => \s_counter[14]~62\,
	combout => \s_counter[15]~63_combout\,
	cout => \s_counter[15]~64\);

-- Location: LCCOMB_X28_Y4_N24
\s_counter[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[15]~feeder_combout\ = \s_counter[15]~63_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \s_counter[15]~63_combout\,
	combout => \s_counter[15]~feeder_combout\);

-- Location: FF_X28_Y4_N25
\s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[15]~feeder_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(15));

-- Location: LCCOMB_X27_Y4_N0
\s_counter[16]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[16]~65_combout\ = (s_counter(16) & (\s_counter[15]~64\ $ (GND))) # (!s_counter(16) & (!\s_counter[15]~64\ & VCC))
-- \s_counter[16]~66\ = CARRY((s_counter(16) & !\s_counter[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(16),
	datad => VCC,
	cin => \s_counter[15]~64\,
	combout => \s_counter[16]~65_combout\,
	cout => \s_counter[16]~66\);

-- Location: FF_X27_Y4_N1
\s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[16]~65_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(16));

-- Location: LCCOMB_X27_Y4_N2
\s_counter[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[17]~67_combout\ = (s_counter(17) & (!\s_counter[16]~66\)) # (!s_counter(17) & ((\s_counter[16]~66\) # (GND)))
-- \s_counter[17]~68\ = CARRY((!\s_counter[16]~66\) # (!s_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(17),
	datad => VCC,
	cin => \s_counter[16]~66\,
	combout => \s_counter[17]~67_combout\,
	cout => \s_counter[17]~68\);

-- Location: FF_X27_Y4_N3
\s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[17]~67_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(17));

-- Location: LCCOMB_X27_Y4_N4
\s_counter[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[18]~69_combout\ = (s_counter(18) & (\s_counter[17]~68\ $ (GND))) # (!s_counter(18) & (!\s_counter[17]~68\ & VCC))
-- \s_counter[18]~70\ = CARRY((s_counter(18) & !\s_counter[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(18),
	datad => VCC,
	cin => \s_counter[17]~68\,
	combout => \s_counter[18]~69_combout\,
	cout => \s_counter[18]~70\);

-- Location: FF_X27_Y4_N5
\s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[18]~69_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(18));

-- Location: LCCOMB_X27_Y4_N6
\s_counter[19]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[19]~71_combout\ = (s_counter(19) & (!\s_counter[18]~70\)) # (!s_counter(19) & ((\s_counter[18]~70\) # (GND)))
-- \s_counter[19]~72\ = CARRY((!\s_counter[18]~70\) # (!s_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(19),
	datad => VCC,
	cin => \s_counter[18]~70\,
	combout => \s_counter[19]~71_combout\,
	cout => \s_counter[19]~72\);

-- Location: FF_X27_Y4_N7
\s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[19]~71_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(19));

-- Location: LCCOMB_X27_Y4_N8
\s_counter[20]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[20]~73_combout\ = (s_counter(20) & (\s_counter[19]~72\ $ (GND))) # (!s_counter(20) & (!\s_counter[19]~72\ & VCC))
-- \s_counter[20]~74\ = CARRY((s_counter(20) & !\s_counter[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(20),
	datad => VCC,
	cin => \s_counter[19]~72\,
	combout => \s_counter[20]~73_combout\,
	cout => \s_counter[20]~74\);

-- Location: FF_X27_Y4_N9
\s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[20]~73_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(20));

-- Location: LCCOMB_X28_Y4_N30
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!s_counter(17) & (!s_counter(18) & (!s_counter(19) & !s_counter(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(17),
	datab => s_counter(18),
	datac => s_counter(19),
	datad => s_counter(20),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X27_Y4_N10
\s_counter[21]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[21]~75_combout\ = (s_counter(21) & (!\s_counter[20]~74\)) # (!s_counter(21) & ((\s_counter[20]~74\) # (GND)))
-- \s_counter[21]~76\ = CARRY((!\s_counter[20]~74\) # (!s_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(21),
	datad => VCC,
	cin => \s_counter[20]~74\,
	combout => \s_counter[21]~75_combout\,
	cout => \s_counter[21]~76\);

-- Location: FF_X27_Y4_N11
\s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[21]~75_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(21));

-- Location: LCCOMB_X27_Y4_N12
\s_counter[22]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[22]~77_combout\ = (s_counter(22) & (\s_counter[21]~76\ $ (GND))) # (!s_counter(22) & (!\s_counter[21]~76\ & VCC))
-- \s_counter[22]~78\ = CARRY((s_counter(22) & !\s_counter[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(22),
	datad => VCC,
	cin => \s_counter[21]~76\,
	combout => \s_counter[22]~77_combout\,
	cout => \s_counter[22]~78\);

-- Location: FF_X27_Y4_N13
\s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[22]~77_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(22));

-- Location: LCCOMB_X27_Y4_N14
\s_counter[23]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[23]~79_combout\ = (s_counter(23) & (!\s_counter[22]~78\)) # (!s_counter(23) & ((\s_counter[22]~78\) # (GND)))
-- \s_counter[23]~80\ = CARRY((!\s_counter[22]~78\) # (!s_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(23),
	datad => VCC,
	cin => \s_counter[22]~78\,
	combout => \s_counter[23]~79_combout\,
	cout => \s_counter[23]~80\);

-- Location: FF_X27_Y4_N15
\s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[23]~79_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(23));

-- Location: LCCOMB_X27_Y4_N16
\s_counter[24]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[24]~81_combout\ = (s_counter(24) & (\s_counter[23]~80\ $ (GND))) # (!s_counter(24) & (!\s_counter[23]~80\ & VCC))
-- \s_counter[24]~82\ = CARRY((s_counter(24) & !\s_counter[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(24),
	datad => VCC,
	cin => \s_counter[23]~80\,
	combout => \s_counter[24]~81_combout\,
	cout => \s_counter[24]~82\);

-- Location: FF_X27_Y4_N17
\s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[24]~81_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(24));

-- Location: LCCOMB_X28_Y4_N28
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!s_counter(23) & (!s_counter(24) & (!s_counter(22) & !s_counter(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(23),
	datab => s_counter(24),
	datac => s_counter(22),
	datad => s_counter(21),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X27_Y4_N18
\s_counter[25]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[25]~83_combout\ = (s_counter(25) & (!\s_counter[24]~82\)) # (!s_counter(25) & ((\s_counter[24]~82\) # (GND)))
-- \s_counter[25]~84\ = CARRY((!\s_counter[24]~82\) # (!s_counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(25),
	datad => VCC,
	cin => \s_counter[24]~82\,
	combout => \s_counter[25]~83_combout\,
	cout => \s_counter[25]~84\);

-- Location: FF_X27_Y4_N19
\s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[25]~83_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(25));

-- Location: LCCOMB_X27_Y4_N20
\s_counter[26]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[26]~85_combout\ = (s_counter(26) & (\s_counter[25]~84\ $ (GND))) # (!s_counter(26) & (!\s_counter[25]~84\ & VCC))
-- \s_counter[26]~86\ = CARRY((s_counter(26) & !\s_counter[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(26),
	datad => VCC,
	cin => \s_counter[25]~84\,
	combout => \s_counter[26]~85_combout\,
	cout => \s_counter[26]~86\);

-- Location: FF_X27_Y4_N21
\s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[26]~85_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(26));

-- Location: LCCOMB_X27_Y4_N22
\s_counter[27]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[27]~87_combout\ = (s_counter(27) & (!\s_counter[26]~86\)) # (!s_counter(27) & ((\s_counter[26]~86\) # (GND)))
-- \s_counter[27]~88\ = CARRY((!\s_counter[26]~86\) # (!s_counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(27),
	datad => VCC,
	cin => \s_counter[26]~86\,
	combout => \s_counter[27]~87_combout\,
	cout => \s_counter[27]~88\);

-- Location: FF_X27_Y4_N23
\s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[27]~87_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(27));

-- Location: LCCOMB_X27_Y4_N24
\s_counter[28]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[28]~89_combout\ = (s_counter(28) & (\s_counter[27]~88\ $ (GND))) # (!s_counter(28) & (!\s_counter[27]~88\ & VCC))
-- \s_counter[28]~90\ = CARRY((s_counter(28) & !\s_counter[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(28),
	datad => VCC,
	cin => \s_counter[27]~88\,
	combout => \s_counter[28]~89_combout\,
	cout => \s_counter[28]~90\);

-- Location: FF_X27_Y4_N25
\s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[28]~89_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(28));

-- Location: LCCOMB_X27_Y4_N26
\s_counter[29]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[29]~91_combout\ = (s_counter(29) & (!\s_counter[28]~90\)) # (!s_counter(29) & ((\s_counter[28]~90\) # (GND)))
-- \s_counter[29]~92\ = CARRY((!\s_counter[28]~90\) # (!s_counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(29),
	datad => VCC,
	cin => \s_counter[28]~90\,
	combout => \s_counter[29]~91_combout\,
	cout => \s_counter[29]~92\);

-- Location: FF_X27_Y4_N27
\s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[29]~91_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(29));

-- Location: LCCOMB_X27_Y4_N28
\s_counter[30]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[30]~93_combout\ = (s_counter(30) & (\s_counter[29]~92\ $ (GND))) # (!s_counter(30) & (!\s_counter[29]~92\ & VCC))
-- \s_counter[30]~94\ = CARRY((s_counter(30) & !\s_counter[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => s_counter(30),
	datad => VCC,
	cin => \s_counter[29]~92\,
	combout => \s_counter[30]~93_combout\,
	cout => \s_counter[30]~94\);

-- Location: FF_X27_Y4_N29
\s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[30]~93_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(30));

-- Location: LCCOMB_X27_Y4_N30
\s_counter[31]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[31]~95_combout\ = s_counter(31) $ (\s_counter[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(31),
	cin => \s_counter[30]~94\,
	combout => \s_counter[31]~95_combout\);

-- Location: FF_X27_Y4_N31
\s_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[31]~95_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(31));

-- Location: LCCOMB_X28_Y4_N6
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!s_counter(25) & (!s_counter(28) & (!s_counter(26) & !s_counter(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(25),
	datab => s_counter(28),
	datac => s_counter(26),
	datad => s_counter(27),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X28_Y4_N8
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!s_counter(29) & (!s_counter(31) & (!s_counter(30) & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(29),
	datab => s_counter(31),
	datac => s_counter(30),
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X28_Y4_N22
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!s_counter(13) & (!s_counter(15) & (!s_counter(14) & !s_counter(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(13),
	datab => s_counter(15),
	datac => s_counter(14),
	datad => s_counter(16),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X28_Y4_N4
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!s_counter(1) & (!s_counter(2) & (!s_counter(4) & !s_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(1),
	datab => s_counter(2),
	datac => s_counter(4),
	datad => s_counter(3),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X28_Y4_N26
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!s_counter(5) & (!s_counter(6) & (!s_counter(7) & !s_counter(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(5),
	datab => s_counter(6),
	datac => s_counter(7),
	datad => s_counter(8),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X28_Y4_N16
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!s_counter(10) & (!s_counter(11) & (!s_counter(12) & !s_counter(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(10),
	datab => s_counter(11),
	datac => s_counter(12),
	datad => s_counter(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X28_Y4_N20
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X28_Y4_N10
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

-- Location: LCCOMB_X28_Y4_N0
\s_counter~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter~34_combout\ = (\Equal0~9_combout\ & (((!s_counter(0) & \start~input_o\)))) # (!\Equal0~9_combout\ & (!\halt~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \halt~input_o\,
	datab => s_counter(0),
	datac => \start~input_o\,
	datad => \Equal0~9_combout\,
	combout => \s_counter~34_combout\);

-- Location: FF_X27_Y5_N1
\s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \s_counter[0]~32_combout\,
	ena => \s_counter~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(0));

-- Location: LCCOMB_X28_Y4_N18
\timerOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timerOut~0_combout\ = (\Equal0~9_combout\ & ((s_counter(0)) # ((!\start~input_o\ & \timerOut~reg0_q\)))) # (!\Equal0~9_combout\ & (((\timerOut~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(0),
	datab => \start~input_o\,
	datac => \timerOut~reg0_q\,
	datad => \Equal0~9_combout\,
	combout => \timerOut~0_combout\);

-- Location: FF_X28_Y4_N19
\timerOut~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timerOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \timerOut~reg0_q\);

ww_timerOut <= \timerOut~output_o\;
END structure;



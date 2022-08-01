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

-- DATE "06/17/2021 16:35:39"

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

ENTITY 	Block4 IS
    PORT (
	LEDR : OUT std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW17 : IN std_logic;
	SW16 : IN std_logic;
	SW3 : IN std_logic;
	SW2 : IN std_logic;
	SW1 : IN std_logic;
	SW0 : IN std_logic
	);
END Block4;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW3	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW16	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW17	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block4 IS
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
SIGNAL ww_SW17 : std_logic;
SIGNAL ww_SW16 : std_logic;
SIGNAL ww_SW3 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW3~input_o\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW16~input_o\ : std_logic;
SIGNAL \SW17~input_o\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|counter[0]~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3_combout\ : std_logic;
SIGNAL \inst|Add0~5_combout\ : std_logic;
SIGNAL \inst|Add0~4\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9_combout\ : std_logic;
SIGNAL \inst|Add0~11_combout\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~15_combout\ : std_logic;
SIGNAL \inst|Add0~17_combout\ : std_logic;
SIGNAL \inst|Add0~16\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~21_combout\ : std_logic;
SIGNAL \inst|Add0~23_combout\ : std_logic;
SIGNAL \inst|Add0~22\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~27_combout\ : std_logic;
SIGNAL \inst|Add0~29_combout\ : std_logic;
SIGNAL \inst|Add0~28\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~33_combout\ : std_logic;
SIGNAL \inst|Add0~35_combout\ : std_logic;
SIGNAL \inst|Add0~34\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~39_combout\ : std_logic;
SIGNAL \inst|Add0~41_combout\ : std_logic;
SIGNAL \inst|Add0~40\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~45_combout\ : std_logic;
SIGNAL \inst|Add0~47_combout\ : std_logic;
SIGNAL \inst|Add0~46\ : std_logic;
SIGNAL \inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|Add0~50_combout\ : std_logic;
SIGNAL \inst|Add0~49\ : std_logic;
SIGNAL \inst|Add0~51_combout\ : std_logic;
SIGNAL \inst|Add0~53_combout\ : std_logic;
SIGNAL \inst|Add0~52\ : std_logic;
SIGNAL \inst|Add0~54_combout\ : std_logic;
SIGNAL \inst|Add0~56_combout\ : std_logic;
SIGNAL \inst|Add0~55\ : std_logic;
SIGNAL \inst|Add0~57_combout\ : std_logic;
SIGNAL \inst|Add0~59_combout\ : std_logic;
SIGNAL \inst|Add0~58\ : std_logic;
SIGNAL \inst|Add0~60_combout\ : std_logic;
SIGNAL \inst|Add0~62_combout\ : std_logic;
SIGNAL \inst|Add0~61\ : std_logic;
SIGNAL \inst|Add0~63_combout\ : std_logic;
SIGNAL \inst|Add0~65_combout\ : std_logic;
SIGNAL \inst|Add0~64\ : std_logic;
SIGNAL \inst|Add0~66_combout\ : std_logic;
SIGNAL \inst|Add0~68_combout\ : std_logic;
SIGNAL \inst|Add0~67\ : std_logic;
SIGNAL \inst|Add0~69_combout\ : std_logic;
SIGNAL \inst|Add0~71_combout\ : std_logic;
SIGNAL \inst|Add0~70\ : std_logic;
SIGNAL \inst|Add0~72_combout\ : std_logic;
SIGNAL \inst|Add0~74_combout\ : std_logic;
SIGNAL \inst|Add0~73\ : std_logic;
SIGNAL \inst|Add0~75_combout\ : std_logic;
SIGNAL \inst|Add0~77_combout\ : std_logic;
SIGNAL \inst|Add0~76\ : std_logic;
SIGNAL \inst|Add0~78_combout\ : std_logic;
SIGNAL \inst|Add0~80_combout\ : std_logic;
SIGNAL \inst|Add0~79\ : std_logic;
SIGNAL \inst|Add0~81_combout\ : std_logic;
SIGNAL \inst|Add0~83_combout\ : std_logic;
SIGNAL \inst|Add0~82\ : std_logic;
SIGNAL \inst|Add0~84_combout\ : std_logic;
SIGNAL \inst|Add0~93_combout\ : std_logic;
SIGNAL \inst|Add0~85\ : std_logic;
SIGNAL \inst|Add0~86_combout\ : std_logic;
SIGNAL \inst|Add0~94_combout\ : std_logic;
SIGNAL \inst|Add0~87\ : std_logic;
SIGNAL \inst|Add0~88_combout\ : std_logic;
SIGNAL \inst|Add0~95_combout\ : std_logic;
SIGNAL \inst|Add0~89\ : std_logic;
SIGNAL \inst|Add0~90_combout\ : std_logic;
SIGNAL \inst|Add0~92_combout\ : std_logic;
SIGNAL \inst|Equal0~9_combout\ : std_logic;
SIGNAL \inst|Equal0~8_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~10_combout\ : std_logic;
SIGNAL \inst|TimeExp~0_combout\ : std_logic;
SIGNAL \inst|TimeExp~q\ : std_logic;
SIGNAL \inst|counter\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_SW17 <= SW17;
ww_SW16 <= SW16;
ww_SW3 <= SW3;
ww_SW2 <= SW2;
ww_SW1 <= SW1;
ww_SW0 <= SW0;
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
	i => \inst|TimeExp~q\,
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

-- Location: IOIBUF_X91_Y73_N15
\SW16~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW16,
	o => \SW16~input_o\);

-- Location: IOIBUF_X89_Y73_N8
\SW17~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW17,
	o => \SW17~input_o\);

-- Location: LCCOMB_X89_Y69_N0
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|counter\(0) $ (GND)
-- \inst|Add0~1\ = CARRY(!\inst|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X90_Y69_N14
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\SW17~input_o\) # (!\inst|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW17~input_o\,
	datad => \inst|Add0~0_combout\,
	combout => \inst|Add0~2_combout\);

-- Location: LCCOMB_X90_Y68_N18
\inst|counter[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|counter[0]~0_combout\ = (\SW17~input_o\) # ((!\SW16~input_o\ & !\inst|Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW16~input_o\,
	datac => \SW17~input_o\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|counter[0]~0_combout\);

-- Location: FF_X89_Y69_N3
\inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|Add0~2_combout\,
	sload => VCC,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(0));

-- Location: LCCOMB_X89_Y69_N2
\inst|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~3_combout\ = (\inst|counter\(1) & (\inst|Add0~1\ & VCC)) # (!\inst|counter\(1) & (!\inst|Add0~1\))
-- \inst|Add0~4\ = CARRY((!\inst|counter\(1) & !\inst|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~3_combout\,
	cout => \inst|Add0~4\);

-- Location: LCCOMB_X90_Y69_N12
\inst|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~5_combout\ = (!\SW17~input_o\ & \inst|Add0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW17~input_o\,
	datac => \inst|Add0~3_combout\,
	combout => \inst|Add0~5_combout\);

-- Location: FF_X89_Y69_N13
\inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|Add0~5_combout\,
	sload => VCC,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(1));

-- Location: LCCOMB_X89_Y69_N4
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|counter\(2) & ((GND) # (!\inst|Add0~4\))) # (!\inst|counter\(2) & (\inst|Add0~4\ $ (GND)))
-- \inst|Add0~7\ = CARRY((\inst|counter\(2)) # (!\inst|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(2),
	datad => VCC,
	cin => \inst|Add0~4\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X90_Y69_N10
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (!\SW17~input_o\ & \inst|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW17~input_o\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|Add0~8_combout\);

-- Location: FF_X89_Y69_N5
\inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|Add0~8_combout\,
	sload => VCC,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(2));

-- Location: LCCOMB_X89_Y69_N6
\inst|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~9_combout\ = (\inst|counter\(3) & (\inst|Add0~7\ & VCC)) # (!\inst|counter\(3) & (!\inst|Add0~7\))
-- \inst|Add0~10\ = CARRY((!\inst|counter\(3) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(3),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~9_combout\,
	cout => \inst|Add0~10\);

-- Location: LCCOMB_X90_Y69_N16
\inst|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~11_combout\ = (!\SW17~input_o\ & \inst|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW17~input_o\,
	datad => \inst|Add0~9_combout\,
	combout => \inst|Add0~11_combout\);

-- Location: FF_X90_Y69_N17
\inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~11_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(3));

-- Location: LCCOMB_X89_Y69_N8
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|counter\(4) & ((GND) # (!\inst|Add0~10\))) # (!\inst|counter\(4) & (\inst|Add0~10\ $ (GND)))
-- \inst|Add0~13\ = CARRY((\inst|counter\(4)) # (!\inst|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(4),
	datad => VCC,
	cin => \inst|Add0~10\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: LCCOMB_X90_Y69_N20
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (!\SW17~input_o\ & \inst|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|Add0~12_combout\,
	combout => \inst|Add0~14_combout\);

-- Location: FF_X89_Y69_N23
\inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|Add0~14_combout\,
	sload => VCC,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(4));

-- Location: LCCOMB_X89_Y69_N10
\inst|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~15_combout\ = (\inst|counter\(5) & (\inst|Add0~13\ & VCC)) # (!\inst|counter\(5) & (!\inst|Add0~13\))
-- \inst|Add0~16\ = CARRY((!\inst|counter\(5) & !\inst|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(5),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~15_combout\,
	cout => \inst|Add0~16\);

-- Location: LCCOMB_X90_Y69_N18
\inst|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~17_combout\ = (!\SW17~input_o\ & \inst|Add0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|Add0~15_combout\,
	combout => \inst|Add0~17_combout\);

-- Location: FF_X89_Y69_N7
\inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|Add0~17_combout\,
	sload => VCC,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(5));

-- Location: LCCOMB_X89_Y69_N12
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|counter\(6) & ((GND) # (!\inst|Add0~16\))) # (!\inst|counter\(6) & (\inst|Add0~16\ $ (GND)))
-- \inst|Add0~19\ = CARRY((\inst|counter\(6)) # (!\inst|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(6),
	datad => VCC,
	cin => \inst|Add0~16\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: LCCOMB_X90_Y69_N0
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (!\SW17~input_o\ & \inst|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|Add0~18_combout\,
	combout => \inst|Add0~20_combout\);

-- Location: FF_X89_Y69_N1
\inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|Add0~20_combout\,
	sload => VCC,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(6));

-- Location: LCCOMB_X89_Y69_N14
\inst|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~21_combout\ = (\inst|counter\(7) & (\inst|Add0~19\ & VCC)) # (!\inst|counter\(7) & (!\inst|Add0~19\))
-- \inst|Add0~22\ = CARRY((!\inst|counter\(7) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(7),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~21_combout\,
	cout => \inst|Add0~22\);

-- Location: LCCOMB_X90_Y69_N8
\inst|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~23_combout\ = (!\SW17~input_o\ & \inst|Add0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|Add0~21_combout\,
	combout => \inst|Add0~23_combout\);

-- Location: FF_X90_Y69_N9
\inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~23_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(7));

-- Location: LCCOMB_X89_Y69_N16
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|counter\(8) & ((GND) # (!\inst|Add0~22\))) # (!\inst|counter\(8) & (\inst|Add0~22\ $ (GND)))
-- \inst|Add0~25\ = CARRY((\inst|counter\(8)) # (!\inst|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(8),
	datad => VCC,
	cin => \inst|Add0~22\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: LCCOMB_X90_Y69_N24
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (!\SW17~input_o\ & \inst|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW17~input_o\,
	datac => \inst|Add0~24_combout\,
	combout => \inst|Add0~26_combout\);

-- Location: FF_X90_Y69_N25
\inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~26_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(8));

-- Location: LCCOMB_X89_Y69_N18
\inst|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~27_combout\ = (\inst|counter\(9) & (\inst|Add0~25\ & VCC)) # (!\inst|counter\(9) & (!\inst|Add0~25\))
-- \inst|Add0~28\ = CARRY((!\inst|counter\(9) & !\inst|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(9),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~27_combout\,
	cout => \inst|Add0~28\);

-- Location: LCCOMB_X90_Y69_N22
\inst|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~29_combout\ = (!\SW17~input_o\ & \inst|Add0~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|Add0~27_combout\,
	combout => \inst|Add0~29_combout\);

-- Location: FF_X90_Y69_N23
\inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~29_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(9));

-- Location: LCCOMB_X89_Y69_N20
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|counter\(10) & ((GND) # (!\inst|Add0~28\))) # (!\inst|counter\(10) & (\inst|Add0~28\ $ (GND)))
-- \inst|Add0~31\ = CARRY((\inst|counter\(10)) # (!\inst|Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(10),
	datad => VCC,
	cin => \inst|Add0~28\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: LCCOMB_X90_Y69_N4
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (!\SW17~input_o\ & \inst|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|Add0~30_combout\,
	combout => \inst|Add0~32_combout\);

-- Location: FF_X90_Y69_N5
\inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~32_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(10));

-- Location: LCCOMB_X89_Y69_N22
\inst|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~33_combout\ = (\inst|counter\(11) & (\inst|Add0~31\ & VCC)) # (!\inst|counter\(11) & (!\inst|Add0~31\))
-- \inst|Add0~34\ = CARRY((!\inst|counter\(11) & !\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(11),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~33_combout\,
	cout => \inst|Add0~34\);

-- Location: LCCOMB_X90_Y69_N2
\inst|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~35_combout\ = (\inst|Add0~33_combout\ & !\SW17~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~33_combout\,
	datac => \SW17~input_o\,
	combout => \inst|Add0~35_combout\);

-- Location: FF_X90_Y69_N3
\inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~35_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(11));

-- Location: LCCOMB_X89_Y69_N24
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|counter\(12) & ((GND) # (!\inst|Add0~34\))) # (!\inst|counter\(12) & (\inst|Add0~34\ $ (GND)))
-- \inst|Add0~37\ = CARRY((\inst|counter\(12)) # (!\inst|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(12),
	datad => VCC,
	cin => \inst|Add0~34\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: LCCOMB_X88_Y68_N0
\inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (!\SW17~input_o\ & \inst|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|Add0~36_combout\,
	combout => \inst|Add0~38_combout\);

-- Location: FF_X88_Y68_N1
\inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~38_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(12));

-- Location: LCCOMB_X89_Y69_N26
\inst|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~39_combout\ = (\inst|counter\(13) & (\inst|Add0~37\ & VCC)) # (!\inst|counter\(13) & (!\inst|Add0~37\))
-- \inst|Add0~40\ = CARRY((!\inst|counter\(13) & !\inst|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(13),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~39_combout\,
	cout => \inst|Add0~40\);

-- Location: LCCOMB_X88_Y68_N10
\inst|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~41_combout\ = (!\SW17~input_o\ & \inst|Add0~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW17~input_o\,
	datac => \inst|Add0~39_combout\,
	combout => \inst|Add0~41_combout\);

-- Location: FF_X88_Y68_N11
\inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~41_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(13));

-- Location: LCCOMB_X89_Y69_N28
\inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|counter\(14) & ((GND) # (!\inst|Add0~40\))) # (!\inst|counter\(14) & (\inst|Add0~40\ $ (GND)))
-- \inst|Add0~43\ = CARRY((\inst|counter\(14)) # (!\inst|Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(14),
	datad => VCC,
	cin => \inst|Add0~40\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: LCCOMB_X88_Y68_N24
\inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (!\SW17~input_o\ & \inst|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|Add0~42_combout\,
	combout => \inst|Add0~44_combout\);

-- Location: FF_X88_Y68_N25
\inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~44_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(14));

-- Location: LCCOMB_X89_Y69_N30
\inst|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~45_combout\ = (\inst|counter\(15) & (\inst|Add0~43\ & VCC)) # (!\inst|counter\(15) & (!\inst|Add0~43\))
-- \inst|Add0~46\ = CARRY((!\inst|counter\(15) & !\inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(15),
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~45_combout\,
	cout => \inst|Add0~46\);

-- Location: LCCOMB_X88_Y68_N26
\inst|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~47_combout\ = (!\SW17~input_o\ & \inst|Add0~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW17~input_o\,
	datac => \inst|Add0~45_combout\,
	combout => \inst|Add0~47_combout\);

-- Location: FF_X88_Y68_N27
\inst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~47_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(15));

-- Location: LCCOMB_X89_Y68_N0
\inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = (\inst|counter\(16) & ((GND) # (!\inst|Add0~46\))) # (!\inst|counter\(16) & (\inst|Add0~46\ $ (GND)))
-- \inst|Add0~49\ = CARRY((\inst|counter\(16)) # (!\inst|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(16),
	datad => VCC,
	cin => \inst|Add0~46\,
	combout => \inst|Add0~48_combout\,
	cout => \inst|Add0~49\);

-- Location: LCCOMB_X88_Y68_N14
\inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~50_combout\ = (!\SW17~input_o\ & \inst|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW17~input_o\,
	datac => \inst|Add0~48_combout\,
	combout => \inst|Add0~50_combout\);

-- Location: FF_X88_Y68_N15
\inst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~50_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(16));

-- Location: LCCOMB_X89_Y68_N2
\inst|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~51_combout\ = (\inst|counter\(17) & (\inst|Add0~49\ & VCC)) # (!\inst|counter\(17) & (!\inst|Add0~49\))
-- \inst|Add0~52\ = CARRY((!\inst|counter\(17) & !\inst|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(17),
	datad => VCC,
	cin => \inst|Add0~49\,
	combout => \inst|Add0~51_combout\,
	cout => \inst|Add0~52\);

-- Location: LCCOMB_X88_Y68_N28
\inst|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~53_combout\ = (!\SW17~input_o\ & \inst|Add0~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|Add0~51_combout\,
	combout => \inst|Add0~53_combout\);

-- Location: FF_X88_Y68_N29
\inst|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~53_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(17));

-- Location: LCCOMB_X89_Y68_N4
\inst|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~54_combout\ = (\inst|counter\(18) & ((GND) # (!\inst|Add0~52\))) # (!\inst|counter\(18) & (\inst|Add0~52\ $ (GND)))
-- \inst|Add0~55\ = CARRY((\inst|counter\(18)) # (!\inst|Add0~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(18),
	datad => VCC,
	cin => \inst|Add0~52\,
	combout => \inst|Add0~54_combout\,
	cout => \inst|Add0~55\);

-- Location: LCCOMB_X88_Y68_N30
\inst|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~56_combout\ = (!\SW17~input_o\ & \inst|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|Add0~54_combout\,
	combout => \inst|Add0~56_combout\);

-- Location: FF_X88_Y68_N31
\inst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~56_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(18));

-- Location: LCCOMB_X89_Y68_N6
\inst|Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~57_combout\ = (\inst|counter\(19) & (\inst|Add0~55\ & VCC)) # (!\inst|counter\(19) & (!\inst|Add0~55\))
-- \inst|Add0~58\ = CARRY((!\inst|counter\(19) & !\inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(19),
	datad => VCC,
	cin => \inst|Add0~55\,
	combout => \inst|Add0~57_combout\,
	cout => \inst|Add0~58\);

-- Location: LCCOMB_X88_Y68_N20
\inst|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~59_combout\ = (!\SW17~input_o\ & \inst|Add0~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|Add0~57_combout\,
	combout => \inst|Add0~59_combout\);

-- Location: FF_X88_Y68_N21
\inst|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~59_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(19));

-- Location: LCCOMB_X89_Y68_N8
\inst|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~60_combout\ = (\inst|counter\(20) & ((GND) # (!\inst|Add0~58\))) # (!\inst|counter\(20) & (\inst|Add0~58\ $ (GND)))
-- \inst|Add0~61\ = CARRY((\inst|counter\(20)) # (!\inst|Add0~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(20),
	datad => VCC,
	cin => \inst|Add0~58\,
	combout => \inst|Add0~60_combout\,
	cout => \inst|Add0~61\);

-- Location: LCCOMB_X88_Y68_N16
\inst|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~62_combout\ = (!\SW17~input_o\ & \inst|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW17~input_o\,
	datac => \inst|Add0~60_combout\,
	combout => \inst|Add0~62_combout\);

-- Location: FF_X88_Y68_N17
\inst|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~62_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(20));

-- Location: LCCOMB_X89_Y68_N10
\inst|Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~63_combout\ = (\inst|counter\(21) & (\inst|Add0~61\ & VCC)) # (!\inst|counter\(21) & (!\inst|Add0~61\))
-- \inst|Add0~64\ = CARRY((!\inst|counter\(21) & !\inst|Add0~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(21),
	datad => VCC,
	cin => \inst|Add0~61\,
	combout => \inst|Add0~63_combout\,
	cout => \inst|Add0~64\);

-- Location: LCCOMB_X88_Y68_N22
\inst|Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~65_combout\ = (!\SW17~input_o\ & \inst|Add0~63_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW17~input_o\,
	datac => \inst|Add0~63_combout\,
	combout => \inst|Add0~65_combout\);

-- Location: FF_X88_Y68_N23
\inst|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~65_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(21));

-- Location: LCCOMB_X89_Y68_N12
\inst|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~66_combout\ = (\inst|counter\(22) & ((GND) # (!\inst|Add0~64\))) # (!\inst|counter\(22) & (\inst|Add0~64\ $ (GND)))
-- \inst|Add0~67\ = CARRY((\inst|counter\(22)) # (!\inst|Add0~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(22),
	datad => VCC,
	cin => \inst|Add0~64\,
	combout => \inst|Add0~66_combout\,
	cout => \inst|Add0~67\);

-- Location: LCCOMB_X90_Y68_N30
\inst|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~68_combout\ = (!\SW17~input_o\ & \inst|Add0~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|Add0~66_combout\,
	combout => \inst|Add0~68_combout\);

-- Location: FF_X90_Y68_N31
\inst|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~68_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(22));

-- Location: LCCOMB_X89_Y68_N14
\inst|Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~69_combout\ = (\inst|counter\(23) & (\inst|Add0~67\ & VCC)) # (!\inst|counter\(23) & (!\inst|Add0~67\))
-- \inst|Add0~70\ = CARRY((!\inst|counter\(23) & !\inst|Add0~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(23),
	datad => VCC,
	cin => \inst|Add0~67\,
	combout => \inst|Add0~69_combout\,
	cout => \inst|Add0~70\);

-- Location: LCCOMB_X90_Y68_N4
\inst|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~71_combout\ = (!\SW17~input_o\ & \inst|Add0~69_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|Add0~69_combout\,
	combout => \inst|Add0~71_combout\);

-- Location: FF_X90_Y68_N5
\inst|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~71_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(23));

-- Location: LCCOMB_X89_Y68_N16
\inst|Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~72_combout\ = (\inst|counter\(24) & ((GND) # (!\inst|Add0~70\))) # (!\inst|counter\(24) & (\inst|Add0~70\ $ (GND)))
-- \inst|Add0~73\ = CARRY((\inst|counter\(24)) # (!\inst|Add0~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(24),
	datad => VCC,
	cin => \inst|Add0~70\,
	combout => \inst|Add0~72_combout\,
	cout => \inst|Add0~73\);

-- Location: LCCOMB_X90_Y68_N0
\inst|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~74_combout\ = (!\SW17~input_o\ & \inst|Add0~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW17~input_o\,
	datac => \inst|Add0~72_combout\,
	combout => \inst|Add0~74_combout\);

-- Location: FF_X90_Y68_N1
\inst|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~74_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(24));

-- Location: LCCOMB_X89_Y68_N18
\inst|Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~75_combout\ = (\inst|counter\(25) & (\inst|Add0~73\ & VCC)) # (!\inst|counter\(25) & (!\inst|Add0~73\))
-- \inst|Add0~76\ = CARRY((!\inst|counter\(25) & !\inst|Add0~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(25),
	datad => VCC,
	cin => \inst|Add0~73\,
	combout => \inst|Add0~75_combout\,
	cout => \inst|Add0~76\);

-- Location: LCCOMB_X90_Y68_N6
\inst|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~77_combout\ = (!\SW17~input_o\ & \inst|Add0~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|Add0~75_combout\,
	combout => \inst|Add0~77_combout\);

-- Location: FF_X90_Y68_N7
\inst|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~77_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(25));

-- Location: LCCOMB_X89_Y68_N20
\inst|Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~78_combout\ = (\inst|counter\(26) & ((GND) # (!\inst|Add0~76\))) # (!\inst|counter\(26) & (\inst|Add0~76\ $ (GND)))
-- \inst|Add0~79\ = CARRY((\inst|counter\(26)) # (!\inst|Add0~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(26),
	datad => VCC,
	cin => \inst|Add0~76\,
	combout => \inst|Add0~78_combout\,
	cout => \inst|Add0~79\);

-- Location: LCCOMB_X90_Y68_N8
\inst|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~80_combout\ = (!\SW17~input_o\ & \inst|Add0~78_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|Add0~78_combout\,
	combout => \inst|Add0~80_combout\);

-- Location: FF_X90_Y68_N9
\inst|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~80_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(26));

-- Location: LCCOMB_X89_Y68_N22
\inst|Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~81_combout\ = (\inst|counter\(27) & (\inst|Add0~79\ & VCC)) # (!\inst|counter\(27) & (!\inst|Add0~79\))
-- \inst|Add0~82\ = CARRY((!\inst|counter\(27) & !\inst|Add0~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(27),
	datad => VCC,
	cin => \inst|Add0~79\,
	combout => \inst|Add0~81_combout\,
	cout => \inst|Add0~82\);

-- Location: LCCOMB_X90_Y68_N2
\inst|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~83_combout\ = (!\SW17~input_o\ & \inst|Add0~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|Add0~81_combout\,
	combout => \inst|Add0~83_combout\);

-- Location: FF_X90_Y68_N3
\inst|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~83_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(27));

-- Location: LCCOMB_X89_Y68_N24
\inst|Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~84_combout\ = (\inst|counter\(28) & ((GND) # (!\inst|Add0~82\))) # (!\inst|counter\(28) & (\inst|Add0~82\ $ (GND)))
-- \inst|Add0~85\ = CARRY((\inst|counter\(28)) # (!\inst|Add0~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|counter\(28),
	datad => VCC,
	cin => \inst|Add0~82\,
	combout => \inst|Add0~84_combout\,
	cout => \inst|Add0~85\);

-- Location: LCCOMB_X90_Y68_N12
\inst|Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~93_combout\ = (!\SW17~input_o\ & \inst|Add0~84_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|Add0~84_combout\,
	combout => \inst|Add0~93_combout\);

-- Location: FF_X90_Y68_N13
\inst|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~93_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(28));

-- Location: LCCOMB_X89_Y68_N26
\inst|Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~86_combout\ = (\inst|counter\(29) & (\inst|Add0~85\ & VCC)) # (!\inst|counter\(29) & (!\inst|Add0~85\))
-- \inst|Add0~87\ = CARRY((!\inst|counter\(29) & !\inst|Add0~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(29),
	datad => VCC,
	cin => \inst|Add0~85\,
	combout => \inst|Add0~86_combout\,
	cout => \inst|Add0~87\);

-- Location: LCCOMB_X90_Y68_N26
\inst|Add0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~94_combout\ = (!\SW17~input_o\ & \inst|Add0~86_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW17~input_o\,
	datac => \inst|Add0~86_combout\,
	combout => \inst|Add0~94_combout\);

-- Location: FF_X90_Y68_N27
\inst|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~94_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(29));

-- Location: LCCOMB_X89_Y68_N28
\inst|Add0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~88_combout\ = (\inst|counter\(30) & ((GND) # (!\inst|Add0~87\))) # (!\inst|counter\(30) & (\inst|Add0~87\ $ (GND)))
-- \inst|Add0~89\ = CARRY((\inst|counter\(30)) # (!\inst|Add0~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(30),
	datad => VCC,
	cin => \inst|Add0~87\,
	combout => \inst|Add0~88_combout\,
	cout => \inst|Add0~89\);

-- Location: LCCOMB_X90_Y68_N20
\inst|Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~95_combout\ = (!\SW17~input_o\ & \inst|Add0~88_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|Add0~88_combout\,
	combout => \inst|Add0~95_combout\);

-- Location: FF_X90_Y68_N21
\inst|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~95_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(30));

-- Location: LCCOMB_X89_Y68_N30
\inst|Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~90_combout\ = \inst|Add0~89\ $ (\inst|counter\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|counter\(31),
	cin => \inst|Add0~89\,
	combout => \inst|Add0~90_combout\);

-- Location: LCCOMB_X90_Y68_N14
\inst|Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~92_combout\ = (\SW17~input_o\) # (!\inst|Add0~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|Add0~90_combout\,
	combout => \inst|Add0~92_combout\);

-- Location: FF_X90_Y68_N15
\inst|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Add0~92_combout\,
	ena => \inst|counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|counter\(31));

-- Location: LCCOMB_X90_Y68_N10
\inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~9_combout\ = (!\inst|counter\(29) & (!\inst|counter\(30) & (\inst|counter\(31) & !\inst|counter\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(29),
	datab => \inst|counter\(30),
	datac => \inst|counter\(31),
	datad => \inst|counter\(28),
	combout => \inst|Equal0~9_combout\);

-- Location: LCCOMB_X90_Y68_N28
\inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~8_combout\ = (!\inst|counter\(25) & (!\inst|counter\(24) & (!\inst|counter\(26) & !\inst|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(25),
	datab => \inst|counter\(24),
	datac => \inst|counter\(26),
	datad => \inst|counter\(27),
	combout => \inst|Equal0~8_combout\);

-- Location: LCCOMB_X88_Y68_N18
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (!\inst|counter\(18) & (!\inst|counter\(17) & (!\inst|counter\(16) & !\inst|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(18),
	datab => \inst|counter\(17),
	datac => \inst|counter\(16),
	datad => \inst|counter\(19),
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X88_Y68_N8
\inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (!\inst|counter\(21) & !\inst|counter\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|counter\(21),
	datad => \inst|counter\(20),
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X90_Y68_N22
\inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (!\inst|counter\(22) & (!\inst|counter\(23) & (\inst|Equal0~5_combout\ & \inst|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(22),
	datab => \inst|counter\(23),
	datac => \inst|Equal0~5_combout\,
	datad => \inst|Equal0~6_combout\,
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X90_Y69_N30
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|counter\(6) & (!\inst|counter\(7) & (!\inst|counter\(5) & !\inst|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(6),
	datab => \inst|counter\(7),
	datac => \inst|counter\(5),
	datad => \inst|counter\(4),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X88_Y68_N12
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst|counter\(13) & (!\inst|counter\(12) & (!\inst|counter\(15) & !\inst|counter\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(13),
	datab => \inst|counter\(12),
	datac => \inst|counter\(15),
	datad => \inst|counter\(14),
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X90_Y69_N28
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|counter\(9) & (!\inst|counter\(11) & (!\inst|counter\(10) & !\inst|counter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(9),
	datab => \inst|counter\(11),
	datac => \inst|counter\(10),
	datad => \inst|counter\(8),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X90_Y69_N26
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|counter\(0) & (!\inst|counter\(3) & (!\inst|counter\(2) & !\inst|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|counter\(0),
	datab => \inst|counter\(3),
	datac => \inst|counter\(2),
	datad => \inst|counter\(1),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X90_Y68_N16
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (\inst|Equal0~1_combout\ & (\inst|Equal0~3_combout\ & (\inst|Equal0~2_combout\ & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Equal0~3_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X90_Y68_N24
\inst|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~10_combout\ = (\inst|Equal0~9_combout\ & (\inst|Equal0~8_combout\ & (\inst|Equal0~7_combout\ & \inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~9_combout\,
	datab => \inst|Equal0~8_combout\,
	datac => \inst|Equal0~7_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|Equal0~10_combout\);

-- Location: LCCOMB_X91_Y68_N0
\inst|TimeExp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|TimeExp~0_combout\ = (!\SW16~input_o\ & \inst|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW16~input_o\,
	datad => \inst|Equal0~10_combout\,
	combout => \inst|TimeExp~0_combout\);

-- Location: FF_X91_Y68_N1
\inst|TimeExp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|TimeExp~0_combout\,
	sclr => \SW17~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|TimeExp~q\);

-- Location: IOIBUF_X109_Y0_N8
\SW3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW3,
	o => \SW3~input_o\);

-- Location: IOIBUF_X83_Y73_N8
\SW2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\SW1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\SW0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;



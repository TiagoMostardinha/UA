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

-- DATE "06/18/2021 17:48:57"

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

ENTITY 	Block3 IS
    PORT (
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW17 : IN std_logic;
	SW0 : IN std_logic;
	SW1 : IN std_logic;
	SW2 : IN std_logic;
	LEDR : OUT std_logic_vector(15 DOWNTO 0)
	);
END Block3;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW17	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW17 : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(15 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW17~input_o\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \inst|s_currentState.Init~feeder_combout\ : std_logic;
SIGNAL \inst|s_currentState.Init~q\ : std_logic;
SIGNAL \inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst|s_currentState.Boot~q\ : std_logic;
SIGNAL \inst|Selector9~0_combout\ : std_logic;
SIGNAL \inst|Selector9~1_combout\ : std_logic;
SIGNAL \inst|s_currentState.Option~q\ : std_logic;
SIGNAL \inst|Selector13~0_combout\ : std_logic;
SIGNAL \inst|Selector13~1_combout\ : std_logic;
SIGNAL \inst|s_currentState.St_Spes~q\ : std_logic;
SIGNAL \inst|Selector11~0_combout\ : std_logic;
SIGNAL \inst|s_currentState.St_Fan~q\ : std_logic;
SIGNAL \inst|Selector12~0_combout\ : std_logic;
SIGNAL \inst|Selector12~1_combout\ : std_logic;
SIGNAL \inst|s_currentState.St_Soli~q\ : std_logic;
SIGNAL \inst|Selector10~0_combout\ : std_logic;
SIGNAL \inst|Selector10~1_combout\ : std_logic;
SIGNAL \inst|s_currentState.Done~q\ : std_logic;
SIGNAL \inst|WideOr10~combout\ : std_logic;
SIGNAL \inst|bin_Msg[14]~0_combout\ : std_logic;
SIGNAL \inst|WideOr3~combout\ : std_logic;
SIGNAL \inst|WideOr4~combout\ : std_logic;
SIGNAL \inst|bin_Msg[10]~1_combout\ : std_logic;
SIGNAL \inst|WideOr5~combout\ : std_logic;
SIGNAL \inst|WideOr6~combout\ : std_logic;
SIGNAL \inst|WideOr7~combout\ : std_logic;
SIGNAL \inst|bin_Msg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst|ALT_INV_WideOr6~combout\ : std_logic;
SIGNAL \inst|ALT_INV_bin_Msg[10]~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \inst|ALT_INV_bin_Msg[14]~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_s_currentState.St_Fan~q\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr10~combout\ : std_logic;
SIGNAL \inst|ALT_INV_s_currentState.Option~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDG <= ww_LEDG;
ww_CLOCK_50 <= CLOCK_50;
ww_SW17 <= SW17;
ww_SW0 <= SW0;
ww_SW1 <= SW1;
ww_SW2 <= SW2;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\inst|ALT_INV_WideOr6~combout\ <= NOT \inst|WideOr6~combout\;
\inst|ALT_INV_bin_Msg[10]~1_combout\ <= NOT \inst|bin_Msg[10]~1_combout\;
\inst|ALT_INV_WideOr4~combout\ <= NOT \inst|WideOr4~combout\;
\inst|ALT_INV_bin_Msg[14]~0_combout\ <= NOT \inst|bin_Msg[14]~0_combout\;
\inst|ALT_INV_s_currentState.St_Fan~q\ <= NOT \inst|s_currentState.St_Fan~q\;
\inst|ALT_INV_WideOr10~combout\ <= NOT \inst|WideOr10~combout\;
\inst|ALT_INV_s_currentState.Option~q\ <= NOT \inst|s_currentState.Option~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_currentState.Done~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr10~combout\,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_bin_Msg[14]~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr3~combout\,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr4~combout\,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr4~combout\,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_bin_Msg[10]~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr5~combout\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|bin_Msg\(8),
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_currentState.St_Soli~q\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_bin_Msg[14]~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr6~combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_s_currentState.St_Fan~q\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_currentState.St_Spes~q\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_bin_Msg[10]~1_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_s_currentState.Option~q\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr7~combout\,
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

-- Location: IOIBUF_X81_Y73_N1
\SW17~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW17,
	o => \SW17~input_o\);

-- Location: IOIBUF_X81_Y73_N15
\SW1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: IOIBUF_X81_Y73_N22
\SW2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\SW0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: LCCOMB_X80_Y70_N26
\inst|s_currentState.Init~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState.Init~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|s_currentState.Init~feeder_combout\);

-- Location: FF_X80_Y70_N27
\inst|s_currentState.Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_currentState.Init~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.Init~q\);

-- Location: LCCOMB_X80_Y70_N4
\inst|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector8~0_combout\ = ((!\SW17~input_o\ & \inst|s_currentState.Boot~q\)) # (!\inst|s_currentState.Init~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datac => \inst|s_currentState.Boot~q\,
	datad => \inst|s_currentState.Init~q\,
	combout => \inst|Selector8~0_combout\);

-- Location: FF_X80_Y70_N5
\inst|s_currentState.Boot\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.Boot~q\);

-- Location: LCCOMB_X80_Y70_N18
\inst|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector9~0_combout\ = (\SW17~input_o\ & ((\inst|s_currentState.Boot~q\) # ((\SW1~input_o\ & \inst|s_currentState.Done~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \SW1~input_o\,
	datac => \inst|s_currentState.Boot~q\,
	datad => \inst|s_currentState.Done~q\,
	combout => \inst|Selector9~0_combout\);

-- Location: LCCOMB_X80_Y70_N10
\inst|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector9~1_combout\ = (\inst|Selector9~0_combout\) # ((\inst|Selector13~0_combout\ & !\SW2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector13~0_combout\,
	datac => \SW2~input_o\,
	datad => \inst|Selector9~0_combout\,
	combout => \inst|Selector9~1_combout\);

-- Location: FF_X80_Y70_N11
\inst|s_currentState.Option\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.Option~q\);

-- Location: LCCOMB_X80_Y70_N20
\inst|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector13~0_combout\ = (!\SW1~input_o\ & (!\SW0~input_o\ & \inst|s_currentState.Option~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~input_o\,
	datac => \SW0~input_o\,
	datad => \inst|s_currentState.Option~q\,
	combout => \inst|Selector13~0_combout\);

-- Location: LCCOMB_X80_Y70_N22
\inst|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector13~1_combout\ = (\SW17~input_o\ & (\SW2~input_o\ & ((\inst|Selector13~0_combout\)))) # (!\SW17~input_o\ & ((\inst|s_currentState.St_Spes~q\) # ((\SW2~input_o\ & \inst|Selector13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \SW2~input_o\,
	datac => \inst|s_currentState.St_Spes~q\,
	datad => \inst|Selector13~0_combout\,
	combout => \inst|Selector13~1_combout\);

-- Location: FF_X80_Y70_N23
\inst|s_currentState.St_Spes\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Selector13~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.St_Spes~q\);

-- Location: LCCOMB_X80_Y70_N30
\inst|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector11~0_combout\ = (\SW17~input_o\ & (\SW0~input_o\ & ((\inst|s_currentState.Option~q\)))) # (!\SW17~input_o\ & ((\inst|s_currentState.St_Fan~q\) # ((\SW0~input_o\ & \inst|s_currentState.Option~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \SW0~input_o\,
	datac => \inst|s_currentState.St_Fan~q\,
	datad => \inst|s_currentState.Option~q\,
	combout => \inst|Selector11~0_combout\);

-- Location: FF_X80_Y70_N31
\inst|s_currentState.St_Fan\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.St_Fan~q\);

-- Location: LCCOMB_X80_Y70_N6
\inst|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector12~0_combout\ = (!\SW17~input_o\ & \inst|s_currentState.St_Soli~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW17~input_o\,
	datad => \inst|s_currentState.St_Soli~q\,
	combout => \inst|Selector12~0_combout\);

-- Location: LCCOMB_X80_Y70_N28
\inst|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector12~1_combout\ = (\inst|Selector12~0_combout\) # ((!\SW0~input_o\ & (\SW1~input_o\ & \inst|s_currentState.Option~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \SW1~input_o\,
	datac => \inst|s_currentState.Option~q\,
	datad => \inst|Selector12~0_combout\,
	combout => \inst|Selector12~1_combout\);

-- Location: FF_X80_Y70_N29
\inst|s_currentState.St_Soli\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Selector12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.St_Soli~q\);

-- Location: LCCOMB_X80_Y70_N16
\inst|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector10~0_combout\ = (\SW17~input_o\ & ((\inst|s_currentState.St_Spes~q\) # ((\inst|s_currentState.St_Fan~q\) # (\inst|s_currentState.St_Soli~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_currentState.St_Spes~q\,
	datab => \SW17~input_o\,
	datac => \inst|s_currentState.St_Fan~q\,
	datad => \inst|s_currentState.St_Soli~q\,
	combout => \inst|Selector10~0_combout\);

-- Location: LCCOMB_X80_Y70_N24
\inst|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector10~1_combout\ = (\inst|Selector10~0_combout\) # ((\inst|s_currentState.Done~q\ & ((!\SW1~input_o\) # (!\SW17~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW17~input_o\,
	datab => \SW1~input_o\,
	datac => \inst|s_currentState.Done~q\,
	datad => \inst|Selector10~0_combout\,
	combout => \inst|Selector10~1_combout\);

-- Location: FF_X80_Y70_N25
\inst|s_currentState.Done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|Selector10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.Done~q\);

-- Location: LCCOMB_X80_Y70_N12
\inst|WideOr10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr10~combout\ = (\inst|s_currentState.Boot~q\) # ((\inst|s_currentState.Option~q\) # (!\inst|s_currentState.Init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_currentState.Boot~q\,
	datac => \inst|s_currentState.Init~q\,
	datad => \inst|s_currentState.Option~q\,
	combout => \inst|WideOr10~combout\);

-- Location: LCCOMB_X80_Y72_N4
\inst|bin_Msg[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bin_Msg[14]~0_combout\ = (!\inst|s_currentState.St_Fan~q\ & !\inst|s_currentState.Done~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_currentState.St_Fan~q\,
	datad => \inst|s_currentState.Done~q\,
	combout => \inst|bin_Msg[14]~0_combout\);

-- Location: LCCOMB_X80_Y70_N8
\inst|WideOr3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr3~combout\ = (\inst|s_currentState.Option~q\) # ((\inst|s_currentState.St_Soli~q\) # (\inst|s_currentState.St_Spes~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_currentState.Option~q\,
	datac => \inst|s_currentState.St_Soli~q\,
	datad => \inst|s_currentState.St_Spes~q\,
	combout => \inst|WideOr3~combout\);

-- Location: LCCOMB_X80_Y70_N14
\inst|WideOr4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr4~combout\ = (\inst|s_currentState.Done~q\) # ((\inst|s_currentState.St_Soli~q\) # (\inst|s_currentState.St_Spes~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_currentState.Done~q\,
	datac => \inst|s_currentState.St_Soli~q\,
	datad => \inst|s_currentState.St_Spes~q\,
	combout => \inst|WideOr4~combout\);

-- Location: LCCOMB_X80_Y72_N30
\inst|bin_Msg[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bin_Msg[10]~1_combout\ = (!\inst|s_currentState.Option~q\ & !\inst|s_currentState.St_Fan~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_currentState.Option~q\,
	datac => \inst|s_currentState.St_Fan~q\,
	combout => \inst|bin_Msg[10]~1_combout\);

-- Location: LCCOMB_X80_Y70_N0
\inst|WideOr5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr5~combout\ = (\inst|s_currentState.St_Spes~q\) # ((\inst|s_currentState.Boot~q\) # (!\inst|s_currentState.Init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_currentState.St_Spes~q\,
	datac => \inst|s_currentState.Boot~q\,
	datad => \inst|s_currentState.Init~q\,
	combout => \inst|WideOr5~combout\);

-- Location: LCCOMB_X80_Y72_N12
\inst|bin_Msg[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|bin_Msg\(8) = (\inst|s_currentState.St_Fan~q\) # (\inst|s_currentState.St_Spes~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_currentState.St_Fan~q\,
	datac => \inst|s_currentState.St_Spes~q\,
	combout => \inst|bin_Msg\(8));

-- Location: LCCOMB_X80_Y70_N2
\inst|WideOr6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr6~combout\ = (\inst|s_currentState.Boot~q\) # ((\inst|s_currentState.St_Soli~q\) # (!\inst|s_currentState.Init~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_currentState.Boot~q\,
	datac => \inst|s_currentState.St_Soli~q\,
	datad => \inst|s_currentState.Init~q\,
	combout => \inst|WideOr6~combout\);

-- Location: LCCOMB_X80_Y72_N18
\inst|WideOr7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr7~combout\ = (\inst|s_currentState.Option~q\) # ((\inst|s_currentState.St_Fan~q\) # (\inst|s_currentState.Done~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_currentState.Option~q\,
	datab => \inst|s_currentState.St_Fan~q\,
	datad => \inst|s_currentState.Done~q\,
	combout => \inst|WideOr7~combout\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;



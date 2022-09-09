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

-- DATE "06/18/2021 16:56:41"

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

ENTITY 	FSM_Block IS
    PORT (
	LEDG7 : OUT std_logic;
	CLOCK_50 : IN std_logic;
	SW17 : IN std_logic;
	SW0 : IN std_logic;
	SW1 : IN std_logic;
	SW2 : IN std_logic;
	LEDG2 : OUT std_logic;
	LEDG1 : OUT std_logic;
	LEDG0 : OUT std_logic;
	LEDR0 : OUT std_logic;
	LEDR6 : OUT std_logic;
	LEDR5 : OUT std_logic;
	LEDR4 : OUT std_logic;
	LEDR3 : OUT std_logic
	);
END FSM_Block;

-- Design Ports Information
-- LEDG7	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG2	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG1	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG0	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR0	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR6	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR5	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR4	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR3	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW17	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FSM_Block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG7 : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW17 : std_logic;
SIGNAL ww_SW0 : std_logic;
SIGNAL ww_SW1 : std_logic;
SIGNAL ww_SW2 : std_logic;
SIGNAL ww_LEDG2 : std_logic;
SIGNAL ww_LEDG1 : std_logic;
SIGNAL ww_LEDG0 : std_logic;
SIGNAL ww_LEDR0 : std_logic;
SIGNAL ww_LEDR6 : std_logic;
SIGNAL ww_LEDR5 : std_logic;
SIGNAL ww_LEDR4 : std_logic;
SIGNAL ww_LEDR3 : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|Selector0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|WideOr4~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG7~output_o\ : std_logic;
SIGNAL \LEDG2~output_o\ : std_logic;
SIGNAL \LEDG1~output_o\ : std_logic;
SIGNAL \LEDG0~output_o\ : std_logic;
SIGNAL \LEDR0~output_o\ : std_logic;
SIGNAL \LEDR6~output_o\ : std_logic;
SIGNAL \LEDR5~output_o\ : std_logic;
SIGNAL \LEDR4~output_o\ : std_logic;
SIGNAL \LEDR3~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst|PS.e0~feeder_combout\ : std_logic;
SIGNAL \inst|PS.e0~q\ : std_logic;
SIGNAL \inst|Selector8~1_combout\ : std_logic;
SIGNAL \inst|NS.e1_230~combout\ : std_logic;
SIGNAL \inst|PS.e1~q\ : std_logic;
SIGNAL \inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|NS.e2_219~combout\ : std_logic;
SIGNAL \inst|PS.e2~q\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|NS.e3_208~combout\ : std_logic;
SIGNAL \inst|PS.e3~q\ : std_logic;
SIGNAL \inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst|NS.e4_197~combout\ : std_logic;
SIGNAL \inst|PS.e4~q\ : std_logic;
SIGNAL \inst|WideOr6~combout\ : std_logic;
SIGNAL \inst|NS.e5_186~combout\ : std_logic;
SIGNAL \inst|PS.e5~q\ : std_logic;
SIGNAL \SW17~input_o\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|Selector0~0clkctrl_outclk\ : std_logic;
SIGNAL \inst|NS.e6_175~combout\ : std_logic;
SIGNAL \inst|PS.e6~q\ : std_logic;
SIGNAL \inst|WideOr7~combout\ : std_logic;
SIGNAL \inst|WideOr8~combout\ : std_logic;
SIGNAL \inst|WideOr9~combout\ : std_logic;
SIGNAL \inst|WideOr4~0_combout\ : std_logic;
SIGNAL \inst|WideOr4~0clkctrl_outclk\ : std_logic;
SIGNAL \inst|Sel_Word~3_combout\ : std_logic;
SIGNAL \inst|Sel_Word~4_combout\ : std_logic;
SIGNAL \inst|Sel_Word\ : std_logic_vector(3 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDG7 <= ww_LEDG7;
ww_CLOCK_50 <= CLOCK_50;
ww_SW17 <= SW17;
ww_SW0 <= SW0;
ww_SW1 <= SW1;
ww_SW2 <= SW2;
LEDG2 <= ww_LEDG2;
LEDG1 <= ww_LEDG1;
LEDG0 <= ww_LEDG0;
LEDR0 <= ww_LEDR0;
LEDR6 <= ww_LEDR6;
LEDR5 <= ww_LEDR5;
LEDR4 <= ww_LEDR4;
LEDR3 <= ww_LEDR3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst|Selector0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|Selector0~0_combout\);

\inst|WideOr4~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|WideOr4~0_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y33_N23
\LEDG7~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PS.e6~q\,
	devoe => ww_devoe,
	o => \LEDG7~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\LEDG2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr7~combout\,
	devoe => ww_devoe,
	o => \LEDG2~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\LEDG1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr8~combout\,
	devoe => ww_devoe,
	o => \LEDG1~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\LEDG0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|WideOr9~combout\,
	devoe => ww_devoe,
	o => \LEDG0~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\LEDR0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PS.e5~q\,
	devoe => ww_devoe,
	o => \LEDR0~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\LEDR6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR6~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\LEDR5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sel_Word\(2),
	devoe => ww_devoe,
	o => \LEDR5~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\LEDR4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sel_Word\(1),
	devoe => ww_devoe,
	o => \LEDR4~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\LEDR3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sel_Word\(0),
	devoe => ww_devoe,
	o => \LEDR3~output_o\);

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

-- Location: IOIBUF_X0_Y34_N15
\SW1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: IOIBUF_X0_Y34_N8
\SW0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\SW2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

-- Location: LCCOMB_X2_Y33_N28
\inst|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector8~0_combout\ = (!\SW1~input_o\ & (!\SW0~input_o\ & !\SW2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW0~input_o\,
	datad => \SW2~input_o\,
	combout => \inst|Selector8~0_combout\);

-- Location: LCCOMB_X1_Y33_N8
\inst|PS.e0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|PS.e0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|PS.e0~feeder_combout\);

-- Location: FF_X1_Y33_N9
\inst|PS.e0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst|PS.e0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PS.e0~q\);

-- Location: LCCOMB_X2_Y33_N30
\inst|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector8~1_combout\ = (\inst|PS.e6~q\) # (((\inst|PS.e1~q\ & \inst|Selector8~0_combout\)) # (!\inst|PS.e0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PS.e1~q\,
	datab => \inst|Selector8~0_combout\,
	datac => \inst|PS.e6~q\,
	datad => \inst|PS.e0~q\,
	combout => \inst|Selector8~1_combout\);

-- Location: LCCOMB_X2_Y33_N14
\inst|NS.e1_230\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|NS.e1_230~combout\ = (GLOBAL(\inst|Selector0~0clkctrl_outclk\) & ((\inst|Selector8~1_combout\))) # (!GLOBAL(\inst|Selector0~0clkctrl_outclk\) & (\inst|NS.e1_230~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector0~0clkctrl_outclk\,
	datac => \inst|NS.e1_230~combout\,
	datad => \inst|Selector8~1_combout\,
	combout => \inst|NS.e1_230~combout\);

-- Location: FF_X2_Y33_N1
\inst|PS.e1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|NS.e1_230~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PS.e1~q\);

-- Location: LCCOMB_X2_Y33_N18
\inst|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector7~0_combout\ = (\inst|PS.e1~q\ & \SW0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PS.e1~q\,
	datad => \SW0~input_o\,
	combout => \inst|Selector7~0_combout\);

-- Location: LCCOMB_X2_Y33_N20
\inst|NS.e2_219\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|NS.e2_219~combout\ = (GLOBAL(\inst|Selector0~0clkctrl_outclk\) & ((\inst|Selector7~0_combout\))) # (!GLOBAL(\inst|Selector0~0clkctrl_outclk\) & (\inst|NS.e2_219~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|NS.e2_219~combout\,
	datac => \inst|Selector7~0_combout\,
	datad => \inst|Selector0~0clkctrl_outclk\,
	combout => \inst|NS.e2_219~combout\);

-- Location: FF_X2_Y33_N21
\inst|PS.e2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|NS.e2_219~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PS.e2~q\);

-- Location: LCCOMB_X2_Y33_N10
\inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\SW1~input_o\ & (\inst|PS.e1~q\ & !\SW0~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datac => \inst|PS.e1~q\,
	datad => \SW0~input_o\,
	combout => \inst|Selector6~0_combout\);

-- Location: LCCOMB_X2_Y33_N22
\inst|NS.e3_208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|NS.e3_208~combout\ = (GLOBAL(\inst|Selector0~0clkctrl_outclk\) & ((\inst|Selector6~0_combout\))) # (!GLOBAL(\inst|Selector0~0clkctrl_outclk\) & (\inst|NS.e3_208~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|NS.e3_208~combout\,
	datac => \inst|Selector6~0_combout\,
	datad => \inst|Selector0~0clkctrl_outclk\,
	combout => \inst|NS.e3_208~combout\);

-- Location: FF_X2_Y33_N29
\inst|PS.e3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst|NS.e3_208~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PS.e3~q\);

-- Location: LCCOMB_X2_Y33_N2
\inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (!\SW1~input_o\ & (!\SW0~input_o\ & (\inst|PS.e1~q\ & \SW2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1~input_o\,
	datab => \SW0~input_o\,
	datac => \inst|PS.e1~q\,
	datad => \SW2~input_o\,
	combout => \inst|Selector5~0_combout\);

-- Location: LCCOMB_X2_Y33_N8
\inst|NS.e4_197\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|NS.e4_197~combout\ = (GLOBAL(\inst|Selector0~0clkctrl_outclk\) & (\inst|Selector5~0_combout\)) # (!GLOBAL(\inst|Selector0~0clkctrl_outclk\) & ((\inst|NS.e4_197~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector5~0_combout\,
	datac => \inst|NS.e4_197~combout\,
	datad => \inst|Selector0~0clkctrl_outclk\,
	combout => \inst|NS.e4_197~combout\);

-- Location: FF_X2_Y33_N9
\inst|PS.e4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|NS.e4_197~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PS.e4~q\);

-- Location: LCCOMB_X2_Y33_N24
\inst|WideOr6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr6~combout\ = (\inst|PS.e2~q\) # ((\inst|PS.e3~q\) # (\inst|PS.e4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PS.e2~q\,
	datab => \inst|PS.e3~q\,
	datac => \inst|PS.e4~q\,
	combout => \inst|WideOr6~combout\);

-- Location: LCCOMB_X2_Y33_N26
\inst|NS.e5_186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|NS.e5_186~combout\ = (GLOBAL(\inst|Selector0~0clkctrl_outclk\) & (\inst|WideOr6~combout\)) # (!GLOBAL(\inst|Selector0~0clkctrl_outclk\) & ((\inst|NS.e5_186~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector0~0clkctrl_outclk\,
	datac => \inst|WideOr6~combout\,
	datad => \inst|NS.e5_186~combout\,
	combout => \inst|NS.e5_186~combout\);

-- Location: FF_X2_Y33_N27
\inst|PS.e5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|NS.e5_186~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PS.e5~q\);

-- Location: IOIBUF_X0_Y33_N15
\SW17~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW17,
	o => \SW17~input_o\);

-- Location: LCCOMB_X1_Y33_N22
\inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\SW17~input_o\) # ((!\inst|PS.e6~q\ & (!\inst|PS.e5~q\ & \inst|PS.e0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PS.e6~q\,
	datab => \inst|PS.e5~q\,
	datac => \inst|PS.e0~q\,
	datad => \SW17~input_o\,
	combout => \inst|Selector0~0_combout\);

-- Location: CLKCTRL_G0
\inst|Selector0~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|Selector0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|Selector0~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y33_N30
\inst|NS.e6_175\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|NS.e6_175~combout\ = (GLOBAL(\inst|Selector0~0clkctrl_outclk\) & ((\inst|PS.e5~q\))) # (!GLOBAL(\inst|Selector0~0clkctrl_outclk\) & (\inst|NS.e6_175~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|NS.e6_175~combout\,
	datac => \inst|Selector0~0clkctrl_outclk\,
	datad => \inst|PS.e5~q\,
	combout => \inst|NS.e6_175~combout\);

-- Location: FF_X1_Y33_N27
\inst|PS.e6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \inst|NS.e6_175~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PS.e6~q\);

-- Location: LCCOMB_X1_Y33_N28
\inst|WideOr7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr7~combout\ = (\inst|PS.e4~q\) # ((\inst|PS.e6~q\) # (\inst|PS.e5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PS.e4~q\,
	datac => \inst|PS.e6~q\,
	datad => \inst|PS.e5~q\,
	combout => \inst|WideOr7~combout\);

-- Location: LCCOMB_X1_Y33_N6
\inst|WideOr8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr8~combout\ = (\inst|PS.e3~q\) # ((\inst|PS.e2~q\) # (\inst|PS.e6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PS.e3~q\,
	datac => \inst|PS.e2~q\,
	datad => \inst|PS.e6~q\,
	combout => \inst|WideOr8~combout\);

-- Location: LCCOMB_X1_Y33_N26
\inst|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr9~combout\ = (\inst|PS.e3~q\) # ((\inst|PS.e1~q\) # (\inst|PS.e5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PS.e3~q\,
	datab => \inst|PS.e1~q\,
	datad => \inst|PS.e5~q\,
	combout => \inst|WideOr9~combout\);

-- Location: LCCOMB_X1_Y33_N14
\inst|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr4~0_combout\ = (!\inst|PS.e6~q\ & !\inst|PS.e5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PS.e6~q\,
	datad => \inst|PS.e5~q\,
	combout => \inst|WideOr4~0_combout\);

-- Location: CLKCTRL_G1
\inst|WideOr4~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|WideOr4~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|WideOr4~0clkctrl_outclk\);

-- Location: LCCOMB_X2_Y33_N6
\inst|Sel_Word[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Sel_Word\(2) = (GLOBAL(\inst|WideOr4~0clkctrl_outclk\) & ((\inst|PS.e4~q\))) # (!GLOBAL(\inst|WideOr4~0clkctrl_outclk\) & (\inst|Sel_Word\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Sel_Word\(2),
	datac => \inst|PS.e4~q\,
	datad => \inst|WideOr4~0clkctrl_outclk\,
	combout => \inst|Sel_Word\(2));

-- Location: LCCOMB_X2_Y33_N4
\inst|Sel_Word~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Sel_Word~3_combout\ = (!\inst|PS.e3~q\ & !\inst|PS.e2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PS.e3~q\,
	datad => \inst|PS.e2~q\,
	combout => \inst|Sel_Word~3_combout\);

-- Location: LCCOMB_X2_Y33_N12
\inst|Sel_Word[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Sel_Word\(1) = (GLOBAL(\inst|WideOr4~0clkctrl_outclk\) & ((!\inst|Sel_Word~3_combout\))) # (!GLOBAL(\inst|WideOr4~0clkctrl_outclk\) & (\inst|Sel_Word\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Sel_Word\(1),
	datac => \inst|Sel_Word~3_combout\,
	datad => \inst|WideOr4~0clkctrl_outclk\,
	combout => \inst|Sel_Word\(1));

-- Location: LCCOMB_X2_Y33_N16
\inst|Sel_Word~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Sel_Word~4_combout\ = (!\inst|PS.e1~q\ & !\inst|PS.e3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PS.e1~q\,
	datad => \inst|PS.e3~q\,
	combout => \inst|Sel_Word~4_combout\);

-- Location: LCCOMB_X2_Y33_N0
\inst|Sel_Word[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Sel_Word\(0) = (GLOBAL(\inst|WideOr4~0clkctrl_outclk\) & ((!\inst|Sel_Word~4_combout\))) # (!GLOBAL(\inst|WideOr4~0clkctrl_outclk\) & (\inst|Sel_Word\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr4~0clkctrl_outclk\,
	datab => \inst|Sel_Word\(0),
	datad => \inst|Sel_Word~4_combout\,
	combout => \inst|Sel_Word\(0));

ww_LEDG7 <= \LEDG7~output_o\;

ww_LEDG2 <= \LEDG2~output_o\;

ww_LEDG1 <= \LEDG1~output_o\;

ww_LEDG0 <= \LEDG0~output_o\;

ww_LEDR0 <= \LEDR0~output_o\;

ww_LEDR6 <= \LEDR6~output_o\;

ww_LEDR5 <= \LEDR5~output_o\;

ww_LEDR4 <= \LEDR4~output_o\;

ww_LEDR3 <= \LEDR3~output_o\;
END structure;



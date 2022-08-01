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

-- DATE "06/18/2021 16:52:12"

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

ENTITY 	FSM_Block IS
    PORT (
	LEDG7 : OUT std_logic;
	SW16 : IN std_logic;
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
-- LEDG7	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG2	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG1	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG0	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR0	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR6	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR5	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR4	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR3	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW16	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW17	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW0	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_SW16 : std_logic;
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
SIGNAL \inst|Selector0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|WideOr4~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW16~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG7~output_o\ : std_logic;
SIGNAL \LEDG2~output_o\ : std_logic;
SIGNAL \LEDG1~output_o\ : std_logic;
SIGNAL \LEDG0~output_o\ : std_logic;
SIGNAL \LEDR0~output_o\ : std_logic;
SIGNAL \LEDR6~output_o\ : std_logic;
SIGNAL \LEDR5~output_o\ : std_logic;
SIGNAL \LEDR4~output_o\ : std_logic;
SIGNAL \LEDR3~output_o\ : std_logic;
SIGNAL \SW16~input_o\ : std_logic;
SIGNAL \SW16~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW0~input_o\ : std_logic;
SIGNAL \SW1~input_o\ : std_logic;
SIGNAL \inst|PS.e0~feeder_combout\ : std_logic;
SIGNAL \inst|PS.e0~q\ : std_logic;
SIGNAL \SW2~input_o\ : std_logic;
SIGNAL \inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst|Selector8~1_combout\ : std_logic;
SIGNAL \inst|NS.e1_230~combout\ : std_logic;
SIGNAL \inst|PS.e1~q\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|NS.e3_208~combout\ : std_logic;
SIGNAL \inst|PS.e3~q\ : std_logic;
SIGNAL \inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst|NS.e2_219~combout\ : std_logic;
SIGNAL \inst|PS.e2~q\ : std_logic;
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
ww_SW16 <= SW16;
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

\inst|Selector0~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|Selector0~0_combout\);

\inst|WideOr4~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|WideOr4~0_combout\);

\SW16~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SW16~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y5_N16
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

-- Location: IOOBUF_X0_Y18_N16
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

-- Location: IOOBUF_X0_Y7_N2
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

-- Location: IOOBUF_X0_Y18_N23
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

-- Location: IOOBUF_X0_Y6_N16
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

-- Location: IOOBUF_X16_Y24_N9
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

-- Location: IOOBUF_X0_Y23_N2
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

-- Location: IOOBUF_X0_Y8_N16
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

-- Location: IOOBUF_X1_Y0_N16
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

-- Location: IOIBUF_X0_Y11_N8
\SW16~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW16,
	o => \SW16~input_o\);

-- Location: CLKCTRL_G2
\SW16~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SW16~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SW16~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y21_N8
\SW0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW0,
	o => \SW0~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\SW1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1,
	o => \SW1~input_o\);

-- Location: LCCOMB_X2_Y11_N8
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

-- Location: FF_X2_Y11_N9
\inst|PS.e0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW16~input_o\,
	d => \inst|PS.e0~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PS.e0~q\);

-- Location: IOIBUF_X1_Y0_N22
\SW2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2,
	o => \SW2~input_o\);

-- Location: LCCOMB_X1_Y11_N28
\inst|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector8~0_combout\ = (!\SW1~input_o\ & (!\SW0~input_o\ & !\SW2~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW1~input_o\,
	datac => \SW0~input_o\,
	datad => \SW2~input_o\,
	combout => \inst|Selector8~0_combout\);

-- Location: LCCOMB_X2_Y11_N4
\inst|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector8~1_combout\ = ((\inst|PS.e6~q\) # ((\inst|PS.e1~q\ & \inst|Selector8~0_combout\))) # (!\inst|PS.e0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PS.e1~q\,
	datab => \inst|PS.e0~q\,
	datac => \inst|PS.e6~q\,
	datad => \inst|Selector8~0_combout\,
	combout => \inst|Selector8~1_combout\);

-- Location: LCCOMB_X2_Y11_N14
\inst|NS.e1_230\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|NS.e1_230~combout\ = (GLOBAL(\inst|Selector0~0clkctrl_outclk\) & ((\inst|Selector8~1_combout\))) # (!GLOBAL(\inst|Selector0~0clkctrl_outclk\) & (\inst|NS.e1_230~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|NS.e1_230~combout\,
	datac => \inst|Selector8~1_combout\,
	datad => \inst|Selector0~0clkctrl_outclk\,
	combout => \inst|NS.e1_230~combout\);

-- Location: FF_X2_Y11_N13
\inst|PS.e1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW16~inputclkctrl_outclk\,
	asdata => \inst|NS.e1_230~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PS.e1~q\);

-- Location: LCCOMB_X2_Y11_N30
\inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (!\SW0~input_o\ & (\SW1~input_o\ & \inst|PS.e1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW0~input_o\,
	datac => \SW1~input_o\,
	datad => \inst|PS.e1~q\,
	combout => \inst|Selector6~0_combout\);

-- Location: LCCOMB_X2_Y11_N18
\inst|NS.e3_208\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|NS.e3_208~combout\ = (GLOBAL(\inst|Selector0~0clkctrl_outclk\) & ((\inst|Selector6~0_combout\))) # (!GLOBAL(\inst|Selector0~0clkctrl_outclk\) & (\inst|NS.e3_208~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|NS.e3_208~combout\,
	datac => \inst|Selector6~0_combout\,
	datad => \inst|Selector0~0clkctrl_outclk\,
	combout => \inst|NS.e3_208~combout\);

-- Location: FF_X2_Y11_N19
\inst|PS.e3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW16~inputclkctrl_outclk\,
	d => \inst|NS.e3_208~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PS.e3~q\);

-- Location: LCCOMB_X2_Y11_N2
\inst|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector7~0_combout\ = (\SW0~input_o\ & \inst|PS.e1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW0~input_o\,
	datad => \inst|PS.e1~q\,
	combout => \inst|Selector7~0_combout\);

-- Location: LCCOMB_X2_Y11_N0
\inst|NS.e2_219\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|NS.e2_219~combout\ = (GLOBAL(\inst|Selector0~0clkctrl_outclk\) & ((\inst|Selector7~0_combout\))) # (!GLOBAL(\inst|Selector0~0clkctrl_outclk\) & (\inst|NS.e2_219~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|NS.e2_219~combout\,
	datac => \inst|Selector0~0clkctrl_outclk\,
	datad => \inst|Selector7~0_combout\,
	combout => \inst|NS.e2_219~combout\);

-- Location: FF_X2_Y11_N1
\inst|PS.e2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW16~inputclkctrl_outclk\,
	d => \inst|NS.e2_219~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PS.e2~q\);

-- Location: LCCOMB_X2_Y11_N12
\inst|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector5~0_combout\ = (!\SW0~input_o\ & (!\SW1~input_o\ & (\inst|PS.e1~q\ & \SW2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW0~input_o\,
	datab => \SW1~input_o\,
	datac => \inst|PS.e1~q\,
	datad => \SW2~input_o\,
	combout => \inst|Selector5~0_combout\);

-- Location: LCCOMB_X2_Y11_N24
\inst|NS.e4_197\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|NS.e4_197~combout\ = (GLOBAL(\inst|Selector0~0clkctrl_outclk\) & (\inst|Selector5~0_combout\)) # (!GLOBAL(\inst|Selector0~0clkctrl_outclk\) & ((\inst|NS.e4_197~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector5~0_combout\,
	datac => \inst|Selector0~0clkctrl_outclk\,
	datad => \inst|NS.e4_197~combout\,
	combout => \inst|NS.e4_197~combout\);

-- Location: FF_X2_Y11_N25
\inst|PS.e4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW16~inputclkctrl_outclk\,
	d => \inst|NS.e4_197~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PS.e4~q\);

-- Location: LCCOMB_X2_Y11_N10
\inst|WideOr6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr6~combout\ = (\inst|PS.e3~q\) # ((\inst|PS.e2~q\) # (\inst|PS.e4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PS.e3~q\,
	datac => \inst|PS.e2~q\,
	datad => \inst|PS.e4~q\,
	combout => \inst|WideOr6~combout\);

-- Location: LCCOMB_X2_Y11_N6
\inst|NS.e5_186\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|NS.e5_186~combout\ = (GLOBAL(\inst|Selector0~0clkctrl_outclk\) & ((\inst|WideOr6~combout\))) # (!GLOBAL(\inst|Selector0~0clkctrl_outclk\) & (\inst|NS.e5_186~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|NS.e5_186~combout\,
	datac => \inst|Selector0~0clkctrl_outclk\,
	datad => \inst|WideOr6~combout\,
	combout => \inst|NS.e5_186~combout\);

-- Location: FF_X2_Y11_N7
\inst|PS.e5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW16~inputclkctrl_outclk\,
	d => \inst|NS.e5_186~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PS.e5~q\);

-- Location: IOIBUF_X0_Y9_N8
\SW17~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW17,
	o => \SW17~input_o\);

-- Location: LCCOMB_X2_Y11_N20
\inst|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\SW17~input_o\) # ((!\inst|PS.e5~q\ & (\inst|PS.e0~q\ & !\inst|PS.e6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PS.e5~q\,
	datab => \inst|PS.e0~q\,
	datac => \SW17~input_o\,
	datad => \inst|PS.e6~q\,
	combout => \inst|Selector0~0_combout\);

-- Location: CLKCTRL_G3
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

-- Location: LCCOMB_X2_Y11_N26
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

-- Location: FF_X2_Y11_N3
\inst|PS.e6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \SW16~input_o\,
	asdata => \inst|NS.e6_175~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|PS.e6~q\);

-- Location: LCCOMB_X1_Y11_N20
\inst|WideOr7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr7~combout\ = (\inst|PS.e6~q\) # ((\inst|PS.e4~q\) # (\inst|PS.e5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PS.e6~q\,
	datab => \inst|PS.e4~q\,
	datad => \inst|PS.e5~q\,
	combout => \inst|WideOr7~combout\);

-- Location: LCCOMB_X1_Y11_N18
\inst|WideOr8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr8~combout\ = (\inst|PS.e6~q\) # ((\inst|PS.e3~q\) # (\inst|PS.e2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PS.e6~q\,
	datab => \inst|PS.e3~q\,
	datac => \inst|PS.e2~q\,
	combout => \inst|WideOr8~combout\);

-- Location: LCCOMB_X1_Y11_N16
\inst|WideOr9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr9~combout\ = (\inst|PS.e3~q\) # ((\inst|PS.e1~q\) # (\inst|PS.e5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PS.e3~q\,
	datac => \inst|PS.e1~q\,
	datad => \inst|PS.e5~q\,
	combout => \inst|WideOr9~combout\);

-- Location: LCCOMB_X2_Y11_N28
\inst|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|WideOr4~0_combout\ = (!\inst|PS.e6~q\ & !\inst|PS.e5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PS.e6~q\,
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

-- Location: LCCOMB_X1_Y11_N22
\inst|Sel_Word[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Sel_Word\(2) = (GLOBAL(\inst|WideOr4~0clkctrl_outclk\) & (\inst|PS.e4~q\)) # (!GLOBAL(\inst|WideOr4~0clkctrl_outclk\) & ((\inst|Sel_Word\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|PS.e4~q\,
	datac => \inst|Sel_Word\(2),
	datad => \inst|WideOr4~0clkctrl_outclk\,
	combout => \inst|Sel_Word\(2));

-- Location: LCCOMB_X1_Y11_N6
\inst|Sel_Word~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Sel_Word~3_combout\ = (!\inst|PS.e2~q\ & !\inst|PS.e3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|PS.e2~q\,
	datad => \inst|PS.e3~q\,
	combout => \inst|Sel_Word~3_combout\);

-- Location: LCCOMB_X1_Y11_N8
\inst|Sel_Word[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Sel_Word\(1) = (GLOBAL(\inst|WideOr4~0clkctrl_outclk\) & ((!\inst|Sel_Word~3_combout\))) # (!GLOBAL(\inst|WideOr4~0clkctrl_outclk\) & (\inst|Sel_Word\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Sel_Word\(1),
	datac => \inst|WideOr4~0clkctrl_outclk\,
	datad => \inst|Sel_Word~3_combout\,
	combout => \inst|Sel_Word\(1));

-- Location: LCCOMB_X2_Y11_N22
\inst|Sel_Word~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Sel_Word~4_combout\ = (!\inst|PS.e1~q\ & !\inst|PS.e3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|PS.e1~q\,
	datac => \inst|PS.e3~q\,
	combout => \inst|Sel_Word~4_combout\);

-- Location: LCCOMB_X2_Y11_N16
\inst|Sel_Word[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Sel_Word\(0) = (GLOBAL(\inst|WideOr4~0clkctrl_outclk\) & ((!\inst|Sel_Word~4_combout\))) # (!GLOBAL(\inst|WideOr4~0clkctrl_outclk\) & (\inst|Sel_Word\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Sel_Word\(0),
	datac => \inst|Sel_Word~4_combout\,
	datad => \inst|WideOr4~0clkctrl_outclk\,
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



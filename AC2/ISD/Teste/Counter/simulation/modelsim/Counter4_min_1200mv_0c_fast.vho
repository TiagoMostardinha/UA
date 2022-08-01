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

-- DATE "01/25/2022 18:43:10"

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

ENTITY 	count2 IS
    PORT (
	RCO : OUT std_logic;
	C : IN std_logic;
	B : IN std_logic;
	A : IN std_logic;
	D : IN std_logic;
	CLR : IN std_logic;
	clk : IN std_logic;
	QD : OUT std_logic;
	QC : OUT std_logic;
	QB : OUT std_logic;
	QA : OUT std_logic
	);
END count2;

-- Design Ports Information
-- RCO	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QD	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QC	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QB	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QA	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF count2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RCO : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_QD : std_logic;
SIGNAL ww_QC : std_logic;
SIGNAL ww_QB : std_logic;
SIGNAL ww_QA : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RCO~output_o\ : std_logic;
SIGNAL \QD~output_o\ : std_logic;
SIGNAL \QC~output_o\ : std_logic;
SIGNAL \QB~output_o\ : std_logic;
SIGNAL \QA~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst|sub|68~0_combout\ : std_logic;
SIGNAL \inst|sub|34~q\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst|sub|109~combout\ : std_logic;
SIGNAL \inst|sub|115~0_combout\ : std_logic;
SIGNAL \inst|sub|111~q\ : std_logic;
SIGNAL \inst|sub|126~0_combout\ : std_logic;
SIGNAL \inst|sub|126~1_combout\ : std_logic;
SIGNAL \inst|sub|122~q\ : std_logic;
SIGNAL \inst|sub|131~combout\ : std_logic;
SIGNAL \inst|sub|137~0_combout\ : std_logic;
SIGNAL \inst|sub|134~q\ : std_logic;
SIGNAL \inst1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

RCO <= ww_RCO;
ww_C <= C;
ww_B <= B;
ww_A <= A;
ww_D <= D;
ww_CLR <= CLR;
ww_clk <= clk;
QD <= ww_QD;
QC <= ww_QC;
QB <= ww_QB;
QA <= ww_QA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N16
\RCO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~0_combout\,
	devoe => ww_devoe,
	o => \RCO~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\QD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|134~q\,
	devoe => ww_devoe,
	o => \QD~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\QC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|122~q\,
	devoe => ww_devoe,
	o => \QC~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\QB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|111~q\,
	devoe => ww_devoe,
	o => \QB~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\QA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|34~q\,
	devoe => ww_devoe,
	o => \QA~output_o\);

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

-- Location: IOIBUF_X0_Y11_N15
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X1_Y7_N10
\inst|sub|68~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|68~0_combout\ = (\CLR~input_o\ & (((\A~input_o\ & \inst1~0_combout\)) # (!\inst|sub|34~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datab => \A~input_o\,
	datac => \inst|sub|34~q\,
	datad => \inst1~0_combout\,
	combout => \inst|sub|68~0_combout\);

-- Location: FF_X1_Y7_N11
\inst|sub|34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|sub|68~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|34~q\);

-- Location: IOIBUF_X0_Y11_N22
\D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X1_Y7_N18
\inst|sub|109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|109~combout\ = \inst|sub|34~q\ $ (\inst|sub|111~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|sub|34~q\,
	datad => \inst|sub|111~q\,
	combout => \inst|sub|109~combout\);

-- Location: LCCOMB_X1_Y7_N24
\inst|sub|115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|115~0_combout\ = (\CLR~input_o\ & ((\inst1~0_combout\ & (\B~input_o\)) # (!\inst1~0_combout\ & ((\inst|sub|109~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datab => \B~input_o\,
	datac => \inst1~0_combout\,
	datad => \inst|sub|109~combout\,
	combout => \inst|sub|115~0_combout\);

-- Location: FF_X1_Y7_N25
\inst|sub|111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|sub|115~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|111~q\);

-- Location: LCCOMB_X1_Y7_N0
\inst|sub|126~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|126~0_combout\ = \inst|sub|122~q\ $ (((\inst|sub|111~q\ & \inst|sub|34~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|sub|111~q\,
	datac => \inst|sub|122~q\,
	datad => \inst|sub|34~q\,
	combout => \inst|sub|126~0_combout\);

-- Location: LCCOMB_X1_Y7_N26
\inst|sub|126~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|126~1_combout\ = (\CLR~input_o\ & ((\inst|sub|126~0_combout\) # ((\C~input_o\ & \inst1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \CLR~input_o\,
	datac => \inst1~0_combout\,
	datad => \inst|sub|126~0_combout\,
	combout => \inst|sub|126~1_combout\);

-- Location: FF_X1_Y7_N27
\inst|sub|122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|sub|126~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|122~q\);

-- Location: LCCOMB_X1_Y7_N6
\inst|sub|131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|131~combout\ = \inst|sub|134~q\ $ (((\inst|sub|34~q\ & (\inst|sub|122~q\ & \inst|sub|111~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub|34~q\,
	datab => \inst|sub|134~q\,
	datac => \inst|sub|122~q\,
	datad => \inst|sub|111~q\,
	combout => \inst|sub|131~combout\);

-- Location: LCCOMB_X1_Y7_N28
\inst|sub|137~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|137~0_combout\ = (\CLR~input_o\ & ((\inst1~0_combout\ & (\D~input_o\)) # (!\inst1~0_combout\ & ((\inst|sub|131~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~input_o\,
	datab => \D~input_o\,
	datac => \inst1~0_combout\,
	datad => \inst|sub|131~combout\,
	combout => \inst|sub|137~0_combout\);

-- Location: FF_X1_Y7_N29
\inst|sub|134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|sub|137~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|134~q\);

-- Location: LCCOMB_X1_Y7_N4
\inst1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1~0_combout\ = (\inst|sub|34~q\ & (\inst|sub|134~q\ & (\inst|sub|122~q\ & \inst|sub|111~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub|34~q\,
	datab => \inst|sub|134~q\,
	datac => \inst|sub|122~q\,
	datad => \inst|sub|111~q\,
	combout => \inst1~0_combout\);

ww_RCO <= \RCO~output_o\;

ww_QD <= \QD~output_o\;

ww_QC <= \QC~output_o\;

ww_QB <= \QB~output_o\;

ww_QA <= \QA~output_o\;
END structure;



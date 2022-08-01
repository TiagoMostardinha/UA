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

-- DATE "01/17/2022 20:50:43"

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

ENTITY 	CounterRCO IS
    PORT (
	qa : OUT std_logic;
	clear : IN std_logic;
	clk : IN std_logic;
	load : IN std_logic;
	qb : OUT std_logic;
	qc : OUT std_logic;
	qd : OUT std_logic;
	rco : OUT std_logic
	);
END CounterRCO;

-- Design Ports Information
-- qa	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qb	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qc	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qd	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rco	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CounterRCO IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_qa : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_qb : std_logic;
SIGNAL ww_qc : std_logic;
SIGNAL ww_qd : std_logic;
SIGNAL ww_rco : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \qa~output_o\ : std_logic;
SIGNAL \qb~output_o\ : std_logic;
SIGNAL \qc~output_o\ : std_logic;
SIGNAL \qd~output_o\ : std_logic;
SIGNAL \rco~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \inst|sub|68~combout\ : std_logic;
SIGNAL \inst|sub|34~q\ : std_logic;
SIGNAL \inst|sub|115~0_combout\ : std_logic;
SIGNAL \inst|sub|111~q\ : std_logic;
SIGNAL \inst|sub|120~combout\ : std_logic;
SIGNAL \inst|sub|126~0_combout\ : std_logic;
SIGNAL \inst|sub|122~q\ : std_logic;
SIGNAL \inst|sub|131~combout\ : std_logic;
SIGNAL \inst|sub|137~0_combout\ : std_logic;
SIGNAL \inst|sub|134~q\ : std_logic;
SIGNAL \inst|sub|128~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

qa <= ww_qa;
ww_clear <= clear;
ww_clk <= clk;
ww_load <= load;
qb <= ww_qb;
qc <= ww_qc;
qd <= ww_qd;
rco <= ww_rco;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y9_N9
\qa~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|34~q\,
	devoe => ww_devoe,
	o => \qa~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\qb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|111~q\,
	devoe => ww_devoe,
	o => \qb~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\qc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|122~q\,
	devoe => ww_devoe,
	o => \qc~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\qd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|134~q\,
	devoe => ww_devoe,
	o => \qd~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\rco~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|128~combout\,
	devoe => ww_devoe,
	o => \rco~output_o\);

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
\clear~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: LCCOMB_X1_Y11_N20
\inst|sub|68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|68~combout\ = (\clear~input_o\ & (\inst|sub|34~q\ $ (\load~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clear~input_o\,
	datac => \inst|sub|34~q\,
	datad => \load~input_o\,
	combout => \inst|sub|68~combout\);

-- Location: FF_X1_Y11_N21
\inst|sub|34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|sub|68~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|34~q\);

-- Location: LCCOMB_X1_Y11_N26
\inst|sub|115~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|115~0_combout\ = (\clear~input_o\ & (\inst|sub|111~q\ $ (((\load~input_o\ & \inst|sub|34~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \clear~input_o\,
	datac => \inst|sub|111~q\,
	datad => \inst|sub|34~q\,
	combout => \inst|sub|115~0_combout\);

-- Location: FF_X1_Y11_N27
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

-- Location: LCCOMB_X1_Y11_N18
\inst|sub|120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|120~combout\ = \inst|sub|122~q\ $ (((\inst|sub|111~q\ & \inst|sub|34~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub|111~q\,
	datac => \inst|sub|122~q\,
	datad => \inst|sub|34~q\,
	combout => \inst|sub|120~combout\);

-- Location: LCCOMB_X1_Y11_N8
\inst|sub|126~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|126~0_combout\ = (\clear~input_o\ & ((\load~input_o\ & ((\inst|sub|120~combout\))) # (!\load~input_o\ & (\inst|sub|122~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \clear~input_o\,
	datac => \inst|sub|122~q\,
	datad => \inst|sub|120~combout\,
	combout => \inst|sub|126~0_combout\);

-- Location: FF_X1_Y11_N9
\inst|sub|122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|sub|126~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|122~q\);

-- Location: LCCOMB_X1_Y11_N28
\inst|sub|131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|131~combout\ = \inst|sub|134~q\ $ (((\inst|sub|111~q\ & (\inst|sub|34~q\ & \inst|sub|122~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub|111~q\,
	datab => \inst|sub|34~q\,
	datac => \inst|sub|122~q\,
	datad => \inst|sub|134~q\,
	combout => \inst|sub|131~combout\);

-- Location: LCCOMB_X1_Y11_N10
\inst|sub|137~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|137~0_combout\ = (\clear~input_o\ & ((\load~input_o\ & ((\inst|sub|131~combout\))) # (!\load~input_o\ & (\inst|sub|134~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \clear~input_o\,
	datac => \inst|sub|134~q\,
	datad => \inst|sub|131~combout\,
	combout => \inst|sub|137~0_combout\);

-- Location: FF_X1_Y11_N11
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

-- Location: LCCOMB_X1_Y11_N16
\inst|sub|128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|128~combout\ = (\inst|sub|122~q\ & (\inst|sub|134~q\ & (\inst|sub|111~q\ & \inst|sub|34~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub|122~q\,
	datab => \inst|sub|134~q\,
	datac => \inst|sub|111~q\,
	datad => \inst|sub|34~q\,
	combout => \inst|sub|128~combout\);

ww_qa <= \qa~output_o\;

ww_qb <= \qb~output_o\;

ww_qc <= \qc~output_o\;

ww_qd <= \qd~output_o\;

ww_rco <= \rco~output_o\;
END structure;



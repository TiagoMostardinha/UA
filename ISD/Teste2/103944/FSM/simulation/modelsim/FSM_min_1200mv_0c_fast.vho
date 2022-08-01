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

-- DATE "01/26/2022 10:39:22"

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

ENTITY 	FSM IS
    PORT (
	Y : OUT std_logic;
	X : IN std_logic;
	RESET_H : IN std_logic;
	CK : IN std_logic;
	Q1 : OUT std_logic;
	Q0 : OUT std_logic
	);
END FSM;

-- Design Ports Information
-- Y	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_H	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_RESET_H : std_logic;
SIGNAL ww_CK : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL \RESET_H~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Y~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \CK~input_o\ : std_logic;
SIGNAL \CK~inputclkctrl_outclk\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \RESET_H~input_o\ : std_logic;
SIGNAL \RESET_H~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \inst6~0_combout\ : std_logic;
SIGNAL \inst1~q\ : std_logic;
SIGNAL \inst13~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Y <= ww_Y;
ww_X <= X;
ww_RESET_H <= RESET_H;
ww_CK <= CK;
Q1 <= ww_Q1;
Q0 <= ww_Q0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET_H~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET_H~input_o\);

\CK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y21_N9
\Y~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13~combout\,
	devoe => ww_devoe,
	o => \Y~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\Q1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~q\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\Q0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~q\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CK,
	o => \CK~input_o\);

-- Location: CLKCTRL_G2
\CK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CK~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N22
\X~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: LCCOMB_X1_Y18_N18
inst3 : cycloneive_lcell_comb
-- Equation(s):
-- \inst3~combout\ = (\X~input_o\ & (!\inst~q\ & !\inst1~q\)) # (!\X~input_o\ & ((\inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~input_o\,
	datac => \inst~q\,
	datad => \inst1~q\,
	combout => \inst3~combout\);

-- Location: IOIBUF_X0_Y11_N15
\RESET_H~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET_H,
	o => \RESET_H~input_o\);

-- Location: CLKCTRL_G4
\RESET_H~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET_H~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET_H~inputclkctrl_outclk\);

-- Location: FF_X1_Y18_N19
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst3~combout\,
	clrn => \RESET_H~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

-- Location: LCCOMB_X1_Y18_N16
\inst6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6~0_combout\ = (\X~input_o\ & (\inst1~q\ & !\inst~q\)) # (!\X~input_o\ & (\inst1~q\ $ (!\inst~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~input_o\,
	datac => \inst1~q\,
	datad => \inst~q\,
	combout => \inst6~0_combout\);

-- Location: FF_X1_Y18_N17
inst1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK~inputclkctrl_outclk\,
	d => \inst6~0_combout\,
	clrn => \RESET_H~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1~q\);

-- Location: LCCOMB_X1_Y18_N12
inst13 : cycloneive_lcell_comb
-- Equation(s):
-- \inst13~combout\ = (\inst1~q\ & (\X~input_o\ & !\inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1~q\,
	datac => \X~input_o\,
	datad => \inst~q\,
	combout => \inst13~combout\);

ww_Y <= \Y~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_Q0 <= \Q0~output_o\;
END structure;



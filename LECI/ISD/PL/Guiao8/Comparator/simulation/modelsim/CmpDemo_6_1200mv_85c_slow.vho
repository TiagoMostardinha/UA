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

-- DATE "12/10/2021 10:10:25"

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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CmpDemo IS
    PORT (
	xout : OUT std_logic;
	ai : IN std_logic;
	bi : IN std_logic;
	xi : IN std_logic;
	yout : OUT std_logic;
	yi : IN std_logic;
	zout : OUT std_logic;
	zi : IN std_logic
	);
END CmpDemo;

-- Design Ports Information
-- xout	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yout	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zout	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ai	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- xi	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bi	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- yi	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- zi	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CmpDemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_xout : std_logic;
SIGNAL ww_ai : std_logic;
SIGNAL ww_bi : std_logic;
SIGNAL ww_xi : std_logic;
SIGNAL ww_yout : std_logic;
SIGNAL ww_yi : std_logic;
SIGNAL ww_zout : std_logic;
SIGNAL ww_zi : std_logic;
SIGNAL \xout~output_o\ : std_logic;
SIGNAL \yout~output_o\ : std_logic;
SIGNAL \zout~output_o\ : std_logic;
SIGNAL \xi~input_o\ : std_logic;
SIGNAL \bi~input_o\ : std_logic;
SIGNAL \ai~input_o\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;
SIGNAL \yi~input_o\ : std_logic;
SIGNAL \inst13~combout\ : std_logic;
SIGNAL \zi~input_o\ : std_logic;
SIGNAL \inst9~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

xout <= ww_xout;
ww_ai <= ai;
ww_bi <= bi;
ww_xi <= xi;
yout <= ww_yout;
ww_yi <= yi;
zout <= ww_zout;
ww_zi <= zi;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y6_N16
\xout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8~combout\,
	devoe => ww_devoe,
	o => \xout~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\yout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13~combout\,
	devoe => ww_devoe,
	o => \yout~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\zout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~combout\,
	devoe => ww_devoe,
	o => \zout~output_o\);

-- Location: IOIBUF_X0_Y8_N15
\xi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_xi,
	o => \xi~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\bi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bi,
	o => \bi~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\ai~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ai,
	o => \ai~input_o\);

-- Location: LCCOMB_X1_Y6_N16
inst8 : cycloneive_lcell_comb
-- Equation(s):
-- \inst8~combout\ = (\xi~input_o\ & ((\ai~input_o\) # (!\bi~input_o\))) # (!\xi~input_o\ & (!\bi~input_o\ & \ai~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xi~input_o\,
	datab => \bi~input_o\,
	datac => \ai~input_o\,
	combout => \inst8~combout\);

-- Location: IOIBUF_X0_Y7_N1
\yi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_yi,
	o => \yi~input_o\);

-- Location: LCCOMB_X1_Y6_N10
inst13 : cycloneive_lcell_comb
-- Equation(s):
-- \inst13~combout\ = (\yi~input_o\ & (\bi~input_o\ $ (!\ai~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \yi~input_o\,
	datab => \bi~input_o\,
	datac => \ai~input_o\,
	combout => \inst13~combout\);

-- Location: IOIBUF_X0_Y6_N22
\zi~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_zi,
	o => \zi~input_o\);

-- Location: LCCOMB_X1_Y6_N12
inst9 : cycloneive_lcell_comb
-- Equation(s):
-- \inst9~combout\ = (\zi~input_o\ & ((\bi~input_o\) # (!\ai~input_o\))) # (!\zi~input_o\ & (\bi~input_o\ & !\ai~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \zi~input_o\,
	datab => \bi~input_o\,
	datac => \ai~input_o\,
	combout => \inst9~combout\);

ww_xout <= \xout~output_o\;

ww_yout <= \yout~output_o\;

ww_zout <= \zout~output_o\;
END structure;



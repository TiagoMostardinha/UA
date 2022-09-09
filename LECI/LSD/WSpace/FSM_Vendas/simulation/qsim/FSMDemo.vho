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

-- DATE "06/18/2021 17:17:21"

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

ENTITY 	FSM_Main IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	Time_exp : IN std_logic;
	esc : IN std_logic_vector(1 DOWNTO 0);
	Sel_Word : BUFFER std_logic_vector(3 DOWNTO 0);
	Ledr : BUFFER std_logic;
	Ledg : BUFFER std_logic;
	debug : BUFFER std_logic_vector(2 DOWNTO 0)
	);
END FSM_Main;

-- Design Ports Information
-- Sel_Word[0]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel_Word[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel_Word[2]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sel_Word[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ledr	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ledg	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[0]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[1]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- debug[2]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Time_exp	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- esc[1]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- esc[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF FSM_Main IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_Time_exp : std_logic;
SIGNAL ww_esc : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Sel_Word : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Ledr : std_logic;
SIGNAL ww_Ledg : std_logic;
SIGNAL ww_debug : std_logic_vector(2 DOWNTO 0);
SIGNAL \Sel_Word~6clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector8~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Sel_Word[0]~output_o\ : std_logic;
SIGNAL \Sel_Word[1]~output_o\ : std_logic;
SIGNAL \Sel_Word[2]~output_o\ : std_logic;
SIGNAL \Sel_Word[3]~output_o\ : std_logic;
SIGNAL \Ledr~output_o\ : std_logic;
SIGNAL \Ledg~output_o\ : std_logic;
SIGNAL \debug[0]~output_o\ : std_logic;
SIGNAL \debug[1]~output_o\ : std_logic;
SIGNAL \debug[2]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \esc[1]~input_o\ : std_logic;
SIGNAL \esc[0]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Time_exp~input_o\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector8~0clkctrl_outclk\ : std_logic;
SIGNAL \NS.e4_201~combout\ : std_logic;
SIGNAL \PS~14_combout\ : std_logic;
SIGNAL \PS.e4~q\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \NS.e2_229~combout\ : std_logic;
SIGNAL \PS~13_combout\ : std_logic;
SIGNAL \PS.e2~q\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \NS.e5_187~combout\ : std_logic;
SIGNAL \PS~9_combout\ : std_logic;
SIGNAL \PS.e5~q\ : std_logic;
SIGNAL \NS.e6_173~combout\ : std_logic;
SIGNAL \PS~10_combout\ : std_logic;
SIGNAL \PS.e6~q\ : std_logic;
SIGNAL \PS.e0~0_combout\ : std_logic;
SIGNAL \PS.e0~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \NS.e1_243~combout\ : std_logic;
SIGNAL \PS~11_combout\ : std_logic;
SIGNAL \PS.e1~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \NS.e3_215~combout\ : std_logic;
SIGNAL \PS~12_combout\ : std_logic;
SIGNAL \PS.e3~q\ : std_logic;
SIGNAL \Sel_Word~5_combout\ : std_logic;
SIGNAL \Sel_Word~6_combout\ : std_logic;
SIGNAL \Sel_Word~6clkctrl_outclk\ : std_logic;
SIGNAL \Sel_Word[0]$latch~combout\ : std_logic;
SIGNAL \Sel_Word~7_combout\ : std_logic;
SIGNAL \Sel_Word[1]$latch~combout\ : std_logic;
SIGNAL \Sel_Word[2]$latch~combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \WideOr4~combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_Time_exp <= Time_exp;
ww_esc <= esc;
Sel_Word <= ww_Sel_Word;
Ledr <= ww_Ledr;
Ledg <= ww_Ledg;
debug <= ww_debug;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Sel_Word~6clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Sel_Word~6_combout\);

\Selector8~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Selector8~0_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y33_N23
\Sel_Word[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sel_Word[0]$latch~combout\,
	devoe => ww_devoe,
	o => \Sel_Word[0]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\Sel_Word[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sel_Word[1]$latch~combout\,
	devoe => ww_devoe,
	o => \Sel_Word[1]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\Sel_Word[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sel_Word[2]$latch~combout\,
	devoe => ww_devoe,
	o => \Sel_Word[2]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\Sel_Word[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Sel_Word[3]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\Ledr~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PS.e5~q\,
	devoe => ww_devoe,
	o => \Ledr~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\Ledg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \PS.e6~q\,
	devoe => ww_devoe,
	o => \Ledg~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\debug[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr5~combout\,
	devoe => ww_devoe,
	o => \debug[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\debug[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr4~combout\,
	devoe => ww_devoe,
	o => \debug[1]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\debug[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr3~combout\,
	devoe => ww_devoe,
	o => \debug[2]~output_o\);

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

-- Location: IOIBUF_X0_Y35_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X0_Y32_N15
\esc[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_esc(1),
	o => \esc[1]~input_o\);

-- Location: IOIBUF_X0_Y32_N22
\esc[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_esc(0),
	o => \esc[0]~input_o\);

-- Location: LCCOMB_X1_Y36_N28
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\PS.e1~q\ & (\esc[1]~input_o\ & !\esc[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.e1~q\,
	datac => \esc[1]~input_o\,
	datad => \esc[0]~input_o\,
	combout => \Equal0~2_combout\);

-- Location: IOIBUF_X0_Y35_N15
\Time_exp~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Time_exp,
	o => \Time_exp~input_o\);

-- Location: LCCOMB_X1_Y36_N18
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\PS.e1~q\) # (\Time_exp~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS.e1~q\,
	datad => \Time_exp~input_o\,
	combout => \Selector8~0_combout\);

-- Location: CLKCTRL_G3
\Selector8~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector8~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector8~0clkctrl_outclk\);

-- Location: LCCOMB_X2_Y36_N16
\NS.e4_201\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS.e4_201~combout\ = (GLOBAL(\Selector8~0clkctrl_outclk\) & ((\Equal0~2_combout\))) # (!GLOBAL(\Selector8~0clkctrl_outclk\) & (\NS.e4_201~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \NS.e4_201~combout\,
	datac => \Equal0~2_combout\,
	datad => \Selector8~0clkctrl_outclk\,
	combout => \NS.e4_201~combout\);

-- Location: LCCOMB_X2_Y36_N14
\PS~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~14_combout\ = (!\rst~input_o\ & \NS.e4_201~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \NS.e4_201~combout\,
	combout => \PS~14_combout\);

-- Location: FF_X2_Y36_N15
\PS.e4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PS~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.e4~q\);

-- Location: LCCOMB_X1_Y36_N30
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\PS.e1~q\ & (!\esc[1]~input_o\ & !\esc[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.e1~q\,
	datac => \esc[1]~input_o\,
	datad => \esc[0]~input_o\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X2_Y36_N28
\NS.e2_229\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS.e2_229~combout\ = (GLOBAL(\Selector8~0clkctrl_outclk\) & (\Equal0~1_combout\)) # (!GLOBAL(\Selector8~0clkctrl_outclk\) & ((\NS.e2_229~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datac => \NS.e2_229~combout\,
	datad => \Selector8~0clkctrl_outclk\,
	combout => \NS.e2_229~combout\);

-- Location: LCCOMB_X2_Y36_N18
\PS~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~13_combout\ = (!\rst~input_o\ & \NS.e2_229~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \NS.e2_229~combout\,
	combout => \PS~13_combout\);

-- Location: FF_X2_Y36_N19
\PS.e2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PS~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.e2~q\);

-- Location: LCCOMB_X2_Y36_N26
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\PS.e3~q\) # ((\PS.e4~q\) # (\PS.e2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PS.e3~q\,
	datac => \PS.e4~q\,
	datad => \PS.e2~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X2_Y36_N2
\NS.e5_187\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS.e5_187~combout\ = (GLOBAL(\Selector8~0clkctrl_outclk\) & (\Selector5~0_combout\)) # (!GLOBAL(\Selector8~0clkctrl_outclk\) & ((\NS.e5_187~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~0_combout\,
	datac => \NS.e5_187~combout\,
	datad => \Selector8~0clkctrl_outclk\,
	combout => \NS.e5_187~combout\);

-- Location: LCCOMB_X2_Y36_N12
\PS~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~9_combout\ = (!\rst~input_o\ & \NS.e5_187~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \NS.e5_187~combout\,
	combout => \PS~9_combout\);

-- Location: FF_X2_Y36_N13
\PS.e5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PS~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.e5~q\);

-- Location: LCCOMB_X1_Y36_N12
\NS.e6_173\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS.e6_173~combout\ = (GLOBAL(\Selector8~0clkctrl_outclk\) & (\PS.e5~q\)) # (!GLOBAL(\Selector8~0clkctrl_outclk\) & ((\NS.e6_173~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PS.e5~q\,
	datac => \NS.e6_173~combout\,
	datad => \Selector8~0clkctrl_outclk\,
	combout => \NS.e6_173~combout\);

-- Location: LCCOMB_X1_Y36_N4
\PS~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~10_combout\ = (!\rst~input_o\ & \NS.e6_173~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \NS.e6_173~combout\,
	combout => \PS~10_combout\);

-- Location: FF_X1_Y36_N5
\PS.e6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PS~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.e6~q\);

-- Location: LCCOMB_X1_Y36_N8
\PS.e0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS.e0~0_combout\ = !\rst~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	combout => \PS.e0~0_combout\);

-- Location: FF_X1_Y36_N11
\PS.e0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \PS.e0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.e0~q\);

-- Location: LCCOMB_X1_Y36_N10
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ((\esc[1]~input_o\ & (\PS.e1~q\ & \esc[0]~input_o\))) # (!\PS.e0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \esc[1]~input_o\,
	datab => \PS.e1~q\,
	datac => \PS.e0~q\,
	datad => \esc[0]~input_o\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X1_Y36_N2
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\PS.e6~q\) # (\Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PS.e6~q\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X1_Y36_N16
\NS.e1_243\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS.e1_243~combout\ = (GLOBAL(\Selector8~0clkctrl_outclk\) & (\Selector1~1_combout\)) # (!GLOBAL(\Selector8~0clkctrl_outclk\) & ((\NS.e1_243~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector1~1_combout\,
	datac => \NS.e1_243~combout\,
	datad => \Selector8~0clkctrl_outclk\,
	combout => \NS.e1_243~combout\);

-- Location: LCCOMB_X1_Y36_N22
\PS~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~11_combout\ = (!\rst~input_o\ & \NS.e1_243~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \NS.e1_243~combout\,
	combout => \PS~11_combout\);

-- Location: FF_X1_Y36_N23
\PS.e1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \PS~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.e1~q\);

-- Location: LCCOMB_X1_Y36_N6
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\PS.e1~q\ & (!\esc[1]~input_o\ & \esc[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.e1~q\,
	datac => \esc[1]~input_o\,
	datad => \esc[0]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X2_Y36_N24
\NS.e3_215\ : cycloneive_lcell_comb
-- Equation(s):
-- \NS.e3_215~combout\ = (GLOBAL(\Selector8~0clkctrl_outclk\) & (\Equal0~0_combout\)) # (!GLOBAL(\Selector8~0clkctrl_outclk\) & ((\NS.e3_215~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \NS.e3_215~combout\,
	datad => \Selector8~0clkctrl_outclk\,
	combout => \NS.e3_215~combout\);

-- Location: LCCOMB_X2_Y36_N6
\PS~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \PS~12_combout\ = (!\rst~input_o\ & \NS.e3_215~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \NS.e3_215~combout\,
	combout => \PS~12_combout\);

-- Location: FF_X2_Y36_N7
\PS.e3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \PS~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PS.e3~q\);

-- Location: LCCOMB_X2_Y36_N20
\Sel_Word~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sel_Word~5_combout\ = (!\PS.e3~q\ & !\PS.e1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.e3~q\,
	datad => \PS.e1~q\,
	combout => \Sel_Word~5_combout\);

-- Location: LCCOMB_X1_Y36_N14
\Sel_Word~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sel_Word~6_combout\ = (!\PS.e6~q\ & !\PS.e5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS.e6~q\,
	datad => \PS.e5~q\,
	combout => \Sel_Word~6_combout\);

-- Location: CLKCTRL_G0
\Sel_Word~6clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Sel_Word~6clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Sel_Word~6clkctrl_outclk\);

-- Location: LCCOMB_X2_Y36_N8
\Sel_Word[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sel_Word[0]$latch~combout\ = (GLOBAL(\Sel_Word~6clkctrl_outclk\) & (!\Sel_Word~5_combout\)) # (!GLOBAL(\Sel_Word~6clkctrl_outclk\) & ((\Sel_Word[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sel_Word~5_combout\,
	datac => \Sel_Word[0]$latch~combout\,
	datad => \Sel_Word~6clkctrl_outclk\,
	combout => \Sel_Word[0]$latch~combout\);

-- Location: LCCOMB_X2_Y36_N10
\Sel_Word~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sel_Word~7_combout\ = (!\PS.e3~q\ & !\PS.e2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.e3~q\,
	datad => \PS.e2~q\,
	combout => \Sel_Word~7_combout\);

-- Location: LCCOMB_X2_Y36_N22
\Sel_Word[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sel_Word[1]$latch~combout\ = (GLOBAL(\Sel_Word~6clkctrl_outclk\) & ((!\Sel_Word~7_combout\))) # (!GLOBAL(\Sel_Word~6clkctrl_outclk\) & (\Sel_Word[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel_Word[1]$latch~combout\,
	datac => \Sel_Word~6clkctrl_outclk\,
	datad => \Sel_Word~7_combout\,
	combout => \Sel_Word[1]$latch~combout\);

-- Location: LCCOMB_X2_Y36_N30
\Sel_Word[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \Sel_Word[2]$latch~combout\ = (GLOBAL(\Sel_Word~6clkctrl_outclk\) & ((\PS.e4~q\))) # (!GLOBAL(\Sel_Word~6clkctrl_outclk\) & (\Sel_Word[2]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sel_Word[2]$latch~combout\,
	datac => \Sel_Word~6clkctrl_outclk\,
	datad => \PS.e4~q\,
	combout => \Sel_Word[2]$latch~combout\);

-- Location: LCCOMB_X1_Y36_N24
WideOr5 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = (\PS.e3~q\) # ((\PS.e1~q\) # (\PS.e5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.e3~q\,
	datac => \PS.e1~q\,
	datad => \PS.e5~q\,
	combout => \WideOr5~combout\);

-- Location: LCCOMB_X1_Y36_N20
WideOr4 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~combout\ = (\PS.e3~q\) # ((\PS.e6~q\) # (\PS.e2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS.e3~q\,
	datab => \PS.e6~q\,
	datad => \PS.e2~q\,
	combout => \WideOr4~combout\);

-- Location: LCCOMB_X1_Y36_N26
WideOr3 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (\PS.e4~q\) # ((\PS.e6~q\) # (\PS.e5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PS.e4~q\,
	datac => \PS.e6~q\,
	datad => \PS.e5~q\,
	combout => \WideOr3~combout\);

ww_Sel_Word(0) <= \Sel_Word[0]~output_o\;

ww_Sel_Word(1) <= \Sel_Word[1]~output_o\;

ww_Sel_Word(2) <= \Sel_Word[2]~output_o\;

ww_Sel_Word(3) <= \Sel_Word[3]~output_o\;

ww_Ledr <= \Ledr~output_o\;

ww_Ledg <= \Ledg~output_o\;

ww_debug(0) <= \debug[0]~output_o\;

ww_debug(1) <= \debug[1]~output_o\;

ww_debug(2) <= \debug[2]~output_o\;
END structure;



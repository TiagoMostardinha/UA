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

-- DATE "11/26/2021 10:18:35"

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

ENTITY 	MuxDemo2 IS
    PORT (
	out0 : OUT std_logic;
	inp : IN std_logic_vector(15 DOWNTO 0);
	sel : IN std_logic_vector(3 DOWNTO 0)
	);
END MuxDemo2;

-- Design Ports Information
-- out0	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[10]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[9]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[8]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[11]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[3]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[5]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[6]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[4]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[7]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[2]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[1]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[0]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[3]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[13]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[14]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[12]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- inp[15]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MuxDemo2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_out0 : std_logic;
SIGNAL ww_inp : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL \out0~output_o\ : std_logic;
SIGNAL \inp[14]~input_o\ : std_logic;
SIGNAL \sel[1]~input_o\ : std_logic;
SIGNAL \sel[0]~input_o\ : std_logic;
SIGNAL \inp[12]~input_o\ : std_logic;
SIGNAL \inst|mux14|inst3~7_combout\ : std_logic;
SIGNAL \inp[13]~input_o\ : std_logic;
SIGNAL \inp[15]~input_o\ : std_logic;
SIGNAL \inst|mux14|inst3~8_combout\ : std_logic;
SIGNAL \inp[5]~input_o\ : std_logic;
SIGNAL \inp[6]~input_o\ : std_logic;
SIGNAL \inp[4]~input_o\ : std_logic;
SIGNAL \inst|mux14|inst3~2_combout\ : std_logic;
SIGNAL \inp[7]~input_o\ : std_logic;
SIGNAL \inst|mux14|inst3~3_combout\ : std_logic;
SIGNAL \sel[3]~input_o\ : std_logic;
SIGNAL \sel[2]~input_o\ : std_logic;
SIGNAL \inp[2]~input_o\ : std_logic;
SIGNAL \inp[1]~input_o\ : std_logic;
SIGNAL \inp[0]~input_o\ : std_logic;
SIGNAL \inst|mux14|inst3~4_combout\ : std_logic;
SIGNAL \inp[3]~input_o\ : std_logic;
SIGNAL \inst|mux14|inst3~5_combout\ : std_logic;
SIGNAL \inst|mux14|inst3~6_combout\ : std_logic;
SIGNAL \inp[10]~input_o\ : std_logic;
SIGNAL \inp[8]~input_o\ : std_logic;
SIGNAL \inp[9]~input_o\ : std_logic;
SIGNAL \inst|mux14|inst3~0_combout\ : std_logic;
SIGNAL \inp[11]~input_o\ : std_logic;
SIGNAL \inst|mux14|inst3~1_combout\ : std_logic;
SIGNAL \inst|mux14|inst3~9_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

out0 <= ww_out0;
ww_inp <= inp;
ww_sel <= sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y4_N23
\out0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|mux14|inst3~9_combout\,
	devoe => ww_devoe,
	o => \out0~output_o\);

-- Location: IOIBUF_X23_Y24_N8
\inp[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(14),
	o => \inp[14]~input_o\);

-- Location: IOIBUF_X34_Y7_N8
\sel[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(1),
	o => \sel[1]~input_o\);

-- Location: IOIBUF_X28_Y24_N1
\sel[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(0),
	o => \sel[0]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\inp[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(12),
	o => \inp[12]~input_o\);

-- Location: LCCOMB_X28_Y8_N12
\inst|mux14|inst3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mux14|inst3~7_combout\ = (\sel[1]~input_o\ & ((\inp[14]~input_o\) # ((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & (((!\sel[0]~input_o\ & \inp[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[14]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \inp[12]~input_o\,
	combout => \inst|mux14|inst3~7_combout\);

-- Location: IOIBUF_X28_Y0_N1
\inp[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(13),
	o => \inp[13]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\inp[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(15),
	o => \inp[15]~input_o\);

-- Location: LCCOMB_X28_Y8_N6
\inst|mux14|inst3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mux14|inst3~8_combout\ = (\inst|mux14|inst3~7_combout\ & (((\inp[15]~input_o\)) # (!\sel[0]~input_o\))) # (!\inst|mux14|inst3~7_combout\ & (\sel[0]~input_o\ & (\inp[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mux14|inst3~7_combout\,
	datab => \sel[0]~input_o\,
	datac => \inp[13]~input_o\,
	datad => \inp[15]~input_o\,
	combout => \inst|mux14|inst3~8_combout\);

-- Location: IOIBUF_X34_Y9_N8
\inp[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(5),
	o => \inp[5]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\inp[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(6),
	o => \inp[6]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\inp[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(4),
	o => \inp[4]~input_o\);

-- Location: LCCOMB_X28_Y8_N20
\inst|mux14|inst3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mux14|inst3~2_combout\ = (\sel[0]~input_o\ & (((\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & ((\sel[1]~input_o\ & (\inp[6]~input_o\)) # (!\sel[1]~input_o\ & ((\inp[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[6]~input_o\,
	datab => \inp[4]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \inst|mux14|inst3~2_combout\);

-- Location: IOIBUF_X34_Y12_N22
\inp[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(7),
	o => \inp[7]~input_o\);

-- Location: LCCOMB_X28_Y8_N22
\inst|mux14|inst3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mux14|inst3~3_combout\ = (\inst|mux14|inst3~2_combout\ & (((\inp[7]~input_o\) # (!\sel[0]~input_o\)))) # (!\inst|mux14|inst3~2_combout\ & (\inp[5]~input_o\ & (\sel[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[5]~input_o\,
	datab => \inst|mux14|inst3~2_combout\,
	datac => \sel[0]~input_o\,
	datad => \inp[7]~input_o\,
	combout => \inst|mux14|inst3~3_combout\);

-- Location: IOIBUF_X23_Y24_N15
\sel[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(3),
	o => \sel[3]~input_o\);

-- Location: IOIBUF_X34_Y12_N15
\sel[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sel(2),
	o => \sel[2]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\inp[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(2),
	o => \inp[2]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\inp[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(1),
	o => \inp[1]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\inp[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(0),
	o => \inp[0]~input_o\);

-- Location: LCCOMB_X33_Y8_N8
\inst|mux14|inst3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mux14|inst3~4_combout\ = (\sel[1]~input_o\ & (((\sel[0]~input_o\)))) # (!\sel[1]~input_o\ & ((\sel[0]~input_o\ & (\inp[1]~input_o\)) # (!\sel[0]~input_o\ & ((\inp[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[1]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \sel[0]~input_o\,
	datad => \inp[0]~input_o\,
	combout => \inst|mux14|inst3~4_combout\);

-- Location: IOIBUF_X34_Y9_N15
\inp[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(3),
	o => \inp[3]~input_o\);

-- Location: LCCOMB_X28_Y8_N24
\inst|mux14|inst3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mux14|inst3~5_combout\ = (\sel[1]~input_o\ & ((\inst|mux14|inst3~4_combout\ & ((\inp[3]~input_o\))) # (!\inst|mux14|inst3~4_combout\ & (\inp[2]~input_o\)))) # (!\sel[1]~input_o\ & (((\inst|mux14|inst3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[2]~input_o\,
	datab => \sel[1]~input_o\,
	datac => \inst|mux14|inst3~4_combout\,
	datad => \inp[3]~input_o\,
	combout => \inst|mux14|inst3~5_combout\);

-- Location: LCCOMB_X28_Y8_N18
\inst|mux14|inst3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mux14|inst3~6_combout\ = (\sel[3]~input_o\ & (((\sel[2]~input_o\)))) # (!\sel[3]~input_o\ & ((\sel[2]~input_o\ & (\inst|mux14|inst3~3_combout\)) # (!\sel[2]~input_o\ & ((\inst|mux14|inst3~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mux14|inst3~3_combout\,
	datab => \sel[3]~input_o\,
	datac => \sel[2]~input_o\,
	datad => \inst|mux14|inst3~5_combout\,
	combout => \inst|mux14|inst3~6_combout\);

-- Location: IOIBUF_X7_Y0_N1
\inp[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(10),
	o => \inp[10]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\inp[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(8),
	o => \inp[8]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\inp[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(9),
	o => \inp[9]~input_o\);

-- Location: LCCOMB_X28_Y8_N0
\inst|mux14|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mux14|inst3~0_combout\ = (\sel[0]~input_o\ & (((\inp[9]~input_o\) # (\sel[1]~input_o\)))) # (!\sel[0]~input_o\ & (\inp[8]~input_o\ & ((!\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[8]~input_o\,
	datab => \sel[0]~input_o\,
	datac => \inp[9]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \inst|mux14|inst3~0_combout\);

-- Location: IOIBUF_X34_Y10_N8
\inp[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inp(11),
	o => \inp[11]~input_o\);

-- Location: LCCOMB_X28_Y8_N10
\inst|mux14|inst3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mux14|inst3~1_combout\ = (\inst|mux14|inst3~0_combout\ & (((\inp[11]~input_o\) # (!\sel[1]~input_o\)))) # (!\inst|mux14|inst3~0_combout\ & (\inp[10]~input_o\ & ((\sel[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inp[10]~input_o\,
	datab => \inst|mux14|inst3~0_combout\,
	datac => \inp[11]~input_o\,
	datad => \sel[1]~input_o\,
	combout => \inst|mux14|inst3~1_combout\);

-- Location: LCCOMB_X28_Y8_N8
\inst|mux14|inst3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mux14|inst3~9_combout\ = (\inst|mux14|inst3~6_combout\ & ((\inst|mux14|inst3~8_combout\) # ((!\sel[3]~input_o\)))) # (!\inst|mux14|inst3~6_combout\ & (((\sel[3]~input_o\ & \inst|mux14|inst3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mux14|inst3~8_combout\,
	datab => \inst|mux14|inst3~6_combout\,
	datac => \sel[3]~input_o\,
	datad => \inst|mux14|inst3~1_combout\,
	combout => \inst|mux14|inst3~9_combout\);

ww_out0 <= \out0~output_o\;
END structure;



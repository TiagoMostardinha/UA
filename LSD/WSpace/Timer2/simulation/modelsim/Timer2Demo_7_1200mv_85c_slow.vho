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

-- DATE "06/17/2021 16:45:53"

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

ENTITY 	Timer2_Block IS
    PORT (
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 DOWNTO 0)
	);
END Timer2_Block;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Timer2_Block IS
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
SIGNAL ww_SW : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][27]~1_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][26]~2_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][25]~3_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][24]~4_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][23]~5_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][22]~6_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][21]~combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][20]~7_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][19]~8_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][15]~9_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][14]~10_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][13]~11_combout\ : std_logic;
SIGNAL \inst|Add0~1_cout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~12\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~18\ : std_logic;
SIGNAL \inst|Add0~20\ : std_logic;
SIGNAL \inst|Add0~22\ : std_logic;
SIGNAL \inst|Add0~24\ : std_logic;
SIGNAL \inst|Add0~26\ : std_logic;
SIGNAL \inst|Add0~28\ : std_logic;
SIGNAL \inst|Add0~30\ : std_logic;
SIGNAL \inst|Add0~32\ : std_logic;
SIGNAL \inst|Add0~34\ : std_logic;
SIGNAL \inst|Add0~36\ : std_logic;
SIGNAL \inst|Add0~38\ : std_logic;
SIGNAL \inst|Add0~40\ : std_logic;
SIGNAL \inst|Add0~42\ : std_logic;
SIGNAL \inst|Add0~44\ : std_logic;
SIGNAL \inst|Add0~45_combout\ : std_logic;
SIGNAL \inst|Add0~43_combout\ : std_logic;
SIGNAL \inst|Add0~39_combout\ : std_logic;
SIGNAL \inst|Add0~37_combout\ : std_logic;
SIGNAL \inst|Add0~35_combout\ : std_logic;
SIGNAL \inst|Add0~31_combout\ : std_logic;
SIGNAL \inst|Add0~27_combout\ : std_logic;
SIGNAL \inst|Add0~25_combout\ : std_logic;
SIGNAL \inst|Add0~23_combout\ : std_logic;
SIGNAL \inst|Add0~21_combout\ : std_logic;
SIGNAL \inst|Add0~19_combout\ : std_logic;
SIGNAL \inst|Add0~17_combout\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~11_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|s_counter~17_combout\ : std_logic;
SIGNAL \inst|s_counter[0]~18_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|s_counter~19_combout\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|s_counter~20_combout\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|s_counter~21_combout\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|s_counter~22_combout\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|s_counter~23_combout\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|s_counter~24_combout\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|s_counter~25_combout\ : std_logic;
SIGNAL \inst|Add1~15\ : std_logic;
SIGNAL \inst|Add1~16_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add1~17\ : std_logic;
SIGNAL \inst|Add1~18_combout\ : std_logic;
SIGNAL \inst|Add0~5_combout\ : std_logic;
SIGNAL \inst|Add0~7_combout\ : std_logic;
SIGNAL \inst|Add1~19\ : std_logic;
SIGNAL \inst|Add1~20_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add1~21\ : std_logic;
SIGNAL \inst|Add1~22_combout\ : std_logic;
SIGNAL \inst|Add0~13_combout\ : std_logic;
SIGNAL \inst|Add1~23\ : std_logic;
SIGNAL \inst|Add1~24_combout\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add1~25\ : std_logic;
SIGNAL \inst|Add1~26_combout\ : std_logic;
SIGNAL \inst|s_counter[13]~0_combout\ : std_logic;
SIGNAL \inst|Add1~27\ : std_logic;
SIGNAL \inst|Add1~28_combout\ : std_logic;
SIGNAL \inst|s_counter[14]~1_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][14]~10_wirecell_combout\ : std_logic;
SIGNAL \inst|Add1~29\ : std_logic;
SIGNAL \inst|Add1~30_combout\ : std_logic;
SIGNAL \inst|s_counter[15]~2_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][15]~9_wirecell_combout\ : std_logic;
SIGNAL \inst|Add1~31\ : std_logic;
SIGNAL \inst|Add1~32_combout\ : std_logic;
SIGNAL \inst|s_counter[16]~3_combout\ : std_logic;
SIGNAL \inst|Add1~33\ : std_logic;
SIGNAL \inst|Add1~34_combout\ : std_logic;
SIGNAL \inst|s_counter[17]~4_combout\ : std_logic;
SIGNAL \inst|Add1~35\ : std_logic;
SIGNAL \inst|Add1~36_combout\ : std_logic;
SIGNAL \inst|s_counter[18]~5_combout\ : std_logic;
SIGNAL \inst|Add1~37\ : std_logic;
SIGNAL \inst|Add1~38_combout\ : std_logic;
SIGNAL \inst|Add0~29_combout\ : std_logic;
SIGNAL \inst|s_counter[19]~6_combout\ : std_logic;
SIGNAL \inst|Add1~39\ : std_logic;
SIGNAL \inst|Add1~40_combout\ : std_logic;
SIGNAL \inst|s_counter[20]~7_combout\ : std_logic;
SIGNAL \inst|Add1~41\ : std_logic;
SIGNAL \inst|Add1~42_combout\ : std_logic;
SIGNAL \inst|Add0~33_combout\ : std_logic;
SIGNAL \inst|s_counter[21]~8_combout\ : std_logic;
SIGNAL \inst|Add1~43\ : std_logic;
SIGNAL \inst|Add1~44_combout\ : std_logic;
SIGNAL \inst|s_counter[22]~9_combout\ : std_logic;
SIGNAL \inst|Add1~45\ : std_logic;
SIGNAL \inst|Add1~46_combout\ : std_logic;
SIGNAL \inst|s_counter[23]~10_combout\ : std_logic;
SIGNAL \inst|Add1~47\ : std_logic;
SIGNAL \inst|Add1~48_combout\ : std_logic;
SIGNAL \inst|s_counter[24]~11_combout\ : std_logic;
SIGNAL \inst|Add1~49\ : std_logic;
SIGNAL \inst|Add1~50_combout\ : std_logic;
SIGNAL \inst|Add0~41_combout\ : std_logic;
SIGNAL \inst|s_counter[25]~12_combout\ : std_logic;
SIGNAL \inst|Add1~51\ : std_logic;
SIGNAL \inst|Add1~52_combout\ : std_logic;
SIGNAL \inst|s_counter[26]~13_combout\ : std_logic;
SIGNAL \inst|Add1~53\ : std_logic;
SIGNAL \inst|Add1~54_combout\ : std_logic;
SIGNAL \inst|s_counter[27]~14_combout\ : std_logic;
SIGNAL \inst|Add1~55\ : std_logic;
SIGNAL \inst|Add1~56_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][28]~0_combout\ : std_logic;
SIGNAL \inst|Add0~46\ : std_logic;
SIGNAL \inst|Add0~47_combout\ : std_logic;
SIGNAL \inst|s_counter[28]~15_combout\ : std_logic;
SIGNAL \inst|Mult0|mult_core|romout[0][29]~combout\ : std_logic;
SIGNAL \inst|Add0~48\ : std_logic;
SIGNAL \inst|Add0~49_combout\ : std_logic;
SIGNAL \inst|Add1~57\ : std_logic;
SIGNAL \inst|Add1~58_combout\ : std_logic;
SIGNAL \inst|s_counter[29]~16_combout\ : std_logic;
SIGNAL \inst|s_cntZero~9_combout\ : std_logic;
SIGNAL \inst|s_cntZero~8_combout\ : std_logic;
SIGNAL \inst|s_cntZero~0_combout\ : std_logic;
SIGNAL \inst|s_cntZero~1_combout\ : std_logic;
SIGNAL \inst|Add0~50\ : std_logic;
SIGNAL \inst|Add0~51_combout\ : std_logic;
SIGNAL \inst|Add1~59\ : std_logic;
SIGNAL \inst|Add1~60_combout\ : std_logic;
SIGNAL \inst|Add0~53_combout\ : std_logic;
SIGNAL \inst|s_cntZero~3_combout\ : std_logic;
SIGNAL \inst|s_cntZero~2_combout\ : std_logic;
SIGNAL \inst|s_cntZero~4_combout\ : std_logic;
SIGNAL \inst|s_cntZero~5_combout\ : std_logic;
SIGNAL \inst|s_cntZero~6_combout\ : std_logic;
SIGNAL \inst|s_cntZero~7_combout\ : std_logic;
SIGNAL \inst|s_cntZero~10_combout\ : std_logic;
SIGNAL \inst|s_cntZero~11_combout\ : std_logic;
SIGNAL \inst|s_cntZero~q\ : std_logic;
SIGNAL \inst|s_counter\ : std_logic_vector(30 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

LEDG <= ww_LEDG;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
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
	i => VCC,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_cntZero~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X114_Y14_N12
\inst|Mult0|mult_core|romout[0][27]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][27]~1_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ $ (((!\SW[3]~input_o\))))) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\ & (\SW[0]~input_o\ $ (\SW[3]~input_o\))) # (!\SW[1]~input_o\ & (\SW[0]~input_o\ & \SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][27]~1_combout\);

-- Location: LCCOMB_X114_Y14_N30
\inst|Mult0|mult_core|romout[0][26]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][26]~2_combout\ = (\SW[2]~input_o\ & (((\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & (!\SW[0]~input_o\ & ((\SW[1]~input_o\) # (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][26]~2_combout\);

-- Location: LCCOMB_X114_Y14_N28
\inst|Mult0|mult_core|romout[0][25]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][25]~3_combout\ = (!\SW[1]~input_o\ & ((\SW[2]~input_o\) # ((\SW[0]~input_o\) # (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][25]~3_combout\);

-- Location: LCCOMB_X114_Y14_N14
\inst|Mult0|mult_core|romout[0][24]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][24]~4_combout\ = (!\SW[0]~input_o\ & ((\SW[2]~input_o\) # ((\SW[1]~input_o\) # (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][24]~4_combout\);

-- Location: LCCOMB_X114_Y14_N8
\inst|Mult0|mult_core|romout[0][23]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][23]~5_combout\ = (\SW[2]~input_o\) # ((\SW[1]~input_o\) # ((\SW[0]~input_o\) # (\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][23]~5_combout\);

-- Location: LCCOMB_X114_Y14_N6
\inst|Mult0|mult_core|romout[0][22]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][22]~6_combout\ = (\SW[2]~input_o\ & (((!\SW[1]~input_o\ & !\SW[0]~input_o\)) # (!\SW[3]~input_o\))) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\) # ((\SW[0]~input_o\) # (\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][22]~6_combout\);

-- Location: LCCOMB_X114_Y14_N0
\inst|Mult0|mult_core|romout[0][21]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][21]~combout\ = (\SW[2]~input_o\ & ((\SW[1]~input_o\ & ((\SW[3]~input_o\) # (!\SW[0]~input_o\))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\) # (!\SW[3]~input_o\))))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & ((\SW[1]~input_o\) 
-- # (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][21]~combout\);

-- Location: LCCOMB_X114_Y14_N26
\inst|Mult0|mult_core|romout[0][20]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][20]~7_combout\ = (\SW[2]~input_o\ & ((\SW[1]~input_o\ & ((\SW[0]~input_o\) # (\SW[3]~input_o\))) # (!\SW[1]~input_o\ & (\SW[0]~input_o\ & \SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\ & ((!\SW[3]~input_o\))) # 
-- (!\SW[1]~input_o\ & ((\SW[0]~input_o\) # (\SW[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][20]~7_combout\);

-- Location: LCCOMB_X114_Y14_N16
\inst|Mult0|mult_core|romout[0][19]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][19]~8_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ $ (\SW[0]~input_o\ $ (!\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\ & ((\SW[3]~input_o\))) # (!\SW[1]~input_o\ & (\SW[0]~input_o\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][19]~8_combout\);

-- Location: LCCOMB_X114_Y14_N10
\inst|Mult0|mult_core|romout[0][15]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][15]~9_combout\ = \SW[3]~input_o\ $ (((!\SW[2]~input_o\ & (!\SW[1]~input_o\ & !\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][15]~9_combout\);

-- Location: LCCOMB_X114_Y14_N20
\inst|Mult0|mult_core|romout[0][14]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][14]~10_combout\ = \SW[2]~input_o\ $ (((!\SW[1]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][14]~10_combout\);

-- Location: LCCOMB_X114_Y14_N18
\inst|Mult0|mult_core|romout[0][13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][13]~11_combout\ = \SW[0]~input_o\ $ (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][13]~11_combout\);

-- Location: LCCOMB_X114_Y16_N8
\inst|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~1_cout\ = CARRY(\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => VCC,
	cout => \inst|Add0~1_cout\);

-- Location: LCCOMB_X114_Y16_N10
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\SW[1]~input_o\ & (\inst|Add0~1_cout\ & VCC)) # (!\SW[1]~input_o\ & (!\inst|Add0~1_cout\))
-- \inst|Add0~3\ = CARRY((!\SW[1]~input_o\ & !\inst|Add0~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datad => VCC,
	cin => \inst|Add0~1_cout\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X114_Y16_N12
\inst|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~5_combout\ = (\SW[2]~input_o\ & ((GND) # (!\inst|Add0~3\))) # (!\SW[2]~input_o\ & (\inst|Add0~3\ $ (GND)))
-- \inst|Add0~6\ = CARRY((\SW[2]~input_o\) # (!\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[2]~input_o\,
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~5_combout\,
	cout => \inst|Add0~6\);

-- Location: LCCOMB_X114_Y16_N14
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\SW[3]~input_o\ & (\inst|Add0~6\ & VCC)) # (!\SW[3]~input_o\ & (!\inst|Add0~6\))
-- \inst|Add0~9\ = CARRY((!\SW[3]~input_o\ & !\inst|Add0~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datad => VCC,
	cin => \inst|Add0~6\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X114_Y16_N16
\inst|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~11_combout\ = \inst|Add0~9\ $ (GND)
-- \inst|Add0~12\ = CARRY(!\inst|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~11_combout\,
	cout => \inst|Add0~12\);

-- Location: LCCOMB_X114_Y16_N18
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\SW[0]~input_o\ & (\inst|Add0~12\ & VCC)) # (!\SW[0]~input_o\ & (!\inst|Add0~12\))
-- \inst|Add0~15\ = CARRY((!\SW[0]~input_o\ & !\inst|Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datad => VCC,
	cin => \inst|Add0~12\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X114_Y16_N20
\inst|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~17_combout\ = (\inst|Mult0|mult_core|romout[0][13]~11_combout\ & ((GND) # (!\inst|Add0~15\))) # (!\inst|Mult0|mult_core|romout[0][13]~11_combout\ & (\inst|Add0~15\ $ (GND)))
-- \inst|Add0~18\ = CARRY((\inst|Mult0|mult_core|romout[0][13]~11_combout\) # (!\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|mult_core|romout[0][13]~11_combout\,
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~17_combout\,
	cout => \inst|Add0~18\);

-- Location: LCCOMB_X114_Y16_N22
\inst|Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~19_combout\ = (\inst|Mult0|mult_core|romout[0][14]~10_combout\ & (!\inst|Add0~18\)) # (!\inst|Mult0|mult_core|romout[0][14]~10_combout\ & (\inst|Add0~18\ & VCC))
-- \inst|Add0~20\ = CARRY((\inst|Mult0|mult_core|romout[0][14]~10_combout\ & !\inst|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|mult_core|romout[0][14]~10_combout\,
	datad => VCC,
	cin => \inst|Add0~18\,
	combout => \inst|Add0~19_combout\,
	cout => \inst|Add0~20\);

-- Location: LCCOMB_X114_Y16_N24
\inst|Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~21_combout\ = (\inst|Mult0|mult_core|romout[0][15]~9_combout\ & (\inst|Add0~20\ $ (GND))) # (!\inst|Mult0|mult_core|romout[0][15]~9_combout\ & ((GND) # (!\inst|Add0~20\)))
-- \inst|Add0~22\ = CARRY((!\inst|Add0~20\) # (!\inst|Mult0|mult_core|romout[0][15]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|mult_core|romout[0][15]~9_combout\,
	datad => VCC,
	cin => \inst|Add0~20\,
	combout => \inst|Add0~21_combout\,
	cout => \inst|Add0~22\);

-- Location: LCCOMB_X114_Y16_N26
\inst|Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~23_combout\ = (\inst|Mult0|mult_core|romout[0][24]~4_combout\ & (\inst|Add0~22\ & VCC)) # (!\inst|Mult0|mult_core|romout[0][24]~4_combout\ & (!\inst|Add0~22\))
-- \inst|Add0~24\ = CARRY((!\inst|Mult0|mult_core|romout[0][24]~4_combout\ & !\inst|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|mult_core|romout[0][24]~4_combout\,
	datad => VCC,
	cin => \inst|Add0~22\,
	combout => \inst|Add0~23_combout\,
	cout => \inst|Add0~24\);

-- Location: LCCOMB_X114_Y16_N28
\inst|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~25_combout\ = (\inst|Mult0|mult_core|romout[0][25]~3_combout\ & ((GND) # (!\inst|Add0~24\))) # (!\inst|Mult0|mult_core|romout[0][25]~3_combout\ & (\inst|Add0~24\ $ (GND)))
-- \inst|Add0~26\ = CARRY((\inst|Mult0|mult_core|romout[0][25]~3_combout\) # (!\inst|Add0~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|mult_core|romout[0][25]~3_combout\,
	datad => VCC,
	cin => \inst|Add0~24\,
	combout => \inst|Add0~25_combout\,
	cout => \inst|Add0~26\);

-- Location: LCCOMB_X114_Y16_N30
\inst|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~27_combout\ = (\inst|Mult0|mult_core|romout[0][26]~2_combout\ & (\inst|Add0~26\ & VCC)) # (!\inst|Mult0|mult_core|romout[0][26]~2_combout\ & (!\inst|Add0~26\))
-- \inst|Add0~28\ = CARRY((!\inst|Mult0|mult_core|romout[0][26]~2_combout\ & !\inst|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|mult_core|romout[0][26]~2_combout\,
	datad => VCC,
	cin => \inst|Add0~26\,
	combout => \inst|Add0~27_combout\,
	cout => \inst|Add0~28\);

-- Location: LCCOMB_X114_Y15_N0
\inst|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~29_combout\ = (\inst|Mult0|mult_core|romout[0][19]~8_combout\ & ((GND) # (!\inst|Add0~28\))) # (!\inst|Mult0|mult_core|romout[0][19]~8_combout\ & (\inst|Add0~28\ $ (GND)))
-- \inst|Add0~30\ = CARRY((\inst|Mult0|mult_core|romout[0][19]~8_combout\) # (!\inst|Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|mult_core|romout[0][19]~8_combout\,
	datad => VCC,
	cin => \inst|Add0~28\,
	combout => \inst|Add0~29_combout\,
	cout => \inst|Add0~30\);

-- Location: LCCOMB_X114_Y15_N2
\inst|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~31_combout\ = (\inst|Mult0|mult_core|romout[0][20]~7_combout\ & (\inst|Add0~30\ & VCC)) # (!\inst|Mult0|mult_core|romout[0][20]~7_combout\ & (!\inst|Add0~30\))
-- \inst|Add0~32\ = CARRY((!\inst|Mult0|mult_core|romout[0][20]~7_combout\ & !\inst|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|mult_core|romout[0][20]~7_combout\,
	datad => VCC,
	cin => \inst|Add0~30\,
	combout => \inst|Add0~31_combout\,
	cout => \inst|Add0~32\);

-- Location: LCCOMB_X114_Y15_N4
\inst|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~33_combout\ = (\inst|Mult0|mult_core|romout[0][21]~combout\ & ((GND) # (!\inst|Add0~32\))) # (!\inst|Mult0|mult_core|romout[0][21]~combout\ & (\inst|Add0~32\ $ (GND)))
-- \inst|Add0~34\ = CARRY((\inst|Mult0|mult_core|romout[0][21]~combout\) # (!\inst|Add0~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|mult_core|romout[0][21]~combout\,
	datad => VCC,
	cin => \inst|Add0~32\,
	combout => \inst|Add0~33_combout\,
	cout => \inst|Add0~34\);

-- Location: LCCOMB_X114_Y15_N6
\inst|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~35_combout\ = (\inst|Mult0|mult_core|romout[0][22]~6_combout\ & (\inst|Add0~34\ & VCC)) # (!\inst|Mult0|mult_core|romout[0][22]~6_combout\ & (!\inst|Add0~34\))
-- \inst|Add0~36\ = CARRY((!\inst|Mult0|mult_core|romout[0][22]~6_combout\ & !\inst|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|mult_core|romout[0][22]~6_combout\,
	datad => VCC,
	cin => \inst|Add0~34\,
	combout => \inst|Add0~35_combout\,
	cout => \inst|Add0~36\);

-- Location: LCCOMB_X114_Y15_N8
\inst|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~37_combout\ = (\inst|Mult0|mult_core|romout[0][23]~5_combout\ & ((GND) # (!\inst|Add0~36\))) # (!\inst|Mult0|mult_core|romout[0][23]~5_combout\ & (\inst|Add0~36\ $ (GND)))
-- \inst|Add0~38\ = CARRY((\inst|Mult0|mult_core|romout[0][23]~5_combout\) # (!\inst|Add0~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|mult_core|romout[0][23]~5_combout\,
	datad => VCC,
	cin => \inst|Add0~36\,
	combout => \inst|Add0~37_combout\,
	cout => \inst|Add0~38\);

-- Location: LCCOMB_X114_Y15_N10
\inst|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~39_combout\ = (\inst|Mult0|mult_core|romout[0][24]~4_combout\ & (\inst|Add0~38\ & VCC)) # (!\inst|Mult0|mult_core|romout[0][24]~4_combout\ & (!\inst|Add0~38\))
-- \inst|Add0~40\ = CARRY((!\inst|Mult0|mult_core|romout[0][24]~4_combout\ & !\inst|Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|mult_core|romout[0][24]~4_combout\,
	datad => VCC,
	cin => \inst|Add0~38\,
	combout => \inst|Add0~39_combout\,
	cout => \inst|Add0~40\);

-- Location: LCCOMB_X114_Y15_N12
\inst|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~41_combout\ = (\inst|Mult0|mult_core|romout[0][25]~3_combout\ & ((GND) # (!\inst|Add0~40\))) # (!\inst|Mult0|mult_core|romout[0][25]~3_combout\ & (\inst|Add0~40\ $ (GND)))
-- \inst|Add0~42\ = CARRY((\inst|Mult0|mult_core|romout[0][25]~3_combout\) # (!\inst|Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|mult_core|romout[0][25]~3_combout\,
	datad => VCC,
	cin => \inst|Add0~40\,
	combout => \inst|Add0~41_combout\,
	cout => \inst|Add0~42\);

-- Location: LCCOMB_X114_Y15_N14
\inst|Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~43_combout\ = (\inst|Mult0|mult_core|romout[0][26]~2_combout\ & (\inst|Add0~42\ & VCC)) # (!\inst|Mult0|mult_core|romout[0][26]~2_combout\ & (!\inst|Add0~42\))
-- \inst|Add0~44\ = CARRY((!\inst|Mult0|mult_core|romout[0][26]~2_combout\ & !\inst|Add0~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|mult_core|romout[0][26]~2_combout\,
	datad => VCC,
	cin => \inst|Add0~42\,
	combout => \inst|Add0~43_combout\,
	cout => \inst|Add0~44\);

-- Location: LCCOMB_X114_Y15_N16
\inst|Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~45_combout\ = (\inst|Mult0|mult_core|romout[0][27]~1_combout\ & ((GND) # (!\inst|Add0~44\))) # (!\inst|Mult0|mult_core|romout[0][27]~1_combout\ & (\inst|Add0~44\ $ (GND)))
-- \inst|Add0~46\ = CARRY((\inst|Mult0|mult_core|romout[0][27]~1_combout\) # (!\inst|Add0~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|mult_core|romout[0][27]~1_combout\,
	datad => VCC,
	cin => \inst|Add0~44\,
	combout => \inst|Add0~45_combout\,
	cout => \inst|Add0~46\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X113_Y16_N2
\inst|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst|s_counter\(0) $ (VCC)
-- \inst|Add1~1\ = CARRY(\inst|s_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(0),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X112_Y16_N6
\inst|s_counter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~17_combout\ = (!\SW[6]~input_o\ & ((\inst|Add1~0_combout\) # (\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~0_combout\,
	datac => \SW[6]~input_o\,
	datad => \SW[5]~input_o\,
	combout => \inst|s_counter~17_combout\);

-- Location: LCCOMB_X111_Y15_N10
\inst|s_counter[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[0]~18_combout\ = (\SW[6]~input_o\) # ((\SW[4]~input_o\ & !\inst|s_cntZero~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[6]~input_o\,
	datad => \inst|s_cntZero~10_combout\,
	combout => \inst|s_counter[0]~18_combout\);

-- Location: FF_X112_Y16_N7
\inst|s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter~17_combout\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(0));

-- Location: LCCOMB_X113_Y16_N4
\inst|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|s_counter\(1) & (\inst|Add1~1\ & VCC)) # (!\inst|s_counter\(1) & (!\inst|Add1~1\))
-- \inst|Add1~3\ = CARRY((!\inst|s_counter\(1) & !\inst|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(1),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X113_Y16_N0
\inst|s_counter~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~19_combout\ = (!\SW[6]~input_o\ & ((\inst|Add1~2_combout\) # (\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[6]~input_o\,
	datac => \inst|Add1~2_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst|s_counter~19_combout\);

-- Location: FF_X113_Y16_N1
\inst|s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter~19_combout\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(1));

-- Location: LCCOMB_X113_Y16_N6
\inst|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|s_counter\(2) & ((GND) # (!\inst|Add1~3\))) # (!\inst|s_counter\(2) & (\inst|Add1~3\ $ (GND)))
-- \inst|Add1~5\ = CARRY((\inst|s_counter\(2)) # (!\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(2),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X112_Y16_N28
\inst|s_counter~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~20_combout\ = (!\SW[6]~input_o\ & ((\SW[5]~input_o\) # (\inst|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \inst|Add1~4_combout\,
	combout => \inst|s_counter~20_combout\);

-- Location: FF_X112_Y16_N29
\inst|s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter~20_combout\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(2));

-- Location: LCCOMB_X113_Y16_N8
\inst|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|s_counter\(3) & (\inst|Add1~5\ & VCC)) # (!\inst|s_counter\(3) & (!\inst|Add1~5\))
-- \inst|Add1~7\ = CARRY((!\inst|s_counter\(3) & !\inst|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(3),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X112_Y16_N16
\inst|s_counter~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~21_combout\ = (!\SW[6]~input_o\ & ((\inst|Add1~6_combout\) # (\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \inst|Add1~6_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst|s_counter~21_combout\);

-- Location: FF_X112_Y16_N17
\inst|s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter~21_combout\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(3));

-- Location: LCCOMB_X113_Y16_N10
\inst|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|s_counter\(4) & ((GND) # (!\inst|Add1~7\))) # (!\inst|s_counter\(4) & (\inst|Add1~7\ $ (GND)))
-- \inst|Add1~9\ = CARRY((\inst|s_counter\(4)) # (!\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(4),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X112_Y16_N18
\inst|s_counter~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~22_combout\ = (!\SW[6]~input_o\ & ((\inst|Add1~8_combout\) # (\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \inst|Add1~8_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst|s_counter~22_combout\);

-- Location: FF_X112_Y16_N19
\inst|s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter~22_combout\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(4));

-- Location: LCCOMB_X113_Y16_N12
\inst|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst|s_counter\(5) & (\inst|Add1~9\ & VCC)) # (!\inst|s_counter\(5) & (!\inst|Add1~9\))
-- \inst|Add1~11\ = CARRY((!\inst|s_counter\(5) & !\inst|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(5),
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: LCCOMB_X112_Y16_N12
\inst|s_counter~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~23_combout\ = (!\SW[6]~input_o\ & ((\inst|Add1~10_combout\) # (\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \inst|Add1~10_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst|s_counter~23_combout\);

-- Location: FF_X112_Y16_N13
\inst|s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter~23_combout\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(5));

-- Location: LCCOMB_X113_Y16_N14
\inst|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = (\inst|s_counter\(6) & ((GND) # (!\inst|Add1~11\))) # (!\inst|s_counter\(6) & (\inst|Add1~11\ $ (GND)))
-- \inst|Add1~13\ = CARRY((\inst|s_counter\(6)) # (!\inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(6),
	datad => VCC,
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\,
	cout => \inst|Add1~13\);

-- Location: LCCOMB_X112_Y16_N26
\inst|s_counter~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~24_combout\ = (!\SW[6]~input_o\ & ((\inst|Add1~12_combout\) # (\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[6]~input_o\,
	datac => \inst|Add1~12_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst|s_counter~24_combout\);

-- Location: FF_X112_Y16_N27
\inst|s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter~24_combout\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(6));

-- Location: LCCOMB_X113_Y16_N16
\inst|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = (\inst|s_counter\(7) & (\inst|Add1~13\ & VCC)) # (!\inst|s_counter\(7) & (!\inst|Add1~13\))
-- \inst|Add1~15\ = CARRY((!\inst|s_counter\(7) & !\inst|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(7),
	datad => VCC,
	cin => \inst|Add1~13\,
	combout => \inst|Add1~14_combout\,
	cout => \inst|Add1~15\);

-- Location: LCCOMB_X114_Y16_N0
\inst|s_counter~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter~25_combout\ = (\SW[5]~input_o\ & (!\SW[0]~input_o\)) # (!\SW[5]~input_o\ & ((\inst|Add1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \SW[0]~input_o\,
	datad => \inst|Add1~14_combout\,
	combout => \inst|s_counter~25_combout\);

-- Location: FF_X114_Y16_N1
\inst|s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter~25_combout\,
	asdata => \SW[0]~input_o\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(7));

-- Location: LCCOMB_X113_Y16_N18
\inst|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~16_combout\ = (\inst|s_counter\(8) & ((GND) # (!\inst|Add1~15\))) # (!\inst|s_counter\(8) & (\inst|Add1~15\ $ (GND)))
-- \inst|Add1~17\ = CARRY((\inst|s_counter\(8)) # (!\inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(8),
	datad => VCC,
	cin => \inst|Add1~15\,
	combout => \inst|Add1~16_combout\,
	cout => \inst|Add1~17\);

-- Location: LCCOMB_X114_Y16_N6
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\SW[5]~input_o\ & ((\inst|Add0~2_combout\))) # (!\SW[5]~input_o\ & (\inst|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst|Add1~16_combout\,
	datad => \inst|Add0~2_combout\,
	combout => \inst|Add0~4_combout\);

-- Location: FF_X114_Y16_N7
\inst|s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|Add0~4_combout\,
	asdata => \SW[1]~input_o\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(8));

-- Location: LCCOMB_X113_Y16_N20
\inst|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~18_combout\ = (\inst|s_counter\(9) & (\inst|Add1~17\ & VCC)) # (!\inst|s_counter\(9) & (!\inst|Add1~17\))
-- \inst|Add1~19\ = CARRY((!\inst|s_counter\(9) & !\inst|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(9),
	datad => VCC,
	cin => \inst|Add1~17\,
	combout => \inst|Add1~18_combout\,
	cout => \inst|Add1~19\);

-- Location: LCCOMB_X114_Y16_N4
\inst|Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~7_combout\ = (\SW[5]~input_o\ & ((\inst|Add0~5_combout\))) # (!\SW[5]~input_o\ & (\inst|Add1~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst|Add1~18_combout\,
	datad => \inst|Add0~5_combout\,
	combout => \inst|Add0~7_combout\);

-- Location: FF_X114_Y16_N5
\inst|s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|Add0~7_combout\,
	asdata => \SW[2]~input_o\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(9));

-- Location: LCCOMB_X113_Y16_N22
\inst|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~20_combout\ = (\inst|s_counter\(10) & ((GND) # (!\inst|Add1~19\))) # (!\inst|s_counter\(10) & (\inst|Add1~19\ $ (GND)))
-- \inst|Add1~21\ = CARRY((\inst|s_counter\(10)) # (!\inst|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(10),
	datad => VCC,
	cin => \inst|Add1~19\,
	combout => \inst|Add1~20_combout\,
	cout => \inst|Add1~21\);

-- Location: LCCOMB_X114_Y16_N2
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\SW[5]~input_o\ & (\inst|Add0~8_combout\)) # (!\SW[5]~input_o\ & ((\inst|Add1~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst|Add0~8_combout\,
	datad => \inst|Add1~20_combout\,
	combout => \inst|Add0~10_combout\);

-- Location: FF_X114_Y16_N3
\inst|s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|Add0~10_combout\,
	asdata => \SW[3]~input_o\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(10));

-- Location: LCCOMB_X113_Y16_N24
\inst|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~22_combout\ = (\inst|s_counter\(11) & (\inst|Add1~21\ & VCC)) # (!\inst|s_counter\(11) & (!\inst|Add1~21\))
-- \inst|Add1~23\ = CARRY((!\inst|s_counter\(11) & !\inst|Add1~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(11),
	datad => VCC,
	cin => \inst|Add1~21\,
	combout => \inst|Add1~22_combout\,
	cout => \inst|Add1~23\);

-- Location: LCCOMB_X112_Y16_N10
\inst|Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~13_combout\ = (\SW[5]~input_o\ & (\inst|Add0~11_combout\)) # (!\SW[5]~input_o\ & ((\inst|Add1~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[5]~input_o\,
	datac => \inst|Add0~11_combout\,
	datad => \inst|Add1~22_combout\,
	combout => \inst|Add0~13_combout\);

-- Location: FF_X112_Y16_N11
\inst|s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|Add0~13_combout\,
	sclr => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(11));

-- Location: LCCOMB_X113_Y16_N26
\inst|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~24_combout\ = (\inst|s_counter\(12) & ((GND) # (!\inst|Add1~23\))) # (!\inst|s_counter\(12) & (\inst|Add1~23\ $ (GND)))
-- \inst|Add1~25\ = CARRY((\inst|s_counter\(12)) # (!\inst|Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(12),
	datad => VCC,
	cin => \inst|Add1~23\,
	combout => \inst|Add1~24_combout\,
	cout => \inst|Add1~25\);

-- Location: LCCOMB_X112_Y15_N0
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\SW[5]~input_o\ & (\inst|Add0~14_combout\)) # (!\SW[5]~input_o\ & ((\inst|Add1~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~14_combout\,
	datab => \SW[5]~input_o\,
	datad => \inst|Add1~24_combout\,
	combout => \inst|Add0~16_combout\);

-- Location: FF_X112_Y15_N1
\inst|s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|Add0~16_combout\,
	asdata => \SW[0]~input_o\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(12));

-- Location: LCCOMB_X113_Y16_N28
\inst|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~26_combout\ = (\inst|s_counter\(13) & (\inst|Add1~25\ & VCC)) # (!\inst|s_counter\(13) & (!\inst|Add1~25\))
-- \inst|Add1~27\ = CARRY((!\inst|s_counter\(13) & !\inst|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(13),
	datad => VCC,
	cin => \inst|Add1~25\,
	combout => \inst|Add1~26_combout\,
	cout => \inst|Add1~27\);

-- Location: LCCOMB_X112_Y15_N14
\inst|s_counter[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[13]~0_combout\ = (\SW[5]~input_o\ & (\inst|Add0~17_combout\)) # (!\SW[5]~input_o\ & ((\inst|Add1~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~17_combout\,
	datab => \SW[5]~input_o\,
	datad => \inst|Add1~26_combout\,
	combout => \inst|s_counter[13]~0_combout\);

-- Location: FF_X112_Y15_N15
\inst|s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter[13]~0_combout\,
	asdata => \inst|Mult0|mult_core|romout[0][13]~11_combout\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(13));

-- Location: LCCOMB_X113_Y16_N30
\inst|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~28_combout\ = (\inst|s_counter\(14) & ((GND) # (!\inst|Add1~27\))) # (!\inst|s_counter\(14) & (\inst|Add1~27\ $ (GND)))
-- \inst|Add1~29\ = CARRY((\inst|s_counter\(14)) # (!\inst|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(14),
	datad => VCC,
	cin => \inst|Add1~27\,
	combout => \inst|Add1~28_combout\,
	cout => \inst|Add1~29\);

-- Location: LCCOMB_X111_Y15_N0
\inst|s_counter[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[14]~1_combout\ = (\SW[5]~input_o\ & (\inst|Add0~19_combout\)) # (!\SW[5]~input_o\ & ((\inst|Add1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~19_combout\,
	datab => \SW[5]~input_o\,
	datad => \inst|Add1~28_combout\,
	combout => \inst|s_counter[14]~1_combout\);

-- Location: LCCOMB_X111_Y15_N8
\inst|Mult0|mult_core|romout[0][14]~10_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][14]~10_wirecell_combout\ = !\inst|Mult0|mult_core|romout[0][14]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mult0|mult_core|romout[0][14]~10_combout\,
	combout => \inst|Mult0|mult_core|romout[0][14]~10_wirecell_combout\);

-- Location: FF_X111_Y15_N1
\inst|s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter[14]~1_combout\,
	asdata => \inst|Mult0|mult_core|romout[0][14]~10_wirecell_combout\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(14));

-- Location: LCCOMB_X113_Y15_N0
\inst|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~30_combout\ = (\inst|s_counter\(15) & (\inst|Add1~29\ & VCC)) # (!\inst|s_counter\(15) & (!\inst|Add1~29\))
-- \inst|Add1~31\ = CARRY((!\inst|s_counter\(15) & !\inst|Add1~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(15),
	datad => VCC,
	cin => \inst|Add1~29\,
	combout => \inst|Add1~30_combout\,
	cout => \inst|Add1~31\);

-- Location: LCCOMB_X111_Y15_N14
\inst|s_counter[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[15]~2_combout\ = (\SW[5]~input_o\ & (\inst|Add0~21_combout\)) # (!\SW[5]~input_o\ & ((\inst|Add1~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~21_combout\,
	datab => \inst|Add1~30_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst|s_counter[15]~2_combout\);

-- Location: LCCOMB_X111_Y15_N26
\inst|Mult0|mult_core|romout[0][15]~9_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][15]~9_wirecell_combout\ = !\inst|Mult0|mult_core|romout[0][15]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mult0|mult_core|romout[0][15]~9_combout\,
	combout => \inst|Mult0|mult_core|romout[0][15]~9_wirecell_combout\);

-- Location: FF_X111_Y15_N15
\inst|s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter[15]~2_combout\,
	asdata => \inst|Mult0|mult_core|romout[0][15]~9_wirecell_combout\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(15));

-- Location: LCCOMB_X113_Y15_N2
\inst|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~32_combout\ = (\inst|s_counter\(16) & ((GND) # (!\inst|Add1~31\))) # (!\inst|s_counter\(16) & (\inst|Add1~31\ $ (GND)))
-- \inst|Add1~33\ = CARRY((\inst|s_counter\(16)) # (!\inst|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(16),
	datad => VCC,
	cin => \inst|Add1~31\,
	combout => \inst|Add1~32_combout\,
	cout => \inst|Add1~33\);

-- Location: LCCOMB_X111_Y15_N12
\inst|s_counter[16]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[16]~3_combout\ = (\SW[5]~input_o\ & (\inst|Add0~23_combout\)) # (!\SW[5]~input_o\ & ((\inst|Add1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~23_combout\,
	datab => \inst|Add1~32_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst|s_counter[16]~3_combout\);

-- Location: FF_X111_Y15_N13
\inst|s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter[16]~3_combout\,
	asdata => \inst|Mult0|mult_core|romout[0][24]~4_combout\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(16));

-- Location: LCCOMB_X113_Y15_N4
\inst|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~34_combout\ = (\inst|s_counter\(17) & (\inst|Add1~33\ & VCC)) # (!\inst|s_counter\(17) & (!\inst|Add1~33\))
-- \inst|Add1~35\ = CARRY((!\inst|s_counter\(17) & !\inst|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(17),
	datad => VCC,
	cin => \inst|Add1~33\,
	combout => \inst|Add1~34_combout\,
	cout => \inst|Add1~35\);

-- Location: LCCOMB_X111_Y15_N6
\inst|s_counter[17]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[17]~4_combout\ = (\SW[5]~input_o\ & (\inst|Add0~25_combout\)) # (!\SW[5]~input_o\ & ((\inst|Add1~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~25_combout\,
	datab => \SW[5]~input_o\,
	datad => \inst|Add1~34_combout\,
	combout => \inst|s_counter[17]~4_combout\);

-- Location: FF_X111_Y15_N7
\inst|s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter[17]~4_combout\,
	asdata => \inst|Mult0|mult_core|romout[0][25]~3_combout\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(17));

-- Location: LCCOMB_X113_Y15_N6
\inst|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~36_combout\ = (\inst|s_counter\(18) & ((GND) # (!\inst|Add1~35\))) # (!\inst|s_counter\(18) & (\inst|Add1~35\ $ (GND)))
-- \inst|Add1~37\ = CARRY((\inst|s_counter\(18)) # (!\inst|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(18),
	datad => VCC,
	cin => \inst|Add1~35\,
	combout => \inst|Add1~36_combout\,
	cout => \inst|Add1~37\);

-- Location: LCCOMB_X111_Y15_N16
\inst|s_counter[18]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[18]~5_combout\ = (\SW[5]~input_o\ & (\inst|Add0~27_combout\)) # (!\SW[5]~input_o\ & ((\inst|Add1~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~27_combout\,
	datab => \SW[5]~input_o\,
	datad => \inst|Add1~36_combout\,
	combout => \inst|s_counter[18]~5_combout\);

-- Location: FF_X111_Y15_N17
\inst|s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter[18]~5_combout\,
	asdata => \inst|Mult0|mult_core|romout[0][26]~2_combout\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(18));

-- Location: LCCOMB_X113_Y15_N8
\inst|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~38_combout\ = (\inst|s_counter\(19) & (\inst|Add1~37\ & VCC)) # (!\inst|s_counter\(19) & (!\inst|Add1~37\))
-- \inst|Add1~39\ = CARRY((!\inst|s_counter\(19) & !\inst|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(19),
	datad => VCC,
	cin => \inst|Add1~37\,
	combout => \inst|Add1~38_combout\,
	cout => \inst|Add1~39\);

-- Location: LCCOMB_X111_Y15_N30
\inst|s_counter[19]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[19]~6_combout\ = (\SW[5]~input_o\ & ((\inst|Add0~29_combout\))) # (!\SW[5]~input_o\ & (\inst|Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~38_combout\,
	datab => \SW[5]~input_o\,
	datad => \inst|Add0~29_combout\,
	combout => \inst|s_counter[19]~6_combout\);

-- Location: FF_X111_Y15_N31
\inst|s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter[19]~6_combout\,
	asdata => \inst|Mult0|mult_core|romout[0][19]~8_combout\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(19));

-- Location: LCCOMB_X113_Y15_N10
\inst|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~40_combout\ = (\inst|s_counter\(20) & ((GND) # (!\inst|Add1~39\))) # (!\inst|s_counter\(20) & (\inst|Add1~39\ $ (GND)))
-- \inst|Add1~41\ = CARRY((\inst|s_counter\(20)) # (!\inst|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(20),
	datad => VCC,
	cin => \inst|Add1~39\,
	combout => \inst|Add1~40_combout\,
	cout => \inst|Add1~41\);

-- Location: LCCOMB_X111_Y15_N24
\inst|s_counter[20]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[20]~7_combout\ = (\SW[5]~input_o\ & (\inst|Add0~31_combout\)) # (!\SW[5]~input_o\ & ((\inst|Add1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~31_combout\,
	datab => \SW[5]~input_o\,
	datad => \inst|Add1~40_combout\,
	combout => \inst|s_counter[20]~7_combout\);

-- Location: FF_X111_Y15_N25
\inst|s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter[20]~7_combout\,
	asdata => \inst|Mult0|mult_core|romout[0][20]~7_combout\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(20));

-- Location: LCCOMB_X113_Y15_N12
\inst|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~42_combout\ = (\inst|s_counter\(21) & (\inst|Add1~41\ & VCC)) # (!\inst|s_counter\(21) & (!\inst|Add1~41\))
-- \inst|Add1~43\ = CARRY((!\inst|s_counter\(21) & !\inst|Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(21),
	datad => VCC,
	cin => \inst|Add1~41\,
	combout => \inst|Add1~42_combout\,
	cout => \inst|Add1~43\);

-- Location: LCCOMB_X112_Y15_N20
\inst|s_counter[21]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[21]~8_combout\ = (\SW[5]~input_o\ & ((\inst|Add0~33_combout\))) # (!\SW[5]~input_o\ & (\inst|Add1~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst|Add1~42_combout\,
	datad => \inst|Add0~33_combout\,
	combout => \inst|s_counter[21]~8_combout\);

-- Location: FF_X112_Y15_N21
\inst|s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter[21]~8_combout\,
	asdata => \inst|Mult0|mult_core|romout[0][21]~combout\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(21));

-- Location: LCCOMB_X113_Y15_N14
\inst|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~44_combout\ = (\inst|s_counter\(22) & ((GND) # (!\inst|Add1~43\))) # (!\inst|s_counter\(22) & (\inst|Add1~43\ $ (GND)))
-- \inst|Add1~45\ = CARRY((\inst|s_counter\(22)) # (!\inst|Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(22),
	datad => VCC,
	cin => \inst|Add1~43\,
	combout => \inst|Add1~44_combout\,
	cout => \inst|Add1~45\);

-- Location: LCCOMB_X112_Y15_N6
\inst|s_counter[22]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[22]~9_combout\ = (\SW[5]~input_o\ & (\inst|Add0~35_combout\)) # (!\SW[5]~input_o\ & ((\inst|Add1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~35_combout\,
	datab => \SW[5]~input_o\,
	datad => \inst|Add1~44_combout\,
	combout => \inst|s_counter[22]~9_combout\);

-- Location: FF_X112_Y15_N7
\inst|s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter[22]~9_combout\,
	asdata => \inst|Mult0|mult_core|romout[0][22]~6_combout\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(22));

-- Location: LCCOMB_X113_Y15_N16
\inst|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~46_combout\ = (\inst|s_counter\(23) & (\inst|Add1~45\ & VCC)) # (!\inst|s_counter\(23) & (!\inst|Add1~45\))
-- \inst|Add1~47\ = CARRY((!\inst|s_counter\(23) & !\inst|Add1~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(23),
	datad => VCC,
	cin => \inst|Add1~45\,
	combout => \inst|Add1~46_combout\,
	cout => \inst|Add1~47\);

-- Location: LCCOMB_X112_Y15_N12
\inst|s_counter[23]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[23]~10_combout\ = (\SW[5]~input_o\ & (\inst|Add0~37_combout\)) # (!\SW[5]~input_o\ & ((\inst|Add1~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~37_combout\,
	datab => \SW[5]~input_o\,
	datad => \inst|Add1~46_combout\,
	combout => \inst|s_counter[23]~10_combout\);

-- Location: FF_X112_Y15_N13
\inst|s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter[23]~10_combout\,
	asdata => \inst|Mult0|mult_core|romout[0][23]~5_combout\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(23));

-- Location: LCCOMB_X113_Y15_N18
\inst|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~48_combout\ = (\inst|s_counter\(24) & ((GND) # (!\inst|Add1~47\))) # (!\inst|s_counter\(24) & (\inst|Add1~47\ $ (GND)))
-- \inst|Add1~49\ = CARRY((\inst|s_counter\(24)) # (!\inst|Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(24),
	datad => VCC,
	cin => \inst|Add1~47\,
	combout => \inst|Add1~48_combout\,
	cout => \inst|Add1~49\);

-- Location: LCCOMB_X112_Y15_N22
\inst|s_counter[24]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[24]~11_combout\ = (\SW[5]~input_o\ & (\inst|Add0~39_combout\)) # (!\SW[5]~input_o\ & ((\inst|Add1~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~39_combout\,
	datab => \SW[5]~input_o\,
	datad => \inst|Add1~48_combout\,
	combout => \inst|s_counter[24]~11_combout\);

-- Location: FF_X112_Y15_N23
\inst|s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter[24]~11_combout\,
	asdata => \inst|Mult0|mult_core|romout[0][24]~4_combout\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(24));

-- Location: LCCOMB_X113_Y15_N20
\inst|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~50_combout\ = (\inst|s_counter\(25) & (\inst|Add1~49\ & VCC)) # (!\inst|s_counter\(25) & (!\inst|Add1~49\))
-- \inst|Add1~51\ = CARRY((!\inst|s_counter\(25) & !\inst|Add1~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(25),
	datad => VCC,
	cin => \inst|Add1~49\,
	combout => \inst|Add1~50_combout\,
	cout => \inst|Add1~51\);

-- Location: LCCOMB_X112_Y15_N16
\inst|s_counter[25]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[25]~12_combout\ = (\SW[5]~input_o\ & ((\inst|Add0~41_combout\))) # (!\SW[5]~input_o\ & (\inst|Add1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~50_combout\,
	datab => \SW[5]~input_o\,
	datad => \inst|Add0~41_combout\,
	combout => \inst|s_counter[25]~12_combout\);

-- Location: FF_X112_Y15_N17
\inst|s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter[25]~12_combout\,
	asdata => \inst|Mult0|mult_core|romout[0][25]~3_combout\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(25));

-- Location: LCCOMB_X113_Y15_N22
\inst|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~52_combout\ = (\inst|s_counter\(26) & ((GND) # (!\inst|Add1~51\))) # (!\inst|s_counter\(26) & (\inst|Add1~51\ $ (GND)))
-- \inst|Add1~53\ = CARRY((\inst|s_counter\(26)) # (!\inst|Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(26),
	datad => VCC,
	cin => \inst|Add1~51\,
	combout => \inst|Add1~52_combout\,
	cout => \inst|Add1~53\);

-- Location: LCCOMB_X112_Y15_N10
\inst|s_counter[26]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[26]~13_combout\ = (\SW[5]~input_o\ & (\inst|Add0~43_combout\)) # (!\SW[5]~input_o\ & ((\inst|Add1~52_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~43_combout\,
	datab => \SW[5]~input_o\,
	datad => \inst|Add1~52_combout\,
	combout => \inst|s_counter[26]~13_combout\);

-- Location: FF_X112_Y15_N11
\inst|s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter[26]~13_combout\,
	asdata => \inst|Mult0|mult_core|romout[0][26]~2_combout\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(26));

-- Location: LCCOMB_X113_Y15_N24
\inst|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~54_combout\ = (\inst|s_counter\(27) & (\inst|Add1~53\ & VCC)) # (!\inst|s_counter\(27) & (!\inst|Add1~53\))
-- \inst|Add1~55\ = CARRY((!\inst|s_counter\(27) & !\inst|Add1~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(27),
	datad => VCC,
	cin => \inst|Add1~53\,
	combout => \inst|Add1~54_combout\,
	cout => \inst|Add1~55\);

-- Location: LCCOMB_X114_Y15_N24
\inst|s_counter[27]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[27]~14_combout\ = (\SW[5]~input_o\ & (\inst|Add0~45_combout\)) # (!\SW[5]~input_o\ & ((\inst|Add1~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst|Add0~45_combout\,
	datad => \inst|Add1~54_combout\,
	combout => \inst|s_counter[27]~14_combout\);

-- Location: FF_X114_Y15_N25
\inst|s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter[27]~14_combout\,
	asdata => \inst|Mult0|mult_core|romout[0][27]~1_combout\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(27));

-- Location: LCCOMB_X113_Y15_N26
\inst|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~56_combout\ = (\inst|s_counter\(28) & ((GND) # (!\inst|Add1~55\))) # (!\inst|s_counter\(28) & (\inst|Add1~55\ $ (GND)))
-- \inst|Add1~57\ = CARRY((\inst|s_counter\(28)) # (!\inst|Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(28),
	datad => VCC,
	cin => \inst|Add1~55\,
	combout => \inst|Add1~56_combout\,
	cout => \inst|Add1~57\);

-- Location: LCCOMB_X114_Y14_N22
\inst|Mult0|mult_core|romout[0][28]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][28]~0_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ & ((!\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (\SW[3]~input_o\ & ((!\SW[0]~input_o\) # (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][28]~0_combout\);

-- Location: LCCOMB_X114_Y15_N18
\inst|Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~47_combout\ = (\inst|Mult0|mult_core|romout[0][28]~0_combout\ & (\inst|Add0~46\ & VCC)) # (!\inst|Mult0|mult_core|romout[0][28]~0_combout\ & (!\inst|Add0~46\))
-- \inst|Add0~48\ = CARRY((!\inst|Mult0|mult_core|romout[0][28]~0_combout\ & !\inst|Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mult0|mult_core|romout[0][28]~0_combout\,
	datad => VCC,
	cin => \inst|Add0~46\,
	combout => \inst|Add0~47_combout\,
	cout => \inst|Add0~48\);

-- Location: LCCOMB_X114_Y15_N30
\inst|s_counter[28]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[28]~15_combout\ = (\SW[5]~input_o\ & ((\inst|Add0~47_combout\))) # (!\SW[5]~input_o\ & (\inst|Add1~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~56_combout\,
	datab => \inst|Add0~47_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst|s_counter[28]~15_combout\);

-- Location: FF_X114_Y15_N31
\inst|s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter[28]~15_combout\,
	asdata => \inst|Mult0|mult_core|romout[0][28]~0_combout\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(28));

-- Location: LCCOMB_X114_Y14_N24
\inst|Mult0|mult_core|romout[0][29]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mult0|mult_core|romout[0][29]~combout\ = (\SW[3]~input_o\ & ((\SW[2]~input_o\) # ((\SW[1]~input_o\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \inst|Mult0|mult_core|romout[0][29]~combout\);

-- Location: LCCOMB_X114_Y15_N20
\inst|Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~49_combout\ = (\inst|Mult0|mult_core|romout[0][29]~combout\ & ((GND) # (!\inst|Add0~48\))) # (!\inst|Mult0|mult_core|romout[0][29]~combout\ & (\inst|Add0~48\ $ (GND)))
-- \inst|Add0~50\ = CARRY((\inst|Mult0|mult_core|romout[0][29]~combout\) # (!\inst|Add0~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mult0|mult_core|romout[0][29]~combout\,
	datad => VCC,
	cin => \inst|Add0~48\,
	combout => \inst|Add0~49_combout\,
	cout => \inst|Add0~50\);

-- Location: LCCOMB_X113_Y15_N28
\inst|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~58_combout\ = (\inst|s_counter\(29) & (\inst|Add1~57\ & VCC)) # (!\inst|s_counter\(29) & (!\inst|Add1~57\))
-- \inst|Add1~59\ = CARRY((!\inst|s_counter\(29) & !\inst|Add1~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(29),
	datad => VCC,
	cin => \inst|Add1~57\,
	combout => \inst|Add1~58_combout\,
	cout => \inst|Add1~59\);

-- Location: LCCOMB_X114_Y15_N28
\inst|s_counter[29]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_counter[29]~16_combout\ = (\SW[5]~input_o\ & (\inst|Add0~49_combout\)) # (!\SW[5]~input_o\ & ((\inst|Add1~58_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[5]~input_o\,
	datab => \inst|Add0~49_combout\,
	datad => \inst|Add1~58_combout\,
	combout => \inst|s_counter[29]~16_combout\);

-- Location: FF_X114_Y15_N29
\inst|s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_counter[29]~16_combout\,
	asdata => \inst|Mult0|mult_core|romout[0][29]~combout\,
	sload => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(29));

-- Location: LCCOMB_X114_Y15_N26
\inst|s_cntZero~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~9_combout\ = (!\inst|s_counter\(28) & (!\inst|s_counter\(27) & (!\inst|s_counter\(26) & !\inst|s_counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(28),
	datab => \inst|s_counter\(27),
	datac => \inst|s_counter\(26),
	datad => \inst|s_counter\(29),
	combout => \inst|s_cntZero~9_combout\);

-- Location: LCCOMB_X112_Y15_N24
\inst|s_cntZero~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~8_combout\ = (!\inst|s_counter\(22) & (!\inst|s_counter\(25) & (!\inst|s_counter\(24) & !\inst|s_counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(22),
	datab => \inst|s_counter\(25),
	datac => \inst|s_counter\(24),
	datad => \inst|s_counter\(23),
	combout => \inst|s_cntZero~8_combout\);

-- Location: LCCOMB_X112_Y16_N22
\inst|s_cntZero~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~0_combout\ = (!\inst|s_counter\(0) & (!\SW[5]~input_o\ & (!\inst|s_counter\(1) & !\inst|s_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(0),
	datab => \SW[5]~input_o\,
	datac => \inst|s_counter\(1),
	datad => \inst|s_counter\(2),
	combout => \inst|s_cntZero~0_combout\);

-- Location: LCCOMB_X112_Y16_N20
\inst|s_cntZero~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~1_combout\ = (!\inst|s_counter\(5) & (!\inst|s_counter\(4) & (!\inst|s_counter\(6) & !\inst|s_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(5),
	datab => \inst|s_counter\(4),
	datac => \inst|s_counter\(6),
	datad => \inst|s_counter\(3),
	combout => \inst|s_cntZero~1_combout\);

-- Location: LCCOMB_X114_Y15_N22
\inst|Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~51_combout\ = !\inst|Add0~50\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add0~50\,
	combout => \inst|Add0~51_combout\);

-- Location: LCCOMB_X113_Y15_N30
\inst|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add1~60_combout\ = \inst|Add1~59\ $ (\inst|s_counter\(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|s_counter\(30),
	cin => \inst|Add1~59\,
	combout => \inst|Add1~60_combout\);

-- Location: LCCOMB_X112_Y16_N24
\inst|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~53_combout\ = (\SW[5]~input_o\ & (\inst|Add0~51_combout\)) # (!\SW[5]~input_o\ & ((\inst|Add1~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~51_combout\,
	datac => \inst|Add1~60_combout\,
	datad => \SW[5]~input_o\,
	combout => \inst|Add0~53_combout\);

-- Location: FF_X112_Y16_N25
\inst|s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|Add0~53_combout\,
	sclr => \SW[6]~input_o\,
	ena => \inst|s_counter[0]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_counter\(30));

-- Location: LCCOMB_X112_Y16_N8
\inst|s_cntZero~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~3_combout\ = (!\inst|s_counter\(11) & (!\inst|s_counter\(12) & (!\inst|s_counter\(30) & !\inst|s_counter\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(11),
	datab => \inst|s_counter\(12),
	datac => \inst|s_counter\(30),
	datad => \inst|s_counter\(13),
	combout => \inst|s_cntZero~3_combout\);

-- Location: LCCOMB_X112_Y16_N2
\inst|s_cntZero~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~2_combout\ = (!\inst|s_counter\(8) & (!\inst|s_counter\(9) & (!\inst|s_counter\(10) & !\inst|s_counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(8),
	datab => \inst|s_counter\(9),
	datac => \inst|s_counter\(10),
	datad => \inst|s_counter\(7),
	combout => \inst|s_cntZero~2_combout\);

-- Location: LCCOMB_X112_Y16_N30
\inst|s_cntZero~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~4_combout\ = (\inst|s_cntZero~0_combout\ & (\inst|s_cntZero~1_combout\ & (\inst|s_cntZero~3_combout\ & \inst|s_cntZero~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntZero~0_combout\,
	datab => \inst|s_cntZero~1_combout\,
	datac => \inst|s_cntZero~3_combout\,
	datad => \inst|s_cntZero~2_combout\,
	combout => \inst|s_cntZero~4_combout\);

-- Location: LCCOMB_X111_Y15_N22
\inst|s_cntZero~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~5_combout\ = (!\inst|s_counter\(17) & (!\inst|s_counter\(14) & (!\inst|s_counter\(15) & !\inst|s_counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(17),
	datab => \inst|s_counter\(14),
	datac => \inst|s_counter\(15),
	datad => \inst|s_counter\(16),
	combout => \inst|s_cntZero~5_combout\);

-- Location: LCCOMB_X111_Y15_N28
\inst|s_cntZero~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~6_combout\ = (!\inst|s_counter\(18) & !\inst|s_counter\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_counter\(18),
	datac => \inst|s_counter\(19),
	combout => \inst|s_cntZero~6_combout\);

-- Location: LCCOMB_X111_Y15_N18
\inst|s_cntZero~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~7_combout\ = (!\inst|s_counter\(21) & (!\inst|s_counter\(20) & (\inst|s_cntZero~5_combout\ & \inst|s_cntZero~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_counter\(21),
	datab => \inst|s_counter\(20),
	datac => \inst|s_cntZero~5_combout\,
	datad => \inst|s_cntZero~6_combout\,
	combout => \inst|s_cntZero~7_combout\);

-- Location: LCCOMB_X111_Y15_N20
\inst|s_cntZero~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~10_combout\ = (\inst|s_cntZero~9_combout\ & (\inst|s_cntZero~8_combout\ & (\inst|s_cntZero~4_combout\ & \inst|s_cntZero~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_cntZero~9_combout\,
	datab => \inst|s_cntZero~8_combout\,
	datac => \inst|s_cntZero~4_combout\,
	datad => \inst|s_cntZero~7_combout\,
	combout => \inst|s_cntZero~10_combout\);

-- Location: LCCOMB_X112_Y16_N0
\inst|s_cntZero~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_cntZero~11_combout\ = (\SW[4]~input_o\ & ((\inst|s_cntZero~10_combout\))) # (!\SW[4]~input_o\ & (\inst|s_cntZero~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \inst|s_cntZero~q\,
	datad => \inst|s_cntZero~10_combout\,
	combout => \inst|s_cntZero~11_combout\);

-- Location: FF_X112_Y16_N1
\inst|s_cntZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \inst|s_cntZero~11_combout\,
	sclr => \SW[6]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_cntZero~q\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;
END structure;



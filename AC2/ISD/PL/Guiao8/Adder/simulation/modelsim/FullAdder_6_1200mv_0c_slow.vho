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

-- DATE "12/10/2021 09:22:46"

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

ENTITY 	AddSub4 IS
    PORT (
	overflow : OUT std_logic;
	in02 : IN std_logic;
	Add_Sub : IN std_logic;
	in12 : IN std_logic;
	in01 : IN std_logic;
	in11 : IN std_logic;
	in00 : IN std_logic;
	in10 : IN std_logic;
	in03 : IN std_logic;
	in13 : IN std_logic;
	sum0 : OUT std_logic;
	sum1 : OUT std_logic;
	sum2 : OUT std_logic;
	sum3 : OUT std_logic
	);
END AddSub4;

-- Design Ports Information
-- overflow	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum0	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum1	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum2	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum3	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in03	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Add_Sub	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in02	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in01	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in10	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in00	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in11	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in12	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in13	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF AddSub4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_overflow : std_logic;
SIGNAL ww_in02 : std_logic;
SIGNAL ww_Add_Sub : std_logic;
SIGNAL ww_in12 : std_logic;
SIGNAL ww_in01 : std_logic;
SIGNAL ww_in11 : std_logic;
SIGNAL ww_in00 : std_logic;
SIGNAL ww_in10 : std_logic;
SIGNAL ww_in03 : std_logic;
SIGNAL ww_in13 : std_logic;
SIGNAL ww_sum0 : std_logic;
SIGNAL ww_sum1 : std_logic;
SIGNAL ww_sum2 : std_logic;
SIGNAL ww_sum3 : std_logic;
SIGNAL \overflow~output_o\ : std_logic;
SIGNAL \sum0~output_o\ : std_logic;
SIGNAL \sum1~output_o\ : std_logic;
SIGNAL \sum2~output_o\ : std_logic;
SIGNAL \sum3~output_o\ : std_logic;
SIGNAL \in03~input_o\ : std_logic;
SIGNAL \in13~input_o\ : std_logic;
SIGNAL \Add_Sub~input_o\ : std_logic;
SIGNAL \in11~input_o\ : std_logic;
SIGNAL \in01~input_o\ : std_logic;
SIGNAL \in00~input_o\ : std_logic;
SIGNAL \in10~input_o\ : std_logic;
SIGNAL \a0|inst11~combout\ : std_logic;
SIGNAL \a1|inst3~0_combout\ : std_logic;
SIGNAL \in12~input_o\ : std_logic;
SIGNAL \in02~input_o\ : std_logic;
SIGNAL \a2|inst3~0_combout\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \a0|inst~combout\ : std_logic;
SIGNAL \a1|inst1~combout\ : std_logic;
SIGNAL \a2|inst1~0_combout\ : std_logic;
SIGNAL \a3|inst1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

overflow <= ww_overflow;
ww_in02 <= in02;
ww_Add_Sub <= Add_Sub;
ww_in12 <= in12;
ww_in01 <= in01;
ww_in11 <= in11;
ww_in00 <= in00;
ww_in10 <= in10;
ww_in03 <= in03;
ww_in13 <= in13;
sum0 <= ww_sum0;
sum1 <= ww_sum1;
sum2 <= ww_sum2;
sum3 <= ww_sum3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y0_N2
\overflow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~0_combout\,
	devoe => ww_devoe,
	o => \overflow~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\sum0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a0|inst~combout\,
	devoe => ww_devoe,
	o => \sum0~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\sum1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a1|inst1~combout\,
	devoe => ww_devoe,
	o => \sum1~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\sum2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a2|inst1~0_combout\,
	devoe => ww_devoe,
	o => \sum2~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\sum3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \a3|inst1~0_combout\,
	devoe => ww_devoe,
	o => \sum3~output_o\);

-- Location: IOIBUF_X0_Y6_N22
\in03~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in03,
	o => \in03~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\in13~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in13,
	o => \in13~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\Add_Sub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Add_Sub,
	o => \Add_Sub~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\in11~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in11,
	o => \in11~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\in01~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in01,
	o => \in01~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\in00~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in00,
	o => \in00~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\in10~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in10,
	o => \in10~input_o\);

-- Location: LCCOMB_X7_Y4_N24
\a0|inst11\ : cycloneive_lcell_comb
-- Equation(s):
-- \a0|inst11~combout\ = (\in10~input_o\ & (\in00~input_o\ $ (\Add_Sub~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in00~input_o\,
	datac => \Add_Sub~input_o\,
	datad => \in10~input_o\,
	combout => \a0|inst11~combout\);

-- Location: LCCOMB_X7_Y4_N26
\a1|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a1|inst3~0_combout\ = (\in11~input_o\ & ((\a0|inst11~combout\) # (\in01~input_o\ $ (\Add_Sub~input_o\)))) # (!\in11~input_o\ & (\a0|inst11~combout\ & (\in01~input_o\ $ (\Add_Sub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in11~input_o\,
	datab => \in01~input_o\,
	datac => \Add_Sub~input_o\,
	datad => \a0|inst11~combout\,
	combout => \a1|inst3~0_combout\);

-- Location: IOIBUF_X0_Y8_N15
\in12~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in12,
	o => \in12~input_o\);

-- Location: IOIBUF_X7_Y24_N1
\in02~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in02,
	o => \in02~input_o\);

-- Location: LCCOMB_X7_Y4_N12
\a2|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a2|inst3~0_combout\ = (\a1|inst3~0_combout\ & ((\in12~input_o\) # (\Add_Sub~input_o\ $ (\in02~input_o\)))) # (!\a1|inst3~0_combout\ & (\in12~input_o\ & (\Add_Sub~input_o\ $ (\in02~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|inst3~0_combout\,
	datab => \in12~input_o\,
	datac => \Add_Sub~input_o\,
	datad => \in02~input_o\,
	combout => \a2|inst3~0_combout\);

-- Location: LCCOMB_X7_Y4_N6
\inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = (\in13~input_o\ & (!\a2|inst3~0_combout\ & (\in03~input_o\ $ (\Add_Sub~input_o\)))) # (!\in13~input_o\ & (\a2|inst3~0_combout\ & (\in03~input_o\ $ (!\Add_Sub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in03~input_o\,
	datab => \in13~input_o\,
	datac => \Add_Sub~input_o\,
	datad => \a2|inst3~0_combout\,
	combout => \inst4~0_combout\);

-- Location: LCCOMB_X7_Y4_N8
\a0|inst\ : cycloneive_lcell_comb
-- Equation(s):
-- \a0|inst~combout\ = \in00~input_o\ $ (\Add_Sub~input_o\ $ (\in10~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in00~input_o\,
	datac => \Add_Sub~input_o\,
	datad => \in10~input_o\,
	combout => \a0|inst~combout\);

-- Location: LCCOMB_X7_Y4_N10
\a1|inst1\ : cycloneive_lcell_comb
-- Equation(s):
-- \a1|inst1~combout\ = \in11~input_o\ $ (\in01~input_o\ $ (\Add_Sub~input_o\ $ (\a0|inst11~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in11~input_o\,
	datab => \in01~input_o\,
	datac => \Add_Sub~input_o\,
	datad => \a0|inst11~combout\,
	combout => \a1|inst1~combout\);

-- Location: LCCOMB_X7_Y4_N28
\a2|inst1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a2|inst1~0_combout\ = \a1|inst3~0_combout\ $ (\in12~input_o\ $ (\Add_Sub~input_o\ $ (\in02~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a1|inst3~0_combout\,
	datab => \in12~input_o\,
	datac => \Add_Sub~input_o\,
	datad => \in02~input_o\,
	combout => \a2|inst1~0_combout\);

-- Location: LCCOMB_X7_Y4_N14
\a3|inst1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a3|inst1~0_combout\ = \in03~input_o\ $ (\in13~input_o\ $ (\Add_Sub~input_o\ $ (\a2|inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \in03~input_o\,
	datab => \in13~input_o\,
	datac => \Add_Sub~input_o\,
	datad => \a2|inst3~0_combout\,
	combout => \a3|inst1~0_combout\);

ww_overflow <= \overflow~output_o\;

ww_sum0 <= \sum0~output_o\;

ww_sum1 <= \sum1~output_o\;

ww_sum2 <= \sum2~output_o\;

ww_sum3 <= \sum3~output_o\;
END structure;



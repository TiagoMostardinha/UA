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

-- DATE "06/15/2021 17:26:24"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BufferMem IS
    PORT (
	Clock : IN std_logic;
	ResetIn : IN std_logic;
	FantaIn : IN std_logic;
	SumoLiIn : IN std_logic;
	SumoPeIn : IN std_logic;
	Sel_GelIn : IN std_logic;
	ResetOut : OUT std_logic;
	FantaOut : OUT std_logic;
	SumoLiOut : OUT std_logic;
	SumoPeOut : OUT std_logic;
	Sel_GelOut : OUT std_logic
	);
END BufferMem;

ARCHITECTURE structure OF BufferMem IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_ResetIn : std_logic;
SIGNAL ww_FantaIn : std_logic;
SIGNAL ww_SumoLiIn : std_logic;
SIGNAL ww_SumoPeIn : std_logic;
SIGNAL ww_Sel_GelIn : std_logic;
SIGNAL ww_ResetOut : std_logic;
SIGNAL ww_FantaOut : std_logic;
SIGNAL ww_SumoLiOut : std_logic;
SIGNAL ww_SumoPeOut : std_logic;
SIGNAL ww_Sel_GelOut : std_logic;
SIGNAL \ResetOut~output_o\ : std_logic;
SIGNAL \FantaOut~output_o\ : std_logic;
SIGNAL \SumoLiOut~output_o\ : std_logic;
SIGNAL \SumoPeOut~output_o\ : std_logic;
SIGNAL \Sel_GelOut~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \ResetIn~input_o\ : std_logic;
SIGNAL \ResetOut~reg0_q\ : std_logic;
SIGNAL \FantaIn~input_o\ : std_logic;
SIGNAL \FantaOut~reg0_q\ : std_logic;
SIGNAL \SumoLiIn~input_o\ : std_logic;
SIGNAL \SumoLiOut~reg0_q\ : std_logic;
SIGNAL \SumoPeIn~input_o\ : std_logic;
SIGNAL \SumoPeOut~reg0_q\ : std_logic;
SIGNAL \Sel_GelIn~input_o\ : std_logic;
SIGNAL \Sel_GelOut~reg0_q\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_ResetIn <= ResetIn;
ww_FantaIn <= FantaIn;
ww_SumoLiIn <= SumoLiIn;
ww_SumoPeIn <= SumoPeIn;
ww_Sel_GelIn <= Sel_GelIn;
ResetOut <= ww_ResetOut;
FantaOut <= ww_FantaOut;
SumoLiOut <= ww_SumoLiOut;
SumoPeOut <= ww_SumoPeOut;
Sel_GelOut <= ww_Sel_GelOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ResetOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ResetOut~reg0_q\,
	devoe => ww_devoe,
	o => \ResetOut~output_o\);

\FantaOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FantaOut~reg0_q\,
	devoe => ww_devoe,
	o => \FantaOut~output_o\);

\SumoLiOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SumoLiOut~reg0_q\,
	devoe => ww_devoe,
	o => \SumoLiOut~output_o\);

\SumoPeOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SumoPeOut~reg0_q\,
	devoe => ww_devoe,
	o => \SumoPeOut~output_o\);

\Sel_GelOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Sel_GelOut~reg0_q\,
	devoe => ww_devoe,
	o => \Sel_GelOut~output_o\);

\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

\ResetIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ResetIn,
	o => \ResetIn~input_o\);

\ResetOut~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \ResetIn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ResetOut~reg0_q\);

\FantaIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FantaIn,
	o => \FantaIn~input_o\);

\FantaOut~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \FantaIn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FantaOut~reg0_q\);

\SumoLiIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SumoLiIn,
	o => \SumoLiIn~input_o\);

\SumoLiOut~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \SumoLiIn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SumoLiOut~reg0_q\);

\SumoPeIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SumoPeIn,
	o => \SumoPeIn~input_o\);

\SumoPeOut~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \SumoPeIn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SumoPeOut~reg0_q\);

\Sel_GelIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Sel_GelIn,
	o => \Sel_GelIn~input_o\);

\Sel_GelOut~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~input_o\,
	d => \Sel_GelIn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Sel_GelOut~reg0_q\);

ww_ResetOut <= \ResetOut~output_o\;

ww_FantaOut <= \FantaOut~output_o\;

ww_SumoLiOut <= \SumoLiOut~output_o\;

ww_SumoPeOut <= \SumoPeOut~output_o\;

ww_Sel_GelOut <= \Sel_GelOut~output_o\;
END structure;



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

-- DATE "04/07/2021 10:40:20"

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

ENTITY 	ALU4 IS
    PORT (
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	op : IN std_logic_vector(2 DOWNTO 0);
	r : OUT std_logic_vector(3 DOWNTO 0);
	m : OUT std_logic_vector(3 DOWNTO 0)
	);
END ALU4;

ARCHITECTURE structure OF ALU4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_op : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_r : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_m : std_logic_vector(3 DOWNTO 0);
SIGNAL \r[0]~output_o\ : std_logic;
SIGNAL \r[1]~output_o\ : std_logic;
SIGNAL \r[2]~output_o\ : std_logic;
SIGNAL \r[3]~output_o\ : std_logic;
SIGNAL \m[0]~output_o\ : std_logic;
SIGNAL \m[1]~output_o\ : std_logic;
SIGNAL \m[2]~output_o\ : std_logic;
SIGNAL \m[3]~output_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[0]~0_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~0_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \op[2]~input_o\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ : std_logic;
SIGNAL \s_r~0_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~11_cout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[0]~1\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[1]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|diff_signs~combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[1]~0_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ : std_logic;
SIGNAL \s_r~1_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs3a[1]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[1]~3\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[2]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[2]~1_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|op_1~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|quotient[3]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[0]~1\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[1]~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[2]~5\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[3]~6_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[1]~3\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[2]~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[3]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[4]~8_combout\ : std_logic;
SIGNAL \m~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[2]~5\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[3]~6_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[4]~9\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[5]~10_combout\ : std_logic;
SIGNAL \m~1_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[3]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|add10_result[4]~8_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[5]~11\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[6]~12_combout\ : std_logic;
SIGNAL \m~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[6]~13\ : std_logic;
SIGNAL \Mult0|auto_generated|add6_result[7]~14_combout\ : std_logic;
SIGNAL \m~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|le2a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|my_abs_den|result_tmp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|sel\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le4a\ : std_logic_vector(4 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_op <= op;
r <= ww_r;
m <= ww_m;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\r[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~15_combout\,
	devoe => ww_devoe,
	o => \r[0]~output_o\);

\r[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~23_combout\,
	devoe => ww_devoe,
	o => \r[1]~output_o\);

\r[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~32_combout\,
	devoe => ww_devoe,
	o => \r[2]~output_o\);

\r[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add0~39_combout\,
	devoe => ww_devoe,
	o => \r[3]~output_o\);

\m[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~0_combout\,
	devoe => ww_devoe,
	o => \m[0]~output_o\);

\m[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~1_combout\,
	devoe => ww_devoe,
	o => \m[1]~output_o\);

\m[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~2_combout\,
	devoe => ww_devoe,
	o => \m[2]~output_o\);

\m[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \m~3_combout\,
	devoe => ww_devoe,
	o => \m[3]~output_o\);

\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

\Mult0|auto_generated|le5a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(0) = LCELL(\b[1]~input_o\ $ (((\b[0]~input_o\ & \a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datac => \b[0]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Mult0|auto_generated|le5a\(0));

\Mult0|auto_generated|add6_result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[0]~0_combout\ = (\b[1]~input_o\ & (\Mult0|auto_generated|le5a\(0) $ (VCC))) # (!\b[1]~input_o\ & (\Mult0|auto_generated|le5a\(0) & VCC))
-- \Mult0|auto_generated|add6_result[0]~1\ = CARRY((\b[1]~input_o\ & \Mult0|auto_generated|le5a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \Mult0|auto_generated|le5a\(0),
	datad => VCC,
	combout => \Mult0|auto_generated|add6_result[0]~0_combout\,
	cout => \Mult0|auto_generated|add6_result[0]~1\);

\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

\Div0|auto_generated|divider|my_abs_den|result_tmp[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|result_tmp\(3) = (\b[3]~input_o\ & (!\b[0]~input_o\ & (!\b[2]~input_o\ & !\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[0]~input_o\,
	datac => \b[2]~input_o\,
	datad => \b[1]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_den|result_tmp\(3));

\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

\Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ = (\a[3]~input_o\ & (!\a[2]~input_o\ & (!\a[0]~input_o\ & !\a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \a[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[1]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\);

\Div0|auto_generated|divider|divider|sel[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(5) = (\b[3]~input_o\ & (((!\b[0]~input_o\ & !\b[1]~input_o\)) # (!\b[2]~input_o\))) # (!\b[3]~input_o\ & (((\b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \b[2]~input_o\,
	combout => \Div0|auto_generated|divider|divider|sel\(5));

\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ = \b[1]~input_o\ $ (((\b[3]~input_o\ & \b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\);

\Div0|auto_generated|divider|divider|StageOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ = (\Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & ((\Div0|auto_generated|divider|divider|sel\(5)) # ((\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\) # 
-- (!\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(5),
	datac => \Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datad => \b[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|StageOut[0]~0_combout\);

\Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ = \a[2]~input_o\ $ (((\a[3]~input_o\ & ((\a[0]~input_o\) # (\a[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \a[2]~input_o\,
	datad => \a[3]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\);

\Div0|auto_generated|divider|divider|add_sub_1|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ = (\Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\) # (!\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	datad => \b[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\);

\Div0|auto_generated|divider|divider|StageOut[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ = (\Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & ((\Div0|auto_generated|divider|divider|sel\(5)) # (\Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\ $ 
-- (\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(5),
	datac => \Div0|auto_generated|divider|divider|add_sub_1|_~0_combout\,
	datad => \Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[5]~1_combout\);

\Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ = \b[2]~input_o\ $ (((\b[3]~input_o\ & ((\b[0]~input_o\) # (\b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[2]~input_o\,
	datad => \b[3]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\);

\Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ = (\Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & ((\Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\) # 
-- ((!\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\) # (!\b[0]~input_o\)))) # (!\Div0|auto_generated|divider|divider|StageOut[0]~0_combout\ & (!\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & 
-- ((\Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\) # (!\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[0]~0_combout\,
	datab => \Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	datac => \b[0]~input_o\,
	datad => \Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\);

\Div0|auto_generated|divider|divider|StageOut[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ = \Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\ $ (((!\Div0|auto_generated|divider|divider|sel\(5) & (\b[0]~input_o\ & 
-- \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|result_tmp[2]~1_combout\,
	datab => \Div0|auto_generated|divider|divider|sel\(5),
	datac => \b[0]~input_o\,
	datad => \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[4]~2_combout\);

\Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\ = \a[1]~input_o\ $ (((\a[3]~input_o\ & \a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[1]~input_o\,
	datac => \a[3]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\);

\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\ & ((GND) # (!\b[0]~input_o\))) # (!\Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\ & 
-- (\b[0]~input_o\ $ (GND)))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((\Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\,
	datab => \b[0]~input_o\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & 
-- (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[4]~2_combout\))) # (!\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[4]~2_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = ((\Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ $ (\Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ $ 
-- (\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)))) # (GND)
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ & (\Div0|auto_generated|divider|divider|StageOut[5]~1_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\)) # (!\Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[5]~1_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

\Div0|auto_generated|divider|divider|StageOut[10]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ = (\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (\Div0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[5]~1_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[5]~1_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[10]~3_combout\);

\Div0|auto_generated|divider|divider|StageOut[9]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ = (\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (\Div0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\Div0|auto_generated|divider|divider|StageOut[4]~2_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[4]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[9]~4_combout\);

\Div0|auto_generated|divider|divider|StageOut[8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ = (\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (\Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\)) # (!\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\)) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datac => \Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[8]~5_combout\);

\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\ = CARRY((\a[0]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\);

\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\ = CARRY((\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[8]~5_combout\))) # (!\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (!\Div0|auto_generated|divider|divider|StageOut[8]~5_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[8]~5_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[0]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\);

\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\ = CARRY((\Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ & (\Div0|auto_generated|divider|divider|StageOut[9]~4_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\)) # (!\Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\ & ((\Div0|auto_generated|divider|divider|StageOut[9]~4_combout\) # 
-- (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|result_tmp[2]~1_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[9]~4_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\);

\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\ = CARRY((\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[10]~3_combout\))) # (!\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (!\Div0|auto_generated|divider|divider|StageOut[10]~3_combout\ & 
-- !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datab => \Div0|auto_generated|divider|divider|StageOut[10]~3_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\);

\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~7_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

\Div0|auto_generated|divider|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~0_combout\ = \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ $ (VCC)
-- \Div0|auto_generated|divider|op_1~1\ = CARRY(\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	datad => VCC,
	combout => \Div0|auto_generated|divider|op_1~0_combout\,
	cout => \Div0|auto_generated|divider|op_1~1\);

\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\a[3]~input_o\ & ((\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\))) # (!\b[3]~input_o\ & (!\Div0|auto_generated|divider|op_1~0_combout\)))) # (!\a[3]~input_o\ & ((\b[3]~input_o\ & 
-- (!\Div0|auto_generated|divider|op_1~0_combout\)) # (!\b[3]~input_o\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[3]~input_o\,
	datac => \Div0|auto_generated|divider|op_1~0_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Mux3~5_combout\);

\op[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(2),
	o => \op[2]~input_o\);

\op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\op[2]~input_o\ & ((\b[0]~input_o\ & ((!\op[0]~input_o\) # (!\a[0]~input_o\))) # (!\b[0]~input_o\ & (\a[0]~input_o\)))) # (!\op[2]~input_o\ & (((\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Mux3~2_combout\);

\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\op[2]~input_o\ & (((\Mux3~2_combout\)))) # (!\op[2]~input_o\ & ((\Mux3~2_combout\ & ((!\Mux3~5_combout\))) # (!\Mux3~2_combout\ & (\Mult0|auto_generated|add6_result[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add6_result[0]~0_combout\,
	datab => \Mux3~5_combout\,
	datac => \op[2]~input_o\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = \b[2]~input_o\ $ ((((!\b[0]~input_o\ & !\b[1]~input_o\)) # (!\b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[2]~input_o\,
	datac => \b[0]~input_o\,
	datad => \b[1]~input_o\,
	combout => \Add3~0_combout\);

\Mod0|auto_generated|divider|divider|StageOut[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\ = ((\b[3]~input_o\ & ((!\b[1]~input_o\) # (!\b[2]~input_o\))) # (!\b[3]~input_o\ & ((\b[2]~input_o\) # (\b[1]~input_o\)))) # (!\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[2]~input_o\,
	datac => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\);

\Mod0|auto_generated|divider|divider|StageOut[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ = (\Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\ & \Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[5]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\);

\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \a[2]~input_o\ $ ((((!\a[0]~input_o\ & !\a[1]~input_o\)) # (!\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \a[2]~input_o\,
	datac => \a[0]~input_o\,
	datad => \a[1]~input_o\,
	combout => \Add2~0_combout\);

\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\Add2~0_combout\ $ (GND))) # (!\b[0]~input_o\ & ((GND) # (!\Add2~0_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ = CARRY((!\Add2~0_combout\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \Add2~0_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\);

\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & ((\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\ & VCC)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & ((\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\) # (GND))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & (\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\)) # (!\Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\ & ((\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\);

\Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ = (\Add3~0_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ $ (GND))) # (!\Add3~0_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\ = CARRY((\Add3~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add3~0_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\);

\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\);

\Mod0|auto_generated|divider|divider|StageOut[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ & (!\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & 
-- !\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datac => \Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\);

\Mod0|auto_generated|divider|divider|StageOut[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\ = (\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (\Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\)) # (!\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\)) # (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[5]~3_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[1]~2_combout\,
	datac => \Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datad => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\);

\Mod0|auto_generated|divider|divider|StageOut[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ = (\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (((!\Add2~0_combout\)))) # (!\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & ((!\Add2~0_combout\))) # (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[0]~0_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datac => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \Add2~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\);

\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\ $ (VCC))) # (!\b[0]~input_o\ & 
-- ((\Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ = CARRY((\Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\);

\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ & ((\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # (!\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\ & VCC)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ & ((\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\) # (GND))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ & (\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\)) # (!\Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\ & ((\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\);

\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\ $ (\Add3~0_combout\ $ (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\ & ((\Add3~0_combout\) # (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\ & (\Add3~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\,
	datab => \Add3~0_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\);

\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\ & ((\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\ & VCC)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\ & ((\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\) # (GND))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\ & (\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & 
-- !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\)) # (!\Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\ & ((\Div0|auto_generated|divider|my_abs_den|result_tmp\(3)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[12]~4_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\);

\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\);

\Mod0|auto_generated|divider|divider|StageOut[18]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\ & (!\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[2]~4_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datac => \Mod0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\);

\Mod0|auto_generated|divider|divider|StageOut[18]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\);

\Mod0|auto_generated|divider|divider|StageOut[17]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[11]~5_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\);

\Mod0|auto_generated|divider|divider|StageOut[16]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[10]~6_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\);

\Mod0|auto_generated|divider|divider|StageOut[15]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & (\Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|result_tmp[1]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[0]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\);

\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[0]~input_o\) # (GND)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ = CARRY((\a[0]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\);

\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ & ((\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ & VCC)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ & ((\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\) # (GND))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ & (\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\)) # (!\Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\ & ((\Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|result_tmp[1]~0_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\);

\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\ = ((\Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\ $ (\Add3~0_combout\ $ (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))) # (GND)
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\ & ((\Add3~0_combout\) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\ & (\Add3~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\,
	datab => \Add3~0_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\);

\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ & ((\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ & VCC)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ & ((\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\) # (GND))) # 
-- (!\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ & (\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\)) # (!\Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\ & ((\Div0|auto_generated|divider|my_abs_den|result_tmp\(3)) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\);

\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~11_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[18]~7_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\);

\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

\s_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r~0_combout\ = \a[3]~input_o\ $ (((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\a[0]~input_o\))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & 
-- (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[0]~0_combout\,
	datac => \a[0]~input_o\,
	datad => \a[3]~input_o\,
	combout => \s_r~0_combout\);

\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\op[2]~input_o\ & (\s_r~0_combout\)) # (!\op[2]~input_o\ & ((\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_r~0_combout\,
	datab => \a[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Add0~8_combout\);

\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\op[2]~input_o\ & (\a[3]~input_o\)) # (!\op[2]~input_o\ & ((\b[0]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \op[2]~input_o\,
	datac => \b[0]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Add0~9_combout\);

\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_cout\ = CARRY(\op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datad => VCC,
	cout => \Add0~11_cout\);

\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\Add0~8_combout\ & ((\Add0~9_combout\ & (\Add0~11_cout\ & VCC)) # (!\Add0~9_combout\ & (!\Add0~11_cout\)))) # (!\Add0~8_combout\ & ((\Add0~9_combout\ & (!\Add0~11_cout\)) # (!\Add0~9_combout\ & ((\Add0~11_cout\) # (GND)))))
-- \Add0~13\ = CARRY((\Add0~8_combout\ & (!\Add0~9_combout\ & !\Add0~11_cout\)) # (!\Add0~8_combout\ & ((!\Add0~11_cout\) # (!\Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add0~9_combout\,
	datad => VCC,
	cin => \Add0~11_cout\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (!\op[2]~input_o\) # (!\op[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Mux3~4_combout\);

\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Mux3~4_combout\ & (\Add0~12_combout\)) # (!\Mux3~4_combout\ & (((\b[0]~input_o\ & \a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \b[0]~input_o\,
	datac => \a[0]~input_o\,
	datad => \Mux3~4_combout\,
	combout => \Add0~14_combout\);

\op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\op[1]~input_o\ & (\Mux3~3_combout\)) # (!\op[1]~input_o\ & ((\Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Add0~14_combout\,
	datad => \op[1]~input_o\,
	combout => \Add0~15_combout\);

\Mult0|auto_generated|le5a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(1) = LCELL((\b[0]~input_o\ & ((\b[1]~input_o\ $ (\a[1]~input_o\)))) # (!\b[0]~input_o\ & (!\a[0]~input_o\ & (\b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[1]~input_o\,
	combout => \Mult0|auto_generated|le5a\(1));

\Mult0|auto_generated|add6_result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[1]~2_combout\ = (\Mult0|auto_generated|le5a\(1) & (!\Mult0|auto_generated|add6_result[0]~1\)) # (!\Mult0|auto_generated|le5a\(1) & ((\Mult0|auto_generated|add6_result[0]~1\) # (GND)))
-- \Mult0|auto_generated|add6_result[1]~3\ = CARRY((!\Mult0|auto_generated|add6_result[0]~1\) # (!\Mult0|auto_generated|le5a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[0]~1\,
	combout => \Mult0|auto_generated|add6_result[1]~2_combout\,
	cout => \Mult0|auto_generated|add6_result[1]~3\);

\Div0|auto_generated|divider|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & (((!\Div0|auto_generated|divider|op_1~1\)))) # (!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & 
-- ((\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & (!\Div0|auto_generated|divider|op_1~1\)) # (!\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & ((\Div0|auto_generated|divider|op_1~1\) # (GND)))))
-- \Div0|auto_generated|divider|op_1~3\ = CARRY(((!\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\ & !\Div0|auto_generated|divider|my_abs_den|result_tmp\(3))) # (!\Div0|auto_generated|divider|op_1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	datab => \Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~1\,
	combout => \Div0|auto_generated|divider|op_1~2_combout\,
	cout => \Div0|auto_generated|divider|op_1~3\);

\Div0|auto_generated|divider|diff_signs\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|diff_signs~combout\ = \a[3]~input_o\ $ (\b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[3]~input_o\,
	datad => \b[3]~input_o\,
	combout => \Div0|auto_generated|divider|diff_signs~combout\);

\Div0|auto_generated|divider|quotient[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[1]~0_combout\ = (\Div0|auto_generated|divider|diff_signs~combout\ & (\Div0|auto_generated|divider|op_1~2_combout\)) # (!\Div0|auto_generated|divider|diff_signs~combout\ & 
-- (((!\Div0|auto_generated|divider|my_abs_den|result_tmp\(3) & !\Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|op_1~2_combout\,
	datab => \Div0|auto_generated|divider|diff_signs~combout\,
	datac => \Div0|auto_generated|divider|my_abs_den|result_tmp\(3),
	datad => \Div0|auto_generated|divider|divider|add_sub_2_result_int[3]~6_combout\,
	combout => \Div0|auto_generated|divider|quotient[1]~0_combout\);

\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\op[0]~input_o\ & ((\op[2]~input_o\) # ((\Div0|auto_generated|divider|quotient[1]~0_combout\)))) # (!\op[0]~input_o\ & (!\op[2]~input_o\ & (\Mult0|auto_generated|add6_result[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[2]~input_o\,
	datac => \Mult0|auto_generated|add6_result[1]~2_combout\,
	datad => \Div0|auto_generated|divider|quotient[1]~0_combout\,
	combout => \Add0~16_combout\);

\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\op[2]~input_o\ & ((\b[1]~input_o\ & ((!\Add0~16_combout\) # (!\a[1]~input_o\))) # (!\b[1]~input_o\ & (\a[1]~input_o\)))) # (!\op[2]~input_o\ & (((\Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datac => \op[2]~input_o\,
	datad => \Add0~16_combout\,
	combout => \Add0~17_combout\);

\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\a[1]~input_o\ & !\op[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Add0~18_combout\);

\s_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_r~1_combout\ = \a[3]~input_o\ $ (((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~2_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[15]~10_combout\,
	datad => \a[3]~input_o\,
	combout => \s_r~1_combout\);

\Add0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\op[2]~input_o\ & (\s_r~1_combout\)) # (!\op[2]~input_o\ & ((\b[1]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s_r~1_combout\,
	datab => \op[2]~input_o\,
	datac => \b[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Add0~19_combout\);

\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = ((\Add0~18_combout\ $ (\Add0~19_combout\ $ (!\Add0~13\)))) # (GND)
-- \Add0~21\ = CARRY((\Add0~18_combout\ & ((\Add0~19_combout\) # (!\Add0~13\))) # (!\Add0~18_combout\ & (\Add0~19_combout\ & !\Add0~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add0~19_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\b[1]~input_o\ & \a[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	combout => \Add0~22_combout\);

\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (\op[0]~input_o\ & ((\op[2]~input_o\ & ((\Add0~22_combout\))) # (!\op[2]~input_o\ & (\Add0~20_combout\)))) # (!\op[0]~input_o\ & (((\Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[2]~input_o\,
	datac => \Add0~20_combout\,
	datad => \Add0~22_combout\,
	combout => \Add0~40_combout\);

\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\op[1]~input_o\ & (\Add0~17_combout\)) # (!\op[1]~input_o\ & ((\Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Add0~17_combout\,
	datac => \Add0~40_combout\,
	combout => \Add0~23_combout\);

\Mult0|auto_generated|le5a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(2) = LCELL((\b[0]~input_o\ & ((\b[1]~input_o\ $ (\a[2]~input_o\)))) # (!\b[0]~input_o\ & (!\a[1]~input_o\ & (\b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[1]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[2]~input_o\,
	combout => \Mult0|auto_generated|le5a\(2));

\Mult0|auto_generated|add10_result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[0]~0_combout\ = (\b[3]~input_o\ & (\Mult0|auto_generated|le5a\(2) $ (VCC))) # (!\b[3]~input_o\ & (\Mult0|auto_generated|le5a\(2) & VCC))
-- \Mult0|auto_generated|add10_result[0]~1\ = CARRY((\b[3]~input_o\ & \Mult0|auto_generated|le5a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \Mult0|auto_generated|le5a\(2),
	datad => VCC,
	combout => \Mult0|auto_generated|add10_result[0]~0_combout\,
	cout => \Mult0|auto_generated|add10_result[0]~1\);

\Mult0|auto_generated|le2a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(0) = LCELL((\b[3]~input_o\ & (\b[2]~input_o\ $ (!\b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[2]~input_o\,
	datac => \b[1]~input_o\,
	combout => \Mult0|auto_generated|le2a\(0));

\Mult0|auto_generated|cs3a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|cs3a[1]~0_combout\ = \b[2]~input_o\ $ (\b[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b[2]~input_o\,
	datad => \b[1]~input_o\,
	combout => \Mult0|auto_generated|cs3a[1]~0_combout\);

\Mult0|auto_generated|le4a[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(0) = LCELL((\Mult0|auto_generated|le2a\(0)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\b[3]~input_o\ $ (\a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le2a\(0),
	datab => \Mult0|auto_generated|cs3a[1]~0_combout\,
	datac => \b[3]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Mult0|auto_generated|le4a\(0));

\Mult0|auto_generated|add6_result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[2]~4_combout\ = ((\Mult0|auto_generated|add10_result[0]~0_combout\ $ (\Mult0|auto_generated|le4a\(0) $ (!\Mult0|auto_generated|add6_result[1]~3\)))) # (GND)
-- \Mult0|auto_generated|add6_result[2]~5\ = CARRY((\Mult0|auto_generated|add10_result[0]~0_combout\ & ((\Mult0|auto_generated|le4a\(0)) # (!\Mult0|auto_generated|add6_result[1]~3\))) # (!\Mult0|auto_generated|add10_result[0]~0_combout\ & 
-- (\Mult0|auto_generated|le4a\(0) & !\Mult0|auto_generated|add6_result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add10_result[0]~0_combout\,
	datab => \Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[1]~3\,
	combout => \Mult0|auto_generated|add6_result[2]~4_combout\,
	cout => \Mult0|auto_generated|add6_result[2]~5\);

\Div0|auto_generated|divider|op_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~4_combout\ = (\Div0|auto_generated|divider|op_1~3\ & (((\Div0|auto_generated|divider|divider|sel\(5)) # (!\Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))) # (!\Div0|auto_generated|divider|op_1~3\ 
-- & ((((\Div0|auto_generated|divider|divider|sel\(5)) # (!\Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\)))))
-- \Div0|auto_generated|divider|op_1~5\ = CARRY((!\Div0|auto_generated|divider|op_1~3\ & ((\Div0|auto_generated|divider|divider|sel\(5)) # (!\Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(5),
	datab => \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|op_1~3\,
	combout => \Div0|auto_generated|divider|op_1~4_combout\,
	cout => \Div0|auto_generated|divider|op_1~5\);

\Div0|auto_generated|divider|quotient[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[2]~1_combout\ = (\Div0|auto_generated|divider|diff_signs~combout\ & (\Div0|auto_generated|divider|op_1~4_combout\)) # (!\Div0|auto_generated|divider|diff_signs~combout\ & 
-- (((\Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\ & !\Div0|auto_generated|divider|divider|sel\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|op_1~4_combout\,
	datab => \Div0|auto_generated|divider|diff_signs~combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_1|carry_eqn[1]~0_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(5),
	combout => \Div0|auto_generated|divider|quotient[2]~1_combout\);

\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\op[0]~input_o\ & ((\op[2]~input_o\) # ((\Div0|auto_generated|divider|quotient[2]~1_combout\)))) # (!\op[0]~input_o\ & (!\op[2]~input_o\ & (\Mult0|auto_generated|add6_result[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[2]~input_o\,
	datac => \Mult0|auto_generated|add6_result[2]~4_combout\,
	datad => \Div0|auto_generated|divider|quotient[2]~1_combout\,
	combout => \Add0~24_combout\);

\Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (\op[2]~input_o\ & ((\b[2]~input_o\ & ((!\Add0~24_combout\) # (!\a[2]~input_o\))) # (!\b[2]~input_o\ & (\a[2]~input_o\)))) # (!\op[2]~input_o\ & (((\Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datac => \op[2]~input_o\,
	datad => \Add0~24_combout\,
	combout => \Add0~25_combout\);

\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\a[2]~input_o\ & !\op[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Add0~26_combout\);

\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = \a[3]~input_o\ $ (((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~4_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[16]~9_combout\,
	datad => \a[3]~input_o\,
	combout => \Add0~27_combout\);

\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\op[2]~input_o\ & (\Add0~27_combout\)) # (!\op[2]~input_o\ & ((\b[2]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~27_combout\,
	datab => \op[2]~input_o\,
	datac => \b[2]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Add0~28_combout\);

\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\Add0~26_combout\ & ((\Add0~28_combout\ & (\Add0~21\ & VCC)) # (!\Add0~28_combout\ & (!\Add0~21\)))) # (!\Add0~26_combout\ & ((\Add0~28_combout\ & (!\Add0~21\)) # (!\Add0~28_combout\ & ((\Add0~21\) # (GND)))))
-- \Add0~30\ = CARRY((\Add0~26_combout\ & (!\Add0~28_combout\ & !\Add0~21\)) # (!\Add0~26_combout\ & ((!\Add0~21\) # (!\Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~26_combout\,
	datab => \Add0~28_combout\,
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~29_combout\,
	cout => \Add0~30\);

\Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\b[2]~input_o\ & \a[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	combout => \Add0~31_combout\);

\Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (\op[0]~input_o\ & ((\op[2]~input_o\ & ((\Add0~31_combout\))) # (!\op[2]~input_o\ & (\Add0~29_combout\)))) # (!\op[0]~input_o\ & (((\Add0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[2]~input_o\,
	datac => \Add0~29_combout\,
	datad => \Add0~31_combout\,
	combout => \Add0~41_combout\);

\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\op[1]~input_o\ & (\Add0~25_combout\)) # (!\op[1]~input_o\ & ((\Add0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Add0~25_combout\,
	datac => \Add0~41_combout\,
	combout => \Add0~32_combout\);

\Div0|auto_generated|divider|divider|sel[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|sel\(0) = (\b[3]~input_o\ & (((!\b[0]~input_o\) # (!\b[1]~input_o\)) # (!\b[2]~input_o\))) # (!\b[3]~input_o\ & ((\b[2]~input_o\) # ((\b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \b[2]~input_o\,
	datac => \b[1]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|sel\(0));

\Div0|auto_generated|divider|divider|add_sub_0|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ = (\Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\) # (!\b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|my_abs_num|result_tmp[3]~0_combout\,
	datad => \b[0]~input_o\,
	combout => \Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\);

\Div0|auto_generated|divider|op_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|op_1~6_combout\ = \Div0|auto_generated|divider|op_1~5\ $ (((\Div0|auto_generated|divider|divider|sel\(0)) # (!\Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101001011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|sel\(0),
	datab => \Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\,
	cin => \Div0|auto_generated|divider|op_1~5\,
	combout => \Div0|auto_generated|divider|op_1~6_combout\);

\Div0|auto_generated|divider|quotient[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|quotient[3]~2_combout\ = (\Div0|auto_generated|divider|diff_signs~combout\ & (\Div0|auto_generated|divider|op_1~6_combout\)) # (!\Div0|auto_generated|divider|diff_signs~combout\ & 
-- (((\Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\ & !\Div0|auto_generated|divider|divider|sel\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|op_1~6_combout\,
	datab => \Div0|auto_generated|divider|diff_signs~combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_0|_~0_combout\,
	datad => \Div0|auto_generated|divider|divider|sel\(0),
	combout => \Div0|auto_generated|divider|quotient[3]~2_combout\);

\Mult0|auto_generated|le5a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(3) = LCELL((\b[0]~input_o\ & ((\b[1]~input_o\ $ (\a[3]~input_o\)))) # (!\b[0]~input_o\ & (!\a[2]~input_o\ & (\b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[2]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[3]~input_o\,
	combout => \Mult0|auto_generated|le5a\(3));

\Mult0|auto_generated|add10_result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[1]~2_combout\ = (\Mult0|auto_generated|le5a\(3) & (!\Mult0|auto_generated|add10_result[0]~1\)) # (!\Mult0|auto_generated|le5a\(3) & ((\Mult0|auto_generated|add10_result[0]~1\) # (GND)))
-- \Mult0|auto_generated|add10_result[1]~3\ = CARRY((!\Mult0|auto_generated|add10_result[0]~1\) # (!\Mult0|auto_generated|le5a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|add10_result[0]~1\,
	combout => \Mult0|auto_generated|add10_result[1]~2_combout\,
	cout => \Mult0|auto_generated|add10_result[1]~3\);

\Mult0|auto_generated|le2a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(1) = LCELL((\a[0]~input_o\ & (\b[2]~input_o\ & (\b[1]~input_o\))) # (!\a[0]~input_o\ & (\b[3]~input_o\ & (\b[2]~input_o\ $ (!\b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \a[0]~input_o\,
	combout => \Mult0|auto_generated|le2a\(1));

\Mult0|auto_generated|le4a[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(1) = LCELL((\Mult0|auto_generated|le2a\(1)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\b[3]~input_o\ $ (\a[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le2a\(1),
	datab => \Mult0|auto_generated|cs3a[1]~0_combout\,
	datac => \b[3]~input_o\,
	datad => \a[1]~input_o\,
	combout => \Mult0|auto_generated|le4a\(1));

\Mult0|auto_generated|add6_result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[3]~6_combout\ = (\Mult0|auto_generated|add10_result[1]~2_combout\ & ((\Mult0|auto_generated|le4a\(1) & (\Mult0|auto_generated|add6_result[2]~5\ & VCC)) # (!\Mult0|auto_generated|le4a\(1) & 
-- (!\Mult0|auto_generated|add6_result[2]~5\)))) # (!\Mult0|auto_generated|add10_result[1]~2_combout\ & ((\Mult0|auto_generated|le4a\(1) & (!\Mult0|auto_generated|add6_result[2]~5\)) # (!\Mult0|auto_generated|le4a\(1) & 
-- ((\Mult0|auto_generated|add6_result[2]~5\) # (GND)))))
-- \Mult0|auto_generated|add6_result[3]~7\ = CARRY((\Mult0|auto_generated|add10_result[1]~2_combout\ & (!\Mult0|auto_generated|le4a\(1) & !\Mult0|auto_generated|add6_result[2]~5\)) # (!\Mult0|auto_generated|add10_result[1]~2_combout\ & 
-- ((!\Mult0|auto_generated|add6_result[2]~5\) # (!\Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add10_result[1]~2_combout\,
	datab => \Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[2]~5\,
	combout => \Mult0|auto_generated|add6_result[3]~6_combout\,
	cout => \Mult0|auto_generated|add6_result[3]~7\);

\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\op[2]~input_o\ & (((\op[0]~input_o\)))) # (!\op[2]~input_o\ & ((\op[0]~input_o\ & (\Div0|auto_generated|divider|quotient[3]~2_combout\)) # (!\op[0]~input_o\ & ((\Mult0|auto_generated|add6_result[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \Div0|auto_generated|divider|quotient[3]~2_combout\,
	datac => \op[0]~input_o\,
	datad => \Mult0|auto_generated|add6_result[3]~6_combout\,
	combout => \Mux0~0_combout\);

\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\op[2]~input_o\ & ((\b[3]~input_o\ & ((!\Mux0~0_combout\) # (!\a[3]~input_o\))) # (!\b[3]~input_o\ & (\a[3]~input_o\)))) # (!\op[2]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[3]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux0~1_combout\);

\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\a[3]~input_o\ & !\op[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Add0~33_combout\);

\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = \a[3]~input_o\ $ (((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\))) # 
-- (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[17]~8_combout\,
	datad => \a[3]~input_o\,
	combout => \Add0~34_combout\);

\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (\op[2]~input_o\ & (\Add0~34_combout\)) # (!\op[2]~input_o\ & ((\b[3]~input_o\ $ (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datab => \op[2]~input_o\,
	datac => \b[3]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Add0~35_combout\);

\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = \Add0~33_combout\ $ (\Add0~35_combout\ $ (!\Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~33_combout\,
	datab => \Add0~35_combout\,
	cin => \Add0~30\,
	combout => \Add0~36_combout\);

\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (\Mux3~4_combout\ & (\Add0~36_combout\)) # (!\Mux3~4_combout\ & (((\a[3]~input_o\ & \b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datab => \a[3]~input_o\,
	datac => \b[3]~input_o\,
	datad => \Mux3~4_combout\,
	combout => \Add0~38_combout\);

\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\op[1]~input_o\ & (\Mux0~1_combout\)) # (!\op[1]~input_o\ & ((\Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~1_combout\,
	datab => \Add0~38_combout\,
	datad => \op[1]~input_o\,
	combout => \Add0~39_combout\);

\Mult0|auto_generated|le5a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le5a\(4) = LCELL((\b[1]~input_o\ & ((!\a[3]~input_o\))) # (!\b[1]~input_o\ & (\b[0]~input_o\ & \a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[3]~input_o\,
	combout => \Mult0|auto_generated|le5a\(4));

\Mult0|auto_generated|add10_result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[2]~4_combout\ = (\Mult0|auto_generated|le5a\(4) & (\Mult0|auto_generated|add10_result[1]~3\ $ (GND))) # (!\Mult0|auto_generated|le5a\(4) & ((GND) # (!\Mult0|auto_generated|add10_result[1]~3\)))
-- \Mult0|auto_generated|add10_result[2]~5\ = CARRY((!\Mult0|auto_generated|add10_result[1]~3\) # (!\Mult0|auto_generated|le5a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|add10_result[1]~3\,
	combout => \Mult0|auto_generated|add10_result[2]~4_combout\,
	cout => \Mult0|auto_generated|add10_result[2]~5\);

\Mult0|auto_generated|le2a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(2) = LCELL((\a[1]~input_o\ & (\b[2]~input_o\ & (\b[1]~input_o\))) # (!\a[1]~input_o\ & (\b[3]~input_o\ & (\b[2]~input_o\ $ (!\b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \a[1]~input_o\,
	combout => \Mult0|auto_generated|le2a\(2));

\Mult0|auto_generated|le4a[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(2) = LCELL((\Mult0|auto_generated|le2a\(2)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\b[3]~input_o\ $ (\a[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le2a\(2),
	datab => \Mult0|auto_generated|cs3a[1]~0_combout\,
	datac => \b[3]~input_o\,
	datad => \a[2]~input_o\,
	combout => \Mult0|auto_generated|le4a\(2));

\Mult0|auto_generated|add6_result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[4]~8_combout\ = ((\Mult0|auto_generated|add10_result[2]~4_combout\ $ (\Mult0|auto_generated|le4a\(2) $ (!\Mult0|auto_generated|add6_result[3]~7\)))) # (GND)
-- \Mult0|auto_generated|add6_result[4]~9\ = CARRY((\Mult0|auto_generated|add10_result[2]~4_combout\ & ((\Mult0|auto_generated|le4a\(2)) # (!\Mult0|auto_generated|add6_result[3]~7\))) # (!\Mult0|auto_generated|add10_result[2]~4_combout\ & 
-- (\Mult0|auto_generated|le4a\(2) & !\Mult0|auto_generated|add6_result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add10_result[2]~4_combout\,
	datab => \Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[3]~7\,
	combout => \Mult0|auto_generated|add6_result[4]~8_combout\,
	cout => \Mult0|auto_generated|add6_result[4]~9\);

\m~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~0_combout\ = (\op[1]~input_o\ & (\Mult0|auto_generated|add6_result[4]~8_combout\ & (!\op[0]~input_o\ & !\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mult0|auto_generated|add6_result[4]~8_combout\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \m~0_combout\);

\Mult0|auto_generated|add10_result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[3]~6_combout\ = !\Mult0|auto_generated|add10_result[2]~5\
-- \Mult0|auto_generated|add10_result[3]~7\ = CARRY(!\Mult0|auto_generated|add10_result[2]~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Mult0|auto_generated|add10_result[2]~5\,
	combout => \Mult0|auto_generated|add10_result[3]~6_combout\,
	cout => \Mult0|auto_generated|add10_result[3]~7\);

\Mult0|auto_generated|le2a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(3) = LCELL((\a[2]~input_o\ & (\b[2]~input_o\ & (\b[1]~input_o\))) # (!\a[2]~input_o\ & (\b[3]~input_o\ & (\b[2]~input_o\ $ (!\b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \a[2]~input_o\,
	combout => \Mult0|auto_generated|le2a\(3));

\Mult0|auto_generated|le4a[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(3) = LCELL((\Mult0|auto_generated|le2a\(3)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\a[3]~input_o\ $ (\b[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[3]~input_o\,
	datac => \Mult0|auto_generated|le2a\(3),
	datad => \Mult0|auto_generated|cs3a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(3));

\Mult0|auto_generated|add6_result[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[5]~10_combout\ = (\Mult0|auto_generated|add10_result[3]~6_combout\ & ((\Mult0|auto_generated|le4a\(3) & (\Mult0|auto_generated|add6_result[4]~9\ & VCC)) # (!\Mult0|auto_generated|le4a\(3) & 
-- (!\Mult0|auto_generated|add6_result[4]~9\)))) # (!\Mult0|auto_generated|add10_result[3]~6_combout\ & ((\Mult0|auto_generated|le4a\(3) & (!\Mult0|auto_generated|add6_result[4]~9\)) # (!\Mult0|auto_generated|le4a\(3) & 
-- ((\Mult0|auto_generated|add6_result[4]~9\) # (GND)))))
-- \Mult0|auto_generated|add6_result[5]~11\ = CARRY((\Mult0|auto_generated|add10_result[3]~6_combout\ & (!\Mult0|auto_generated|le4a\(3) & !\Mult0|auto_generated|add6_result[4]~9\)) # (!\Mult0|auto_generated|add10_result[3]~6_combout\ & 
-- ((!\Mult0|auto_generated|add6_result[4]~9\) # (!\Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add10_result[3]~6_combout\,
	datab => \Mult0|auto_generated|le4a\(3),
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[4]~9\,
	combout => \Mult0|auto_generated|add6_result[5]~10_combout\,
	cout => \Mult0|auto_generated|add6_result[5]~11\);

\m~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~1_combout\ = (\op[1]~input_o\ & (\Mult0|auto_generated|add6_result[5]~10_combout\ & (!\op[0]~input_o\ & !\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mult0|auto_generated|add6_result[5]~10_combout\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \m~1_combout\);

\Mult0|auto_generated|add10_result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add10_result[4]~8_combout\ = !\Mult0|auto_generated|add10_result[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add10_result[3]~7\,
	combout => \Mult0|auto_generated|add10_result[4]~8_combout\);

\Mult0|auto_generated|le2a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le2a\(4) = LCELL((\a[3]~input_o\ & (\b[2]~input_o\ & (\b[1]~input_o\))) # (!\a[3]~input_o\ & (\b[3]~input_o\ & (\b[2]~input_o\ $ (!\b[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \b[1]~input_o\,
	datac => \b[3]~input_o\,
	datad => \a[3]~input_o\,
	combout => \Mult0|auto_generated|le2a\(4));

\Mult0|auto_generated|le4a[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|le4a\(4) = LCELL((\Mult0|auto_generated|le2a\(4)) # ((\Mult0|auto_generated|cs3a[1]~0_combout\ & (\a[3]~input_o\ $ (\b[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[3]~input_o\,
	datac => \Mult0|auto_generated|le2a\(4),
	datad => \Mult0|auto_generated|cs3a[1]~0_combout\,
	combout => \Mult0|auto_generated|le4a\(4));

\Mult0|auto_generated|add6_result[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[6]~12_combout\ = ((\Mult0|auto_generated|add10_result[4]~8_combout\ $ (\Mult0|auto_generated|le4a\(4) $ (\Mult0|auto_generated|add6_result[5]~11\)))) # (GND)
-- \Mult0|auto_generated|add6_result[6]~13\ = CARRY((\Mult0|auto_generated|add10_result[4]~8_combout\ & ((!\Mult0|auto_generated|add6_result[5]~11\) # (!\Mult0|auto_generated|le4a\(4)))) # (!\Mult0|auto_generated|add10_result[4]~8_combout\ & 
-- (!\Mult0|auto_generated|le4a\(4) & !\Mult0|auto_generated|add6_result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add10_result[4]~8_combout\,
	datab => \Mult0|auto_generated|le4a\(4),
	datad => VCC,
	cin => \Mult0|auto_generated|add6_result[5]~11\,
	combout => \Mult0|auto_generated|add6_result[6]~12_combout\,
	cout => \Mult0|auto_generated|add6_result[6]~13\);

\m~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~2_combout\ = (\op[1]~input_o\ & (\Mult0|auto_generated|add6_result[6]~12_combout\ & (!\op[0]~input_o\ & !\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mult0|auto_generated|add6_result[6]~12_combout\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \m~2_combout\);

\Mult0|auto_generated|add6_result[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mult0|auto_generated|add6_result[7]~14_combout\ = !\Mult0|auto_generated|add6_result[6]~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add6_result[6]~13\,
	combout => \Mult0|auto_generated|add6_result[7]~14_combout\);

\m~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \m~3_combout\ = (\op[1]~input_o\ & (\Mult0|auto_generated|add6_result[7]~14_combout\ & (!\op[0]~input_o\ & !\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mult0|auto_generated|add6_result[7]~14_combout\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \m~3_combout\);

ww_r(0) <= \r[0]~output_o\;

ww_r(1) <= \r[1]~output_o\;

ww_r(2) <= \r[2]~output_o\;

ww_r(3) <= \r[3]~output_o\;

ww_m(0) <= \m[0]~output_o\;

ww_m(1) <= \m[1]~output_o\;

ww_m(2) <= \m[2]~output_o\;

ww_m(3) <= \m[3]~output_o\;
END structure;



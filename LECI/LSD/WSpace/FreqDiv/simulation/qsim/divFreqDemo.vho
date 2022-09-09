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

-- DATE "05/25/2021 23:38:22"

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

ENTITY 	FreqDiv IS
    PORT (
	reset : IN std_logic;
	clkIn : IN std_logic;
	clkOut : OUT std_logic
	);
END FreqDiv;

ARCHITECTURE structure OF FreqDiv IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clkIn : std_logic;
SIGNAL ww_clkOut : std_logic;
SIGNAL \clkOut~output_o\ : std_logic;
SIGNAL \clkIn~input_o\ : std_logic;
SIGNAL \s_counter[0]~31_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \s_counter[1]~34\ : std_logic;
SIGNAL \s_counter[2]~35_combout\ : std_logic;
SIGNAL \s_counter[2]~36\ : std_logic;
SIGNAL \s_counter[3]~37_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \s_counter[0]~32\ : std_logic;
SIGNAL \s_counter[1]~33_combout\ : std_logic;
SIGNAL \s_counter[3]~38\ : std_logic;
SIGNAL \s_counter[4]~39_combout\ : std_logic;
SIGNAL \s_counter[4]~40\ : std_logic;
SIGNAL \s_counter[5]~41_combout\ : std_logic;
SIGNAL \s_counter[5]~42\ : std_logic;
SIGNAL \s_counter[6]~43_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \s_counter[6]~44\ : std_logic;
SIGNAL \s_counter[7]~45_combout\ : std_logic;
SIGNAL \s_counter[7]~46\ : std_logic;
SIGNAL \s_counter[8]~47_combout\ : std_logic;
SIGNAL \s_counter[8]~48\ : std_logic;
SIGNAL \s_counter[9]~49_combout\ : std_logic;
SIGNAL \s_counter[9]~50\ : std_logic;
SIGNAL \s_counter[10]~51_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \s_counter[10]~52\ : std_logic;
SIGNAL \s_counter[11]~53_combout\ : std_logic;
SIGNAL \s_counter[11]~54\ : std_logic;
SIGNAL \s_counter[12]~55_combout\ : std_logic;
SIGNAL \s_counter[12]~56\ : std_logic;
SIGNAL \s_counter[13]~57_combout\ : std_logic;
SIGNAL \s_counter[13]~58\ : std_logic;
SIGNAL \s_counter[14]~59_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \s_counter[14]~60\ : std_logic;
SIGNAL \s_counter[15]~61_combout\ : std_logic;
SIGNAL \s_counter[15]~62\ : std_logic;
SIGNAL \s_counter[16]~63_combout\ : std_logic;
SIGNAL \s_counter[16]~64\ : std_logic;
SIGNAL \s_counter[17]~65_combout\ : std_logic;
SIGNAL \s_counter[17]~66\ : std_logic;
SIGNAL \s_counter[18]~67_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \s_counter[18]~68\ : std_logic;
SIGNAL \s_counter[19]~69_combout\ : std_logic;
SIGNAL \s_counter[19]~70\ : std_logic;
SIGNAL \s_counter[20]~71_combout\ : std_logic;
SIGNAL \s_counter[20]~72\ : std_logic;
SIGNAL \s_counter[21]~73_combout\ : std_logic;
SIGNAL \s_counter[21]~74\ : std_logic;
SIGNAL \s_counter[22]~75_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \s_counter[22]~76\ : std_logic;
SIGNAL \s_counter[23]~77_combout\ : std_logic;
SIGNAL \s_counter[23]~78\ : std_logic;
SIGNAL \s_counter[24]~79_combout\ : std_logic;
SIGNAL \s_counter[24]~80\ : std_logic;
SIGNAL \s_counter[25]~81_combout\ : std_logic;
SIGNAL \s_counter[25]~82\ : std_logic;
SIGNAL \s_counter[26]~83_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \s_counter[26]~84\ : std_logic;
SIGNAL \s_counter[27]~85_combout\ : std_logic;
SIGNAL \s_counter[27]~86\ : std_logic;
SIGNAL \s_counter[28]~87_combout\ : std_logic;
SIGNAL \s_counter[28]~88\ : std_logic;
SIGNAL \s_counter[29]~89_combout\ : std_logic;
SIGNAL \s_counter[29]~90\ : std_logic;
SIGNAL \s_counter[30]~91_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \clkOut~0_combout\ : std_logic;
SIGNAL \clkOut~1_combout\ : std_logic;
SIGNAL \clkOut~reg0_q\ : std_logic;
SIGNAL s_counter : std_logic_vector(30 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_clkIn <= clkIn;
clkOut <= ww_clkOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clkOut~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clkOut~reg0_q\,
	devoe => ww_devoe,
	o => \clkOut~output_o\);

\clkIn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkIn,
	o => \clkIn~input_o\);

\s_counter[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[0]~31_combout\ = s_counter(0) $ (VCC)
-- \s_counter[0]~32\ = CARRY(s_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(0),
	datad => VCC,
	combout => \s_counter[0]~31_combout\,
	cout => \s_counter[0]~32\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\s_counter[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[1]~33_combout\ = (s_counter(1) & (!\s_counter[0]~32\)) # (!s_counter(1) & ((\s_counter[0]~32\) # (GND)))
-- \s_counter[1]~34\ = CARRY((!\s_counter[0]~32\) # (!s_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(1),
	datad => VCC,
	cin => \s_counter[0]~32\,
	combout => \s_counter[1]~33_combout\,
	cout => \s_counter[1]~34\);

\s_counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[2]~35_combout\ = (s_counter(2) & (\s_counter[1]~34\ $ (GND))) # (!s_counter(2) & (!\s_counter[1]~34\ & VCC))
-- \s_counter[2]~36\ = CARRY((s_counter(2) & !\s_counter[1]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(2),
	datad => VCC,
	cin => \s_counter[1]~34\,
	combout => \s_counter[2]~35_combout\,
	cout => \s_counter[2]~36\);

\s_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[2]~35_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(2));

\s_counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[3]~37_combout\ = (s_counter(3) & (!\s_counter[2]~36\)) # (!s_counter(3) & ((\s_counter[2]~36\) # (GND)))
-- \s_counter[3]~38\ = CARRY((!\s_counter[2]~36\) # (!s_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(3),
	datad => VCC,
	cin => \s_counter[2]~36\,
	combout => \s_counter[3]~37_combout\,
	cout => \s_counter[3]~38\);

\s_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[3]~37_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(3));

\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (s_counter(0) & (s_counter(3) & !s_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(0),
	datab => s_counter(3),
	datad => s_counter(2),
	combout => \Equal0~9_combout\);

\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\reset~input_o\) # ((\Equal0~8_combout\ & \Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Equal0~8_combout\,
	datac => \Equal0~9_combout\,
	combout => \process_0~0_combout\);

\s_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[0]~31_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(0));

\s_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[1]~33_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(1));

\s_counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[4]~39_combout\ = (s_counter(4) & (\s_counter[3]~38\ $ (GND))) # (!s_counter(4) & (!\s_counter[3]~38\ & VCC))
-- \s_counter[4]~40\ = CARRY((s_counter(4) & !\s_counter[3]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(4),
	datad => VCC,
	cin => \s_counter[3]~38\,
	combout => \s_counter[4]~39_combout\,
	cout => \s_counter[4]~40\);

\s_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[4]~39_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(4));

\s_counter[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[5]~41_combout\ = (s_counter(5) & (!\s_counter[4]~40\)) # (!s_counter(5) & ((\s_counter[4]~40\) # (GND)))
-- \s_counter[5]~42\ = CARRY((!\s_counter[4]~40\) # (!s_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(5),
	datad => VCC,
	cin => \s_counter[4]~40\,
	combout => \s_counter[5]~41_combout\,
	cout => \s_counter[5]~42\);

\s_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[5]~41_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(5));

\s_counter[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[6]~43_combout\ = (s_counter(6) & (\s_counter[5]~42\ $ (GND))) # (!s_counter(6) & (!\s_counter[5]~42\ & VCC))
-- \s_counter[6]~44\ = CARRY((s_counter(6) & !\s_counter[5]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(6),
	datad => VCC,
	cin => \s_counter[5]~42\,
	combout => \s_counter[6]~43_combout\,
	cout => \s_counter[6]~44\);

\s_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[6]~43_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(6));

\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!s_counter(1) & (!s_counter(4) & (!s_counter(5) & !s_counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(1),
	datab => s_counter(4),
	datac => s_counter(5),
	datad => s_counter(6),
	combout => \Equal0~0_combout\);

\s_counter[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[7]~45_combout\ = (s_counter(7) & (!\s_counter[6]~44\)) # (!s_counter(7) & ((\s_counter[6]~44\) # (GND)))
-- \s_counter[7]~46\ = CARRY((!\s_counter[6]~44\) # (!s_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(7),
	datad => VCC,
	cin => \s_counter[6]~44\,
	combout => \s_counter[7]~45_combout\,
	cout => \s_counter[7]~46\);

\s_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[7]~45_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(7));

\s_counter[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[8]~47_combout\ = (s_counter(8) & (\s_counter[7]~46\ $ (GND))) # (!s_counter(8) & (!\s_counter[7]~46\ & VCC))
-- \s_counter[8]~48\ = CARRY((s_counter(8) & !\s_counter[7]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(8),
	datad => VCC,
	cin => \s_counter[7]~46\,
	combout => \s_counter[8]~47_combout\,
	cout => \s_counter[8]~48\);

\s_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[8]~47_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(8));

\s_counter[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[9]~49_combout\ = (s_counter(9) & (!\s_counter[8]~48\)) # (!s_counter(9) & ((\s_counter[8]~48\) # (GND)))
-- \s_counter[9]~50\ = CARRY((!\s_counter[8]~48\) # (!s_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(9),
	datad => VCC,
	cin => \s_counter[8]~48\,
	combout => \s_counter[9]~49_combout\,
	cout => \s_counter[9]~50\);

\s_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[9]~49_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(9));

\s_counter[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[10]~51_combout\ = (s_counter(10) & (\s_counter[9]~50\ $ (GND))) # (!s_counter(10) & (!\s_counter[9]~50\ & VCC))
-- \s_counter[10]~52\ = CARRY((s_counter(10) & !\s_counter[9]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(10),
	datad => VCC,
	cin => \s_counter[9]~50\,
	combout => \s_counter[10]~51_combout\,
	cout => \s_counter[10]~52\);

\s_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[10]~51_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(10));

\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!s_counter(7) & (!s_counter(8) & (!s_counter(9) & !s_counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(7),
	datab => s_counter(8),
	datac => s_counter(9),
	datad => s_counter(10),
	combout => \Equal0~1_combout\);

\s_counter[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[11]~53_combout\ = (s_counter(11) & (!\s_counter[10]~52\)) # (!s_counter(11) & ((\s_counter[10]~52\) # (GND)))
-- \s_counter[11]~54\ = CARRY((!\s_counter[10]~52\) # (!s_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(11),
	datad => VCC,
	cin => \s_counter[10]~52\,
	combout => \s_counter[11]~53_combout\,
	cout => \s_counter[11]~54\);

\s_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[11]~53_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(11));

\s_counter[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[12]~55_combout\ = (s_counter(12) & (\s_counter[11]~54\ $ (GND))) # (!s_counter(12) & (!\s_counter[11]~54\ & VCC))
-- \s_counter[12]~56\ = CARRY((s_counter(12) & !\s_counter[11]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(12),
	datad => VCC,
	cin => \s_counter[11]~54\,
	combout => \s_counter[12]~55_combout\,
	cout => \s_counter[12]~56\);

\s_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[12]~55_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(12));

\s_counter[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[13]~57_combout\ = (s_counter(13) & (!\s_counter[12]~56\)) # (!s_counter(13) & ((\s_counter[12]~56\) # (GND)))
-- \s_counter[13]~58\ = CARRY((!\s_counter[12]~56\) # (!s_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(13),
	datad => VCC,
	cin => \s_counter[12]~56\,
	combout => \s_counter[13]~57_combout\,
	cout => \s_counter[13]~58\);

\s_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[13]~57_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(13));

\s_counter[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[14]~59_combout\ = (s_counter(14) & (\s_counter[13]~58\ $ (GND))) # (!s_counter(14) & (!\s_counter[13]~58\ & VCC))
-- \s_counter[14]~60\ = CARRY((s_counter(14) & !\s_counter[13]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(14),
	datad => VCC,
	cin => \s_counter[13]~58\,
	combout => \s_counter[14]~59_combout\,
	cout => \s_counter[14]~60\);

\s_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[14]~59_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(14));

\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!s_counter(11) & (!s_counter(12) & (!s_counter(13) & !s_counter(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(11),
	datab => s_counter(12),
	datac => s_counter(13),
	datad => s_counter(14),
	combout => \Equal0~2_combout\);

\s_counter[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[15]~61_combout\ = (s_counter(15) & (!\s_counter[14]~60\)) # (!s_counter(15) & ((\s_counter[14]~60\) # (GND)))
-- \s_counter[15]~62\ = CARRY((!\s_counter[14]~60\) # (!s_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(15),
	datad => VCC,
	cin => \s_counter[14]~60\,
	combout => \s_counter[15]~61_combout\,
	cout => \s_counter[15]~62\);

\s_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[15]~61_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(15));

\s_counter[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[16]~63_combout\ = (s_counter(16) & (\s_counter[15]~62\ $ (GND))) # (!s_counter(16) & (!\s_counter[15]~62\ & VCC))
-- \s_counter[16]~64\ = CARRY((s_counter(16) & !\s_counter[15]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(16),
	datad => VCC,
	cin => \s_counter[15]~62\,
	combout => \s_counter[16]~63_combout\,
	cout => \s_counter[16]~64\);

\s_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[16]~63_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(16));

\s_counter[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[17]~65_combout\ = (s_counter(17) & (!\s_counter[16]~64\)) # (!s_counter(17) & ((\s_counter[16]~64\) # (GND)))
-- \s_counter[17]~66\ = CARRY((!\s_counter[16]~64\) # (!s_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(17),
	datad => VCC,
	cin => \s_counter[16]~64\,
	combout => \s_counter[17]~65_combout\,
	cout => \s_counter[17]~66\);

\s_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[17]~65_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(17));

\s_counter[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[18]~67_combout\ = (s_counter(18) & (\s_counter[17]~66\ $ (GND))) # (!s_counter(18) & (!\s_counter[17]~66\ & VCC))
-- \s_counter[18]~68\ = CARRY((s_counter(18) & !\s_counter[17]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(18),
	datad => VCC,
	cin => \s_counter[17]~66\,
	combout => \s_counter[18]~67_combout\,
	cout => \s_counter[18]~68\);

\s_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[18]~67_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(18));

\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!s_counter(15) & (!s_counter(16) & (!s_counter(17) & !s_counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(15),
	datab => s_counter(16),
	datac => s_counter(17),
	datad => s_counter(18),
	combout => \Equal0~3_combout\);

\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

\s_counter[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[19]~69_combout\ = (s_counter(19) & (!\s_counter[18]~68\)) # (!s_counter(19) & ((\s_counter[18]~68\) # (GND)))
-- \s_counter[19]~70\ = CARRY((!\s_counter[18]~68\) # (!s_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(19),
	datad => VCC,
	cin => \s_counter[18]~68\,
	combout => \s_counter[19]~69_combout\,
	cout => \s_counter[19]~70\);

\s_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[19]~69_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(19));

\s_counter[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[20]~71_combout\ = (s_counter(20) & (\s_counter[19]~70\ $ (GND))) # (!s_counter(20) & (!\s_counter[19]~70\ & VCC))
-- \s_counter[20]~72\ = CARRY((s_counter(20) & !\s_counter[19]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(20),
	datad => VCC,
	cin => \s_counter[19]~70\,
	combout => \s_counter[20]~71_combout\,
	cout => \s_counter[20]~72\);

\s_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[20]~71_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(20));

\s_counter[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[21]~73_combout\ = (s_counter(21) & (!\s_counter[20]~72\)) # (!s_counter(21) & ((\s_counter[20]~72\) # (GND)))
-- \s_counter[21]~74\ = CARRY((!\s_counter[20]~72\) # (!s_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(21),
	datad => VCC,
	cin => \s_counter[20]~72\,
	combout => \s_counter[21]~73_combout\,
	cout => \s_counter[21]~74\);

\s_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[21]~73_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(21));

\s_counter[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[22]~75_combout\ = (s_counter(22) & (\s_counter[21]~74\ $ (GND))) # (!s_counter(22) & (!\s_counter[21]~74\ & VCC))
-- \s_counter[22]~76\ = CARRY((s_counter(22) & !\s_counter[21]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(22),
	datad => VCC,
	cin => \s_counter[21]~74\,
	combout => \s_counter[22]~75_combout\,
	cout => \s_counter[22]~76\);

\s_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[22]~75_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(22));

\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!s_counter(19) & (!s_counter(20) & (!s_counter(21) & !s_counter(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(19),
	datab => s_counter(20),
	datac => s_counter(21),
	datad => s_counter(22),
	combout => \Equal0~5_combout\);

\s_counter[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[23]~77_combout\ = (s_counter(23) & (!\s_counter[22]~76\)) # (!s_counter(23) & ((\s_counter[22]~76\) # (GND)))
-- \s_counter[23]~78\ = CARRY((!\s_counter[22]~76\) # (!s_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(23),
	datad => VCC,
	cin => \s_counter[22]~76\,
	combout => \s_counter[23]~77_combout\,
	cout => \s_counter[23]~78\);

\s_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[23]~77_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(23));

\s_counter[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[24]~79_combout\ = (s_counter(24) & (\s_counter[23]~78\ $ (GND))) # (!s_counter(24) & (!\s_counter[23]~78\ & VCC))
-- \s_counter[24]~80\ = CARRY((s_counter(24) & !\s_counter[23]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(24),
	datad => VCC,
	cin => \s_counter[23]~78\,
	combout => \s_counter[24]~79_combout\,
	cout => \s_counter[24]~80\);

\s_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[24]~79_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(24));

\s_counter[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[25]~81_combout\ = (s_counter(25) & (!\s_counter[24]~80\)) # (!s_counter(25) & ((\s_counter[24]~80\) # (GND)))
-- \s_counter[25]~82\ = CARRY((!\s_counter[24]~80\) # (!s_counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(25),
	datad => VCC,
	cin => \s_counter[24]~80\,
	combout => \s_counter[25]~81_combout\,
	cout => \s_counter[25]~82\);

\s_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[25]~81_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(25));

\s_counter[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[26]~83_combout\ = (s_counter(26) & (\s_counter[25]~82\ $ (GND))) # (!s_counter(26) & (!\s_counter[25]~82\ & VCC))
-- \s_counter[26]~84\ = CARRY((s_counter(26) & !\s_counter[25]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(26),
	datad => VCC,
	cin => \s_counter[25]~82\,
	combout => \s_counter[26]~83_combout\,
	cout => \s_counter[26]~84\);

\s_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[26]~83_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(26));

\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!s_counter(23) & (!s_counter(24) & (!s_counter(25) & !s_counter(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(23),
	datab => s_counter(24),
	datac => s_counter(25),
	datad => s_counter(26),
	combout => \Equal0~6_combout\);

\s_counter[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[27]~85_combout\ = (s_counter(27) & (!\s_counter[26]~84\)) # (!s_counter(27) & ((\s_counter[26]~84\) # (GND)))
-- \s_counter[27]~86\ = CARRY((!\s_counter[26]~84\) # (!s_counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(27),
	datad => VCC,
	cin => \s_counter[26]~84\,
	combout => \s_counter[27]~85_combout\,
	cout => \s_counter[27]~86\);

\s_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[27]~85_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(27));

\s_counter[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[28]~87_combout\ = (s_counter(28) & (\s_counter[27]~86\ $ (GND))) # (!s_counter(28) & (!\s_counter[27]~86\ & VCC))
-- \s_counter[28]~88\ = CARRY((s_counter(28) & !\s_counter[27]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(28),
	datad => VCC,
	cin => \s_counter[27]~86\,
	combout => \s_counter[28]~87_combout\,
	cout => \s_counter[28]~88\);

\s_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[28]~87_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(28));

\s_counter[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[29]~89_combout\ = (s_counter(29) & (!\s_counter[28]~88\)) # (!s_counter(29) & ((\s_counter[28]~88\) # (GND)))
-- \s_counter[29]~90\ = CARRY((!\s_counter[28]~88\) # (!s_counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(29),
	datad => VCC,
	cin => \s_counter[28]~88\,
	combout => \s_counter[29]~89_combout\,
	cout => \s_counter[29]~90\);

\s_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[29]~89_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(29));

\s_counter[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \s_counter[30]~91_combout\ = s_counter(30) $ (!\s_counter[29]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(30),
	cin => \s_counter[29]~90\,
	combout => \s_counter[30]~91_combout\);

\s_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \s_counter[30]~91_combout\,
	sclr => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => s_counter(30));

\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!s_counter(27) & (!s_counter(28) & (!s_counter(29) & !s_counter(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(27),
	datab => s_counter(28),
	datac => s_counter(29),
	datad => s_counter(30),
	combout => \Equal0~7_combout\);

\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~4_combout\ & (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

\clkOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkOut~0_combout\ = (s_counter(2) & (!s_counter(0) & !s_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => s_counter(2),
	datac => s_counter(0),
	datad => s_counter(3),
	combout => \clkOut~0_combout\);

\clkOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \clkOut~1_combout\ = (!\process_0~0_combout\ & ((\clkOut~reg0_q\) # ((\Equal0~8_combout\ & \clkOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clkOut~reg0_q\,
	datab => \Equal0~8_combout\,
	datac => \clkOut~0_combout\,
	datad => \process_0~0_combout\,
	combout => \clkOut~1_combout\);

\clkOut~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkIn~input_o\,
	d => \clkOut~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clkOut~reg0_q\);

ww_clkOut <= \clkOut~output_o\;
END structure;



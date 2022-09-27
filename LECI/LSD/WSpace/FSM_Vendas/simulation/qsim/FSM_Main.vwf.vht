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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/18/2021 17:17:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          FSM_Main
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY FSM_Main_vhd_vec_tst IS
END FSM_Main_vhd_vec_tst;
ARCHITECTURE FSM_Main_arch OF FSM_Main_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL debug : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL esc : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL Ledg : STD_LOGIC;
SIGNAL Ledr : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL Sel_Word : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Time_exp : STD_LOGIC;
COMPONENT FSM_Main
	PORT (
	clk : IN STD_LOGIC;
	debug : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	esc : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	Ledg : BUFFER STD_LOGIC;
	Ledr : BUFFER STD_LOGIC;
	rst : IN STD_LOGIC;
	Sel_Word : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	Time_exp : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : FSM_Main
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	debug => debug,
	esc => esc,
	Ledg => Ledg,
	Ledr => Ledr,
	rst => rst,
	Sel_Word => Sel_Word,
	Time_exp => Time_exp
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 25000 ps;
	clk <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- esc[1]
t_prcs_esc_1: PROCESS
BEGIN
	esc(1) <= '0';
	WAIT FOR 100000 ps;
	esc(1) <= '1';
	WAIT FOR 50000 ps;
	esc(1) <= '0';
	WAIT FOR 50000 ps;
	esc(1) <= '1';
	WAIT FOR 50000 ps;
	esc(1) <= '0';
	WAIT FOR 50000 ps;
	esc(1) <= '1';
	WAIT FOR 100000 ps;
	esc(1) <= '0';
	WAIT FOR 100000 ps;
	esc(1) <= '1';
	WAIT FOR 100000 ps;
	esc(1) <= '0';
	WAIT FOR 50000 ps;
	esc(1) <= '1';
	WAIT FOR 100000 ps;
	esc(1) <= '0';
	WAIT FOR 50000 ps;
	esc(1) <= '1';
	WAIT FOR 50000 ps;
	esc(1) <= '0';
	WAIT FOR 100000 ps;
	esc(1) <= '1';
WAIT;
END PROCESS t_prcs_esc_1;
-- esc[0]
t_prcs_esc_0: PROCESS
BEGIN
	esc(0) <= '0';
	WAIT FOR 50000 ps;
	esc(0) <= '1';
	WAIT FOR 50000 ps;
	esc(0) <= '0';
	WAIT FOR 50000 ps;
	esc(0) <= '1';
	WAIT FOR 50000 ps;
	esc(0) <= '0';
	WAIT FOR 50000 ps;
	esc(0) <= '1';
	WAIT FOR 50000 ps;
	esc(0) <= '0';
	WAIT FOR 50000 ps;
	esc(0) <= '1';
	WAIT FOR 50000 ps;
	esc(0) <= '0';
	WAIT FOR 50000 ps;
	esc(0) <= '1';
	WAIT FOR 100000 ps;
	esc(0) <= '0';
	WAIT FOR 150000 ps;
	esc(0) <= '1';
WAIT;
END PROCESS t_prcs_esc_0;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
	WAIT FOR 520000 ps;
	rst <= '1';
	WAIT FOR 310000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;

-- Time_exp
t_prcs_Time_exp: PROCESS
BEGIN
	Time_exp <= '1';
WAIT;
END PROCESS t_prcs_Time_exp;
END FSM_Main_arch;

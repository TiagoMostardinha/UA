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
-- Generated on "06/17/2021 14:51:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          EDUTIMER
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY EDUTIMER_vhd_vec_tst IS
END EDUTIMER_vhd_vec_tst;
ARCHITECTURE EDUTIMER_arch OF EDUTIMER_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL newTime : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL timeExp : STD_LOGIC;
SIGNAL timerEnable : STD_LOGIC;
SIGNAL timeVal : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT EDUTIMER
	PORT (
	clk : IN STD_LOGIC;
	newTime : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	timeExp : OUT STD_LOGIC;
	timerEnable : IN STD_LOGIC;
	timeVal : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : EDUTIMER
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	newTime => newTime,
	reset => reset,
	timeExp => timeExp,
	timerEnable => timerEnable,
	timeVal => timeVal
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

-- newTime
t_prcs_newTime: PROCESS
BEGIN
	newTime <= '0';
	WAIT FOR 20000 ps;
	newTime <= '1';
	WAIT FOR 40000 ps;
	newTime <= '0';
WAIT;
END PROCESS t_prcs_newTime;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;

-- timerEnable
t_prcs_timerEnable: PROCESS
BEGIN
	timerEnable <= '1';
WAIT;
END PROCESS t_prcs_timerEnable;
-- timeVal[1]
t_prcs_timeVal_1: PROCESS
BEGIN
	timeVal(1) <= '0';
	WAIT FOR 600000 ps;
	timeVal(1) <= '1';
	WAIT FOR 200000 ps;
	timeVal(1) <= '0';
WAIT;
END PROCESS t_prcs_timeVal_1;
-- timeVal[0]
t_prcs_timeVal_0: PROCESS
BEGIN
	timeVal(0) <= '1';
	WAIT FOR 400000 ps;
	timeVal(0) <= '0';
	WAIT FOR 400000 ps;
	timeVal(0) <= '1';
WAIT;
END PROCESS t_prcs_timeVal_0;
END EDUTIMER_arch;

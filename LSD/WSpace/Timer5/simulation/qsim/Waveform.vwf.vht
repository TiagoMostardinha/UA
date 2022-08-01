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
-- Generated on "06/18/2021 18:15:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TimerAuxFSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TimerAuxFSM_vhd_vec_tst IS
END TimerAuxFSM_vhd_vec_tst;
ARCHITECTURE TimerAuxFSM_arch OF TimerAuxFSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL newTime : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL timeExp : STD_LOGIC;
SIGNAL timeVal : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT TimerAuxFSM
	PORT (
	clk : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	newTime : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	timeExp : OUT STD_LOGIC;
	timeVal : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : TimerAuxFSM
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	enable => enable,
	newTime => newTime,
	reset => reset,
	timeExp => timeExp,
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

-- enable
t_prcs_enable: PROCESS
BEGIN
	enable <= '1';
WAIT;
END PROCESS t_prcs_enable;

-- newTime
t_prcs_newTime: PROCESS
BEGIN
	newTime <= '1';
	WAIT FOR 50000 ps;
	newTime <= '0';
WAIT;
END PROCESS t_prcs_newTime;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
-- timeVal[3]
t_prcs_timeVal_3: PROCESS
BEGIN
	timeVal(3) <= '0';
WAIT;
END PROCESS t_prcs_timeVal_3;
-- timeVal[2]
t_prcs_timeVal_2: PROCESS
BEGIN
	timeVal(2) <= '0';
WAIT;
END PROCESS t_prcs_timeVal_2;
-- timeVal[1]
t_prcs_timeVal_1: PROCESS
BEGIN
	timeVal(1) <= '0';
WAIT;
END PROCESS t_prcs_timeVal_1;
-- timeVal[0]
t_prcs_timeVal_0: PROCESS
BEGIN
	timeVal(0) <= '1';
WAIT;
END PROCESS t_prcs_timeVal_0;
END TimerAuxFSM_arch;

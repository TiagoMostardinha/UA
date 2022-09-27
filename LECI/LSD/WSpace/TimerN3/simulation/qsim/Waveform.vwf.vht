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
-- Generated on "06/18/2021 19:05:32"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          TimerN3
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY TimerN3_vhd_vec_tst IS
END TimerN3_vhd_vec_tst;
ARCHITECTURE TimerN3_arch OF TimerN3_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL halt : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL timerOut : STD_LOGIC;
COMPONENT TimerN3
	PORT (
	clk : IN STD_LOGIC;
	halt : IN STD_LOGIC;
	start : IN STD_LOGIC;
	timerOut : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : TimerN3
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	halt => halt,
	start => start,
	timerOut => timerOut
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

-- halt
t_prcs_halt: PROCESS
BEGIN
	halt <= '1';
	WAIT FOR 50000 ps;
	halt <= '0';
	WAIT FOR 250000 ps;
	halt <= '1';
	WAIT FOR 150000 ps;
	halt <= '0';
	WAIT FOR 100000 ps;
	halt <= '1';
	WAIT FOR 50000 ps;
	halt <= '0';
	WAIT FOR 50000 ps;
	halt <= '1';
	WAIT FOR 50000 ps;
	halt <= '0';
	WAIT FOR 100000 ps;
	halt <= '1';
	WAIT FOR 50000 ps;
	halt <= '0';
	WAIT FOR 50000 ps;
	halt <= '1';
WAIT;
END PROCESS t_prcs_halt;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 50000 ps;
	start <= '1';
	WAIT FOR 50000 ps;
	start <= '0';
	WAIT FOR 150000 ps;
	start <= '1';
	WAIT FOR 50000 ps;
	start <= '0';
	WAIT FOR 100000 ps;
	start <= '1';
	WAIT FOR 50000 ps;
	start <= '0';
	WAIT FOR 100000 ps;
	start <= '1';
	WAIT FOR 50000 ps;
	start <= '0';
	WAIT FOR 50000 ps;
	start <= '1';
	WAIT FOR 100000 ps;
	start <= '0';
	WAIT FOR 50000 ps;
	start <= '1';
	WAIT FOR 50000 ps;
	start <= '0';
	WAIT FOR 50000 ps;
	start <= '1';
WAIT;
END PROCESS t_prcs_start;
END TimerN3_arch;
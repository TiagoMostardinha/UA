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
-- Generated on "06/17/2021 14:28:51"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Timer_FSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Timer_FSM_vhd_vec_tst IS
END Timer_FSM_vhd_vec_tst;
ARCHITECTURE Timer_FSM_arch OF Timer_FSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL new_time : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL time_exp : STD_LOGIC;
SIGNAL time_value : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL timer_en : STD_LOGIC;
COMPONENT Timer_FSM
	PORT (
	clk : IN STD_LOGIC;
	new_time : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	time_exp : BUFFER STD_LOGIC;
	time_value : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	timer_en : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Timer_FSM
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	new_time => new_time,
	reset => reset,
	time_exp => time_exp,
	time_value => time_value,
	timer_en => timer_en
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

-- new_time
t_prcs_new_time: PROCESS
BEGIN
	new_time <= '1';
WAIT;
END PROCESS t_prcs_new_time;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
-- time_value[3]
t_prcs_time_value_3: PROCESS
BEGIN
	time_value(3) <= '0';
	WAIT FOR 400000 ps;
	time_value(3) <= '1';
	WAIT FOR 200000 ps;
	time_value(3) <= '0';
	WAIT FOR 200000 ps;
	time_value(3) <= '1';
WAIT;
END PROCESS t_prcs_time_value_3;
-- time_value[2]
t_prcs_time_value_2: PROCESS
BEGIN
	time_value(2) <= '0';
	WAIT FOR 200000 ps;
	time_value(2) <= '1';
	WAIT FOR 600000 ps;
	time_value(2) <= '0';
WAIT;
END PROCESS t_prcs_time_value_2;
-- time_value[1]
t_prcs_time_value_1: PROCESS
BEGIN
	time_value(1) <= '1';
	WAIT FOR 400000 ps;
	time_value(1) <= '0';
	WAIT FOR 200000 ps;
	time_value(1) <= '1';
	WAIT FOR 200000 ps;
	time_value(1) <= '0';
WAIT;
END PROCESS t_prcs_time_value_1;
-- time_value[0]
t_prcs_time_value_0: PROCESS
BEGIN
	time_value(0) <= '0';
	WAIT FOR 200000 ps;
	time_value(0) <= '1';
	WAIT FOR 200000 ps;
	time_value(0) <= '0';
	WAIT FOR 200000 ps;
	time_value(0) <= '1';
	WAIT FOR 200000 ps;
	time_value(0) <= '0';
WAIT;
END PROCESS t_prcs_time_value_0;

-- timer_en
t_prcs_timer_en: PROCESS
BEGIN
	timer_en <= '1';
WAIT;
END PROCESS t_prcs_timer_en;
END Timer_FSM_arch;

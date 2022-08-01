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
-- Generated on "05/19/2021 02:01:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Accu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Accu_vhd_vec_tst IS
END Accu_vhd_vec_tst;
ARCHITECTURE Accu_arch OF Accu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CK : STD_LOGIC;
SIGNAL dataIn : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dataOut : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL EN : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT Accu
	PORT (
	CK : IN STD_LOGIC;
	dataIn : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dataOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	EN : IN STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Accu
	PORT MAP (
-- list connections between master ports and signals
	CK => CK,
	dataIn => dataIn,
	dataOut => dataOut,
	EN => EN,
	rst => rst
	);

-- CK
t_prcs_CK: PROCESS
BEGIN
LOOP
	CK <= '0';
	WAIT FOR 6000 ps;
	CK <= '1';
	WAIT FOR 4000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CK;

-- EN
t_prcs_EN: PROCESS
BEGIN
	EN <= '1';
	WAIT FOR 250000 ps;
	EN <= '0';
WAIT;
END PROCESS t_prcs_EN;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
	WAIT FOR 340000 ps;
	rst <= '1';
	WAIT FOR 410000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
-- dataIn[3]
t_prcs_dataIn_3: PROCESS
BEGIN
	dataIn(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_3;
-- dataIn[2]
t_prcs_dataIn_2: PROCESS
BEGIN
	dataIn(2) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_2;
-- dataIn[1]
t_prcs_dataIn_1: PROCESS
BEGIN
	dataIn(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn_1;
-- dataIn[0]
t_prcs_dataIn_0: PROCESS
BEGIN
	dataIn(0) <= '1';
	WAIT FOR 370000 ps;
	dataIn(0) <= '0';
	WAIT FOR 420000 ps;
	dataIn(0) <= '1';
WAIT;
END PROCESS t_prcs_dataIn_0;
END Accu_arch;

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
-- Generated on "06/14/2021 20:02:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          bin7seg_buffer
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY bin7seg_buffer_vhd_vec_tst IS
END bin7seg_buffer_vhd_vec_tst;
ARCHITECTURE bin7seg_buffer_arch OF bin7seg_buffer_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL binIn : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL binOut : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT bin7seg_buffer
	PORT (
	binIn : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	binOut : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : bin7seg_buffer
	PORT MAP (
-- list connections between master ports and signals
	binIn => binIn,
	binOut => binOut
	);
-- binIn[3]
t_prcs_binIn_3: PROCESS
BEGIN
	binIn(3) <= '1';
	WAIT FOR 100000 ps;
	binIn(3) <= '0';
	WAIT FOR 50000 ps;
	binIn(3) <= '1';
	WAIT FOR 100000 ps;
	binIn(3) <= '0';
	WAIT FOR 50000 ps;
	binIn(3) <= '1';
	WAIT FOR 50000 ps;
	binIn(3) <= '0';
	WAIT FOR 100000 ps;
	binIn(3) <= '1';
	WAIT FOR 50000 ps;
	binIn(3) <= '0';
	WAIT FOR 100000 ps;
	binIn(3) <= '1';
	WAIT FOR 50000 ps;
	binIn(3) <= '0';
	WAIT FOR 50000 ps;
	binIn(3) <= '1';
	WAIT FOR 50000 ps;
	binIn(3) <= '0';
	WAIT FOR 50000 ps;
	binIn(3) <= '1';
	WAIT FOR 50000 ps;
	binIn(3) <= '0';
WAIT;
END PROCESS t_prcs_binIn_3;
-- binIn[2]
t_prcs_binIn_2: PROCESS
BEGIN
	binIn(2) <= '1';
	WAIT FOR 100000 ps;
	binIn(2) <= '0';
	WAIT FOR 50000 ps;
	binIn(2) <= '1';
	WAIT FOR 250000 ps;
	binIn(2) <= '0';
	WAIT FOR 150000 ps;
	binIn(2) <= '1';
	WAIT FOR 100000 ps;
	binIn(2) <= '0';
	WAIT FOR 50000 ps;
	binIn(2) <= '1';
	WAIT FOR 100000 ps;
	binIn(2) <= '0';
	WAIT FOR 100000 ps;
	binIn(2) <= '1';
WAIT;
END PROCESS t_prcs_binIn_2;
-- binIn[1]
t_prcs_binIn_1: PROCESS
BEGIN
	binIn(1) <= '0';
	WAIT FOR 50000 ps;
	binIn(1) <= '1';
	WAIT FOR 150000 ps;
	binIn(1) <= '0';
	WAIT FOR 100000 ps;
	binIn(1) <= '1';
	WAIT FOR 150000 ps;
	binIn(1) <= '0';
	WAIT FOR 100000 ps;
	binIn(1) <= '1';
	WAIT FOR 50000 ps;
	binIn(1) <= '0';
	WAIT FOR 50000 ps;
	binIn(1) <= '1';
	WAIT FOR 50000 ps;
	binIn(1) <= '0';
WAIT;
END PROCESS t_prcs_binIn_1;
-- binIn[0]
t_prcs_binIn_0: PROCESS
BEGIN
	binIn(0) <= '1';
	WAIT FOR 50000 ps;
	binIn(0) <= '0';
	WAIT FOR 50000 ps;
	binIn(0) <= '1';
	WAIT FOR 100000 ps;
	binIn(0) <= '0';
	WAIT FOR 100000 ps;
	binIn(0) <= '1';
	WAIT FOR 150000 ps;
	binIn(0) <= '0';
	WAIT FOR 100000 ps;
	binIn(0) <= '1';
	WAIT FOR 50000 ps;
	binIn(0) <= '0';
	WAIT FOR 50000 ps;
	binIn(0) <= '1';
	WAIT FOR 50000 ps;
	binIn(0) <= '0';
	WAIT FOR 50000 ps;
	binIn(0) <= '1';
	WAIT FOR 150000 ps;
	binIn(0) <= '0';
	WAIT FOR 50000 ps;
	binIn(0) <= '1';
WAIT;
END PROCESS t_prcs_binIn_0;
END bin7seg_buffer_arch;

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
-- Generated on "04/20/2021 17:27:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          EqCmp4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY EqCmp4_vhd_vec_tst IS
END EqCmp4_vhd_vec_tst;
ARCHITECTURE EqCmp4_arch OF EqCmp4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL cmpOut : STD_LOGIC;
SIGNAL inPort0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL inPort1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT EqCmp4
	PORT (
	cmpOut : BUFFER STD_LOGIC;
	inPort0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	inPort1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : EqCmp4
	PORT MAP (
-- list connections between master ports and signals
	cmpOut => cmpOut,
	inPort0 => inPort0,
	inPort1 => inPort1
	);
-- inPort0[3]
t_prcs_inPort0_3: PROCESS
BEGIN
	inPort0(3) <= '0';
	WAIT FOR 40000 ps;
	inPort0(3) <= '1';
	WAIT FOR 160000 ps;
	inPort0(3) <= '0';
	WAIT FOR 40000 ps;
	inPort0(3) <= '1';
	WAIT FOR 40000 ps;
	inPort0(3) <= '0';
	WAIT FOR 80000 ps;
	inPort0(3) <= '1';
	WAIT FOR 40000 ps;
	inPort0(3) <= '0';
	WAIT FOR 40000 ps;
	inPort0(3) <= '1';
	WAIT FOR 40000 ps;
	inPort0(3) <= '0';
	WAIT FOR 120000 ps;
	inPort0(3) <= '1';
	WAIT FOR 80000 ps;
	inPort0(3) <= '0';
	WAIT FOR 40000 ps;
	inPort0(3) <= '1';
	WAIT FOR 200000 ps;
	inPort0(3) <= '0';
	WAIT FOR 40000 ps;
	inPort0(3) <= '1';
WAIT;
END PROCESS t_prcs_inPort0_3;
-- inPort0[2]
t_prcs_inPort0_2: PROCESS
BEGIN
	inPort0(2) <= '1';
	WAIT FOR 160000 ps;
	inPort0(2) <= '0';
	WAIT FOR 40000 ps;
	inPort0(2) <= '1';
	WAIT FOR 120000 ps;
	inPort0(2) <= '0';
	WAIT FOR 80000 ps;
	inPort0(2) <= '1';
	WAIT FOR 40000 ps;
	inPort0(2) <= '0';
	WAIT FOR 40000 ps;
	inPort0(2) <= '1';
	WAIT FOR 80000 ps;
	inPort0(2) <= '0';
	WAIT FOR 80000 ps;
	inPort0(2) <= '1';
	WAIT FOR 160000 ps;
	inPort0(2) <= '0';
	WAIT FOR 80000 ps;
	inPort0(2) <= '1';
	WAIT FOR 40000 ps;
	inPort0(2) <= '0';
	WAIT FOR 40000 ps;
	inPort0(2) <= '1';
WAIT;
END PROCESS t_prcs_inPort0_2;
-- inPort0[1]
t_prcs_inPort0_1: PROCESS
BEGIN
	inPort0(1) <= '0';
	WAIT FOR 80000 ps;
	inPort0(1) <= '1';
	WAIT FOR 120000 ps;
	inPort0(1) <= '0';
	WAIT FOR 80000 ps;
	inPort0(1) <= '1';
	WAIT FOR 40000 ps;
	inPort0(1) <= '0';
	WAIT FOR 40000 ps;
	inPort0(1) <= '1';
	WAIT FOR 120000 ps;
	inPort0(1) <= '0';
	WAIT FOR 160000 ps;
	inPort0(1) <= '1';
	WAIT FOR 40000 ps;
	inPort0(1) <= '0';
	WAIT FOR 160000 ps;
	inPort0(1) <= '1';
	WAIT FOR 120000 ps;
	inPort0(1) <= '0';
WAIT;
END PROCESS t_prcs_inPort0_1;
-- inPort0[0]
t_prcs_inPort0_0: PROCESS
BEGIN
	inPort0(0) <= '0';
	WAIT FOR 80000 ps;
	inPort0(0) <= '1';
	WAIT FOR 40000 ps;
	inPort0(0) <= '0';
	WAIT FOR 80000 ps;
	inPort0(0) <= '1';
	WAIT FOR 40000 ps;
	inPort0(0) <= '0';
	WAIT FOR 80000 ps;
	inPort0(0) <= '1';
	WAIT FOR 40000 ps;
	inPort0(0) <= '0';
	WAIT FOR 280000 ps;
	inPort0(0) <= '1';
	WAIT FOR 120000 ps;
	inPort0(0) <= '0';
	WAIT FOR 40000 ps;
	inPort0(0) <= '1';
	WAIT FOR 40000 ps;
	inPort0(0) <= '0';
	WAIT FOR 40000 ps;
	inPort0(0) <= '1';
WAIT;
END PROCESS t_prcs_inPort0_0;
-- inPort1[3]
t_prcs_inPort1_3: PROCESS
BEGIN
	inPort1(3) <= '0';
	WAIT FOR 40000 ps;
	inPort1(3) <= '1';
	WAIT FOR 40000 ps;
	inPort1(3) <= '0';
	WAIT FOR 80000 ps;
	inPort1(3) <= '1';
	WAIT FOR 40000 ps;
	inPort1(3) <= '0';
	WAIT FOR 40000 ps;
	inPort1(3) <= '1';
	WAIT FOR 40000 ps;
	inPort1(3) <= '0';
	WAIT FOR 80000 ps;
	inPort1(3) <= '1';
	WAIT FOR 200000 ps;
	inPort1(3) <= '0';
	WAIT FOR 80000 ps;
	inPort1(3) <= '1';
	WAIT FOR 80000 ps;
	inPort1(3) <= '0';
	WAIT FOR 80000 ps;
	inPort1(3) <= '1';
	WAIT FOR 40000 ps;
	inPort1(3) <= '0';
	WAIT FOR 80000 ps;
	inPort1(3) <= '1';
WAIT;
END PROCESS t_prcs_inPort1_3;
-- inPort1[2]
t_prcs_inPort1_2: PROCESS
BEGIN
	inPort1(2) <= '0';
	WAIT FOR 200000 ps;
	inPort1(2) <= '1';
	WAIT FOR 160000 ps;
	inPort1(2) <= '0';
	WAIT FOR 40000 ps;
	inPort1(2) <= '1';
	WAIT FOR 40000 ps;
	inPort1(2) <= '0';
	WAIT FOR 40000 ps;
	inPort1(2) <= '1';
	WAIT FOR 40000 ps;
	inPort1(2) <= '0';
	WAIT FOR 200000 ps;
	inPort1(2) <= '1';
	WAIT FOR 40000 ps;
	inPort1(2) <= '0';
	WAIT FOR 80000 ps;
	inPort1(2) <= '1';
	WAIT FOR 80000 ps;
	inPort1(2) <= '0';
	WAIT FOR 40000 ps;
	inPort1(2) <= '1';
WAIT;
END PROCESS t_prcs_inPort1_2;
-- inPort1[1]
t_prcs_inPort1_1: PROCESS
BEGIN
	inPort1(1) <= '0';
	WAIT FOR 40000 ps;
	inPort1(1) <= '1';
	WAIT FOR 80000 ps;
	inPort1(1) <= '0';
	WAIT FOR 120000 ps;
	inPort1(1) <= '1';
	WAIT FOR 40000 ps;
	inPort1(1) <= '0';
	WAIT FOR 120000 ps;
	inPort1(1) <= '1';
	WAIT FOR 80000 ps;
	inPort1(1) <= '0';
	WAIT FOR 80000 ps;
	inPort1(1) <= '1';
	WAIT FOR 120000 ps;
	inPort1(1) <= '0';
	WAIT FOR 40000 ps;
	inPort1(1) <= '1';
WAIT;
END PROCESS t_prcs_inPort1_1;
-- inPort1[0]
t_prcs_inPort1_0: PROCESS
BEGIN
	inPort1(0) <= '0';
	WAIT FOR 40000 ps;
	inPort1(0) <= '1';
	WAIT FOR 40000 ps;
	inPort1(0) <= '0';
	WAIT FOR 40000 ps;
	inPort1(0) <= '1';
	WAIT FOR 160000 ps;
	inPort1(0) <= '0';
	WAIT FOR 40000 ps;
	inPort1(0) <= '1';
	WAIT FOR 40000 ps;
	inPort1(0) <= '0';
	WAIT FOR 40000 ps;
	inPort1(0) <= '1';
	WAIT FOR 80000 ps;
	inPort1(0) <= '0';
	WAIT FOR 40000 ps;
	inPort1(0) <= '1';
	WAIT FOR 120000 ps;
	inPort1(0) <= '0';
	WAIT FOR 80000 ps;
	inPort1(0) <= '1';
	WAIT FOR 80000 ps;
	inPort1(0) <= '0';
WAIT;
END PROCESS t_prcs_inPort1_0;
END EqCmp4_arch;

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
-- Generated on "04/23/2021 17:55:37"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Cmp2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Cmp2_vhd_vec_tst IS
END Cmp2_vhd_vec_tst;
ARCHITECTURE Cmp2_arch OF Cmp2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL in0 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL in1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL oute : STD_LOGIC;
SIGNAL outg : STD_LOGIC;
SIGNAL outl : STD_LOGIC;
COMPONENT Cmp2
	PORT (
	in0 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	in1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	oute : OUT STD_LOGIC;
	outg : OUT STD_LOGIC;
	outl : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Cmp2
	PORT MAP (
-- list connections between master ports and signals
	in0 => in0,
	in1 => in1,
	oute => oute,
	outg => outg,
	outl => outl
	);
-- in0[1]
t_prcs_in0_1: PROCESS
BEGIN
	in0(1) <= '0';
	WAIT FOR 40000 ps;
	in0(1) <= '1';
	WAIT FOR 280000 ps;
	in0(1) <= '0';
	WAIT FOR 120000 ps;
	in0(1) <= '1';
	WAIT FOR 160000 ps;
	in0(1) <= '0';
	WAIT FOR 80000 ps;
	in0(1) <= '1';
	WAIT FOR 40000 ps;
	in0(1) <= '0';
	WAIT FOR 80000 ps;
	in0(1) <= '1';
	WAIT FOR 80000 ps;
	in0(1) <= '0';
	WAIT FOR 40000 ps;
	in0(1) <= '1';
WAIT;
END PROCESS t_prcs_in0_1;
-- in0[0]
t_prcs_in0_0: PROCESS
BEGIN
	in0(0) <= '0';
	WAIT FOR 40000 ps;
	in0(0) <= '1';
	WAIT FOR 80000 ps;
	in0(0) <= '0';
	WAIT FOR 80000 ps;
	in0(0) <= '1';
	WAIT FOR 40000 ps;
	in0(0) <= '0';
	WAIT FOR 80000 ps;
	in0(0) <= '1';
	WAIT FOR 40000 ps;
	in0(0) <= '0';
	WAIT FOR 80000 ps;
	in0(0) <= '1';
	WAIT FOR 40000 ps;
	in0(0) <= '0';
	WAIT FOR 40000 ps;
	in0(0) <= '1';
	WAIT FOR 40000 ps;
	in0(0) <= '0';
	WAIT FOR 40000 ps;
	in0(0) <= '1';
	WAIT FOR 40000 ps;
	in0(0) <= '0';
	WAIT FOR 80000 ps;
	in0(0) <= '1';
	WAIT FOR 40000 ps;
	in0(0) <= '0';
	WAIT FOR 80000 ps;
	in0(0) <= '1';
	WAIT FOR 80000 ps;
	in0(0) <= '0';
	WAIT FOR 40000 ps;
	in0(0) <= '1';
WAIT;
END PROCESS t_prcs_in0_0;
-- in1[1]
t_prcs_in1_1: PROCESS
BEGIN
	in1(1) <= '0';
	WAIT FOR 40000 ps;
	in1(1) <= '1';
	WAIT FOR 40000 ps;
	in1(1) <= '0';
	WAIT FOR 200000 ps;
	in1(1) <= '1';
	WAIT FOR 40000 ps;
	in1(1) <= '0';
	WAIT FOR 40000 ps;
	in1(1) <= '1';
	WAIT FOR 120000 ps;
	in1(1) <= '0';
	WAIT FOR 40000 ps;
	in1(1) <= '1';
	WAIT FOR 40000 ps;
	in1(1) <= '0';
	WAIT FOR 40000 ps;
	in1(1) <= '1';
	WAIT FOR 40000 ps;
	in1(1) <= '0';
	WAIT FOR 40000 ps;
	in1(1) <= '1';
	WAIT FOR 40000 ps;
	in1(1) <= '0';
	WAIT FOR 40000 ps;
	in1(1) <= '1';
	WAIT FOR 120000 ps;
	in1(1) <= '0';
WAIT;
END PROCESS t_prcs_in1_1;
-- in1[0]
t_prcs_in1_0: PROCESS
BEGIN
	in1(0) <= '1';
	WAIT FOR 40000 ps;
	in1(0) <= '0';
	WAIT FOR 120000 ps;
	in1(0) <= '1';
	WAIT FOR 80000 ps;
	in1(0) <= '0';
	WAIT FOR 80000 ps;
	in1(0) <= '1';
	WAIT FOR 120000 ps;
	in1(0) <= '0';
	WAIT FOR 80000 ps;
	in1(0) <= '1';
	WAIT FOR 40000 ps;
	in1(0) <= '0';
	WAIT FOR 40000 ps;
	in1(0) <= '1';
	WAIT FOR 120000 ps;
	in1(0) <= '0';
	WAIT FOR 160000 ps;
	in1(0) <= '1';
WAIT;
END PROCESS t_prcs_in1_0;
END Cmp2_arch;

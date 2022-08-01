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
-- Generated on "04/23/2021 19:11:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mux2_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux2_1_vhd_vec_tst IS
END Mux2_1_vhd_vec_tst;
ARCHITECTURE Mux2_1_arch OF Mux2_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL in0 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL in1 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL out0 : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL sel : STD_LOGIC;
COMPONENT Mux2_1
	PORT (
	in0 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	in1 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	out0 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	sel : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Mux2_1
	PORT MAP (
-- list connections between master ports and signals
	in0 => in0,
	in1 => in1,
	out0 => out0,
	sel => sel
	);

-- sel
t_prcs_sel: PROCESS
BEGIN
	sel <= '0';
	WAIT FOR 80000 ps;
	sel <= '1';
	WAIT FOR 80000 ps;
	sel <= '0';
	WAIT FOR 240000 ps;
	sel <= '1';
	WAIT FOR 80000 ps;
	sel <= '0';
	WAIT FOR 80000 ps;
	sel <= '1';
	WAIT FOR 80000 ps;
	sel <= '0';
	WAIT FOR 160000 ps;
	sel <= '1';
WAIT;
END PROCESS t_prcs_sel;
-- in0[1]
t_prcs_in0_1: PROCESS
BEGIN
	in0(1) <= '1';
	WAIT FOR 120000 ps;
	in0(1) <= '0';
	WAIT FOR 40000 ps;
	in0(1) <= '1';
	WAIT FOR 80000 ps;
	in0(1) <= '0';
	WAIT FOR 40000 ps;
	in0(1) <= '1';
	WAIT FOR 40000 ps;
	in0(1) <= '0';
	WAIT FOR 40000 ps;
	in0(1) <= '1';
	WAIT FOR 40000 ps;
	in0(1) <= '0';
	WAIT FOR 40000 ps;
	in0(1) <= '1';
	WAIT FOR 80000 ps;
	in0(1) <= '0';
	WAIT FOR 40000 ps;
	in0(1) <= '1';
	WAIT FOR 40000 ps;
	in0(1) <= '0';
	WAIT FOR 40000 ps;
	in0(1) <= '1';
	WAIT FOR 40000 ps;
	in0(1) <= '0';
	WAIT FOR 40000 ps;
	in0(1) <= '1';
	WAIT FOR 40000 ps;
	in0(1) <= '0';
	WAIT FOR 40000 ps;
	in0(1) <= '1';
	WAIT FOR 80000 ps;
	in0(1) <= '0';
	WAIT FOR 80000 ps;
	in0(1) <= '1';
WAIT;
END PROCESS t_prcs_in0_1;
-- in0[0]
t_prcs_in0_0: PROCESS
BEGIN
	in0(0) <= '1';
	WAIT FOR 40000 ps;
	in0(0) <= '0';
	WAIT FOR 80000 ps;
	in0(0) <= '1';
	WAIT FOR 40000 ps;
	in0(0) <= '0';
	WAIT FOR 40000 ps;
	in0(0) <= '1';
	WAIT FOR 80000 ps;
	in0(0) <= '0';
	WAIT FOR 40000 ps;
	in0(0) <= '1';
	WAIT FOR 80000 ps;
	in0(0) <= '0';
	WAIT FOR 80000 ps;
	in0(0) <= '1';
	WAIT FOR 40000 ps;
	in0(0) <= '0';
	WAIT FOR 120000 ps;
	in0(0) <= '1';
	WAIT FOR 320000 ps;
	in0(0) <= '0';
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
	WAIT FOR 40000 ps;
	in1(1) <= '1';
	WAIT FOR 40000 ps;
	in1(1) <= '0';
	WAIT FOR 40000 ps;
	in1(1) <= '1';
	WAIT FOR 80000 ps;
	in1(1) <= '0';
	WAIT FOR 40000 ps;
	in1(1) <= '1';
	WAIT FOR 120000 ps;
	in1(1) <= '0';
	WAIT FOR 40000 ps;
	in1(1) <= '1';
	WAIT FOR 80000 ps;
	in1(1) <= '0';
	WAIT FOR 40000 ps;
	in1(1) <= '1';
	WAIT FOR 80000 ps;
	in1(1) <= '0';
	WAIT FOR 40000 ps;
	in1(1) <= '1';
	WAIT FOR 40000 ps;
	in1(1) <= '0';
	WAIT FOR 80000 ps;
	in1(1) <= '1';
	WAIT FOR 40000 ps;
	in1(1) <= '0';
	WAIT FOR 40000 ps;
	in1(1) <= '1';
	WAIT FOR 40000 ps;
	in1(1) <= '0';
WAIT;
END PROCESS t_prcs_in1_1;
-- in1[0]
t_prcs_in1_0: PROCESS
BEGIN
	in1(0) <= '0';
	WAIT FOR 40000 ps;
	in1(0) <= '1';
	WAIT FOR 40000 ps;
	in1(0) <= '0';
	WAIT FOR 40000 ps;
	in1(0) <= '1';
	WAIT FOR 120000 ps;
	in1(0) <= '0';
	WAIT FOR 80000 ps;
	in1(0) <= '1';
	WAIT FOR 160000 ps;
	in1(0) <= '0';
	WAIT FOR 80000 ps;
	in1(0) <= '1';
	WAIT FOR 40000 ps;
	in1(0) <= '0';
	WAIT FOR 40000 ps;
	in1(0) <= '1';
	WAIT FOR 80000 ps;
	in1(0) <= '0';
	WAIT FOR 160000 ps;
	in1(0) <= '1';
	WAIT FOR 80000 ps;
	in1(0) <= '0';
WAIT;
END PROCESS t_prcs_in1_0;
END Mux2_1_arch;

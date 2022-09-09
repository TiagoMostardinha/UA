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
-- Generated on "04/23/2021 19:17:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mux4_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux4_1_vhd_vec_tst IS
END Mux4_1_vhd_vec_tst;
ARCHITECTURE Mux4_1_arch OF Mux4_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL in0 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL in1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL in2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL in3 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL out0 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT Mux4_1
	PORT (
	in0 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	in1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	in2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	in3 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	out0 : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Mux4_1
	PORT MAP (
-- list connections between master ports and signals
	in0 => in0,
	in1 => in1,
	in2 => in2,
	in3 => in3,
	out0 => out0,
	sel => sel
	);
-- sel[1]
t_prcs_sel_1: PROCESS
BEGIN
	sel(1) <= '0';
	WAIT FOR 80000 ps;
	sel(1) <= '1';
	WAIT FOR 80000 ps;
	sel(1) <= '0';
	WAIT FOR 80000 ps;
	sel(1) <= '1';
	WAIT FOR 160000 ps;
	sel(1) <= '0';
	WAIT FOR 240000 ps;
	sel(1) <= '1';
	WAIT FOR 160000 ps;
	sel(1) <= '0';
	WAIT FOR 80000 ps;
	sel(1) <= '1';
WAIT;
END PROCESS t_prcs_sel_1;
-- sel[0]
t_prcs_sel_0: PROCESS
BEGIN
	sel(0) <= '1';
	WAIT FOR 160000 ps;
	sel(0) <= '0';
	WAIT FOR 80000 ps;
	sel(0) <= '1';
	WAIT FOR 160000 ps;
	sel(0) <= '0';
	WAIT FOR 160000 ps;
	sel(0) <= '1';
	WAIT FOR 80000 ps;
	sel(0) <= '0';
	WAIT FOR 160000 ps;
	sel(0) <= '1';
	WAIT FOR 80000 ps;
	sel(0) <= '0';
	WAIT FOR 80000 ps;
	sel(0) <= '1';
WAIT;
END PROCESS t_prcs_sel_0;
-- in0[2]
t_prcs_in0_2: PROCESS
BEGIN
	in0(2) <= '1';
	WAIT FOR 80000 ps;
	in0(2) <= '0';
	WAIT FOR 80000 ps;
	in0(2) <= '1';
	WAIT FOR 80000 ps;
	in0(2) <= '0';
	WAIT FOR 80000 ps;
	in0(2) <= '1';
	WAIT FOR 80000 ps;
	in0(2) <= '0';
	WAIT FOR 400000 ps;
	in0(2) <= '1';
	WAIT FOR 160000 ps;
	in0(2) <= '0';
WAIT;
END PROCESS t_prcs_in0_2;
-- in0[1]
t_prcs_in0_1: PROCESS
BEGIN
	in0(1) <= '1';
	WAIT FOR 80000 ps;
	in0(1) <= '0';
	WAIT FOR 160000 ps;
	in0(1) <= '1';
	WAIT FOR 80000 ps;
	in0(1) <= '0';
	WAIT FOR 400000 ps;
	in0(1) <= '1';
	WAIT FOR 160000 ps;
	in0(1) <= '0';
	WAIT FOR 80000 ps;
	in0(1) <= '1';
WAIT;
END PROCESS t_prcs_in0_1;
-- in0[0]
t_prcs_in0_0: PROCESS
BEGIN
	in0(0) <= '1';
	WAIT FOR 240000 ps;
	in0(0) <= '0';
	WAIT FOR 160000 ps;
	in0(0) <= '1';
	WAIT FOR 80000 ps;
	in0(0) <= '0';
	WAIT FOR 240000 ps;
	in0(0) <= '1';
	WAIT FOR 240000 ps;
	in0(0) <= '0';
WAIT;
END PROCESS t_prcs_in0_0;
-- in1[2]
t_prcs_in1_2: PROCESS
BEGIN
	in1(2) <= '1';
	WAIT FOR 240000 ps;
	in1(2) <= '0';
	WAIT FOR 160000 ps;
	in1(2) <= '1';
	WAIT FOR 80000 ps;
	in1(2) <= '0';
	WAIT FOR 160000 ps;
	in1(2) <= '1';
	WAIT FOR 80000 ps;
	in1(2) <= '0';
	WAIT FOR 80000 ps;
	in1(2) <= '1';
WAIT;
END PROCESS t_prcs_in1_2;
-- in1[1]
t_prcs_in1_1: PROCESS
BEGIN
	in1(1) <= '0';
	WAIT FOR 160000 ps;
	in1(1) <= '1';
	WAIT FOR 640000 ps;
	in1(1) <= '0';
	WAIT FOR 80000 ps;
	in1(1) <= '1';
WAIT;
END PROCESS t_prcs_in1_1;
-- in1[0]
t_prcs_in1_0: PROCESS
BEGIN
	in1(0) <= '0';
	WAIT FOR 160000 ps;
	in1(0) <= '1';
	WAIT FOR 80000 ps;
	in1(0) <= '0';
	WAIT FOR 480000 ps;
	in1(0) <= '1';
	WAIT FOR 80000 ps;
	in1(0) <= '0';
	WAIT FOR 80000 ps;
	in1(0) <= '1';
	WAIT FOR 80000 ps;
	in1(0) <= '0';
WAIT;
END PROCESS t_prcs_in1_0;
-- in2[2]
t_prcs_in2_2: PROCESS
BEGIN
	in2(2) <= '0';
	WAIT FOR 560000 ps;
	in2(2) <= '1';
	WAIT FOR 80000 ps;
	in2(2) <= '0';
	WAIT FOR 240000 ps;
	in2(2) <= '1';
	WAIT FOR 80000 ps;
	in2(2) <= '0';
WAIT;
END PROCESS t_prcs_in2_2;
-- in2[1]
t_prcs_in2_1: PROCESS
BEGIN
	in2(1) <= '0';
	WAIT FOR 80000 ps;
	in2(1) <= '1';
	WAIT FOR 160000 ps;
	in2(1) <= '0';
	WAIT FOR 160000 ps;
	in2(1) <= '1';
	WAIT FOR 80000 ps;
	in2(1) <= '0';
	WAIT FOR 160000 ps;
	in2(1) <= '1';
WAIT;
END PROCESS t_prcs_in2_1;
-- in2[0]
t_prcs_in2_0: PROCESS
BEGIN
	in2(0) <= '1';
	WAIT FOR 240000 ps;
	in2(0) <= '0';
	WAIT FOR 80000 ps;
	in2(0) <= '1';
	WAIT FOR 80000 ps;
	in2(0) <= '0';
	WAIT FOR 560000 ps;
	in2(0) <= '1';
WAIT;
END PROCESS t_prcs_in2_0;
-- in3[2]
t_prcs_in3_2: PROCESS
BEGIN
	in3(2) <= '0';
	WAIT FOR 80000 ps;
	in3(2) <= '1';
	WAIT FOR 400000 ps;
	in3(2) <= '0';
	WAIT FOR 80000 ps;
	in3(2) <= '1';
	WAIT FOR 160000 ps;
	in3(2) <= '0';
WAIT;
END PROCESS t_prcs_in3_2;
-- in3[1]
t_prcs_in3_1: PROCESS
BEGIN
	in3(1) <= '0';
	WAIT FOR 240000 ps;
	in3(1) <= '1';
	WAIT FOR 80000 ps;
	in3(1) <= '0';
	WAIT FOR 80000 ps;
	in3(1) <= '1';
	WAIT FOR 80000 ps;
	in3(1) <= '0';
	WAIT FOR 160000 ps;
	in3(1) <= '1';
	WAIT FOR 80000 ps;
	in3(1) <= '0';
	WAIT FOR 80000 ps;
	in3(1) <= '1';
	WAIT FOR 80000 ps;
	in3(1) <= '0';
	WAIT FOR 80000 ps;
	in3(1) <= '1';
WAIT;
END PROCESS t_prcs_in3_1;
-- in3[0]
t_prcs_in3_0: PROCESS
BEGIN
	in3(0) <= '1';
	WAIT FOR 80000 ps;
	in3(0) <= '0';
	WAIT FOR 320000 ps;
	in3(0) <= '1';
	WAIT FOR 80000 ps;
	in3(0) <= '0';
	WAIT FOR 80000 ps;
	in3(0) <= '1';
	WAIT FOR 80000 ps;
	in3(0) <= '0';
	WAIT FOR 80000 ps;
	in3(0) <= '1';
	WAIT FOR 240000 ps;
	in3(0) <= '0';
WAIT;
END PROCESS t_prcs_in3_0;
END Mux4_1_arch;

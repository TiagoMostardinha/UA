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
-- Generated on "05/19/2021 00:29:25"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Adder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Adder_vhd_vec_tst IS
END Adder_vhd_vec_tst;
ARCHITECTURE Adder_arch OF Adder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL op0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL op1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL s : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Adder
	PORT (
	op0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	op1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	s : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Adder
	PORT MAP (
-- list connections between master ports and signals
	op0 => op0,
	op1 => op1,
	s => s
	);
-- op0[7]
t_prcs_op0_7: PROCESS
BEGIN
	op0(7) <= '0';
WAIT;
END PROCESS t_prcs_op0_7;
-- op0[6]
t_prcs_op0_6: PROCESS
BEGIN
	op0(6) <= '0';
WAIT;
END PROCESS t_prcs_op0_6;
-- op0[5]
t_prcs_op0_5: PROCESS
BEGIN
	op0(5) <= '0';
WAIT;
END PROCESS t_prcs_op0_5;
-- op0[4]
t_prcs_op0_4: PROCESS
BEGIN
	op0(4) <= '0';
WAIT;
END PROCESS t_prcs_op0_4;
-- op0[3]
t_prcs_op0_3: PROCESS
BEGIN
	op0(3) <= '0';
WAIT;
END PROCESS t_prcs_op0_3;
-- op0[2]
t_prcs_op0_2: PROCESS
BEGIN
	op0(2) <= '0';
WAIT;
END PROCESS t_prcs_op0_2;
-- op0[1]
t_prcs_op0_1: PROCESS
BEGIN
	op0(1) <= '0';
WAIT;
END PROCESS t_prcs_op0_1;
-- op0[0]
t_prcs_op0_0: PROCESS
BEGIN
	op0(0) <= '1';
WAIT;
END PROCESS t_prcs_op0_0;
-- op1[7]
t_prcs_op1_7: PROCESS
BEGIN
	op1(7) <= '0';
WAIT;
END PROCESS t_prcs_op1_7;
-- op1[6]
t_prcs_op1_6: PROCESS
BEGIN
	op1(6) <= '0';
WAIT;
END PROCESS t_prcs_op1_6;
-- op1[5]
t_prcs_op1_5: PROCESS
BEGIN
	op1(5) <= '0';
WAIT;
END PROCESS t_prcs_op1_5;
-- op1[4]
t_prcs_op1_4: PROCESS
BEGIN
	op1(4) <= '0';
WAIT;
END PROCESS t_prcs_op1_4;
-- op1[3]
t_prcs_op1_3: PROCESS
BEGIN
	op1(3) <= '0';
WAIT;
END PROCESS t_prcs_op1_3;
-- op1[2]
t_prcs_op1_2: PROCESS
BEGIN
	op1(2) <= '0';
WAIT;
END PROCESS t_prcs_op1_2;
-- op1[1]
t_prcs_op1_1: PROCESS
BEGIN
	op1(1) <= '0';
WAIT;
END PROCESS t_prcs_op1_1;
-- op1[0]
t_prcs_op1_0: PROCESS
BEGIN
	op1(0) <= '1';
WAIT;
END PROCESS t_prcs_op1_0;
END Adder_arch;

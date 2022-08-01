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
-- Generated on "04/24/2021 17:10:10"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Bin7SegDe
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Bin7SegDe_vhd_vec_tst IS
END Bin7SegDe_vhd_vec_tst;
ARCHITECTURE Bin7SegDe_arch OF Bin7SegDe_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL in0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL out0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
COMPONENT Bin7SegDe
	PORT (
	in0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	out0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Bin7SegDe
	PORT MAP (
-- list connections between master ports and signals
	in0 => in0,
	out0 => out0
	);
-- in0[3]
t_prcs_in0_3: PROCESS
BEGIN
	in0(3) <= '0';
	WAIT FOR 80000 ps;
	in0(3) <= '1';
	WAIT FOR 80000 ps;
	in0(3) <= '0';
	WAIT FOR 40000 ps;
	in0(3) <= '1';
	WAIT FOR 40000 ps;
	in0(3) <= '0';
	WAIT FOR 120000 ps;
	in0(3) <= '1';
	WAIT FOR 80000 ps;
	in0(3) <= '0';
	WAIT FOR 80000 ps;
	in0(3) <= '1';
	WAIT FOR 40000 ps;
	in0(3) <= '0';
	WAIT FOR 40000 ps;
	in0(3) <= '1';
	WAIT FOR 40000 ps;
	in0(3) <= '0';
	WAIT FOR 40000 ps;
	in0(3) <= '1';
	WAIT FOR 120000 ps;
	in0(3) <= '0';
	WAIT FOR 80000 ps;
	in0(3) <= '1';
	WAIT FOR 80000 ps;
	in0(3) <= '0';
WAIT;
END PROCESS t_prcs_in0_3;
-- in0[2]
t_prcs_in0_2: PROCESS
BEGIN
	in0(2) <= '1';
	WAIT FOR 80000 ps;
	in0(2) <= '0';
	WAIT FOR 40000 ps;
	in0(2) <= '1';
	WAIT FOR 40000 ps;
	in0(2) <= '0';
	WAIT FOR 80000 ps;
	in0(2) <= '1';
	WAIT FOR 120000 ps;
	in0(2) <= '0';
	WAIT FOR 80000 ps;
	in0(2) <= '1';
	WAIT FOR 40000 ps;
	in0(2) <= '0';
	WAIT FOR 40000 ps;
	in0(2) <= '1';
	WAIT FOR 40000 ps;
	in0(2) <= '0';
	WAIT FOR 80000 ps;
	in0(2) <= '1';
	WAIT FOR 40000 ps;
	in0(2) <= '0';
	WAIT FOR 120000 ps;
	in0(2) <= '1';
	WAIT FOR 40000 ps;
	in0(2) <= '0';
	WAIT FOR 40000 ps;
	in0(2) <= '1';
	WAIT FOR 40000 ps;
	in0(2) <= '0';
WAIT;
END PROCESS t_prcs_in0_2;
-- in0[1]
t_prcs_in0_1: PROCESS
BEGIN
	in0(1) <= '0';
	WAIT FOR 40000 ps;
	in0(1) <= '1';
	WAIT FOR 40000 ps;
	in0(1) <= '0';
	WAIT FOR 40000 ps;
	in0(1) <= '1';
	WAIT FOR 120000 ps;
	in0(1) <= '0';
	WAIT FOR 80000 ps;
	in0(1) <= '1';
	WAIT FOR 120000 ps;
	in0(1) <= '0';
	WAIT FOR 40000 ps;
	in0(1) <= '1';
	WAIT FOR 120000 ps;
	in0(1) <= '0';
	WAIT FOR 80000 ps;
	in0(1) <= '1';
	WAIT FOR 120000 ps;
	in0(1) <= '0';
	WAIT FOR 40000 ps;
	in0(1) <= '1';
	WAIT FOR 40000 ps;
	in0(1) <= '0';
	WAIT FOR 40000 ps;
	in0(1) <= '1';
WAIT;
END PROCESS t_prcs_in0_1;
-- in0[0]
t_prcs_in0_0: PROCESS
BEGIN
	in0(0) <= '0';
	WAIT FOR 80000 ps;
	in0(0) <= '1';
	WAIT FOR 40000 ps;
	in0(0) <= '0';
	WAIT FOR 40000 ps;
	in0(0) <= '1';
	WAIT FOR 120000 ps;
	in0(0) <= '0';
	WAIT FOR 40000 ps;
	in0(0) <= '1';
	WAIT FOR 40000 ps;
	in0(0) <= '0';
	WAIT FOR 80000 ps;
	in0(0) <= '1';
	WAIT FOR 80000 ps;
	in0(0) <= '0';
	WAIT FOR 40000 ps;
	in0(0) <= '1';
	WAIT FOR 40000 ps;
	in0(0) <= '0';
	WAIT FOR 40000 ps;
	in0(0) <= '1';
	WAIT FOR 40000 ps;
	in0(0) <= '0';
	WAIT FOR 40000 ps;
	in0(0) <= '1';
	WAIT FOR 80000 ps;
	in0(0) <= '0';
	WAIT FOR 40000 ps;
	in0(0) <= '1';
	WAIT FOR 40000 ps;
	in0(0) <= '0';
	WAIT FOR 40000 ps;
	in0(0) <= '1';
WAIT;
END PROCESS t_prcs_in0_0;
END Bin7SegDe_arch;

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
-- Generated on "06/09/2021 00:22:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Rom_8x4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Rom_8x4_vhd_vec_tst IS
END Rom_8x4_vhd_vec_tst;
ARCHITECTURE Rom_8x4_arch OF Rom_8x4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL dataOut : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Rom_8x4
	PORT (
	address : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	dataOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Rom_8x4
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	dataOut => dataOut
	);
-- address[2]
t_prcs_address_2: PROCESS
BEGIN
	address(2) <= '0';
	WAIT FOR 50000 ps;
	address(2) <= '1';
	WAIT FOR 50000 ps;
	address(2) <= '0';
	WAIT FOR 150000 ps;
	address(2) <= '1';
	WAIT FOR 150000 ps;
	address(2) <= '0';
	WAIT FOR 200000 ps;
	address(2) <= '1';
	WAIT FOR 50000 ps;
	address(2) <= '0';
	WAIT FOR 150000 ps;
	address(2) <= '1';
	WAIT FOR 150000 ps;
	address(2) <= '0';
WAIT;
END PROCESS t_prcs_address_2;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
	address(1) <= '0';
	WAIT FOR 50000 ps;
	address(1) <= '1';
	WAIT FOR 150000 ps;
	address(1) <= '0';
	WAIT FOR 50000 ps;
	address(1) <= '1';
	WAIT FOR 100000 ps;
	address(1) <= '0';
	WAIT FOR 150000 ps;
	address(1) <= '1';
	WAIT FOR 50000 ps;
	address(1) <= '0';
	WAIT FOR 50000 ps;
	address(1) <= '1';
	WAIT FOR 50000 ps;
	address(1) <= '0';
	WAIT FOR 50000 ps;
	address(1) <= '1';
	WAIT FOR 50000 ps;
	address(1) <= '0';
WAIT;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
	address(0) <= '1';
	WAIT FOR 100000 ps;
	address(0) <= '0';
	WAIT FOR 50000 ps;
	address(0) <= '1';
	WAIT FOR 100000 ps;
	address(0) <= '0';
	WAIT FOR 200000 ps;
	address(0) <= '1';
	WAIT FOR 100000 ps;
	address(0) <= '0';
	WAIT FOR 150000 ps;
	address(0) <= '1';
	WAIT FOR 250000 ps;
	address(0) <= '0';
WAIT;
END PROCESS t_prcs_address_0;
END Rom_8x4_arch;

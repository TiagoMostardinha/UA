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
-- Generated on "04/21/2021 16:35:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          NOTGate
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY NOTGate_vhd_vec_tst IS
END NOTGate_vhd_vec_tst;
ARCHITECTURE NOTGate_arch OF NOTGate_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL i : STD_LOGIC;
SIGNAL o : STD_LOGIC;
COMPONENT NOTGate
	PORT (
	i : IN STD_LOGIC;
	o : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : NOTGate
	PORT MAP (
-- list connections between master ports and signals
	i => i,
	o => o
	);

-- i
t_prcs_i: PROCESS
BEGIN
	i <= '1';
	WAIT FOR 100000 ps;
	i <= '0';
	WAIT FOR 50000 ps;
	i <= '1';
	WAIT FOR 50000 ps;
	i <= '0';
	WAIT FOR 50000 ps;
	i <= '1';
	WAIT FOR 100000 ps;
	i <= '0';
	WAIT FOR 50000 ps;
	i <= '1';
	WAIT FOR 100000 ps;
	i <= '0';
	WAIT FOR 50000 ps;
	i <= '1';
	WAIT FOR 50000 ps;
	i <= '0';
	WAIT FOR 150000 ps;
	i <= '1';
	WAIT FOR 50000 ps;
	i <= '0';
	WAIT FOR 100000 ps;
	i <= '1';
WAIT;
END PROCESS t_prcs_i;
END NOTGate_arch;

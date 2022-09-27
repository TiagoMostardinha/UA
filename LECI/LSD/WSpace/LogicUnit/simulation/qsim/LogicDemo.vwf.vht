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
-- Generated on "04/21/2021 16:23:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LogicDemo1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LogicDemo1_vhd_vec_tst IS
END LogicDemo1_vhd_vec_tst;
ARCHITECTURE LogicDemo1_arch OF LogicDemo1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL AND : STD_LOGIC;
SIGNAL NAND : STD_LOGIC;
SIGNAL NOR : STD_LOGIC;
SIGNAL NOT : STD_LOGIC;
SIGNAL OR : STD_LOGIC;
SIGNAL SW : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL XOR : STD_LOGIC;
COMPONENT LogicDemo1
	PORT (
	\AND\ : OUT STD_LOGIC;
	\NAND\ : OUT STD_LOGIC;
	\NOR\ : OUT STD_LOGIC;
	\NOT\ : OUT STD_LOGIC;
	\OR\ : OUT STD_LOGIC;
	SW : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	\XOR\ : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : LogicDemo1
	PORT MAP (
-- list connections between master ports and signals
	\AND\ => AND,
	\NAND\ => NAND,
	\NOR\ => NOR,
	\NOT\ => NOT,
	\OR\ => OR,
	SW => SW,
	\XOR\ => XOR
	);
END LogicDemo1_arch;

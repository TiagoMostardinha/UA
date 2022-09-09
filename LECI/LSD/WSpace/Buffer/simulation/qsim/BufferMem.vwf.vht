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
-- Generated on "06/15/2021 17:26:22"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BufferMem
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BufferMem_vhd_vec_tst IS
END BufferMem_vhd_vec_tst;
ARCHITECTURE BufferMem_arch OF BufferMem_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clock : STD_LOGIC;
SIGNAL FantaIn : STD_LOGIC;
SIGNAL FantaOut : STD_LOGIC;
SIGNAL ResetIn : STD_LOGIC;
SIGNAL ResetOut : STD_LOGIC;
SIGNAL Sel_GelIn : STD_LOGIC;
SIGNAL Sel_GelOut : STD_LOGIC;
SIGNAL SumoLiIn : STD_LOGIC;
SIGNAL SumoLiOut : STD_LOGIC;
SIGNAL SumoPeIn : STD_LOGIC;
SIGNAL SumoPeOut : STD_LOGIC;
COMPONENT BufferMem
	PORT (
	Clock : IN STD_LOGIC;
	FantaIn : IN STD_LOGIC;
	FantaOut : OUT STD_LOGIC;
	ResetIn : IN STD_LOGIC;
	ResetOut : OUT STD_LOGIC;
	Sel_GelIn : IN STD_LOGIC;
	Sel_GelOut : OUT STD_LOGIC;
	SumoLiIn : IN STD_LOGIC;
	SumoLiOut : OUT STD_LOGIC;
	SumoPeIn : IN STD_LOGIC;
	SumoPeOut : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : BufferMem
	PORT MAP (
-- list connections between master ports and signals
	Clock => Clock,
	FantaIn => FantaIn,
	FantaOut => FantaOut,
	ResetIn => ResetIn,
	ResetOut => ResetOut,
	Sel_GelIn => Sel_GelIn,
	Sel_GelOut => Sel_GelOut,
	SumoLiIn => SumoLiIn,
	SumoLiOut => SumoLiOut,
	SumoPeIn => SumoPeIn,
	SumoPeOut => SumoPeOut
	);

-- Clock
t_prcs_Clock: PROCESS
BEGIN
LOOP
	Clock <= '0';
	WAIT FOR 25000 ps;
	Clock <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clock;

-- FantaIn
t_prcs_FantaIn: PROCESS
BEGIN
	FantaIn <= '0';
	WAIT FOR 100000 ps;
	FantaIn <= '1';
	WAIT FOR 50000 ps;
	FantaIn <= '0';
	WAIT FOR 250000 ps;
	FantaIn <= '1';
	WAIT FOR 50000 ps;
	FantaIn <= '0';
	WAIT FOR 50000 ps;
	FantaIn <= '1';
	WAIT FOR 50000 ps;
	FantaIn <= '0';
	WAIT FOR 150000 ps;
	FantaIn <= '1';
	WAIT FOR 50000 ps;
	FantaIn <= '0';
	WAIT FOR 200000 ps;
	FantaIn <= '1';
WAIT;
END PROCESS t_prcs_FantaIn;

-- ResetIn
t_prcs_ResetIn: PROCESS
BEGIN
	ResetIn <= '1';
	WAIT FOR 200000 ps;
	ResetIn <= '0';
	WAIT FOR 200000 ps;
	ResetIn <= '1';
	WAIT FOR 50000 ps;
	ResetIn <= '0';
	WAIT FOR 50000 ps;
	ResetIn <= '1';
	WAIT FOR 200000 ps;
	ResetIn <= '0';
	WAIT FOR 50000 ps;
	ResetIn <= '1';
	WAIT FOR 50000 ps;
	ResetIn <= '0';
	WAIT FOR 100000 ps;
	ResetIn <= '1';
WAIT;
END PROCESS t_prcs_ResetIn;

-- Sel_GelIn
t_prcs_Sel_GelIn: PROCESS
BEGIN
	Sel_GelIn <= '0';
	WAIT FOR 200000 ps;
	Sel_GelIn <= '1';
	WAIT FOR 50000 ps;
	Sel_GelIn <= '0';
	WAIT FOR 50000 ps;
	Sel_GelIn <= '1';
	WAIT FOR 50000 ps;
	Sel_GelIn <= '0';
	WAIT FOR 200000 ps;
	Sel_GelIn <= '1';
	WAIT FOR 250000 ps;
	Sel_GelIn <= '0';
	WAIT FOR 50000 ps;
	Sel_GelIn <= '1';
	WAIT FOR 50000 ps;
	Sel_GelIn <= '0';
WAIT;
END PROCESS t_prcs_Sel_GelIn;

-- SumoLiIn
t_prcs_SumoLiIn: PROCESS
BEGIN
	SumoLiIn <= '0';
	WAIT FOR 100000 ps;
	SumoLiIn <= '1';
	WAIT FOR 50000 ps;
	SumoLiIn <= '0';
	WAIT FOR 100000 ps;
	SumoLiIn <= '1';
	WAIT FOR 200000 ps;
	SumoLiIn <= '0';
	WAIT FOR 100000 ps;
	SumoLiIn <= '1';
	WAIT FOR 150000 ps;
	SumoLiIn <= '0';
	WAIT FOR 150000 ps;
	SumoLiIn <= '1';
WAIT;
END PROCESS t_prcs_SumoLiIn;

-- SumoPeIn
t_prcs_SumoPeIn: PROCESS
BEGIN
	SumoPeIn <= '0';
	WAIT FOR 200000 ps;
	SumoPeIn <= '1';
	WAIT FOR 50000 ps;
	SumoPeIn <= '0';
	WAIT FOR 200000 ps;
	SumoPeIn <= '1';
	WAIT FOR 50000 ps;
	SumoPeIn <= '0';
	WAIT FOR 50000 ps;
	SumoPeIn <= '1';
	WAIT FOR 50000 ps;
	SumoPeIn <= '0';
	WAIT FOR 100000 ps;
	SumoPeIn <= '1';
	WAIT FOR 150000 ps;
	SumoPeIn <= '0';
	WAIT FOR 50000 ps;
	SumoPeIn <= '1';
WAIT;
END PROCESS t_prcs_SumoPeIn;
END BufferMem_arch;

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
-- Generated on "05/19/2021 01:30:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Reg
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Reg_vhd_vec_tst IS
END Reg_vhd_vec_tst;
ARCHITECTURE Reg_arch OF Reg_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL clr : STD_LOGIC;
SIGNAL din : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dout : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL WEn : STD_LOGIC;
COMPONENT Reg
	PORT (
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	WEn : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Reg
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clr => clr,
	din => din,
	dout => dout,
	WEn => WEn
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 6000 ps;
	clk <= '1';
	WAIT FOR 4000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- clr
t_prcs_clr: PROCESS
BEGIN
	clr <= '0';
	WAIT FOR 80000 ps;
	clr <= '1';
	WAIT FOR 40000 ps;
	clr <= '0';
WAIT;
END PROCESS t_prcs_clr;

-- WEn
t_prcs_WEn: PROCESS
BEGIN
	WEn <= '1';
	WAIT FOR 50000 ps;
	WEn <= '0';
WAIT;
END PROCESS t_prcs_WEn;
-- din[7]
t_prcs_din_7: PROCESS
BEGIN
	din(7) <= '0';
	WAIT FOR 20000 ps;
	din(7) <= '1';
	WAIT FOR 40000 ps;
	din(7) <= '0';
	WAIT FOR 40000 ps;
	din(7) <= '1';
	WAIT FOR 20000 ps;
	din(7) <= '0';
	WAIT FOR 20000 ps;
	din(7) <= '1';
	WAIT FOR 20000 ps;
	din(7) <= '0';
	WAIT FOR 20000 ps;
	din(7) <= '1';
	WAIT FOR 60000 ps;
	din(7) <= '0';
	WAIT FOR 40000 ps;
	din(7) <= '1';
	WAIT FOR 40000 ps;
	din(7) <= '0';
	WAIT FOR 40000 ps;
	din(7) <= '1';
	WAIT FOR 20000 ps;
	din(7) <= '0';
	WAIT FOR 20000 ps;
	din(7) <= '1';
	WAIT FOR 20000 ps;
	din(7) <= '0';
	WAIT FOR 80000 ps;
	din(7) <= '1';
	WAIT FOR 180000 ps;
	din(7) <= '0';
	WAIT FOR 40000 ps;
	din(7) <= '1';
	WAIT FOR 20000 ps;
	din(7) <= '0';
	WAIT FOR 20000 ps;
	din(7) <= '1';
	WAIT FOR 40000 ps;
	din(7) <= '0';
	WAIT FOR 40000 ps;
	din(7) <= '1';
	WAIT FOR 20000 ps;
	din(7) <= '0';
	WAIT FOR 20000 ps;
	din(7) <= '1';
	WAIT FOR 20000 ps;
	din(7) <= '0';
	WAIT FOR 20000 ps;
	din(7) <= '1';
WAIT;
END PROCESS t_prcs_din_7;
-- din[6]
t_prcs_din_6: PROCESS
BEGIN
	din(6) <= '1';
	WAIT FOR 20000 ps;
	din(6) <= '0';
	WAIT FOR 40000 ps;
	din(6) <= '1';
	WAIT FOR 40000 ps;
	din(6) <= '0';
	WAIT FOR 20000 ps;
	din(6) <= '1';
	WAIT FOR 20000 ps;
	din(6) <= '0';
	WAIT FOR 40000 ps;
	din(6) <= '1';
	WAIT FOR 40000 ps;
	din(6) <= '0';
	WAIT FOR 20000 ps;
	din(6) <= '1';
	WAIT FOR 20000 ps;
	din(6) <= '0';
	WAIT FOR 100000 ps;
	din(6) <= '1';
	WAIT FOR 60000 ps;
	din(6) <= '0';
	WAIT FOR 40000 ps;
	din(6) <= '1';
	WAIT FOR 20000 ps;
	din(6) <= '0';
	WAIT FOR 20000 ps;
	din(6) <= '1';
	WAIT FOR 20000 ps;
	din(6) <= '0';
	WAIT FOR 40000 ps;
	din(6) <= '1';
	WAIT FOR 20000 ps;
	din(6) <= '0';
	WAIT FOR 20000 ps;
	din(6) <= '1';
	WAIT FOR 40000 ps;
	din(6) <= '0';
	WAIT FOR 60000 ps;
	din(6) <= '1';
	WAIT FOR 20000 ps;
	din(6) <= '0';
	WAIT FOR 60000 ps;
	din(6) <= '1';
	WAIT FOR 80000 ps;
	din(6) <= '0';
	WAIT FOR 20000 ps;
	din(6) <= '1';
	WAIT FOR 20000 ps;
	din(6) <= '0';
	WAIT FOR 40000 ps;
	din(6) <= '1';
WAIT;
END PROCESS t_prcs_din_6;
-- din[5]
t_prcs_din_5: PROCESS
BEGIN
	din(5) <= '0';
	WAIT FOR 40000 ps;
	din(5) <= '1';
	WAIT FOR 60000 ps;
	din(5) <= '0';
	WAIT FOR 40000 ps;
	din(5) <= '1';
	WAIT FOR 80000 ps;
	din(5) <= '0';
	WAIT FOR 20000 ps;
	din(5) <= '1';
	WAIT FOR 20000 ps;
	din(5) <= '0';
	WAIT FOR 20000 ps;
	din(5) <= '1';
	WAIT FOR 20000 ps;
	din(5) <= '0';
	WAIT FOR 20000 ps;
	din(5) <= '1';
	WAIT FOR 40000 ps;
	din(5) <= '0';
	WAIT FOR 40000 ps;
	din(5) <= '1';
	WAIT FOR 40000 ps;
	din(5) <= '0';
	WAIT FOR 20000 ps;
	din(5) <= '1';
	WAIT FOR 20000 ps;
	din(5) <= '0';
	WAIT FOR 20000 ps;
	din(5) <= '1';
	WAIT FOR 40000 ps;
	din(5) <= '0';
	WAIT FOR 60000 ps;
	din(5) <= '1';
	WAIT FOR 100000 ps;
	din(5) <= '0';
	WAIT FOR 60000 ps;
	din(5) <= '1';
	WAIT FOR 20000 ps;
	din(5) <= '0';
	WAIT FOR 20000 ps;
	din(5) <= '1';
	WAIT FOR 60000 ps;
	din(5) <= '0';
	WAIT FOR 20000 ps;
	din(5) <= '1';
	WAIT FOR 20000 ps;
	din(5) <= '0';
WAIT;
END PROCESS t_prcs_din_5;
-- din[4]
t_prcs_din_4: PROCESS
BEGIN
	din(4) <= '1';
	WAIT FOR 40000 ps;
	din(4) <= '0';
	WAIT FOR 20000 ps;
	din(4) <= '1';
	WAIT FOR 60000 ps;
	din(4) <= '0';
	WAIT FOR 40000 ps;
	din(4) <= '1';
	WAIT FOR 20000 ps;
	din(4) <= '0';
	WAIT FOR 20000 ps;
	din(4) <= '1';
	WAIT FOR 20000 ps;
	din(4) <= '0';
	WAIT FOR 20000 ps;
	din(4) <= '1';
	WAIT FOR 20000 ps;
	din(4) <= '0';
	WAIT FOR 60000 ps;
	din(4) <= '1';
	WAIT FOR 20000 ps;
	din(4) <= '0';
	WAIT FOR 60000 ps;
	din(4) <= '1';
	WAIT FOR 60000 ps;
	din(4) <= '0';
	WAIT FOR 20000 ps;
	din(4) <= '1';
	WAIT FOR 80000 ps;
	din(4) <= '0';
	WAIT FOR 20000 ps;
	din(4) <= '1';
	WAIT FOR 20000 ps;
	din(4) <= '0';
	WAIT FOR 20000 ps;
	din(4) <= '1';
	WAIT FOR 20000 ps;
	din(4) <= '0';
	WAIT FOR 20000 ps;
	din(4) <= '1';
	WAIT FOR 20000 ps;
	din(4) <= '0';
	WAIT FOR 20000 ps;
	din(4) <= '1';
	WAIT FOR 40000 ps;
	din(4) <= '0';
	WAIT FOR 20000 ps;
	din(4) <= '1';
	WAIT FOR 20000 ps;
	din(4) <= '0';
	WAIT FOR 40000 ps;
	din(4) <= '1';
	WAIT FOR 40000 ps;
	din(4) <= '0';
	WAIT FOR 20000 ps;
	din(4) <= '1';
	WAIT FOR 40000 ps;
	din(4) <= '0';
	WAIT FOR 40000 ps;
	din(4) <= '1';
WAIT;
END PROCESS t_prcs_din_4;
-- din[3]
t_prcs_din_3: PROCESS
BEGIN
	din(3) <= '0';
	WAIT FOR 20000 ps;
	din(3) <= '1';
	WAIT FOR 40000 ps;
	din(3) <= '0';
	WAIT FOR 40000 ps;
	din(3) <= '1';
	WAIT FOR 20000 ps;
	din(3) <= '0';
	WAIT FOR 20000 ps;
	din(3) <= '1';
	WAIT FOR 20000 ps;
	din(3) <= '0';
	WAIT FOR 40000 ps;
	din(3) <= '1';
	WAIT FOR 100000 ps;
	din(3) <= '0';
	WAIT FOR 20000 ps;
	din(3) <= '1';
	WAIT FOR 20000 ps;
	din(3) <= '0';
	WAIT FOR 120000 ps;
	din(3) <= '1';
	WAIT FOR 40000 ps;
	din(3) <= '0';
	WAIT FOR 40000 ps;
	din(3) <= '1';
	WAIT FOR 40000 ps;
	din(3) <= '0';
	WAIT FOR 20000 ps;
	din(3) <= '1';
	WAIT FOR 40000 ps;
	din(3) <= '0';
	WAIT FOR 20000 ps;
	din(3) <= '1';
	WAIT FOR 100000 ps;
	din(3) <= '0';
	WAIT FOR 40000 ps;
	din(3) <= '1';
	WAIT FOR 20000 ps;
	din(3) <= '0';
	WAIT FOR 20000 ps;
	din(3) <= '1';
	WAIT FOR 60000 ps;
	din(3) <= '0';
	WAIT FOR 20000 ps;
	din(3) <= '1';
	WAIT FOR 40000 ps;
	din(3) <= '0';
WAIT;
END PROCESS t_prcs_din_3;
-- din[2]
t_prcs_din_2: PROCESS
BEGIN
	din(2) <= '0';
	WAIT FOR 40000 ps;
	din(2) <= '1';
	WAIT FOR 20000 ps;
	din(2) <= '0';
	WAIT FOR 60000 ps;
	din(2) <= '1';
	WAIT FOR 60000 ps;
	din(2) <= '0';
	WAIT FOR 20000 ps;
	din(2) <= '1';
	WAIT FOR 20000 ps;
	din(2) <= '0';
	WAIT FOR 20000 ps;
	din(2) <= '1';
	WAIT FOR 40000 ps;
	din(2) <= '0';
	WAIT FOR 40000 ps;
	din(2) <= '1';
	WAIT FOR 60000 ps;
	din(2) <= '0';
	WAIT FOR 120000 ps;
	din(2) <= '1';
	WAIT FOR 40000 ps;
	din(2) <= '0';
	WAIT FOR 100000 ps;
	din(2) <= '1';
	WAIT FOR 20000 ps;
	din(2) <= '0';
	WAIT FOR 20000 ps;
	din(2) <= '1';
	WAIT FOR 20000 ps;
	din(2) <= '0';
	WAIT FOR 20000 ps;
	din(2) <= '1';
	WAIT FOR 40000 ps;
	din(2) <= '0';
	WAIT FOR 80000 ps;
	din(2) <= '1';
	WAIT FOR 20000 ps;
	din(2) <= '0';
	WAIT FOR 20000 ps;
	din(2) <= '1';
	WAIT FOR 60000 ps;
	din(2) <= '0';
	WAIT FOR 20000 ps;
	din(2) <= '1';
	WAIT FOR 20000 ps;
	din(2) <= '0';
WAIT;
END PROCESS t_prcs_din_2;
-- din[1]
t_prcs_din_1: PROCESS
BEGIN
	din(1) <= '1';
	WAIT FOR 100000 ps;
	din(1) <= '0';
	WAIT FOR 40000 ps;
	din(1) <= '1';
	WAIT FOR 40000 ps;
	din(1) <= '0';
	WAIT FOR 20000 ps;
	din(1) <= '1';
	WAIT FOR 40000 ps;
	din(1) <= '0';
	WAIT FOR 20000 ps;
	din(1) <= '1';
	WAIT FOR 40000 ps;
	din(1) <= '0';
	WAIT FOR 20000 ps;
	din(1) <= '1';
	WAIT FOR 20000 ps;
	din(1) <= '0';
	WAIT FOR 20000 ps;
	din(1) <= '1';
	WAIT FOR 20000 ps;
	din(1) <= '0';
	WAIT FOR 40000 ps;
	din(1) <= '1';
	WAIT FOR 60000 ps;
	din(1) <= '0';
	WAIT FOR 80000 ps;
	din(1) <= '1';
	WAIT FOR 120000 ps;
	din(1) <= '0';
	WAIT FOR 20000 ps;
	din(1) <= '1';
	WAIT FOR 40000 ps;
	din(1) <= '0';
	WAIT FOR 20000 ps;
	din(1) <= '1';
	WAIT FOR 20000 ps;
	din(1) <= '0';
	WAIT FOR 40000 ps;
	din(1) <= '1';
	WAIT FOR 20000 ps;
	din(1) <= '0';
	WAIT FOR 20000 ps;
	din(1) <= '1';
	WAIT FOR 60000 ps;
	din(1) <= '0';
	WAIT FOR 20000 ps;
	din(1) <= '1';
	WAIT FOR 20000 ps;
	din(1) <= '0';
WAIT;
END PROCESS t_prcs_din_1;
-- din[0]
t_prcs_din_0: PROCESS
BEGIN
	din(0) <= '0';
	WAIT FOR 20000 ps;
	din(0) <= '1';
	WAIT FOR 20000 ps;
	din(0) <= '0';
	WAIT FOR 20000 ps;
	din(0) <= '1';
	WAIT FOR 40000 ps;
	din(0) <= '0';
	WAIT FOR 40000 ps;
	din(0) <= '1';
	WAIT FOR 20000 ps;
	din(0) <= '0';
	WAIT FOR 40000 ps;
	din(0) <= '1';
	WAIT FOR 40000 ps;
	din(0) <= '0';
	WAIT FOR 140000 ps;
	din(0) <= '1';
	WAIT FOR 40000 ps;
	din(0) <= '0';
	WAIT FOR 20000 ps;
	din(0) <= '1';
	WAIT FOR 40000 ps;
	din(0) <= '0';
	WAIT FOR 40000 ps;
	din(0) <= '1';
	WAIT FOR 40000 ps;
	din(0) <= '0';
	WAIT FOR 20000 ps;
	din(0) <= '1';
	WAIT FOR 40000 ps;
	din(0) <= '0';
	WAIT FOR 20000 ps;
	din(0) <= '1';
	WAIT FOR 20000 ps;
	din(0) <= '0';
	WAIT FOR 20000 ps;
	din(0) <= '1';
	WAIT FOR 160000 ps;
	din(0) <= '0';
	WAIT FOR 20000 ps;
	din(0) <= '1';
	WAIT FOR 60000 ps;
	din(0) <= '0';
	WAIT FOR 20000 ps;
	din(0) <= '1';
WAIT;
END PROCESS t_prcs_din_0;
END Reg_arch;

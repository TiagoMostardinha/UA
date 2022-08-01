library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity LogicUnit is 
	port(inPort0 : in std_logic;
		inPort1 : in std_logic;
		invOut : out std_logic;
		andOut : out std_logic;
		orOut : out std_logic;
		xorOut : out std_logic;
		nandOut : out std_logic;
		norOut : out std_logic);
		
end LogicUnit;

architecture Behavorial of LogicUnit is
begin

	invOut <= not inPort0;
	andOut <= inPort0 and inPort1;
	orOut <= inPort0 or inPort1;
	xorOut <= (inPort0 and not inPort1) or (not inPort0 and inPort1);
	--xorOut <= inPort0 xor inPort1;
	nandOut <= inPort0 nand inPort1;
	norOut <= inPort0 nor inPort1;
	
end Behavorial;
	
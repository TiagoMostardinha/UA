library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AND2Gate is
	port(inPort0 : in std_logic;
		inPort1 : in std_logic;
		OutPort0 : out std_logic);
end AND2Gate;

architecture Behavorial of AND2Gate is
begin

	OutPort0 <= inPort0 and	inPort1;
	
end Behavorial;
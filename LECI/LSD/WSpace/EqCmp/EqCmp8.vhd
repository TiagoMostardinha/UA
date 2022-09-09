library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity EqCmp8 is
	port(inPort0 : in std_logic_vector(7 downto 0);
		inPort1 : in std_logic_vector(7 downto 0);
		cmpOut : out std_logic);
end EqCmp8;

Architecture Behavorial of EqCmp8 is
begin

	cmpOut <= '1' when (inPort0 = inPort1) else '0';
	
end Behavorial;	
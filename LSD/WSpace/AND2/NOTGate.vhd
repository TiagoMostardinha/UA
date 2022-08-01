library IEEE;
use IEEE.STD_LOGIC_1164.all;


entity NOTGate is
	port(i : in std_logic;
		o : out std_logic);
end NOTGate;

architecture Behavorial of NOTGate is
begin

	o <= not i;
	
end Behavorial;

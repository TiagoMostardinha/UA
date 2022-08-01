library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NOTGate is
	port(in0 : in std_logic;
		out0 : out std_logic);
end NOTGate;

architecture Behavorial of NOTGate is
begin
	out0 <= not in0;
end Behavorial;
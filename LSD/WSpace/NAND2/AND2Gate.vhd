library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AND2Gate is
	port(in0 : in std_logic;
		in1 : in std_logic;
		out0 : out std_logic);
end AND2Gate;

architecture Behavorial of AND2Gate is
begin 

	out0 <= in0 and in1;
	
end Behavorial;
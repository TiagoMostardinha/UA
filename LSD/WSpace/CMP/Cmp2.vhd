library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Cmp2 is
	port(in0 : in std_logic_vector(1 downto 0);
		in1 : in std_logic_vector(1 downto 0);
		outl : out std_logic;
		oute : out std_logic;
		outg : out std_logic);
end Cmp2;

architecture Behavorial of Cmp2 is
begin

	outl <= '1' when (in0 < in1) else '0';
	oute <= '1' when (in0 = in1) else '0';
	outg <= '1' when (in0 > in1) else '0';
	
end Behavorial;
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1_noP is
	port(in0 : in std_logic_vector(1 downto 0);
		in1 : in std_logic_vector(1 downto 0);
		sel : in std_logic;
		out0 : out std_logic_vector(1 downto 0));
end Mux2_1_noP;

architecture Behavorial of Mux2_1_noP is
begin
	out0 <= 	in0 when sel = '0' else in1;
				
end Behavorial;
		
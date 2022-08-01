library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity De2_4_noP is
	port(enable : in  std_logic;
		in0 : in std_logic_vector(1 downto 0);
		out0 : out std_logic_vector(3 downto 0));
end De2_4_noP;
architecture Behavorial of De2_4_noP is
begin

	out0 <= 	"0000" when (enable = '0') else
				"0001" when (in0 = "00" and enable = '1') else
				"0010" when (in0 = "01" and enable = '1') else
				"0100" when (in0 = "10" and enable = '1') else
				"1000";
	
	
end Behavorial;
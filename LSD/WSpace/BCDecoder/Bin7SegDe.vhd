library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Bin7SegDe is
	port(in0 : in std_logic_vector(3 downto 0);
		out0 : out std_logic_vector(6 downto 0));
end Bin7SegDe;

architecture Behavioral of Bin7SegDe is
begin

	out0 <= "1111001" when (in0 = "0001") else
			 "0110000" when (in0 = "0011") else
			 "0011001" when (in0 = "0100") else 
			 "0010010" when (in0 = "0101") else 
			 "0000010" when (in0 = "0110") else 
			 "1111000" when (in0 = "0111") else 
			 "0000000" when (in0 = "1000") else 
			 "0010000" when (in0 = "1001") else 
			 "0001000" when (in0 = "1010") else 
			 "0000011" when (in0 = "1011") else 
			 "1000110" when (in0 = "1100") else 
			 "0000110" when (in0 = "1110") else 
			 "0001110" when (in0 = "1111") else 
			 "1000000";
				 
 end Behavioral;
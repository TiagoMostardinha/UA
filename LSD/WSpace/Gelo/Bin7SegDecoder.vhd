library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity Bin7SegDecoder is
    port(decodein  : in  std_logic_vector(3 downto 0);
         decodeout : out std_logic_vector(6 downto 0));
end Bin7SegDecoder;
architecture RTL of Bin7SegDecoder is	
begin
    with decodein select
        decodeout <=  "0001110" when "0001",   --F
							 "0001000" when "0010",   --A
						  	 "0101011" when "0011",   --n
		                "0010010" when "0100",   --S
							 "1000000" when "0101",   --O
							 "1000111" when "0110",   --L
							 "1001111" when "0111",   --I
							 "0001100" when "1000",   --P
							 "0000110" when "1001",   --E
                      "0101111" when "1010",   --r
							 "0001001" when "1011",   --H
							 "0100011" when "1100",   --o
		  
		              
                
						   "1110111" when others;   --1
end RTL;

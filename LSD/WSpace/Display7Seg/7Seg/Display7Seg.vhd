library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity Display7Seg is 
	port( displayin : in std_logic_vector(3 downto 0);
	      HEX3,HEX2,HEX1,HEX0 : out std_logic_vector(6 downto 0));
end Display7Seg;	
architecture Structural of Display7Seg is 
signal bit3, bit2, bit1, bit0 : std_logic_vector(3 downto 0);
begin
block1 : entity work.bin7seg_buffer(Behavioral)
         port map(buffin => displayin,
					buffout3 => bit3,
					buffout2 => bit2,
					buffout1 => bit1,
					buffout0 => bit0);
					
Hex3b : entity work.Bin7SegDecoder(RTL)
			port map(decodein => bit3,
						decodeout => HEX3);
						
Hex2b : entity work.Bin7SegDecoder(RTL)
			port map(decodein => bit2,
						decodeout => HEX2);
					
Hex1b : entity work.Bin7SegDecoder(RTL)
			port map(decodein => bit1,
						decodeout => HEX1);
						
Hex0b : entity work.Bin7SegDecoder(RTL)
			port map(decodein => bit0,
						decodeout => HEX0);
end Structural;
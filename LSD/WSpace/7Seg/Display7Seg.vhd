library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity Display7Seg is 
	port( SW : in std_logic_vector(3 downto 0);
	      HEX3 : out std_logic_vector(6 downto 0);
			HEX2 : out std_logic_vector(6 downto 0);
			HEX1 : out std_logic_vector(6 downto 0);
			HEX0 : out std_logic_vector(6 downto 0));
end Display7Seg;	
architecture Structural of Display7Seg is 
signal bit3, bit2, bit1, bit0 : std_logic_vector(3 downto 0);
begin
block1 : entity work.bin7seg_buffer(Behavioral) 
         port map(binIn => SW,
						binOut3 => bit3,
						binOut2 => bit2,
						binOut1 => bit1,
						binOut0 => bit0);

Bcd3 : entity work.Bin7SegDecoder(RTL) 
			port map(decodein => bit3,
						decodeout => HEX3);

Bcd2 : entity work.Bin7SegDecoder(RTL) 
			port map(decodein => bit2,
						decodeout => HEX2);
						
Bcd1 : entity work.Bin7SegDecoder(RTL) 
			port map(decodein => bit1,
						decodeout => HEX1);
						
Bcd0 : entity work.Bin7SegDecoder(RTL) 
			port map(decodein => bit0,
						decodeout => HEX0);
end Structural;
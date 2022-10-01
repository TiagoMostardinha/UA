library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity Display7Seg_Gelo is 
	port( SW : in std_logic_vector(3 downto 0);
	      HEX7 : out std_logic_vector(6 downto 0);
			HEX6 : out std_logic_vector(6 downto 0);
			HEX5 : out std_logic_vector(6 downto 0);
			HEX4 : out std_logic_vector(6 downto 0));
end Display7Seg_Gelo;	
architecture Structural of Display7Seg_Gelo is 
signal bit7, bit6, bit5, bit4 : std_logic_vector(3 downto 0);
begin

block1 : entity work.bin7seg_gelo(Behavioral) 
         port map(geloin => SW,
						geloout3 => bit7,
						geloout2 => bit6,
						geloout1 => bit5,
						geloout0 => bit4);

Bcd3 : entity work.Bin7SegDecoder(RTL) 
			port map(decodein => bit7,
						decodeout => HEX7);

Bcd2 : entity work.Bin7SegDecoder(RTL) 
			port map(decodein => bit6,
						decodeout => HEX6);
						
Bcd1 : entity work.Bin7SegDecoder(RTL) 
			port map(decodein => bit5,
						decodeout => HEX5);
						
Bcd0 : entity work.Bin7SegDecoder(RTL) 
			port map(decodein => bit4,
						decodeout => HEX4);
end Structural;
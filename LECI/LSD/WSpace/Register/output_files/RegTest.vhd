library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RegTest is
	port(SW : in std_logic_vector(10 downto 0);
			LEDG : out std_logic_vector(6 downto 0);
			CLOCK_50 : in std_logic);
end RegTest;

architecture Structural of RegTest is
begin

banana : entity work.RegN(Behavioral)
	port map(clk => CLOCK_50,
			WEN => SW(9),
			dout => LEDG(4 downto 0),
			din => SW(4 downto 0));

end Structural;
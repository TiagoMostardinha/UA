library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity FreqDivider is
	generic(k : natural := 4);
	
	port(clkIn  : in std_logic;
		  clkOut : out std_logic);
end FreqDivider;

architecture v1 of FreqDivider is
	signal s_count : natural := 0;
	signal s_halfWay : natural := 0;
begin
	s_halfWay <= k/2 - 1;
	process(clkIn)
	begin
		if (rising_edge(clkIn)) then
			if(s_count >= k - 1) then
				s_count <= 0;
				clkOut  <= '0';
			elsif(s_count < s_halfWay) then
				s_count <= s_count + 1;
				clkOut <= '0';
			else
				s_count <= s_count + 1;
				clkOut <= '1';
			end if;
		end if;
	end process;
end v1;
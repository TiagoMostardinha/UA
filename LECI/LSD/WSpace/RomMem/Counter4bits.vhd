library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Counter4bits is
generic(MAX : natural := 15);
port(reset : in std_logic;
	clk : in std_logic;
	valOut : out std_logic_vector(3 downto 0));
end Counter4bits;

architecture RTL of Counter4bits is
s_value : std_logic_vector(unsigned(3 downto 0));
	begin
	process(reset,clk)
	begin
		if (rising_edge(clk)) then
			if(reset = '1') then
			s_value <= (others => '0');
			else
			s_value <= s_value + 1;
			end if;
		end if;
	end process;
	valOut <= std_logic_vector(s_value);
end RTL;

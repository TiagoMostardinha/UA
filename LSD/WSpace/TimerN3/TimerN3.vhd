library ieee;
use ieee.std_logic_1164.all;

entity TimerN3 is
	--generic(N     : positive := 1);
	port(clk      : in std_logic;
		  timeval : in std_logic_vector(7 downto 0);
		  start    : in std_logic;
		  halt     : in std_logic;
		  timerOut : out std_logic);
end TimerN3;

architecture v1 of TimerN3 is
	signal s_counter : integer := to_integer(unsigned(timeval))*50000000; --NAO MULTIPLICO POR 50E6
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(s_counter = 0) then
				if(start = '1') then
					s_counter <= s_counter + 1;
					timerOut <= '0';
				end if;
			elsif(s_counter = N) then
				timerOut <= '1';
			else
				if(halt = '0') then
					s_counter <= s_counter + 1;
				end if;
			end if;
		end if;
	end process;
end v1;
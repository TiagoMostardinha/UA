library ieee;
use ieee.std_logic_1164.all;

entity TimerN is
	generic(N     : positive := 3);
	port(clk      : in std_logic;
		  latch 	  : in std_logic;
		  start    : in std_logic;
		  halt     : in std_logic := '0';
		  timerOut : out std_logic := '0');
end TimerN;

architecture v1 of TimerN is
	signal s_counter : integer := 0;
begin
	process(clk,latch)
	begin
		if(rising_edge(clk)) then
			
			if(s_counter = 0) then
				if(start = '1') then
					s_counter <= s_counter + 1;
					timerOut <= '0';
				end if;
			elsif(latch = '1') then
				s_counter <= 0;
			elsif(s_counter = N) then
				timerOut <= latch;
				timerOut <= '1';
			else
				if(halt = '0') then
					s_counter <= s_counter + 1;
				end if;
		
			end if;
		end if;

	end process;
end v1;
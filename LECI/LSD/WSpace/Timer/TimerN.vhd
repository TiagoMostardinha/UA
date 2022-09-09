library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
 

 

entity TimerN is 
	generic(N : positive := 5); 
	port( clk     : in std_logic; 
	reset         : in std_logic; 
	enable        : in std_logic; 
	start         : in std_logic; 
	timerOnDelay  : out std_logic); 
	--timerOffDelay : out std_logic); 
end TimerN; 
 

architecture Behavioral of TimerN is 
signal s_count : integer := 0; 
begin 

	assert(N >= 2); 
	process(clk) 
		begin 
		if (rising_edge(clk)) then 
		if (reset = '1') then 
		timerOnDelay <= '0'; 
		--timerOffDelay <= '0'; 
		s_count <= 0; 
		elsif (enable = '1') then 
		if (s_count = 0) then 
		if (start = '1') then 
		s_count <= s_count + 1; 
		--timerOffDelay <= '1'; 
		end if; 
		timerOnDelay <= '0'; 
		  
		else 
		if (s_count = (N - 1)) then 
		timerOnDelay  <= '1'; 
		--timerOffDelay <= '0'; 
		s_count <= 0; 
		else 
		timerOnDelay <= '0'; 
		--timerOffDelay <= '1'; 
		s_count <= s_count + 1; 
		end if; 
		end if; 
		end if; 
		end if; 
	end process; 
	
end Behavioral; 
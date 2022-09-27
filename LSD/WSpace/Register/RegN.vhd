library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
 

entity RegN is 
	generic(n : natural := 5); 
	port (clk : in std_logic; 
			WEN : in std_logic; 
	din : in std_logic_vector(n-1 downto 0); 
	dout : out std_logic_vector(n-1 downto 0)); 
end RegN; 
 

architecture Behavioral of RegN is 
begin 
	process(clk,WEN) 
	begin 
	if rising_edge(clk) then 
		if (WEN = '1') then 
		dout <= din; 
		end if; 
		
	end if; 
end process; 
end Behavioral; 
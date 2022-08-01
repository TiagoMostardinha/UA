library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity En4_2 is
	port(in0 : in std_logic_vector(3 downto 0);
		out0 : out std_logic_vector(1 downto 0));
end En4_2;

architecture Behavorial of En4_2 is
begin
	process(in0)
	begin
	
		if (in0(3) = '1') then out0 <= "11";
		elsif (in0(2) = '1') then out0 <= "10"; 
		elsif (in0(1) = '1') then out0 <= "01";
		else out0 <= "00"; 
		
		end if;
	end process;
end Behavorial;
library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all; 
 

entity bin2BCD is 
    port(a: in   std_logic_vector(3 downto 0); 
         r : out  std_logic_vector(7 downto 0)); 
end bin2BCD; 
 

architecture Behavioral of bin2BCD is 
  
begin
  process(a) 
  begin 
		if (unsigned(a) < 9) then  
			r <= "0000" & a;
		else
			r <= std_logic_vector(unsigned("0000" & a) + 6);
    end if; 
  end process;  
end Behavioral;
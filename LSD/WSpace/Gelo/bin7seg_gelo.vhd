library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity bin7seg_gelo is
    port(geloin : in  std_logic_vector(3 downto 0);
         geloout3, geloout2, geloout1, geloout0 : out std_logic_vector(3 downto 0));
end bin7seg_gelo;


architecture Behavioral of bin7seg_gelo	 is
begin 

process (geloin) is
begin
	if geloin = "0001" then 	  geloout3 <= "1100";
									  geloout2 <= "0000";
									  geloout1 <= "0000";
									  geloout0 <= "0000";

									  
	elsif geloin = "0010" then   geloout3 <= "1100";
									  geloout2 <= "1100";
									  geloout1 <= "0000";
									  geloout0 <= "0000";

									  
	elsif geloin = "0100" then   geloout3 <= "1100";
									  geloout2 <= "1100";
									  geloout1 <= "1100";
									  geloout0 <= "0000";
									  
	
	elsif geloin = "1000" then	  geloout3 <= "1100";
									  geloout2 <= "1100";
									  geloout1 <= "1100";
									  geloout0 <= "1100";

									  
									  
	else							  geloout3 <= "0000";
									  geloout2 <= "0000";
									  geloout1 <= "0000";
									  geloout0 <= "0000";
									  
	end if;
end process;
end Behavioral;
	
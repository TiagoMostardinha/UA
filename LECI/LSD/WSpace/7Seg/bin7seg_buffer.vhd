library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity bin7seg_buffer is
    port(binIn : in  std_logic_vector(3 downto 0);
         binOut3, binOut2, binOut1, binOut0 : out std_logic_vector(3 downto 0));
end bin7seg_buffer;


architecture Behavioral of bin7seg_buffer	 is
begin 

process (binIn) is
begin
	if binIn = "0000" then 	  binOut3 <= "1011";
									  binOut2 <= "0111";
									  binOut1 <= "1011";
									  binOut0 <= "0111";

									  
	elsif binIn = "0001" then binOut3 <= "1001";
									  binOut2 <= "1010";
									  binOut1 <= "1001";
									  binOut0 <= "0001";

									  
	elsif binIn = "0010" then binOut3 <= "0001";
									  binOut2 <= "0010";
									  binOut1 <= "0011";
									  binOut0 <= "0000";
									  
	
	elsif binIn = "0011" then binOut3 <= "0100";
									  binOut2 <= "0101";
									  binOut1 <= "0110";
									  binOut0 <= "0111";
									  
	
	elsif binIn = "0100" then binOut3 <= "0100";
									  binOut2 <= "1000";
									  binOut1 <= "1001";
									  binOut0 <= "0100";
									  
									  
	else							  binOut3 <= "0000";
									  binOut2 <= "0000";
									  binOut1 <= "0000";
									  binOut0 <= "0000";
									  
	end if;
end process;
end Behavioral;
	
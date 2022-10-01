library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity bin7seg_buffer is
    port(buffin : in  std_logic_vector(3 downto 0);
         buffout3,buffout2,buffout1,buffout0 : out std_logic_vector(3 downto 0));
end bin7seg_buffer;


architecture Behavioral of bin7seg_buffer	 is
begin 

process (buffin) is
begin
	if ( buffin = "0001") then 		buffout3 	<= "1011";
												buffout2		<= "0111";
												buffout1		<= "1011";
												buffout0		<= "0111";
			
	elsif ( buffin = "0010") then 	buffout3 	<= "1001";
												buffout2		<= "1010";
												buffout1		<= "1001";
												buffout0		<= "0001";
												
	elsif ( buffin = "0011") then 	buffout3 	<= "0001";
												buffout2		<= "0010";
												buffout1		<= "0011";
												buffout0		<= "0000";
	
	elsif ( buffin = "0100") then 	buffout3 	<= "0100";
												buffout2		<= "0101";
												buffout1		<= "0110";
												buffout0		<= "0111";
												
	elsif ( buffin = "0101") then 	buffout3 	<= "0100";
												buffout2		<= "1000";
												buffout1		<= "1001";
												buffout0		<= "0100";
												
	else 										buffout3 	<= "0000";
												buffout2		<= "0000";
												buffout1		<= "0000";
												buffout0		<= "0000";
	
end if;
end process;
end Behavioral;
	
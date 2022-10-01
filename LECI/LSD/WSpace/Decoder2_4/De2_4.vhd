library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity De2_4 is
	port(enable : in  std_logic;
		in0 : in std_logic_vector(1 downto 0);
		out0 : out std_logic_vector(3 downto 0));
end De2_4;

architecture Behavorial of De2_4 is
begin

	process(in0,enable)
	begin
		if (enable = '0') then out0 <= "0000";
		else
			if (in0 = "00") then out0 <= "0001";
			elsif (in0 = "01") then out0 <= "0010";
			elsif (in0 = "10") then out0 <= "0100";
			elsif (in0 = "11") then out0 <= "1000";
			end if;
		end if;
	end process;
	
end Behavorial;
	
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux2_1 is
	port(in0 : in std_logic_vector(1 downto 0);
		in1 : in std_logic_vector(1 downto 0);
		sel : in std_logic;
		out0 : out std_logic_vector(1 downto 0));
end Mux2_1;

architecture Behavorial of Mux2_1 is
begin
	process(in0,sel)
	begin
		if(sel = '0') then out0 <= in0;
		else out0 <= in1;
		
		end if;
	end process;
end Behavorial;
		
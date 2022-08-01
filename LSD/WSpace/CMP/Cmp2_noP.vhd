library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Cmp2_noP is
	port(in0 : in std_logic_vector(1 downto 0);
		in1 : in std_logic_vector(1 downto 0);
		outl : out std_logic;
		oute : out std_logic;
		outg : out std_logic);
end Cmp2_noP;

architecture Behavorial of Cmp2_noP is
begin
	process(in0,in1)
	begin
		oute <= '0';
		outl <= '0';
		outg <= '0';
		
		if (in0 = in1) then oute <= '1';
		elsif (in0 > in1) then outg <= '1';
		elsif (in0 < in1) then outl <= '1';
		end if;
	end process;
	
end Behavorial;
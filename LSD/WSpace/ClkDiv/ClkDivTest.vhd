library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ClkDivTest is
		port(	CLOCK_50 : in std_logic;
				SW : in std_logic_vector(1 downto 0);
				LEDG : out std_logic_vector(1 downto 0));
end ClkDivTest;

architecture Structural of ClkDivTest is
begin
	Div: entity work.ClkDividerN(Behavioral) 
			generic map(NewTime => 3)
	   	port map(	clkIn => CLOCK_50,
					clkEn => SW(0),
				   clkOut => LEDG(0));
end Structural;
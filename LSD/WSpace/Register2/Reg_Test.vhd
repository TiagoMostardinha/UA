library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_Test is
port(CLOCK_50 : std_logic;
	SW : in std_logic_vector(4 downto 0);
	LEDG : out std_logic_vector(4 downto 0));
end Reg_Test;

architecture Structural of Reg_Test is
begin
reg : entity work.Reg_5x5(Behavioral)
	port map(clk => CLOCK_50,
				din => SW,
				dout => LEDG);
end Structural;
	
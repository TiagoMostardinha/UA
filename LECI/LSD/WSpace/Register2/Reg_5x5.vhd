library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg_5x5 is
port(clk : std_logic;
	din : in std_logic_vector(4 downto 0);
	dout : out std_logic_vector(4 downto 0));
end Reg_5x5;

architecture Behavioral of Reg_5x5 is
begin
process(clk)
begin
	if rising_edge(clk) then
		dout <= din;
	end if;
end process;
end Behavioral;
	
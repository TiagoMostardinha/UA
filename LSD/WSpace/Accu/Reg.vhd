library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg is
generic(n : natural := 8);
port (clk : in std_logic;
		clr : in std_logic;
		WEn : in std_logic;
		din : in std_logic_vector(n-1 downto 0);
		dout : out std_logic_vector(n-1 downto 0));
end Reg;

architecture Behavorial of Reg is
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if(clr = '1') then dout <= (others =>'0');
			elsif (WEn = '1') then
				dout <= din;
			
			end if;
		end if;
	end process;
end Behavorial;
	
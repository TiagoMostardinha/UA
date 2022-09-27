library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;


entity ClkDividerN is
	generic( NewTime : positive := 3);
		port(	clkIn : in std_logic;
				clkEn : in std_logic;
				clkOut : out std_logic);
end ClkDividerN;

architecture Behavioral of ClkDividerN is
	constant divFactor : positive := NewTime;--* 50000000;
	subtype TCounter is natural range 0 to divFactor - 1;
	signal s_divCounter : TCounter := 0;
begin
	assert(divFactor >= 2);
	process(clkIn)
	begin
		if (rising_edge(clkIn)) then
			if (clkEn = '1') then
				if (s_divCounter >= (divFactor - 1)) then
						clkOut <= '0';
						s_divCounter <= 0;
				else
					if (s_divCounter = (divFactor / 2 - 1)) then
							clkOut <= '1';
					end if;
					s_divCounter <= s_divCounter + 1;
				end if;
			else
				clkOut <= '0';
			end if;
		end if;
	end process;
end Behavioral;
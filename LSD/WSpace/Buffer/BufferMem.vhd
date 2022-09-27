library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity BufferMem is
port(Clock : in std_logic;
	ResetIn : in std_logic;
	FantaIn : in std_logic;
	SumoLiIn : in std_logic;
	SumoPeIn : in std_logic;
	Sel_GelIn : in std_logic;
	ResetOut : out std_logic;
	FantaOut : out std_logic;
	SumoLiOut : out std_logic;
	SumoPeOut : out std_logic;
	Sel_GelOut : out std_logic);
end BufferMem;

architecture Behavorial of BufferMem is
begin
process(Clock)
begin
	if (rising_edge(Clock)) then
		ResetOut   <= ResetIn;
		FantaOut    <= FantaIn;
		SumoLiOut   <= SumoLiIn;
		SumoPeOut   <= SumoPeIn;
		Sel_GelOut  <= Sel_GelIn;
	--else;
	end if;
end process;
end Behavorial;
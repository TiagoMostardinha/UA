library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity Accu is
generic(k : natural := 4);
port(dataIn : in std_logic_vector(k-1 downto 0);
		rst : in std_logic;
		EN : in std_logic;
		CK : in std_logic;
		dataOut : out std_logic_vector(k-1 downto 0));
end Accu;

architecture Structural of Accu is
signal s_adder : std_logic_vector(k-1 downto 0);
signal s_reg : std_logic_vector(k-1 downto 0);
begin
	Add : entity work.Adder(Arithm)
	generic map(n => k)
	port map(op0 => dataIn,
				op1 => s_reg,
				s => s_adder);
	
	Reg : entity work.Reg(Behavorial)
	generic map(n => k)
	port map(clr => rst,
				WEn => EN,
				clk => CK,
				din => s_adder,
				dout => s_reg);
				
	dataOut <= s_reg;
	
end Structural;
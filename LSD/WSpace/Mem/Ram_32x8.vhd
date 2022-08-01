library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Ram_32x8 is
	port(writeClk : in std_logic;
			writeEnable : in std_logic;
			writeData : in std_logic_vector(7 downto 0);
			address : in std_logic_vector(4 downto 0);
			readData : out std_logic_vector(7 downto 0));
end Ram_32x8;

architecture Behavioral of Ram_32x8 is
	constant NUM_WORDS : integer := 32;
	subtype TDataWord is std_logic_vector(7 downto 0);
	type TMemory is array (0 to NUM_WORDS-1) of TDataWord;
	signal s_memory : TMemory;
begin

	process(writeClk)
	begin
		if (rising_edge(writeClk)) then
			if (writeEnable = '1') then
			s_memory(to_integer(unsigned(address))) <= writeData;
			end if;
		end if;
	end process;
	readData <= s_memory(to_integer(unsigned(address)));
	
end Behavioral;

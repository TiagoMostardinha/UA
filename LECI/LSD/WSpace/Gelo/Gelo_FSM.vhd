library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity Gelo_FSM is 
	port( button 	  : in std_logic;
			clk 		  : in std_logic;
			displayout : out std_logic_vector(3 downto 0));
end Gelo_FSM;

architecture Behavorial of Gelo_FSM is
Type state is (g0,g1,g2,g3);
signal PS : state;
begin

moore : process(clk)
begin
if rising_edge(clk) then
	Case(PS) is
		when g0 => displayout <= "0001";
						if(button = '1') then
						PS <= g1;
						end if;
		when g1 => displayout <= "0010";
						if(button = '1') then
						PS <= g2;
						end if;
		when g2 => displayout <= "0100";
						if(button = '1') then
						PS <= g3;
						end if;
		when g3 => displayout <= "1000";
						if(button = '1') then
						PS <= g1;
						end if;
	end case;
end if;
end process;
end Behavorial;

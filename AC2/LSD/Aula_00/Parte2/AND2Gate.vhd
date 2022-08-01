--Biblioteca
library IEEE;
use IEEE.STD_LOGIC_1164.all;


--Interface
entity AND2Gate is

	port(inPort0 : in std_logic;
	inPort1 : in std_logic;
	OutPort : out std_logic);
	
end AND2Gate;

--Implementacao
architecture Behavioral of AND2GAte is
begin

	outPort <= inPort0 and inPort1;

end Behavioral;
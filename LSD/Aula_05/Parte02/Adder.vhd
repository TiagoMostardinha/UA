library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
 

entity FullAdder is 
port(ai:	in std_logic; 
     bi:   in std_logic; 
     ci:   in std_logic; 
     sum : out std_logic; 
     co  : out std_logic); 
end FullAdder; 
 

architecture DataFlow of FullAdder is 
begin 
	sum <= ai xor bi xor ci; 
	co  <= (ai and bi) or (ci and(ai or bi)); 
end DataFlow; 
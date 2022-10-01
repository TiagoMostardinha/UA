library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use IEEE.NUMERIC_STD.all; 

entity FullAdder is 
   generic(n : natural := 8); 
port (op0:	in std_logic_vector(n-1 downto 0); 
      op1:  in std_logic_vector(n-1 downto 0); 
		s:	out std_logic_vector(n-1 downto 0)); 
end FullAdder; 
 

architecture Arithm of FullAdder is 
 

begin 
       s <= std_logic_vector(unsigned(op0)+unsigned(op1)); 
  
end Arithm; 
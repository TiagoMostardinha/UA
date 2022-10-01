library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
 

entity AccN is 
generic(k : natural := 8); 
port (CK : in std_logic; 
      EN : in std_logic; 
rst : in std_logic; 
dataIn : in std_logic_vector(k-1 downto 0); 
dataOut : out std_logic_vector(k-1 downto 0)); 
end AccN; 
 

architecture Structural of AccN is 
signal s_adderOut : std_logic_vector(k-1 downto 0); 
signal s_regOut : std_logic_vector(k-1 downto 0); 
begin 
 

REG: entity work.RegN(Behavioral) 
generic map(n => k) 
port map (din => s_adderOut, 
          dout => s_regOut, 
          WEN  => EN, 
			 CLR => rst, 
          clk => CK); 
   
ADD: entity work.FullAdder(Arithm) 
            generic map(n => k) 
port map(op0 => dataIn, 
         op1 => s_regOut, 
         s => s_adderOut); 

         dataOut <= s_regOut;	  
  
end Structural;
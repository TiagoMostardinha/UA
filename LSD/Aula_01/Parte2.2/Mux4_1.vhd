library IEEE; 
use IEEE.STD_LOGIC_1164.all; 

entity Mux4_1 is 
  port(sel    : in  std_logic_vector(1 downto 0) ; 
       inputs : in  std_logic_vector(3 downto 0); 
       muxOut : out std_logic); 
end Mux4_1; 

architecture Mux_Proc_case of Mux4_1 is 
begin 
  process(sel, inputs) 
  begin 
    case sel is 
		when "00" => muxOut <= inputs(0); 
		when "01" => muxOut <= inputs(1); 
		when "10" => muxOut <= inputs(2); 
		when "11" => muxOut <= inputs(3); 
		when others => muxOut <= 'X'; 
	end case; 
  end process; 
end Mux_Proc_case; 
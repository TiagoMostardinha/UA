library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NAND2Gate is
	port(in0 : in std_logic;
		in1 : in std_logic;
		out0 : out std_logic);
end NAND2GAte;

architecture Structural of NAND2Gate is

	signal s_inout : std_logic;
	
begin

	and_gate : entity work.AND2Gate(Behavorial)
		port map(in0 => in0,
			in1 => in1,
			out0 => s_inout);
			
	not_gate : entity work.NOTGate(Behavorial)
		port map(in0 => s_inout,
			out0 => out0);

end Structural;
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NANDGate is
	port(in0 : in std_logic;
		in1 : in std_logic;
		out0 : out std_logic);
end NANDGate;

architecture Structural of NANDGate is
	signal s_andOut : std_logic;
begin

	and_gate: entity work.AND2Gate(Behavorial)
		port map(inPort0 => in0,
			inPort1 => in1,
			s_andOut => OutPort0);
	
	not_gate: entity work.NOTGate(Behavorial)
		port map(i => s_andOut,
			out0 => o);

end Structural;
			
	
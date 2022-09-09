library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDet101me is
	port(
		clk : in std_logic;
		din : in std_logic;
		rst : in std_logic;
		dout : out std_logic
		);
end SeqDet101me;

architecture Behavorial of SeqDet101me is
	type state is (s0,s1,s2);
	signal PS, NS : state;
	begin
		--configuration of reset
		syncronous_process : process(clk)
		begin
			if (rising_edge(clk)) then
				if(rst = '1') then 
					PS <= s0;
				else
					PS <= NS;
				end if;
			end if;
		end process;
		
		
		--states
		next_state_and_output : process(PS,din)
		begin
			dout <= '0';
			case (PS) is
				when s0 =>
					dout <= '0';
					if(din = '1') then
						NS <= s1;
					else
						NS <= s0;
					end if;
					
				when s1 =>
					dout <= '0';
					if(din = '0') then
						NS <= s2;
					else
						NS <= s1;
					end if;
					
				when s2 =>
					if(din = '1') then
						NS <= s1;
						dout <= '1';
					else
						NS <= s0;
						dout <= '0';
					end if;
					
				when others =>
					NS <= s0;
					dout <= '0';
					
			end case;
		end process;
end Behavorial;
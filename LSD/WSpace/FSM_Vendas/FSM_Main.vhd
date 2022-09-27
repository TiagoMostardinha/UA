library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FSM_Main is
port( clk		: in std_logic;
		rst 		: in std_logic;
		
		--Timer:
		NewTime 		: out std_logic;
		TimeValue 	: out std_logic_vector(3 downto 0);
		TimerEnable : out std_logic;
		Time_exp : in std_logic;
		
		--escolhas: 
		Fanta		: in std_logic;
		SumoLi   : in std_logic;
		SumoPes  : in std_logic;
		
		Sel_Word : out std_logic_vector(3 downto 0);
		Ledr 		: out std_logic;
		Ledg		: out std_logic;
		
		--debugger:
		debug 	: out std_logic_vector(2 downto 0));
end FSM_Main;

architecture Behavorial of FSM_Main is
type state is (e0,e1,e2,e3,e4,e5,e6);
signal PS,NS : state;
begin

--configuration reset
process(clk) is
begin
	if rising_edge(clk) then
		if rst = '1' then PS <= e0;
		else PS <= NS;
		end if;
	end if;
end process;


--moore code
process(PS)--,Fanta,SumoLi,SumoPes)
begin
	Ledr <= '0';
	Ledg <= '0';
	NewTime <= '1';
	Case PS is
		when e0 => Sel_Word <= "0000"; TimeValue 	 <= "0110";
												 NewTime 	 <= '0';
												 TimerEnable <= '1';
												 
												 if Time_exp = '1' then NS <= e1;	
												 NewTime 	 <= '1';
												 end if; debug <= "000";
												 
		when e1 => Sel_Word <= "0001"; TimerEnable <= '0';
												 if Fanta = '1' then NS <= e2;		
												 elsif SumoLi  = '1' then NS <= e3;
												 elsif SumoPes = '1' then NS <= e4;
												 else NS <= e1;
												 end if;												  debug <= "001";
												
		when e2 => Sel_Word <= "0010"; NS <= e5;									  		  debug <= "010";
		when e3 => Sel_Word <= "0011"; NS <= e5;									   	  debug <= "011";
		when e4 => Sel_Word <= "0100"; NS <= e5;											  debug <= "100";
		when e5 => Ledr <= '1' 		  ; TimeValue 	 <= "1000";
												 NewTime 	 <= '0';
												 TimerEnable <= '1';
												 if Time_exp = '1' then NS <= e6;
												 NewTime <= '1';
												 end if; 											 debug <= "101";
												 
		when e6 => Ledg <= '1' 		  ; TimeValue 	 <= "1010";
												 NewTime 	 <= '0';
												 if Time_exp = '1' then NS <= e1;	end if; debug <= "110";
		--
		when others => Sel_Word <= "0000" ; NS <= PS;
	end case;
end process;
end Behavorial;
		
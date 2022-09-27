library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Timer_FSM is
    port( reset          : in  std_logic;
          clk            : in  std_logic;
          timer_en   	 : in  std_logic;
          new_time       : in  std_logic;
          time_value     : in  std_logic_vector(3 downto 0);
          time_exp       : out std_logic);
end Timer_FSM;

architecture Behavioral of Timer_FSM is

    signal s_counter  : natural;
    signal time_cycle : natural:=to_integer(unsigned(time_value)) * 50000000;
    signal s_cntZero  : std_logic := '0';

begin
    process(clk)
    begin
        if (rising_edge(clk)) then
            if (reset = '1') then
                s_counter <= time_cycle;
                s_cntZero <= '0';

            elsif (timer_en = '1') then
                if (new_time = '1') then
                        s_counter <= time_cycle - 1;
                        s_cntZero <= '0';
								
                else
                    if (s_counter = 0) then
                        s_cntZero <= '1';
								
                    else
                        s_counter <= s_counter  - 1;
                        s_cntZero <= '0';
                    end if;
                end if;
            end if;
        end if;
    end process;
end Behavioral;
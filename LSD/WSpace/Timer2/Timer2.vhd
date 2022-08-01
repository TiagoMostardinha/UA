library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Timer2 is
    port(reset        : in  std_logic;
          clk            : in  std_logic;
          newTime    : in  std_logic;
          enable    : in std_logic;
          timeVal    : in  std_logic_vector(3 downto 0);
          timeExp    : out std_logic;
			 led : out std_logic);
end Timer2;

architecture Behavioral of Timer2 is

    signal TIME_CYCLES : natural := to_integer(unsigned(timeVal)) * 50000000;
    signal s_counter : natural:=0 ;
    signal s_cntZero : std_logic := '0';

begin
    process(clk)
    begin
        if (rising_edge(clk)) then
		  led <= '1';
            if (reset = '1') then
                s_counter <= TIME_CYCLES;
                s_cntZero <= '0';
            elsif (enable='1') then 
                if (newTime = '1') then
                    s_counter <= TIME_CYCLES - 1;
                    s_cntZero <= '0';
                else
                    if (s_counter = 0 ) then
                        s_cntZero <= '1';
                    else
                        s_counter <= s_counter  - 1;
                        s_cntZero <= '0';
                    end if;
                end if;
            end if;
        end if;
    end process;

    timeExp <= s_cntZero;
end Behavioral;
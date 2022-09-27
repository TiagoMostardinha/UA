library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TimerAuxFSM is
    port(reset        : in  std_logic;
          clk            : in  std_logic;
          newTime    : in  std_logic;
          enable    : in std_logic;
          timeVal    : in  std_logic_vector(3 downto 0);
          timeExp    : out std_logic);
end TimerAuxFSM;

architecture Behavioral of TimerAuxFSM is

    signal TIME_CYCLES : natural := to_integer(unsigned(timeVal));-- * 50000000;
    signal s_counter : natural:=0 ;
    signal s_cntZero : std_logic := '0';

begin
    process(clk)
    begin
        if (rising_edge(clk)) then
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
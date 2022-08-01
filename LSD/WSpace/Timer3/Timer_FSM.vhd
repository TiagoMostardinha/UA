library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.Numeric_std.all;

entity Timer_FSM is
  port
  (
    Clock     : in  std_logic;
    Reset     : in  std_logic;
    NewTime   : in  std_logic;
    tv : in  std_logic_vector(3 downto 0);
    TimeExp  : out std_logic
  );
end Timer_FSM;

architecture behav of Timer_FSM is
	constant TimeValue : positive := to_integer(unsigned(tv)) * 50000000;
  signal counter : integer;
begin
  process(Clock)
  begin
    if rising_edge(Clock) then
      TimeExp <= '0';
      if reset = '1' then
        counter <= 0;
      elsif NewTime = '1' then
        counter <= TimeValue;
      elsif counter /= 0 then
        counter <= counter - 1;
      else
        TimeExp <= '1';
      end if;
    end if;
  end process;
end behav;
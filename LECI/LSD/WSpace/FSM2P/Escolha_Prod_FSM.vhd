library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Escolha_Prod_FSM is
	port(reset		: in  std_logic;
		  clk		: in  std_logic;
		  
		  -- sinais de comunicação com o timer
		  newTime	: out std_logic; -- valor que indica ao timer para começar a contar
		  timeVal	: out std_logic_vector(7 downto 0); -- valor que passa ao timer quanto tempo esperar
		  timeExp	: in  std_logic; -- indica que o timer já acabou
		  
		  -- pins de seleção
		  p_Fan : in std_logic; 
		  p_SOLI : in std_logic;
		  p_SPES : in std_logic;
		  
		  -- sinais de informação
		  l_Done : out std_logic;
		  bin_Msg : out std_logic_vector(15 downto 0)
		  
		  
		 );
end Escolha_Prod_FSM;

architecture Behavioral of Escolha_Prod_FSM is
	
	-- Constantes de tempo
	constant BOOT_TIME				: std_logic_vector(7 downto 0) := "00000110"; -- 6 s
	constant FAN_PREP_TIME			: std_logic_vector(7 downto 0) := "00001000"; -- 8 s
	constant SOLI_PREP_TIME			: std_logic_vector(7 downto 0) := "00001000"; -- 8 s
	constant SPES_PREP_TIME			: std_logic_vector(7 downto 0) := "00001000"; -- 8 s
	constant DONE_TIME				: std_logic_vector(7 downto 0) := "00000010"; -- 2 s

	-- mensagens
	--(4 bits para cada display )
	constant m_HIHI				: std_logic_vector(15 downto 0) := "0001001000010010"; -- HIHI
	constant m_EREF				: std_logic_vector(15 downto 0) := "0011010000110101"; -- EREF
	constant m_FAN	   			: std_logic_vector(15 downto 0) := "1101010101100111"; -- FAN
	constant m_SOLI				: std_logic_vector(15 downto 0) := "1010100010010010"; -- SOLI
	constant m_SPES				: std_logic_vector(15 downto 0) := "1010101100111010"; -- SPES
	constant m_Done				: std_logic_vector(15 downto 0) := "1100100001110011"; -- DONE
	
	type TState is (Init,Boot,Option,Done,St_Fan,St_Soli,St_Spes);
	signal s_currentState, s_nextState	: TState := Init;
	signal s_stateChanged : std_logic := '1';

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= Init;
				s_stateChanged <= '1';
			else
				if (s_currentState /= s_nextState) then
					s_stateChanged <= '1';
				else
					s_stateChanged <= '0';
				end if;
				s_currentState	<= s_nextState;
			end if;
		end if;
	end process;

	newTime <= s_stateChanged;

	comb_proc : process(s_currentState, p_spes,p_soli,p_fan, timeExp)
	begin
		l_done <= '0';
		case (s_currentState) is
		when Init =>
			timeVal <= (others => '-');
			bin_Msg <= m_HIHI;
			s_nextState <= Boot;
			
		when Boot =>
			timeVal	<= BOOT_TIME;
			bin_Msg <= m_HIHI;
			
			if (timeExp = '1') then
				s_nextState <= Option;
			else
				s_nextState <= Boot;
			end if;
			
		when Option =>
			
			timeVal	<= (others => '-');
			bin_Msg <= m_EREF;
			
			if (p_Fan = '1') then
				s_nextState <= St_Fan;
			elsif(p_SoLI = '1') then
				s_nextState <= St_Soli;
			elsif(p_SPES = '1') then
				s_nextState <= St_Spes;
			else
				s_nextState <= Option;
			end if;
		
		when Done =>	-- acende o led informação durante 2 seg e depois para para o estado de escolher bebida
			timeVal <= DONE_TIME;
			l_Done <= '1';
			bin_Msg <= m_Done;
			
			if (timeExp = '1' and p_soLI = '1') then -- nao esquecer de remover o " and p_SOLI = '1' " 
			s_nextState <= Option;
			else
				s_nextState <= Done;
			end if;
			
		when St_Fan =>
			timeVal <= FAN_PREP_TIME;
			bin_Msg <= m_FAN;

			if (timeExp = '1') then
				s_nextState <= Done;
			else
				s_nextState <= St_Fan;
			end if;
		
		when St_Spes =>
			timeVal <= SPES_PREP_TIME;
			bin_Msg <= m_SPES;
			
			if (timeExp = '1') then
				s_nextState <= Done;
			else
				s_nextState <= St_Spes;
			end if;
		
		when St_Soli =>
			timeVal <= SOLI_PREP_TIME;
			bin_Msg <= m_SOLI;
			if (timeExp = '1') then
				s_nextState <= Done;
			else
				s_nextState <= St_Soli;
			end if;
		
		end case;
	end process;
end Behavioral;
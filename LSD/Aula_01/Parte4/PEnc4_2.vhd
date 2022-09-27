entity PEnc4_2 is 
    port(decodeIn  : in  std_logic_vector(3 downto 0); 
         encodeOut : out std_logic_vector(1 downto 0)
			validout  : out  std_logic); 
end PEnc4_2;

architecture BehavProc of PEnc4_2 is 
begin 

    process(inputs) 
    begin
		if (decodeIn(3) = '1') then 
			encodeOut <= "00"; 
      elsif (decodeIn(2) = '1') then 
         encodeOut <= "01"; 
      elsif (decodeIn(1) = '1') then 
         encodeOut <= "10"; 
       else 
          encodeOut <= "11"; 
      end if; 
    end process;
	 
	 validout <= '0' when decodeIn = "0000" else '1';
	 
end BehavProc; 
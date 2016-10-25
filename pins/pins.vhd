LIBRARY IEEE; 
USE IEEE.std_logic_1164.ALL; 
USE IEEE.numeric_std.ALL; 

ENTITY pins IS
--GENERIC (
--) ;
PORT (
clock_50: IN std_logic;
reset : IN std_logic;
GPIO_0 : IN std_logic_vector(35 downto 0);
HEX0 :OUT std_logic_vector(6 downto 0);
HEX1 :OUT std_logic_vector(6 downto 0)
);
END ENTITY pins; 

ARCHITECTURE bhv OF pins IS  
FUNCTION hex2display (n:unsigned (3 DOWNTO 0)) RETURN std_logic_vector IS
    --VARIABLE res : std_logic_vector(6 DOWNTO 0);
  BEGIN
    CASE n IS          --        gfedcba; low active
	    WHEN "0000" => RETURN NOT "0111111";
	    WHEN "0001" => RETURN NOT "0000110";
	    WHEN "0010" => RETURN NOT "1011011";
	    WHEN "0011" => RETURN NOT "1001111";
	    WHEN "0100" => RETURN NOT "1100110";
	    WHEN "0101" => RETURN NOT "1101101";
	    WHEN "0110" => RETURN NOT "1111101";
	    WHEN "0111" => RETURN NOT "0000111";
	    WHEN "1000" => RETURN NOT "1111111";
	    WHEN "1001" => RETURN NOT "1101111";
	    WHEN "1010" => RETURN NOT "1110111";
	    WHEN "1011" => RETURN NOT "1111100";
	    WHEN "1100" => RETURN NOT "0111001";
	    WHEN "1101" => RETURN NOT "1011110";
	    WHEN "1110" => RETURN NOT "1111001";
	    WHEN OTHERS => RETURN NOT "1110001";			
    END CASE;
  END hex2display;
 
Begin 
	PROCESS(clock_50,reset) 
	variable counter : unsigned(7 DOWNTO 0) ;
	variable count : integer := 0;
	variable arrayt: std_logic_vector(35 downto 0) ;
	variable no : unsigned(7 downto 0);
	variable arrayled0, arrayled1 : std_logic_vector(3 downto 0):= "0000";
	BEGIN 
		if reset = '0' then
			HEX0<= "0000000" ;
			HEX1 <= "0000000";
		elsif RISING_edge(clock_50) then 
			
			
				arrayt := GPIO_0;
					iF arrayt(count) = '1' then
						no := to_unsigned(count, 8);
						HEX0 <=  hex2display(no(7 downto 4));
						HEX1 <= hex2display(no(3 downto 0));
					end if;	
						count := count + 1;
						
				--FOR I IN 0 TO 35 LOOP		
				--end if;	
				
			    --counter := TO_UNSIGNED(I, 8);
				--IF GPIO_0(I) ='1' THEN
					--HEX0 <= hex2display(counter(7 DOWNTO 4));
					--HEX1 <= hex2display(counter(3 DOWNTO 0));
				--END IF;
			--END LOOP;
		end if;
			
	
	END PROCESS; 
END; 
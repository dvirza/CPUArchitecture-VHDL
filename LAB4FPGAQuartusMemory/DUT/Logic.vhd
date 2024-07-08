LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY LOGIC IS
	GENERIC (   n : INTEGER);
	PORT (      x, y : IN std_logic_vector (n-1 downto 0);
                alufn20: IN std_logic_vector (2 downto 0);
	            result: OUT std_logic_vector (n-1 downto 0) );
END LOGIC;


ARCHITECTURE dataflow OF LOGIC IS

BEGIN
    --push the output using ALUfn 3 LSB
    with alufn20 select 
        result <=   (not y) when "000",
                    (y or x) when "001",
                    (y and x) when "010",
                    (y xor x) when "011",
                    (y nor x) when "100",
                    (y nand x) when "101",
                    (y xnor x) when "111",
                    (others => '0') when others;

END dataflow;


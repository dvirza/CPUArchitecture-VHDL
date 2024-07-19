LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_package.all;


ENTITY decode IS
	GENERIC (  n : INTEGER);
	PORT (  sw_i : IN std_logic_vector (n-1 downto 0);
	        hex_o1,hex_o2: OUT std_logic_vector (6 downto 0) );
END decode;


ARCHITECTURE dataflow OF decode IS
BEGIN
    with sw_i(3 downto 0) select --First letter/Number
            hex_o1 <=   not("0111111") when "0000", --0
                        not("0000110") when "0001", --1
                        not("1011011") when "0010", --2
                        not("1001111") when "0011", --3
                        not("1100110") when "0100", --4
                        not("1101101") when "0101", --5
                        not("1111101") when "0110", --6
                        not("0000111") when "0111", --7
                        not("1111111") when "1000", --8
                        not("1101111") when "1001", --9
                        not("1110111") when "1010", --A
                        not("1111111") when "1011", --B
                        not("0111001") when "1100", --C
                        not("0111111") when "1101", --D
                        not("1111001") when "1110", --E
                        not("1110001") when "1111", --F
                        (others => '0') when others;
    with sw_i(7 downto 4) select --Second letter/Number
            hex_o2 <=   not("0111111") when "0000", --0
                        not("0000110") when "0001", --1
                        not("1011011") when "0010", --2
                        not("1001111") when "0011", --3
                        not("1100110") when "0100", --4
                        not("1101101") when "0101", --5
                        not("1111101") when "0110", --6
                        not("0000111") when "0111", --7
                        not("1111111") when "1000", --8
                        not("1101111") when "1001", --9
                        not("1110111") when "1010", --A
                        not("1111111") when "1011", --B
                        not("0111001") when "1100", --C
                        not("0111111") when "1101", --D
                        not("1111001") when "1110", --E
                        not("1110001") when "1111", --F
                        (others => '0') when others;
END dataflow;
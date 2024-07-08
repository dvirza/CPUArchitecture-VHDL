LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_package.all;
--------------------------------------------------------
ENTITY AdderSub IS
	GENERIC (   n : INTEGER );
	PORT (  x, y: IN std_logic_vector(n-1 downto 0);
            sub_ena: IN std_logic;
            result: OUT std_logic_vector(n-1 downto 0);
            c_out: OUT std_logic );
END AdderSub;
--------------------------------------------------------
ARCHITECTURE dataflow OF AdderSub IS

signal c_trans : std_logic_vector(n-1 downto 0) := (others => '0'); --signal who save the carry from FA to the next in line
signal sub_ena_vector : std_logic_vector(n-1 downto 0) := (others => '0'); --making substract enable vector to modify x
signal xForAdder : std_logic_vector(n-1 downto 0) := (others => '0'); -- input x after modify to add or substract

BEGIN
    sub_ena_vector <= (others => sub_ena); --push the substract enable to vector
    xForAdder <= x xor sub_ena_vector; --modify input 'x' to substract or add [do not(x) using xor op if needed]

    FA0: FA port map (xi => xForAdder(0),yi => y(0),cin => sub_ena, s => result(0) ,cout => c_trans(0));

    FAN: FOR i in 1 to n-1 generate
            FA_i_instance: FA port map (xi => xForAdder(i) ,yi => y(i),cin => c_trans(i - 1), s => result(i),cout => c_trans(i));
         end generate;

    -- Connect the FA's cout to the output c_out
    c_out <= c_trans(n-1);

END dataflow;
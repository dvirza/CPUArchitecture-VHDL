LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_package.all;
--------------------------------------------------------
ENTITY AdderSub IS
	GENERIC (n : INTEGER);
	PORT (x, y: IN std_logic_vector(n-1 downto 0);
              sub_cont: IN std_logic;
              res: OUT std_logic_vector(n-1 downto 0);
	      c_out: OUT std_logic);
END AdderSub;
--------------------------------------------------------
ARCHITECTURE dataflow OF AdderSub IS

signal c_trans : std_logic_vector(n-1 downto 0);
SIGNAL sub_cont_vector : std_logic_vector(n-1 downto 0);
SIGNAL x_xor : std_logic_vector(n-1 downto 0);

BEGIN
    sub_cont_vector <= (others => sub_cont);
    x_xor <= x xor sub_cont_vector;
    FA0: FA port map (xi => x_xor(0),yi => y(0),cin => sub_cont, s => res(0) ,cout => c_trans(0));
    FAN: FOR i in 1 to n-1 generate
        FA_instance: FA port map (xi => x_xor(i) ,yi => y(i),cin => c_trans(i - 1), s => res(i),cout => c_trans(i));
        end generate;

    -- Connect the FA's cout to the output cout
    c_out <= c_trans(n-1);

END dataflow;
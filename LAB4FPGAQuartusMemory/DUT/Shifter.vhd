LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_package.all;


ENTITY shifter IS
        GENERIC (n : INTEGER;
                k : INTEGER );
        PORT (  x, y: IN std_logic_vector (n-1 downto 0);
                dir: IN std_logic;
                result: OUT std_logic_vector (n-1 downto 0); 
                cout: OUT std_logic );
END shifter;


ARCHITECTURE dataflow OF shifter IS

-- we'll define it oversized by 1 to easily find the carry value
SUBTYPE vector IS STD_LOGIC_VECTOR (n DOWNTO 0); --vector Size is one bigger then regular to look for carry.
TYPE mat IS ARRAY (k-1 DOWNTO 0) OF vector; -- making array of vectors as needed in SPEC, size K x N+1.
SIGNAL horiz : mat; --declare a var name horiz in our new matrix type.
SIGNAL vec : STD_LOGIC_VECTOR (n DOWNTO 0); --declare vector size N+1 for internal use.

BEGIN
    vec(n) <= '0'; -- reset carry bit value
    flip : for i in 0 to n-1 generate --flip the input vector if needed(Right shift), our shifter do only left shift.
            vec(i) <= y(n-1-i) when dir = '1' else y(i);
    end generate;
    
    horiz(0) <= vec((n-1) downto 0) & '0' when x(0) = '1' else vec; --first level of shift depend on x(0) making 1 shift.
    
    shift_levels : FOR i in 1 to k-1 generate --next levels of shift depend on x(i)
	        horiz(i) <= (horiz(i-1)((n - (2**i)) downto (0)) & ((2**i)-1 downto 0 => '0')) when x(i) = '1' else horiz(i-1);
    end generate;

    backflip : for i in 0 to n-1 generate --backflip the vector after doing SHL so the result will be SHR if needed.
            result(i) <= horiz(k-1)(n-1-i) when dir = '1' else horiz(k-1)(i);--horiz(k-1)(n-1-i);
    end generate;
    
    cout <= horiz(k-1)(n); --set carry bit value
    
END dataflow;

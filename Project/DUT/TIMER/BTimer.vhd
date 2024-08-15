LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE work.aux_package.all;


ENTITY BTimer IS
	generic (  n : INTEGER;
               m : INTEGER ); --m := log2(N)
	port (  divCLK_i , divRST_i, divENA_i : IN std_logic;
            dividend_i, divisor_i : IN std_logic_vector (n-1 downto 0);
	        divIFG_o: OUT std_logic;
            residue_o , quotient_o : OUT std_logic_vector (n-1 downto 0)
         );
END BTimer;


ARCHITECTURE dataflow OF BTimer IS

    signal divisorREG, quotientREG: std_logic_vector(n-1 downto 0) := (others => '0');
    signal dividendREG: std_logic_vector(2*n-1 downto 0); --size 2N register for shift left
    signal zeros_vector : std_logic_vector(n-1 downto 0) := (others => '0');
    signal counter : std_logic_vector(m downto 0) := (others => '0'); --counter initial as zeros
    signal divisorSUB,dividendSUB, resultSUB : std_logic_vector (n-1 downto 0) := (others => 'Z'); --signals for the substractor
    --signal subres : std_logic_vector(n-1 downto 0);
begin



end dataflow;
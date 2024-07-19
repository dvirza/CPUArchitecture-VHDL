LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all; 
USE work.aux_package.all;


ENTITY DIV IS
	GENERIC (  n : INTEGER;
               m : INTEGER ); --m := log2(N)
	PORT (  divCLK_i , divRST_i, divENA_i : IN std_logic;
            dividend_i, divisor_i : IN std_logic_vector (n-1 downto 0);
	        divIFG_o: OUT std_logic;
            residue_o , quotient_o : OUT std_logic_vector (n-1 downto 0)
         );
END DIV;


ARCHITECTURE dataflow OF DIV IS

    signal divisorREG, quotientREG : std_logic_vector(n-1 downto 0);
    signal dividendREG : std_logic_vector(2*n-1 downto 0); --size 2N register for shift left
    signal zeros_vector : std_logic_vector(n-1 downto 0) := (others => '0');
    signal counter : std_logic_vector(m-1 downto 0) := (others => '0'); --counter initial as zeros
    signal ones_vector : std_logic_vector(m-1 downto 0) := (others => '1'); --one_vector <= (0 => '1', others => '0');
    signal divisorSUB,dividendSUB, resultSUB : std_logic_vector (n-1 downto 0) := (others => 'Z'); --signals for the substractor

BEGIN

substract_inst : Adder generic map (length=>n) port map (a=> dividendSUB, b=>divisorSUB, cin => '1', s => resultSUB, cout => open);

--push "- divisor" into sub valid only when ena is '1'
divisorSUB <= divisorREG;

--if ena = 1 push the value from bus to registers
dividendREG(n-1 downto 0) <= dividend_i when counter = zeros_vector(m-1 downto 0) and divENA_i = '1';  
dividendREG(2*n-1 downto n) <= zeros_vector when counter = zeros_vector(m-1 downto 0) and divENA_i = '1';
divisorREG <= divisor_i when counter = zeros_vector(m-1 downto 0) and divENA_i = '1';

dividendREG(2*n-1 downto n) <= resultSUB when resultSUB(n-1) = '0'; --non negative result choose
quotientREG(0) <= '1' when resultSUB(n-1) = '0' else '0';
------------------------
PROCESS(divCLK_i,divRST_i) 
BEGIN
    if (divCLK_i = '1' and divCLK_i'event) then
        if (divRST_i = '1') then
            counter <= zeros_vector(m-1 downto 0);
        end if;
        if (divENA_i = '1') then
            if (counter = n - 1) then
                counter <= zeros_vector(m-1 downto 0); --set counter to zero when finish   CHECK THISSSS
                residue_o <= dividendREG(2*n-1 downto n);
                quotient_o <= quotientREG;
            else
                --shift left dividend register and keep count
                dividendREG <= dividendREG sll 1;
                quotientREG <= quotientREG sll 1;
                dividendSUB <= dividendREG(2*n-1 downto n);
                counter <= counter + 1;
            end if;
        end if;
    end if;
END PROCESS;

END dataflow;
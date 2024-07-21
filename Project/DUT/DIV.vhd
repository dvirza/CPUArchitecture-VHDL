LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all; 
use ieee.numeric_std.all;
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

    signal divisorREG, quotientREG, quotientREGstep: std_logic_vector(n-1 downto 0) := (others => '0');
    signal dividendREG: std_logic_vector(2*n-1 downto 0); --size 2N register for shift left
    signal zeros_vector : std_logic_vector(n-1 downto 0) := (others => '0');
    signal counter : std_logic_vector(m downto 0) := (others => '0'); --counter initial as zeros
    signal divisorSUB,dividendSUB, resultSUB : std_logic_vector (n-1 downto 0) := (others => 'Z'); --signals for the substractor

BEGIN

substract_inst : Adder generic map (length=>n) port map (a=> dividendSUB, b=>divisorSUB, cin => '1', s => resultSUB, cout => open);

--push "- divisor" into sub valid only when ena is '1'
divisorSUB <= not(divisorREG);
dividendSUB <= dividendREG(2*n-1 downto n);
quotientREGstep(0) <= '1' when resultSUB(n-1) = '0' else '0';
------------------------
PROCESS(divCLK_i,divRST_i) 
BEGIN
    if (divCLK_i = '1' and divCLK_i'event) then
        if (divRST_i = '1') then
            counter <= zeros_vector(m downto 0);
        end if;
        if (divENA_i = '1') then
            counter <= counter + 1;
            if (counter = 0) then
                --initial values
                divisorREG <= divisor_i;
                dividendREG <= (2*n-1 downto n => '0') & dividend_i;
            elsif (counter = n+4) then
                counter <= zeros_vector(m downto 0); --set counter to zero when finish
                --push output the data
                residue_o <= dividendREG(2*n-1 downto n);
                quotient_o <= quotientREG;
            else
                --step
                dividendREG <= dividendREG sll 1;
                if (resultSUB(n-1) = '0') then
                --     quotientREGstep(0) <= '1';
                    dividendREG(2*n-1 downto n) <= resultSUB;
                    quotientREG <= quotientREGstep;
                end if;
                quotientREG <= quotientREG sll 1;   
            end if;
        end if;
    end if;
END PROCESS;

END dataflow;
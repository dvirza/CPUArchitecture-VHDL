LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
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

    signal divisorREG, quotientREG: std_logic_vector(n-1 downto 0) := (others => '0');
    signal dividendREG: std_logic_vector(2*n-1 downto 0); --size 2N register for shift left
    signal zeros_vector : std_logic_vector(n-1 downto 0) := (others => '0');
    signal counter : std_logic_vector(m downto 0) := (others => '0'); --counter initial as zeros
    signal divisorSUB,dividendSUB, resultSUB : std_logic_vector (n-1 downto 0) := (others => 'Z'); --signals for the substractor
    --signal subres : std_logic_vector(n-1 downto 0);
BEGIN

substract_inst : Adder generic map (length=>n) port map (a=> dividendSUB, b=>divisorSUB, cin => '1', s => resultSUB, cout => open);

--push "- divisor" into sub valid only when ena is '1'
divisorSUB <= not(divisorREG);
dividendSUB <= dividendREG(2*n-1 downto n);
------------------------
PROCESS(divCLK_i,divRST_i) 
BEGIN
    if (divRST_i = '1') then
        --reset all values
        counter <= zeros_vector(m downto 0);
        divisorREG <= (others => '0');
        dividendREG <= (others => '0');
        quotientREG <= (others => '0');
    elsif (rising_edge(divCLK_i)) then 
        if (divENA_i = '1') then
            if (counter = 0) then
                --initial values
                divisorREG <= divisor_i;
                dividendREG <= (2*n-1 downto n => '0') & dividend_i;
                divIFG_o <= '0';
            elsif (counter < n-1) then
                --step
                if (resultSUB(n-1) ='0') then
                    dividendREG(2*n-1 downto n) <= resultSUB;
                    quotientREG <= quotientREG(n-2 downto 0) & '1';
                end if;
                dividendREG <= dividendREG sll 1;
            elsif (counter = n) then
                counter <= (others => '0'); assert false report "Set Count to Zero" severity warning; --set counter to zero when finish zeros_vector(m downto 0)
                --push output the data
                residue_o <= dividendREG(2*n-1 downto n);
                quotient_o <= quotientREG;
                divIFG_o <= '1';   
            end if;
            counter <= counter + 1;
        end if;
    end if;
END PROCESS;

END dataflow;
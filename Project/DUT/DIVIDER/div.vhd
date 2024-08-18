LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE work.aux_package.all;


ENTITY DIV IS
	GENERIC (  n : INTEGER; m : INTEGER );
	PORT (  i_divCLK , i_divRST, i_divENA   : IN std_logic;
            i_dividend, i_divisor           : IN std_logic_vector (n-1 downto 0);
	        o_divIFG                        : OUT std_logic;
            o_residue , o_quotient          : OUT std_logic_vector (n-1 downto 0) );
END DIV;


ARCHITECTURE dataflow OF DIV IS

    signal divisorREG, quotientREG: std_logic_vector(n-1 downto 0) := (others => '0');
    signal dividendREG: std_logic_vector(2*n-1 downto 0); --size 2N register for shift left
    signal counter : unsigned(m downto 0) := (others => '0'); --counter initial as zeros
    signal divisorSUB,dividendSUB, resultSUB : std_logic_vector (n-1 downto 0) := (others => 'Z'); --signals for the substractor
    
BEGIN

substract_inst : Adder generic map (length=>n) port map (a=> dividendSUB, b=>divisorSUB, cin => '1', s => resultSUB, cout => open);

--push "- divisor" into sub valid only when ena is '1'
divisorSUB <= not(divisorREG);
dividendSUB <= dividendREG(2*n-1 downto n);
------------------------
PROCESS(i_divCLK,i_divRST) 
BEGIN
    if (i_divRST = '1') then
        --reset all values
        counter <= (others => '0');
        divisorREG <= (others => '0');
        dividendREG <= (others => '0');
        quotientREG <= (others => '0');
    elsif (rising_edge(i_divCLK)) then 
        if (i_divENA = '1') then
            if (counter = 0) then
                --initial values
                divisorREG <= i_divisor;
                dividendREG <= (2*n-1 downto n => '0') & i_dividend;
                o_divIFG <= '0';
            elsif (counter < n-1) then
                --step
                if (resultSUB(n-1) ='0') then
                    dividendREG(2*n-1 downto n) <= resultSUB;
                    quotientREG <= quotientREG(n-2 downto 0) & '1';
                end if;
                dividendREG <= dividendREG sll 1;
            elsif (counter = n) then
                counter <= (others => '0'); assert false report "Set Count to Zero" severity warning; --set counter to zero when finish (others => '0')(m downto 0)
                --push output the data
                o_residue <= dividendREG(2*n-1 downto n);
                o_quotient <= quotientREG;
                o_divIFG <= '1';   
            end if;
            counter <= counter + 1;
        end if;
    end if;
END PROCESS;

END dataflow;
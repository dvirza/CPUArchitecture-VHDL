LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE work.aux_package.all;


ENTITY DIV IS
	GENERIC (  n : INTEGER; m : INTEGER );
	PORT (  i_divCLK , i_divRST, i_divENA   : IN std_logic;
            i_valid_divisor, i_valid_dividend : IN std_logic;
            i_dividend, i_divisor           : IN std_logic_vector (n-1 downto 0);
	        o_divIFG                        : OUT std_logic;
            o_residue , o_quotient,o_dividend,o_divisor  : OUT unsigned (n-1 downto 0) );
END DIV;


ARCHITECTURE dataflow OF DIV IS

    signal int_divisor, int_quotient: unsigned(n-1 downto 0) := (others => '0');
    signal dividend_2n: unsigned(2*n-1 downto 0) := (others => '0'); --size 2N register for shift left
    signal counter : unsigned(m downto 0) := (others => '0'); --counter initial as zeros
    signal int_subtractor, int_sub_dividend : unsigned(n-1 downto 0);
    signal int_residue : unsigned(n-1 downto 0);
    
BEGIN

    int_sub_dividend <= dividend_2n(2*n-1 downto n);
    int_divisor <= unsigned(i_divisor);
    int_subtractor <= int_sub_dividend - int_divisor;
    int_residue <= (unsigned(int_subtractor));
    o_quotient <= int_quotient;
    o_divIFG <= '1' when unsigned(counter) = to_unsigned(n+1, counter'length) else '0';

process(i_divCLK,i_divRST,i_valid_divisor,i_valid_dividend)
    begin
        if (i_divRST = '1') then
            --reset all values
            counter <= (others => '0'); 
            dividend_2n <= (others => '0'); int_quotient <= (others => '0'); 
        elsif (rising_edge(i_divCLK)) then 
            if(i_valid_dividend = '1' or i_valid_divisor = '1') then
                counter <= (others => '0');
                int_quotient <= (others => '0');
                dividend_2n <= (2*n-1 downto n => '0') & unsigned(i_dividend);
            elsif (i_divENA = '1') then
                if (unsigned(counter) < to_unsigned(n, counter'length)) then
                    if (int_subtractor(n-1) ='0') then
                        dividend_2n <= int_subtractor(n-2 downto 0) & dividend_2n(n-1 downto 0) & '0';
                        int_quotient <= int_quotient(n-2 downto 0) & '1';
                    else
                        int_quotient <= int_quotient(n-2 downto 0) & '0';
                        dividend_2n <= dividend_2n(2*n-2 downto 0) & '0'; 
                    end if;
                    if (unsigned(counter) = to_unsigned(n-1, counter'length)) then
                        if (int_subtractor(n-1) ='1') then
                            o_residue <= int_subtractor;
                        else
                            o_residue <= dividend_2n(2*n-1 downto n); 
                        end if;
                    end if;
                counter <= counter + 1;                 
                elsif (unsigned(counter) = to_unsigned(n, counter'length)) then
                    if (int_subtractor(n-1) ='1') then
                        int_quotient <= int_quotient(n-2 downto 0) & '0';
                        --o_residue <= int_subtractor;
                    else
                        int_quotient <= int_quotient(n-2 downto 0) & '1';
                        --o_residue <= dividend_2n(2*n-1 downto n); 
                    end if;
                    counter <= counter + 1;
                end if;
            
            end if;
        end if;

    end process;


END dataflow;
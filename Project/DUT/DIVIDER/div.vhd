LIBRARY ieee;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.aux_package.ALL;


entity div IS
    generic(n : INTEGER; m : INTEGER );
	port (  i_divCLK, i_divRST, i_divENA        : IN std_logic;
            i_valid_divisor, i_valid_dividend   : IN std_logic;
            i_dividend, i_divisor               : IN std_logic_vector (n-1 downto 0);
	        o_divIFG                            : OUT std_logic;
            o_dividend, o_divisor               : OUT unsigned (n-1 downto 0);
            o_residue, o_quotient               : OUT unsigned (n-1 downto 0) );
end div;

ARCHITECTURE dataflow OF DIV IS

    signal int_divisor, int_quotient                : unsigned(n-1 downto 0);
    signal dividend_2n                              : unsigned(2*n-1 downto 0); --size 2N register for shift left
    signal counter                                  : unsigned(m downto 0); --counter initial as zeros
    signal int_subtractor                           : unsigned(n-1 downto 0);
    signal int_residue                              : unsigned(n-1 downto 0);


begin
            -- step counter process
    process(i_divCLK,i_divRST,i_divENA)
        begin
            if i_divRST = '1' then
                counter <= (others => '0'); -- Reset step counter
            elsif rising_edge(i_divCLK) then
                if i_valid_dividend = '1' or i_valid_divisor = '1' then
                    counter <= (others => '0'); --Reset step counter when divisor \ dividend are written
                elsif i_divENA = '1' and counter < to_unsigned(n+1, counter'length) then
                    counter <= counter + 1;
                end if;
            end if;
        end process;

            -- connections for main compute
    int_divisor <= unsigned(i_divisor);
    int_subtractor <= dividend_2n(2*n-1 downto n) - int_divisor;

            -- main compute process
    process(i_divCLK,i_divRST,i_divENA)
        begin
            if i_divRST = '1' then 
                dividend_2n <= (others => '0'); int_quotient <= (others => '0'); -- Reset compute 
            elsif rising_edge(i_divCLK) then
                if i_valid_dividend = '1' or i_valid_divisor = '1' then -- sync set dividend internal signal
                    int_quotient <= (others => '0');
                    dividend_2n <= (2*n-1 downto n => '0') & unsigned(i_dividend);
                elsif i_divENA = '1' and counter < to_unsigned(n+1, counter'length) then
                    if int_subtractor(n-1) = '0' then
                        int_quotient <= int_quotient(n-2 downto 0) & '1';
                        dividend_2n <= int_subtractor(n-2 downto 0) & dividend_2n(n-1 downto 0) & '0';
                    else
                        int_quotient <= int_quotient(n-2 downto 0) & '0';
                        dividend_2n <= dividend_2n(2*n-2 downto 0) & '0';
                    end if;
                end if;
            end if;
        end process;

            -- residue sync output
    process(i_divCLK,i_divRST,i_divENA)
        begin
            if i_divRST = '1' then 
                int_residue <= (others => '0'); -- Reset out
            elsif rising_edge(i_divCLK) then
                if i_divENA = '1' and counter = to_unsigned(n, counter'length) then
                    if int_subtractor(n-1) = '0' then
                        int_residue <= int_subtractor;
                    else
                        int_residue <= dividend_2n(2*n-1 downto n);
                    end if;
                end if;
            end if;
        end process;

            -- output connections
    o_divIFG <= '1' when counter = to_unsigned(n+1, counter'length) else '0';
    o_quotient <= int_quotient;
    o_residue <= int_residue;
    o_divisor <= int_divisor;
    o_dividend <= dividend_2n(n-1 downto 0);

end dataflow;
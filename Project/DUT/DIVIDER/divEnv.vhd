LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE work.aux_package.all;

ENTITY div_env IS
	PORT    (   i_divCLK, i_divRST, i_memRead, i_memWrite : in std_logic;
                i_addr : in std_logic_vector(11 downto 0);
                o_divIFG : out std_logic;
                io_data : inout std_logic_vector(31 downto 0) );
END div_env;

ARCHITECTURE dataflow OF div_env IS

    signal enable_bus,set_divisor,set_dividend, int_enable_div , int_ifg: std_logic;
    signal int_data_out : std_logic_vector(31 downto 0);
    signal int_dividend_o, int_divisor_o, int_quotient, int_residue : unsigned(31 downto 0);
    signal int_data_in : std_logic_vector (31 downto 0);
    signal int_dividend, int_divisor : std_logic_vector (31 downto 0);

BEGIN

BidirPin_inst : BidirPin generic map (width => 32) port map (Dout => int_data_out , en => enable_bus, Din => int_data_in, IOpin => io_data);

div_inst : div generic map ( n=> 32, m => 5) port map ( i_divCLK => i_divCLK, i_divRST => i_divRST, i_divENA => int_enable_div,i_valid_divisor=> set_divisor,i_valid_dividend => set_dividend, i_dividend =>int_dividend, i_divisor => int_divisor,
                                                        o_divIFG => int_ifg, o_residue =>int_residue , o_quotient => int_quotient, o_dividend => int_dividend_o, o_divisor => int_divisor_o);

    enable_bus <= i_memRead when (i_addr = X"834" or i_addr =X"838") else '0';

    set_divisor <= '1' when i_memWrite = '1' and i_addr = X"830" else '0';
    set_dividend <= '1' when i_memWrite = '1' and i_addr = X"82C" else '0';

    o_divIFG <= int_ifg;

    process(i_divCLK)
        begin
            if set_divisor = '1' or set_dividend = '1' then
                int_enable_div <= '1';
            elsif int_ifg = '1' then
                int_enable_div <= '0';
            end if;
        end process;
        
    process(i_divCLK)
    begin
        if rising_edge(i_divCLK) then
            if i_memWrite = '1' then
                if i_addr = X"82C" then
                    int_dividend <= int_data_in;
                end if;
                if i_addr = X"830" then
                    int_divisor <= int_data_in;
                end if;
            end if;
        end if;
    end process;

    process(i_divCLK)
    begin
        if rising_edge(i_divCLK) then
            if i_memRead = '1' then
                if i_addr = X"834" then
                    int_data_out <= std_logic_vector(int_quotient);
                end if;
                if i_addr = X"838" then
                    int_data_out <= std_logic_vector(int_residue);
                end if;
                if i_addr = X"82C" then
                    int_data_out <= std_logic_vector(int_dividend);
                end if;
                if i_addr = X"830" then
                    int_data_out <= std_logic_vector(int_divisor_o);
                end if;
            end if;
        end if;
    end process;

END dataflow;
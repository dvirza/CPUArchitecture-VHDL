LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE work.aux_package.all;

ENTITY div_env IS
	PORT    (   i_divCLK, i_divRST, i_memRead, i_memWrite, i_divENA : in std_logic;
                i_addr : in std_logic_vector(11 downto 0);
                o_divIFG : out std_logic;
                io_data : inout std_logic_vector(31 downto 0) );
END div_env;

ARCHITECTURE dataflow OF div_env IS

    signal enable_bus,set_divisor,set_dividend : std_logic;
    signal int_data_in, int_data_out : std_logic_vector(31 downto 0);
    signal int_dividend, int_divisor, int_quotient, int_residue : std_logic_vector(31 downto 0);

BEGIN

BidirPin_inst : BidirPin generic map (width => 32) port map (Dout => int_data_out , en => enable_bus, Din => int_data_in, IOpin => io_data);

div_inst : div generic map ( n=> 32, m => 5) port map ( i_divCLK => i_divCLK, i_divRST => i_divRST, i_divENA => i_divENA,i_valid_divisor=> set_divisor,i_valid_dividend => set_dividend, i_dividend =>int_dividend, i_divisor => int_divisor,
                                                        o_divIFG => o_divIFG, o_residue =>int_residue , o_quotient => int_quotient);

    enable_bus <= i_memRead when (i_addr = X"834" or i_addr =X"838") else '0';

    set_divisor <= '1' when i_memWrite = '1' and i_addr = X"830" else '0';
    set_dividend <= '1' when i_memWrite = '1' and i_addr = X"82C" else '0';
        
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
                    int_data_out <= int_quotient;
                end if;
                if i_addr = X"838" then
                    int_data_out <= int_residue;
                end if;
            end if;
        end if;
    end process;

END dataflow;
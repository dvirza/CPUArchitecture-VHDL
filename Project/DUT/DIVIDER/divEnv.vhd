LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE work.aux_package.all;

ENTITY div_env IS
	PORT    (   i_divCLK, i_divRST, i_memRead, i_memWrite : in std_logic;
                i_addr : in std_logic_vector(11 downto 0);
                o_divIFG : out std_logic;
                io_data : inout std_logic(31 downto 0) );
END div_env;

ARCHITECTURE dataflow OF div_env IS

    signal enable_bus : std_logic;
    signal int_data_in, int_data_out : std_logic_vector(31 downto 0);

BEGIN

BidirPin_inst : BidirPin generic map (width => 32) port map (Dout => int_data_out en => enable_bus, Din => int_data_in, IOpin => io_data);

    enable_bus <= i_memRead when (i_addr = X"834" or i_addr =X"838") else '0';


    process()
    begin

    end process;

END dataflow;
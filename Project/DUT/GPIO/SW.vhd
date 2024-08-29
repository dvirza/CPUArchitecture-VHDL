LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
USE work.aux_package.all;

ENTITY sw_port IS
	PORT    (   i_control : in std_logic;
                i_memRead : in std_logic;
                i_swport : in std_logic_vector(7 downto 0);
                o_data : inout std_logic_vector(31 downto 0) );
END sw_port;

ARCHITECTURE dataflow OF sw_port IS

    signal int_sw : std_logic_vector(7 downto 0);
    signal int_sw_o : std_logic_vector(31 downto 0);
    signal int_enable : std_logic;

BEGIN

BidirPin_inst : BidirPin generic map (width => 32) port map (Dout => int_sw_o, en => int_enable ,Din => open ,IOpin => o_data);

    int_sw <= i_swport; -- connet input

    int_sw_o <= X"000000" & int_sw;
    int_enable <= '1' when i_control = '1' and i_memRead = '1' else '0';

END dataflow;
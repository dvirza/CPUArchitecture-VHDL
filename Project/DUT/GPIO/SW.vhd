LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
USE work.aux_package.all;

ENTITY sw_port IS
	PORT    (   i_control : in std_logic;
                i_memRead : in std_logic;
                i_swport : in std_logic_vector(7 downto 0);
                o_data : out std_logic(7 downto 0) );
END sw_port;

ARCHITECTURE dataflow OF sw_port IS

    signal int_sw : std_logic_vector(7 downto 0);

BEGIN

    int_sw <= i_swport; -- connet input

    o_data <= int_sw when i_control = '1' and i_memRead = '1';

END dataflow;
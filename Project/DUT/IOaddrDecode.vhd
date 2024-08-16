LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
USE work.aux_package.all;

ENTITY addr_decoder IS
	PORT    (   i_addrBits, : in std_logic_vector(4 downto 0);
                o_controlBits : out std_logic(7 downto 0) );
END addr_decoder;

ARCHITECTURE dataflow OF addr_decoder IS

    signal int_sw : std_logic_vector(7 downto 0);

BEGIN

    int_sw <= i_swport; -- connet input

    o_data <= int_sw when i_control = '1' and i_memRead = '1';

END dataflow;
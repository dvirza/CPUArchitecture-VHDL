LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
USE work.aux_package.all;

ENTITY addr_decoder IS
	PORT    (   i_addrBits : in std_logic_vector(4 downto 0);
                o_controlBits : out std_logic(4 downto 0) );
END addr_decoder;

ARCHITECTURE dataflow OF addr_decoder IS

    signal int_output : std_logic_vector(4 downto 0);

BEGIN

    with i_addrBits select
        int_output <=   (0 => '1', others => '0') when "10000", --0x800 cs 0 LEDS
                        (1 => '1', others => '0') when "10001", --0x804 & 0x805 cs 1
                        (2 => '1', others => '0') when "10010", --0x808 & 0x809 cs 2
                        (3 => '1', others => '0') when "10011", --0x80C & 0x80D cs 3
                        (4 => '1', others => '0') when "10100", --0x810 cs 4 SW
                        (others => '0') when others;

    --connect the outputs
    o_controlBits <= int_output;
END dataflow;
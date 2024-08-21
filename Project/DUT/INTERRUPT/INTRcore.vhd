LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE work.aux_package.all;


ENTITY interrupt_core IS
    PORT    (   i_isrc, i_eint, i_clear     : in    std_logic;
                o_ifg                       : out   std_logic;
                o_irq                       : buffer   std_logic );
END interrupt_core;

ARCHITECTURE dataflow OF interrupt_core IS

begin


    
end dataflow;
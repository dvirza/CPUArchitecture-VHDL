LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE work.aux_package.all;


ENTITY interrupt_reg IS
    PORT    (   i_isrc, i_eint, i_clear     : in    std_logic;
                o_ifg                       : out   std_logic;
                o_irq                    : buffer   std_logic );
END interrupt_reg;

ARCHITECTURE dataflow OF interrupt_reg IS

begin

    process(i_isrc, i_clear)
        begin
            if (i_clear = '1') then
                o_irq <= '0';
            elsif rising_edge(i_isrc) then
                o_irq <= '1';
        end process;
        
    o_ifg <= o_irq and i_eint;
    
end dataflow;
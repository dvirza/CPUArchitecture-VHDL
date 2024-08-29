LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE work.aux_package.all;


ENTITY interrupt_reg IS
    PORT    (   i_clk, i_rst, i_isrc, i_eint, i_clear       : in    std_logic;
                o_ifg                                       : out   std_logic;
                o_irq                                       : buffer   std_logic );
END interrupt_reg;

ARCHITECTURE dataflow OF interrupt_reg IS

    --signal int_bit          : std_logic;
    signal int_last_ifg     : std_logic;

begin

    process(i_clk)
        begin
            if rising_edge(i_clk) then
                if i_rst = '1' then
                    o_irq <= '0';
                    int_last_ifg <= '0';
                else
                    if i_clear = '1' then
                        o_irq <= '0';
                    elsif i_isrc = '1' and int_last_ifg = '0' then
                        o_irq <= '1'; 
                    end if;
                    int_last_ifg <= i_isrc;
                end if;
            end if;
        end process;

        -- connect the output
    o_ifg <= o_irq and i_eint;


    -- process(i_isrc, i_clear)
    --     begin
    --         if (i_clear = '1') then
    --             int_bit <= '0';
    --         elsif rising_edge(i_isrc) then
    --             int_bit <= '1';
    --         end if;
    --     end process;

    -- process(i_clk, i_rst)
    --     begin
    --         if (rising_edge(i_clk)) then
    --             if (i_rst = '1') then
    --                 o_irq <= '0';
    --             else
    --                 o_irq <= int_bit;
    --             end if;
    --         end if;
    --     end process;
        
    -- o_ifg <= o_irq and i_eint;
    
end dataflow;
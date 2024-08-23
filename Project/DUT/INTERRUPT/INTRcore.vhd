LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE work.aux_package.all;


ENTITY interrupt_core IS
    PORT    (   i_isrc, i_clear             : in    std_logic_vector(7 downto 0);
                i_data                      : in    std_logic_vector(7 downto 0);
                i_gie                       : in    std_logic;
                i_valid_ie                  : in    std_logic;
                o_intr                      : out   std_logic;
                i_clk, i_rst                : in    std_logic;
                o_ifg, o_irq                : out   std_logic_vector(7 downto 0);
                o_data_ie,o_type            : out   std_logic_vector(7 downto 0) )
END interrupt_core;

ARCHITECTURE dataflow OF interrupt_core IS

    signal int_ie_reg : std_logic_vector(7 downto 0);

begin
    several_inst : interrupt_reg_several port map ( i_clk => i_clk, i_rst => i_rst, i_gie => i_gie, i_isrc => i_isrc,
                                                    i_clear => i_clear, i_eint => int_ie_reg, o_intr => o_intr, 
                                                    o_ifg => o_ifg, o_irq => o_irq );
    -- IE reg
    process (i_rst, i_clk)
        if (rising_edge(clk)) then
            if (i_rst = '1') then
                int_ie_reg <= (others => '0');
            elsif (i_valid_ie = '1') then
                int_ie_reg <= i_data;
            end if;
        end if;
    end process;
    
    --TYPE implement

    --push the output ie for read
    o_data_ie <= int_ie_reg;
    
end dataflow;
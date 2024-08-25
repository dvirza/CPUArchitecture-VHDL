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
                o_data_ie,o_type            : out   std_logic_vector(7 downto 0) );
END interrupt_core;

ARCHITECTURE dataflow OF interrupt_core IS

    signal int_ie_reg, int_ifg : std_logic_vector(7 downto 0);

begin
    several_inst : interrupt_reg_several port map ( i_clk => i_clk, i_rst => i_rst, i_gie => i_gie, i_isrc => i_isrc,
                                                    i_clear => i_clear, i_eint => int_ie_reg, o_intr => o_intr, 
                                                    o_ifg => int_ifg, o_irq => o_irq );
    -- IE reg
    process (i_rst, i_clk)
        begin
        if (rising_edge(i_clk)) then
            if (i_rst = '1') then
                int_ie_reg <= (others => '0');
            elsif (i_valid_ie = '1') then
                int_ie_reg <= i_data;
            end if;
        end if;
    end process;
    
    --TYPE implement
    o_type  <=  X"08" when int_ifg(0) = '1'
                else X"0C" when int_ifg(0) = '0' and int_ifg(1) = '1'
                else X"10" when int_ifg(0) = '0' and int_ifg(1) = '0' and int_ifg(2) = '1'
                else X"14" when int_ifg(0) = '0' and int_ifg(1) = '0' and int_ifg(2) = '0' and int_ifg(3) = '1'
                else X"18" when int_ifg(0) = '0' and int_ifg(1) = '0' and int_ifg(2) = '0' and int_ifg(3) = '0' and int_ifg(4) = '1'
                else X"1C" when int_ifg(0) = '0' and int_ifg(1) = '0' and int_ifg(2) = '0' and int_ifg(3) = '0' and int_ifg(4) = '0' and int_ifg(5) = '1'
                else X"20" when int_ifg(0) = '0' and int_ifg(1) = '0' and int_ifg(2) = '0' and int_ifg(3) = '0' and int_ifg(4) = '0' and int_ifg(5) = '0' and int_ifg(6) = '1'
                else X"00" when int_ifg = "00000000";
                    
    --push the output ie for read
    o_ifg <= int_ifg;
    o_data_ie <= int_ie_reg;
    
end dataflow;
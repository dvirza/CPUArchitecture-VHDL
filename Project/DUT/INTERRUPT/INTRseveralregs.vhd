LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE work.aux_package.all;


ENTITY interrupt_reg_several IS
    PORT    (   i_clk, i_rst, i_gie         : in  std_logic;
                i_isrc, i_clear, i_eint     : in  std_logic_vector(7 downto 0);
                o_intr                      : out std_logic;
                o_ifg                       : buffer std_logic_vector(7 downto 0);
                o_irq                       : out std_logic_vector(7 downto 0) );
END interrupt_reg_several;

ARCHITECTURE dataflow OF interrupt_reg_several IS

    signal int_ifg : std_logic;--_vector(7 downto 0);

begin

    int_ifg <=  o_ifg(0) or o_ifg(1) or o_ifg(2) or 
                o_ifg(3) or o_ifg(4) or o_ifg(5) or 
                o_ifg(6) or o_ifg(7);

    o_intr <= int_ifg and i_gie;
        

IFG0_inst : interrupt_reg port map (i_clk => i_clk, i_rst => i_rst, i_isrc => i_isrc(0), i_eint => i_eint(0), 
        i_clear => i_clear(0), o_ifg => o_ifg(0), 
        o_irq => o_irq(0));

IFG1_inst : interrupt_reg port map (i_clk => i_clk, i_rst => i_rst, i_isrc => i_isrc(1), i_eint => i_eint(1), 
        i_clear => i_clear(1), o_ifg => o_ifg(1), 
        o_irq => o_irq(1));

IFG2_inst : interrupt_reg port map (i_clk => i_clk, i_rst => i_rst, i_isrc => i_isrc(2), i_eint => i_eint(2), 
        i_clear => i_clear(2), o_ifg => o_ifg(2), 
        o_irq => o_irq(2));

IFG3_inst : interrupt_reg port map (i_clk => i_clk, i_rst => i_rst, i_isrc => i_isrc(3), i_eint => i_eint(3), 
        i_clear => i_clear(3), o_ifg => o_ifg(3), 
        o_irq => o_irq(3));

IFG4_inst : interrupt_reg port map (i_clk => i_clk, i_rst => i_rst, i_isrc => i_isrc(4), i_eint => i_eint(4), 
        i_clear => i_clear(4), o_ifg => o_ifg(4), 
        o_irq => o_irq(4));

IFG5_inst : interrupt_reg port map (i_clk => i_clk, i_rst => i_rst, i_isrc => i_isrc(5), i_eint => i_eint(5), 
        i_clear => i_clear(5), o_ifg => o_ifg(5), 
        o_irq => o_irq(5));

IFG6_inst : interrupt_reg port map (i_clk => i_clk, i_rst => i_rst, i_isrc => i_isrc(6), i_eint => i_eint(6), 
        i_clear => i_clear(6), o_ifg => o_ifg(6), 
        o_irq => o_irq(6));

IFG7_inst : interrupt_reg port map (i_clk => i_clk, i_rst => i_rst, i_isrc => i_isrc(7), i_eint => i_eint(7), 
        i_clear => i_clear(7), o_ifg => o_ifg(7), 
        o_irq => o_irq(7));

end dataflow;
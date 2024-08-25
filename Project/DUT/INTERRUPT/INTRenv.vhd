LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE work.aux_package.all;


ENTITY interrupt_env IS
    PORT    (   i_clk, i_rst                : in    std_logic;
                i_isrc                      : in    std_logic_vector(7 downto 0);
                i_intr_ack                  : in    std_logic;
                i_addr                      : in    std_logic_vector(11 downto 0);
                i_memread,i_memwrite,i_gie  : in    std_logic;
                i_TXBUF,i_RXBUF             : in    std_logic;
                i_irq                       : in   std_logic_vector(7 downto 0);
                o_intr                      : out   std_logic;
                io_data                     : inout   std_logic_vector(7 downto 0) );
END interrupt_env;

ARCHITECTURE dataflow OF interrupt_env IS

    signal int_clear, int_set_ifg : std_logic_vector(7 downto 0);
    signal int_valid_ie, int_enable_bus : std_logic;
    signal int_ifg,int_ie_reg,int_type : std_logic_vector(7 downto 0);
    signal int_data_into_core, int_data_outto_ie : std_logic_vector(7 downto 0);
    signal int_soft_ifg_write :std_logic_vector(7 downto 0);
    signal int_INTR_ack : std_logic_vector(7 downto 0);

begin
    core_inst : interrupt_core port map (   i_clk => i_clk, i_rst => i_rst,i_gie => i_gie, i_data => int_data_into_core, i_valid_ie => int_valid_ie, i_clear => int_clear, 
                                            i_isrc => int_set_ifg, o_irq => open, o_ifg => int_ifg, o_data_ie => int_ie_reg, o_intr => o_intr,o_type => int_type);
    
    BidirPin_inst : BidirPin generic map (width => 8) port map (Dout => int_data_outto_ie, en => int_enable_bus, Din => int_data_into_core, IOpin => io_data);

    int_enable_bus <= i_memread when (i_addr = X"83C" or i_addr = X"83D" or i_addr = X"83E") else '0';
    with i_addr select
        int_data_outto_ie <= int_ie_reg when X"83C",
                             int_ifg when X"83D",
                             int_type when X"83E",
                             (others => '0') when others;

    int_valid_ie <= i_memwrite when i_addr = X"83C" else '0'; -- Write to IE reg
    int_soft_ifg_write <= int_data_into_core when (i_memwrite = '1' and i_addr = X"83D") else (others => '1');
    int_set_ifg  <= i_irq or int_soft_ifg_write; -- maybe loop !!!


    int_INTR_ack <= X"01" when i_intr_ack = '1' and int_ifg(0) = '1'
                    else X"02" when i_intr_ack = '1' and int_ifg(0) = '0' and int_ifg(1) = '1'
                    else X"04" when i_intr_ack = '1' and int_ifg(0) = '0' and int_ifg(1) = '0' and int_ifg(2) = '1'
                    else X"40" when i_intr_ack = '1' and int_ifg(0) = '0' and int_ifg(1) = '0' and int_ifg(2) = '0' and int_ifg(3) = '0' and int_ifg(4) = '0' and int_ifg(5) = '0' and int_ifg(6) = '1';

    int_clear(0) <= int_INTR_ack(0) or (not int_soft_ifg_write(0)) or i_RXBUF;
    int_clear(1) <= int_INTR_ack(1) or (not int_soft_ifg_write(1)) or i_TXBUF;
    IFGclear_loop : for i in 2 to 7 generate
            int_clear(i) <= int_INTR_ack(i) or (not int_soft_ifg_write(i));
    end generate IFGclear_loop;
end dataflow;
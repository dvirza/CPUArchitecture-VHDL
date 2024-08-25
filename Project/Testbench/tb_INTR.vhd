LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
USE work.aux_package.all;


entity tb_interuppt is
end tb_interuppt;

architecture tb_interuppt of tb_interuppt is

    signal rst, clk, ACK, GIE, INTR: STD_LOGIC := '0';
    signal MemWrite, MemRead, TX,RX: STD_LOGIC := '0';
    signal addr: STD_LOGIC_VECTOR(11 DOWNTO 0) := (others => '0');
    signal data, SRC, IRQ: STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');

begin

    INTR_inst: interrupt_env port map(  i_clk => clk,
                                        i_rst => rst,
                                        i_isrc => SRC,
                                        i_intr_ack => ACK,
                                        i_addr => addr,
                                        i_memread => MemRead,
                                        i_memwrite => MemWrite,
                                        i_gie => GIE,
                                        i_TXBUF => TX,
                                        i_RXBUF => RX,
                                        i_irq => IRQ,
                                        o_intr => INTR,
                                        io_data => data);
    
    gen_clk : process begin
        clk <= '0';
        wait for 50 ns;
        clk <= not clk;
        wait for 50 ns;
    end process;
    
    tb : process begin
        rst <= '1';
        wait until rising_edge(clk);      
        rst <= '0';
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        GIE <= '1';
        wait until rising_edge(clk);
        MemWrite <= '1';
        addr <= X"83C";
        wait until rising_edge(clk);
        data <= "00000100";
        wait until rising_edge(clk);
        MemWrite <= '1';
        addr <= X"83d";
        wait until rising_edge(clk);
        data <= "11111111";
        wait until rising_edge(clk);
        SRC(2) <= '1';
        MemWrite <= '0';

        for i in 0 to 99 loop          --wait for timer to count
            wait until rising_edge(clk);
        end loop;
      
    end process;
end tb_interuppt;
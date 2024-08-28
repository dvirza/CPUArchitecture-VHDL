LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE work.aux_package.all;

ENTITY mcu_top IS
    PORT(   i_reset, i_clock				            : IN 	STD_LOGIC;
            i_rxuart,i_txuart                           : IN    STD_LOGIC;
            i_sw                                        : IN    STD_LOGIC_VECTOR(7 DOWNTO 0);
            o_hex0,o_hex1,o_hex2,o_hex3,o_hex4,o_hex5   : OUT   STD_LOGIC_VECTOR(6 DOWNTO 0);
            o_leds                                      : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0);
            o_pwm                                       : OUT   STD_LOGIC;
            io_data                                     : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0) );
END mcu_top;

ARCHITECTURE dataflow OF mcu_top IS

    SIGNAL  t_clk,t_gie                                             : STD_LOGIC;
    SIGNAL  t_intr,t_inta,t_memwrite,t_memread                      : STD_LOGIC;
    SIGNAL  t_addr_bus                                              : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL  t_data_bus                                              : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL  t_irq                                                   : STD_LOGIC_VECTOR(7 DOWNTO 0);




BEGIN

    --t_clk SHOULD CONNECT TO PLL
    --DIVIDER ENABLE?????

    MIPS : MIPSenv
    GENERIC MAP ( addr_zise : integer);
    PORT MAP    ( i_reset => i_reset, i_clock => t_clk, o_gie => t_gie,
                i_intr => t_intr, o_inta => t_inta, o_memwrite => t_memwrite,
                o_memread => t_memread, o_addr => t_addr_bus, io_bus => t_data_bus);


    DIVIDER: div_env
    PORT MAP (   i_divCLK => t_clk, i_divRST => i_reset, i_memRead => t_memread, i_memWrite => t_memwrite,
                 i_divENA => , i_addr => t_addr_bus, o_divIFG => t_irq(6), io_data => t_data_bus);


    INTR_CTRL: 
    PORT    (   i_clk, i_rst                : in    std_logic;
    i_isrc                      : in    std_logic_vector(7 downto 0);
    i_intr_ack                  : in    std_logic;
    i_addr                      : in    std_logic_vector(11 downto 0);
    i_memread,i_memwrite,i_gie  : in    std_logic;
    i_TXBUF,i_RXBUF             : in    std_logic;
    i_irq                       : in   std_logic_vector(7 downto 0);
    o_intr                      : out   std_logic;
    io_data                     : inout   std_logic_vector(7 downto 0) );


    GPIO: PORT    (   i_memRead, i_memWrite   : in    std_logic;
    i_addr      : in    std_logic_vector (5 downto 0);--<A11,A5,A4,A3,A2,A0>
    i_swport    : in    std_logic_vector(7 downto 0);
    o_hex0,o_hex1,o_hex2,o_hex3,o_hex4,o_hex5 : out std_logic_vector(6 downto 0);
    o_leds      : out   std_logic_vector(7 downto 0);
    io_data     : inout   std_logic_vector(7 downto 0) );

    TIMER: PORT    (   i_memRead, i_memWrite, i_MCLK, i_rst   : in    std_logic;
    i_addr              : in    std_logic_vector (11 downto 0);
    io_data             : inout std_logic_vector(31 downto 0);
    o_pwm, o_BTIFG      : out   std_logic );

    --BidirPin connection
    dmem_BdirPin : BidirPin generic map (32) port map (Dout => dmem_into_bus, en => dmem_read, Din => dmem_from_bus, IOpin => io_bus);
    alu_BdirPin : BidirPin generic map (32) port map (Dout => r_data2_into_bus, en => memwrite, Din => r_data2_from_bus, IOpin => io_bus);
    

    END dataflow;


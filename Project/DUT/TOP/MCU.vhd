LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE work.aux_package.all;

ENTITY mcu_top IS
    -- GENERIC( model_sim : boolean := true ; addr_size : integer := 9);
    GENERIC( model_sim : boolean := false ; addr_size : integer := 11);
    PORT(   i_reset, i_clock				            : IN 	STD_LOGIC;
            i_rxuart,i_txuart                           : IN    STD_LOGIC;
            i_pb1,i_pb2,i_pb3                           : IN    STD_LOGIC;
            i_sw                                        : IN    STD_LOGIC_VECTOR(7 DOWNTO 0);
            o_hex0,o_hex1,o_hex2,o_hex3,o_hex4,o_hex5   : OUT   STD_LOGIC_VECTOR(6 DOWNTO 0);
            o_leds                                      : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0);
            o_pwm                                       : OUT   STD_LOGIC );
END mcu_top;

ARCHITECTURE dataflow OF mcu_top IS

    SIGNAL  t_clk,t_gie,t_rst,div_clk                    : STD_LOGIC;
    SIGNAL  t_intr,t_inta,t_memwrite,t_memread          : STD_LOGIC;
    SIGNAL  t_addr_bus                                  : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL  t_data_bus                                  : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL  t_irq                                       : STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');
    SIGNAL  addr_to_gpio                                : STD_LOGIC_VECTOR(5 DOWNTO 0);
    SIGNAL  data_to_gpio, data_to_intr                  : STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN

    PLL_inst1 : PLL port map (refclk => i_clock, rst => '0', outclk_0 => t_clk, locked => open);

    -- PLL_inst : PLL3 port map (refclk => i_clock, rst => '0', outclk_0 => t_clk, outclk_1 => div_clk, locked => open);
    -- t_clk <= i_clock; --t_clk SHOULD CONNECT TO PLL MODEL SIM

    t_rst <= not (i_reset); -- PBs is pull down
    t_irq(0) <= i_rxuart; t_irq(1) <= i_txuart;
    t_irq(3) <= not(i_pb1); t_irq(4) <= not(i_pb2); t_irq(5) <= not(i_pb3); 

    MIPS : MIPSenv
    GENERIC MAP (   model_sim => model_sim, addr_size => addr_size )
    PORT MAP    (   i_reset => t_rst, i_clock => t_clk, o_gie => t_gie,
                    i_intr => t_intr, o_inta => t_inta, o_memwrite => t_memwrite,
                    o_memread => t_memread, o_addr => t_addr_bus, io_bus => t_data_bus  );


    DIVIDER: div_env 
    PORT MAP    (   i_divCLK => t_clk, i_divRST => t_rst, i_memRead => t_memread, i_memWrite => t_memwrite,
                    i_addr => t_addr_bus, o_divIFG => t_irq(6), io_data => t_data_bus);


    INTR_CTRL: interrupt_env
    PORT MAP    (   i_clk => t_clk, i_rst => t_rst, i_intr_ack => t_inta, i_addr => t_addr_bus,
                    i_memread => t_memread, i_memwrite => t_memwrite, i_gie => t_gie,
                    i_TXBUF => i_txuart,i_RXBUF => i_rxuart, i_irq => t_irq, o_intr => t_intr, io_data => t_data_bus );


    addr_to_gpio(0) <= t_addr_bus(0); addr_to_gpio(1) <= t_addr_bus(2); addr_to_gpio(2) <= t_addr_bus(3);
    addr_to_gpio(3) <= t_addr_bus(4); addr_to_gpio(4) <= t_addr_bus(5); addr_to_gpio(5) <= t_addr_bus(11);
    GPIO_inst : GPIO
    PORT MAP    (   i_clk => t_clk, i_rst => t_rst, i_memRead => t_memread, i_memWrite => t_memwrite, i_addr => addr_to_gpio, i_swport => i_sw,
                    o_hex0 => o_hex0, o_hex1 => o_hex1, o_hex2 => o_hex2, o_hex3 => o_hex3,
                    o_hex4 => o_hex4, o_hex5 => o_hex5, o_leds => o_leds, io_data => t_data_bus );


    TIMER: BTimer_env 
    PORT MAP    (   i_memRead => t_memread, i_memWrite => t_memwrite, i_MCLK => t_clk, i_rst => t_rst,
                    i_addr => t_addr_bus, o_pwm => o_pwm, o_BTIFG => t_irq(2), io_data => t_data_bus );
    
    
    
    END dataflow;


LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE work.aux_package.all;

entity tb_MCU is
end tb_MCU;


architecture tb of tb_MCU is
    -- ModuleWare signal declarations(v1.9) for instance 'U_0' of 'clk'
    SIGNAL mw_U_0clk : std_logic;
    SIGNAL mw_U_0disable_clk : boolean := FALSE;

    -- ModuleWare signal declarations(v1.9) for instance 'U_1' of 'pulse'
    SIGNAL mw_U_1pulse : std_logic :='0';

    SIGNAL  clock, reset                    : std_logic := '0';
    SIGNAL  RXuart, TXuart                  : std_logic := '0';
    SIGNAL  pb1,pb2,pb3                     : std_logic := '1';
    SIGNAL  sw                              : std_logic_vector (7 downto 0) := X"99";
    SIGNAL  hex0,hex1,hex2,hex3,hex4,hex5   : std_logic_vector(6 downto 0) := (others => '0');
    SIGNAL  leds                            : std_logic_vector(7 downto 0) := (others => '0');
    SIGNAL  pwm                             : std_logic := '0';

begin


    U_0 : mcu_top   generic map(model_sim => true ,addr_size => 9) 
                    port map (  i_clock => clock,
                                i_reset => reset,
                                i_rxuart => RXuart,
                                i_txuart => TXuart,
                                i_pb1 => pb1, i_pb2 => pb2, i_pb3 => pb3,
                                i_sw => sw,
                                o_hex0 => hex0, o_hex1 => hex1, o_hex2 => hex2,
                                o_hex3 => hex3, o_hex4 => hex4, o_hex5 => hex5,
                                o_leds => leds, o_pwm => pwm );


    u_0clk_proc: PROCESS
    BEGIN
        WHILE NOT mw_U_0disable_clk LOOP
            mw_U_0clk <= '0', '1' AFTER 50 ns;
            WAIT FOR 100 ns;
        END LOOP;
        WAIT;
    END PROCESS u_0clk_proc;
    mw_U_0disable_clk <= TRUE AFTER 30000 ns;
    clock <= mw_U_0clk;
    -- ModuleWare code(v1.9) for instance 'U_1' of 'pulse'
    reset <= mw_U_1pulse;
    u_1pulse_proc: PROCESS
    BEGIN
        mw_U_1pulse <= 
            '1',
            '0' AFTER 20 ns,
            '1' AFTER 120 ns;
        WAIT;
        END PROCESS u_1pulse_proc;

    ISR_gen : PROCESS
    BEGIN
    sw <= X"20";
        for i in 0 to 20 LOOP
            WAIT until rising_edge(clock);
        end loop;
    pb1 <= '0';
    WAIT until rising_edge(clock);
    pb1 <= '1';
    for i in 0 to 6 LOOP
            WAIT until rising_edge(clock);
        end loop;
    sw <= X"08";
        for i in 0 to 34 LOOP
            WAIT until rising_edge(clock);
        end loop;
    pb2 <= '0';
    for i in 0 to 20 LOOP
            WAIT until rising_edge(clock);
        end loop;
    pb2 <= '1';
    pb3 <= '0';
    WAIT until rising_edge(clock);
    WAIT until rising_edge(clock);
    pb3 <= '1';
    end PROCESS;
end tb;
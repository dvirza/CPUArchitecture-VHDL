LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE work.aux_package.all;


ENTITY BTimer_env IS
    PORT    (   i_memRead, i_memWrite, i_MCLK, i_rst    : in    std_logic;
                i_addr                                  : in    std_logic_vector (11 downto 0);
                io_data                                 : inout std_logic_vector(31 downto 0);
                o_pwm, o_BTIFG                          : out   std_logic );
END BTimer_env;

ARCHITECTURE dataflow OF BTimer_env IS

    signal BTCCR0,BTCCR1, BTCNT             : std_logic_vector(31 downto 0);
    signal BTCTL,BTCTL_write                : std_logic_vector(7 downto 0);
    signal int_PWM, int_BTIFG               : std_logic := '0';
    signal int_data_w, int_data_r           : std_logic_vector(31 downto 0) := (others => 'X');
    signal enable_bus, valid_write_BTCNT    : std_logic;

begin

BTimer_inst : BTimer generic map (n=> 32, k=> 8) port map ( i_MCLK => i_MCLK,i_rst => i_rst,i_valid => valid_write_BTCNT,i_BTCTL => BTCTL,i_BTCCR0 => BTCCR0,
                                                            i_BTCCR1 => BTCCR1,i_BTCNT => int_data_w,o_BTPWM => int_PWM,o_BTCNT => BTCNT,o_BTIFG => int_BTIFG   );


bus_inst : BidirPin generic map (32) port map (Dout => int_data_r, en => enable_bus,Din => int_data_w,IOpin => io_data);

        -- BUS enable for BidirPin
enable_bus <= i_memRead when (i_addr = X"824" or i_addr = X"828" or i_addr = X"820" or i_addr = X"81C") else '0';

        -- Valid bit for writing to BTCNT
valid_write_BTCNT <= i_memWrite when i_addr = X"820" else '0';


        -- Write to Basic Timer registers
    process(i_MCLK)
    begin
        if (i_rst = '1') then
            BTCCR0 <= (others => '0'); BTCCR1 <= (others => '0');
            BTCTL <= (others => '0');
        elsif rising_edge(i_MCLK) then
            if i_memWrite = '1' then
                if i_addr = X"824" then
                    BTCCR0 <= int_data_w;
                elsif i_addr = X"828" then
                    BTCCR1 <= int_data_w;
                elsif i_addr = X"81C" then
                    BTCTL <= int_data_w(7 downto 0);
                end if;
            end if;
        end if;
    end process;


        -- Read from Basic Timer registers
    process(i_MCLK)
        begin
        if rising_edge(i_MCLK) then
            if i_memRead = '1' then
                if i_addr = X"820" then
                    int_data_r <= BTCNT;
                elsif i_addr = X"824" then
                    int_data_r <= BTCCR0;
                elsif i_addr = X"828" then
                    int_data_r <= BTCCR1;
                elsif i_addr = X"81C" then
                    int_data_r(7 downto 0) <= BTCTL;
                    int_data_r(31 downto 8) <= (others => '0');
                end if;
            end if;
        end if;
    end process;

        --connect the outputs
    o_BTIFG <= int_BTIFG;
    o_pwm <= int_PWM;
    
end dataflow;
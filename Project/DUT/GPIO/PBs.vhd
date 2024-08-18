LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE work.aux_package.all;


ENTITY pushbuttons IS
    PORT    (   i_memRead, i_memWrite, i_MCLK, i_rst   : in    std_logic;
                i_addr              : in    std_logic_vector (7 downto 0);
                io_data              : inout std_logic_vector(31 downto 0);
                o_pwm, o_BTIFG      : out   std_logic );
END pushbuttons;

ARCHITECTURE dataflow OF pushbuttons IS

    signal BTCCR0,BTCCR1, BTCNT : std_logic_vector(31 downto 0);
    signal BTCTL : std_logic_vector(7 downto 0);
    signal int_PWM, int_BTIFG : std_logic := '0';

begin

BTimer_inst : BTimer generic map (n=> 32, k=> 8) port map (i_MCLK => i_MCLK,i_BTCTL => BTCTL,i_BTCCR0 => BTCCR0,i_BTCCR1 => BTCCR1,i_BTCNT => BTCNT,o_BTPWM => int_PWM,o_BTIFG => int_BTIFG);


    --connect the outputs
    o_BTIFG <= int_BTIFG;
    o_BTPWM <= int_PWM;
    
end dataflow;
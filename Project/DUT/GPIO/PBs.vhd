LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE work.aux_package.all;


ENTITY pushbuttons IS
    PORT    (   i_PB1,i_PB2,i_PB3   : in    std_logic;
                o_pwm, o_BTIFG      : out   std_logic );
END pushbuttons;

ARCHITECTURE dataflow OF pushbuttons IS

    signal BTCCR0,BTCCR1, BTCNT : std_logic_vector(31 downto 0);
    signal BTCTL : std_logic_vector(7 downto 0);
    signal int_PWM, int_BTIFG : std_logic := '0';

begin


    --connect the outputs
    o_BTIFG <= int_BTIFG;
    o_BTPWM <= int_PWM;
    
end dataflow;
LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE work.aux_package.all;


ENTITY BTimer_env IS
	generic (  n : INTEGER;
               k : INTEGER --size of control register (8 in this case)
            );
	port (  MCLK_i : IN std_logic;
            BTCTL_i : IN std_logic_vector (k-1 downto 0);
            BTCCR0, BTCCR1 : IN std_logic_vector(n-1 downto 0);
            BTPWM_o : OUT std_logic;
	        BTIFG_o: OUT std_logic
         );
END BTimer_env;


ARCHITECTURE dataflow OF BTimer_env IS

    signal BTControl_internal : std_logic_vector(k-1 downto 0) := (others => '0');
    signal interruptFlag_internal : std_logic;
    signal BTOUTMD_internal, BTOUTEN_internal, BTHOLD_internal : std_logic := '0';
    signal BTSSEL_internal : std_logic_vector : (1 downto 0) := (others => '0');
    signal BTIP_internal : std_logic_vector : (2 downto 0) := (others => '0');

begin

    basicTimer_inst : BTimer generic map () port map ();
    pwm_inst : PWM generic map () port map ();

    BTControl_internal <= BTCTL_i; --takes the control register for internal use

    --connect wires from control register to control bits (SPEC)
    BTOUTMD_internal <= BTControl_internal(7);
    BTOUTEN_internal <= BTControl_internal(6);
    BTHOLD_internal <= BTControl_internal(5);
    BTSSEL_internal <= BTControl_internal(4 downto 3);
    BTIP_internal <= BTControl_internal(2 downto 0);




    BTIFG_o <= interruptFlag_internal; --push to output
end dataflow;
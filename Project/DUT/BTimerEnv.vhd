LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE work.aux_package.all;


ENTITY BTimer_env IS
	generic (  n : INTEGER;
               k : INTEGER --size of control register (8 in this case)
            );
	port (  i_MCLK : IN std_logic;
            i_BTCTL : IN std_logic_vector (k-1 downto 0);
            BTCCR0, BTCCR1 : IN std_logic_vector(n-1 downto 0);
            o_BTPWM : OUT std_logic;
	        o_BTIFG: OUT std_logic
         );
END BTimer_env;


ARCHITECTURE dataflow OF BTimer_env IS

    signal BTControl_internal : std_logic_vector(k-1 downto 0) := (others => '0');
    signal interruptFlag_internal : std_logic;
    signal BTOUTMD_internal, BTOUTEN_internal, BTHOLD_internal : std_logic := '0';
    signal BTSSEL_internal : std_logic_vector : (1 downto 0) := (others => '0');
    signal BTIP_internal : std_logic_vector : (2 downto 0) := (others => '0');
    signal MCLK_2,MCLK_4,MCLK_8,CLKtoTIMER : std_logic := '0';

begin

    basicTimer_inst : BTimer generic map () port map ();
    pwm_inst : PWM generic map () port map ();
    clkdiv_inst : clock_div port map (i_clk=>i_MCLK,i_rst=>'0',o_clk_div2=>MCLK_2 ,o_clk_div4=>MCLK_4 ,o_clk_div8=>MCLK_8 );

    BTControl_internal <= i_BTCTL; --takes the control register for internal use

    --connect wires from control register to control bits (SPEC)
    BTOUTMD_internal <= BTControl_internal(7);
    BTOUTEN_internal <= BTControl_internal(6);
    BTHOLD_internal <= BTControl_internal(5);
    BTSSEL_internal <= BTControl_internal(4 downto 3);
    BTIP_internal <= BTControl_internal(2 downto 0);

    --MUX for clock
    CLKtoTIMER <= i_MCLK when BTSSEL_internal = "00" else
                  MCLK_2 when BTSSEL_internal = "01" else
                  MCLK_4 when BTSSEL_internal = "10" else
                  MCLK_8 when BTSSEL_internal = "11";




    o_BTIFG <= interruptFlag_internal; --push to output
end dataflow;
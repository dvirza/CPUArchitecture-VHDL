LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
USE work.aux_package.all;

ENTITY pwm IS
    generic(n : INTEGER );
    port (  clk, ena ,rst : in std_logic;
            x,y,i_count : in std_logic_vector(n-1 downto 0);
            workMode : in std_logic;
            pwmOut : buffer std_logic  );
END pwm;

architecture dataflow of pwm is

    signal intPWMstartMode : std_logic := '0'; --takes the workmode when start 0 or 1
    signal intPWM : std_logic := '0'; --internal use for pwn manage
    signal intCount : std_logic_vector(n-1 downto 0) := (others => '0'); -- internal use couter value
    signal zeros_vector : std_logic_vector(n-1 downto 0) := (others => '0'); --constant zeros vector
    signal intX, intY : std_logic_vector(n-1 downto 0); --get the inputs for internal use


    begin

        intPWMstartMode <= workMode; intX <= x ; intY <= y;
        intCount <= i_count;
        process (clk)
        begin
            if (rising_edge(clk)) then
                if (ena = '1') then
                        if (intCount = (intY-1)) then
                            intPWM <= intPWMstartMode;
                        end if;
                        if (intCount <= (intX-1)) then
                            intPWM <= intPWMstartMode;
                        else
                            intPWM <= not(intPWMstartMode);
                        end if;
                end if;
            end if;
        end process;

        --connect the output
        pwmOut <= intPWM; 

    
    end dataflow;
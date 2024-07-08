LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
USE work.aux_package.all;

ENTITY pwm IS
    generic(n : INTEGER );
    port (  clk, ena ,rst : in std_logic;
            x,y : in std_logic_vector(n-1 downto 0);
            workMode : in std_logic_vector(1 downto 0);
            pwmOut : buffer std_logic  );
END pwm;

architecture dataflow of pwm is

    signal intPWMstartMode : std_logic_vector(1 downto 0) := (others => '0'); --takes the workmode when start 0 or 1
    signal intPWM : std_logic := '0'; --internal use for pwn manage
    signal intCount : std_logic_vector(n-1 downto 0) := (others => '0'); -- internal use couter value
    signal zeros_vector : std_logic_vector(n-1 downto 0) := (others => '0'); --constant zeros vector
    signal intX, intY : std_logic_vector(n-1 downto 0); --get the inputs for internal use
    signal count : std_logic_vector(n-1 downto 0) := (others => '0');

    begin
        --set counter to zero and define start signal using modeWork
        --when clk'event and clk = 1 and enable = 1 => counter + 1
        --check if work mode is X toggle or regular(from task)
        --check if counter = x | if yes => put not on the workmode else if counter = y not the workmode and zero counter.

        intPWMstartMode <= workMode; intX <= x ; intY <= y; --connect the input to the internal use signals
        intCount <= count;
        process (clk)
        begin
            if (rising_edge(clk)) then
                if (rst = '0') then
                    count <= (others => '0');
                end if;
                if (ena = '1') then --keep count when enable is up
                    count <= count + 1;
                    if (intPWMstartMode(1) = '0') then --PWM in regular work mode as shown in task
                        if (intCount = (intY-1)) then
                            intPWM <= intPWMstartMode(0);
                            count <= (others => '0'); --zeros the counter
                        end if;
                        if (intCount <= (intX-1)) then
                            intPWM <= intPWMstartMode(0);
                        else
                            intPWM <= not(intPWMstartMode(0));
                        end if;
                    elsif (intPWMstartMode = "10") then --PWM in X toogle mode with DutyCycle of 50% and 2Y period as shown in task
                        if (intCount = (intY-1)) then
                            count <= (others => '0'); --zeros the counter
                        end if;
                        if (intCount = (intX-1)) then
                            intPWM <= not(pwmOut);
                        end if;
                    end if;
                end if;
            end if;
        end process;

        --connect the output
        pwmOut <= intPWM; 

    
    end dataflow;
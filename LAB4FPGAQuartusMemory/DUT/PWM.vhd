LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
USE work.aux_package.all;

ENTITY pwm IS
    generic (n : INTEGER );
    port (  clk, ena ,rst : in std_logic;
            x,y : in std_logic_vector(n-1 downto 0);
            workMode : in std_logic;
            pwmOut : out std_logic  
    );
END pwm;

architecture dataflow of pwm is
    signal intPWM, intPWMstartMode, intRST : std_logic := '0'; --internal use for pwn manage
    signal intCount : std_logic_vector(n-1 downto 0) := (others => '0'); -- internal use couter value
    signal zeros_vector : std_logic_vector(n-1 downto 0) := (others => '0'); --constant zeros vector
    signal intX, intY : std_logic_vector(n-1 downto 0); --get the inputs for internal use
    signal count, countOut: std_logic_vector(n-1 downto 0) := (others => '0');
    begin
        --set counter to zero and define start signal using modeWork
        --when clk'event and clk = 1 => counter + 1
        --check if counter = x | if yes => toggle mode else if counter = y toggle and zero counter.
        --counter_inst : counter generic map (n=>n) port map (clk => clk, enable => ena, rst => intRST, q=> intCount);

        intPWMstartMode <= workMode; intX <= x ; intY <= y; --connect the input to the internal use signals
        intCount <= count;
        process (clk)
        begin
            if (rising_edge(clk)) then
                if (ena = '1') then
                    count <= count + 1;
                end if;
                if (rst = '0') then
                    count <= (others => '0');
                end if;
                if (intCount = intY) then
                    intPWM <= intPWMstartMode;
                    count <= (others => '0'); --zeros the counter
                end if;
                if (intCount = intX) then
                    intPWM <= not(intPWMstartMode);
                end if;
            end if;
        end process;
        pwmOut <= intPWM; --connect the output

    
    end dataflow;
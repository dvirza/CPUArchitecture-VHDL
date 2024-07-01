LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_package.all;

ENTITY pwm IS
    generic (n : INTEGER );
    port (  clk, ena : in std_logic;
            x,y : in std_logic_vector(n-1 downto 0);
            workMode : in std_logic;
            pwmOut : out std_logic  
    );
END pwm;

architecture dataflow of pwm is
    signal intPWM, intPWMstartMode, intRST : std_logic; --internal use for pwn manage
    signal intCount : std_logic_vector(n-1 downto 0) := (others => '0'); -- internal use couter value
    signal zeros_vector : std_logic_vector(n-1 downto 0) := (others => '0'); --constant zeros vector
    signal intX, intY : std_logic_vector(n-1 downto 0); --get the inputs for internal use

    begin
        --set counter to zero and define start signal using modeWork
        --when clk'event and clk = 1 => counter + 1
        --check if counter = x | if yes => toggle mode else if counter = y toggle and zero counter.
        counter_inst : counter generic map (n=>n) port map (clk => clk, enable => ena, rst => intRST, q=> intCount);

        intPWMstartMode <= workMode; intX <= x ; intY <= y; --connect the input to the internal use signals
        
        process (clk,ena)
        begin
            if (rising_edge(clk)) then
                if (intCount = zeros_vector or intCount = intY) then
                    intPWM <= intPWMstartMode;
                    intRST <= '1'; --zeros the counter
                else
                    intRST <= '0'; --make sure the counter not zero
                end if;
                if (intCount = intX) then
                    intPWM <= not(intPWMstartMode);
                end if;
            end if;
        end process;

    pwmOut <= intPWM; --connect the output
    end dataflow;
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_package.all;

ENTITY pwmEnv IS
    GENERIC(n : INTEGER);
    PORT (  clk, ena, rst : in std_logic;
            alufn_i : in std_logic_vector(4 downto 0);
            x_i, y_i : in std_logic_vector(n-1 downto 0);
            PWMoutput: out std_logic );
END pwmEnv;


architecture dataflow of pwmEnv is

    signal intPWMout : std_logic; --internal signal to push the PWM out
    signal intXforPWM, intYforPWM: std_logic_vector(n-1 downto 0); --internal signals to keep X and Y
    signal zeros_vector : std_logic_vector(n-1 downto 0) := (others => '0'); --constant zeros vector
    signal workMode : std_logic_vector(1 downto 0); --internal work mode --CHANGE HERE

    begin
        --connect the pwm
        pwm_inst : pwm generic map (n=>n ) port map (clk=>clk,ena=>ena, rst=>rst ,x=>intXforPWM,y=>intYforPWM,workMode=>workMode ,pwmOut=> intPWMout);

        --takes the workmode from the ALUfn
        workMode <= alufn_i(1 downto 0);

        --input the registers(X,Y) during the right mode otherwise keep work with zeros to output zero
        intXforPWM <= x_i when alufn_i(4 downto 3) = "00" else zeros_vector;
        intYforPWM <= y_i when alufn_i(4 downto 3) = "00" else zeros_vector;

        --connect the output to the internal signal
        PWMoutput <= intPWMout;

    end dataflow;
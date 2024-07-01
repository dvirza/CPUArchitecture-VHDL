LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_package.all;

ENTITY pwmEnv IS
    GENERIC(n : INTEGER);
    PORT (  clk, ena : in std_logic;
            alufn_i : in std_logic_vector(4 downto 0);
            x_i, y_i : in std_logic_vector(n-1 downto 0);
            PWMoutput: out std_logic;
    );
END pwmEnv;


architecture dataflow of pwmEnv is
    signal intPWMout : std_logic;
    signal intXforPWM, intYforPWM: std_logic_vector(n-1 downto 0);
    signal zeros_vector : std_logic_vector(n-1 downto 0) := (others => '0'); --constant zeros vector

    begin
        pwm_inst : pwm generic map (n=> ) port map (clk=>clk,ena=>ena,x=>intXforPWM,y=>intYforPWM,workMode=>alufn_i(0) ,pwmOut=> intPWMout)

        intXforPWM <= x_i when alufn_i(4 downto 3) = "00" else zeros_vector;
        intYforPWM <= y_i when alufn_i(4 downto 3) = "00" else zeros_vector;

        PWMoutput <= intPWMout; --connect the output to the internal signal
    end dataflow;
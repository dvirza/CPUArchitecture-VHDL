LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_package.all;

entity top is
    generic(n:INTEGER;
         k: INTEGER);
    port(clk,ena : in std_logic;
         x_i,y_i : in std_logic_vector(n-1 downto 0);
         alufn_i : in std_logic_vector(4 downto 0);
         pwm_o, ov_flag_o, z_flag_o, c_flag_o, n_flag_o : out std_logic;
         aluRes_o : out std_logic_vector(n-1 downto 0)
         )
end top;


architecture dataflow of top is
    signal intOUTputForPWM, intPWM : std_logic;
    signal intOUTputForALU, intALU : std_logic_vector(n-1 downto 0);
    signal intFlagN,intFlagC,intFlagZ,intFlagOV : std_logic;

    begin

    alu_inst : aluEnv generic map (n=>n,k=>k) port map (X_i=>x_i, Y_i=>y_i, ALUFN_i=>alufn_i, ALUout_o => intALU ,
                                                        Nflag_o => intFlagN, Cflag_o=> intFlagC, Zflag_o=>intFlagZ,Vflag_o=>intFlagOV);
    
    pwm_inst : pwmEnv generic map (n=>n) port map (clk=>clk, ena=>ena, alufn_i=>alufn_i, x_i=>x_i, y_i=>y_i, PWMoutput=>intPWM);
    
    with alufn_i SELECT
        intOUTputForPWM <= intPWM when "00---",
        intOUTputForALU <= intALU when "01---" | "10---" | "11---",
        intOUTputForPWM <= '0' when others, 
        intOUTputForALU <= (others => '0') when others;

    with alufn_i SELECT
        ov_flag_o <= intFlagOV when "01---" | "10---" | "11---",
        z_flag_o <= intFlagZ when "01---" | "10---" | "11---",
        c_flag_o <= intFlagC when "01---" | "10---" | "11---",
        n_flag_o <= intFlagN when "01---" | "10---" | "11---",
        ov_flag_o <= '0' when others,
        z_flag_o <= '0' when others,
        c_flag_o <= '0' when others,
        n_flag_o <= '0' when others;

    --connect output signals
    pwm_o <= intOUTputForPWM;
    aluRes_o <= intOUTputForALU;

    end dataflow;

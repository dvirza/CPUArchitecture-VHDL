LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_package.all;

entity top is
    generic(n:INTEGER;
         k: INTEGER);
    port(clk,ena,rst: in std_logic;
         x_i,y_i : in std_logic_vector(n-1 downto 0);
         alufn_i : in std_logic_vector(4 downto 0);
         pwm_o, ov_flag_o, z_flag_o, c_flag_o, n_flag_o : out std_logic;
         aluRes_o : out std_logic_vector(n-1 downto 0)
         );
end top;


architecture dataflow of top is
    signal intOUTputForPWM, intPWM : std_logic;
    signal intOUTputForALU, intALU : std_logic_vector(n-1 downto 0);
    signal intFlagN,intFlagC,intFlagZ,intFlagOV : std_logic;
    signal RegForX,RegForY : std_logic_vector(n-1 downto 0);
    signal RegForALU : std_logic_vector(4 downto 0);

    begin

    alu_inst : aluEnv generic map (n=>n,k=>k) port map (X_i=>RegForX, Y_i=>RegForY, ALUFN_i=>RegForALU, ALUout_o => intALU ,
                                                        Nflag_o => intFlagN, Cflag_o=> intFlagC, Zflag_o=>intFlagZ,Vflag_o=>intFlagOV);
    
    pwm_inst : pwmEnv generic map (n=>n) port map (clk=>clk, ena=>ena, rst=>rst, alufn_i=>RegForALU, x_i=>RegForX, y_i=>RegForY, PWMoutput=>intPWM);
    
    -- with alufn_i select
    --     intOUTputForPWM <= intPWM when "00---",
    --     intOUTputForPWM <= '0' when others;

    -- with alufn_i SELECT
    --     intOUTputForALU <= intALU when ("01---" or "10---" or "11---"),
    --     intOUTputForALU <= (others => '0') when others;
    intOUTputForPWM <= intPWM when alufn_i(4 downto 3) = "00" else '0';
    intOUTputForALU <= intALU when alufn_i(4 downto 3) /= "00" else (others => '0');
    ov_flag_o <= intFlagOV when alufn_i(4 downto 3) /= "00" else '0';
    z_flag_o <= intFlagZ when alufn_i(4 downto 3) /= "00" else '0';
    c_flag_o <= intFlagC when alufn_i(4 downto 3) /= "00" else '0';
    n_flag_o <= intFlagN when alufn_i(4 downto 3) /= "00" else '0';

    -- --connect output signals
    -- pwm_o <= intOUTputForPWM;
    -- aluRes_o <= intOUTputForALU;

    process(clk)
        begin
            if (rising_edge(clk)) then -- REMOVE BEFORE FPGA
                 --connect output signals
                pwm_o <= intOUTputForPWM;
                aluRes_o <= intOUTputForALU;
                RegForALU <= alufn_i;
                RegForX <= x_i;
                RegForY <= y_i;
            end if;
        end process;
    end dataflow;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_package.all;

entity topEnv is
    generic(n:INTEGER := 8;
         k: INTEGER := 3);
    port(clk,ena,rst: in std_logic;
         x_ena,y_ena,alufn_ena : in std_logic;
         sw07_i : in std_logic_vector(n-1 downto 0);
         y_tohex_o1,y_tohex_o2, x_tohex_o1,x_tohex_o2 : out std_logic_vector(6 downto 0);
         aluout_tohex_o1,aluout_tohex_o2 : out std_logic_vector(6 downto 0);
         alufn_tohex_o : out std_logic_vector(4 downto 0);
         pwm_o , ov_flag_o, z_flag_o, c_flag_o, n_flag_o: out std_logic
         );
end topEnv;



architecture dataflow of topEnv is

    signal xReg,yReg : std_logic_vector (n-1 downto 0) := (others => '0'); --register for x and y after getting enable
    signal alufnReg : std_logic_vector(4 downto 0) := (others => '0'); -- register for alu aftergetting enable
    signal switchSave : std_logic_vector(n-1 downto 0) := (others => '0'); --signal to save the switch with buffer not to instant connect
    signal clk2Top : std_logic := '0';
    signal xDecode1,xDecode2, yDecode1,yDecode2 ,ALUdecode1, ALUdecode2 : std_logic_vector(6 downto 0) := (others => '0');
    signal xDecodeIN, yDecodeIN : std_logic_vector(n-1 downto 0) := (others => '0');
    signal ALUoutBuff : std_logic_vector(n-1 downto 0) := (others => '0');

    begin
        top_inst : top generic map (n=>n , k=>k) port map (clk=>clk2Top , rst=>rst, ena=> ena, x_i=>xReg ,y_i=>yReg ,alufn_i=>alufnReg ,pwm_o=>pwm_o,ov_flag_o=>ov_flag_o,
                                                          z_flag_o=>z_flag_o ,c_flag_o=>c_flag_o ,n_flag_o=>n_flag_o ,aluRes_o=>ALUoutBuff);

        counter_env_clk : CounterEnvelope port map (clk => clk, clk_out => clk2Top); --generate the clock from pll to digital system
        
        switchSave <= sw07_i; --connect the input


        --****              DECODE              ****--
        decode_inst_forX : decode generic map (n=>n) port map (sw_i=> xReg, hex_o1 =>xDecode1 , hex_o2 =>xDecode2);
        decode_inst_forY : decode generic map (n=>n) port map (sw_i=> yReg, hex_o1 =>yDecode1 , hex_o2 =>yDecode2);
        decode_inst_forALUout : decode generic map (n=>n) port map (sw_i=> ALUoutBuff, hex_o1 =>ALUdecode1 , hex_o2 =>ALUdecode2);
        ----------------------------------------------
        
        
        process(clk,x_ena,y_ena,alufn_ena)
        begin
            if (rising_edge(clk)) then
                if (x_ena = '0') then --I NEED TO CHECK HERE IF MY TOUCH IS OK IN TImING
                    xReg <= switchSave;
                end if;
                if (y_ena = '0') then --I NEED TO CHECK HERE IF MY TOUCH IS OK IN TImING
                    yReg <= switchSave;
                end if;
                if (alufn_ena = '0') then --I NEED TO CHECK HERE IF MY TOUCH IS OK IN TImING
                    alufnReg <= switchSave(4 downto 0);
                end if;
            end if;
        end process;

        --connect the outputs
        y_tohex_o1 <= yDecode1; y_tohex_o2 <=yDecode2; x_tohex_o1 <= xDecode1 ; x_tohex_o2 <= xDecode2; alufn_tohex_o <= alufnReg;
        aluout_tohex_o1 <= ALUdecode1; aluout_tohex_o2 <= ALUdecode2;

    end dataflow;
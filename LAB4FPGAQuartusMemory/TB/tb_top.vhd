LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
USE work.aux_package.all;

entity tb_top is
    generic(n:INTEGER := 8;
            k: INTEGER := 3);
end tb_top;


architecture dataflow of tb_top is

    signal clk, ena, rst : std_logic := '0';
    signal x_ena,y_ena,alufn_ena : std_logic := '1';
    signal sw07_i : std_logic_vector(n-1 downto 0) := (others => '0');
    signal y_tohex_o1,y_tohex_o2,x_tohex_o1,x_tohex_o2 ,aluout_tohex_o1, aluout_tohex_o2 : std_logic_vector(6 downto 0) := (others => '0');
    signal alufn_tohex_o : std_logic_vector(4 downto 0) := ( others => '0');
    signal pwm_o, ov_flag_o, z_flag_o, c_flag_o, n_flag_o : std_logic := '0';

    begin

        top_inst : topEnv generic map(n=>n , k=>k)
                    port map (
                        clk => clk,
                        ena => ena,
                        rst => rst,
                        x_ena => x_ena,
                        y_ena => y_ena,
                        alufn_ena => alufn_ena,
                        sw07_i => sw07_i,
                        y_tohex_o1 => y_tohex_o1,
                        y_tohex_o2 => y_tohex_o2,
                        x_tohex_o1 => x_tohex_o1,
                        x_tohex_o2 => x_tohex_o2,
                        aluout_tohex_o1 => aluout_tohex_o1,
                        aluout_tohex_o2 => aluout_tohex_o2,
                        alufn_tohex_o => alufn_tohex_o,
                        pwm_o => pwm_o,
                        ov_flag_o => ov_flag_o,
                        z_flag_o => z_flag_o,
                        c_flag_o => c_flag_o,
                        n_flag_o => n_flag_o
                    );

        gen_clk : process	
        begin
            clk <= '0';
            wait for 50 ns;
            clk <= not clk;
            wait for 50 ns;
        end process;
        
        top_stim : process
            variable x_entry, y_entry : std_logic_vector(n-1 downto 0);
		    variable count : INTEGER;
            variable alufn_entry : std_logic_vector(n-1 downto 0);
        begin
            x_entry := "00000100";
            y_entry := "00100101";
            alufn_entry := "00011010";
            ena <= '1';
            -------- TEST FOR ALU
                sw07_i <= x_entry;
                x_ena <= '0';
                wait until rising_edge(clk);
                wait for 5 ns;
                x_ena <= '1';
                wait for 1 ns;
                sw07_i <= y_entry;
                y_ena <= '0';
                wait until rising_edge(clk);
                wait for 5 ns;
                y_ena <= '1';
                wait for 1 ns;
                sw07_i <= alufn_entry;
                alufn_ena <= '0';
                wait until rising_edge(clk);  
                wait for 5 ns;
                alufn_ena <= '1';
                wait for 1 ns;


            -----TEST FOR PWM
            x_entry := "00000100";
            y_entry := "01100101";
            alufn_entry := "00000000";
            ena <= '1';

            sw07_i <= x_entry;
                x_ena <= '0';
                wait until rising_edge(clk);
                wait for 5 ns;
                x_ena <= '1';
                wait for 1 ns;
                sw07_i <= y_entry;
                y_ena <= '0';
                wait until rising_edge(clk);
                wait for 5 ns;
                y_ena <= '1';
                wait for 1 ns;
                sw07_i <= alufn_entry;
                alufn_ena <= '0';
                wait until rising_edge(clk);  
                wait for 5 ns;
                alufn_ena <= '1';
                wait for 1 ns;

        
        end process;

    end dataflow;
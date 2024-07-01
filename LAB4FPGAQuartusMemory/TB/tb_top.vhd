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
    signal xINPUT,yINPUT : std_logic_vector(n-1 downto 0) := (others => '0');
    signal alufn_i : std_logic_vector(4 downto 0) := (others => '0');
    signal pwm_o, ov_flag_o, z_flag_o, c_flag_o, n_flag_o : std_logic := '0';
    signal aluRes_o : std_logic_vector(n-1 downto 0) := (others => '0');

    begin

        top_inst : top generic map(n=>n , k=>k)
                    port map (
                        clk => clk,
                        ena => ena,
                        rst => rst,
                        x_i => xINPUT,
                        y_i => yINPUT,
                        alufn_i => alufn_i,
                        pwm_o => pwm_o,
                        ov_flag_o => ov_flag_o,
                        z_flag_o => z_flag_o,
                        c_flag_o => c_flag_o,
                        n_flag_o => n_flag_o,
                        aluRes_o => aluRes_o
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
            variable alufn_entry : std_logic_vector(4 downto 0);
        begin
            x_entry := "00000100";
            y_entry := "00100101";
            alufn_entry := "00000";
            ena <= '1';

		    while count < 30 loop
                wait until rising_edge(clk);
                count := count + 1;
                --x_entry := x_entry + 1;
                --y_entry := y_entry + 1;
                --alufn_entry := alufn_entry + 1;
                --wait until falling_edge(clk);
                xINPUT <= x_entry;
                yINPUT <= y_entry;
                alufn_i <= alufn_entry;
            end loop;
        end process;

    end dataflow;
library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;


entity tb_clkdiv is

end tb_clkdiv;

architecture dataflow of tb_clkdiv is

    -- Testbench signals
    signal  i_clk, i_rst,o_clk_div2,o_clk_div4,o_clk_div8,o_clk_div16 :std_logic;

    -- Clock generation
    constant clk_period : time := 50 ns;
    component clock_div_pow2 is
        port(
            i_clk         : in  std_logic;
            i_rst         : in  std_logic;
            o_clk_div2    : out std_logic;
            o_clk_div4    : out std_logic;
            o_clk_div8    : out std_logic;
            o_clk_div16   : out std_logic);
    end component;
begin
   count_inst : clock_div_pow2 port map (i_clk=>i_clk, i_rst=>i_rst,o_clk_div2=>o_clk_div2,o_clk_div4=>o_clk_div4,o_clk_div8=>o_clk_div8,o_clk_div16=>o_clk_div16);
    clk_process :process
    begin
        i_clk <= '0';
        wait for clk_period/2;
        i_clk <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus process
    rst_ena_proc: process
    begin
        -- Reset and enable
        i_rst <= '1';
        wait for clk_period*2;
        i_rst <= '0';
        wait for 99000 ns;
    end process;

    -- Stimulus_proc: process(divCLK_tb)
    --     variable state : integer := 0;
    --     variable dive :integer := 6;
    --     variable divs :integer := 3;
    -- begin
    --     dividend_i <= std_logic_vector(to_unsigned(dive, dividend_i'length));
    --     divisor_i <= std_logic_vector(to_unsigned(divs, divisor_i'length));
    --     while (state < 33) loop
    --         state := state + 1;
    --     end loop;
    -- end process;

end dataflow;
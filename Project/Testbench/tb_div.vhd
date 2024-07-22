library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
use work.aux_package.all;

entity tb_div is
    generic( n: integer:=32;
				m: integer:=5);
end tb_div;

architecture dataflow of tb_div is

    -- Testbench signals
    signal divCLK_tb ,divRST_tb, divENA_tb : std_logic;
    signal dividend_i, divisor_i : std_logic_vector (n-1 downto 0);
	signal divIFG_o: std_logic;
    signal residue_o, quotient_o : std_logic_vector (n-1 downto 0);

    -- Clock generation
    constant clk_period : time := 50 ns;

begin
    div_inst : div generic map (n=>n, m=>m) port map (divCLK_i=>divCLK_tb, divRST_i=>divRST_tb, divENA_i=>divENA_tb, dividend_i=>dividend_i, divisor_i=>divisor_i,
                                                        divIFG_o=>divIFG_o, residue_o=>residue_o, quotient_o=>quotient_o);

    -- Clock process
    clk_process :process
    begin
        divCLK_tb <= '0';
        wait for clk_period/2;
        divCLK_tb <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus process
    rst_ena_proc: process
    begin
        -- Reset and enable
        divRST_tb <= '1';
        divENA_tb <= '0';
        wait for clk_period*2;
        divRST_tb <= '0';
        divENA_tb <= '1';
        wait for 99000 ns;
    end process;

    Stimulus_proc: process(divCLK_tb)
        variable state : integer := 0;
        variable dive :integer := 6;
        variable divs :integer := 3;
    begin
        dividend_i <= std_logic_vector(to_unsigned(dive, dividend_i'length));
        divisor_i <= std_logic_vector(to_unsigned(divs, divisor_i'length));
        while (state < 33) loop
            state := state + 1;
        end loop;
    end process;

end dataflow;
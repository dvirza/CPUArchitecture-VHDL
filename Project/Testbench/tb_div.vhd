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
    signal divCLK_tb ,divRST_tb, divENA_tb, memread_tb , MemWrite_tb : std_logic := '0';
    signal data_tb : std_logic_vector(n-1 downto 0) := (others => '0'); 
	signal divIFG_o: std_logic := '0';
    signal residue_o, quotient_o : std_logic_vector(n-1 downto 0) := (others => '0');
    signal addr_tb : std_logic_vector(11 downto 0) := (others => '0');

    -- Clock generation
    constant clk_period : time := 50 ns;

begin
    -- div_inst : div generic map (n=>n, m=>m) port map (i_divCLK=>divCLK_tb, i_divRST=>divRST_tb, i_divENA=>divENA_tb, i_dividend=>dividend_i, i_divisor=>divisor_i,
    --                                                     o_divIFG=>divIFG_o, o_residue=>residue_o, o_quotient=>quotient_o);
    divenv_inst : div_env port map (i_divCLK => divCLK_tb, i_divRST => divRST_tb , i_memRead => memread_tb, i_memWrite => MemWrite_tb,i_divENA => divENA_tb, 
                                    i_addr => addr_tb, o_divIFG => divIFG_o, io_data => data_tb);

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

    Stimulus_proc: process
        variable state : integer := 0;
        variable dive : integer := 10;
        variable divs : integer := 4;
    begin
        wait until rising_edge(divCLK_tb);
        wait until rising_edge(divCLK_tb);
        
        addr_tb <= X"82C";
        MemWrite_tb <= '1';
        data_tb <= std_logic_vector(to_unsigned(dive, data_tb'length));
        wait until rising_edge(divCLK_tb);
        addr_tb <= X"830";
        MemWrite_tb <= '1';
        data_tb <= std_logic_vector(to_unsigned(divs, data_tb'length));
        wait until rising_edge(divCLK_tb);
        MemWrite_tb <= '0';
        while (state < 40) loop
            state := state + 1;
            wait until rising_edge(divCLK_tb);
        end loop;
    end process;

end dataflow;
-- library ieee;
-- use ieee.std_logic_1164.all;
-- use IEEE.std_logic_unsigned.all;
-- USE ieee.numeric_std.ALL;
-- use work.aux_package.all;

-- entity tb_div is
--     generic( n: integer:=32;
-- 				m: integer:=5);
-- end tb_div;

-- architecture dataflow of tb_div is

--     -- Testbench signals
--     signal divCLK_tb ,divRST_tb, divENA_tb, memread_tb , MemWrite_tb : std_logic := '0';
--     signal data_tb : std_logic_vector(n-1 downto 0) := (others => '0'); 
-- 	signal divIFG_o: std_logic := '0';
--     signal residue_o, quotient_o : std_logic_vector(n-1 downto 0) := (others => '0');
--     signal addr_tb : std_logic_vector(11 downto 0) := (others => '0');

--     -- Clock generation
--     constant clk_period : time := 50 ns;

-- begin
--     -- div_inst : div generic map (n=>n, m=>m) port map (i_divCLK=>divCLK_tb, i_divRST=>divRST_tb, i_divENA=>divENA_tb, i_dividend=>dividend_i, i_divisor=>divisor_i,
--     --                                                     o_divIFG=>divIFG_o, o_residue=>residue_o, o_quotient=>quotient_o);
--     divenv_inst : div_env port map (i_divCLK => divCLK_tb, i_divRST => divRST_tb , i_memRead => memread_tb, i_memWrite => MemWrite_tb,i_divENA => divENA_tb, 
--                                     i_addr => addr_tb, o_divIFG => divIFG_o, io_data => data_tb);

--     -- Clock process
--     clk_process :process
--     begin
--         divCLK_tb <= '0';
--         wait for clk_period/2;
--         divCLK_tb <= '1';
--         wait for clk_period/2;
--     end process;

--     -- Stimulus process
--     rst_ena_proc: process
--     begin
--         -- Reset and enable
--         divRST_tb <= '1';
--         divENA_tb <= '0';
--         wait for clk_period*2;
--         divRST_tb <= '0';
--         divENA_tb <= '1';
--         wait for 99000 ns;
--     end process;

--     Stimulus_proc: process
--         variable state : integer := 0;
--         variable dive : integer := 10;
--         variable divs : integer := 4;
--     begin
--         wait until rising_edge(divCLK_tb);
--         wait until rising_edge(divCLK_tb);
        
--         addr_tb <= X"82C";
--         MemWrite_tb <= '1';
--         data_tb <= std_logic_vector(to_unsigned(dive, data_tb'length));
--         wait until rising_edge(divCLK_tb);
--         addr_tb <= X"830";
--         MemWrite_tb <= '1';
--         data_tb <= std_logic_vector(to_unsigned(divs, data_tb'length));
--         wait until rising_edge(divCLK_tb);
--         MemWrite_tb <= '0';
--         while (state < 40) loop
--             state := state + 1;
--             wait until rising_edge(divCLK_tb);
--         end loop;
--     end process;

-- end dataflow;

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
USE work.aux_package.all;


entity tb_Divider is
end tb_Divider;

architecture tb_Divider of tb_Divider is

    SIGNAL rst, clk, ena: STD_LOGIC := '0';
    SIGNAL MemWrite, MemRead: STD_LOGIC := '0';
    SIGNAL addr: STD_LOGIC_VECTOR(11 DOWNTO 0) := (others => '0');
    SIGNAL data: STD_LOGIC_VECTOR(31 DOWNTO 0) := (others => '0');
    SIGNAL DivIFG: STD_LOGIC := '0';

begin

    divenv_inst : div_env port map (i_divCLK => clk, i_divRST => rst , i_memRead => MemRead, i_memWrite => MemWrite,i_divENA => ena, 
                                             i_addr => addr, o_divIFG => divifg, io_data => data);
    
    gen_clk : process begin
        clk <= '0';
        wait for 50 ns;
        clk <= not clk;
        wait for 50 ns;
    end process;

    tb : process begin
        rst <= '1';
        wait until rising_edge(clk);      
        rst <= '0';
        wait until rising_edge(clk);
        ena <= '1';
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        data <= X"0000000A";
        addr <= X"82C";
        MemWrite <= '1';             --Set Dividend 10
        wait until rising_edge(clk);
        data <= X"00000004";
        addr <= X"830";              --Set Divisor 4
        wait until rising_edge(clk);
        MemWrite <= '0';
        MemRead <= '1';
        data <=  (others => 'Z');
        addr <= X"82C";               --read Dividend
        wait until rising_edge(clk);
        addr <= X"830";               --read Divisor
        wait until rising_edge(clk);
        addr <= x"834";               --read Quotient
        wait until rising_edge(clk);
        addr <= x"838";               --read Residue
        wait until rising_edge(clk);
        MemRead <= '0';
        for i in 0 to 32 loop          --wait for timer to count
            wait until rising_edge(clk);
        end loop;
        MemRead <= '1';
        addr <= X"82C";               --read Dividend
        wait until rising_edge(clk);
        addr <= X"830";               --read Divisor
        wait until rising_edge(clk);
        addr <= x"834";               --read Quotient
        wait until rising_edge(clk);
        addr <= x"838";               --read Residue              
        wait until rising_edge(clk);
        MemRead <= '0';
        MemWrite <= '1';
        data <= X"00000020";
        addr <= X"82C";             --Set Dividend 32
        wait until rising_edge(clk);
        data <= X"00000005";
        addr <= X"830";              --Set Divisor 5
        wait until rising_edge(clk);
        MemWrite <= '0';
        for i in 0 to 16 loop
            wait until rising_edge(clk);
        end loop;
            MemRead <= '1';
            addr <= X"82C";               --read Dividend
            wait until rising_edge(clk);
            addr <= X"830";               --read Divisor
            wait until rising_edge(clk);
            addr <= x"834";               --read Quotient
            wait until rising_edge(clk);
            addr <= x"838";               --read Residue              
            wait until rising_edge(clk);
            MemRead <= '0';
        MemWrite <= '1';
        data <= X"00000500";
        addr <= X"82C";             --Set Dividend 1280
        wait until rising_edge(clk);
        data <= X"00000030";
        addr <= X"830";              --Set Divisor 48
        wait until rising_edge(clk);
        MemWrite <= '0';
        for i in 0 to 33 loop
            wait until rising_edge(clk);
        end loop;
    end process;
end tb_Divider;
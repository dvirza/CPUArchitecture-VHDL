library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_clock_div is
    -- Testbench does not have any ports
end tb_clock_div;

architecture behavior of tb_clock_div is

    -- Component declaration for the unit under test (UUT)
    component clock_div
    port(
        i_clk      : in  std_logic;
        i_rst      : in  std_logic;
        o_clk_div2 : out std_logic;
        o_clk_div4 : out std_logic;
        o_clk_div8 : out std_logic
    );
    end component;

    -- Testbench signals
    signal tb_clk      : std_logic := '0';
    signal tb_rst      : std_logic := '0';
    signal tb_clk_div2 : std_logic;
    signal tb_clk_div4 : std_logic;
    signal tb_clk_div8 : std_logic;

    -- Clock period
    constant clk_period : time := 10 ns;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: clock_div
        port map (
            i_clk      => tb_clk,
            i_rst      => tb_rst,
            o_clk_div2 => tb_clk_div2,
            o_clk_div4 => tb_clk_div4,
            o_clk_div8 => tb_clk_div8
        );

    -- Clock generation process
    clk_process :process
    begin
        tb_clk <= '0';
        wait for clk_period/2;
        tb_clk <= '1';
        wait for clk_period/2;
    end process clk_process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset the UUT
        tb_rst <= '1';
        wait for 20 ns;
        tb_rst <= '0';

        -- Run the clock for a while to observe the output clocks
        wait for 500 ns;

        -- End the simulation
        wait;
    end process stim_proc;

end behavior;

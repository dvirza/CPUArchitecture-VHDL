library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_top is
end tb_top;

architecture behav of tb_top is
    -- Constants for the testbench
    constant Dwidth: integer := 16;
    constant AregWidth: integer := 4;
    constant AmemWidth: integer := 6;

    -- Signals for the DUT (Device Under Test)
    signal clk: std_logic := '0';
    signal rst: std_logic := '1';
    signal enb: std_logic := '1';

    signal TBactive : std_logic := '0';
    signal wEnaProg, wEnaMem : std_logic := '0';
    signal wAddrProg, wAddrMem  : std_logic_vector(AmemWidth-1 downto 0) := (others => '0');
    signal dataProg, dataMem : std_logic_vector(Dwidth-1 downto 0) := (others => '0');
    signal rAddrMem : std_logic_vector(AmemWidth-1 downto 0);
    signal done : std_logic;

    -- Clock period definition
    constant clk_period : time := 20 ns;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: entity work.top
        generic map (
            Dwidth => Dwidth,
            AregWidth => AregWidth,
            AmemWidth => AmemWidth
        )
        port map (
            clk => clk,
            rst => rst,
            enb => enb,
            TBactive => TBactive,
            wEnaProg => wEnaProg,
            wEnaMem => wEnaMem,
            wAddrProg => wAddrProg,
            wAddrMem => wAddrMem,
            dataProg => dataProg,
            dataMem => dataMem,
            rAddrMem => rAddrMem,
            done => done
        );

    -- Clock generation process
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process clk_process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset the system
        rst <= '1';
        wait for clk_period*2;
        rst <= '0';
        wait for clk_period*2;

        -- Test case 1: Initialize the system
        -- Add specific test cases to stimulate the DUT and observe the outputs

        -- Example: Writing to program memory
        TBactive <= '1';
        wEnaProg <= '1';
        wAddrProg <= "000001";  -- Example address
        dataProg <= x"0010";    -- Example data
        wait for clk_period;

        -- Example: Writing to data memory
        wEnaMem <= '1';
        wAddrMem <= "000010";  -- Example address
        dataMem <= x"0020";    -- Example data
        wait for clk_period;

        -- Example: Disable write enables
        wEnaProg <= '0';
        wEnaMem <= '0';
        TBactive <= '0';
        wait for clk_period;

        -- End simulation
        wait;
    end process stim_proc;

end behav;

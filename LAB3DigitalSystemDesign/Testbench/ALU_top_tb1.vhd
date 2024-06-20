library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.aux_package.all;

entity aluTop_tb is
    GENERIC (
		n: integer:=16;
		Dwidth: integer:=16;
		opwidth: integer:=4
		);
end aluTop_tb;

architecture testbench of aluTop_tb is

    -- Signals for the DUT (Device Under Test)
    signal reg_srcA, wire_srcB : std_logic_vector(Dwidth-1 downto 0) := (others => '0');
    signal opc_wire : std_logic_vector(opwidth-1 downto 0) := (others => '0');
    signal clk, regAin, regCin : std_logic := '0';
    signal reg_cOut : std_logic_vector(Dwidth-1 downto 0);
    signal wire_cFlag, wire_zFlag, wire_nFlag : std_logic;

begin
    -- Instantiate the ALU top module
    uut: aluTop
        generic map (
            n => n,
            Dwidth => Dwidth,
            opwidth => opwidth
        )
        port map (
            reg_srcA => reg_srcA,
            wire_srcB => wire_srcB,
            opc_wire => opc_wire,
            clk => clk,
            regAin => regAin,
            regCin => regCin,
            reg_cOut => reg_cOut,
            wire_cFlag => wire_cFlag,
            wire_zFlag => wire_zFlag,
            wire_nFlag => wire_nFlag
        );

    -- Clock generation
    clk_process : process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
 

        -- Test case 1: A + B
        reg_srcA <= "0000000000000010"; -- 2
        wire_srcB <= "0000000000000011"; -- 3
        opc_wire <= "0000"; -- Assuming 0000 is for addition
        regAin <= '1';
        wait for 20 ns;
        regAin <= '0';
        regCin <= '1';
        wait for 20 ns;
        regCin <= '0';
        wait for 20 ns;

        -- Test case 2: A - B
        reg_srcA <= "0000000000000100"; -- 4
        wire_srcB <= "0000000000000010"; -- 2
        opc_wire <= "0001"; -- Assuming 0001 is for subtraction
        regAin <= '1';
        wait for 20 ns;
        regAin <= '0';
        regCin <= '1';
        wait for 20 ns;
        regCin <= '0';
        wait for 20 ns;

        -- Test case 3: A AND B
        reg_srcA <= "0000000000001100"; -- 12
        wire_srcB <= "0000000000001010"; -- 10
        opc_wire <= "0010"; -- Assuming 0010 is for AND operation
        regAin <= '1';
        wait for 20 ns;
        regAin <= '0';
        regCin <= '1';
        wait for 20 ns;
        regCin <= '0';
        wait for 20 ns;

        -- Test case 4: A OR B
        reg_srcA <= "0000000000000101"; -- 5
        wire_srcB <= "0000000000000011"; -- 3
        opc_wire <= "0011"; -- Assuming 0011 is for OR operation
        regAin <= '1';
        wait for 20 ns;
        regAin <= '0';
        regCin <= '1';
        wait for 20 ns;
        regCin <= '0';
        wait for 20 ns;

        -- End the simulation
        wait;
    end process;
end testbench;

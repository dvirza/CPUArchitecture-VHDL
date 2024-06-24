library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.aux_package.all;
------------------------------
entity tb_pc is
    generic( Dwidth: integer:=16;
    Awidth: integer:=6;
    dept:   integer:=64);
end tb_pc;


architecture behav of tb_pc is
    constant clk_period : time := 100 ns;
    signal clk, rst, PCin : std_logic;
    signal PCsel : std_logic_vector(1 downto 0);
    signal IRinReg : std_logic_vector(7 downto 0) := (others => '0');
    signal PCdata : std_logic_vector(Awidth-1 downto 0);

begin

    pc_inst : pcWork
                generic map ( Dwidth , Awidth , dept)
                port map (
                    clk => clk,
                    rst => rst,
                    PCin => PCin,
            		PCsel => PCsel,
            		IRinReg => IRinReg,
            		PCdata => PCdata
                );

    clk_process : process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- rst process
    rst_proc: process
    begin
        rst <= '1';
        wait for clk_period; 
        rst <= '0';
        wait for 9900 ns;
    end process;

    stim_proc : process(clk)
        variable counter : integer := 0; 
          
    begin
        if (counter = 1) then
        PCsel <= "00";
        assert false report "PC sel == 00 " severity Note;
        end if;
        if (clk'event and clk = '1') then
            if (counter < 10) then
                PCin <= '1';
                PCsel <= "10";
                counter := counter +1;
            elsif (counter < 20) then
                IRinReg <= "11110101";
                PCsel <= "01";
                counter := counter +1;
            end if;
            
        end if;
    end process;

end behav;
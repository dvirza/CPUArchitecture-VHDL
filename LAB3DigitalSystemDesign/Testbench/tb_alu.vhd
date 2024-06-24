library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.aux_package.all;
------------------------------
entity tb_alu is
    GENERIC (
		n: integer:=16;
		Dwidth: integer:=16;
		opwidth: integer:=4
		);
end tb_alu;


architecture behav of tb_alu is
    constant clk_period : time := 100 ns;
    signal clk, regAin, regCin ,wire_cFlag, wire_zFlag, wire_nFlag: std_logic;
    signal reg_srcA,wire_srcB, reg_cOut:  std_logic_vector(Dwidth-1 downto 0) := (others => '0');
    signal opc_wire :  std_logic_vector (opwidth-1 downto 0);

    

begin

    aluCore_inst : aluTop
                    generic map (
                        n => n,
                        Dwidth => Dwidth,
                        opwidth => opwidth
                    )
                    port map (
                        clk => clk,
                        regAin => regAin,
                        regCin => regCin,
                        wire_cFlag => wire_cFlag,
                        wire_zFlag => wire_zFlag,
                        wire_nFlag => wire_nFlag,
                        reg_srcA => reg_srcA,
                        wire_srcB => wire_srcB,
                        reg_cOut => reg_cOut,
                        opc_wire => opc_wire
                    );



    clk_process : process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    stim_proc : process(clk)
        variable counter : integer := 0;
        variable startREG : std_logic_vector(Dwidth-1 downto 0) := (others => '0');
        variable opcREG : std_logic_vector(opwidth-1 downto 0) := (others => '0'); 
          
    begin
        if (clk'event and clk = '1') then
            if (counter = 0) then
                reg_srcA <= startREG;
                wire_srcB <= startREG;
                opc_wire <= opcREG;
            end if;
            if (counter < 20) then
                regAin <= '0';
                regCin <= '0';
                if ((counter mod 2) = 0) then
                    regAin <='1';
                end if;
                if ((counter mod 3) = 0) then
                    regCin <='1';
                end if;
                opc_wire <= "0010";
                reg_srcA <= startREG;
                startREG := startREG + 1;
                wire_srcB <= startREG;
                opc_wire <= opcREG;
                counter := counter +1;
            end if;
            
        end if;
    end process;

end behav;

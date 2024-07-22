library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.aux_package.all;
--------------------------------------------------------------
entity mod_ProgMem is
generic( Dwidth: integer:=16;
		 Awidth: integer:=6;
		 dept:   integer:=64);
port(	clk, rst, tbWren, pcin, tbActive:        in std_logic;
        pcsel : in std_logic_vector(1 downto 0);
        irinreg : in std_logic_vector(7 downto 0);
        tbAddrIn : in std_logic_vector(Awidth-1 downto 0);
        tbDataIn : in std_logic_vector (Dwidth-1 downto 0);
        dataOut: 	out std_logic_vector(Dwidth-1 downto 0)
);
end mod_ProgMem;
--------------------------------------------------------------
architecture behav of mod_ProgMem is

    signal Raddr : std_logic_vector(Awidth-1 downto 0);
    signal internalData : std_logic_vector(Dwidth-1 downto 0) := (others => '0');
    signal internalPCsel : std_logic_vector(1 downto 0);

begin

pcwork_inst : pcWork
                generic map ( Dwidth => Dwidth,
                              Awidth => Awidth,
                              dept => dept)
                port map (
                    clk => clk,
                    rst => rst,
                    PCin => pcin,	
		            PCsel => pcsel,--internalPCsel,
		            IRinReg => irinreg,
                    PCdata => Raddr
                    );

progmem_inst : progMem
                    generic map (
                        Dwidth => Dwidth,
                        Awidth => Awidth,
                        dept => dept
                    )
                    port map (
                        clk => clk,
                        memEn => tbWren,
                        WmemData => tbDataIn,	
                        WmemAddr => tbAddrIn,
                        RmemData => internalData,
                        RmemAddr => Raddr
                        );



    dataOut <= internalData;


end behav;

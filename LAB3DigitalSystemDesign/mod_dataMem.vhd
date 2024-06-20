library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--------------------------------------------------------------
entity mod_dataMem is
generic( Dwidth: integer:=16;
		 Awidth: integer:=6;
		 dept:   integer:=64);
port(	clk,Mem_in, Mem_wr, tbActive, tbMem_wr: in std_logic;
        tbDataIn : in std_logic_vector(Dwidth-1 downto 0);
        tbAddrR, tbAddrW: in std_logic_vector(Awidth-1 downto 0);
		dataInOut: inout std_logic_vector(Dwidth-1 downto 0)
    );
end mod_dataMem;

architecture behav of mod_dataMem is

signal wren : std_logic;
signal readAddr, writeAddr, writeAddrToSize : std_logic_vector(Awidth-1 downto 0);
signal internalData, writeAddrFromBus : std_logic_vector(Dwidth-1 downto 0) := (others => '0');

begin

dataMem_inst : dataMem 
                generic map (Dwidth => Dwidth,
                            Awidth => Awidth,
                            dept => dept)
                port map (clk => clk,
                         memEn => wren,	
                         WmemData => internalData,
                         WmemAddr => writeAddr,
                         RmemAddr => readAddr,
                         RmemData => internalData
                         );


    wren <= tbMem_wr when tbActive = '1' else Mem_wr;
    readAddr <= tbAddrR when tbActive = '1' else dataInOut(Awidth-1 downto 0);
    writeAddrToSize <= writeAddrFromBus(Adwitdh-1 downto 0); --takes the Awitdh lsb for address
    writeAddr <= tbAddrW when tbActive = '1' else writeAddrToSize; --size Adwitdh
    internalData <=  tbDataIn when tbActive = '1' else dataInOut;

    process(clk)
    begin
        if (clk'event and clk ='1') then
            if Mem_in = '1' then
                writeAddrFromBus <= dataInOut;
            end if;
        end if;
    end process;
end behav;
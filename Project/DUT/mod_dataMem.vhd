library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.aux_package.all;
--------------------------------------------------------------
entity mod_dataMem is
generic( Dwidth: integer:=16;
		 Awidth: integer:=6;
		 dept:   integer:=64);
port(	clk,Mem_in, Mem_wr, tbActive, tbMem_wr: in std_logic;
        tbDataIn : in std_logic_vector(Dwidth-1 downto 0);
        tbAddrR, tbAddrW: in std_logic_vector(Awidth-1 downto 0);
		dataIn : in std_logic_vector(Dwidth-1 downto 0);
        dataOut: out std_logic_vector(Dwidth-1 downto 0)
    );
end mod_dataMem;

architecture behav of mod_dataMem is

signal wren : std_logic;
signal readAddr, writeAddr, writeAddrToSize : std_logic_vector(Awidth-1 downto 0);
signal internalDataIn, writeAddrFromBus,internalDataOut : std_logic_vector(Dwidth-1 downto 0) := (others => '0');

begin

dataMem_inst : dataMem 
                generic map (Dwidth => Dwidth,
                            Awidth => Awidth,
                            dept => dept)
                port map (clk => clk,
                         memEn => wren,	
                         WmemData => internalDataIn,
                         WmemAddr => writeAddr,
                         RmemAddr => readAddr,
                         RmemData => internalDataOut
                         );


    wren <= tbMem_wr when tbActive = '1' else Mem_wr;
    readAddr <= tbAddrR when tbActive = '1' else dataIn(Awidth-1 downto 0);
    writeAddrToSize <= writeAddrFromBus(Awidth-1 downto 0); --takes the Awitdh lsb for address
    writeAddr <= tbAddrW when tbActive = '1' else writeAddrToSize; --size Adwitdh
    internalDataIn <=  tbDataIn when tbActive = '1' else dataIn;
    dataOut <= internalDataOut;-- when tbActive = '0' else (others => '0');

    process(clk)
    begin
        if (clk'event and clk ='1') then
            if Mem_in = '1' then
                writeAddrFromBus <= dataIn;
            end if;
        end if;
    end process;
end behav;
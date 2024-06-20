library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.aux_package.all;

entity top is
generic( Dwidth: integer:=16;
		 AregWidth: integer:=4;
		 AmemWidth: integer:=6);
port(	clk,rst,enb: in std_logic;

		TBactive : in std_logic;
		wEnaProg, wEnaMem : in std_logic;
		wAddrProg, wAddrMem  : in std_logic_vector(AmemWidth-1 downto 0);
		
		dataProg, dataMem : in std_logic_vector(Dwidth-1 downto 0);
		
		rAddrMem : out std_logic_vector(); --keep do it
		done : out std_logic
);
end top;
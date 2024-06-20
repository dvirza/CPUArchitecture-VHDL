library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
--------------------------------------------------------------
entity pcWork is
generic( Dwidth: integer:=16;
		 Awidth: integer:=6;
		 dept:   integer:=64);
port(	clk,rst,PCin: 		in std_logic;	
		PCsel : 			in std_logic_vector(1 downto 0);
		IRinReg: 			in std_logic_vector(7 downto 0),
		PCdata: 			out std_logic_vector(Awidth-1 downto 0)
);
end pcWork;

/*
PCsel:=
00 -> startAddr
01 -> +1 +IR<70>
10 -> +1
*/
architecture behav of pcWork is

signal internalPC, internalPCone : std_logic_vector(7 downto 0) := (others => '0'); --Pc register is size of 8 to get 2^8 adresses, only use 6 of the bits
signal internalPCaddr : std_logic_vector(Adwitdh-1 downto 0) := (others => '0'); --takes the 6 LSB from internalPC
signal startAddr : std_logic_vector(7 downto 0) := (others => '0'); -- 8 zero bits
signal internalIR : std_logic_vector(7 downto 0) := (others => '0');

begin
	with PCsel select
	internalPC <= 	startAddr when "00",
					internalPCone + internalIR when "01",
					internalPCone when "10",
					(others => '0') when others;	
process(clk, rst)
	begin
	if (rst='1') then
		internalPC <= startAddr;
	end if;
	if (clk'event and clk='1') then
		if (PCin='1') then
			PCdata <= internalPCaddr; -- taking the LSB 6 bits for the progMem RAM
		end if;
	end if;
end process;

internalPCone <= internalPC + 1;
internalIR <= IRinReg; -- taking the imm values
internalPCaddr <= internalPC(Awidth-1 downto 0); -- 6 LSB bits from Pc

end behav;
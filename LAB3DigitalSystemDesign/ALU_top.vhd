library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.aux_package.all;

entity aluTop is
GENERIC (
		n: integer:=8;
		Dwidth: integer:=16;
		opwidth: integer:=4
		);
port(	reg_srcA,wire_srcB: 	 			in std_logic_vector(Dwidth-1 downto 0);
		opc_wire: in std_logic_vector (opwidth-1 downto 0);
		clk, regAin, regCin: in std_logic;
		reg_cOut: 							out std_logic_vector(Dwidth-1 downto 0);
		wire_cFlag, wire_zFlag, wire_nFlag: out std_logic
	);
end aluTop;

--/*
--reg_srcA -- is the register who stores the input srcA
--wire_srcB -- is wire to connect the alu core to the top srcB
--wire_opc -- is wire to connect the alu core to the top opc (after decode)
--regAin -- is the control signal from the control unit confirm reg A capture
--regCin -- is the control signal from the control unit who confirm reg C capture
--reg_cOut -- is the register who stores the alu output (called register C)
--*/

architecture behav of aluTop is

signal internalCarryFlag, internalZeroFlag, internalNegFlag : std_logic;
signal internalSrcA :std_logic_vector(Dwidth-1 downto 0) := (others => '0');
signal internalCreg :std_logic_vector(Dwidth-1 downto 0) := (others => '0');
signal internalOPC : std_logic_vector(opwidth-1 downto 0);
signal zeros_vector : std_logic_vector(Dwidth-1 downto 0) := (others => '0');
signal saveC : std_logic := '0';
begin

ALU_inst : aluCore --Instance connect to the ALU core component
			generic map ( n=>n,
						  Dwidth=>Dwidth,
						  opwidth=>opwidth
						)
			port map	(
						srcA => internalSrcA,
						srcB => wire_srcB,
						opc => opc_wire,
						aluOut => internalCreg,
						cFlag => internalCarryFlag,
						zFlag => internalZeroFlag,
						nFlag => internalNegFlag
						);

	saveC <= internalCarryFlag when opc_wire = "0000" or opc_wire ="0001";
--/*			Flags connect			*/
	
--------------------------------------

	process(clk,regCin,regAin)
	begin
		if (clk'event and clk='1') then
			if (regCin ='1') then
				reg_cOut <= internalCreg;
				wire_cFlag <= saveC;
				wire_zFlag <= internalZeroFlag;
				wire_nFlag <= internalNegFlag;
			end if;
			if (regAin ='1') then
				internalSrcA <= reg_srcA;
			end if;
		end if;
	end process;

end behav;
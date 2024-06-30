library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.aux_package.all;

entity aluCore is
GENERIC (
		n: integer:=16;
		Dwidth: integer:=16;
		opwidth: integer:=4
		);
port(	srcA,srcB: 	 	   in std_logic_vector(Dwidth-1 downto 0);
		opc: 		 	   in std_logic_vector(opwidth-1 downto 0);
		aluOut:	     	   out std_logic_vector(Dwidth-1 downto 0);
		cFlag,nFlag,zFlag: out std_logic
	);

end aluCore;

architecture behav of aluCore is

signal internalsrcA, internalsrcB, internalsrcAForAdder, internalsrcBForAdder, intB : std_logic_vector(Dwidth-1 downto 0) := (others => '0'); --internal signals for component connect
signal internalOUTadder,internalOUTlogic : std_logic_vector(Dwidth-1 downto 0) := (others => '0'); --internal signal for computing the output
signal internalCarryOut, internalCarryIn : std_logic; --internal carrys
signal zeros_vector: std_logic_vector(Dwidth-1 downto 0) := (others => '0');

begin
Adder_inst : Adder ---Adder inner connect Add \ Substract
		GENERIC MAP (length=>n)
		PORT MAP (
				a => internalsrcAForAdder,
				b => internalsrcBForAdder,
				cin => internalCarryIn,
				s => internalOUTadder,
				cout => internalCarryOut
			  );
			
	
	with opc select
	internalOUTlogic <= srcA and srcB when "0010",
						srcA or srcB when "0011",
						srcA xor srcB when "0100",
						(others => 'Z') when others;
	with opc select
		internalCarryIn <= '1' when "0001", '0' when others;

	
	internalsrcAForAdder <= srcA when opc = "0000" or opc = "0001";
	intB <= srcB when opc = "0000" or opc = "0001" else zeros_vector;
	internalsrcBForAdder <= not(intB) when opc = "0001" else intB when opc = "0000";

	aluOut <= internalOUTadder when opc = "0000" or opc = "0001" else internalOUTlogic when opc = "0010" or opc = "0011" or opc = "0100" else (others => '0'); -- connecting wires for output
	
	--/*			FLAG statments			*/
	cFlag <= internalCarryOut;-- when opc = "0000" or opc = "0000" else unaffected;
	nFlag <= '1' when internalOUTlogic(Dwidth-1) = '1' or internalOUTadder(Dwidth-1) = '1' else '0';
	zFlag <= '1' when internalOUTadder = zeros_vector or internalOUTlogic = zeros_vector else '0';
	
end behav;
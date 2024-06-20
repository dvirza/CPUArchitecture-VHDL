library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.aux_package.all;

entity aluCore is
GENERIC (
		n: integer:=8;
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

signal internalsrcA, internalsrcB : std_logic_vector(Dwidth-1 downto 0) := (others => '0'); --internal signals for component connect
signal internalOUT : std_logic_vector(Dwidth-1 downto 0) := (others => '0'); --internal signal for computing the output
signal internalCarryOut, internalCarryIn : std_logic; --internal carrys
signal zeros_vector: std_logic_vector(Dwidth-1 downto 0) := (others => '0');
--signal internalOPC : std_logic_vector(opwidth-1 downto 0);

begin
Adder_inst : Adder ---Adder inner connect Add \ Substract
		GENERIC MAP (n=>n)
		PORT MAP (
				a => internalsrcA,
				b => internalsrcB,
				cin => internalCarryIn,
				s => internalOUT,
				cout => internalCarryOut
			  );
			
 --internalOPC <= opc;
PROCESS (opc,srcA,srcB)
begin
	CASE opc IS
		WHEN "0000" =>
			--add op
			internalsrcA <= srcA;
			internalsrcB <= srcB;
			internalCarryIn <= '0';
		WHEN "0001" =>
			--sub op
			internalsrcA <= srcA;
			internalsrcB <= not(srcB);
			internalCarryIn <= '1';
		WHEN "0010" =>
			--and op
			internalOUT <= srcA and srcB;
		WHEN "0011" =>
			--or op
			internalOUT <= srcA or srcB;
		WHEN "0100" =>
			--xor op
			internalOUT <= srcA xor srcB;
		WHEN others =>
			internalOUT <= (others => '0'); --zero the staement
	END CASE;
END PROCESS;

	aluOut <= internalOUT; -- connecting wires for output
	
	--/*			FLAG statments			*/
	cFlag <= '1' when internalCarryOut = '1' else '0';
	nFlag <= '1' when internalOUT(Dwidth-1) = '1' else '0';
	zFlag <= '1' when internalOUT = zeros_vector else '0';
	
end behav;
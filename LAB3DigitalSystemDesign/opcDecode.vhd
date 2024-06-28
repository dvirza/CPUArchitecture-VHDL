library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity opcDecode is
generic( opwidth: integer:=4 );
port(	clk,rst: 	 in std_logic;	
		opDataIn:	     in std_logic_vector(opwidth-1 downto 0); --connect the IR
		op_st, op_ld, op_mov, op_done, op_add, op_sub, op_jmp, op_jc, op_jnc, op_and, op_or, op_xor: out std_logic --NEW
);
end opcDecode;

architecture behav of opcDecode is

begin
	op_add <= '1' when opDataIn = "0000" else '0';
	op_sub <= '1' when opDataIn = "0001" else '0';
	op_and <= '1' when opDataIn = "0010" else '0';
	op_or <= '1' when opDataIn = "0011" else '0';
	op_xor <= '1' when opDataIn = "0100" else '0';
	-- unused <= '1' when opDataIn = "0000" else '0'; --NEW
	-- unused <= '1' when opDataIn = "0000" else '0'; --NEW
	op_jmp <= '1' when opDataIn = "0111" else '0';
	op_jc <= '1' when opDataIn = "1000" else '0';
	op_jnc <= '1' when opDataIn = "1001" else '0';
	-- unused <= '1' when opDataIn = "0000" else '0'; --NEW
	-- unused <= '1' when opDataIn = "0000" else '0'; --NEW
	op_mov <= '1' when opDataIn = "1100" else '0';
	op_ld <= '1' when opDataIn = "1101" else '0';
	op_st <= '1' when opDataIn = "1110" else '0';
	op_done <= '1' when opDataIn = "1111" else '0';


end behav;
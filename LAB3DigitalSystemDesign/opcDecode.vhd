library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity opcDecode is
generic( opwidth: integer:=4 );
port(	clk,rst,ena: 	 in std_logic;	
		opDataIn:	     in std_logic_vector(opwidth-1 downto 0); --connect the IR
		op_st, op_ld, op_mov, op_done, op_add, op_sub, op_jmp, op_jc, op_jnc, op_and, op_or, op_xor: out std_logic --output every bit
);
end opcDecode;

architecture behav of opcDecode is

signal internalOPdata: std_logic_vector(opwidth-1 downto 0);

begin
		op_st <= '0';
		op_ld <= '0';
		op_mov <= '0';
		op_done <= '0';
		op_add <= '0';
		op_sub <= '0';
		op_jmp <= '0';
		op_jc <= '0';
		op_jnc <= '0';
		op_and <= '0';
		op_or <= '0';
		op_xor <= '0';
	process(clk,rst)
	begin
	if (clk'event and clk='1') then
		internalOPdata <= opDataIn;	
	end if;
	end process;

	with internalOPdata select
		op_add <= '1' when "0000",
		op_sub <= '1' when "0001",
		op_and <= '1' when "0010",
		op_or <= '1' when "0011",
		op_xor <= '1' when "0100",
		--op_new1 <= '1' when "0101",
		op_jmp <= '1' when "0111",
		op_jc <= '1' when "1000",
		op_jnc <= '1' when "1001",
		-- unused
		op_mov <= '1' when "1100",
		op_ld <= '1' when "1101",
		op_st <= '1' when "1110",
		op_done <= '1' when "1111",
		(others => '0') when others;
end behav;
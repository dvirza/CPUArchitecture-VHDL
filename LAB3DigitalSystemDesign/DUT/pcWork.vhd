library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.aux_package.all;

--------------------------------------------------------------
entity pcWork is
generic( n : integer := 8;
		 Dwidth: integer:=16;
		 Awidth: integer:=6;
		 dept:   integer:=64);
port(	clk,rst,PCin: 		in std_logic;
		PCsel : 			in std_logic_vector(1 downto 0);
		IRinReg: 			in std_logic_vector(7 downto 0);
		PCdata: 			out  std_logic_vector(Awidth-1 downto 0)
);
end pcWork;

/*
PCsel:=
00 -> startAddr
01 -> +1 +IR<70>
10 -> +1
*/
architecture behav of pcWork is

signal internalPC : std_logic_vector(Awidth-1 downto 0) := (others => '0'); --Pc register is size of 8 to get 2^8 adresses, only use 6 of the bits
signal startAddr : std_logic_vector(Awidth-1 downto 0) := (others => '0'); -- 8 zero bits
signal internalIR : std_logic_vector(Awidth-1 downto 0) := (others => '0');
signal int_pc , int_pc_plus, int_pc_ir : std_logic_vector(Awidth-1 downto 0) := (others => '0');
signal one_vec : std_logic_vector(Awidth-1 downto 0);
begin
	one_vec <= (0 => '1' ,others => '0');
	Adder_inst_one : Adder 
					generic map (length=>Awidth)
					port map (
						a=> one_vec,
						b=>int_pc,
						cin => '0',
						s => int_pc_plus,
						cout => open 
					);
	Adder_inst_IR : Adder 
				generic map (length=>Awidth)
				port map (
					a=> internalIR,
					b=>int_pc_plus,
					cin => '0',
					s => int_pc_ir,
					cout => open 
				);

	with PCsel select
	internalPC <= 	startAddr when "00",
					int_pc_ir when "01",
					int_pc_plus when "10",
					(others => '0') when others;
process(clk)
	begin
	if (clk'event and clk='1') then
		if (PCin='1') then
			PCdata <= internalPC;
		end if;
	end if;
end process;

	int_pc <= PCdata;
	internalIR <= IRinReg(Awidth-1 downto 0); -- taking the imm LSB values

end behav;
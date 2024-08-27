LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;
USE work.aux_package.all;

ENTITY  Execute IS
	PORT(	Read_data_1 	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			Read_data_2 	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			Sign_extend		: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			Function_opcode1: IN 	STD_LOGIC;
			ALUctrl 		: IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );
			ALUSrc 			: IN 	STD_LOGIC;
			PC_plus_4 		: IN 	STD_LOGIC_VECTOR( 11 DOWNTO 0 );
			Zero 			: OUT	STD_LOGIC;
			ALU_Result 		: OUT	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			Add_Result 		: OUT	STD_LOGIC_VECTOR( 9 DOWNTO 0 ) );
END Execute;

ARCHITECTURE behavior OF Execute IS

SIGNAL Ainput, Binput, shift_save		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL int_lui							: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL int_mult 						: STD_LOGIC_VECTOR( 63 DOWNTO 0 );
SIGNAL ALU_output_mux					: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL Branch_Add 						: STD_LOGIC_VECTOR( 9 DOWNTO 0 );
SIGNAL shift_ctrl						: STD_LOGIC;

BEGIN

	Ainput <= Read_data_1;
						-- ALU input mux
	Binput <= Read_data_2 
		WHEN ( ALUSrc = '0' ) 
  		ELSE  Sign_extend( 31 DOWNTO 0 );

	Zero <= '1' 
		WHEN ( ALU_output_mux( 31 DOWNTO 0 ) = X"00000000"  )
		ELSE '0';    
						-- Select ALU output        
	ALU_result <= X"0000000" & B"000"  & ALU_output_mux( 31 ) 
		WHEN  ALUctrl = "101010" 
		ELSE  	ALU_output_mux( 31 DOWNTO 0 );
						-- Adder to compute Branch Address
	Branch_Add	<= PC_plus_4( 11 DOWNTO 2 ) +  Sign_extend( 9 DOWNTO 0 ) ;
	Add_result 	<= Branch_Add( 9 DOWNTO 0 );


	with ALUctrl select
		ALU_output_mux <= 	Ainput AND Binput when "100100",
							Ainput OR Binput when "100101",
							Ainput XOR Binput when "100110",
							Ainput + Binput when "100000", --add/i
							Ainput + Binput  when "100001", --addu (MOV in MARS)
							Ainput - Binput when "100010", --SUB / BNE / BEQ
							int_mult(31 downto 0) when "011000", --MUL
							shift_save when "000000", --SLL
							shift_save when "000010", --SRL
							Ainput - Binput when "101010", --SLT
							int_lui when "011110",
							(OTHERS => '0') when others;

	int_mult <= Ainput * Binput;

	shift_inst : shifter 
		generic map (n=>32,k=>5) 
		port map (	x=> Sign_extend(10 downto 6),y => Binput,dir => shift_ctrl,
					res => shift_save, cout => open);

	shift_ctrl <= '1' when Function_opcode1 = '1' else '0'; --choose if srl or sll (1 = srl)

	int_lui <= Binput(15 DOWNTO 0) & X"0000";


END behavior;


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;
USE work.aux_package.all;

ENTITY  Execute IS
	PORT(	Read_data_1 	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			Read_data_2 	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			Sign_extend,Zero_extend 	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			Function_opcode : IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );
			ALUctrl 		: IN 	STD_LOGIC_VECTOR( 3 DOWNTO 0 );
			ALUSrc 			: IN 	STD_LOGIC;
			Zero 			: OUT	STD_LOGIC;
			ALU_Result 		: OUT	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			Add_Result 		: OUT	STD_LOGIC_VECTOR( 7 DOWNTO 0 );
			PC_plus_4 		: IN 	STD_LOGIC_VECTOR( 9 DOWNTO 0 );
			clock, reset	: IN 	STD_LOGIC );
END Execute;

ARCHITECTURE behavior OF Execute IS

SIGNAL Ainput, Binput, shift_save		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL int_mult , int_lui				: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL ALU_output_mux					: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL Branch_Add 						: STD_LOGIC_VECTOR( 7 DOWNTO 0 );
SIGNAL shift_ctrl						: STD_LOGIC;

BEGIN

	Ainput <= Read_data_1;
						-- ALU input mux
	Binput <= X"00000000" when Function_opcode = "100001"  else Read_data_2 
		WHEN ( ALUSrc = '0' ) 
  		ELSE  Sign_extend( 31 DOWNTO 0 );

	Zero <= '1' 
		WHEN ( ALU_output_mux( 31 DOWNTO 0 ) = X"00000000"  )
		ELSE '0';    
						-- Select ALU output        
	ALU_result <= X"0000000" & B"000"  & ALU_output_mux( 31 ) 
		WHEN  ALU_ctl = "111" 
		ELSE  	ALU_output_mux( 31 DOWNTO 0 );
						-- Adder to compute Branch Address
	Branch_Add	<= PC_plus_4( 9 DOWNTO 2 ) +  Sign_extend( 7 DOWNTO 0 ) ;
	Add_result 	<= Branch_Add( 7 DOWNTO 0 );


	with ALUctrl select
		ALU_output_mux <= 	Ainput AND Binput when "100100",
							Ainput OR Binput when "100101",
							Ainput XOR Binput when "100110",
							Ainput + Binput when "100000", --add/i
							Ainput + Binput when "100001", --addu (MOV in MARS)
							Ainput - Binput when "100010", --SUB / BNE / BEQ
							int_mult when "011000", --MUL
							shift_save when "000000", --SLL
							shift_save when "000010", --SRL
							Ainput - Binput when "101010", --SLT
							int_lui when "011110",
							(OTHERS => '0') when others;

	int_mult <= Ainput * Binput;

	shift_inst : shifter 
		generic map (n=>32,k=>5) 
		port map (	x=> Binput(10 downto 6),y => Ainput,dir => shift_ctrl,
					res => shift_save, cout => open);

	shift_ctrl <= '1' when Function_opcode(1) = '1' else '0'; --choose if srl or sll (1 = srl)

	int_lui <= Binput(15 DOWNTO 0) & X"0000";



	
	-- with ALUop Select
	-- 	ALU_ctl <= 	'0' & rtype_ctl when "0010", --R-Type --MISING SHIFT
	-- 				"0010"	when "0000", --defult ADD
	-- 				"0110"	when "0001", --Sub while beq or bne
	-- 				"0000"	when "0011", --ANDi
	-- 				"0001"	when "0100", --ORi
	-- 				"0100"	when "0101", --XORi
	-- 				"0101"	when "0110", --MUL
	-- 				"1000"	when "0111", --LUi
	-- 				"0111"	when "1000",--SLTi
	-- 				(OTHERS => '0') when OTHERS;
	-- shift_save <= SHIFT_LEFT(Ainput, TO_INTEGER(Binput)) WHEN Function_opcode(1) = '0' ELSE
	-- SHIFT_RIGHT(Ainput, TO_INTEGER(Binput));

							-- Generate ALU control bits
	-- ALU_ctl( 0 ) <= ( Function_opcode( 0 ) OR Function_opcode( 3 ) ) AND ALUOp(1 );
	-- ALU_ctl( 1 ) <= ( NOT Function_opcode( 2 ) ) OR (NOT ALUOp( 1 ) );
	-- ALU_ctl( 2 ) <= ( Function_opcode( 1 ) AND ALUOp( 1 )) OR ALUOp( 0 );
	-- rtype_ctl( 0 ) <= ( Function_opcode( 0 ) OR Function_opcode( 3 ) ) AND ALUOp(1 );
	-- rtype_ctl( 1 ) <= ( NOT Function_opcode( 2 ) ) OR (NOT ALUOp( 1 ) );
	-- rtype_ctl( 2 ) <= ( Function_opcode( 1 ) AND ALUOp( 1 )) OR ALUOp( 0 );
						-- Generate Zero Flag
-- PROCESS ( ALU_ctl, Ainput, Binput )
-- 	BEGIN
-- 					-- Select ALU operation
--  	CASE ALU_ctl IS
-- 						-- ALU performs ALUresult = A_input AND B_input
-- 		WHEN "0000" 	=>	ALU_output_mux 	<= Ainput AND Binput; 
-- 						-- ALU performs ALUresult = A_input OR B_input
--      	WHEN "0001" 	=>	ALU_output_mux 	<= Ainput OR Binput;
-- 						-- ALU performs ALUresult = A_input + B_input
-- 	 	WHEN "0010" 	=>	ALU_output_mux 	<= Ainput + Binput;
-- 						-- ALU performs SLL
--  	 	WHEN "0011" 	=>	ALU_output_mux <= shift_save;
-- 						-- ALU performs XOR
--  	 	WHEN "0100" 	=>	ALU_output_mux 	<= Ainput XOR Binput;
-- 						-- ALU performs Multipication
--  	 	WHEN "0101" 	=>	ALU_output_mux 	<= 
-- 						-- ALU performs ALUresult = A_input - B_input
--  	 	WHEN "0110" 	=>	ALU_output_mux 	<= Ainput - Binput;
-- 						-- ALU performs SLT
--   	 	WHEN "0111" 	=>	ALU_output_mux 	<= Ainput - Binput ;
-- 						-- ALU preforms LUi
-- 		WHEN "1000"		=> 	ALU_output_mux	<= Binput(15 DOWNTO 0) & X"0000" ;
--  	 	WHEN OTHERS	=>	ALU_output_mux 	<= X"00000000" ;
--   	END CASE;
--   END PROCESS;
END behavior;


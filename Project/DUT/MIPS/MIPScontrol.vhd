LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;

ENTITY control IS
   PORT( 	
			Opcode 			: IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );
			Function_opcode : IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );
			RegDst 			: OUT 	STD_LOGIC_VECTOR (1 DOWNTO 0);
			ALUSrc 			: OUT 	STD_LOGIC;
			MemtoReg 		: OUT 	STD_LOGIC;
			RegWrite 		: OUT 	STD_LOGIC;
			MemRead 		: OUT 	STD_LOGIC;
			MemWrite 		: OUT 	STD_LOGIC;
			Branch 			: OUT 	STD_LOGIC;
			JUMP			: OUT	STD_LOGIC_VECTOR(1 DOWNTO 0);
			ALUop 			: OUT 	STD_LOGIC_VECTOR( 3 DOWNTO 0 ) );

END control;

ARCHITECTURE behavior OF control IS

	SIGNAL  R_format, Lw, Sw, Beq, int_add 	: STD_LOGIC;
	SIGNAL	int_addi	:	STD_LOGIC;
	SIGNAL	int_andi, int_ori,	int_xori	:	STD_LOGIC;
	SIGNAL	int_lui	:	STD_LOGIC;
	SIGNAL	int_bne, int_slti	:	STD_LOGIC;
	SIGNAL	int_jmp, int_jr, int_jal, int_mult	:	STD_LOGIC;


BEGIN           
				-- Code to generate control signals using opcode bits
	R_format 	<=  '1'  WHEN  Opcode = "000000"  ELSE '0';
	Lw          <=  '1'  WHEN  Opcode = "100011"  ELSE '0';
 	Sw          <=  '1'  WHEN  Opcode = "101011"  ELSE '0';
   	Beq         <=  '1'  WHEN  Opcode = "000100"  ELSE '0';

	int_addi	<=	'1'  WHEN  Opcode = "001000"  ELSE '0';
	int_andi	<=	'1'  WHEN  Opcode = "001100"  ELSE '0';
	int_ori		<=	'1'  WHEN  Opcode = "001101"  ELSE '0';
	int_xori	<=	'1'  WHEN  Opcode = "001110"  ELSE '0';
	int_lui		<=	'1'  WHEN  Opcode = "001111"  ELSE '0';

	int_mul		<=	'1'  WHEN  Opcode = "011100"  ELSE '0';

	int_bne		<=	'1'  WHEN  Opcode = "000101"  ELSE '0';

	int_slti	<=	'1'  WHEN  Opcode = "001010"  ELSE '0';

	int_jmp		<=	'1'  WHEN  Opcode = "000010"  ELSE '0';
	int_jr		<=	'1'  WHEN  Opcode = "001000"  ELSE '0';
	int_jal		<=	'1'  WHEN  Opcode = "001001"  ELSE '0';



	----------------------------------------------------
	RegDst(1)    	<=  int_jal ;
  	RegDst(0)    	<=  R_format ; --Check if need MUL

	RegWrite 	<=  R_format OR Lw OR int_lui OR int_slti OR int_jal OR int_andi OR int_ori OR int_xori
					OR int_lui OR int_slti OR int_jal OR int_addi;

 	ALUSrc  	<=  Lw OR Sw OR int_addi OR int_andi OR int_ori OR int_xori
					OR int_lui OR int_slti;

	ALUOp( 3 ) 	<=  int_slti;
	ALUOp( 2 ) 	<=  int_ori OR int_xori OR int_mul OR  int_lui;
	ALUOp( 1 ) 	<=  R_format OR int_andi OR int_mul OR int_lui;
	ALUOp( 0 ) 	<=  Beq OR int_bne OR int_andi OR int_xori OR int_lui;

	MemRead 	<=  Lw;
	MemWrite 	<=  Sw; 
	MemtoReg 	<=  Lw;
 	Branch      <=  Beq OR int_bne;

	JUMP(1)		<= 	int_jr OR int_jal;
	JUMP(0)		<= 	int_jmp OR int_jal; --01 => jmp , 10 => jr. 00=>regular , jal => 11

   END behavior;



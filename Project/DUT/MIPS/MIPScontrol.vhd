LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE work.aux_package.all;

ENTITY control IS
    port (  Opcode 			: IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 ); --6 MSB
            Function_opcode : IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 ); --6 LSB
            --ZERO_ext
            --RF_W_SEL ??
            RegDst 			: OUT 	STD_LOGIC_VECTOR (1 DOWNTO 0);
            ALUSrc 			: OUT 	STD_LOGIC;
            MemtoReg 		: OUT 	STD_LOGIC; --???
            RegWrite 		: OUT 	STD_LOGIC;
            MemRead 		: OUT 	STD_LOGIC;
            MemWrite 		: OUT 	STD_LOGIC;
            Beq, Bne 		: OUT 	STD_LOGIC;
            JUMP			: OUT	STD_LOGIC_VECTOR(1 DOWNTO 0);
            ALUctrl 		: OUT 	STD_LOGIC_VECTOR( 5 DOWNTO 0 ));
END control;


ARCHITECTURE dataflow OF control IS

    SIGNAL  R_format, Lw, Sw, Beq, int_add 	: STD_LOGIC;
	SIGNAL	int_addi	:	STD_LOGIC;
	SIGNAL	int_andi, int_ori,	int_xori	:	STD_LOGIC;
	SIGNAL	int_lui	:	STD_LOGIC;
	SIGNAL	int_bne, int_slti	:	STD_LOGIC;
	SIGNAL	int_jmp, int_jr, int_jal, int_mult	:	STD_LOGIC;

begin

    with Opcode Select
        ALUctrl <= 	Function_opcode when "000000", --R-Type --MISING SHIFT
					"100000" when "001000", -- addi to add
                    "100100" when "001100", -- andi to and
                    "100101" when "001101", -- ori to or
                    "100110" when "001110", -- xori to xor
                    "101010" when "001010", --SLTi to SLT
                    "100000" when "101011", -- SW to add
                    "100000" when "100011", -- LW to add
                    "100010" when "000100", -- BEQ to sub
                    "100010" when "000101", -- BNE to sub
                    "011000" when "011100", -- mul
                    "011110"when "001111", --LUi
					(OTHERS => '0') when OTHERS;



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
    MemRead 	<=  Lw;
    MemWrite 	<=  Sw;
    MemtoReg 	<=  Lw;
    Beq <= Beq;
    Bne <= int_bne;
	RegDst(1)    	<=  int_jal ;
    RegDst(0)    	<=  R_format or int_mul;

    RegWrite 	<=  R_format OR Lw OR int_lui OR int_slti OR int_jal OR int_andi OR int_ori OR int_xori
                  OR int_lui OR int_slti OR int_jal OR int_addi or int_mul;

    ALUSrc  	<=  Lw OR Sw OR int_addi OR int_andi OR int_ori OR int_xori
                  OR int_lui OR int_slti;
    ----------------------------------------------------

    JUMP(1)		<= 	int_jr OR int_jal;
    JUMP(0)		<= 	int_jmp OR int_jal;



END behavior;

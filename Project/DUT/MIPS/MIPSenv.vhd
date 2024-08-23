LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE work.aux_package.all;

ENTITY MIPSenv IS

    PORT( reset, clock					: IN 	STD_LOGIC; 
        -- Output important signals to pins for easy display in Simulator
        PC								: OUT  STD_LOGIC_VECTOR( 9 DOWNTO 0 );
        ALU_result_out, read_data_1_out, read_data_2_out, write_data_out,	
        Instruction_out					: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
        Branch_out, Zero_out, Memwrite_out, 
        Regwrite_out					: OUT 	STD_LOGIC );
END 	MIPSenv;

ARCHITECTURE structure OF MIPSenv IS
                    -- declare signals used to connect VHDL components
    SIGNAL PC_plus_4 		: STD_LOGIC_VECTOR( 9 DOWNTO 0 );
    SIGNAL read_data_1 		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
    SIGNAL read_data_2 		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
    SIGNAL Sign_Extend 		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
    SIGNAL Add_result 		: STD_LOGIC_VECTOR( 7 DOWNTO 0 );
    SIGNAL ALU_result 		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
    SIGNAL read_data 		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
    SIGNAL ALUSrc 			: STD_LOGIC;
    SIGNAL Branch 			: STD_LOGIC;
    SIGNAL RegDst 			: STD_LOGIC;
    SIGNAL Regwrite 		: STD_LOGIC;
    SIGNAL Zero 			: STD_LOGIC;
    SIGNAL MemWrite 		: STD_LOGIC;
    SIGNAL MemtoReg 		: STD_LOGIC;
    SIGNAL MemRead 			: STD_LOGIC;
    SIGNAL ALUop 			: STD_LOGIC_VECTOR(  3 DOWNTO 0 );
    SIGNAL Instruction		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );

BEGIN
                    -- copy important signals to output pins for easy 
                    -- display in Simulator
    Instruction_out 	<= Instruction;
    ALU_result_out 	<= ALU_result;
    read_data_1_out 	<= read_data_1;
    read_data_2_out 	<= read_data_2;
    write_data_out  	<= read_data WHEN MemtoReg = '1' ELSE ALU_result;
    Branch_out 		<= Branch;
    Zero_out 		<= Zero;
    RegWrite_out 	<= RegWrite;
    MemWrite_out 	<= MemWrite;	
                    -- connect the 5 MIPS components   
    IFE : Ifetch
    PORT MAP (	Instruction 	=> Instruction,
                PC_plus_4_out 	=> PC_plus_4,
                Add_result 		=> Add_result,
                Branch 			=> Branch,
                Zero 			=> Zero,
                PC_out 			=> PC,        		
                clock 			=> clock,  
                reset 			=> reset );

    ID : Idecode
        PORT MAP (	read_data_1 	=> read_data_1,
                read_data_2 	=> read_data_2,
                Instruction 	=> Instruction,
                read_data 		=> read_data,
                ALU_result 		=> ALU_result,
                RegWrite 		=> RegWrite,
                MemtoReg 		=> MemtoReg,
                RegDst 			=> RegDst,
                Sign_extend 	=> Sign_extend,
                clock 			=> clock,  
                reset 			=> reset );


    CTL:   control
    PORT MAP ( 	Opcode 			=> Instruction( 31 DOWNTO 26 ),
                RegDst 			=> RegDst,
                ALUSrc 			=> ALUSrc,
                MemtoReg 		=> MemtoReg,
                RegWrite 		=> RegWrite,
                MemRead 		=> MemRead,
                MemWrite 		=> MemWrite,
                Branch 			=> Branch,
                ALUop 			=> ALUop,
                clock 			=> clock,
                reset 			=> reset );

    EXE:  Execute
        PORT MAP (	Read_data_1 	=> read_data_1,
                    Read_data_2 	=> read_data_2,
                Sign_extend 	=> Sign_extend,
                Function_opcode	=> Instruction( 5 DOWNTO 0 ),
                ALUOp 			=> ALUop,
                ALUSrc 			=> ALUSrc,
                Zero 			=> Zero,
                ALU_Result		=> ALU_Result,
                Add_Result 		=> Add_Result,
                PC_plus_4		=> PC_plus_4,
                Clock			=> clock,
                Reset			=> reset );

    MEM:  dmemory
    PORT MAP (	read_data 		=> read_data,
                address 		=> ALU_Result (9 DOWNTO 2),--jump memory address by 4
                write_data 		=> read_data_2,
                MemRead 		=> MemRead, 
                Memwrite 		=> MemWrite, 
                clock 			=> clock,  
                reset 			=> reset );
                
END structure;


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE work.aux_package.all;

ENTITY MIPSenv IS
    GENERIC ( addr_zise : integer);
    PORT( i_reset, i_clock				: IN 	STD_LOGIC; 
        -- Output important signals to pins for easy display in Simulator
        i_intr                          : IN    STD_LOGIC;
        o_inta,o_gie                    : OUT   STD_LOGIC;
        o_memwrite,o_memread            : OUT   STD_LOGIC;
        o_addr							: OUT   STD_LOGIC_VECTOR( 11 DOWNTO 0 );
        io_bus                          : INOUT STD_LOGIC_VECTOR( 31 DOWNTO 0 ) );
END MIPSenv;

ARCHITECTURE structure OF MIPSenv IS
                    -- declare signals used to connect VHDL components
    SIGNAL PC_plus_4 		: STD_LOGIC_VECTOR( 11 DOWNTO 0 );
    SIGNAL read_data_1 		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
    SIGNAL read_data_2 		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
    SIGNAL Sign_Extend 		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
    SIGNAL Add_result 		: STD_LOGIC_VECTOR( 9 DOWNTO 0 );
    SIGNAL ALU_result 		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
    SIGNAL Zero_ext			: STD_LOGIC;
    SIGNAL ALUSrc 			: STD_LOGIC;
    SIGNAL Beq, Bne 		: STD_LOGIC;
    SIGNAL RegDst 			: STD_LOGIC;
    SIGNAL Regwrite 		: STD_LOGIC;
    SIGNAL Zero 			: STD_LOGIC;
    SIGNAL MemWrite 		: STD_LOGIC;
    SIGNAL MemtoReg 		: STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL JUMP             : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL MemRead 			: STD_LOGIC;
    SIGNAL Function_opcode	: STD_LOGIC_VECTOR(  5 DOWNTO 0 );
    SIGNAL ALUctrl 			: STD_LOGIC_VECTOR(  5 DOWNTO 0 );
    SIGNAL Instruction		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );

    SIGNAL dmem_read, dmem_write                : STD_LOGIC;
    SIGNAL dmem_into_bus, dmem_from_bus         : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL r_data2_into_bus, r_data2_from_bus   : STD_LOGIC_VECTOR(31 DOWNTO 0);

    SIGNAL int_gie,int_inst_from_intr_val       : STD_LOGIC;
    SIGNAL int_gie_on, int_gie_off              : STD_LOGIC;
    SIGNAL int_inst_from_intr                   : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL next_pc, int_intrrupt_pcsave         : STD_LOGIC_VECTOR(11 DOWNTO 0);


BEGIN

    IFE : Ifetch
    GENERIC MAP ( addr_zise => addr_zise)
    PORT MAP (	clock => i_clock,
                reset => i_reset,
                Add_Result => Add_Result,
                Sign_extend => Sign_Extend,
                o_Instruction => Instruction,
                Jump => jump,
                beq=> beq,
                bne => bne,
                zero => zero,
                nx_pc_out => next_pc,
                i_inst_from_intr => int_inst_from_intr,
                i_inst_from_intr_valid => int_inst_from_intr_val,
                read_data_1 => read_data_1,
                PC_plus_4_out => PC_plus_4);


    ID : Idecode
    PORT MAP (	clock => i_clock,
                reset => i_reset,
                Instruction => Instruction,
                read_data => io_bus, --load from bus
                ALU_Result => ALU_result,
                RegWrite => Regwrite,
                Zero_extend => Zero_ext,
                jump => jump,
                gie_on => int_gie_on,
                gie_off => int_gie_off,
                MemtoReg => MemtoReg,
                RegDst => RegDst,
                intr_save_pc => int_intrrupt_pcsave,
                PC_plus_4 => PC_plus_4,
                Function_opcode => Function_opcode,
                Sign_Extend => Sign_Extend,
                gie => int_gie,
                read_data_1 => read_data_1,
                read_data_2 => read_data_2 );

    CTL:   control
    PORT MAP ( 	Opcode 			=> Instruction( 31 DOWNTO 26 ),
                Function_opcode => Function_opcode,
                RegDst 			=> RegDst,
                Zero_extend     => Zero_ext,
                ALUSrc 			=> ALUSrc,
                MemtoReg 		=> MemtoReg,
                RegWrite 		=> RegWrite,
                MemRead 		=> MemRead,
                MemWrite 		=> MemWrite,
                beq 			=> beq,
                bne             => bne,
                jump            => jump,
                ALUctrl         => ALUctrl );


    EXE:  Execute
    PORT MAP (	Read_data_1 	=> read_data_1,
                Read_data_2 	=> read_data_2,
                Sign_extend 	=> Sign_Extend,
                Function_opcode1=> Instruction( 1 ),
                ALUctrl 		=> ALUctrl,
                ALUSrc 			=> ALUSrc,
                PC_plus_4		=> PC_plus_4,
                Zero 			=> Zero,
                ALU_Result		=> ALU_Result,
                Add_Result 		=> Add_Result );


    MEM:  dmemory
    PORT MAP (	read_data 		=> dmem_into_bus,
                address 		=> ALU_Result (11 DOWNTO 0),--jump memory address by 4
                write_data 		=> dmem_from_bus,
                Memwrite 		=> dmem_write, 
                clock 			=> i_clock,  
                reset 			=> i_reset );


    INTR_HANDLER : mips_intr
    PORT MAP (  i_clk => i_clock,
                i_rst => i_reset,
                i_gie => int_gie,
                i_intr => i_intr,
                i_instruction => Instruction,
                i_PC_plus_4 => next_pc,
                o_inst_from_intr_valid => int_inst_from_intr_val,
                o_pc_save => int_intrrupt_pcsave,
                o_inst_from_intr => int_inst_from_intr,
                o_inta => o_inta,
                o_gie_off => int_gie_off,
                o_gie_on => int_gie_on );


    --BidirPin connection
    dmem_BdirPin : BidirPin generic map (32) port map (Dout => dmem_into_bus, en => dmem_read, Din => dmem_from_bus, IOpin => io_bus);
    alu_BdirPin : BidirPin generic map (32) port map (Dout => r_data2_into_bus, en => memwrite, Din => r_data2_from_bus, IOpin => io_bus);
    
    --ALU connects
    r_data2_into_bus <= read_data_2;
    --dmemory connects
    dmem_read <= MemRead and (not ALU_Result(11)); 
    dmem_write <= MemWrite and (not ALU_Result(11)); 
    -- connect the outputs
    o_memwrite <= Memwrite;
    o_memread <= MemRead;
    o_addr <= ALU_Result(11 DOWNTO 0);

    END structure;


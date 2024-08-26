LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
USE work.aux_package.all;

ENTITY Ifetch IS
	PORT(	SIGNAL o_Instruction 	: OUT	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
        	SIGNAL PC_plus_4_out 	: OUT	STD_LOGIC_VECTOR( 9 DOWNTO 0 );
        	SIGNAL Add_result 		: IN 	STD_LOGIC_VECTOR( 7 DOWNTO 0 );
			SIGNAL Jump 			: IN 	STD_LOGIC_VECTOR( 1 DOWNTO 0 );
        	SIGNAL Branch 			: IN 	STD_LOGIC;
        	SIGNAL Zero 			: IN 	STD_LOGIC;
			SIGNAL nx_pc_out		: IN	STD_LOGIC_VECTOR(9 DOWNTO 0);
			SIGNAL i_inst_from_intr_valid : IN std_logic;
			SIGNAL i_inst_from_intr : IN std_logic_vector(31 downto 0);
			SIGNAL read_data_1		: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
      		SIGNAL PC_out 			: OUT	STD_LOGIC_VECTOR( 9 DOWNTO 0 );
        	SIGNAL clock, reset 	: IN 	STD_LOGIC);
END Ifetch;

ARCHITECTURE behavior OF Ifetch IS

	SIGNAL PC, PC_plus_4 	 : STD_LOGIC_VECTOR( 9 DOWNTO 0 );
	SIGNAL next_PC, Mem_Addr, Next_PC_jmp ,Next_PC_branch : STD_LOGIC_VECTOR( 7 DOWNTO 0 );
	signal Instruction_mem,Instruction : std_logic_vector(31 downto 0);
BEGIN
						--ROM for Instruction Memory
inst_memory: altsyncram
	GENERIC MAP (
				operation_mode => "ROM",
				width_a => 32,
				widthad_a => 8,
				lpm_type => "altsyncram",
				outdata_reg_a => "UNREGISTERED",
				init_file => "C:\TestPrograms\ModelSim\L1_Cache\asm_ver1\program.hex", --CHANGE HERE PLACE TO TAKE INSTRUCTIONS
				intended_device_family => "Cyclone")

	PORT MAP (clock0 => clock, address_a => Mem_Addr, q_a => Instruction_mem);
--------------------------------------------------------------------------

					-- Instructions always start on word address - not byte
		PC(1 DOWNTO 0) <= "00";
					-- copy output signals - allows read inside module
		PC_out 			<= PC;
		PC_plus_4_out 	<= PC_plus_4;
						-- send address to inst. memory address register
		Mem_Addr <= Next_PC;
						-- Adder to increment PC by 4        
      	PC_plus_4( 9 DOWNTO 2 )  <= PC( 9 DOWNTO 2 ) + 1;
       	PC_plus_4( 1 DOWNTO 0 )  <= "00";
						-- Mux to select Branch Address or PC + 4        
		Next_PC_branch  <= 	X"00" WHEN Reset = '1' ELSE
							Add_result  WHEN ( ( Branch = '1' ) AND ( Zero = '1' ) ) 
							ELSE   PC_plus_4( 9 DOWNTO 2 );
						-- Jumap handle for PC
		Next_PC_jmp		<=	Next_PC_branch WHEN Jump = "00" ELSE
							JmpAddr	WHEN JUMP = "01" ELSE X"00";

		Next_PC <= read_data_1 (9 DOWNTO 2) WHEN JUMP = "10" ELSE Next_PC_jmp; --Handle jump register

		nx_pc_out <= next_PC; --& "00"; --MAYBE PUT SHIFT LEFT

		Instruction <= i_inst_from_intr when i_inst_from_intr_valid = '1' else Instruction_mem;
		o_Instruction <= Instruction;
		--jmpaddr <= Instruction;
	PROCESS
		BEGIN
			WAIT UNTIL ( clock'EVENT ) AND ( clock = '1' );
			IF reset = '1' THEN
				   PC( 9 DOWNTO 2) <= "00000000" ; 
			ELSE 
				   PC( 9 DOWNTO 2 ) <= next_PC;
			END IF;
	END PROCESS;

END behavior;



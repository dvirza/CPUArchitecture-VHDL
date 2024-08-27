LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
USE work.aux_package.all;

ENTITY Ifetch IS
	generic ( 	
				addr_zise		: integer );
	PORT(	clock, reset 	: IN 	STD_LOGIC;
        	Add_result 		: IN 	STD_LOGIC_VECTOR( 9 DOWNTO 0 );
			Sign_extend		: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			o_Instruction 	: OUT	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			Jump 			: IN 	STD_LOGIC_VECTOR( 1 DOWNTO 0 );
        	Beq, Bne 		: IN 	STD_LOGIC;
        	Zero 			: IN 	STD_LOGIC;
			nx_pc_out		: OUT	STD_LOGIC_VECTOR(11 DOWNTO 0);
			i_inst_from_intr_valid : IN std_logic;
			i_inst_from_intr : IN std_logic_vector(31 downto 0);
			read_data_1		: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			PC_plus_4_out	: OUT	STD_LOGIC_VECTOR( 11 DOWNTO 0 ) );
END Ifetch;

ARCHITECTURE behavior OF Ifetch IS

	SIGNAL	Mem_Addr			: std_logic_vector(addr_zise-1 DOWNTO 0);
	SIGNAL PC, PC_plus_4 	 : STD_LOGIC_VECTOR( 11 DOWNTO 0 );
	SIGNAL next_PC, Next_PC_jmp ,Next_PC_branch : STD_LOGIC_VECTOR( 9 DOWNTO 0 );
	signal Instruction_mem, Instruction : std_logic_vector(31 downto 0);

	signal addr_gen	:	STD_LOGIC_VECTOR(addr_zise-1 downto 0);
BEGIN
						--ROM for Instruction Memory
inst_memory: altsyncram
	GENERIC MAP (
				operation_mode => "ROM",
				width_a => 32,
				widthad_a => addr_zise,
				lpm_type => "altsyncram",
				outdata_reg_a => "UNREGISTERED",
				init_file => "C:\Users\elado\Desktop\vhdl_lab\CPUArchitecture-VHDL\Project\test_files\program.hex",
				intended_device_family => "Cyclone")

	PORT MAP (clock0 => clock, address_a => Mem_Addr, q_a => Instruction_mem);
--------------------------------------------------------------------------

					-- Instructions always start on word address - not byte
		PC(1 DOWNTO 0) <= "00";
					-- copy output signals - allows read inside module
		PC_plus_4_out 	<= PC_plus_4;
						-- send address to inst. memory address register
		Mem_Addr <= Next_PC;-- & "00";
						-- Adder to increment PC by 4        
      	PC_plus_4( 11 DOWNTO 2 )  <= PC( 11 DOWNTO 2 ) + 1;
       	PC_plus_4( 1 DOWNTO 0 )  <= "00";


						-- Mux to select Branch Address or PC + 4        
		Next_PC_branch  <= 	X"00" & "00" WHEN Reset = '1' 
							ELSE Add_result  WHEN ( ( Beq = '1' ) AND ( Zero = '1' ) )
							ELSE Add_result  WHEN ( ( Bne = '1' ) AND ( Zero = '0' ) )  
							ELSE PC_plus_4( 11 DOWNTO 2 );
						-- Jumap handle for PC
		Next_PC_jmp		<=	Next_PC_branch WHEN Jump = "00" ELSE
							Instruction(9 downto 0)	WHEN (JUMP = "01" OR Jump = "11") ELSE X"00" & "00";

		Next_PC <= read_data_1(11 DOWNTO 2) WHEN JUMP = "10" ELSE Next_PC_jmp; --Handle jump register jump = 10

		nx_pc_out <= next_PC & "00"; --CHECKKKKKKKKKK

		Instruction <= i_inst_from_intr when i_inst_from_intr_valid = '1' else Instruction_mem; -- handle ISR instruction
		o_Instruction <= Instruction;

	PROCESS
		BEGIN
			WAIT UNTIL ( clock'EVENT ) AND ( clock = '1' );
			IF reset = '1' THEN
				   PC( 11 DOWNTO 2) <= "0000000000" ; 
			ELSE 
				   PC( 11 DOWNTO 2 ) <= next_PC;
			END IF;
	END PROCESS;

END behavior;



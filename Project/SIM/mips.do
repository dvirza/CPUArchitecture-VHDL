onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/i_reset
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/i_clock
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/i_intr
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/o_inta
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/o_memwrite
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/o_memread
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/o_addr
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/io_bus
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/PC_plus_4
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/read_data_1
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/read_data_2
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/Sign_Extend
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/Add_result
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/ALU_result
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/Zero_ext
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/ALUSrc
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/Beq
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/Bne
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/RegDst
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/Regwrite
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/Zero
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/MemWrite
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/MemtoReg
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/JUMP
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/MemRead
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/Function_opcode
add wave -noupdate -group ENV -radix binary /tb_mips/U_0/ALUctrl
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/Instruction
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/dmem_read
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/dmem_write
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/dmem_into_bus
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/dmem_from_bus
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/r_data2_into_bus
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/r_data2_from_bus
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/int_gie
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/int_inst_from_intr_val
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/int_gie_on
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/int_gie_off
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/int_inst_from_intr
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/next_pc
add wave -noupdate -group ENV -radix hexadecimal /tb_mips/U_0/int_intrrupt_pcsave
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/clock
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/reset
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/Add_result
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/Sign_extend
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/o_Instruction
add wave -noupdate -group FETCH -radix binary /tb_mips/U_0/IFE/Jump
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/Beq
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/Bne
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/Zero
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/nx_pc_out
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/i_inst_from_intr_valid
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/i_inst_from_intr
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/read_data_1
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/PC_plus_4_out
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/Mem_Addr
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/PC
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/PC_plus_4
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/next_PC
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/Next_PC_jmp
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/Next_PC_branch
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/Instruction_mem
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/Instruction
add wave -noupdate -group FETCH -radix hexadecimal /tb_mips/U_0/IFE/addr_gen
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/clock
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/reset
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/Instruction
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/read_data
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/ALU_result
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/RegWrite
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/Zero_extend
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/JUMP
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/gie_on
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/gie_off
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/MemtoReg
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/RegDst
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/intr_save_pc
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/PC_plus_4
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/Function_opcode
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/Sign_extend
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/GIE
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/read_data_1
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/read_data_2
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/register_array
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/write_register_address
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/write_data
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/read_register_1_address
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/read_register_2_address
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/write_register_address_1
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/write_register_address_0
add wave -noupdate -group DECODE -radix hexadecimal /tb_mips/U_0/ID/Instruction_immediate_value
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/Opcode
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/Function_opcode
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/RegDst
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/Zero_extend
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/ALUSrc
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/MemtoReg
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/RegWrite
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/MemRead
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/MemWrite
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/Beq
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/Bne
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/JUMP
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/ALUctrl
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/R_format
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/Lw
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/Sw
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/int_Beq
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/int_addi
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/int_andi
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/int_ori
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/int_xori
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/int_lui
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/int_bne
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/int_slti
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/int_jmp
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/int_jr
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/int_jal
add wave -noupdate -group CONTROL /tb_mips/U_0/CTL/int_mul
add wave -noupdate -group EXE -radix hexadecimal /tb_mips/U_0/EXE/Read_data_1
add wave -noupdate -group EXE -radix hexadecimal /tb_mips/U_0/EXE/Read_data_2
add wave -noupdate -group EXE -radix hexadecimal /tb_mips/U_0/EXE/Sign_extend
add wave -noupdate -group EXE -radix hexadecimal /tb_mips/U_0/EXE/Function_opcode1
add wave -noupdate -group EXE -radix hexadecimal /tb_mips/U_0/EXE/ALUctrl
add wave -noupdate -group EXE -radix hexadecimal /tb_mips/U_0/EXE/ALUSrc
add wave -noupdate -group EXE -radix hexadecimal /tb_mips/U_0/EXE/PC_plus_4
add wave -noupdate -group EXE -radix hexadecimal /tb_mips/U_0/EXE/Zero
add wave -noupdate -group EXE -radix hexadecimal /tb_mips/U_0/EXE/ALU_Result
add wave -noupdate -group EXE -radix hexadecimal /tb_mips/U_0/EXE/Add_Result
add wave -noupdate -group EXE -radix hexadecimal /tb_mips/U_0/EXE/Ainput
add wave -noupdate -group EXE -radix hexadecimal /tb_mips/U_0/EXE/Binput
add wave -noupdate -group EXE -radix hexadecimal /tb_mips/U_0/EXE/shift_save
add wave -noupdate -group EXE -radix hexadecimal /tb_mips/U_0/EXE/int_lui
add wave -noupdate -group EXE -radix hexadecimal /tb_mips/U_0/EXE/int_mult
add wave -noupdate -group EXE -radix hexadecimal /tb_mips/U_0/EXE/ALU_output_mux
add wave -noupdate -group EXE -radix hexadecimal /tb_mips/U_0/EXE/Branch_Add
add wave -noupdate -group EXE -radix hexadecimal /tb_mips/U_0/EXE/shift_ctrl
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {700920 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 290
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {1223061 ps} {1409313 ps}
bookmark add wave bookmark0 {{0 ps} {4200 ns}} 0

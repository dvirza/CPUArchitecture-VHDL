onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_topdut/clk
add wave -noupdate /tb_topdut/WrenProg
add wave -noupdate /tb_topdut/WrenData
add wave -noupdate -radix hexadecimal /tb_topdut/WAddrProg_1
add wave -noupdate -radix hexadecimal /tb_topdut/WAddrData
add wave -noupdate -radix hexadecimal /tb_topdut/RAddrData
add wave -noupdate -radix hexadecimal /tb_topdut/MemDataIn
add wave -noupdate -radix hexadecimal /tb_topdut/MemProgIn
add wave -noupdate -radix hexadecimal /tb_topdut/MemDataOut
add wave -noupdate /tb_topdut/top_unit/Control_inst/op_st
add wave -noupdate /tb_topdut/top_unit/Control_inst/op_ld
add wave -noupdate /tb_topdut/top_unit/Control_inst/op_mov
add wave -noupdate /tb_topdut/top_unit/Control_inst/op_done
add wave -noupdate /tb_topdut/top_unit/Control_inst/op_add
add wave -noupdate /tb_topdut/top_unit/Control_inst/op_sub
add wave -noupdate /tb_topdut/top_unit/Control_inst/op_jmp
add wave -noupdate /tb_topdut/top_unit/Control_inst/op_jc
add wave -noupdate /tb_topdut/top_unit/Control_inst/op_jnc
add wave -noupdate /tb_topdut/top_unit/Control_inst/op_and
add wave -noupdate /tb_topdut/top_unit/Control_inst/op_or
add wave -noupdate /tb_topdut/top_unit/Control_inst/op_xor
add wave -noupdate /tb_topdut/top_unit/Control_inst/cFlag
add wave -noupdate /tb_topdut/top_unit/Control_inst/nFlag
add wave -noupdate /tb_topdut/top_unit/Control_inst/zFlag
add wave -noupdate /tb_topdut/top_unit/Control_inst/Mem_wr
add wave -noupdate /tb_topdut/top_unit/Control_inst/Mem_out
add wave -noupdate /tb_topdut/top_unit/Control_inst/Mem_in
add wave -noupdate /tb_topdut/top_unit/Control_inst/Cin
add wave -noupdate /tb_topdut/top_unit/Control_inst/Cout
add wave -noupdate /tb_topdut/top_unit/Control_inst/Ain
add wave -noupdate /tb_topdut/top_unit/Control_inst/RFin
add wave -noupdate /tb_topdut/top_unit/Control_inst/RFout
add wave -noupdate /tb_topdut/top_unit/Control_inst/RFaddr
add wave -noupdate /tb_topdut/top_unit/Control_inst/IRin
add wave -noupdate /tb_topdut/top_unit/Control_inst/PCin
add wave -noupdate /tb_topdut/top_unit/Control_inst/PCsel
add wave -noupdate /tb_topdut/top_unit/Control_inst/Imm1_in
add wave -noupdate /tb_topdut/top_unit/Control_inst/Imm2_in
add wave -noupdate /tb_topdut/top_unit/Control_inst/OPC
add wave -noupdate /tb_topdut/top_unit/Control_inst/pr_state
add wave -noupdate /tb_topdut/top_unit/Control_inst/nx_state
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/IMM1_sign_inst/Dout
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/IMM2_sign_inst/Dout
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/reg_srcA
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/wire_srcB
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/opc_wire
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/clk
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/regAin
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/regCin
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/reg_cOut
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/wire_cFlag
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/wire_zFlag
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/wire_nFlag
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/internalCarryFlag
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/internalZeroFlag
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/internalNegFlag
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/internalSrcA
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/internalCreg
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/internalOPC
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/zeros_vector
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2370997 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 484
configure wave -valuecolwidth 158
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
WaveRestoreZoom {0 ps} {622052 ps}
bookmark add wave bookmark0 {{0 ps} {4200 ns}} 0

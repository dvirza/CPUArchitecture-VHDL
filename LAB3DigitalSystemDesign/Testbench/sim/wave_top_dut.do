onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_topdut/top_unit/clk
add wave -noupdate /tb_topdut/top_unit/rst
add wave -noupdate /tb_topdut/top_unit/ena
add wave -noupdate /tb_topdut/top_unit/TBactive
add wave -noupdate /tb_topdut/top_unit/wEnaProg
add wave -noupdate /tb_topdut/top_unit/wEnaMem
add wave -noupdate /tb_topdut/top_unit/wAddrProg
add wave -noupdate /tb_topdut/top_unit/wAddrMem
add wave -noupdate /tb_topdut/top_unit/rAddrMem
add wave -noupdate /tb_topdut/top_unit/dataProg
add wave -noupdate /tb_topdut/top_unit/dataMemIn
add wave -noupdate /tb_topdut/top_unit/dataMemOut
add wave -noupdate /tb_topdut/top_unit/done
add wave -noupdate /tb_topdut/top_unit/op_st
add wave -noupdate /tb_topdut/top_unit/op_ld
add wave -noupdate /tb_topdut/top_unit/op_mov
add wave -noupdate /tb_topdut/top_unit/op_done
add wave -noupdate /tb_topdut/top_unit/op_add
add wave -noupdate /tb_topdut/top_unit/op_sub
add wave -noupdate /tb_topdut/top_unit/op_jmp
add wave -noupdate /tb_topdut/top_unit/op_jc
add wave -noupdate /tb_topdut/top_unit/op_jnc
add wave -noupdate /tb_topdut/top_unit/op_and
add wave -noupdate /tb_topdut/top_unit/op_or
add wave -noupdate /tb_topdut/top_unit/op_xor
add wave -noupdate /tb_topdut/top_unit/cFlag
add wave -noupdate /tb_topdut/top_unit/nFlag
add wave -noupdate /tb_topdut/top_unit/zFlag
add wave -noupdate /tb_topdut/top_unit/Mem_wr
add wave -noupdate /tb_topdut/top_unit/Mem_in
add wave -noupdate /tb_topdut/top_unit/Mem_out
add wave -noupdate /tb_topdut/top_unit/Cin
add wave -noupdate /tb_topdut/top_unit/Cout
add wave -noupdate /tb_topdut/top_unit/Ain
add wave -noupdate /tb_topdut/top_unit/RFin
add wave -noupdate /tb_topdut/top_unit/RFout
add wave -noupdate /tb_topdut/top_unit/IRin
add wave -noupdate /tb_topdut/top_unit/PCin
add wave -noupdate /tb_topdut/top_unit/Imm1_in
add wave -noupdate /tb_topdut/top_unit/Imm2_in
add wave -noupdate /tb_topdut/top_unit/RFaddr
add wave -noupdate /tb_topdut/top_unit/PCsel
add wave -noupdate /tb_topdut/top_unit/OPC
add wave -noupdate /tb_topdut/top_unit/Control_inst/pr_state
add wave -noupdate /tb_topdut/top_unit/Control_inst/nx_state
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/porgToRF_inst/internalDataIR
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/IMM1_sign_inst/Dout
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/IMM2_sign_inst/Dout
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/reg_srcA
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/wire_srcB
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/opc_wire
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/clk
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/regAin
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/regCin
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/ALU_inst/reg_cOut
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5177780 ps} 0}
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
WaveRestoreZoom {4820627 ps} {5442679 ps}
bookmark add wave bookmark0 {{0 ps} {4200 ns}} 0

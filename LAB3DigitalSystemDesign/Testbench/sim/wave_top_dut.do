onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_topdut/clk
add wave -noupdate /tb_topdut/rst
add wave -noupdate /tb_topdut/enb
add wave -noupdate /tb_topdut/done
add wave -noupdate /tb_topdut/TBactive
add wave -noupdate /tb_topdut/WrenProg
add wave -noupdate /tb_topdut/WrenData
add wave -noupdate /tb_topdut/WAddrProg_1
add wave -noupdate /tb_topdut/WAddrData
add wave -noupdate /tb_topdut/RAddrData
add wave -noupdate -radix hexadecimal /tb_topdut/MemDataIn
add wave -noupdate -radix hexadecimal /tb_topdut/MemProgIn
add wave -noupdate -radix hexadecimal /tb_topdut/MemDataOut
add wave -noupdate /tb_topdut/writeProgMem_phase_start
add wave -noupdate /tb_topdut/writeDataMem_phase_start
add wave -noupdate /tb_topdut/readDataMem_phase_start
add wave -noupdate /tb_topdut/writeProgMem_phase_finish
add wave -noupdate /tb_topdut/writeDataMem_phase_finish
add wave -noupdate /tb_topdut/readDataMem_phase_finish
add wave -noupdate /tb_topdut/top_unit/Control_inst/clk
add wave -noupdate /tb_topdut/top_unit/Control_inst/rst
add wave -noupdate /tb_topdut/top_unit/Control_inst/ena
add wave -noupdate /tb_topdut/top_unit/Control_inst/done
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
add wave -noupdate -radix hexadecimal /tb_topdut/top_unit/Datapath_inst/porgToRF_inst/internalDataIR
add wave -noupdate /tb_topdut/top_unit/Datapath_inst/porgToRF_inst/progMEM_inst/pcwork_inst/internalPC
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4182956 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 362
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
WaveRestoreZoom {3681927 ps} {4548412 ps}
bookmark add wave bookmark0 {{0 ps} {4200 ns}} 0

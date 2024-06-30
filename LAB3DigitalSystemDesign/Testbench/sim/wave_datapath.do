onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_datapath/clk
add wave -noupdate /tb_datapath/rst
add wave -noupdate /tb_datapath/Mem_wr
add wave -noupdate /tb_datapath/Mem_out
add wave -noupdate /tb_datapath/Mem_in
add wave -noupdate /tb_datapath/Cout
add wave -noupdate /tb_datapath/Cin
add wave -noupdate /tb_datapath/Ain
add wave -noupdate /tb_datapath/RFin
add wave -noupdate /tb_datapath/RFout
add wave -noupdate /tb_datapath/IRin
add wave -noupdate /tb_datapath/PCin
add wave -noupdate /tb_datapath/Imm1_in
add wave -noupdate /tb_datapath/Imm2_in
add wave -noupdate /tb_datapath/OPC
add wave -noupdate /tb_datapath/RFaddr
add wave -noupdate /tb_datapath/PCsel
add wave -noupdate /tb_datapath/tbWren
add wave -noupdate /tb_datapath/tbActive
add wave -noupdate /tb_datapath/tbDataIn
add wave -noupdate /tb_datapath/tbAddrInW
add wave -noupdate /tb_datapath/tbAddrInR
add wave -noupdate /tb_datapath/tbWrenProg
add wave -noupdate /tb_datapath/tbAddrInWProg
add wave -noupdate /tb_datapath/tbDataInProg
add wave -noupdate /tb_datapath/op_st
add wave -noupdate /tb_datapath/op_ld
add wave -noupdate /tb_datapath/op_mov
add wave -noupdate /tb_datapath/op_done
add wave -noupdate /tb_datapath/op_add
add wave -noupdate /tb_datapath/op_sub
add wave -noupdate /tb_datapath/op_jmp
add wave -noupdate /tb_datapath/op_jc
add wave -noupdate /tb_datapath/op_jnc
add wave -noupdate /tb_datapath/op_and
add wave -noupdate /tb_datapath/op_or
add wave -noupdate /tb_datapath/op_xor
add wave -noupdate /tb_datapath/cFlag
add wave -noupdate /tb_datapath/nFlag
add wave -noupdate /tb_datapath/zFlag
add wave -noupdate /tb_datapath/MEMdataOut
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
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
WaveRestoreZoom {9999050 ps} {10000050 ps}
bookmark add wave bookmark0 {{0 ps} {4200 ns}} 0

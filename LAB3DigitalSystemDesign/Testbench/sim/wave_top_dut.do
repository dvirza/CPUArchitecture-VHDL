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
add wave -noupdate -radix hexadecimal /tb_topdut/WAddrData
add wave -noupdate -radix hexadecimal /tb_topdut/RAddrData
add wave -noupdate -radix hexadecimal /tb_topdut/MemDataIn
add wave -noupdate -radix hexadecimal /tb_topdut/MemProgIn
add wave -noupdate -radix hexadecimal /tb_topdut/MemDataOut
add wave -noupdate /tb_topdut/writeProgMem_phase_start
add wave -noupdate /tb_topdut/writeDataMem_phase_start
add wave -noupdate /tb_topdut/readDataMem_phase_start
add wave -noupdate /tb_topdut/writeProgMem_phase_finish
add wave -noupdate /tb_topdut/writeDataMem_phase_finish
add wave -noupdate /tb_topdut/readDataMem_phase_finish
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1936383 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 248
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
WaveRestoreZoom {196677 ps} {2094912 ps}
bookmark add wave bookmark0 {{0 ps} {4200 ns}} 0

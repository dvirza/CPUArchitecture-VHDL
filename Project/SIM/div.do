onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_div/div_inst/i_divCLK
add wave -noupdate /tb_div/div_inst/i_divRST
add wave -noupdate /tb_div/div_inst/i_divENA
add wave -noupdate -radix decimal /tb_div/div_inst/i_dividend
add wave -noupdate -radix decimal /tb_div/div_inst/i_divisor
add wave -noupdate /tb_div/div_inst/o_divIFG
add wave -noupdate -radix decimal /tb_div/div_inst/divisorREG
add wave -noupdate -radix decimal /tb_div/div_inst/dividendREG
add wave -noupdate -radix decimal /tb_div/div_inst/quotientREG
add wave -noupdate -radix decimal /tb_div/div_inst/counter
add wave -noupdate -radix decimal /tb_div/div_inst/divisorSUB
add wave -noupdate -radix decimal /tb_div/div_inst/dividendSUB
add wave -noupdate /tb_div/div_inst/resultSUB
add wave -noupdate -radix decimal /tb_div/div_inst/o_residue
add wave -noupdate -radix decimal /tb_div/div_inst/o_quotient
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {569103 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 208
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
WaveRestoreZoom {0 ps} {1000808 ps}
bookmark add wave bookmark0 {{0 ps} {4200 ns}} 0

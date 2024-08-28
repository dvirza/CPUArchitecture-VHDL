onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Yellow /tb_divider/divenv_inst/div_inst/i_divCLK
add wave -noupdate /tb_divider/divenv_inst/div_inst/i_divRST
add wave -noupdate /tb_divider/divenv_inst/div_inst/i_divENA
add wave -noupdate /tb_divider/divenv_inst/div_inst/i_valid_divisor
add wave -noupdate /tb_divider/divenv_inst/div_inst/i_valid_dividend
add wave -noupdate -radix decimal /tb_divider/divenv_inst/div_inst/i_dividend
add wave -noupdate -radix decimal /tb_divider/divenv_inst/div_inst/i_divisor
add wave -noupdate /tb_divider/divenv_inst/div_inst/o_divIFG
add wave -noupdate -radix decimal /tb_divider/divenv_inst/div_inst/o_residue
add wave -noupdate -radix hexadecimal /tb_divider/divenv_inst/int_residue
add wave -noupdate -radix decimal /tb_divider/divenv_inst/div_inst/o_quotient
add wave -noupdate -color Green -radix decimal /tb_divider/divenv_inst/div_inst/int_quotient
add wave -noupdate -radix hexadecimal /tb_divider/divenv_inst/div_inst/dividend_2n
add wave -noupdate -radix decimal /tb_divider/divenv_inst/div_inst/counter
add wave -noupdate -radix decimal /tb_divider/divenv_inst/div_inst/int_divisor
add wave -noupdate -radix decimal /tb_divider/divenv_inst/div_inst/int_subtractor
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3852176 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 279
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
WaveRestoreZoom {9639889 ps} {10965517 ps}
bookmark add wave bookmark0 {{0 ps} {4200 ns}} 0

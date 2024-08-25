onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_interuppt/INTR_inst/i_clk
add wave -noupdate /tb_interuppt/INTR_inst/i_rst
add wave -noupdate /tb_interuppt/INTR_inst/i_memread
add wave -noupdate /tb_interuppt/INTR_inst/i_memwrite
add wave -noupdate /tb_interuppt/INTR_inst/i_gie
add wave -noupdate /tb_interuppt/INTR_inst/i_intr_ack
add wave -noupdate /tb_interuppt/INTR_inst/i_TXBUF
add wave -noupdate /tb_interuppt/INTR_inst/i_RXBUF
add wave -noupdate -radix hexadecimal /tb_interuppt/INTR_inst/i_addr
add wave -noupdate /tb_interuppt/INTR_inst/i_isrc
add wave -noupdate /tb_interuppt/INTR_inst/i_irq
add wave -noupdate -color Yellow /tb_interuppt/INTR_inst/o_intr
add wave -noupdate /tb_interuppt/INTR_inst/io_data
add wave -noupdate /tb_interuppt/INTR_inst/int_valid_ie
add wave -noupdate /tb_interuppt/INTR_inst/int_clear
add wave -noupdate /tb_interuppt/INTR_inst/int_set_ifg
add wave -noupdate /tb_interuppt/INTR_inst/int_enable_bus
add wave -noupdate /tb_interuppt/INTR_inst/int_ifg
add wave -noupdate /tb_interuppt/INTR_inst/int_ie_reg
add wave -noupdate /tb_interuppt/INTR_inst/int_type
add wave -noupdate /tb_interuppt/INTR_inst/int_data_into_core
add wave -noupdate /tb_interuppt/INTR_inst/int_data_outto_ie
add wave -noupdate /tb_interuppt/INTR_inst/int_soft_ifg_write
add wave -noupdate /tb_interuppt/INTR_inst/int_INTR_ack
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {720073 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 256
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
WaveRestoreZoom {0 ps} {2880292 ps}
bookmark add wave bookmark0 {{0 ps} {4200 ns}} 0

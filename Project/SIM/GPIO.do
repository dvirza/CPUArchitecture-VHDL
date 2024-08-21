onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_gpiowrap/Data
add wave -noupdate /tb_gpiowrap/Address
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/i_memRead
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/i_memWrite
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/i_addr
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/i_swport
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/o_hex0
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/o_hex1
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/o_hex2
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/o_hex3
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/o_hex4
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/o_hex5
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/o_hex6
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/o_leds
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/io_data
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/int_not_A0
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/int_addr
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/int_cs
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/int_sw
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/int_8hex0
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/int_8hex1
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/int_8hex2
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/int_8hex3
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/int_8hex4
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/int_8hex5
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/int_8hex6
add wave -noupdate /tb_gpiowrap/GPIOwrap_inst/int_LEDS
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
WaveRestoreZoom {0 ps} {12600 ns}
bookmark add wave bookmark0 {{0 ps} {4200 ns}} 0

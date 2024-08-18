onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -color Yellow /tb_timer/Timer_inst/i_MCLK
add wave -noupdate /tb_timer/Timer_inst/i_memRead
add wave -noupdate /tb_timer/Timer_inst/i_memWrite
add wave -noupdate /tb_timer/Timer_inst/i_rst
add wave -noupdate -radix hexadecimal /tb_timer/Timer_inst/i_addr
add wave -noupdate -radix hexadecimal /tb_timer/Timer_inst/io_data
add wave -noupdate -radix hexadecimal /tb_timer/Timer_inst/BTCCR0
add wave -noupdate -radix hexadecimal /tb_timer/Timer_inst/BTCCR1
add wave -noupdate -radix hexadecimal /tb_timer/Timer_inst/BTCNT
add wave -noupdate -radix hexadecimal /tb_timer/Timer_inst/BTCTL
add wave -noupdate /tb_timer/Timer_inst/BTimer_inst/BTOUTMD_internal
add wave -noupdate -color {Light Steel Blue} /tb_timer/Timer_inst/int_PWM
add wave -noupdate -color {Light Steel Blue} /tb_timer/Timer_inst/int_BTIFG
add wave -noupdate /tb_timer/Timer_inst/o_pwm
add wave -noupdate /tb_timer/Timer_inst/o_BTIFG
add wave -noupdate -radix hexadecimal /tb_timer/Timer_inst/int_data_w
add wave -noupdate -radix hexadecimal /tb_timer/Timer_inst/int_data_r
add wave -noupdate -radix decimal /tb_timer/Timer_inst/BTimer_inst/BTCNT_count_internal
add wave -noupdate /tb_timer/Timer_inst/BTimer_inst/BTSSEL_internal
add wave -noupdate /tb_timer/Timer_inst/BTimer_inst/CLKtoTIMER
add wave -noupdate /tb_timer/Timer_inst/BTimer_inst/MCLK_2
add wave -noupdate /tb_timer/Timer_inst/BTimer_inst/MCLK_4
add wave -noupdate /tb_timer/Timer_inst/BTimer_inst/MCLK_8
add wave -noupdate /tb_timer/Timer_inst/BTimer_inst/i_valid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3250000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 291
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
WaveRestoreZoom {2390289 ps} {4932573 ps}
bookmark add wave bookmark0 {{0 ps} {4200 ns}} 0

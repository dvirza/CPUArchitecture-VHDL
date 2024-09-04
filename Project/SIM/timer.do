onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group OLD -color Yellow /tb_timer/Timer_inst/i_MCLK
add wave -noupdate -group OLD /tb_timer/Timer_inst/i_memRead
add wave -noupdate -group OLD /tb_timer/Timer_inst/i_memWrite
add wave -noupdate -group OLD /tb_timer/Timer_inst/i_rst
add wave -noupdate -group OLD -radix hexadecimal /tb_timer/Timer_inst/i_addr
add wave -noupdate -group OLD -radix hexadecimal /tb_timer/Timer_inst/io_data
add wave -noupdate -group OLD -radix hexadecimal /tb_timer/Timer_inst/BTCCR0
add wave -noupdate -group OLD -radix hexadecimal /tb_timer/Timer_inst/BTCCR1
add wave -noupdate -group OLD -radix hexadecimal /tb_timer/Timer_inst/BTCNT
add wave -noupdate -group OLD -radix hexadecimal /tb_timer/Timer_inst/BTCTL
add wave -noupdate -group OLD /tb_timer/Timer_inst/BTimer_inst/BTOUTMD_internal
add wave -noupdate -group OLD -color {Light Steel Blue} /tb_timer/Timer_inst/int_PWM
add wave -noupdate -group OLD -color {Light Steel Blue} /tb_timer/Timer_inst/int_BTIFG
add wave -noupdate -group OLD /tb_timer/Timer_inst/o_pwm
add wave -noupdate -group OLD /tb_timer/Timer_inst/o_BTIFG
add wave -noupdate -group OLD -radix hexadecimal /tb_timer/Timer_inst/int_data_w
add wave -noupdate -group OLD -radix hexadecimal /tb_timer/Timer_inst/int_data_r
add wave -noupdate -group OLD -radix decimal /tb_timer/Timer_inst/BTimer_inst/BTCNT_count_internal
add wave -noupdate -group OLD /tb_timer/Timer_inst/BTimer_inst/BTSSEL_internal
add wave -noupdate -group OLD /tb_timer/Timer_inst/BTimer_inst/CLKtoTIMER
add wave -noupdate -group OLD /tb_timer/Timer_inst/BTimer_inst/MCLK_2
add wave -noupdate -group OLD /tb_timer/Timer_inst/BTimer_inst/MCLK_4
add wave -noupdate -group OLD /tb_timer/Timer_inst/BTimer_inst/MCLK_8
add wave -noupdate -group OLD /tb_timer/Timer_inst/BTimer_inst/i_valid
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/i_MCLK
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/i_rst
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/i_valid
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/i_BTCTL
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/i_BTCCR0
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/i_BTCCR1
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/i_BTCNT
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/o_BTCNT
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/o_BTPWM
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/o_BTIFG
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/BTControl_internal
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/interruptFlag_internal
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/BTOUTMD_internal
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/BTOUTEN_internal
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/BTHOLD_internal
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/BTSSEL_internal
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/BTIP_internal
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/int_MCLK_2
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/int_MCLK_4
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/int_MCLK_8
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/BTCNT_CLK
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/MCLK_2
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/MCLK_4
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/MCLK_8
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/BTCNT_internal
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/CLKtoTIMER
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/BTCNT_count_internal
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/pwmOUT_internal
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/Q0
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/Q3
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/Q7
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/Q11
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/Q15
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/Q19
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/Q23
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/Q25
add wave -noupdate -expand -group NEW -color {Pale Green} -radix hexadecimal /tb_timer/Timer_inst/BTimer_inst/clk_divider
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6650000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 368
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
WaveRestoreZoom {4362173 ps} {7486325 ps}
bookmark add wave bookmark0 {{0 ps} {4200 ns}} 0

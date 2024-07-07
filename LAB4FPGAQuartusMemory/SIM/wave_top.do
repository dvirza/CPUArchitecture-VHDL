onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_top/clk
add wave -noupdate /tb_top/ena
add wave -noupdate /tb_top/rst
add wave -noupdate /tb_top/x_ena
add wave -noupdate /tb_top/y_ena
add wave -noupdate /tb_top/alufn_ena
add wave -noupdate -radix hexadecimal /tb_top/sw07_i
add wave -noupdate -radix hexadecimal /tb_top/y_tohex_o1
add wave -noupdate -radix hexadecimal /tb_top/y_tohex_o2
add wave -noupdate -radix hexadecimal /tb_top/x_tohex_o1
add wave -noupdate -radix hexadecimal /tb_top/x_tohex_o2
add wave -noupdate -radix hexadecimal /tb_top/aluout_tohex_o1
add wave -noupdate -radix hexadecimal /tb_top/aluout_tohex_o2
add wave -noupdate -radix hexadecimal /tb_top/alufn_tohex_o
add wave -noupdate /tb_top/pwm_o
add wave -noupdate /tb_top/ov_flag_o
add wave -noupdate /tb_top/z_flag_o
add wave -noupdate /tb_top/c_flag_o
add wave -noupdate /tb_top/n_flag_o
add wave -noupdate /tb_top/top_inst/switchSave
add wave -noupdate /tb_top/top_inst/counter_env_clk/Clk
add wave -noupdate /tb_top/top_inst/counter_env_clk/clk_out
add wave -noupdate /tb_top/top_inst/counter_env_clk/PLLOut
add wave -noupdate /tb_top/top_inst/counter_env_clk/q_int_check
add wave -noupdate /tb_top/top_inst/counter_env_clk/clk_out_int
add wave -noupdate /tb_top/top_inst/counter_env_clk/counter
add wave -noupdate /tb_top/top_inst/top_inst/pwm_inst/clk
add wave -noupdate /tb_top/top_inst/top_inst/pwm_inst/ena
add wave -noupdate /tb_top/top_inst/top_inst/pwm_inst/rst
add wave -noupdate /tb_top/top_inst/top_inst/pwm_inst/alufn_i
add wave -noupdate -radix hexadecimal /tb_top/top_inst/top_inst/pwm_inst/x_i
add wave -noupdate -radix hexadecimal /tb_top/top_inst/top_inst/pwm_inst/y_i
add wave -noupdate /tb_top/top_inst/top_inst/pwm_inst/PWMoutput
add wave -noupdate /tb_top/top_inst/top_inst/pwm_inst/intPWMout
add wave -noupdate /tb_top/top_inst/top_inst/pwm_inst/intXforPWM
add wave -noupdate /tb_top/top_inst/top_inst/pwm_inst/intYforPWM
add wave -noupdate /tb_top/top_inst/top_inst/pwm_inst/zeros_vector
add wave -noupdate /tb_top/top_inst/top_inst/pwm_inst/workMode
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {185280 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 296
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
WaveRestoreZoom {0 ps} {1806476 ps}
bookmark add wave bookmark0 {{0 ps} {4200 ns}} 0

onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group MCU -radix hexadecimal /tb_mcu/U_0/i_reset
add wave -noupdate -group MCU -radix hexadecimal /tb_mcu/U_0/i_clock
add wave -noupdate -group MCU -group PBs -radix hexadecimal /tb_mcu/U_0/i_rxuart
add wave -noupdate -group MCU -group PBs -radix hexadecimal /tb_mcu/U_0/i_txuart
add wave -noupdate -group MCU -group PBs -radix hexadecimal /tb_mcu/U_0/i_pb1
add wave -noupdate -group MCU -group PBs -radix hexadecimal /tb_mcu/U_0/i_pb2
add wave -noupdate -group MCU -group PBs -radix hexadecimal /tb_mcu/U_0/i_pb3
add wave -noupdate -group MCU -radix hexadecimal /tb_mcu/U_0/i_sw
add wave -noupdate -group MCU -expand -group hex_led -radix hexadecimal /tb_mcu/U_0/o_hex0
add wave -noupdate -group MCU -expand -group hex_led -radix hexadecimal /tb_mcu/U_0/o_hex1
add wave -noupdate -group MCU -expand -group hex_led -radix hexadecimal /tb_mcu/U_0/o_hex2
add wave -noupdate -group MCU -expand -group hex_led -radix hexadecimal /tb_mcu/U_0/o_hex3
add wave -noupdate -group MCU -expand -group hex_led -radix hexadecimal /tb_mcu/U_0/o_hex4
add wave -noupdate -group MCU -expand -group hex_led -radix hexadecimal /tb_mcu/U_0/o_hex5
add wave -noupdate -group MCU -expand -group hex_led -radix hexadecimal /tb_mcu/U_0/o_leds
add wave -noupdate -group MCU -radix hexadecimal /tb_mcu/U_0/o_pwm
add wave -noupdate -group MCU -group mcu_internal -radix hexadecimal /tb_mcu/U_0/t_clk
add wave -noupdate -group MCU -group mcu_internal -radix hexadecimal /tb_mcu/U_0/t_gie
add wave -noupdate -group MCU -group mcu_internal -radix hexadecimal /tb_mcu/U_0/t_rst
add wave -noupdate -group MCU -group mcu_internal -radix hexadecimal /tb_mcu/U_0/t_intr
add wave -noupdate -group MCU -group mcu_internal -radix hexadecimal /tb_mcu/U_0/t_inta
add wave -noupdate -group MCU -group mcu_internal -radix hexadecimal /tb_mcu/U_0/t_memwrite
add wave -noupdate -group MCU -group mcu_internal -radix hexadecimal /tb_mcu/U_0/t_memread
add wave -noupdate -group MCU -group mcu_internal -radix hexadecimal /tb_mcu/U_0/t_addr_bus
add wave -noupdate -group MCU -group mcu_internal -radix hexadecimal /tb_mcu/U_0/t_data_bus
add wave -noupdate -group MCU -group mcu_internal -radix hexadecimal /tb_mcu/U_0/t_irq
add wave -noupdate -group MCU -group mcu_internal -radix hexadecimal /tb_mcu/U_0/addr_to_gpio
add wave -noupdate -group MCU -group mcu_internal -radix hexadecimal /tb_mcu/U_0/data_to_gpio
add wave -noupdate -group MCU -group mcu_internal -radix hexadecimal /tb_mcu/U_0/data_to_intr
add wave -noupdate -expand -group MIPS -color Yellow -radix hexadecimal /tb_mcu/U_0/MIPS/Instruction
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/i_reset
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/i_clock
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/i_intr
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/o_inta
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/o_gie
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/o_memwrite
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/o_memread
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/o_addr
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/io_bus
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/PC_plus_4
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/read_data_1
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/read_data_2
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/Sign_Extend
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/Add_result
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/ALU_result
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/Zero_ext
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/ALUSrc
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/Beq
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/Bne
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/RegDst
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/Regwrite
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/Zero
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/MemWrite
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/MemtoReg
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/JUMP
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/MemRead
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/save_to_pc
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/Function_opcode
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/ALUctrl
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/dmem_read
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/dmem_write
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/dmem_into_bus
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/dmem_from_bus
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/r_data2_into_bus
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/r_data2_from_bus
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/int_gie
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/int_inst_from_intr_val
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/int_gie_on
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/int_gie_off
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/int_inst_from_intr
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/next_pc
add wave -noupdate -expand -group MIPS -radix hexadecimal /tb_mcu/U_0/MIPS/int_intrrupt_pcsave
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/clock
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/reset
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/Add_result
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/Sign_extend
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/o_Instruction
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/Jump
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/Beq
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/Bne
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/Zero
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/nx_pc_out
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/i_inst_from_intr_valid
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/i_inst_from_intr
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/read_data_1
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/PC_plus_4_out
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/Mem_Addr
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/PC
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/PC_plus_4
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/next_PC
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/Next_PC_jmp
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/Next_PC_branch
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/Instruction_mem
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/Instruction
add wave -noupdate -group FETCH -radix hexadecimal /tb_mcu/U_0/MIPS/IFE/addr_gen
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/i_divCLK
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/i_divRST
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/i_memRead
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/i_memWrite
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/i_addr
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/o_divIFG
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/io_data
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/enable_bus
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/set_divisor
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/set_dividend
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/int_enable_div
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/int_ifg
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/int_data_out
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/int_dividend_o
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/int_divisor_o
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/int_quotient
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/int_residue
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/int_data_in
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/int_dividend
add wave -noupdate -expand -group DIVIDER -radix hexadecimal /tb_mcu/U_0/DIVIDER/int_divisor
add wave -noupdate -group TIMER -radix hexadecimal /tb_mcu/U_0/TIMER/i_memRead
add wave -noupdate -group TIMER -radix hexadecimal /tb_mcu/U_0/TIMER/i_memWrite
add wave -noupdate -group TIMER -radix hexadecimal /tb_mcu/U_0/TIMER/i_MCLK
add wave -noupdate -group TIMER -radix hexadecimal /tb_mcu/U_0/TIMER/i_rst
add wave -noupdate -group TIMER -radix hexadecimal /tb_mcu/U_0/TIMER/i_addr
add wave -noupdate -group TIMER -radix hexadecimal /tb_mcu/U_0/TIMER/io_data
add wave -noupdate -group TIMER -radix hexadecimal /tb_mcu/U_0/TIMER/o_pwm
add wave -noupdate -group TIMER -radix hexadecimal /tb_mcu/U_0/TIMER/o_BTIFG
add wave -noupdate -group TIMER -radix hexadecimal /tb_mcu/U_0/TIMER/BTCCR0
add wave -noupdate -group TIMER -radix hexadecimal /tb_mcu/U_0/TIMER/BTCCR1
add wave -noupdate -group TIMER -radix hexadecimal /tb_mcu/U_0/TIMER/BTCNT
add wave -noupdate -group TIMER -radix hexadecimal /tb_mcu/U_0/TIMER/BTCTL
add wave -noupdate -group TIMER -radix hexadecimal /tb_mcu/U_0/TIMER/BTCTL_write
add wave -noupdate -group TIMER -radix hexadecimal /tb_mcu/U_0/TIMER/int_PWM
add wave -noupdate -group TIMER -radix hexadecimal /tb_mcu/U_0/TIMER/int_BTIFG
add wave -noupdate -group TIMER -radix hexadecimal /tb_mcu/U_0/TIMER/int_data_w
add wave -noupdate -group TIMER -radix hexadecimal /tb_mcu/U_0/TIMER/int_data_r
add wave -noupdate -group TIMER -radix hexadecimal /tb_mcu/U_0/TIMER/enable_bus
add wave -noupdate -group TIMER -radix hexadecimal /tb_mcu/U_0/TIMER/valid_write_BTCNT
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/i_clk
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/i_rst
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/i_intr_ack
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/i_addr
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/i_memread
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/i_memwrite
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/i_gie
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/i_TXBUF
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/i_RXBUF
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/i_irq
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/o_intr
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/io_data
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/int_clear
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/int_set_ifg
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/int_valid_ie
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/int_enable_bus
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/int_ifg
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/int_ie_reg
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/int_type
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/int_data_into_core
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/int_data_outto_ie
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/int_soft_ifg_write
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/int_not_soft_ifg_write
add wave -noupdate -group INTR_CTRL -radix hexadecimal /tb_mcu/U_0/INTR_CTRL/int_INTR_ack
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2098968991 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 238
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
WaveRestoreZoom {826875 ns} {1378125 ns}
bookmark add wave bookmark0 {{0 ps} {4200 ns}} 0

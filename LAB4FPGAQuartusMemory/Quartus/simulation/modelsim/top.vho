-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "07/03/2024 12:12:02"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	clk : IN std_logic;
	ena : IN std_logic;
	rst : IN std_logic;
	x_i : IN std_logic_vector(7 DOWNTO 0);
	y_i : IN std_logic_vector(7 DOWNTO 0);
	alufn_i : IN std_logic_vector(4 DOWNTO 0);
	pwm_o : OUT std_logic;
	ov_flag_o : OUT std_logic;
	z_flag_o : OUT std_logic;
	c_flag_o : OUT std_logic;
	n_flag_o : OUT std_logic;
	aluRes_o : OUT std_logic_vector(7 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- pwm_o	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov_flag_o	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- z_flag_o	=>  Location: PIN_AC23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c_flag_o	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n_flag_o	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluRes_o[0]	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluRes_o[1]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluRes_o[2]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluRes_o[3]	=>  Location: PIN_AE23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluRes_o[4]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluRes_o[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluRes_o[6]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluRes_o[7]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alufn_i[3]	=>  Location: PIN_AG25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alufn_i[4]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alufn_i[0]	=>  Location: PIN_AK24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alufn_i[1]	=>  Location: PIN_AJ26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_i[7]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_i[7]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alufn_i[2]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_i[6]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_i[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_i[5]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_i[5]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_i[4]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_i[4]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_i[3]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_i[3]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_i[2]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_i[2]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_i[1]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_i[1]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_i[0]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_i[0]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ena	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ena : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_x_i : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y_i : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_alufn_i : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_pwm_o : std_logic;
SIGNAL ww_ov_flag_o : std_logic;
SIGNAL ww_z_flag_o : std_logic;
SIGNAL ww_c_flag_o : std_logic;
SIGNAL ww_n_flag_o : std_logic;
SIGNAL ww_aluRes_o : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \alufn_i[4]~input_o\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Add0~17_sumout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Add0~10\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Add0~13_sumout\ : std_logic;
SIGNAL \alufn_i[3]~input_o\ : std_logic;
SIGNAL \y_i[5]~input_o\ : std_logic;
SIGNAL \y_i[4]~input_o\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Equal0~1_combout\ : std_logic;
SIGNAL \y_i[1]~input_o\ : std_logic;
SIGNAL \y_i[0]~input_o\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Equal0~2_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \y_i[2]~input_o\ : std_logic;
SIGNAL \y_i[3]~input_o\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Equal0~3_combout\ : std_logic;
SIGNAL \ena~input_o\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|count[7]~1_combout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Add0~14\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Add0~1_sumout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Add0~2\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Add0~5_sumout\ : std_logic;
SIGNAL \y_i[6]~input_o\ : std_logic;
SIGNAL \y_i[7]~input_o\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Equal0~0_combout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|count[7]~0_combout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Add0~18\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Add0~21_sumout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Add0~22\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Add0~25_sumout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Add0~26\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Add0~29_sumout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Add0~30\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Add0~9_sumout\ : std_logic;
SIGNAL \x_i[5]~input_o\ : std_logic;
SIGNAL \x_i[4]~input_o\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Equal1~1_combout\ : std_logic;
SIGNAL \x_i[1]~input_o\ : std_logic;
SIGNAL \x_i[0]~input_o\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Equal1~2_combout\ : std_logic;
SIGNAL \x_i[2]~input_o\ : std_logic;
SIGNAL \x_i[3]~input_o\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Equal1~3_combout\ : std_logic;
SIGNAL \x_i[7]~input_o\ : std_logic;
SIGNAL \x_i[6]~input_o\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Equal1~0_combout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Equal1~4_combout\ : std_logic;
SIGNAL \alufn_i[0]~input_o\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|Equal0~4_combout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|intPWM~0_combout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|intPWM~q\ : std_logic;
SIGNAL \intOUTputForPWM~0_combout\ : std_logic;
SIGNAL \pwm_o~reg0_q\ : std_logic;
SIGNAL \alufn_i[1]~input_o\ : std_logic;
SIGNAL \alu_inst|yAdd[7]~0_combout\ : std_logic;
SIGNAL \alufn_i[2]~input_o\ : std_logic;
SIGNAL \alu_inst|negAdd~0_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:7:FA_i_instance|s~0_combout\ : std_logic;
SIGNAL \alu_inst|Equal6~0_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux0~0_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\ : std_logic;
SIGNAL \alu_inst|yAdd[4]~1_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~1_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\ : std_logic;
SIGNAL \alu_inst|yAdd[2]~2_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FA0|cout~0_combout\ : std_logic;
SIGNAL \alu_inst|yAdd[1]~3_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FA0|cout~1_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ : std_logic;
SIGNAL \alu_inst|Mux0~1_combout\ : std_logic;
SIGNAL \alu_inst|Mux0~2_combout\ : std_logic;
SIGNAL \alu_inst|Mux0~3_combout\ : std_logic;
SIGNAL \alu_inst|Mux0~4_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|horiz[0][7]~1_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|horiz[0][1]~4_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|horiz[0][3]~3_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|horiz[0][5]~2_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|horiz[2][7]~5_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|horiz[0][0]~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux0~6_combout\ : std_logic;
SIGNAL \alu_inst|Mux0~7_combout\ : std_logic;
SIGNAL \alu_inst|Mux0~8_combout\ : std_logic;
SIGNAL \alu_inst|Mux0~5_combout\ : std_logic;
SIGNAL \alu_inst|Mux0~9_combout\ : std_logic;
SIGNAL \ov_flag_o~0_combout\ : std_logic;
SIGNAL \ov_flag_o~1_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:1:FA_i_instance|s~combout\ : std_logic;
SIGNAL \alu_inst|Mux6~1_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FA0|s~combout\ : std_logic;
SIGNAL \alu_inst|Mux7~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux5~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux7~2_combout\ : std_logic;
SIGNAL \alu_inst|Mux7~1_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|horiz[0][2]~7_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|horiz[2][2]~12_combout\ : std_logic;
SIGNAL \alu_inst|Mux5~3_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:2:FA_i_instance|s~combout\ : std_logic;
SIGNAL \alu_inst|Mux5~1_combout\ : std_logic;
SIGNAL \alu_inst|Mux5~2_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|horiz[0][6]~10_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|horiz[0][4]~8_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|horiz[2][6]~11_combout\ : std_logic;
SIGNAL \alu_inst|Mux6~2_combout\ : std_logic;
SIGNAL \alu_inst|Mux6~0_combout\ : std_logic;
SIGNAL \z_flag_o~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux1~2_combout\ : std_logic;
SIGNAL \alu_inst|Mux1~3_combout\ : std_logic;
SIGNAL \alu_inst|Mux1~4_combout\ : std_logic;
SIGNAL \alu_inst|Mux1~1_combout\ : std_logic;
SIGNAL \alu_inst|Mux1~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux1~5_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|horiz[2][3]~6_combout\ : std_logic;
SIGNAL \alu_inst|Mux4~2_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:3:FA_i_instance|s~0_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|horiz[2][4]~9_combout\ : std_logic;
SIGNAL \alu_inst|Mux4~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux4~1_combout\ : std_logic;
SIGNAL \alu_inst|Mux2~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux2~1_combout\ : std_logic;
SIGNAL \alu_inst|Mux3~2_combout\ : std_logic;
SIGNAL \alu_inst|Mux3~3_combout\ : std_logic;
SIGNAL \alu_inst|Mux3~1_combout\ : std_logic;
SIGNAL \alu_inst|Mux3~4_combout\ : std_logic;
SIGNAL \alu_inst|Mux2~2_combout\ : std_logic;
SIGNAL \alu_inst|Mux2~3_combout\ : std_logic;
SIGNAL \alu_inst|Mux3~0_combout\ : std_logic;
SIGNAL \alu_inst|Mux2~5_combout\ : std_logic;
SIGNAL \alu_inst|Mux2~6_combout\ : std_logic;
SIGNAL \alu_inst|Mux2~4_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|horiz[2][5]~13_combout\ : std_logic;
SIGNAL \alu_inst|Mux2~7_combout\ : std_logic;
SIGNAL \z_flag_o~1_combout\ : std_logic;
SIGNAL \z_flag_o~2_combout\ : std_logic;
SIGNAL \alu_inst|negAdd~1_combout\ : std_logic;
SIGNAL \c_flag_o~1_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|horiz[0][8]~14_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|cout~0_combout\ : std_logic;
SIGNAL \c_flag_o~0_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~2_combout\ : std_logic;
SIGNAL \c_flag_o~2_combout\ : std_logic;
SIGNAL \n_flag_o~0_combout\ : std_logic;
SIGNAL \intOUTputForALU[0]~0_combout\ : std_logic;
SIGNAL \aluRes_o[0]~reg0_q\ : std_logic;
SIGNAL \intOUTputForALU[1]~1_combout\ : std_logic;
SIGNAL \aluRes_o[1]~reg0_q\ : std_logic;
SIGNAL \intOUTputForALU[2]~2_combout\ : std_logic;
SIGNAL \aluRes_o[2]~reg0_q\ : std_logic;
SIGNAL \intOUTputForALU[3]~3_combout\ : std_logic;
SIGNAL \aluRes_o[3]~reg0_q\ : std_logic;
SIGNAL \intOUTputForALU[4]~4_combout\ : std_logic;
SIGNAL \aluRes_o[4]~reg0_q\ : std_logic;
SIGNAL \intOUTputForALU[5]~5_combout\ : std_logic;
SIGNAL \aluRes_o[5]~reg0_q\ : std_logic;
SIGNAL \intOUTputForALU[6]~6_combout\ : std_logic;
SIGNAL \aluRes_o[6]~reg0_q\ : std_logic;
SIGNAL \aluRes_o[7]~reg0_q\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL RegForALU : std_logic_vector(4 DOWNTO 0);
SIGNAL RegForY : std_logic_vector(7 DOWNTO 0);
SIGNAL RegForX : std_logic_vector(7 DOWNTO 0);
SIGNAL \alu_inst|AddSub_inst|xForAdder\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \alu_inst|ALT_INV_yAdd[1]~3_combout\ : std_logic;
SIGNAL ALT_INV_RegForY : std_logic_vector(7 DOWNTO 0);
SIGNAL \alu_inst|AddSub_inst|ALT_INV_xForAdder\ : std_logic_vector(2 DOWNTO 1);
SIGNAL ALT_INV_RegForX : std_logic_vector(7 DOWNTO 0);
SIGNAL \alu_inst|ALT_INV_yAdd[2]~2_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_yAdd[4]~1_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_negAdd~0_combout\ : std_logic;
SIGNAL ALT_INV_RegForALU : std_logic_vector(4 DOWNTO 0);
SIGNAL \alu_inst|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_yAdd[7]~0_combout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|ALT_INV_count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_alufn_i[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_alufn_i[3]~input_o\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \pwm_inst|pwm_inst|ALT_INV_intPWM~q\ : std_logic;
SIGNAL \ALT_INV_c_flag_o~1_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_negAdd~1_combout\ : std_logic;
SIGNAL \ALT_INV_c_flag_o~0_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|ALT_INV_horiz[0][8]~14_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \ALT_INV_z_flag_o~1_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux2~7_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux2~6_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux2~5_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|ALT_INV_horiz[2][5]~13_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_z_flag_o~0_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FA0|ALT_INV_s~combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:1:FA_i_instance|ALT_INV_s~combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|ALT_INV_horiz[2][2]~12_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:2:FA_i_instance|ALT_INV_s~combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux1~5_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|ALT_INV_horiz[2][6]~11_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|ALT_INV_horiz[0][6]~10_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|ALT_INV_horiz[2][4]~9_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|ALT_INV_horiz[0][4]~8_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|ALT_INV_horiz[0][2]~7_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|ALT_INV_horiz[2][3]~6_combout\ : std_logic;
SIGNAL \ALT_INV_ov_flag_o~0_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux0~9_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|ALT_INV_horiz[2][7]~5_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|ALT_INV_horiz[0][1]~4_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|ALT_INV_horiz[0][3]~3_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|ALT_INV_horiz[0][5]~2_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|ALT_INV_horiz[0][7]~1_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux0~8_combout\ : std_logic;
SIGNAL \alu_inst|Shift_inst|ALT_INV_horiz[0][0]~0_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux0~7_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:7:FA_i_instance|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \alu_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FAN:2:FA_i_instance|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FA0|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \alu_inst|AddSub_inst|FA0|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_ena~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_ena <= ena;
ww_rst <= rst;
ww_x_i <= x_i;
ww_y_i <= y_i;
ww_alufn_i <= alufn_i;
pwm_o <= ww_pwm_o;
ov_flag_o <= ww_ov_flag_o;
z_flag_o <= ww_z_flag_o;
c_flag_o <= ww_c_flag_o;
n_flag_o <= ww_n_flag_o;
aluRes_o <= ww_aluRes_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\alu_inst|ALT_INV_yAdd[1]~3_combout\ <= NOT \alu_inst|yAdd[1]~3_combout\;
ALT_INV_RegForY(1) <= NOT RegForY(1);
\alu_inst|AddSub_inst|ALT_INV_xForAdder\(1) <= NOT \alu_inst|AddSub_inst|xForAdder\(1);
ALT_INV_RegForX(1) <= NOT RegForX(1);
\alu_inst|ALT_INV_yAdd[2]~2_combout\ <= NOT \alu_inst|yAdd[2]~2_combout\;
ALT_INV_RegForY(2) <= NOT RegForY(2);
\alu_inst|AddSub_inst|ALT_INV_xForAdder\(2) <= NOT \alu_inst|AddSub_inst|xForAdder\(2);
ALT_INV_RegForX(2) <= NOT RegForX(2);
\alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~0_combout\ <= NOT \alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\;
ALT_INV_RegForY(3) <= NOT RegForY(3);
ALT_INV_RegForX(3) <= NOT RegForX(3);
\alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~0_combout\ <= NOT \alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\;
\alu_inst|ALT_INV_yAdd[4]~1_combout\ <= NOT \alu_inst|yAdd[4]~1_combout\;
ALT_INV_RegForY(4) <= NOT RegForY(4);
ALT_INV_RegForX(4) <= NOT RegForX(4);
\alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~0_combout\ <= NOT \alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0_combout\;
ALT_INV_RegForY(5) <= NOT RegForY(5);
ALT_INV_RegForX(5) <= NOT RegForX(5);
\alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~0_combout\ <= NOT \alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\;
ALT_INV_RegForY(6) <= NOT RegForY(6);
ALT_INV_RegForX(6) <= NOT RegForX(6);
\alu_inst|ALT_INV_negAdd~0_combout\ <= NOT \alu_inst|negAdd~0_combout\;
ALT_INV_RegForALU(2) <= NOT RegForALU(2);
ALT_INV_RegForALU(4) <= NOT RegForALU(4);
ALT_INV_RegForALU(3) <= NOT RegForALU(3);
\alu_inst|ALT_INV_Equal6~0_combout\ <= NOT \alu_inst|Equal6~0_combout\;
ALT_INV_RegForX(7) <= NOT RegForX(7);
\alu_inst|ALT_INV_yAdd[7]~0_combout\ <= NOT \alu_inst|yAdd[7]~0_combout\;
ALT_INV_RegForY(7) <= NOT RegForY(7);
ALT_INV_RegForALU(1) <= NOT RegForALU(1);
ALT_INV_RegForALU(0) <= NOT RegForALU(0);
\pwm_inst|pwm_inst|ALT_INV_count\(3) <= NOT \pwm_inst|pwm_inst|count\(3);
\pwm_inst|pwm_inst|ALT_INV_count\(2) <= NOT \pwm_inst|pwm_inst|count\(2);
\pwm_inst|pwm_inst|ALT_INV_count\(1) <= NOT \pwm_inst|pwm_inst|count\(1);
\pwm_inst|pwm_inst|ALT_INV_count\(0) <= NOT \pwm_inst|pwm_inst|count\(0);
\pwm_inst|pwm_inst|ALT_INV_count\(5) <= NOT \pwm_inst|pwm_inst|count\(5);
\pwm_inst|pwm_inst|ALT_INV_count\(4) <= NOT \pwm_inst|pwm_inst|count\(4);
\pwm_inst|pwm_inst|ALT_INV_count\(7) <= NOT \pwm_inst|pwm_inst|count\(7);
\pwm_inst|pwm_inst|ALT_INV_count\(6) <= NOT \pwm_inst|pwm_inst|count\(6);
\ALT_INV_alufn_i[4]~input_o\ <= NOT \alufn_i[4]~input_o\;
\ALT_INV_alufn_i[3]~input_o\ <= NOT \alufn_i[3]~input_o\;
\alu_inst|ALT_INV_Mux4~2_combout\ <= NOT \alu_inst|Mux4~2_combout\;
\alu_inst|ALT_INV_Mux5~3_combout\ <= NOT \alu_inst|Mux5~3_combout\;
\alu_inst|ALT_INV_Mux6~2_combout\ <= NOT \alu_inst|Mux6~2_combout\;
\alu_inst|ALT_INV_Mux7~2_combout\ <= NOT \alu_inst|Mux7~2_combout\;
\pwm_inst|pwm_inst|ALT_INV_Equal0~4_combout\ <= NOT \pwm_inst|pwm_inst|Equal0~4_combout\;
\pwm_inst|pwm_inst|ALT_INV_Equal0~3_combout\ <= NOT \pwm_inst|pwm_inst|Equal0~3_combout\;
\pwm_inst|pwm_inst|ALT_INV_Equal0~2_combout\ <= NOT \pwm_inst|pwm_inst|Equal0~2_combout\;
\pwm_inst|pwm_inst|ALT_INV_Equal0~1_combout\ <= NOT \pwm_inst|pwm_inst|Equal0~1_combout\;
\pwm_inst|pwm_inst|ALT_INV_Equal0~0_combout\ <= NOT \pwm_inst|pwm_inst|Equal0~0_combout\;
\pwm_inst|pwm_inst|ALT_INV_Equal1~4_combout\ <= NOT \pwm_inst|pwm_inst|Equal1~4_combout\;
\pwm_inst|pwm_inst|ALT_INV_Equal1~3_combout\ <= NOT \pwm_inst|pwm_inst|Equal1~3_combout\;
\pwm_inst|pwm_inst|ALT_INV_Equal1~2_combout\ <= NOT \pwm_inst|pwm_inst|Equal1~2_combout\;
\pwm_inst|pwm_inst|ALT_INV_Equal1~1_combout\ <= NOT \pwm_inst|pwm_inst|Equal1~1_combout\;
\pwm_inst|pwm_inst|ALT_INV_Equal1~0_combout\ <= NOT \pwm_inst|pwm_inst|Equal1~0_combout\;
\pwm_inst|pwm_inst|ALT_INV_intPWM~q\ <= NOT \pwm_inst|pwm_inst|intPWM~q\;
\ALT_INV_c_flag_o~1_combout\ <= NOT \c_flag_o~1_combout\;
\alu_inst|ALT_INV_negAdd~1_combout\ <= NOT \alu_inst|negAdd~1_combout\;
\ALT_INV_c_flag_o~0_combout\ <= NOT \c_flag_o~0_combout\;
\alu_inst|Shift_inst|ALT_INV_cout~0_combout\ <= NOT \alu_inst|Shift_inst|cout~0_combout\;
\alu_inst|Shift_inst|ALT_INV_horiz[0][8]~14_combout\ <= NOT \alu_inst|Shift_inst|horiz[0][8]~14_combout\;
\alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~2_combout\ <= NOT \alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~2_combout\;
\ALT_INV_z_flag_o~1_combout\ <= NOT \z_flag_o~1_combout\;
\alu_inst|ALT_INV_Mux2~7_combout\ <= NOT \alu_inst|Mux2~7_combout\;
\alu_inst|ALT_INV_Mux2~6_combout\ <= NOT \alu_inst|Mux2~6_combout\;
\alu_inst|ALT_INV_Mux2~5_combout\ <= NOT \alu_inst|Mux2~5_combout\;
\alu_inst|ALT_INV_Mux2~4_combout\ <= NOT \alu_inst|Mux2~4_combout\;
\alu_inst|Shift_inst|ALT_INV_horiz[2][5]~13_combout\ <= NOT \alu_inst|Shift_inst|horiz[2][5]~13_combout\;
\alu_inst|ALT_INV_Mux3~4_combout\ <= NOT \alu_inst|Mux3~4_combout\;
\alu_inst|ALT_INV_Mux3~3_combout\ <= NOT \alu_inst|Mux3~3_combout\;
\alu_inst|ALT_INV_Mux3~2_combout\ <= NOT \alu_inst|Mux3~2_combout\;
\alu_inst|ALT_INV_Mux3~1_combout\ <= NOT \alu_inst|Mux3~1_combout\;
\alu_inst|ALT_INV_Mux3~0_combout\ <= NOT \alu_inst|Mux3~0_combout\;
\alu_inst|ALT_INV_Mux2~3_combout\ <= NOT \alu_inst|Mux2~3_combout\;
\alu_inst|ALT_INV_Mux2~2_combout\ <= NOT \alu_inst|Mux2~2_combout\;
\alu_inst|ALT_INV_Mux2~1_combout\ <= NOT \alu_inst|Mux2~1_combout\;
\alu_inst|ALT_INV_Mux2~0_combout\ <= NOT \alu_inst|Mux2~0_combout\;
\ALT_INV_z_flag_o~0_combout\ <= NOT \z_flag_o~0_combout\;
\alu_inst|ALT_INV_Mux7~1_combout\ <= NOT \alu_inst|Mux7~1_combout\;
\alu_inst|ALT_INV_Mux7~0_combout\ <= NOT \alu_inst|Mux7~0_combout\;
\alu_inst|AddSub_inst|FA0|ALT_INV_s~combout\ <= NOT \alu_inst|AddSub_inst|FA0|s~combout\;
\alu_inst|ALT_INV_Mux6~1_combout\ <= NOT \alu_inst|Mux6~1_combout\;
\alu_inst|AddSub_inst|FAN:1:FA_i_instance|ALT_INV_s~combout\ <= NOT \alu_inst|AddSub_inst|FAN:1:FA_i_instance|s~combout\;
\alu_inst|ALT_INV_Mux6~0_combout\ <= NOT \alu_inst|Mux6~0_combout\;
\alu_inst|ALT_INV_Mux5~2_combout\ <= NOT \alu_inst|Mux5~2_combout\;
\alu_inst|ALT_INV_Mux5~1_combout\ <= NOT \alu_inst|Mux5~1_combout\;
\alu_inst|Shift_inst|ALT_INV_horiz[2][2]~12_combout\ <= NOT \alu_inst|Shift_inst|horiz[2][2]~12_combout\;
\alu_inst|AddSub_inst|FAN:2:FA_i_instance|ALT_INV_s~combout\ <= NOT \alu_inst|AddSub_inst|FAN:2:FA_i_instance|s~combout\;
\alu_inst|ALT_INV_Mux1~5_combout\ <= NOT \alu_inst|Mux1~5_combout\;
\alu_inst|ALT_INV_Mux1~4_combout\ <= NOT \alu_inst|Mux1~4_combout\;
\alu_inst|ALT_INV_Mux1~3_combout\ <= NOT \alu_inst|Mux1~3_combout\;
\alu_inst|ALT_INV_Mux1~2_combout\ <= NOT \alu_inst|Mux1~2_combout\;
\alu_inst|Shift_inst|ALT_INV_horiz[2][6]~11_combout\ <= NOT \alu_inst|Shift_inst|horiz[2][6]~11_combout\;
\alu_inst|Shift_inst|ALT_INV_horiz[0][6]~10_combout\ <= NOT \alu_inst|Shift_inst|horiz[0][6]~10_combout\;
\alu_inst|ALT_INV_Mux1~1_combout\ <= NOT \alu_inst|Mux1~1_combout\;
\alu_inst|ALT_INV_Mux1~0_combout\ <= NOT \alu_inst|Mux1~0_combout\;
\alu_inst|ALT_INV_Mux4~1_combout\ <= NOT \alu_inst|Mux4~1_combout\;
\alu_inst|ALT_INV_Mux4~0_combout\ <= NOT \alu_inst|Mux4~0_combout\;
\alu_inst|Shift_inst|ALT_INV_horiz[2][4]~9_combout\ <= NOT \alu_inst|Shift_inst|horiz[2][4]~9_combout\;
\alu_inst|Shift_inst|ALT_INV_horiz[0][4]~8_combout\ <= NOT \alu_inst|Shift_inst|horiz[0][4]~8_combout\;
\alu_inst|Shift_inst|ALT_INV_horiz[0][2]~7_combout\ <= NOT \alu_inst|Shift_inst|horiz[0][2]~7_combout\;
\alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_s~0_combout\ <= NOT \alu_inst|AddSub_inst|FAN:3:FA_i_instance|s~0_combout\;
\alu_inst|ALT_INV_Mux5~0_combout\ <= NOT \alu_inst|Mux5~0_combout\;
\alu_inst|Shift_inst|ALT_INV_horiz[2][3]~6_combout\ <= NOT \alu_inst|Shift_inst|horiz[2][3]~6_combout\;
\ALT_INV_ov_flag_o~0_combout\ <= NOT \ov_flag_o~0_combout\;
\alu_inst|ALT_INV_Mux0~9_combout\ <= NOT \alu_inst|Mux0~9_combout\;
\alu_inst|Shift_inst|ALT_INV_horiz[2][7]~5_combout\ <= NOT \alu_inst|Shift_inst|horiz[2][7]~5_combout\;
\alu_inst|Shift_inst|ALT_INV_horiz[0][1]~4_combout\ <= NOT \alu_inst|Shift_inst|horiz[0][1]~4_combout\;
\alu_inst|Shift_inst|ALT_INV_horiz[0][3]~3_combout\ <= NOT \alu_inst|Shift_inst|horiz[0][3]~3_combout\;
\alu_inst|Shift_inst|ALT_INV_horiz[0][5]~2_combout\ <= NOT \alu_inst|Shift_inst|horiz[0][5]~2_combout\;
\alu_inst|Shift_inst|ALT_INV_horiz[0][7]~1_combout\ <= NOT \alu_inst|Shift_inst|horiz[0][7]~1_combout\;
\alu_inst|ALT_INV_Mux0~8_combout\ <= NOT \alu_inst|Mux0~8_combout\;
\alu_inst|Shift_inst|ALT_INV_horiz[0][0]~0_combout\ <= NOT \alu_inst|Shift_inst|horiz[0][0]~0_combout\;
\alu_inst|ALT_INV_Mux0~7_combout\ <= NOT \alu_inst|Mux0~7_combout\;
\alu_inst|ALT_INV_Mux0~6_combout\ <= NOT \alu_inst|Mux0~6_combout\;
\alu_inst|ALT_INV_Mux0~5_combout\ <= NOT \alu_inst|Mux0~5_combout\;
\alu_inst|ALT_INV_Mux0~4_combout\ <= NOT \alu_inst|Mux0~4_combout\;
\alu_inst|ALT_INV_Mux0~3_combout\ <= NOT \alu_inst|Mux0~3_combout\;
\alu_inst|ALT_INV_Mux0~2_combout\ <= NOT \alu_inst|Mux0~2_combout\;
\alu_inst|ALT_INV_Mux0~1_combout\ <= NOT \alu_inst|Mux0~1_combout\;
\alu_inst|AddSub_inst|FAN:7:FA_i_instance|ALT_INV_s~0_combout\ <= NOT \alu_inst|AddSub_inst|FAN:7:FA_i_instance|s~0_combout\;
\alu_inst|ALT_INV_Mux0~0_combout\ <= NOT \alu_inst|Mux0~0_combout\;
\alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~1_combout\ <= NOT \alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\;
\alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~2_combout\ <= NOT \alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\;
\alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~1_combout\ <= NOT \alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~1_combout\;
\alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~1_combout\ <= NOT \alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\;
\alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~1_combout\ <= NOT \alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\;
\alu_inst|AddSub_inst|FAN:2:FA_i_instance|ALT_INV_cout~0_combout\ <= NOT \alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\;
\alu_inst|AddSub_inst|FA0|ALT_INV_cout~1_combout\ <= NOT \alu_inst|AddSub_inst|FA0|cout~1_combout\;
\alu_inst|AddSub_inst|FA0|ALT_INV_cout~0_combout\ <= NOT \alu_inst|AddSub_inst|FA0|cout~0_combout\;
ALT_INV_RegForY(0) <= NOT RegForY(0);
ALT_INV_RegForX(0) <= NOT RegForX(0);
\ALT_INV_ena~input_o\ <= NOT \ena~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: IOOBUF_X14_Y0_N53
\pwm_o~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \pwm_o~reg0_q\,
	devoe => ww_devoe,
	o => ww_pwm_o);

-- Location: IOOBUF_X88_Y0_N37
\ov_flag_o~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ov_flag_o~1_combout\,
	devoe => ww_devoe,
	o => ww_ov_flag_o);

-- Location: IOOBUF_X86_Y0_N19
\z_flag_o~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z_flag_o~2_combout\,
	devoe => ww_devoe,
	o => ww_z_flag_o);

-- Location: IOOBUF_X89_Y9_N22
\c_flag_o~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \c_flag_o~2_combout\,
	devoe => ww_devoe,
	o => ww_c_flag_o);

-- Location: IOOBUF_X89_Y11_N45
\n_flag_o~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \n_flag_o~0_combout\,
	devoe => ww_devoe,
	o => ww_n_flag_o);

-- Location: IOOBUF_X82_Y0_N59
\aluRes_o[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \aluRes_o[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_aluRes_o(0));

-- Location: IOOBUF_X66_Y0_N76
\aluRes_o[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \aluRes_o[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_aluRes_o(1));

-- Location: IOOBUF_X78_Y0_N2
\aluRes_o[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \aluRes_o[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_aluRes_o(2));

-- Location: IOOBUF_X78_Y0_N19
\aluRes_o[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \aluRes_o[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_aluRes_o(3));

-- Location: IOOBUF_X64_Y0_N36
\aluRes_o[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \aluRes_o[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_aluRes_o(4));

-- Location: IOOBUF_X74_Y0_N42
\aluRes_o[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \aluRes_o[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_aluRes_o(5));

-- Location: IOOBUF_X66_Y0_N93
\aluRes_o[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \aluRes_o[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_aluRes_o(6));

-- Location: IOOBUF_X70_Y0_N19
\aluRes_o[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \aluRes_o[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_aluRes_o(7));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X76_Y0_N18
\alufn_i[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alufn_i(4),
	o => \alufn_i[4]~input_o\);

-- Location: FF_X77_Y8_N17
\RegForALU[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \alufn_i[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForALU(4));

-- Location: LABCELL_X75_Y8_N0
\pwm_inst|pwm_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|Add0~17_sumout\ = SUM(( \pwm_inst|pwm_inst|count\(0) ) + ( VCC ) + ( !VCC ))
-- \pwm_inst|pwm_inst|Add0~18\ = CARRY(( \pwm_inst|pwm_inst|count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_inst|pwm_inst|ALT_INV_count\(0),
	cin => GND,
	sumout => \pwm_inst|pwm_inst|Add0~17_sumout\,
	cout => \pwm_inst|pwm_inst|Add0~18\);

-- Location: LABCELL_X75_Y8_N12
\pwm_inst|pwm_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|Add0~9_sumout\ = SUM(( \pwm_inst|pwm_inst|count\(4) ) + ( GND ) + ( \pwm_inst|pwm_inst|Add0~30\ ))
-- \pwm_inst|pwm_inst|Add0~10\ = CARRY(( \pwm_inst|pwm_inst|count\(4) ) + ( GND ) + ( \pwm_inst|pwm_inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_inst|pwm_inst|ALT_INV_count\(4),
	cin => \pwm_inst|pwm_inst|Add0~30\,
	sumout => \pwm_inst|pwm_inst|Add0~9_sumout\,
	cout => \pwm_inst|pwm_inst|Add0~10\);

-- Location: LABCELL_X75_Y8_N15
\pwm_inst|pwm_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|Add0~13_sumout\ = SUM(( \pwm_inst|pwm_inst|count\(5) ) + ( GND ) + ( \pwm_inst|pwm_inst|Add0~10\ ))
-- \pwm_inst|pwm_inst|Add0~14\ = CARRY(( \pwm_inst|pwm_inst|count\(5) ) + ( GND ) + ( \pwm_inst|pwm_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_inst|pwm_inst|ALT_INV_count\(5),
	cin => \pwm_inst|pwm_inst|Add0~10\,
	sumout => \pwm_inst|pwm_inst|Add0~13_sumout\,
	cout => \pwm_inst|pwm_inst|Add0~14\);

-- Location: IOIBUF_X78_Y0_N35
\alufn_i[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alufn_i(3),
	o => \alufn_i[3]~input_o\);

-- Location: FF_X77_Y8_N41
\RegForALU[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \alufn_i[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForALU(3));

-- Location: IOIBUF_X89_Y13_N55
\y_i[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_i(5),
	o => \y_i[5]~input_o\);

-- Location: FF_X79_Y8_N38
\RegForY[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \y_i[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForY(5));

-- Location: IOIBUF_X88_Y0_N19
\y_i[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_i(4),
	o => \y_i[4]~input_o\);

-- Location: FF_X79_Y9_N5
\RegForY[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \y_i[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForY(4));

-- Location: LABCELL_X75_Y8_N33
\pwm_inst|pwm_inst|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|Equal0~1_combout\ = ( RegForY(5) & ( RegForY(4) & ( (!\pwm_inst|pwm_inst|count\(4) & (!\pwm_inst|pwm_inst|count\(5) & ((RegForALU(3)) # (RegForALU(4))))) # (\pwm_inst|pwm_inst|count\(4) & (!RegForALU(4) & (!RegForALU(3) & 
-- \pwm_inst|pwm_inst|count\(5)))) ) ) ) # ( !RegForY(5) & ( RegForY(4) & ( (!\pwm_inst|pwm_inst|count\(5) & (!\pwm_inst|pwm_inst|count\(4) $ (((!RegForALU(4) & !RegForALU(3)))))) ) ) ) # ( RegForY(5) & ( !RegForY(4) & ( (!\pwm_inst|pwm_inst|count\(4) & 
-- (!\pwm_inst|pwm_inst|count\(5) $ (((!RegForALU(4) & !RegForALU(3)))))) ) ) ) # ( !RegForY(5) & ( !RegForY(4) & ( (!\pwm_inst|pwm_inst|count\(4) & !\pwm_inst|pwm_inst|count\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000010011001000000001101100000000000100110000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(4),
	datab => \pwm_inst|pwm_inst|ALT_INV_count\(4),
	datac => ALT_INV_RegForALU(3),
	datad => \pwm_inst|pwm_inst|ALT_INV_count\(5),
	datae => ALT_INV_RegForY(5),
	dataf => ALT_INV_RegForY(4),
	combout => \pwm_inst|pwm_inst|Equal0~1_combout\);

-- Location: IOIBUF_X89_Y9_N38
\y_i[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_i(1),
	o => \y_i[1]~input_o\);

-- Location: FF_X78_Y8_N8
\RegForY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \y_i[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForY(1));

-- Location: IOIBUF_X89_Y8_N4
\y_i[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_i(0),
	o => \y_i[0]~input_o\);

-- Location: FF_X77_Y8_N11
\RegForY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \y_i[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForY(0));

-- Location: LABCELL_X75_Y8_N39
\pwm_inst|pwm_inst|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|Equal0~2_combout\ = ( RegForY(1) & ( RegForY(0) & ( (!\pwm_inst|pwm_inst|count\(0) & (!\pwm_inst|pwm_inst|count\(1) & ((RegForALU(3)) # (RegForALU(4))))) # (\pwm_inst|pwm_inst|count\(0) & (!RegForALU(4) & (!RegForALU(3) & 
-- \pwm_inst|pwm_inst|count\(1)))) ) ) ) # ( !RegForY(1) & ( RegForY(0) & ( (!\pwm_inst|pwm_inst|count\(1) & (!\pwm_inst|pwm_inst|count\(0) $ (((!RegForALU(4) & !RegForALU(3)))))) ) ) ) # ( RegForY(1) & ( !RegForY(0) & ( (!\pwm_inst|pwm_inst|count\(0) & 
-- (!\pwm_inst|pwm_inst|count\(1) $ (((!RegForALU(4) & !RegForALU(3)))))) ) ) ) # ( !RegForY(1) & ( !RegForY(0) & ( (!\pwm_inst|pwm_inst|count\(0) & !\pwm_inst|pwm_inst|count\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000001010101000000001101010000000000010101001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_inst|pwm_inst|ALT_INV_count\(0),
	datab => ALT_INV_RegForALU(4),
	datac => ALT_INV_RegForALU(3),
	datad => \pwm_inst|pwm_inst|ALT_INV_count\(1),
	datae => ALT_INV_RegForY(1),
	dataf => ALT_INV_RegForY(0),
	combout => \pwm_inst|pwm_inst|Equal0~2_combout\);

-- Location: IOIBUF_X72_Y0_N35
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\y_i[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_i(2),
	o => \y_i[2]~input_o\);

-- Location: FF_X78_Y8_N29
\RegForY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \y_i[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForY(2));

-- Location: IOIBUF_X89_Y15_N21
\y_i[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_i(3),
	o => \y_i[3]~input_o\);

-- Location: FF_X79_Y9_N38
\RegForY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \y_i[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForY(3));

-- Location: LABCELL_X77_Y8_N12
\pwm_inst|pwm_inst|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|Equal0~3_combout\ = ( \pwm_inst|pwm_inst|count\(3) & ( RegForY(3) & ( (!RegForALU(4) & (!RegForALU(3) & (!\pwm_inst|pwm_inst|count\(2) $ (RegForY(2))))) ) ) ) # ( !\pwm_inst|pwm_inst|count\(3) & ( RegForY(3) & ( 
-- (!\pwm_inst|pwm_inst|count\(2) & ((RegForALU(3)) # (RegForALU(4)))) ) ) ) # ( !\pwm_inst|pwm_inst|count\(3) & ( !RegForY(3) & ( !\pwm_inst|pwm_inst|count\(2) $ (((!RegForALU(4) & (RegForY(2) & !RegForALU(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010011010101010000000000000000000100010101010101000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_inst|pwm_inst|ALT_INV_count\(2),
	datab => ALT_INV_RegForALU(4),
	datac => ALT_INV_RegForY(2),
	datad => ALT_INV_RegForALU(3),
	datae => \pwm_inst|pwm_inst|ALT_INV_count\(3),
	dataf => ALT_INV_RegForY(3),
	combout => \pwm_inst|pwm_inst|Equal0~3_combout\);

-- Location: IOIBUF_X89_Y6_N4
\ena~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ena,
	o => \ena~input_o\);

-- Location: LABCELL_X75_Y8_N24
\pwm_inst|pwm_inst|count[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|count[7]~1_combout\ = ( \ena~input_o\ & ( \pwm_inst|pwm_inst|Equal0~0_combout\ ) ) # ( !\ena~input_o\ & ( \pwm_inst|pwm_inst|Equal0~0_combout\ & ( ((\pwm_inst|pwm_inst|Equal0~1_combout\ & (\pwm_inst|pwm_inst|Equal0~2_combout\ & 
-- \pwm_inst|pwm_inst|Equal0~3_combout\))) # (\rst~input_o\) ) ) ) # ( \ena~input_o\ & ( !\pwm_inst|pwm_inst|Equal0~0_combout\ ) ) # ( !\ena~input_o\ & ( !\pwm_inst|pwm_inst|Equal0~0_combout\ & ( \rst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111111111111111100001111000111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_inst|pwm_inst|ALT_INV_Equal0~1_combout\,
	datab => \pwm_inst|pwm_inst|ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_rst~input_o\,
	datad => \pwm_inst|pwm_inst|ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_ena~input_o\,
	dataf => \pwm_inst|pwm_inst|ALT_INV_Equal0~0_combout\,
	combout => \pwm_inst|pwm_inst|count[7]~1_combout\);

-- Location: FF_X75_Y8_N17
\pwm_inst|pwm_inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_inst|pwm_inst|Add0~13_sumout\,
	sclr => \pwm_inst|pwm_inst|count[7]~0_combout\,
	ena => \pwm_inst|pwm_inst|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_inst|pwm_inst|count\(5));

-- Location: LABCELL_X75_Y8_N18
\pwm_inst|pwm_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|Add0~1_sumout\ = SUM(( \pwm_inst|pwm_inst|count\(6) ) + ( GND ) + ( \pwm_inst|pwm_inst|Add0~14\ ))
-- \pwm_inst|pwm_inst|Add0~2\ = CARRY(( \pwm_inst|pwm_inst|count\(6) ) + ( GND ) + ( \pwm_inst|pwm_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_inst|pwm_inst|ALT_INV_count\(6),
	cin => \pwm_inst|pwm_inst|Add0~14\,
	sumout => \pwm_inst|pwm_inst|Add0~1_sumout\,
	cout => \pwm_inst|pwm_inst|Add0~2\);

-- Location: FF_X75_Y8_N20
\pwm_inst|pwm_inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_inst|pwm_inst|Add0~1_sumout\,
	sclr => \pwm_inst|pwm_inst|count[7]~0_combout\,
	ena => \pwm_inst|pwm_inst|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_inst|pwm_inst|count\(6));

-- Location: LABCELL_X75_Y8_N21
\pwm_inst|pwm_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|Add0~5_sumout\ = SUM(( \pwm_inst|pwm_inst|count\(7) ) + ( GND ) + ( \pwm_inst|pwm_inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_inst|pwm_inst|ALT_INV_count\(7),
	cin => \pwm_inst|pwm_inst|Add0~2\,
	sumout => \pwm_inst|pwm_inst|Add0~5_sumout\);

-- Location: FF_X75_Y8_N23
\pwm_inst|pwm_inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_inst|pwm_inst|Add0~5_sumout\,
	sclr => \pwm_inst|pwm_inst|count[7]~0_combout\,
	ena => \pwm_inst|pwm_inst|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_inst|pwm_inst|count\(7));

-- Location: IOIBUF_X80_Y0_N18
\y_i[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_i(6),
	o => \y_i[6]~input_o\);

-- Location: FF_X78_Y8_N23
\RegForY[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \y_i[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForY(6));

-- Location: IOIBUF_X78_Y0_N52
\y_i[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_i(7),
	o => \y_i[7]~input_o\);

-- Location: FF_X78_Y8_N41
\RegForY[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \y_i[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForY(7));

-- Location: LABCELL_X77_Y9_N54
\pwm_inst|pwm_inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|Equal0~0_combout\ = ( RegForALU(3) & ( RegForY(7) & ( (!\pwm_inst|pwm_inst|count\(7) & !\pwm_inst|pwm_inst|count\(6)) ) ) ) # ( !RegForALU(3) & ( RegForY(7) & ( (!\pwm_inst|pwm_inst|count\(7) & (RegForALU(4) & 
-- (!\pwm_inst|pwm_inst|count\(6)))) # (\pwm_inst|pwm_inst|count\(7) & (!RegForALU(4) & (!\pwm_inst|pwm_inst|count\(6) $ (RegForY(6))))) ) ) ) # ( RegForALU(3) & ( !RegForY(7) & ( (!\pwm_inst|pwm_inst|count\(7) & !\pwm_inst|pwm_inst|count\(6)) ) ) ) # ( 
-- !RegForALU(3) & ( !RegForY(7) & ( (!\pwm_inst|pwm_inst|count\(7) & (!\pwm_inst|pwm_inst|count\(6) $ (((!RegForALU(4) & RegForY(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000101000101000001010000001100000001001001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_inst|pwm_inst|ALT_INV_count\(7),
	datab => ALT_INV_RegForALU(4),
	datac => \pwm_inst|pwm_inst|ALT_INV_count\(6),
	datad => ALT_INV_RegForY(6),
	datae => ALT_INV_RegForALU(3),
	dataf => ALT_INV_RegForY(7),
	combout => \pwm_inst|pwm_inst|Equal0~0_combout\);

-- Location: LABCELL_X75_Y8_N48
\pwm_inst|pwm_inst|count[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|count[7]~0_combout\ = ( \pwm_inst|pwm_inst|Equal0~1_combout\ & ( ((\pwm_inst|pwm_inst|Equal0~0_combout\ & (\pwm_inst|pwm_inst|Equal0~3_combout\ & \pwm_inst|pwm_inst|Equal0~2_combout\))) # (\rst~input_o\) ) ) # ( 
-- !\pwm_inst|pwm_inst|Equal0~1_combout\ & ( \rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_inst|pwm_inst|ALT_INV_Equal0~0_combout\,
	datab => \pwm_inst|pwm_inst|ALT_INV_Equal0~3_combout\,
	datac => \ALT_INV_rst~input_o\,
	datad => \pwm_inst|pwm_inst|ALT_INV_Equal0~2_combout\,
	dataf => \pwm_inst|pwm_inst|ALT_INV_Equal0~1_combout\,
	combout => \pwm_inst|pwm_inst|count[7]~0_combout\);

-- Location: FF_X75_Y8_N2
\pwm_inst|pwm_inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_inst|pwm_inst|Add0~17_sumout\,
	sclr => \pwm_inst|pwm_inst|count[7]~0_combout\,
	ena => \pwm_inst|pwm_inst|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_inst|pwm_inst|count\(0));

-- Location: LABCELL_X75_Y8_N3
\pwm_inst|pwm_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|Add0~21_sumout\ = SUM(( \pwm_inst|pwm_inst|count\(1) ) + ( GND ) + ( \pwm_inst|pwm_inst|Add0~18\ ))
-- \pwm_inst|pwm_inst|Add0~22\ = CARRY(( \pwm_inst|pwm_inst|count\(1) ) + ( GND ) + ( \pwm_inst|pwm_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_inst|pwm_inst|ALT_INV_count\(1),
	cin => \pwm_inst|pwm_inst|Add0~18\,
	sumout => \pwm_inst|pwm_inst|Add0~21_sumout\,
	cout => \pwm_inst|pwm_inst|Add0~22\);

-- Location: FF_X75_Y8_N5
\pwm_inst|pwm_inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_inst|pwm_inst|Add0~21_sumout\,
	sclr => \pwm_inst|pwm_inst|count[7]~0_combout\,
	ena => \pwm_inst|pwm_inst|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_inst|pwm_inst|count\(1));

-- Location: LABCELL_X75_Y8_N6
\pwm_inst|pwm_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|Add0~25_sumout\ = SUM(( \pwm_inst|pwm_inst|count\(2) ) + ( GND ) + ( \pwm_inst|pwm_inst|Add0~22\ ))
-- \pwm_inst|pwm_inst|Add0~26\ = CARRY(( \pwm_inst|pwm_inst|count\(2) ) + ( GND ) + ( \pwm_inst|pwm_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_inst|pwm_inst|ALT_INV_count\(2),
	cin => \pwm_inst|pwm_inst|Add0~22\,
	sumout => \pwm_inst|pwm_inst|Add0~25_sumout\,
	cout => \pwm_inst|pwm_inst|Add0~26\);

-- Location: FF_X75_Y8_N8
\pwm_inst|pwm_inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_inst|pwm_inst|Add0~25_sumout\,
	sclr => \pwm_inst|pwm_inst|count[7]~0_combout\,
	ena => \pwm_inst|pwm_inst|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_inst|pwm_inst|count\(2));

-- Location: LABCELL_X75_Y8_N9
\pwm_inst|pwm_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|Add0~29_sumout\ = SUM(( \pwm_inst|pwm_inst|count\(3) ) + ( GND ) + ( \pwm_inst|pwm_inst|Add0~26\ ))
-- \pwm_inst|pwm_inst|Add0~30\ = CARRY(( \pwm_inst|pwm_inst|count\(3) ) + ( GND ) + ( \pwm_inst|pwm_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \pwm_inst|pwm_inst|ALT_INV_count\(3),
	cin => \pwm_inst|pwm_inst|Add0~26\,
	sumout => \pwm_inst|pwm_inst|Add0~29_sumout\,
	cout => \pwm_inst|pwm_inst|Add0~30\);

-- Location: FF_X75_Y8_N11
\pwm_inst|pwm_inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_inst|pwm_inst|Add0~29_sumout\,
	sclr => \pwm_inst|pwm_inst|count[7]~0_combout\,
	ena => \pwm_inst|pwm_inst|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_inst|pwm_inst|count\(3));

-- Location: FF_X75_Y8_N14
\pwm_inst|pwm_inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_inst|pwm_inst|Add0~9_sumout\,
	sclr => \pwm_inst|pwm_inst|count[7]~0_combout\,
	ena => \pwm_inst|pwm_inst|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_inst|pwm_inst|count\(4));

-- Location: IOIBUF_X80_Y0_N52
\x_i[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_i(5),
	o => \x_i[5]~input_o\);

-- Location: FF_X79_Y8_N5
\RegForX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_i[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForX(5));

-- Location: IOIBUF_X89_Y11_N61
\x_i[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_i(4),
	o => \x_i[4]~input_o\);

-- Location: FF_X78_Y8_N17
\RegForX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_i[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForX(4));

-- Location: LABCELL_X75_Y8_N30
\pwm_inst|pwm_inst|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|Equal1~1_combout\ = ( RegForX(5) & ( RegForX(4) & ( (!\pwm_inst|pwm_inst|count\(4) & (!\pwm_inst|pwm_inst|count\(5) & ((RegForALU(3)) # (RegForALU(4))))) # (\pwm_inst|pwm_inst|count\(4) & (!RegForALU(4) & (\pwm_inst|pwm_inst|count\(5) & 
-- !RegForALU(3)))) ) ) ) # ( !RegForX(5) & ( RegForX(4) & ( (!\pwm_inst|pwm_inst|count\(5) & (!\pwm_inst|pwm_inst|count\(4) $ (((!RegForALU(4) & !RegForALU(3)))))) ) ) ) # ( RegForX(5) & ( !RegForX(4) & ( (!\pwm_inst|pwm_inst|count\(4) & 
-- (!\pwm_inst|pwm_inst|count\(5) $ (((!RegForALU(4) & !RegForALU(3)))))) ) ) ) # ( !RegForX(5) & ( !RegForX(4) & ( (!\pwm_inst|pwm_inst|count\(4) & !\pwm_inst|pwm_inst|count\(5)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000010010001100000001100000110000000100001011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(4),
	datab => \pwm_inst|pwm_inst|ALT_INV_count\(4),
	datac => \pwm_inst|pwm_inst|ALT_INV_count\(5),
	datad => ALT_INV_RegForALU(3),
	datae => ALT_INV_RegForX(5),
	dataf => ALT_INV_RegForX(4),
	combout => \pwm_inst|pwm_inst|Equal1~1_combout\);

-- Location: IOIBUF_X89_Y8_N38
\x_i[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_i(1),
	o => \x_i[1]~input_o\);

-- Location: FF_X77_Y8_N14
\RegForX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_i[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForX(1));

-- Location: IOIBUF_X76_Y0_N52
\x_i[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_i(0),
	o => \x_i[0]~input_o\);

-- Location: FF_X77_Y8_N2
\RegForX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_i[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForX(0));

-- Location: LABCELL_X75_Y8_N36
\pwm_inst|pwm_inst|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|Equal1~2_combout\ = ( RegForX(1) & ( RegForX(0) & ( (!\pwm_inst|pwm_inst|count\(0) & (!\pwm_inst|pwm_inst|count\(1) & ((RegForALU(3)) # (RegForALU(4))))) # (\pwm_inst|pwm_inst|count\(0) & (!RegForALU(4) & (\pwm_inst|pwm_inst|count\(1) & 
-- !RegForALU(3)))) ) ) ) # ( !RegForX(1) & ( RegForX(0) & ( (!\pwm_inst|pwm_inst|count\(1) & (!\pwm_inst|pwm_inst|count\(0) $ (((!RegForALU(4) & !RegForALU(3)))))) ) ) ) # ( RegForX(1) & ( !RegForX(0) & ( (!\pwm_inst|pwm_inst|count\(0) & 
-- (!\pwm_inst|pwm_inst|count\(1) $ (((!RegForALU(4) & !RegForALU(3)))))) ) ) ) # ( !RegForX(1) & ( !RegForX(0) & ( (!\pwm_inst|pwm_inst|count\(0) & !\pwm_inst|pwm_inst|count\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000001010001010000001100000101000000010010010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_inst|pwm_inst|ALT_INV_count\(0),
	datab => ALT_INV_RegForALU(4),
	datac => \pwm_inst|pwm_inst|ALT_INV_count\(1),
	datad => ALT_INV_RegForALU(3),
	datae => ALT_INV_RegForX(1),
	dataf => ALT_INV_RegForX(0),
	combout => \pwm_inst|pwm_inst|Equal1~2_combout\);

-- Location: IOIBUF_X80_Y0_N35
\x_i[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_i(2),
	o => \x_i[2]~input_o\);

-- Location: FF_X77_Y8_N50
\RegForX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_i[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForX(2));

-- Location: IOIBUF_X89_Y9_N4
\x_i[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_i(3),
	o => \x_i[3]~input_o\);

-- Location: FF_X77_Y9_N2
\RegForX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_i[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForX(3));

-- Location: LABCELL_X75_Y8_N42
\pwm_inst|pwm_inst|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|Equal1~3_combout\ = ( RegForALU(3) & ( RegForX(3) & ( (!\pwm_inst|pwm_inst|count\(3) & !\pwm_inst|pwm_inst|count\(2)) ) ) ) # ( !RegForALU(3) & ( RegForX(3) & ( (!RegForALU(4) & (\pwm_inst|pwm_inst|count\(3) & (!RegForX(2) $ 
-- (\pwm_inst|pwm_inst|count\(2))))) # (RegForALU(4) & (!\pwm_inst|pwm_inst|count\(3) & ((!\pwm_inst|pwm_inst|count\(2))))) ) ) ) # ( RegForALU(3) & ( !RegForX(3) & ( (!\pwm_inst|pwm_inst|count\(3) & !\pwm_inst|pwm_inst|count\(2)) ) ) ) # ( !RegForALU(3) & ( 
-- !RegForX(3) & ( (!\pwm_inst|pwm_inst|count\(3) & (!\pwm_inst|pwm_inst|count\(2) $ (((!RegForALU(4) & RegForX(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000001000110011000000000001100100000000101100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(4),
	datab => \pwm_inst|pwm_inst|ALT_INV_count\(3),
	datac => ALT_INV_RegForX(2),
	datad => \pwm_inst|pwm_inst|ALT_INV_count\(2),
	datae => ALT_INV_RegForALU(3),
	dataf => ALT_INV_RegForX(3),
	combout => \pwm_inst|pwm_inst|Equal1~3_combout\);

-- Location: IOIBUF_X89_Y8_N21
\x_i[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_i(7),
	o => \x_i[7]~input_o\);

-- Location: FF_X79_Y8_N2
\RegForX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_i[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForX(7));

-- Location: IOIBUF_X74_Y0_N92
\x_i[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_i(6),
	o => \x_i[6]~input_o\);

-- Location: FF_X77_Y9_N5
\RegForX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \x_i[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForX(6));

-- Location: LABCELL_X77_Y9_N18
\pwm_inst|pwm_inst|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|Equal1~0_combout\ = ( \pwm_inst|pwm_inst|count\(7) & ( \pwm_inst|pwm_inst|count\(6) & ( (RegForX(7) & (!RegForALU(4) & (RegForX(6) & !RegForALU(3)))) ) ) ) # ( !\pwm_inst|pwm_inst|count\(7) & ( \pwm_inst|pwm_inst|count\(6) & ( 
-- (!RegForX(7) & (!RegForALU(4) & (RegForX(6) & !RegForALU(3)))) ) ) ) # ( \pwm_inst|pwm_inst|count\(7) & ( !\pwm_inst|pwm_inst|count\(6) & ( (RegForX(7) & (!RegForALU(4) & (!RegForX(6) & !RegForALU(3)))) ) ) ) # ( !\pwm_inst|pwm_inst|count\(7) & ( 
-- !\pwm_inst|pwm_inst|count\(6) & ( (((!RegForX(7) & !RegForX(6))) # (RegForALU(3))) # (RegForALU(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011001111111111010000000000000000001000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForX(7),
	datab => ALT_INV_RegForALU(4),
	datac => ALT_INV_RegForX(6),
	datad => ALT_INV_RegForALU(3),
	datae => \pwm_inst|pwm_inst|ALT_INV_count\(7),
	dataf => \pwm_inst|pwm_inst|ALT_INV_count\(6),
	combout => \pwm_inst|pwm_inst|Equal1~0_combout\);

-- Location: LABCELL_X75_Y8_N54
\pwm_inst|pwm_inst|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|Equal1~4_combout\ = ( \pwm_inst|pwm_inst|Equal1~0_combout\ & ( (\pwm_inst|pwm_inst|Equal1~1_combout\ & (\pwm_inst|pwm_inst|Equal1~2_combout\ & \pwm_inst|pwm_inst|Equal1~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_inst|pwm_inst|ALT_INV_Equal1~1_combout\,
	datac => \pwm_inst|pwm_inst|ALT_INV_Equal1~2_combout\,
	datad => \pwm_inst|pwm_inst|ALT_INV_Equal1~3_combout\,
	dataf => \pwm_inst|pwm_inst|ALT_INV_Equal1~0_combout\,
	combout => \pwm_inst|pwm_inst|Equal1~4_combout\);

-- Location: IOIBUF_X72_Y0_N52
\alufn_i[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alufn_i(0),
	o => \alufn_i[0]~input_o\);

-- Location: FF_X78_Y8_N2
\RegForALU[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \alufn_i[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForALU(0));

-- Location: LABCELL_X75_Y8_N51
\pwm_inst|pwm_inst|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|Equal0~4_combout\ = ( \pwm_inst|pwm_inst|Equal0~0_combout\ & ( (\pwm_inst|pwm_inst|Equal0~3_combout\ & (\pwm_inst|pwm_inst|Equal0~2_combout\ & \pwm_inst|pwm_inst|Equal0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \pwm_inst|pwm_inst|ALT_INV_Equal0~3_combout\,
	datac => \pwm_inst|pwm_inst|ALT_INV_Equal0~2_combout\,
	datad => \pwm_inst|pwm_inst|ALT_INV_Equal0~1_combout\,
	dataf => \pwm_inst|pwm_inst|ALT_INV_Equal0~0_combout\,
	combout => \pwm_inst|pwm_inst|Equal0~4_combout\);

-- Location: LABCELL_X75_Y8_N57
\pwm_inst|pwm_inst|intPWM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \pwm_inst|pwm_inst|intPWM~0_combout\ = ( \pwm_inst|pwm_inst|Equal0~4_combout\ & ( !\pwm_inst|pwm_inst|Equal1~4_combout\ $ (!RegForALU(0)) ) ) # ( !\pwm_inst|pwm_inst|Equal0~4_combout\ & ( (!\pwm_inst|pwm_inst|Equal1~4_combout\ & 
-- ((\pwm_inst|pwm_inst|intPWM~q\))) # (\pwm_inst|pwm_inst|Equal1~4_combout\ & (!RegForALU(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111010010100001111101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \pwm_inst|pwm_inst|ALT_INV_Equal1~4_combout\,
	datac => ALT_INV_RegForALU(0),
	datad => \pwm_inst|pwm_inst|ALT_INV_intPWM~q\,
	dataf => \pwm_inst|pwm_inst|ALT_INV_Equal0~4_combout\,
	combout => \pwm_inst|pwm_inst|intPWM~0_combout\);

-- Location: FF_X75_Y8_N58
\pwm_inst|pwm_inst|intPWM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \pwm_inst|pwm_inst|intPWM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_inst|pwm_inst|intPWM~q\);

-- Location: MLABCELL_X78_Y7_N3
\intOUTputForPWM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \intOUTputForPWM~0_combout\ = ( \pwm_inst|pwm_inst|intPWM~q\ & ( !\alufn_i[3]~input_o\ & ( !\alufn_i[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_alufn_i[4]~input_o\,
	datae => \pwm_inst|pwm_inst|ALT_INV_intPWM~q\,
	dataf => \ALT_INV_alufn_i[3]~input_o\,
	combout => \intOUTputForPWM~0_combout\);

-- Location: FF_X78_Y7_N4
\pwm_o~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \intOUTputForPWM~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pwm_o~reg0_q\);

-- Location: IOIBUF_X76_Y0_N35
\alufn_i[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alufn_i(1),
	o => \alufn_i[1]~input_o\);

-- Location: FF_X77_Y8_N35
\RegForALU[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \alufn_i[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForALU(1));

-- Location: MLABCELL_X78_Y7_N39
\alu_inst|yAdd[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|yAdd[7]~0_combout\ = ( RegForY(7) & ( (!RegForALU(1)) # (RegForALU(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RegForALU(1),
	datad => ALT_INV_RegForALU(0),
	dataf => ALT_INV_RegForY(7),
	combout => \alu_inst|yAdd[7]~0_combout\);

-- Location: IOIBUF_X80_Y0_N1
\alufn_i[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alufn_i(2),
	o => \alufn_i[2]~input_o\);

-- Location: FF_X77_Y8_N53
\RegForALU[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \alufn_i[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RegForALU(2));

-- Location: LABCELL_X77_Y8_N54
\alu_inst|negAdd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|negAdd~0_combout\ = ( RegForALU(3) & ( (!RegForALU(4) & (!RegForALU(2) & (!RegForALU(1) $ (!RegForALU(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000100000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(1),
	datab => ALT_INV_RegForALU(4),
	datac => ALT_INV_RegForALU(2),
	datad => ALT_INV_RegForALU(0),
	dataf => ALT_INV_RegForALU(3),
	combout => \alu_inst|negAdd~0_combout\);

-- Location: MLABCELL_X78_Y7_N36
\alu_inst|AddSub_inst|FAN:7:FA_i_instance|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|FAN:7:FA_i_instance|s~0_combout\ = ( RegForX(7) & ( !\alu_inst|yAdd[7]~0_combout\ $ (\alu_inst|negAdd~0_combout\) ) ) # ( !RegForX(7) & ( !\alu_inst|yAdd[7]~0_combout\ $ (!\alu_inst|negAdd~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_inst|ALT_INV_yAdd[7]~0_combout\,
	datac => \alu_inst|ALT_INV_negAdd~0_combout\,
	dataf => ALT_INV_RegForX(7),
	combout => \alu_inst|AddSub_inst|FAN:7:FA_i_instance|s~0_combout\);

-- Location: MLABCELL_X78_Y8_N15
\alu_inst|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Equal6~0_combout\ = ( RegForALU(1) & ( !RegForALU(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(0),
	dataf => ALT_INV_RegForALU(1),
	combout => \alu_inst|Equal6~0_combout\);

-- Location: LABCELL_X77_Y9_N3
\alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\ = (!\alu_inst|Equal6~0_combout\ & (RegForY(6) & (!\alu_inst|negAdd~0_combout\ $ (!RegForX(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000000000100010000000000010001000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_Equal6~0_combout\,
	datab => ALT_INV_RegForY(6),
	datac => \alu_inst|ALT_INV_negAdd~0_combout\,
	datad => ALT_INV_RegForX(6),
	combout => \alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\);

-- Location: LABCELL_X77_Y9_N36
\alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0_combout\ = ( RegForX(5) & ( (!\alu_inst|Equal6~0_combout\ & (!\alu_inst|negAdd~0_combout\ & RegForY(5))) ) ) # ( !RegForX(5) & ( (!\alu_inst|Equal6~0_combout\ & (\alu_inst|negAdd~0_combout\ & RegForY(5))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_Equal6~0_combout\,
	datab => \alu_inst|ALT_INV_negAdd~0_combout\,
	datad => ALT_INV_RegForY(5),
	dataf => ALT_INV_RegForX(5),
	combout => \alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0_combout\);

-- Location: LABCELL_X79_Y8_N12
\alu_inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux0~0_combout\ = ( RegForALU(1) & ( (!RegForALU(4) & (!RegForALU(0) & RegForALU(3))) ) ) # ( !RegForALU(1) & ( (!RegForALU(4) & RegForALU(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(4),
	datab => ALT_INV_RegForALU(0),
	datad => ALT_INV_RegForALU(3),
	dataf => ALT_INV_RegForALU(1),
	combout => \alu_inst|Mux0~0_combout\);

-- Location: LABCELL_X77_Y9_N15
\alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\ = ( \alu_inst|Equal6~0_combout\ & ( !\alu_inst|negAdd~0_combout\ $ (RegForX(6)) ) ) # ( !\alu_inst|Equal6~0_combout\ & ( (!RegForY(6) & (!\alu_inst|negAdd~0_combout\ $ (RegForX(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_negAdd~0_combout\,
	datac => ALT_INV_RegForY(6),
	datad => ALT_INV_RegForX(6),
	dataf => \alu_inst|ALT_INV_Equal6~0_combout\,
	combout => \alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\);

-- Location: MLABCELL_X78_Y8_N12
\alu_inst|yAdd[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|yAdd[4]~1_combout\ = ( RegForALU(1) & ( (RegForALU(0) & RegForY(4)) ) ) # ( !RegForALU(1) & ( RegForY(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(0),
	datac => ALT_INV_RegForY(4),
	dataf => ALT_INV_RegForALU(1),
	combout => \alu_inst|yAdd[4]~1_combout\);

-- Location: MLABCELL_X78_Y8_N30
\alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\ = ( !\alu_inst|yAdd[4]~1_combout\ & ( !RegForX(4) $ (\alu_inst|negAdd~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RegForX(4),
	datad => \alu_inst|ALT_INV_negAdd~0_combout\,
	dataf => \alu_inst|ALT_INV_yAdd[4]~1_combout\,
	combout => \alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\);

-- Location: MLABCELL_X78_Y8_N24
\alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\ = ( \alu_inst|negAdd~0_combout\ & ( \alu_inst|yAdd[4]~1_combout\ & ( !RegForX(4) ) ) ) # ( !\alu_inst|negAdd~0_combout\ & ( \alu_inst|yAdd[4]~1_combout\ & ( RegForX(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RegForX(4),
	datae => \alu_inst|ALT_INV_negAdd~0_combout\,
	dataf => \alu_inst|ALT_INV_yAdd[4]~1_combout\,
	combout => \alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\);

-- Location: MLABCELL_X78_Y9_N3
\alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~1_combout\ = ( \alu_inst|Equal6~0_combout\ & ( !\alu_inst|negAdd~0_combout\ $ (RegForX(5)) ) ) # ( !\alu_inst|Equal6~0_combout\ & ( (!RegForY(5) & (!\alu_inst|negAdd~0_combout\ $ (RegForX(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_negAdd~0_combout\,
	datac => ALT_INV_RegForY(5),
	datad => ALT_INV_RegForX(5),
	dataf => \alu_inst|ALT_INV_Equal6~0_combout\,
	combout => \alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~1_combout\);

-- Location: LABCELL_X77_Y9_N39
\alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\ = ( RegForY(3) & ( (\alu_inst|Equal6~0_combout\ & (!\alu_inst|negAdd~0_combout\ $ (RegForX(3)))) ) ) # ( !RegForY(3) & ( !\alu_inst|negAdd~0_combout\ $ (RegForX(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011110011000011001101000100000100010100010000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_Equal6~0_combout\,
	datab => \alu_inst|ALT_INV_negAdd~0_combout\,
	datad => ALT_INV_RegForX(3),
	dataf => ALT_INV_RegForY(3),
	combout => \alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\);

-- Location: LABCELL_X77_Y9_N12
\alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\ = ( !\alu_inst|Equal6~0_combout\ & ( (RegForY(3) & (!\alu_inst|negAdd~0_combout\ $ (!RegForX(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_negAdd~0_combout\,
	datac => ALT_INV_RegForY(3),
	datad => ALT_INV_RegForX(3),
	dataf => \alu_inst|ALT_INV_Equal6~0_combout\,
	combout => \alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\);

-- Location: MLABCELL_X78_Y8_N33
\alu_inst|yAdd[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|yAdd[2]~2_combout\ = ( RegForALU(1) & ( (RegForALU(0) & RegForY(2)) ) ) # ( !RegForALU(1) & ( RegForY(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(0),
	datad => ALT_INV_RegForY(2),
	dataf => ALT_INV_RegForALU(1),
	combout => \alu_inst|yAdd[2]~2_combout\);

-- Location: LABCELL_X77_Y8_N51
\alu_inst|AddSub_inst|FA0|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|FA0|cout~0_combout\ = ( RegForX(0) & ( (RegForY(0) & ((!RegForALU(1)) # (RegForALU(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(0),
	datab => ALT_INV_RegForALU(1),
	datac => ALT_INV_RegForY(0),
	dataf => ALT_INV_RegForX(0),
	combout => \alu_inst|AddSub_inst|FA0|cout~0_combout\);

-- Location: LABCELL_X77_Y8_N57
\alu_inst|yAdd[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|yAdd[1]~3_combout\ = ( RegForY(1) & ( (!RegForALU(1)) # (RegForALU(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(1),
	datad => ALT_INV_RegForALU(0),
	dataf => ALT_INV_RegForY(1),
	combout => \alu_inst|yAdd[1]~3_combout\);

-- Location: LABCELL_X77_Y8_N30
\alu_inst|AddSub_inst|xForAdder[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|xForAdder\(2) = ( RegForALU(1) & ( RegForX(2) & ( (((!RegForALU(3)) # (RegForALU(0))) # (RegForALU(4))) # (RegForALU(2)) ) ) ) # ( !RegForALU(1) & ( RegForX(2) & ( (((!RegForALU(0)) # (!RegForALU(3))) # (RegForALU(4))) # 
-- (RegForALU(2)) ) ) ) # ( RegForALU(1) & ( !RegForX(2) & ( (!RegForALU(2) & (!RegForALU(4) & (!RegForALU(0) & RegForALU(3)))) ) ) ) # ( !RegForALU(1) & ( !RegForX(2) & ( (!RegForALU(2) & (!RegForALU(4) & (RegForALU(0) & RegForALU(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000001000000011111111111101111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(2),
	datab => ALT_INV_RegForALU(4),
	datac => ALT_INV_RegForALU(0),
	datad => ALT_INV_RegForALU(3),
	datae => ALT_INV_RegForALU(1),
	dataf => ALT_INV_RegForX(2),
	combout => \alu_inst|AddSub_inst|xForAdder\(2));

-- Location: LABCELL_X77_Y8_N0
\alu_inst|AddSub_inst|FA0|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|FA0|cout~1_combout\ = ( !RegForX(0) & ( !RegForALU(2) & ( (!RegForALU(4) & (RegForALU(3) & (!RegForALU(1) $ (!RegForALU(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(1),
	datab => ALT_INV_RegForALU(4),
	datac => ALT_INV_RegForALU(0),
	datad => ALT_INV_RegForALU(3),
	datae => ALT_INV_RegForX(0),
	dataf => ALT_INV_RegForALU(2),
	combout => \alu_inst|AddSub_inst|FA0|cout~1_combout\);

-- Location: LABCELL_X77_Y8_N33
\alu_inst|AddSub_inst|xForAdder[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|xForAdder\(1) = ( RegForALU(1) & ( RegForX(1) & ( (((!RegForALU(3)) # (RegForALU(0))) # (RegForALU(4))) # (RegForALU(2)) ) ) ) # ( !RegForALU(1) & ( RegForX(1) & ( (((!RegForALU(3)) # (!RegForALU(0))) # (RegForALU(4))) # 
-- (RegForALU(2)) ) ) ) # ( RegForALU(1) & ( !RegForX(1) & ( (!RegForALU(2) & (!RegForALU(4) & (RegForALU(3) & !RegForALU(0)))) ) ) ) # ( !RegForALU(1) & ( !RegForX(1) & ( (!RegForALU(2) & (!RegForALU(4) & (RegForALU(3) & RegForALU(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000010000000000011111111111101111111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(2),
	datab => ALT_INV_RegForALU(4),
	datac => ALT_INV_RegForALU(3),
	datad => ALT_INV_RegForALU(0),
	datae => ALT_INV_RegForALU(1),
	dataf => ALT_INV_RegForX(1),
	combout => \alu_inst|AddSub_inst|xForAdder\(1));

-- Location: LABCELL_X77_Y8_N36
\alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\ = ( \alu_inst|AddSub_inst|FA0|cout~1_combout\ & ( \alu_inst|AddSub_inst|xForAdder\(1) & ( (!\alu_inst|yAdd[2]~2_combout\ & !\alu_inst|AddSub_inst|xForAdder\(2)) ) ) ) # ( 
-- !\alu_inst|AddSub_inst|FA0|cout~1_combout\ & ( \alu_inst|AddSub_inst|xForAdder\(1) & ( (!\alu_inst|yAdd[2]~2_combout\ & ((!\alu_inst|AddSub_inst|xForAdder\(2)) # ((!\alu_inst|AddSub_inst|FA0|cout~0_combout\ & !\alu_inst|yAdd[1]~3_combout\)))) # 
-- (\alu_inst|yAdd[2]~2_combout\ & (!\alu_inst|AddSub_inst|FA0|cout~0_combout\ & (!\alu_inst|yAdd[1]~3_combout\ & !\alu_inst|AddSub_inst|xForAdder\(2)))) ) ) ) # ( \alu_inst|AddSub_inst|FA0|cout~1_combout\ & ( !\alu_inst|AddSub_inst|xForAdder\(1) & ( 
-- (!\alu_inst|yAdd[2]~2_combout\ & ((!\alu_inst|yAdd[1]~3_combout\) # (!\alu_inst|AddSub_inst|xForAdder\(2)))) # (\alu_inst|yAdd[2]~2_combout\ & (!\alu_inst|yAdd[1]~3_combout\ & !\alu_inst|AddSub_inst|xForAdder\(2))) ) ) ) # ( 
-- !\alu_inst|AddSub_inst|FA0|cout~1_combout\ & ( !\alu_inst|AddSub_inst|xForAdder\(1) & ( (!\alu_inst|yAdd[2]~2_combout\ & ((!\alu_inst|AddSub_inst|FA0|cout~0_combout\) # ((!\alu_inst|yAdd[1]~3_combout\) # (!\alu_inst|AddSub_inst|xForAdder\(2))))) # 
-- (\alu_inst|yAdd[2]~2_combout\ & (!\alu_inst|AddSub_inst|xForAdder\(2) & ((!\alu_inst|AddSub_inst|FA0|cout~0_combout\) # (!\alu_inst|yAdd[1]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111010101000111110101010000011101010100000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_yAdd[2]~2_combout\,
	datab => \alu_inst|AddSub_inst|FA0|ALT_INV_cout~0_combout\,
	datac => \alu_inst|ALT_INV_yAdd[1]~3_combout\,
	datad => \alu_inst|AddSub_inst|ALT_INV_xForAdder\(2),
	datae => \alu_inst|AddSub_inst|FA0|ALT_INV_cout~1_combout\,
	dataf => \alu_inst|AddSub_inst|ALT_INV_xForAdder\(1),
	combout => \alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\);

-- Location: MLABCELL_X78_Y9_N6
\alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ = ( \alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\ & ( \alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\ & ( (!\alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~1_combout\ & 
-- ((!\alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\) # (\alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\))) ) ) ) # ( !\alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\ & ( 
-- \alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\ & ( (\alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\ & !\alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~1_combout\) ) ) ) # ( \alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\ & ( 
-- !\alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\ & ( (!\alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~1_combout\ & ((!\alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\) # (\alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\))) ) ) 
-- ) # ( !\alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\ & ( !\alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\ & ( (!\alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~1_combout\ & (((!\alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\ 
-- & !\alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\)) # (\alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000110000101100001011000000110000001100001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~1_combout\,
	datab => \alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~0_combout\,
	datac => \alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~1_combout\,
	datad => \alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~1_combout\,
	datae => \alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~0_combout\,
	dataf => \alu_inst|AddSub_inst|FAN:2:FA_i_instance|ALT_INV_cout~0_combout\,
	combout => \alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\);

-- Location: MLABCELL_X78_Y9_N12
\alu_inst|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux0~1_combout\ = ( \alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\ & ( \alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ & ( (\alu_inst|Mux0~0_combout\ & (!\alu_inst|AddSub_inst|FAN:7:FA_i_instance|s~0_combout\ $ 
-- (!\alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\))) ) ) ) # ( !\alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\ & ( \alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ & ( (!\alu_inst|AddSub_inst|FAN:7:FA_i_instance|s~0_combout\ 
-- & \alu_inst|Mux0~0_combout\) ) ) ) # ( \alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\ & ( !\alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ & ( (\alu_inst|Mux0~0_combout\ & (!\alu_inst|AddSub_inst|FAN:7:FA_i_instance|s~0_combout\ $ 
-- (!\alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\))) ) ) ) # ( !\alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\ & ( !\alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ & ( (\alu_inst|Mux0~0_combout\ & 
-- (!\alu_inst|AddSub_inst|FAN:7:FA_i_instance|s~0_combout\ $ (((!\alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\ & !\alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001101010000000000110011000000000101010100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|AddSub_inst|FAN:7:FA_i_instance|ALT_INV_s~0_combout\,
	datab => \alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~0_combout\,
	datac => \alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~0_combout\,
	datad => \alu_inst|ALT_INV_Mux0~0_combout\,
	datae => \alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~1_combout\,
	dataf => \alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~2_combout\,
	combout => \alu_inst|Mux0~1_combout\);

-- Location: LABCELL_X79_Y8_N48
\alu_inst|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux0~2_combout\ = ( RegForALU(0) & ( (!RegForALU(4) & ((!RegForALU(3)) # (RegForALU(1)))) ) ) # ( !RegForALU(0) & ( (!RegForALU(3) & ((!RegForALU(4)) # (!RegForALU(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RegForALU(3),
	datac => ALT_INV_RegForALU(4),
	datad => ALT_INV_RegForALU(1),
	dataf => ALT_INV_RegForALU(0),
	combout => \alu_inst|Mux0~2_combout\);

-- Location: MLABCELL_X78_Y7_N15
\alu_inst|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux0~3_combout\ = ( RegForALU(0) & ( RegForALU(3) & ( (!RegForALU(4) & !RegForALU(1)) ) ) ) # ( !RegForALU(0) & ( RegForALU(3) & ( !RegForALU(4) ) ) ) # ( !RegForALU(0) & ( !RegForALU(3) & ( (RegForALU(4) & !RegForALU(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000010101010101010101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(4),
	datac => ALT_INV_RegForALU(1),
	datae => ALT_INV_RegForALU(0),
	dataf => ALT_INV_RegForALU(3),
	combout => \alu_inst|Mux0~3_combout\);

-- Location: LABCELL_X79_Y8_N51
\alu_inst|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux0~4_combout\ = ( RegForALU(2) & ( (RegForALU(1)) # (RegForALU(3)) ) ) # ( !RegForALU(2) & ( (!RegForALU(3) & RegForALU(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RegForALU(3),
	datac => ALT_INV_RegForALU(1),
	dataf => ALT_INV_RegForALU(2),
	combout => \alu_inst|Mux0~4_combout\);

-- Location: MLABCELL_X78_Y8_N45
\alu_inst|Shift_inst|horiz[0][7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Shift_inst|horiz[0][7]~1_combout\ = ( RegForY(0) & ( RegForY(1) & ( ((!RegForX(0) & (RegForY(7))) # (RegForX(0) & ((RegForY(6))))) # (RegForALU(0)) ) ) ) # ( !RegForY(0) & ( RegForY(1) & ( (!RegForALU(0) & ((!RegForX(0) & (RegForY(7))) # 
-- (RegForX(0) & ((RegForY(6)))))) # (RegForALU(0) & (((RegForX(0))))) ) ) ) # ( RegForY(0) & ( !RegForY(1) & ( (!RegForALU(0) & ((!RegForX(0) & (RegForY(7))) # (RegForX(0) & ((RegForY(6)))))) # (RegForALU(0) & (((!RegForX(0))))) ) ) ) # ( !RegForY(0) & ( 
-- !RegForY(1) & ( (!RegForALU(0) & ((!RegForX(0) & (RegForY(7))) # (RegForX(0) & ((RegForY(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010011100000111101000100101001011110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(0),
	datab => ALT_INV_RegForY(7),
	datac => ALT_INV_RegForX(0),
	datad => ALT_INV_RegForY(6),
	datae => ALT_INV_RegForY(0),
	dataf => ALT_INV_RegForY(1),
	combout => \alu_inst|Shift_inst|horiz[0][7]~1_combout\);

-- Location: MLABCELL_X78_Y8_N51
\alu_inst|Shift_inst|horiz[0][1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Shift_inst|horiz[0][1]~4_combout\ = ( RegForALU(0) & ( RegForX(0) & ( RegForY(7) ) ) ) # ( !RegForALU(0) & ( RegForX(0) & ( RegForY(0) ) ) ) # ( RegForALU(0) & ( !RegForX(0) & ( RegForY(6) ) ) ) # ( !RegForALU(0) & ( !RegForX(0) & ( RegForY(1) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForY(6),
	datab => ALT_INV_RegForY(7),
	datac => ALT_INV_RegForY(1),
	datad => ALT_INV_RegForY(0),
	datae => ALT_INV_RegForALU(0),
	dataf => ALT_INV_RegForX(0),
	combout => \alu_inst|Shift_inst|horiz[0][1]~4_combout\);

-- Location: LABCELL_X77_Y8_N42
\alu_inst|Shift_inst|horiz[0][3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Shift_inst|horiz[0][3]~3_combout\ = ( RegForY(2) & ( RegForY(3) & ( (!RegForALU(0)) # ((!RegForX(0) & ((RegForY(4)))) # (RegForX(0) & (RegForY(5)))) ) ) ) # ( !RegForY(2) & ( RegForY(3) & ( (!RegForALU(0) & (!RegForX(0))) # (RegForALU(0) & 
-- ((!RegForX(0) & ((RegForY(4)))) # (RegForX(0) & (RegForY(5))))) ) ) ) # ( RegForY(2) & ( !RegForY(3) & ( (!RegForALU(0) & (RegForX(0))) # (RegForALU(0) & ((!RegForX(0) & ((RegForY(4)))) # (RegForX(0) & (RegForY(5))))) ) ) ) # ( !RegForY(2) & ( !RegForY(3) 
-- & ( (RegForALU(0) & ((!RegForX(0) & ((RegForY(4)))) # (RegForX(0) & (RegForY(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101001000110110011110001001110011011010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(0),
	datab => ALT_INV_RegForX(0),
	datac => ALT_INV_RegForY(5),
	datad => ALT_INV_RegForY(4),
	datae => ALT_INV_RegForY(2),
	dataf => ALT_INV_RegForY(3),
	combout => \alu_inst|Shift_inst|horiz[0][3]~3_combout\);

-- Location: LABCELL_X79_Y9_N15
\alu_inst|Shift_inst|horiz[0][5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Shift_inst|horiz[0][5]~2_combout\ = ( RegForX(0) & ( RegForALU(0) & ( RegForY(3) ) ) ) # ( !RegForX(0) & ( RegForALU(0) & ( RegForY(2) ) ) ) # ( RegForX(0) & ( !RegForALU(0) & ( RegForY(4) ) ) ) # ( !RegForX(0) & ( !RegForALU(0) & ( RegForY(5) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForY(4),
	datab => ALT_INV_RegForY(2),
	datac => ALT_INV_RegForY(5),
	datad => ALT_INV_RegForY(3),
	datae => ALT_INV_RegForX(0),
	dataf => ALT_INV_RegForALU(0),
	combout => \alu_inst|Shift_inst|horiz[0][5]~2_combout\);

-- Location: MLABCELL_X78_Y7_N21
\alu_inst|Shift_inst|horiz[2][7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Shift_inst|horiz[2][7]~5_combout\ = ( \alu_inst|Shift_inst|horiz[0][3]~3_combout\ & ( \alu_inst|Shift_inst|horiz[0][5]~2_combout\ & ( (!RegForX(1) & (((RegForX(2))) # (\alu_inst|Shift_inst|horiz[0][7]~1_combout\))) # (RegForX(1) & 
-- (((!RegForX(2)) # (\alu_inst|Shift_inst|horiz[0][1]~4_combout\)))) ) ) ) # ( !\alu_inst|Shift_inst|horiz[0][3]~3_combout\ & ( \alu_inst|Shift_inst|horiz[0][5]~2_combout\ & ( (!RegForX(1) & (\alu_inst|Shift_inst|horiz[0][7]~1_combout\ & (!RegForX(2)))) # 
-- (RegForX(1) & (((!RegForX(2)) # (\alu_inst|Shift_inst|horiz[0][1]~4_combout\)))) ) ) ) # ( \alu_inst|Shift_inst|horiz[0][3]~3_combout\ & ( !\alu_inst|Shift_inst|horiz[0][5]~2_combout\ & ( (!RegForX(1) & (((RegForX(2))) # 
-- (\alu_inst|Shift_inst|horiz[0][7]~1_combout\))) # (RegForX(1) & (((RegForX(2) & \alu_inst|Shift_inst|horiz[0][1]~4_combout\)))) ) ) ) # ( !\alu_inst|Shift_inst|horiz[0][3]~3_combout\ & ( !\alu_inst|Shift_inst|horiz[0][5]~2_combout\ & ( (!RegForX(1) & 
-- (\alu_inst|Shift_inst|horiz[0][7]~1_combout\ & (!RegForX(2)))) # (RegForX(1) & (((RegForX(2) & \alu_inst|Shift_inst|horiz[0][1]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Shift_inst|ALT_INV_horiz[0][7]~1_combout\,
	datab => ALT_INV_RegForX(1),
	datac => ALT_INV_RegForX(2),
	datad => \alu_inst|Shift_inst|ALT_INV_horiz[0][1]~4_combout\,
	datae => \alu_inst|Shift_inst|ALT_INV_horiz[0][3]~3_combout\,
	dataf => \alu_inst|Shift_inst|ALT_INV_horiz[0][5]~2_combout\,
	combout => \alu_inst|Shift_inst|horiz[2][7]~5_combout\);

-- Location: LABCELL_X79_Y8_N15
\alu_inst|Shift_inst|horiz[0][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Shift_inst|horiz[0][0]~0_combout\ = ( !RegForX(0) & ( (!RegForALU(0) & ((RegForY(0)))) # (RegForALU(0) & (RegForY(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RegForALU(0),
	datac => ALT_INV_RegForY(7),
	datad => ALT_INV_RegForY(0),
	dataf => ALT_INV_RegForX(0),
	combout => \alu_inst|Shift_inst|horiz[0][0]~0_combout\);

-- Location: LABCELL_X77_Y8_N48
\alu_inst|Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux0~6_combout\ = ( RegForALU(3) & ( (RegForALU(2) & ((!RegForALU(1)) # (RegForALU(0)))) ) ) # ( !RegForALU(3) & ( !RegForALU(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(0),
	datab => ALT_INV_RegForALU(1),
	datac => ALT_INV_RegForALU(2),
	dataf => ALT_INV_RegForALU(3),
	combout => \alu_inst|Mux0~6_combout\);

-- Location: LABCELL_X79_Y8_N3
\alu_inst|Mux0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux0~7_combout\ = ( RegForX(7) & ( RegForALU(0) & ( (!RegForALU(1)) # (!RegForY(7)) ) ) ) # ( !RegForX(7) & ( RegForALU(0) & ( RegForY(7) ) ) ) # ( RegForX(7) & ( !RegForALU(0) & ( !RegForALU(1) $ (RegForY(7)) ) ) ) # ( !RegForX(7) & ( 
-- !RegForALU(0) & ( (!RegForALU(1) & !RegForY(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000111100001100001111000011111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RegForALU(1),
	datac => ALT_INV_RegForY(7),
	datae => ALT_INV_RegForX(7),
	dataf => ALT_INV_RegForALU(0),
	combout => \alu_inst|Mux0~7_combout\);

-- Location: LABCELL_X79_Y8_N30
\alu_inst|Mux0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux0~8_combout\ = ( RegForX(2) & ( (!\alu_inst|Mux0~6_combout\ & \alu_inst|Mux0~7_combout\) ) ) # ( !RegForX(2) & ( (!\alu_inst|Mux0~6_combout\ & (((\alu_inst|Mux0~7_combout\)))) # (\alu_inst|Mux0~6_combout\ & (!RegForX(1) & 
-- (\alu_inst|Shift_inst|horiz[0][0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011110010000000101111001000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForX(1),
	datab => \alu_inst|Shift_inst|ALT_INV_horiz[0][0]~0_combout\,
	datac => \alu_inst|ALT_INV_Mux0~6_combout\,
	datad => \alu_inst|ALT_INV_Mux0~7_combout\,
	dataf => ALT_INV_RegForX(2),
	combout => \alu_inst|Mux0~8_combout\);

-- Location: LABCELL_X79_Y8_N27
\alu_inst|Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux0~5_combout\ = ( RegForX(7) & ( RegForY(7) & ( (RegForALU(2) & (RegForALU(0) & (RegForALU(1) & RegForALU(3)))) ) ) ) # ( !RegForX(7) & ( RegForY(7) & ( (RegForALU(2) & (RegForALU(0) & (!RegForALU(1) & RegForALU(3)))) ) ) ) # ( RegForX(7) & ( 
-- !RegForY(7) & ( (RegForALU(2) & (RegForALU(0) & (!RegForALU(1) & RegForALU(3)))) ) ) ) # ( !RegForX(7) & ( !RegForY(7) & ( (RegForALU(2) & (RegForALU(3) & ((!RegForALU(1)) # (RegForALU(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010001000000000001000000000000000100000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(2),
	datab => ALT_INV_RegForALU(0),
	datac => ALT_INV_RegForALU(1),
	datad => ALT_INV_RegForALU(3),
	datae => ALT_INV_RegForX(7),
	dataf => ALT_INV_RegForY(7),
	combout => \alu_inst|Mux0~5_combout\);

-- Location: MLABCELL_X78_Y9_N18
\alu_inst|Mux0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux0~9_combout\ = ( \alu_inst|Mux0~8_combout\ & ( \alu_inst|Mux0~5_combout\ & ( (!\alu_inst|Mux0~2_combout\ & (!\alu_inst|Mux0~3_combout\)) # (\alu_inst|Mux0~2_combout\ & (\alu_inst|Mux0~3_combout\ & \alu_inst|Shift_inst|horiz[2][7]~5_combout\)) 
-- ) ) ) # ( !\alu_inst|Mux0~8_combout\ & ( \alu_inst|Mux0~5_combout\ & ( (!\alu_inst|Mux0~2_combout\ & (!\alu_inst|Mux0~3_combout\)) # (\alu_inst|Mux0~2_combout\ & (\alu_inst|Mux0~3_combout\ & \alu_inst|Shift_inst|horiz[2][7]~5_combout\)) ) ) ) # ( 
-- \alu_inst|Mux0~8_combout\ & ( !\alu_inst|Mux0~5_combout\ & ( (!\alu_inst|Mux0~2_combout\ & (!\alu_inst|Mux0~3_combout\ & (!\alu_inst|Mux0~4_combout\))) # (\alu_inst|Mux0~2_combout\ & (\alu_inst|Mux0~3_combout\ & 
-- ((\alu_inst|Shift_inst|horiz[2][7]~5_combout\)))) ) ) ) # ( !\alu_inst|Mux0~8_combout\ & ( !\alu_inst|Mux0~5_combout\ & ( (\alu_inst|Mux0~2_combout\ & (\alu_inst|Mux0~3_combout\ & \alu_inst|Shift_inst|horiz[2][7]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001100000001001000110001000100110011000100010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_Mux0~2_combout\,
	datab => \alu_inst|ALT_INV_Mux0~3_combout\,
	datac => \alu_inst|ALT_INV_Mux0~4_combout\,
	datad => \alu_inst|Shift_inst|ALT_INV_horiz[2][7]~5_combout\,
	datae => \alu_inst|ALT_INV_Mux0~8_combout\,
	dataf => \alu_inst|ALT_INV_Mux0~5_combout\,
	combout => \alu_inst|Mux0~9_combout\);

-- Location: MLABCELL_X78_Y7_N27
\ov_flag_o~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ov_flag_o~0_combout\ = ( RegForALU(3) & ( (!RegForALU(1) & (!RegForALU(4) & ((\alufn_i[4]~input_o\) # (\alufn_i[3]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001001100000000000100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alufn_i[3]~input_o\,
	datab => ALT_INV_RegForALU(1),
	datac => \ALT_INV_alufn_i[4]~input_o\,
	datad => ALT_INV_RegForALU(4),
	dataf => ALT_INV_RegForALU(3),
	combout => \ov_flag_o~0_combout\);

-- Location: MLABCELL_X78_Y7_N30
\ov_flag_o~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ov_flag_o~1_combout\ = ( \ov_flag_o~0_combout\ & ( RegForX(7) & ( (!\alu_inst|yAdd[7]~0_combout\ & (RegForALU(0) & ((\alu_inst|Mux0~9_combout\) # (\alu_inst|Mux0~1_combout\)))) # (\alu_inst|yAdd[7]~0_combout\ & (!\alu_inst|Mux0~1_combout\ & 
-- (!RegForALU(0) & !\alu_inst|Mux0~9_combout\))) ) ) ) # ( \ov_flag_o~0_combout\ & ( !RegForX(7) & ( (!\alu_inst|yAdd[7]~0_combout\ & (!RegForALU(0) & ((\alu_inst|Mux0~9_combout\) # (\alu_inst|Mux0~1_combout\)))) # (\alu_inst|yAdd[7]~0_combout\ & 
-- (!\alu_inst|Mux0~1_combout\ & (RegForALU(0) & !\alu_inst|Mux0~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000101100000000000000000000000010010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_Mux0~1_combout\,
	datab => \alu_inst|ALT_INV_yAdd[7]~0_combout\,
	datac => ALT_INV_RegForALU(0),
	datad => \alu_inst|ALT_INV_Mux0~9_combout\,
	datae => \ALT_INV_ov_flag_o~0_combout\,
	dataf => ALT_INV_RegForX(7),
	combout => \ov_flag_o~1_combout\);

-- Location: LABCELL_X77_Y7_N39
\alu_inst|AddSub_inst|FAN:1:FA_i_instance|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|FAN:1:FA_i_instance|s~combout\ = ( \alu_inst|AddSub_inst|xForAdder\(1) & ( !\alu_inst|yAdd[1]~3_combout\ $ (((\alu_inst|AddSub_inst|FA0|cout~0_combout\) # (\alu_inst|AddSub_inst|FA0|cout~1_combout\))) ) ) # ( 
-- !\alu_inst|AddSub_inst|xForAdder\(1) & ( !\alu_inst|yAdd[1]~3_combout\ $ (((!\alu_inst|AddSub_inst|FA0|cout~1_combout\ & !\alu_inst|AddSub_inst|FA0|cout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110000010110101111000010100101000011111010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|AddSub_inst|FA0|ALT_INV_cout~1_combout\,
	datac => \alu_inst|ALT_INV_yAdd[1]~3_combout\,
	datad => \alu_inst|AddSub_inst|FA0|ALT_INV_cout~0_combout\,
	dataf => \alu_inst|AddSub_inst|ALT_INV_xForAdder\(1),
	combout => \alu_inst|AddSub_inst|FAN:1:FA_i_instance|s~combout\);

-- Location: LABCELL_X77_Y7_N42
\alu_inst|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux6~1_combout\ = ( \alu_inst|Mux0~2_combout\ & ( \alu_inst|AddSub_inst|FAN:1:FA_i_instance|s~combout\ & ( (\alu_inst|Mux0~3_combout\ & (!RegForX(1) & (!RegForX(2) & \alu_inst|Shift_inst|horiz[0][1]~4_combout\))) ) ) ) # ( 
-- !\alu_inst|Mux0~2_combout\ & ( \alu_inst|AddSub_inst|FAN:1:FA_i_instance|s~combout\ & ( \alu_inst|Mux0~3_combout\ ) ) ) # ( \alu_inst|Mux0~2_combout\ & ( !\alu_inst|AddSub_inst|FAN:1:FA_i_instance|s~combout\ & ( (\alu_inst|Mux0~3_combout\ & (!RegForX(1) & 
-- (!RegForX(2) & \alu_inst|Shift_inst|horiz[0][1]~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000001010101010101010000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_Mux0~3_combout\,
	datab => ALT_INV_RegForX(1),
	datac => ALT_INV_RegForX(2),
	datad => \alu_inst|Shift_inst|ALT_INV_horiz[0][1]~4_combout\,
	datae => \alu_inst|ALT_INV_Mux0~2_combout\,
	dataf => \alu_inst|AddSub_inst|FAN:1:FA_i_instance|ALT_INV_s~combout\,
	combout => \alu_inst|Mux6~1_combout\);

-- Location: LABCELL_X79_Y8_N39
\alu_inst|AddSub_inst|FA0|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|FA0|s~combout\ = ( RegForX(0) & ( (!RegForY(0)) # ((!RegForALU(0) & RegForALU(1))) ) ) # ( !RegForX(0) & ( (RegForY(0) & ((!RegForALU(1)) # (RegForALU(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000101010101010000010110101010111110101010101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForY(0),
	datac => ALT_INV_RegForALU(0),
	datad => ALT_INV_RegForALU(1),
	dataf => ALT_INV_RegForX(0),
	combout => \alu_inst|AddSub_inst|FA0|s~combout\);

-- Location: LABCELL_X79_Y8_N33
\alu_inst|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux7~0_combout\ = ( \alu_inst|Mux0~2_combout\ & ( (!RegForX(1) & (\alu_inst|Shift_inst|horiz[0][0]~0_combout\ & !RegForX(2))) ) ) # ( !\alu_inst|Mux0~2_combout\ & ( \alu_inst|AddSub_inst|FA0|s~combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForX(1),
	datab => \alu_inst|Shift_inst|ALT_INV_horiz[0][0]~0_combout\,
	datac => \alu_inst|AddSub_inst|FA0|ALT_INV_s~combout\,
	datad => ALT_INV_RegForX(2),
	dataf => \alu_inst|ALT_INV_Mux0~2_combout\,
	combout => \alu_inst|Mux7~0_combout\);

-- Location: LABCELL_X77_Y9_N51
\alu_inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux5~0_combout\ = ( !RegForALU(1) & ( !RegForALU(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RegForALU(3),
	dataf => ALT_INV_RegForALU(1),
	combout => \alu_inst|Mux5~0_combout\);

-- Location: LABCELL_X79_Y8_N57
\alu_inst|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux7~2_combout\ = ( RegForY(0) & ( RegForX(0) & ( (RegForALU(3) & ((!RegForALU(2) & (!RegForALU(0) $ (!RegForALU(1)))) # (RegForALU(2) & (RegForALU(0) & RegForALU(1))))) ) ) ) # ( !RegForY(0) & ( RegForX(0) & ( (RegForALU(3) & ((!RegForALU(2) & 
-- ((!RegForALU(1)) # (RegForALU(0)))) # (RegForALU(2) & (RegForALU(0) & !RegForALU(1))))) ) ) ) # ( RegForY(0) & ( !RegForX(0) & ( (RegForALU(0) & (RegForALU(3) & ((!RegForALU(2)) # (!RegForALU(1))))) ) ) ) # ( !RegForY(0) & ( !RegForX(0) & ( (RegForALU(3) 
-- & ((!RegForALU(0) & ((!RegForALU(1)))) # (RegForALU(0) & (RegForALU(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011010001000000000011001000000000101100100000000000101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(2),
	datab => ALT_INV_RegForALU(0),
	datac => ALT_INV_RegForALU(1),
	datad => ALT_INV_RegForALU(3),
	datae => ALT_INV_RegForY(0),
	dataf => ALT_INV_RegForX(0),
	combout => \alu_inst|Mux7~2_combout\);

-- Location: MLABCELL_X78_Y7_N6
\alu_inst|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux7~1_combout\ = ( \alu_inst|Mux0~2_combout\ & ( \alu_inst|Mux7~2_combout\ & ( (\alu_inst|Mux7~0_combout\ & \alu_inst|Mux0~3_combout\) ) ) ) # ( !\alu_inst|Mux0~2_combout\ & ( \alu_inst|Mux7~2_combout\ & ( (!\alu_inst|Mux0~3_combout\) # 
-- (\alu_inst|Mux7~0_combout\) ) ) ) # ( \alu_inst|Mux0~2_combout\ & ( !\alu_inst|Mux7~2_combout\ & ( (\alu_inst|Mux7~0_combout\ & \alu_inst|Mux0~3_combout\) ) ) ) # ( !\alu_inst|Mux0~2_combout\ & ( !\alu_inst|Mux7~2_combout\ & ( (!\alu_inst|Mux0~3_combout\ 
-- & (((\alu_inst|Shift_inst|horiz[2][7]~5_combout\ & \alu_inst|Mux5~0_combout\)))) # (\alu_inst|Mux0~3_combout\ & (\alu_inst|Mux7~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101000100010001000111011101110111010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_Mux7~0_combout\,
	datab => \alu_inst|ALT_INV_Mux0~3_combout\,
	datac => \alu_inst|Shift_inst|ALT_INV_horiz[2][7]~5_combout\,
	datad => \alu_inst|ALT_INV_Mux5~0_combout\,
	datae => \alu_inst|ALT_INV_Mux0~2_combout\,
	dataf => \alu_inst|ALT_INV_Mux7~2_combout\,
	combout => \alu_inst|Mux7~1_combout\);

-- Location: MLABCELL_X78_Y8_N9
\alu_inst|Shift_inst|horiz[0][2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Shift_inst|horiz[0][2]~7_combout\ = ( RegForY(2) & ( RegForY(5) & ( (!RegForX(0)) # ((!RegForALU(0) & (RegForY(1))) # (RegForALU(0) & ((RegForY(6))))) ) ) ) # ( !RegForY(2) & ( RegForY(5) & ( (!RegForALU(0) & (RegForY(1) & (RegForX(0)))) # 
-- (RegForALU(0) & (((!RegForX(0)) # (RegForY(6))))) ) ) ) # ( RegForY(2) & ( !RegForY(5) & ( (!RegForALU(0) & (((!RegForX(0))) # (RegForY(1)))) # (RegForALU(0) & (((RegForX(0) & RegForY(6))))) ) ) ) # ( !RegForY(2) & ( !RegForY(5) & ( (RegForX(0) & 
-- ((!RegForALU(0) & (RegForY(1))) # (RegForALU(0) & ((RegForY(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111101000101010011101010010010101111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(0),
	datab => ALT_INV_RegForY(1),
	datac => ALT_INV_RegForX(0),
	datad => ALT_INV_RegForY(6),
	datae => ALT_INV_RegForY(2),
	dataf => ALT_INV_RegForY(5),
	combout => \alu_inst|Shift_inst|horiz[0][2]~7_combout\);

-- Location: LABCELL_X79_Y8_N6
\alu_inst|Shift_inst|horiz[2][2]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Shift_inst|horiz[2][2]~12_combout\ = ( \alu_inst|Shift_inst|horiz[0][0]~0_combout\ & ( (!RegForX(2) & ((RegForX(1)) # (\alu_inst|Shift_inst|horiz[0][2]~7_combout\))) ) ) # ( !\alu_inst|Shift_inst|horiz[0][0]~0_combout\ & ( 
-- (\alu_inst|Shift_inst|horiz[0][2]~7_combout\ & (!RegForX(2) & !RegForX(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_inst|Shift_inst|ALT_INV_horiz[0][2]~7_combout\,
	datac => ALT_INV_RegForX(2),
	datad => ALT_INV_RegForX(1),
	dataf => \alu_inst|Shift_inst|ALT_INV_horiz[0][0]~0_combout\,
	combout => \alu_inst|Shift_inst|horiz[2][2]~12_combout\);

-- Location: LABCELL_X79_Y8_N54
\alu_inst|Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux5~3_combout\ = ( RegForY(2) & ( RegForX(2) & ( (RegForALU(3) & ((!RegForALU(2) & (!RegForALU(0) $ (!RegForALU(1)))) # (RegForALU(2) & (RegForALU(0) & RegForALU(1))))) ) ) ) # ( !RegForY(2) & ( RegForX(2) & ( (RegForALU(3) & ((!RegForALU(2) & 
-- ((!RegForALU(1)) # (RegForALU(0)))) # (RegForALU(2) & (RegForALU(0) & !RegForALU(1))))) ) ) ) # ( RegForY(2) & ( !RegForX(2) & ( (RegForALU(0) & (RegForALU(3) & ((!RegForALU(2)) # (!RegForALU(1))))) ) ) ) # ( !RegForY(2) & ( !RegForX(2) & ( (RegForALU(3) 
-- & ((!RegForALU(0) & ((!RegForALU(1)))) # (RegForALU(0) & (RegForALU(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100000001000000110000001000001011000000100000001000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(2),
	datab => ALT_INV_RegForALU(0),
	datac => ALT_INV_RegForALU(3),
	datad => ALT_INV_RegForALU(1),
	datae => ALT_INV_RegForY(2),
	dataf => ALT_INV_RegForX(2),
	combout => \alu_inst|Mux5~3_combout\);

-- Location: LABCELL_X79_Y9_N42
\alu_inst|AddSub_inst|FAN:2:FA_i_instance|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|FAN:2:FA_i_instance|s~combout\ = ( \alu_inst|yAdd[2]~2_combout\ & ( \alu_inst|AddSub_inst|FA0|cout~1_combout\ & ( !\alu_inst|AddSub_inst|xForAdder\(2) $ (((\alu_inst|AddSub_inst|xForAdder\(1)) # (\alu_inst|yAdd[1]~3_combout\))) ) ) ) 
-- # ( !\alu_inst|yAdd[2]~2_combout\ & ( \alu_inst|AddSub_inst|FA0|cout~1_combout\ & ( !\alu_inst|AddSub_inst|xForAdder\(2) $ (((!\alu_inst|yAdd[1]~3_combout\ & !\alu_inst|AddSub_inst|xForAdder\(1)))) ) ) ) # ( \alu_inst|yAdd[2]~2_combout\ & ( 
-- !\alu_inst|AddSub_inst|FA0|cout~1_combout\ & ( !\alu_inst|AddSub_inst|xForAdder\(2) $ (((!\alu_inst|yAdd[1]~3_combout\ & (\alu_inst|AddSub_inst|FA0|cout~0_combout\ & \alu_inst|AddSub_inst|xForAdder\(1))) # (\alu_inst|yAdd[1]~3_combout\ & 
-- ((\alu_inst|AddSub_inst|xForAdder\(1)) # (\alu_inst|AddSub_inst|FA0|cout~0_combout\))))) ) ) ) # ( !\alu_inst|yAdd[2]~2_combout\ & ( !\alu_inst|AddSub_inst|FA0|cout~1_combout\ & ( !\alu_inst|AddSub_inst|xForAdder\(2) $ (((!\alu_inst|yAdd[1]~3_combout\ & 
-- ((!\alu_inst|AddSub_inst|FA0|cout~0_combout\) # (!\alu_inst|AddSub_inst|xForAdder\(1)))) # (\alu_inst|yAdd[1]~3_combout\ & (!\alu_inst|AddSub_inst|FA0|cout~0_combout\ & !\alu_inst|AddSub_inst|xForAdder\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001101100110010011001001101100110110011001001100100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_yAdd[1]~3_combout\,
	datab => \alu_inst|AddSub_inst|ALT_INV_xForAdder\(2),
	datac => \alu_inst|AddSub_inst|FA0|ALT_INV_cout~0_combout\,
	datad => \alu_inst|AddSub_inst|ALT_INV_xForAdder\(1),
	datae => \alu_inst|ALT_INV_yAdd[2]~2_combout\,
	dataf => \alu_inst|AddSub_inst|FA0|ALT_INV_cout~1_combout\,
	combout => \alu_inst|AddSub_inst|FAN:2:FA_i_instance|s~combout\);

-- Location: LABCELL_X79_Y9_N48
\alu_inst|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux5~1_combout\ = ( \alu_inst|Mux5~0_combout\ & ( \alu_inst|Shift_inst|horiz[0][5]~2_combout\ & ( (!RegForX(1) & (((!RegForX(2)) # (\alu_inst|Shift_inst|horiz[0][1]~4_combout\)))) # (RegForX(1) & (\alu_inst|Shift_inst|horiz[0][3]~3_combout\ & 
-- (!RegForX(2)))) ) ) ) # ( \alu_inst|Mux5~0_combout\ & ( !\alu_inst|Shift_inst|horiz[0][5]~2_combout\ & ( (!RegForX(1) & (((RegForX(2) & \alu_inst|Shift_inst|horiz[0][1]~4_combout\)))) # (RegForX(1) & (\alu_inst|Shift_inst|horiz[0][3]~3_combout\ & 
-- (!RegForX(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000001110000000000000000001101000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Shift_inst|ALT_INV_horiz[0][3]~3_combout\,
	datab => ALT_INV_RegForX(1),
	datac => ALT_INV_RegForX(2),
	datad => \alu_inst|Shift_inst|ALT_INV_horiz[0][1]~4_combout\,
	datae => \alu_inst|ALT_INV_Mux5~0_combout\,
	dataf => \alu_inst|Shift_inst|ALT_INV_horiz[0][5]~2_combout\,
	combout => \alu_inst|Mux5~1_combout\);

-- Location: LABCELL_X79_Y9_N54
\alu_inst|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux5~2_combout\ = ( \alu_inst|Mux0~3_combout\ & ( \alu_inst|Mux5~1_combout\ & ( (!\alu_inst|Mux0~2_combout\ & ((\alu_inst|AddSub_inst|FAN:2:FA_i_instance|s~combout\))) # (\alu_inst|Mux0~2_combout\ & 
-- (\alu_inst|Shift_inst|horiz[2][2]~12_combout\)) ) ) ) # ( !\alu_inst|Mux0~3_combout\ & ( \alu_inst|Mux5~1_combout\ & ( !\alu_inst|Mux0~2_combout\ ) ) ) # ( \alu_inst|Mux0~3_combout\ & ( !\alu_inst|Mux5~1_combout\ & ( (!\alu_inst|Mux0~2_combout\ & 
-- ((\alu_inst|AddSub_inst|FAN:2:FA_i_instance|s~combout\))) # (\alu_inst|Mux0~2_combout\ & (\alu_inst|Shift_inst|horiz[2][2]~12_combout\)) ) ) ) # ( !\alu_inst|Mux0~3_combout\ & ( !\alu_inst|Mux5~1_combout\ & ( (!\alu_inst|Mux0~2_combout\ & 
-- \alu_inst|Mux5~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000100011101110111001100110011000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Shift_inst|ALT_INV_horiz[2][2]~12_combout\,
	datab => \alu_inst|ALT_INV_Mux0~2_combout\,
	datac => \alu_inst|ALT_INV_Mux5~3_combout\,
	datad => \alu_inst|AddSub_inst|FAN:2:FA_i_instance|ALT_INV_s~combout\,
	datae => \alu_inst|ALT_INV_Mux0~3_combout\,
	dataf => \alu_inst|ALT_INV_Mux5~1_combout\,
	combout => \alu_inst|Mux5~2_combout\);

-- Location: MLABCELL_X78_Y8_N18
\alu_inst|Shift_inst|horiz[0][6]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Shift_inst|horiz[0][6]~10_combout\ = ( RegForY(2) & ( RegForY(5) & ( ((!RegForALU(0) & (RegForY(6))) # (RegForALU(0) & ((RegForY(1))))) # (RegForX(0)) ) ) ) # ( !RegForY(2) & ( RegForY(5) & ( (!RegForX(0) & ((!RegForALU(0) & (RegForY(6))) # 
-- (RegForALU(0) & ((RegForY(1)))))) # (RegForX(0) & (((!RegForALU(0))))) ) ) ) # ( RegForY(2) & ( !RegForY(5) & ( (!RegForX(0) & ((!RegForALU(0) & (RegForY(6))) # (RegForALU(0) & ((RegForY(1)))))) # (RegForX(0) & (((RegForALU(0))))) ) ) ) # ( !RegForY(2) & 
-- ( !RegForY(5) & ( (!RegForX(0) & ((!RegForALU(0) & (RegForY(6))) # (RegForALU(0) & ((RegForY(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001001100010000110100111101110000011111000111001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForY(6),
	datab => ALT_INV_RegForX(0),
	datac => ALT_INV_RegForALU(0),
	datad => ALT_INV_RegForY(1),
	datae => ALT_INV_RegForY(2),
	dataf => ALT_INV_RegForY(5),
	combout => \alu_inst|Shift_inst|horiz[0][6]~10_combout\);

-- Location: LABCELL_X79_Y9_N18
\alu_inst|Shift_inst|horiz[0][4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Shift_inst|horiz[0][4]~8_combout\ = ( RegForALU(0) & ( (!RegForX(0) & (RegForY(3))) # (RegForX(0) & ((RegForY(4)))) ) ) # ( !RegForALU(0) & ( (!RegForX(0) & ((RegForY(4)))) # (RegForX(0) & (RegForY(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForX(0),
	datac => ALT_INV_RegForY(3),
	datad => ALT_INV_RegForY(4),
	dataf => ALT_INV_RegForALU(0),
	combout => \alu_inst|Shift_inst|horiz[0][4]~8_combout\);

-- Location: LABCELL_X79_Y9_N6
\alu_inst|Shift_inst|horiz[2][6]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Shift_inst|horiz[2][6]~11_combout\ = ( \alu_inst|Shift_inst|horiz[0][2]~7_combout\ & ( \alu_inst|Shift_inst|horiz[0][4]~8_combout\ & ( (!RegForX(1) & (((RegForX(2))) # (\alu_inst|Shift_inst|horiz[0][6]~10_combout\))) # (RegForX(1) & 
-- (((!RegForX(2)) # (\alu_inst|Shift_inst|horiz[0][0]~0_combout\)))) ) ) ) # ( !\alu_inst|Shift_inst|horiz[0][2]~7_combout\ & ( \alu_inst|Shift_inst|horiz[0][4]~8_combout\ & ( (!RegForX(1) & (\alu_inst|Shift_inst|horiz[0][6]~10_combout\ & (!RegForX(2)))) # 
-- (RegForX(1) & (((!RegForX(2)) # (\alu_inst|Shift_inst|horiz[0][0]~0_combout\)))) ) ) ) # ( \alu_inst|Shift_inst|horiz[0][2]~7_combout\ & ( !\alu_inst|Shift_inst|horiz[0][4]~8_combout\ & ( (!RegForX(1) & (((RegForX(2))) # 
-- (\alu_inst|Shift_inst|horiz[0][6]~10_combout\))) # (RegForX(1) & (((RegForX(2) & \alu_inst|Shift_inst|horiz[0][0]~0_combout\)))) ) ) ) # ( !\alu_inst|Shift_inst|horiz[0][2]~7_combout\ & ( !\alu_inst|Shift_inst|horiz[0][4]~8_combout\ & ( (!RegForX(1) & 
-- (\alu_inst|Shift_inst|horiz[0][6]~10_combout\ & (!RegForX(2)))) # (RegForX(1) & (((RegForX(2) & \alu_inst|Shift_inst|horiz[0][0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Shift_inst|ALT_INV_horiz[0][6]~10_combout\,
	datab => ALT_INV_RegForX(1),
	datac => ALT_INV_RegForX(2),
	datad => \alu_inst|Shift_inst|ALT_INV_horiz[0][0]~0_combout\,
	datae => \alu_inst|Shift_inst|ALT_INV_horiz[0][2]~7_combout\,
	dataf => \alu_inst|Shift_inst|ALT_INV_horiz[0][4]~8_combout\,
	combout => \alu_inst|Shift_inst|horiz[2][6]~11_combout\);

-- Location: LABCELL_X77_Y9_N33
\alu_inst|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux6~2_combout\ = ( RegForX(1) & ( RegForY(1) & ( (RegForALU(3) & ((!RegForALU(2) & (!RegForALU(1) $ (!RegForALU(0)))) # (RegForALU(2) & (RegForALU(1) & RegForALU(0))))) ) ) ) # ( !RegForX(1) & ( RegForY(1) & ( (RegForALU(0) & (RegForALU(3) & 
-- ((!RegForALU(2)) # (!RegForALU(1))))) ) ) ) # ( RegForX(1) & ( !RegForY(1) & ( (RegForALU(3) & ((!RegForALU(2) & ((!RegForALU(1)) # (RegForALU(0)))) # (RegForALU(2) & (!RegForALU(1) & RegForALU(0))))) ) ) ) # ( !RegForX(1) & ( !RegForY(1) & ( 
-- (RegForALU(3) & ((!RegForALU(0) & ((!RegForALU(1)))) # (RegForALU(0) & (RegForALU(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000101000000001000111000000000000011100000000000101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(2),
	datab => ALT_INV_RegForALU(1),
	datac => ALT_INV_RegForALU(0),
	datad => ALT_INV_RegForALU(3),
	datae => ALT_INV_RegForX(1),
	dataf => ALT_INV_RegForY(1),
	combout => \alu_inst|Mux6~2_combout\);

-- Location: MLABCELL_X78_Y9_N27
\alu_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux6~0_combout\ = ( \alu_inst|Mux5~0_combout\ & ( (!\alu_inst|Mux0~2_combout\ & (!\alu_inst|Mux0~3_combout\ & ((\alu_inst|Mux6~2_combout\) # (\alu_inst|Shift_inst|horiz[2][6]~11_combout\)))) ) ) # ( !\alu_inst|Mux5~0_combout\ & ( 
-- (!\alu_inst|Mux0~2_combout\ & (\alu_inst|Mux6~2_combout\ & !\alu_inst|Mux0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000101010000000000010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_Mux0~2_combout\,
	datab => \alu_inst|Shift_inst|ALT_INV_horiz[2][6]~11_combout\,
	datac => \alu_inst|ALT_INV_Mux6~2_combout\,
	datad => \alu_inst|ALT_INV_Mux0~3_combout\,
	dataf => \alu_inst|ALT_INV_Mux5~0_combout\,
	combout => \alu_inst|Mux6~0_combout\);

-- Location: LABCELL_X77_Y7_N18
\z_flag_o~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \z_flag_o~0_combout\ = ( !\alu_inst|Mux5~2_combout\ & ( !\alu_inst|Mux6~0_combout\ & ( (!\alu_inst|Mux6~1_combout\ & (!\alu_inst|Mux7~1_combout\ & ((\alufn_i[3]~input_o\) # (\alufn_i[4]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alufn_i[4]~input_o\,
	datab => \alu_inst|ALT_INV_Mux6~1_combout\,
	datac => \alu_inst|ALT_INV_Mux7~1_combout\,
	datad => \ALT_INV_alufn_i[3]~input_o\,
	datae => \alu_inst|ALT_INV_Mux5~2_combout\,
	dataf => \alu_inst|ALT_INV_Mux6~0_combout\,
	combout => \z_flag_o~0_combout\);

-- Location: LABCELL_X75_Y9_N0
\alu_inst|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux1~2_combout\ = ( !RegForX(2) & ( \alu_inst|Shift_inst|horiz[0][1]~4_combout\ & ( (\alu_inst|Mux5~0_combout\ & !RegForX(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_Mux5~0_combout\,
	datac => ALT_INV_RegForX(1),
	datae => ALT_INV_RegForX(2),
	dataf => \alu_inst|Shift_inst|ALT_INV_horiz[0][1]~4_combout\,
	combout => \alu_inst|Mux1~2_combout\);

-- Location: LABCELL_X77_Y9_N30
\alu_inst|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux1~3_combout\ = ( RegForX(6) & ( RegForY(6) & ( (RegForALU(3) & ((!RegForALU(2) & (!RegForALU(1) $ (!RegForALU(0)))) # (RegForALU(2) & (RegForALU(1) & RegForALU(0))))) ) ) ) # ( !RegForX(6) & ( RegForY(6) & ( (RegForALU(3) & (RegForALU(0) & 
-- ((!RegForALU(2)) # (!RegForALU(1))))) ) ) ) # ( RegForX(6) & ( !RegForY(6) & ( (RegForALU(3) & ((!RegForALU(2) & ((!RegForALU(1)) # (RegForALU(0)))) # (RegForALU(2) & (!RegForALU(1) & RegForALU(0))))) ) ) ) # ( !RegForX(6) & ( !RegForY(6) & ( 
-- (RegForALU(3) & ((!RegForALU(0) & ((!RegForALU(1)))) # (RegForALU(0) & (RegForALU(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000101000010000000111000000000000011100000001000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(2),
	datab => ALT_INV_RegForALU(1),
	datac => ALT_INV_RegForALU(3),
	datad => ALT_INV_RegForALU(0),
	datae => ALT_INV_RegForX(6),
	dataf => ALT_INV_RegForY(6),
	combout => \alu_inst|Mux1~3_combout\);

-- Location: MLABCELL_X78_Y9_N24
\alu_inst|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux1~4_combout\ = ( \alu_inst|Mux1~3_combout\ & ( (!\alu_inst|Mux0~2_combout\ & ((!\alu_inst|Mux0~3_combout\))) # (\alu_inst|Mux0~2_combout\ & (\alu_inst|Shift_inst|horiz[2][6]~11_combout\ & \alu_inst|Mux0~3_combout\)) ) ) # ( 
-- !\alu_inst|Mux1~3_combout\ & ( (!\alu_inst|Mux0~2_combout\ & (((!\alu_inst|Mux0~3_combout\ & \alu_inst|Mux1~2_combout\)))) # (\alu_inst|Mux0~2_combout\ & (\alu_inst|Shift_inst|horiz[2][6]~11_combout\ & (\alu_inst|Mux0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110100001000000011010000110100001101000011010000110100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_Mux0~2_combout\,
	datab => \alu_inst|Shift_inst|ALT_INV_horiz[2][6]~11_combout\,
	datac => \alu_inst|ALT_INV_Mux0~3_combout\,
	datad => \alu_inst|ALT_INV_Mux1~2_combout\,
	dataf => \alu_inst|ALT_INV_Mux1~3_combout\,
	combout => \alu_inst|Mux1~4_combout\);

-- Location: LABCELL_X77_Y9_N0
\alu_inst|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux1~1_combout\ = !RegForX(6) $ (!\alu_inst|negAdd~0_combout\ $ (((!RegForY(6)) # (\alu_inst|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001000101101110100100010110111010010001011011101001000101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_Equal6~0_combout\,
	datab => ALT_INV_RegForY(6),
	datac => ALT_INV_RegForX(6),
	datad => \alu_inst|ALT_INV_negAdd~0_combout\,
	combout => \alu_inst|Mux1~1_combout\);

-- Location: LABCELL_X77_Y9_N27
\alu_inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux1~0_combout\ = ( \alu_inst|Equal6~0_combout\ & ( !\alu_inst|negAdd~0_combout\ $ (!RegForX(6)) ) ) # ( !\alu_inst|Equal6~0_combout\ & ( !\alu_inst|negAdd~0_combout\ $ (!RegForY(6) $ (RegForX(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_negAdd~0_combout\,
	datac => ALT_INV_RegForY(6),
	datad => ALT_INV_RegForX(6),
	dataf => \alu_inst|ALT_INV_Equal6~0_combout\,
	combout => \alu_inst|Mux1~0_combout\);

-- Location: MLABCELL_X78_Y9_N30
\alu_inst|Mux1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux1~5_combout\ = ( \alu_inst|Mux1~0_combout\ & ( \alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ & ( (!\alu_inst|Mux1~4_combout\ & ((!\alu_inst|Mux1~1_combout\) # (!\alu_inst|Mux0~0_combout\))) ) ) ) # ( !\alu_inst|Mux1~0_combout\ & ( 
-- \alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ & ( (!\alu_inst|Mux1~4_combout\ & ((!\alu_inst|Mux1~1_combout\) # (!\alu_inst|Mux0~0_combout\))) ) ) ) # ( \alu_inst|Mux1~0_combout\ & ( !\alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ & 
-- ( (!\alu_inst|Mux1~4_combout\ & ((!\alu_inst|Mux0~0_combout\) # ((!\alu_inst|Mux1~1_combout\ & \alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0_combout\)))) ) ) ) # ( !\alu_inst|Mux1~0_combout\ & ( 
-- !\alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ & ( (!\alu_inst|Mux1~4_combout\ & ((!\alu_inst|Mux1~1_combout\) # ((!\alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0_combout\) # (!\alu_inst|Mux0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101000101010100000100010101010100010001010101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_Mux1~4_combout\,
	datab => \alu_inst|ALT_INV_Mux1~1_combout\,
	datac => \alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~0_combout\,
	datad => \alu_inst|ALT_INV_Mux0~0_combout\,
	datae => \alu_inst|ALT_INV_Mux1~0_combout\,
	dataf => \alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~2_combout\,
	combout => \alu_inst|Mux1~5_combout\);

-- Location: LABCELL_X77_Y7_N30
\alu_inst|Shift_inst|horiz[2][3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Shift_inst|horiz[2][3]~6_combout\ = ( \alu_inst|Shift_inst|horiz[0][1]~4_combout\ & ( (!RegForX(2) & ((\alu_inst|Shift_inst|horiz[0][3]~3_combout\) # (RegForX(1)))) ) ) # ( !\alu_inst|Shift_inst|horiz[0][1]~4_combout\ & ( (!RegForX(1) & 
-- (!RegForX(2) & \alu_inst|Shift_inst|horiz[0][3]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RegForX(1),
	datac => ALT_INV_RegForX(2),
	datad => \alu_inst|Shift_inst|ALT_INV_horiz[0][3]~3_combout\,
	dataf => \alu_inst|Shift_inst|ALT_INV_horiz[0][1]~4_combout\,
	combout => \alu_inst|Shift_inst|horiz[2][3]~6_combout\);

-- Location: MLABCELL_X78_Y8_N36
\alu_inst|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux4~2_combout\ = ( RegForALU(0) & ( RegForALU(1) & ( (RegForALU(3) & (!RegForALU(2) $ (!RegForX(3) $ (RegForY(3))))) ) ) ) # ( !RegForALU(0) & ( RegForALU(1) & ( (!RegForALU(2) & (RegForX(3) & (RegForY(3) & RegForALU(3)))) ) ) ) # ( 
-- RegForALU(0) & ( !RegForALU(1) & ( (RegForALU(3) & ((!RegForALU(2) & ((RegForY(3)) # (RegForX(3)))) # (RegForALU(2) & ((!RegForX(3)) # (!RegForY(3)))))) ) ) ) # ( !RegForALU(0) & ( !RegForALU(1) & ( (!RegForY(3) & (RegForALU(3) & ((!RegForALU(2)) # 
-- (!RegForX(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100000000000000111111000000000000000100000000001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(2),
	datab => ALT_INV_RegForX(3),
	datac => ALT_INV_RegForY(3),
	datad => ALT_INV_RegForALU(3),
	datae => ALT_INV_RegForALU(0),
	dataf => ALT_INV_RegForALU(1),
	combout => \alu_inst|Mux4~2_combout\);

-- Location: MLABCELL_X78_Y9_N0
\alu_inst|AddSub_inst|FAN:3:FA_i_instance|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|FAN:3:FA_i_instance|s~0_combout\ = ( RegForY(3) & ( !\alu_inst|negAdd~0_combout\ $ (!RegForX(3) $ (!\alu_inst|Equal6~0_combout\)) ) ) # ( !RegForY(3) & ( !\alu_inst|negAdd~0_combout\ $ (!RegForX(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_negAdd~0_combout\,
	datab => ALT_INV_RegForX(3),
	datac => \alu_inst|ALT_INV_Equal6~0_combout\,
	dataf => ALT_INV_RegForY(3),
	combout => \alu_inst|AddSub_inst|FAN:3:FA_i_instance|s~0_combout\);

-- Location: LABCELL_X79_Y9_N24
\alu_inst|Shift_inst|horiz[2][4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Shift_inst|horiz[2][4]~9_combout\ = ( \alu_inst|Shift_inst|horiz[0][4]~8_combout\ & ( (!RegForX(2) & ((!RegForX(1)) # ((\alu_inst|Shift_inst|horiz[0][2]~7_combout\)))) # (RegForX(2) & (!RegForX(1) & 
-- ((\alu_inst|Shift_inst|horiz[0][0]~0_combout\)))) ) ) # ( !\alu_inst|Shift_inst|horiz[0][4]~8_combout\ & ( (!RegForX(2) & (RegForX(1) & (\alu_inst|Shift_inst|horiz[0][2]~7_combout\))) # (RegForX(2) & (!RegForX(1) & 
-- ((\alu_inst|Shift_inst|horiz[0][0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForX(2),
	datab => ALT_INV_RegForX(1),
	datac => \alu_inst|Shift_inst|ALT_INV_horiz[0][2]~7_combout\,
	datad => \alu_inst|Shift_inst|ALT_INV_horiz[0][0]~0_combout\,
	dataf => \alu_inst|Shift_inst|ALT_INV_horiz[0][4]~8_combout\,
	combout => \alu_inst|Shift_inst|horiz[2][4]~9_combout\);

-- Location: LABCELL_X79_Y9_N30
\alu_inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux4~0_combout\ = ( \alu_inst|Mux0~3_combout\ & ( \alu_inst|Shift_inst|horiz[2][4]~9_combout\ & ( !\alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\ $ (!\alu_inst|AddSub_inst|FAN:3:FA_i_instance|s~0_combout\) ) ) ) # ( 
-- !\alu_inst|Mux0~3_combout\ & ( \alu_inst|Shift_inst|horiz[2][4]~9_combout\ & ( (!\alu_inst|Mux5~0_combout\ & !\alu_inst|Mux4~2_combout\) ) ) ) # ( \alu_inst|Mux0~3_combout\ & ( !\alu_inst|Shift_inst|horiz[2][4]~9_combout\ & ( 
-- !\alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\ $ (!\alu_inst|AddSub_inst|FAN:3:FA_i_instance|s~0_combout\) ) ) ) # ( !\alu_inst|Mux0~3_combout\ & ( !\alu_inst|Shift_inst|horiz[2][4]~9_combout\ & ( !\alu_inst|Mux4~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000010101011010101011000000110000000101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|AddSub_inst|FAN:2:FA_i_instance|ALT_INV_cout~0_combout\,
	datab => \alu_inst|ALT_INV_Mux5~0_combout\,
	datac => \alu_inst|ALT_INV_Mux4~2_combout\,
	datad => \alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_s~0_combout\,
	datae => \alu_inst|ALT_INV_Mux0~3_combout\,
	dataf => \alu_inst|Shift_inst|ALT_INV_horiz[2][4]~9_combout\,
	combout => \alu_inst|Mux4~0_combout\);

-- Location: LABCELL_X77_Y7_N33
\alu_inst|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux4~1_combout\ = ( \alu_inst|Mux4~0_combout\ & ( (\alu_inst|Mux0~2_combout\ & (\alu_inst|Shift_inst|horiz[2][3]~6_combout\ & \alu_inst|Mux0~3_combout\)) ) ) # ( !\alu_inst|Mux4~0_combout\ & ( (!\alu_inst|Mux0~2_combout\) # 
-- ((\alu_inst|Shift_inst|horiz[2][3]~6_combout\ & \alu_inst|Mux0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101111101010101010111100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_Mux0~2_combout\,
	datac => \alu_inst|Shift_inst|ALT_INV_horiz[2][3]~6_combout\,
	datad => \alu_inst|ALT_INV_Mux0~3_combout\,
	dataf => \alu_inst|ALT_INV_Mux4~0_combout\,
	combout => \alu_inst|Mux4~1_combout\);

-- Location: MLABCELL_X78_Y9_N36
\alu_inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux2~0_combout\ = ( RegForX(5) & ( \alu_inst|Equal6~0_combout\ & ( !\alu_inst|negAdd~0_combout\ ) ) ) # ( !RegForX(5) & ( \alu_inst|Equal6~0_combout\ & ( \alu_inst|negAdd~0_combout\ ) ) ) # ( RegForX(5) & ( !\alu_inst|Equal6~0_combout\ & ( 
-- !RegForY(5) $ (\alu_inst|negAdd~0_combout\) ) ) ) # ( !RegForX(5) & ( !\alu_inst|Equal6~0_combout\ & ( !RegForY(5) $ (!\alu_inst|negAdd~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000111100001100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RegForY(5),
	datac => \alu_inst|ALT_INV_negAdd~0_combout\,
	datae => ALT_INV_RegForX(5),
	dataf => \alu_inst|ALT_INV_Equal6~0_combout\,
	combout => \alu_inst|Mux2~0_combout\);

-- Location: LABCELL_X77_Y8_N18
\alu_inst|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux2~1_combout\ = ( \alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\ & ( \alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\ & ( (!\alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\ & \alu_inst|Mux2~0_combout\) ) ) ) # ( 
-- !\alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\ & ( \alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\ & ( (!\alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\ & \alu_inst|Mux2~0_combout\) ) ) ) # ( 
-- !\alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\ & ( !\alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\ & ( (!\alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\ & (\alu_inst|Mux2~0_combout\ & 
-- ((\alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\) # (\alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001100000000000000000000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|AddSub_inst|FAN:2:FA_i_instance|ALT_INV_cout~0_combout\,
	datab => \alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~0_combout\,
	datac => \alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~1_combout\,
	datad => \alu_inst|ALT_INV_Mux2~0_combout\,
	datae => \alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~0_combout\,
	dataf => \alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~1_combout\,
	combout => \alu_inst|Mux2~1_combout\);

-- Location: MLABCELL_X78_Y8_N0
\alu_inst|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux3~2_combout\ = ( RegForALU(0) & ( RegForX(4) & ( (!RegForY(4)) # (!RegForALU(1)) ) ) ) # ( !RegForALU(0) & ( RegForX(4) & ( !RegForY(4) $ (RegForALU(1)) ) ) ) # ( RegForALU(0) & ( !RegForX(4) & ( RegForY(4) ) ) ) # ( !RegForALU(0) & ( 
-- !RegForX(4) & ( (!RegForY(4) & !RegForALU(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000010101010101010110100101101001011111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForY(4),
	datac => ALT_INV_RegForALU(1),
	datae => ALT_INV_RegForALU(0),
	dataf => ALT_INV_RegForX(4),
	combout => \alu_inst|Mux3~2_combout\);

-- Location: MLABCELL_X78_Y8_N54
\alu_inst|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux3~3_combout\ = ( \alu_inst|Mux3~2_combout\ & ( \alu_inst|Shift_inst|horiz[0][1]~4_combout\ & ( (!\alu_inst|Mux0~6_combout\) # ((!RegForX(2) & ((RegForX(1)) # (\alu_inst|Shift_inst|horiz[0][3]~3_combout\)))) ) ) ) # ( 
-- !\alu_inst|Mux3~2_combout\ & ( \alu_inst|Shift_inst|horiz[0][1]~4_combout\ & ( (!RegForX(2) & (\alu_inst|Mux0~6_combout\ & ((RegForX(1)) # (\alu_inst|Shift_inst|horiz[0][3]~3_combout\)))) ) ) ) # ( \alu_inst|Mux3~2_combout\ & ( 
-- !\alu_inst|Shift_inst|horiz[0][1]~4_combout\ & ( (!\alu_inst|Mux0~6_combout\) # ((\alu_inst|Shift_inst|horiz[0][3]~3_combout\ & (!RegForX(2) & !RegForX(1)))) ) ) ) # ( !\alu_inst|Mux3~2_combout\ & ( !\alu_inst|Shift_inst|horiz[0][1]~4_combout\ & ( 
-- (\alu_inst|Shift_inst|horiz[0][3]~3_combout\ & (!RegForX(2) & (!RegForX(1) & \alu_inst|Mux0~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000111111110100000000000000010011001111111101001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Shift_inst|ALT_INV_horiz[0][3]~3_combout\,
	datab => ALT_INV_RegForX(2),
	datac => ALT_INV_RegForX(1),
	datad => \alu_inst|ALT_INV_Mux0~6_combout\,
	datae => \alu_inst|ALT_INV_Mux3~2_combout\,
	dataf => \alu_inst|Shift_inst|ALT_INV_horiz[0][1]~4_combout\,
	combout => \alu_inst|Mux3~3_combout\);

-- Location: MLABCELL_X78_Y9_N42
\alu_inst|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux3~1_combout\ = ( RegForY(4) & ( RegForALU(1) & ( (RegForX(4) & (RegForALU(3) & (RegForALU(2) & RegForALU(0)))) ) ) ) # ( !RegForY(4) & ( RegForALU(1) & ( (!RegForX(4) & (RegForALU(3) & (RegForALU(2) & RegForALU(0)))) ) ) ) # ( RegForY(4) & ( 
-- !RegForALU(1) & ( (!RegForX(4) & (RegForALU(3) & (RegForALU(2) & RegForALU(0)))) ) ) ) # ( !RegForY(4) & ( !RegForALU(1) & ( (RegForALU(3) & (RegForALU(2) & ((!RegForX(4)) # (RegForALU(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000011000000000000001000000000000000100000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForX(4),
	datab => ALT_INV_RegForALU(3),
	datac => ALT_INV_RegForALU(2),
	datad => ALT_INV_RegForALU(0),
	datae => ALT_INV_RegForY(4),
	dataf => ALT_INV_RegForALU(1),
	combout => \alu_inst|Mux3~1_combout\);

-- Location: MLABCELL_X78_Y9_N48
\alu_inst|Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux3~4_combout\ = ( \alu_inst|Mux0~3_combout\ & ( \alu_inst|Shift_inst|horiz[2][4]~9_combout\ & ( \alu_inst|Mux0~2_combout\ ) ) ) # ( !\alu_inst|Mux0~3_combout\ & ( \alu_inst|Shift_inst|horiz[2][4]~9_combout\ & ( (!\alu_inst|Mux0~2_combout\ & 
-- (((!\alu_inst|Mux0~4_combout\ & \alu_inst|Mux3~3_combout\)) # (\alu_inst|Mux3~1_combout\))) ) ) ) # ( !\alu_inst|Mux0~3_combout\ & ( !\alu_inst|Shift_inst|horiz[2][4]~9_combout\ & ( (!\alu_inst|Mux0~2_combout\ & (((!\alu_inst|Mux0~4_combout\ & 
-- \alu_inst|Mux3~3_combout\)) # (\alu_inst|Mux3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011110000000000000000000000100000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_Mux0~4_combout\,
	datab => \alu_inst|ALT_INV_Mux3~3_combout\,
	datac => \alu_inst|ALT_INV_Mux0~2_combout\,
	datad => \alu_inst|ALT_INV_Mux3~1_combout\,
	datae => \alu_inst|ALT_INV_Mux0~3_combout\,
	dataf => \alu_inst|Shift_inst|ALT_INV_horiz[2][4]~9_combout\,
	combout => \alu_inst|Mux3~4_combout\);

-- Location: LABCELL_X77_Y9_N24
\alu_inst|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux2~2_combout\ = ( RegForX(5) & ( !\alu_inst|negAdd~0_combout\ $ (((!RegForY(5)) # (\alu_inst|Equal6~0_combout\))) ) ) # ( !RegForX(5) & ( !\alu_inst|negAdd~0_combout\ $ (((!\alu_inst|Equal6~0_combout\ & RegForY(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001011010101010100101101001010101101001010101010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_negAdd~0_combout\,
	datac => \alu_inst|ALT_INV_Equal6~0_combout\,
	datad => ALT_INV_RegForY(5),
	dataf => ALT_INV_RegForX(5),
	combout => \alu_inst|Mux2~2_combout\);

-- Location: LABCELL_X77_Y8_N24
\alu_inst|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux2~3_combout\ = ( \alu_inst|Mux2~2_combout\ & ( \alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\ & ( \alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\ ) ) ) # ( \alu_inst|Mux2~2_combout\ & ( 
-- !\alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\ & ( (((!\alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\ & !\alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\)) # (\alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\)) # 
-- (\alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101100111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|AddSub_inst|FAN:2:FA_i_instance|ALT_INV_cout~0_combout\,
	datab => \alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~0_combout\,
	datac => \alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~1_combout\,
	datad => \alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~0_combout\,
	datae => \alu_inst|ALT_INV_Mux2~2_combout\,
	dataf => \alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~1_combout\,
	combout => \alu_inst|Mux2~3_combout\);

-- Location: LABCELL_X77_Y9_N6
\alu_inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux3~0_combout\ = ( \alu_inst|yAdd[4]~1_combout\ & ( \alu_inst|negAdd~0_combout\ & ( !RegForX(4) $ (((!\alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\ & ((\alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\) # 
-- (\alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\))))) ) ) ) # ( !\alu_inst|yAdd[4]~1_combout\ & ( \alu_inst|negAdd~0_combout\ & ( !RegForX(4) $ ((((!\alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\ & 
-- !\alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\)) # (\alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\))) ) ) ) # ( \alu_inst|yAdd[4]~1_combout\ & ( !\alu_inst|negAdd~0_combout\ & ( !RegForX(4) $ 
-- ((((!\alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\ & !\alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\)) # (\alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\))) ) ) ) # ( !\alu_inst|yAdd[4]~1_combout\ & ( 
-- !\alu_inst|negAdd~0_combout\ & ( !RegForX(4) $ (((!\alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\ & ((\alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\) # (\alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011010000111100010010111100001101001011110000111011010000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|AddSub_inst|FAN:2:FA_i_instance|ALT_INV_cout~0_combout\,
	datab => \alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~0_combout\,
	datac => ALT_INV_RegForX(4),
	datad => \alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~1_combout\,
	datae => \alu_inst|ALT_INV_yAdd[4]~1_combout\,
	dataf => \alu_inst|ALT_INV_negAdd~0_combout\,
	combout => \alu_inst|Mux3~0_combout\);

-- Location: LABCELL_X79_Y8_N9
\alu_inst|Mux2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux2~5_combout\ = ( RegForALU(0) & ( (!RegForX(5) & ((RegForY(5)))) # (RegForX(5) & ((!RegForALU(1)) # (!RegForY(5)))) ) ) # ( !RegForALU(0) & ( (!RegForALU(1) & ((!RegForY(5)))) # (RegForALU(1) & (RegForX(5) & RegForY(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000101111100000000010101010101111110100101010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForX(5),
	datac => ALT_INV_RegForALU(1),
	datad => ALT_INV_RegForY(5),
	dataf => ALT_INV_RegForALU(0),
	combout => \alu_inst|Mux2~5_combout\);

-- Location: LABCELL_X79_Y8_N42
\alu_inst|Mux2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux2~6_combout\ = ( RegForX(1) & ( \alu_inst|Shift_inst|horiz[0][0]~0_combout\ & ( (!\alu_inst|Mux0~6_combout\ & ((\alu_inst|Mux2~5_combout\))) # (\alu_inst|Mux0~6_combout\ & (!RegForX(2))) ) ) ) # ( !RegForX(1) & ( 
-- \alu_inst|Shift_inst|horiz[0][0]~0_combout\ & ( (!\alu_inst|Mux0~6_combout\ & (((\alu_inst|Mux2~5_combout\)))) # (\alu_inst|Mux0~6_combout\ & (\alu_inst|Shift_inst|horiz[0][2]~7_combout\ & (!RegForX(2)))) ) ) ) # ( RegForX(1) & ( 
-- !\alu_inst|Shift_inst|horiz[0][0]~0_combout\ & ( (!\alu_inst|Mux0~6_combout\ & \alu_inst|Mux2~5_combout\) ) ) ) # ( !RegForX(1) & ( !\alu_inst|Shift_inst|horiz[0][0]~0_combout\ & ( (!\alu_inst|Mux0~6_combout\ & (((\alu_inst|Mux2~5_combout\)))) # 
-- (\alu_inst|Mux0~6_combout\ & (\alu_inst|Shift_inst|horiz[0][2]~7_combout\ & (!RegForX(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010111010000000001010101000010000101110100101000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_Mux0~6_combout\,
	datab => \alu_inst|Shift_inst|ALT_INV_horiz[0][2]~7_combout\,
	datac => ALT_INV_RegForX(2),
	datad => \alu_inst|ALT_INV_Mux2~5_combout\,
	datae => ALT_INV_RegForX(1),
	dataf => \alu_inst|Shift_inst|ALT_INV_horiz[0][0]~0_combout\,
	combout => \alu_inst|Mux2~6_combout\);

-- Location: LABCELL_X79_Y8_N24
\alu_inst|Mux2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux2~4_combout\ = ( RegForX(5) & ( RegForY(5) & ( (RegForALU(2) & (RegForALU(0) & (RegForALU(3) & RegForALU(1)))) ) ) ) # ( !RegForX(5) & ( RegForY(5) & ( (RegForALU(2) & (RegForALU(0) & (RegForALU(3) & !RegForALU(1)))) ) ) ) # ( RegForX(5) & ( 
-- !RegForY(5) & ( (RegForALU(2) & (RegForALU(0) & (RegForALU(3) & !RegForALU(1)))) ) ) ) # ( !RegForX(5) & ( !RegForY(5) & ( (RegForALU(2) & (RegForALU(3) & ((!RegForALU(1)) # (RegForALU(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000001000000010000000000000001000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(2),
	datab => ALT_INV_RegForALU(0),
	datac => ALT_INV_RegForALU(3),
	datad => ALT_INV_RegForALU(1),
	datae => ALT_INV_RegForX(5),
	dataf => ALT_INV_RegForY(5),
	combout => \alu_inst|Mux2~4_combout\);

-- Location: LABCELL_X79_Y9_N27
\alu_inst|Shift_inst|horiz[2][5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Shift_inst|horiz[2][5]~13_combout\ = ( \alu_inst|Shift_inst|horiz[0][5]~2_combout\ & ( (!RegForX(2) & ((!RegForX(1)) # ((\alu_inst|Shift_inst|horiz[0][3]~3_combout\)))) # (RegForX(2) & (!RegForX(1) & 
-- (\alu_inst|Shift_inst|horiz[0][1]~4_combout\))) ) ) # ( !\alu_inst|Shift_inst|horiz[0][5]~2_combout\ & ( (!RegForX(2) & (RegForX(1) & ((\alu_inst|Shift_inst|horiz[0][3]~3_combout\)))) # (RegForX(2) & (!RegForX(1) & 
-- (\alu_inst|Shift_inst|horiz[0][1]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForX(2),
	datab => ALT_INV_RegForX(1),
	datac => \alu_inst|Shift_inst|ALT_INV_horiz[0][1]~4_combout\,
	datad => \alu_inst|Shift_inst|ALT_INV_horiz[0][3]~3_combout\,
	dataf => \alu_inst|Shift_inst|ALT_INV_horiz[0][5]~2_combout\,
	combout => \alu_inst|Shift_inst|horiz[2][5]~13_combout\);

-- Location: LABCELL_X79_Y8_N18
\alu_inst|Mux2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Mux2~7_combout\ = ( \alu_inst|Mux0~3_combout\ & ( \alu_inst|Shift_inst|horiz[2][5]~13_combout\ & ( \alu_inst|Mux0~2_combout\ ) ) ) # ( !\alu_inst|Mux0~3_combout\ & ( \alu_inst|Shift_inst|horiz[2][5]~13_combout\ & ( (!\alu_inst|Mux0~2_combout\ & 
-- (((\alu_inst|Mux2~6_combout\ & !\alu_inst|Mux0~4_combout\)) # (\alu_inst|Mux2~4_combout\))) ) ) ) # ( !\alu_inst|Mux0~3_combout\ & ( !\alu_inst|Shift_inst|horiz[2][5]~13_combout\ & ( (!\alu_inst|Mux0~2_combout\ & (((\alu_inst|Mux2~6_combout\ & 
-- !\alu_inst|Mux0~4_combout\)) # (\alu_inst|Mux2~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000001010000000000000000000101010000010100101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_Mux0~2_combout\,
	datab => \alu_inst|ALT_INV_Mux2~6_combout\,
	datac => \alu_inst|ALT_INV_Mux2~4_combout\,
	datad => \alu_inst|ALT_INV_Mux0~4_combout\,
	datae => \alu_inst|ALT_INV_Mux0~3_combout\,
	dataf => \alu_inst|Shift_inst|ALT_INV_horiz[2][5]~13_combout\,
	combout => \alu_inst|Mux2~7_combout\);

-- Location: LABCELL_X77_Y9_N42
\z_flag_o~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \z_flag_o~1_combout\ = ( !\alu_inst|Mux2~7_combout\ & ( \alu_inst|Mux0~0_combout\ & ( (!\alu_inst|Mux2~1_combout\ & (!\alu_inst|Mux3~4_combout\ & (!\alu_inst|Mux2~3_combout\ & !\alu_inst|Mux3~0_combout\))) ) ) ) # ( !\alu_inst|Mux2~7_combout\ & ( 
-- !\alu_inst|Mux0~0_combout\ & ( !\alu_inst|Mux3~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_Mux2~1_combout\,
	datab => \alu_inst|ALT_INV_Mux3~4_combout\,
	datac => \alu_inst|ALT_INV_Mux2~3_combout\,
	datad => \alu_inst|ALT_INV_Mux3~0_combout\,
	datae => \alu_inst|ALT_INV_Mux2~7_combout\,
	dataf => \alu_inst|ALT_INV_Mux0~0_combout\,
	combout => \z_flag_o~1_combout\);

-- Location: LABCELL_X77_Y7_N54
\z_flag_o~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \z_flag_o~2_combout\ = ( !\alu_inst|Mux0~1_combout\ & ( !\alu_inst|Mux0~9_combout\ & ( (\z_flag_o~0_combout\ & (\alu_inst|Mux1~5_combout\ & (!\alu_inst|Mux4~1_combout\ & \z_flag_o~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_z_flag_o~0_combout\,
	datab => \alu_inst|ALT_INV_Mux1~5_combout\,
	datac => \alu_inst|ALT_INV_Mux4~1_combout\,
	datad => \ALT_INV_z_flag_o~1_combout\,
	datae => \alu_inst|ALT_INV_Mux0~1_combout\,
	dataf => \alu_inst|ALT_INV_Mux0~9_combout\,
	combout => \z_flag_o~2_combout\);

-- Location: MLABCELL_X78_Y7_N51
\alu_inst|negAdd~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|negAdd~1_combout\ = ( RegForALU(3) & ( (!RegForALU(4) & !RegForALU(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForALU(4),
	datac => ALT_INV_RegForALU(2),
	dataf => ALT_INV_RegForALU(3),
	combout => \alu_inst|negAdd~1_combout\);

-- Location: MLABCELL_X78_Y7_N24
\c_flag_o~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_flag_o~1_combout\ = ( \alu_inst|negAdd~1_combout\ & ( (!\alufn_i[3]~input_o\ & (\alufn_i[4]~input_o\ & ((!RegForALU(1)) # (!RegForALU(0))))) # (\alufn_i[3]~input_o\ & ((!RegForALU(1)) # ((!RegForALU(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010100111111000101010011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alufn_i[3]~input_o\,
	datab => ALT_INV_RegForALU(1),
	datac => ALT_INV_RegForALU(0),
	datad => \ALT_INV_alufn_i[4]~input_o\,
	dataf => \alu_inst|ALT_INV_negAdd~1_combout\,
	combout => \c_flag_o~1_combout\);

-- Location: LABCELL_X79_Y8_N36
\alu_inst|Shift_inst|horiz[0][8]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Shift_inst|horiz[0][8]~14_combout\ = ( RegForALU(0) & ( (RegForY(0) & RegForX(0)) ) ) # ( !RegForALU(0) & ( (RegForX(0) & RegForY(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RegForY(0),
	datab => ALT_INV_RegForX(0),
	datac => ALT_INV_RegForY(7),
	dataf => ALT_INV_RegForALU(0),
	combout => \alu_inst|Shift_inst|horiz[0][8]~14_combout\);

-- Location: LABCELL_X79_Y9_N36
\alu_inst|Shift_inst|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|Shift_inst|cout~0_combout\ = ( RegForX(1) & ( RegForX(2) & ( \alu_inst|Shift_inst|horiz[0][2]~7_combout\ ) ) ) # ( !RegForX(1) & ( RegForX(2) & ( \alu_inst|Shift_inst|horiz[0][4]~8_combout\ ) ) ) # ( RegForX(1) & ( !RegForX(2) & ( 
-- \alu_inst|Shift_inst|horiz[0][6]~10_combout\ ) ) ) # ( !RegForX(1) & ( !RegForX(2) & ( \alu_inst|Shift_inst|horiz[0][8]~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|Shift_inst|ALT_INV_horiz[0][2]~7_combout\,
	datab => \alu_inst|Shift_inst|ALT_INV_horiz[0][8]~14_combout\,
	datac => \alu_inst|Shift_inst|ALT_INV_horiz[0][6]~10_combout\,
	datad => \alu_inst|Shift_inst|ALT_INV_horiz[0][4]~8_combout\,
	datae => ALT_INV_RegForX(1),
	dataf => ALT_INV_RegForX(2),
	combout => \alu_inst|Shift_inst|cout~0_combout\);

-- Location: MLABCELL_X78_Y7_N42
\c_flag_o~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_flag_o~0_combout\ = ( \alufn_i[4]~input_o\ & ( \alu_inst|Shift_inst|cout~0_combout\ & ( (!RegForALU(2) & (RegForALU(4) & \alu_inst|Mux5~0_combout\)) ) ) ) # ( !\alufn_i[4]~input_o\ & ( \alu_inst|Shift_inst|cout~0_combout\ & ( (\alufn_i[3]~input_o\ & 
-- (!RegForALU(2) & (RegForALU(4) & \alu_inst|Mux5~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alufn_i[3]~input_o\,
	datab => ALT_INV_RegForALU(2),
	datac => ALT_INV_RegForALU(4),
	datad => \alu_inst|ALT_INV_Mux5~0_combout\,
	datae => \ALT_INV_alufn_i[4]~input_o\,
	dataf => \alu_inst|Shift_inst|ALT_INV_cout~0_combout\,
	combout => \c_flag_o~0_combout\);

-- Location: LABCELL_X73_Y9_N0
\alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~2_combout\ = ( \alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\ & ( \alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ & ( !\alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\ ) ) ) # ( 
-- \alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\ & ( !\alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ & ( !\alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\ ) ) ) # ( !\alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\ & 
-- ( !\alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ & ( (!\alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0_combout\ & !\alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000110011001100110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~0_combout\,
	datab => \alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~0_combout\,
	datae => \alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~1_combout\,
	dataf => \alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~2_combout\,
	combout => \alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~2_combout\);

-- Location: MLABCELL_X78_Y7_N54
\c_flag_o~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \c_flag_o~2_combout\ = ( \alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~2_combout\ & ( RegForX(7) & ( ((\c_flag_o~1_combout\ & (\alu_inst|yAdd[7]~0_combout\ & !\alu_inst|negAdd~0_combout\))) # (\c_flag_o~0_combout\) ) ) ) # ( 
-- !\alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~2_combout\ & ( RegForX(7) & ( ((\c_flag_o~1_combout\ & ((!\alu_inst|negAdd~0_combout\) # (\alu_inst|yAdd[7]~0_combout\)))) # (\c_flag_o~0_combout\) ) ) ) # ( 
-- \alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~2_combout\ & ( !RegForX(7) & ( ((\c_flag_o~1_combout\ & (\alu_inst|yAdd[7]~0_combout\ & \alu_inst|negAdd~0_combout\))) # (\c_flag_o~0_combout\) ) ) ) # ( 
-- !\alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~2_combout\ & ( !RegForX(7) & ( ((\c_flag_o~1_combout\ & ((\alu_inst|negAdd~0_combout\) # (\alu_inst|yAdd[7]~0_combout\)))) # (\c_flag_o~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010111111111000000011111111101010001111111110001000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_c_flag_o~1_combout\,
	datab => \alu_inst|ALT_INV_yAdd[7]~0_combout\,
	datac => \alu_inst|ALT_INV_negAdd~0_combout\,
	datad => \ALT_INV_c_flag_o~0_combout\,
	datae => \alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~2_combout\,
	dataf => ALT_INV_RegForX(7),
	combout => \c_flag_o~2_combout\);

-- Location: MLABCELL_X78_Y9_N57
\n_flag_o~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \n_flag_o~0_combout\ = ( \alu_inst|Mux0~9_combout\ & ( (\alufn_i[4]~input_o\) # (\alufn_i[3]~input_o\) ) ) # ( !\alu_inst|Mux0~9_combout\ & ( (\alu_inst|Mux0~1_combout\ & ((\alufn_i[4]~input_o\) # (\alufn_i[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alufn_i[3]~input_o\,
	datac => \alu_inst|ALT_INV_Mux0~1_combout\,
	datad => \ALT_INV_alufn_i[4]~input_o\,
	dataf => \alu_inst|ALT_INV_Mux0~9_combout\,
	combout => \n_flag_o~0_combout\);

-- Location: MLABCELL_X78_Y7_N48
\intOUTputForALU[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \intOUTputForALU[0]~0_combout\ = ( \alu_inst|Mux7~1_combout\ & ( (\alufn_i[3]~input_o\) # (\alufn_i[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_alufn_i[4]~input_o\,
	datac => \ALT_INV_alufn_i[3]~input_o\,
	dataf => \alu_inst|ALT_INV_Mux7~1_combout\,
	combout => \intOUTputForALU[0]~0_combout\);

-- Location: FF_X78_Y7_N49
\aluRes_o[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \intOUTputForALU[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluRes_o[0]~reg0_q\);

-- Location: LABCELL_X77_Y7_N36
\intOUTputForALU[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \intOUTputForALU[1]~1_combout\ = ( \alu_inst|Mux6~0_combout\ & ( (\alufn_i[3]~input_o\) # (\alufn_i[4]~input_o\) ) ) # ( !\alu_inst|Mux6~0_combout\ & ( (\alu_inst|Mux6~1_combout\ & ((\alufn_i[3]~input_o\) # (\alufn_i[4]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110011000000110011001100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \alu_inst|ALT_INV_Mux6~1_combout\,
	datac => \ALT_INV_alufn_i[4]~input_o\,
	datad => \ALT_INV_alufn_i[3]~input_o\,
	dataf => \alu_inst|ALT_INV_Mux6~0_combout\,
	combout => \intOUTputForALU[1]~1_combout\);

-- Location: FF_X77_Y7_N37
\aluRes_o[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \intOUTputForALU[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluRes_o[1]~reg0_q\);

-- Location: LABCELL_X79_Y9_N21
\intOUTputForALU[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \intOUTputForALU[2]~2_combout\ = ( \alufn_i[3]~input_o\ & ( \alu_inst|Mux5~2_combout\ ) ) # ( !\alufn_i[3]~input_o\ & ( (\alufn_i[4]~input_o\ & \alu_inst|Mux5~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_alufn_i[4]~input_o\,
	datad => \alu_inst|ALT_INV_Mux5~2_combout\,
	dataf => \ALT_INV_alufn_i[3]~input_o\,
	combout => \intOUTputForALU[2]~2_combout\);

-- Location: FF_X79_Y9_N22
\aluRes_o[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \intOUTputForALU[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluRes_o[2]~reg0_q\);

-- Location: LABCELL_X79_Y9_N0
\intOUTputForALU[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \intOUTputForALU[3]~3_combout\ = ( \alu_inst|Shift_inst|horiz[2][3]~6_combout\ & ( \alu_inst|Mux4~0_combout\ & ( (\alu_inst|Mux0~3_combout\ & (\alu_inst|Mux0~2_combout\ & ((\alufn_i[4]~input_o\) # (\alufn_i[3]~input_o\)))) ) ) ) # ( 
-- \alu_inst|Shift_inst|horiz[2][3]~6_combout\ & ( !\alu_inst|Mux4~0_combout\ & ( (!\alufn_i[3]~input_o\ & (\alufn_i[4]~input_o\ & ((!\alu_inst|Mux0~2_combout\) # (\alu_inst|Mux0~3_combout\)))) # (\alufn_i[3]~input_o\ & (((!\alu_inst|Mux0~2_combout\)) # 
-- (\alu_inst|Mux0~3_combout\))) ) ) ) # ( !\alu_inst|Shift_inst|horiz[2][3]~6_combout\ & ( !\alu_inst|Mux4~0_combout\ & ( (!\alu_inst|Mux0~2_combout\ & ((\alufn_i[4]~input_o\) # (\alufn_i[3]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000010111110001001100000000000000000000000000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alufn_i[3]~input_o\,
	datab => \alu_inst|ALT_INV_Mux0~3_combout\,
	datac => \ALT_INV_alufn_i[4]~input_o\,
	datad => \alu_inst|ALT_INV_Mux0~2_combout\,
	datae => \alu_inst|Shift_inst|ALT_INV_horiz[2][3]~6_combout\,
	dataf => \alu_inst|ALT_INV_Mux4~0_combout\,
	combout => \intOUTputForALU[3]~3_combout\);

-- Location: FF_X79_Y9_N1
\aluRes_o[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \intOUTputForALU[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluRes_o[3]~reg0_q\);

-- Location: LABCELL_X77_Y9_N48
\intOUTputForALU[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \intOUTputForALU[4]~4_combout\ = ( \alu_inst|Mux3~0_combout\ & ( (!\alufn_i[3]~input_o\ & (\alufn_i[4]~input_o\ & ((\alu_inst|Mux3~4_combout\) # (\alu_inst|Mux0~0_combout\)))) # (\alufn_i[3]~input_o\ & (((\alu_inst|Mux3~4_combout\)) # 
-- (\alu_inst|Mux0~0_combout\))) ) ) # ( !\alu_inst|Mux3~0_combout\ & ( (\alu_inst|Mux3~4_combout\ & ((\alufn_i[4]~input_o\) # (\alufn_i[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100010011010111110001001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_alufn_i[3]~input_o\,
	datab => \alu_inst|ALT_INV_Mux0~0_combout\,
	datac => \ALT_INV_alufn_i[4]~input_o\,
	datad => \alu_inst|ALT_INV_Mux3~4_combout\,
	dataf => \alu_inst|ALT_INV_Mux3~0_combout\,
	combout => \intOUTputForALU[4]~4_combout\);

-- Location: FF_X77_Y9_N49
\aluRes_o[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \intOUTputForALU[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluRes_o[4]~reg0_q\);

-- Location: LABCELL_X77_Y8_N6
\intOUTputForALU[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \intOUTputForALU[5]~5_combout\ = ( \alufn_i[3]~input_o\ & ( \alu_inst|Mux2~3_combout\ & ( (\alu_inst|Mux0~0_combout\) # (\alu_inst|Mux2~7_combout\) ) ) ) # ( !\alufn_i[3]~input_o\ & ( \alu_inst|Mux2~3_combout\ & ( (\alufn_i[4]~input_o\ & 
-- ((\alu_inst|Mux0~0_combout\) # (\alu_inst|Mux2~7_combout\))) ) ) ) # ( \alufn_i[3]~input_o\ & ( !\alu_inst|Mux2~3_combout\ & ( ((\alu_inst|Mux2~1_combout\ & \alu_inst|Mux0~0_combout\)) # (\alu_inst|Mux2~7_combout\) ) ) ) # ( !\alufn_i[3]~input_o\ & ( 
-- !\alu_inst|Mux2~3_combout\ & ( (\alufn_i[4]~input_o\ & (((\alu_inst|Mux2~1_combout\ & \alu_inst|Mux0~0_combout\)) # (\alu_inst|Mux2~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000111001100110111011100000011000011110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \alu_inst|ALT_INV_Mux2~1_combout\,
	datab => \alu_inst|ALT_INV_Mux2~7_combout\,
	datac => \ALT_INV_alufn_i[4]~input_o\,
	datad => \alu_inst|ALT_INV_Mux0~0_combout\,
	datae => \ALT_INV_alufn_i[3]~input_o\,
	dataf => \alu_inst|ALT_INV_Mux2~3_combout\,
	combout => \intOUTputForALU[5]~5_combout\);

-- Location: FF_X77_Y8_N8
\aluRes_o[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \intOUTputForALU[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluRes_o[5]~reg0_q\);

-- Location: MLABCELL_X78_Y9_N54
\intOUTputForALU[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \intOUTputForALU[6]~6_combout\ = ( !\alu_inst|Mux1~5_combout\ & ( (\alufn_i[4]~input_o\) # (\alufn_i[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_alufn_i[3]~input_o\,
	datad => \ALT_INV_alufn_i[4]~input_o\,
	dataf => \alu_inst|ALT_INV_Mux1~5_combout\,
	combout => \intOUTputForALU[6]~6_combout\);

-- Location: FF_X78_Y9_N55
\aluRes_o[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \intOUTputForALU[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluRes_o[6]~reg0_q\);

-- Location: FF_X78_Y9_N59
\aluRes_o[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \n_flag_o~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \aluRes_o[7]~reg0_q\);

-- Location: LABCELL_X29_Y32_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;



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

-- DATE "07/03/2024 15:39:43"

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

ENTITY 	topEnv IS
    PORT (
	clk : IN std_logic;
	ena : IN std_logic;
	rst : IN std_logic;
	x_ena : IN std_logic;
	y_ena : IN std_logic;
	alufn_ena : IN std_logic;
	sw07_i : IN std_logic_vector(7 DOWNTO 0);
	y_tohex_o : BUFFER std_logic_vector(7 DOWNTO 0);
	x_tohex_o : BUFFER std_logic_vector(7 DOWNTO 0);
	alufn_tohex_o : BUFFER std_logic_vector(4 DOWNTO 0);
	pwm_o : BUFFER std_logic;
	ov_flag_o : BUFFER std_logic;
	z_flag_o : BUFFER std_logic;
	c_flag_o : BUFFER std_logic;
	n_flag_o : BUFFER std_logic;
	aluRes_o : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END topEnv;

-- Design Ports Information
-- y_tohex_o[0]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_tohex_o[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_tohex_o[2]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_tohex_o[3]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_tohex_o[4]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_tohex_o[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_tohex_o[6]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_tohex_o[7]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_tohex_o[0]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_tohex_o[1]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_tohex_o[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_tohex_o[3]	=>  Location: PIN_AG16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_tohex_o[4]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_tohex_o[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_tohex_o[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_tohex_o[7]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alufn_tohex_o[0]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alufn_tohex_o[1]	=>  Location: PIN_AE24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alufn_tohex_o[2]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alufn_tohex_o[3]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alufn_tohex_o[4]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- sw07_i[0]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y_ena	=>  Location: PIN_AJ4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw07_i[1]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw07_i[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw07_i[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw07_i[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw07_i[5]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw07_i[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw07_i[7]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x_ena	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alufn_ena	=>  Location: PIN_AK4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ena	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF topEnv IS
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
SIGNAL ww_x_ena : std_logic;
SIGNAL ww_y_ena : std_logic;
SIGNAL ww_alufn_ena : std_logic;
SIGNAL ww_sw07_i : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_y_tohex_o : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_x_tohex_o : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_alufn_tohex_o : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_pwm_o : std_logic;
SIGNAL ww_ov_flag_o : std_logic;
SIGNAL ww_z_flag_o : std_logic;
SIGNAL ww_c_flag_o : std_logic;
SIGNAL ww_n_flag_o : std_logic;
SIGNAL ww_aluRes_o : std_logic_vector(7 DOWNTO 0);
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \sw07_i[0]~input_o\ : std_logic;
SIGNAL \y_ena~input_o\ : std_logic;
SIGNAL \sw07_i[1]~input_o\ : std_logic;
SIGNAL \sw07_i[2]~input_o\ : std_logic;
SIGNAL \sw07_i[3]~input_o\ : std_logic;
SIGNAL \sw07_i[4]~input_o\ : std_logic;
SIGNAL \sw07_i[5]~input_o\ : std_logic;
SIGNAL \sw07_i[6]~input_o\ : std_logic;
SIGNAL \sw07_i[7]~input_o\ : std_logic;
SIGNAL \x_ena~input_o\ : std_logic;
SIGNAL \alufn_ena~input_o\ : std_logic;
SIGNAL \alufnReg[3]~feeder_combout\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \counter_env_clk|counter[0]~5_combout\ : std_logic;
SIGNAL \counter_env_clk|counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_env_clk|counter[1]~4_combout\ : std_logic;
SIGNAL \counter_env_clk|counter[2]~3_combout\ : std_logic;
SIGNAL \counter_env_clk|counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_env_clk|counter[3]~2_combout\ : std_logic;
SIGNAL \counter_env_clk|counter[4]~1_combout\ : std_logic;
SIGNAL \counter_env_clk|counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_env_clk|Equal0~0_combout\ : std_logic;
SIGNAL \counter_env_clk|counter[5]~0_combout\ : std_logic;
SIGNAL \counter_env_clk|clk_out_int~0_combout\ : std_logic;
SIGNAL \counter_env_clk|clk_out_int~feeder_combout\ : std_logic;
SIGNAL \counter_env_clk|clk_out_int~q\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Add0~17_sumout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Add0~18\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Add0~21_sumout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Add0~22\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Add0~25_sumout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Add0~26\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Add0~29_sumout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Equal0~3_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Add0~30\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Add0~9_sumout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|count[4]~feeder_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Add0~10\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Add0~13_sumout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Equal0~1_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Add0~14\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Add0~1_sumout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Add0~2\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Add0~5_sumout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Equal0~0_combout\ : std_logic;
SIGNAL \ena~input_o\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|count[7]~1_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Equal0~2_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|count[7]~0_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Equal1~2_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Equal1~3_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Equal1~1_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Equal1~0_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Equal1~4_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|Equal0~4_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|intPWM~0_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|intPWM~q\ : std_logic;
SIGNAL \top_inst|pwm_o~0_combout\ : std_logic;
SIGNAL \top_inst|ov_flag_o~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Equal6~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|negAdd~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:7:FA_i_instance|s~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux0~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|yAdd[5]~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|yAdd[4]~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|yAdd[3]~3_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FA0|cout~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|yAdd[2]~4_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|yAdd[1]~5_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FA0|cout~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux0~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|yAdd[7]~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux1~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux1~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux0~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux1~3_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|horiz[0][0]~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux0~3_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux0~4_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|horiz[0][5]~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|horiz[0][3]~3_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|horiz[0][7]~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|horiz[2][7]~5_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux1~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux0~5_combout\ : std_logic;
SIGNAL \top_inst|ov_flag_o~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux1~4_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux1~5_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux1~9_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|internalCarry~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux1~6_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|horiz[0][6]~10_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|horiz[0][4]~7_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|horiz[2][6]~11_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux1~7_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux1~8_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux3~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux3~3_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux3~4_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|horiz[2][4]~8_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux3~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux3~5_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux3~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux3~6_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux2~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|horiz[2][5]~9_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux2~3_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux2~4_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux2~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux2~5_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux2~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux2~6_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux0~6_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux6~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux6~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|s~combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|horiz[2][2]~12_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux5~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux5~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux5~3_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux5~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|s~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux4~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux4~3_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux4~2_combout\ : std_logic;
SIGNAL \top_inst|Equal0~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FA0|s~combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux7~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux7~1_combout\ : std_logic;
SIGNAL \top_inst|z_flag_o~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux4~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:1:FA_i_instance|s~combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Mux6~1_combout\ : std_logic;
SIGNAL \top_inst|z_flag_o~1_combout\ : std_logic;
SIGNAL \top_inst|z_flag_o~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|horiz[0][8]~13_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|cout~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|internalCarry~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Cflag_o~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Cflag_o~1_combout\ : std_logic;
SIGNAL \top_inst|n_flag_o~0_combout\ : std_logic;
SIGNAL \top_inst|aluRes_o[0]~0_combout\ : std_logic;
SIGNAL \top_inst|aluRes_o[1]~1_combout\ : std_logic;
SIGNAL \top_inst|aluRes_o[2]~2_combout\ : std_logic;
SIGNAL \top_inst|aluRes_o[3]~3_combout\ : std_logic;
SIGNAL \top_inst|aluRes_o[4]~4_combout\ : std_logic;
SIGNAL \top_inst|aluRes_o[5]~5_combout\ : std_logic;
SIGNAL \top_inst|aluRes_o[6]~6_combout\ : std_logic;
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \top_inst|pwm_inst|pwm_inst|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL yReg : std_logic_vector(7 DOWNTO 0);
SIGNAL xReg : std_logic_vector(7 DOWNTO 0);
SIGNAL alufnReg : std_logic_vector(4 DOWNTO 0);
SIGNAL \top_inst|alu_inst|AddSub_inst|xForAdder\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \counter_env_clk|counter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \counter_env_clk|m1|pll_inst|altera_pll_i|outclk_wire\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \counter_env_clk|ALT_INV_counter[0]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_env_clk|ALT_INV_counter[2]~DUPLICATE_q\ : std_logic;
SIGNAL \counter_env_clk|ALT_INV_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_ena~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_sw07_i[3]~input_o\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux1~9_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \counter_env_clk|ALT_INV_clk_out_int~0_combout\ : std_logic;
SIGNAL \counter_env_clk|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \counter_env_clk|ALT_INV_counter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \counter_env_clk|ALT_INV_clk_out_int~q\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Cflag_o~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_internalCarry~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][8]~13_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \top_inst|ALT_INV_z_flag_o~1_combout\ : std_logic;
SIGNAL \top_inst|ALT_INV_z_flag_o~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FA0|ALT_INV_s~combout\ : std_logic;
SIGNAL \top_inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:1:FA_i_instance|ALT_INV_s~combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux0~6_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[2][2]~12_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|ALT_INV_s~combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux1~8_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux1~7_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux1~6_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_internalCarry~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[2][6]~11_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][6]~10_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux1~5_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux2~6_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux2~5_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux2~4_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[2][5]~9_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux3~6_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux3~5_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux3~4_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[2][4]~8_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][4]~7_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][2]~6_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \top_inst|ALT_INV_ov_flag_o~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux0~5_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[2][7]~5_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][1]~4_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][3]~3_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][5]~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][7]~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][0]~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:7:FA_i_instance|ALT_INV_s~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FA0|ALT_INV_cout~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FA0|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_yAdd[1]~5_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|ALT_INV_xForAdder\ : std_logic_vector(2 DOWNTO 1);
SIGNAL \top_inst|alu_inst|ALT_INV_yAdd[2]~4_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_yAdd[3]~3_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_yAdd[4]~2_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_yAdd[5]~1_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_negAdd~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_yAdd[7]~0_combout\ : std_logic;
SIGNAL \top_inst|alu_inst|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|ALT_INV_intPWM~q\ : std_logic;
SIGNAL ALT_INV_alufnReg : std_logic_vector(4 DOWNTO 0);
SIGNAL ALT_INV_xReg : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_yReg : std_logic_vector(7 DOWNTO 0);
SIGNAL \top_inst|pwm_inst|pwm_inst|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \top_inst|pwm_inst|pwm_inst|ALT_INV_count\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_ena <= ena;
ww_rst <= rst;
ww_x_ena <= x_ena;
ww_y_ena <= y_ena;
ww_alufn_ena <= alufn_ena;
ww_sw07_i <= sw07_i;
y_tohex_o <= ww_y_tohex_o;
x_tohex_o <= ww_x_tohex_o;
alufn_tohex_o <= ww_alufn_tohex_o;
pwm_o <= ww_pwm_o;
ov_flag_o <= ww_ov_flag_o;
z_flag_o <= ww_z_flag_o;
c_flag_o <= ww_c_flag_o;
n_flag_o <= ww_n_flag_o;
aluRes_o <= ww_aluRes_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \clk~input_o\);

\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & 
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ <= \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(6);

\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & 
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & 
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & 
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\counter_env_clk|ALT_INV_counter[0]~DUPLICATE_q\ <= NOT \counter_env_clk|counter[0]~DUPLICATE_q\;
\counter_env_clk|ALT_INV_counter[2]~DUPLICATE_q\ <= NOT \counter_env_clk|counter[2]~DUPLICATE_q\;
\counter_env_clk|ALT_INV_counter[3]~DUPLICATE_q\ <= NOT \counter_env_clk|counter[3]~DUPLICATE_q\;
\ALT_INV_ena~input_o\ <= NOT \ena~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_sw07_i[3]~input_o\ <= NOT \sw07_i[3]~input_o\;
\top_inst|alu_inst|ALT_INV_Mux1~9_combout\ <= NOT \top_inst|alu_inst|Mux1~9_combout\;
\top_inst|alu_inst|ALT_INV_Mux5~3_combout\ <= NOT \top_inst|alu_inst|Mux5~3_combout\;
\top_inst|alu_inst|ALT_INV_Mux6~2_combout\ <= NOT \top_inst|alu_inst|Mux6~2_combout\;
\top_inst|alu_inst|ALT_INV_Mux4~3_combout\ <= NOT \top_inst|alu_inst|Mux4~3_combout\;
\top_inst|alu_inst|ALT_INV_Mux7~1_combout\ <= NOT \top_inst|alu_inst|Mux7~1_combout\;
\counter_env_clk|ALT_INV_clk_out_int~0_combout\ <= NOT \counter_env_clk|clk_out_int~0_combout\;
\counter_env_clk|ALT_INV_Equal0~0_combout\ <= NOT \counter_env_clk|Equal0~0_combout\;
\counter_env_clk|ALT_INV_counter\(0) <= NOT \counter_env_clk|counter\(0);
\counter_env_clk|ALT_INV_counter\(1) <= NOT \counter_env_clk|counter\(1);
\counter_env_clk|ALT_INV_counter\(2) <= NOT \counter_env_clk|counter\(2);
\counter_env_clk|ALT_INV_counter\(3) <= NOT \counter_env_clk|counter\(3);
\counter_env_clk|ALT_INV_counter\(4) <= NOT \counter_env_clk|counter\(4);
\counter_env_clk|ALT_INV_counter\(5) <= NOT \counter_env_clk|counter\(5);
\counter_env_clk|ALT_INV_clk_out_int~q\ <= NOT \counter_env_clk|clk_out_int~q\;
\top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~4_combout\ <= NOT \top_inst|pwm_inst|pwm_inst|Equal0~4_combout\;
\top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~3_combout\ <= NOT \top_inst|pwm_inst|pwm_inst|Equal0~3_combout\;
\top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~2_combout\ <= NOT \top_inst|pwm_inst|pwm_inst|Equal0~2_combout\;
\top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~1_combout\ <= NOT \top_inst|pwm_inst|pwm_inst|Equal0~1_combout\;
\top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~0_combout\ <= NOT \top_inst|pwm_inst|pwm_inst|Equal0~0_combout\;
\top_inst|pwm_inst|pwm_inst|ALT_INV_Equal1~4_combout\ <= NOT \top_inst|pwm_inst|pwm_inst|Equal1~4_combout\;
\top_inst|pwm_inst|pwm_inst|ALT_INV_Equal1~3_combout\ <= NOT \top_inst|pwm_inst|pwm_inst|Equal1~3_combout\;
\top_inst|pwm_inst|pwm_inst|ALT_INV_Equal1~2_combout\ <= NOT \top_inst|pwm_inst|pwm_inst|Equal1~2_combout\;
\top_inst|pwm_inst|pwm_inst|ALT_INV_Equal1~1_combout\ <= NOT \top_inst|pwm_inst|pwm_inst|Equal1~1_combout\;
\top_inst|pwm_inst|pwm_inst|ALT_INV_Equal1~0_combout\ <= NOT \top_inst|pwm_inst|pwm_inst|Equal1~0_combout\;
\top_inst|alu_inst|ALT_INV_Cflag_o~0_combout\ <= NOT \top_inst|alu_inst|Cflag_o~0_combout\;
\top_inst|alu_inst|ALT_INV_internalCarry~1_combout\ <= NOT \top_inst|alu_inst|internalCarry~1_combout\;
\top_inst|alu_inst|Shift_inst|ALT_INV_cout~0_combout\ <= NOT \top_inst|alu_inst|Shift_inst|cout~0_combout\;
\top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][8]~13_combout\ <= NOT \top_inst|alu_inst|Shift_inst|horiz[0][8]~13_combout\;
\top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~2_combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~2_combout\;
\top_inst|ALT_INV_z_flag_o~1_combout\ <= NOT \top_inst|z_flag_o~1_combout\;
\top_inst|ALT_INV_z_flag_o~0_combout\ <= NOT \top_inst|z_flag_o~0_combout\;
\top_inst|alu_inst|ALT_INV_Mux7~0_combout\ <= NOT \top_inst|alu_inst|Mux7~0_combout\;
\top_inst|alu_inst|AddSub_inst|FA0|ALT_INV_s~combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FA0|s~combout\;
\top_inst|ALT_INV_Equal0~0_combout\ <= NOT \top_inst|Equal0~0_combout\;
\top_inst|alu_inst|ALT_INV_Mux4~2_combout\ <= NOT \top_inst|alu_inst|Mux4~2_combout\;
\top_inst|alu_inst|ALT_INV_Mux4~1_combout\ <= NOT \top_inst|alu_inst|Mux4~1_combout\;
\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_s~0_combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|s~0_combout\;
\top_inst|alu_inst|ALT_INV_Mux4~0_combout\ <= NOT \top_inst|alu_inst|Mux4~0_combout\;
\top_inst|alu_inst|ALT_INV_Mux6~1_combout\ <= NOT \top_inst|alu_inst|Mux6~1_combout\;
\top_inst|alu_inst|AddSub_inst|FAN:1:FA_i_instance|ALT_INV_s~combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FAN:1:FA_i_instance|s~combout\;
\top_inst|alu_inst|ALT_INV_Mux6~0_combout\ <= NOT \top_inst|alu_inst|Mux6~0_combout\;
\top_inst|alu_inst|ALT_INV_Mux0~6_combout\ <= NOT \top_inst|alu_inst|Mux0~6_combout\;
\top_inst|alu_inst|ALT_INV_Mux5~2_combout\ <= NOT \top_inst|alu_inst|Mux5~2_combout\;
\top_inst|alu_inst|ALT_INV_Mux5~1_combout\ <= NOT \top_inst|alu_inst|Mux5~1_combout\;
\top_inst|alu_inst|ALT_INV_Mux5~0_combout\ <= NOT \top_inst|alu_inst|Mux5~0_combout\;
\top_inst|alu_inst|Shift_inst|ALT_INV_horiz[2][2]~12_combout\ <= NOT \top_inst|alu_inst|Shift_inst|horiz[2][2]~12_combout\;
\top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|ALT_INV_s~combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|s~combout\;
\top_inst|alu_inst|ALT_INV_Mux1~8_combout\ <= NOT \top_inst|alu_inst|Mux1~8_combout\;
\top_inst|alu_inst|ALT_INV_Mux1~7_combout\ <= NOT \top_inst|alu_inst|Mux1~7_combout\;
\top_inst|alu_inst|ALT_INV_Mux1~6_combout\ <= NOT \top_inst|alu_inst|Mux1~6_combout\;
\top_inst|alu_inst|ALT_INV_internalCarry~0_combout\ <= NOT \top_inst|alu_inst|internalCarry~0_combout\;
\top_inst|alu_inst|Shift_inst|ALT_INV_horiz[2][6]~11_combout\ <= NOT \top_inst|alu_inst|Shift_inst|horiz[2][6]~11_combout\;
\top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][6]~10_combout\ <= NOT \top_inst|alu_inst|Shift_inst|horiz[0][6]~10_combout\;
\top_inst|alu_inst|ALT_INV_Mux1~5_combout\ <= NOT \top_inst|alu_inst|Mux1~5_combout\;
\top_inst|alu_inst|ALT_INV_Mux1~4_combout\ <= NOT \top_inst|alu_inst|Mux1~4_combout\;
\top_inst|alu_inst|ALT_INV_Mux2~6_combout\ <= NOT \top_inst|alu_inst|Mux2~6_combout\;
\top_inst|alu_inst|ALT_INV_Mux2~5_combout\ <= NOT \top_inst|alu_inst|Mux2~5_combout\;
\top_inst|alu_inst|ALT_INV_Mux2~4_combout\ <= NOT \top_inst|alu_inst|Mux2~4_combout\;
\top_inst|alu_inst|ALT_INV_Mux2~3_combout\ <= NOT \top_inst|alu_inst|Mux2~3_combout\;
\top_inst|alu_inst|ALT_INV_Mux2~2_combout\ <= NOT \top_inst|alu_inst|Mux2~2_combout\;
\top_inst|alu_inst|Shift_inst|ALT_INV_horiz[2][5]~9_combout\ <= NOT \top_inst|alu_inst|Shift_inst|horiz[2][5]~9_combout\;
\top_inst|alu_inst|ALT_INV_Mux2~1_combout\ <= NOT \top_inst|alu_inst|Mux2~1_combout\;
\top_inst|alu_inst|ALT_INV_Mux2~0_combout\ <= NOT \top_inst|alu_inst|Mux2~0_combout\;
\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~2_combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~2_combout\;
\top_inst|alu_inst|ALT_INV_Mux3~6_combout\ <= NOT \top_inst|alu_inst|Mux3~6_combout\;
\top_inst|alu_inst|ALT_INV_Mux3~5_combout\ <= NOT \top_inst|alu_inst|Mux3~5_combout\;
\top_inst|alu_inst|ALT_INV_Mux3~4_combout\ <= NOT \top_inst|alu_inst|Mux3~4_combout\;
\top_inst|alu_inst|ALT_INV_Mux3~3_combout\ <= NOT \top_inst|alu_inst|Mux3~3_combout\;
\top_inst|alu_inst|ALT_INV_Mux3~2_combout\ <= NOT \top_inst|alu_inst|Mux3~2_combout\;
\top_inst|alu_inst|Shift_inst|ALT_INV_horiz[2][4]~8_combout\ <= NOT \top_inst|alu_inst|Shift_inst|horiz[2][4]~8_combout\;
\top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][4]~7_combout\ <= NOT \top_inst|alu_inst|Shift_inst|horiz[0][4]~7_combout\;
\top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][2]~6_combout\ <= NOT \top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\;
\top_inst|alu_inst|ALT_INV_Mux3~1_combout\ <= NOT \top_inst|alu_inst|Mux3~1_combout\;
\top_inst|alu_inst|ALT_INV_Mux3~0_combout\ <= NOT \top_inst|alu_inst|Mux3~0_combout\;
\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~2_combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~2_combout\;
\top_inst|ALT_INV_ov_flag_o~0_combout\ <= NOT \top_inst|ov_flag_o~0_combout\;
\top_inst|alu_inst|ALT_INV_Mux0~5_combout\ <= NOT \top_inst|alu_inst|Mux0~5_combout\;
\top_inst|alu_inst|Shift_inst|ALT_INV_horiz[2][7]~5_combout\ <= NOT \top_inst|alu_inst|Shift_inst|horiz[2][7]~5_combout\;
\top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][1]~4_combout\ <= NOT \top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\;
\top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][3]~3_combout\ <= NOT \top_inst|alu_inst|Shift_inst|horiz[0][3]~3_combout\;
\top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][5]~2_combout\ <= NOT \top_inst|alu_inst|Shift_inst|horiz[0][5]~2_combout\;
\top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][7]~1_combout\ <= NOT \top_inst|alu_inst|Shift_inst|horiz[0][7]~1_combout\;
\top_inst|alu_inst|ALT_INV_Mux0~4_combout\ <= NOT \top_inst|alu_inst|Mux0~4_combout\;
\top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][0]~0_combout\ <= NOT \top_inst|alu_inst|Shift_inst|horiz[0][0]~0_combout\;
\top_inst|alu_inst|ALT_INV_Mux0~3_combout\ <= NOT \top_inst|alu_inst|Mux0~3_combout\;
\top_inst|alu_inst|ALT_INV_Mux1~3_combout\ <= NOT \top_inst|alu_inst|Mux1~3_combout\;
\top_inst|alu_inst|ALT_INV_Mux0~2_combout\ <= NOT \top_inst|alu_inst|Mux0~2_combout\;
\top_inst|alu_inst|ALT_INV_Mux1~2_combout\ <= NOT \top_inst|alu_inst|Mux1~2_combout\;
\top_inst|alu_inst|ALT_INV_Mux1~1_combout\ <= NOT \top_inst|alu_inst|Mux1~1_combout\;
\top_inst|alu_inst|ALT_INV_Mux1~0_combout\ <= NOT \top_inst|alu_inst|Mux1~0_combout\;
\top_inst|alu_inst|ALT_INV_Mux0~1_combout\ <= NOT \top_inst|alu_inst|Mux0~1_combout\;
\top_inst|alu_inst|AddSub_inst|FAN:7:FA_i_instance|ALT_INV_s~0_combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FAN:7:FA_i_instance|s~0_combout\;
\top_inst|alu_inst|ALT_INV_Mux0~0_combout\ <= NOT \top_inst|alu_inst|Mux0~0_combout\;
\top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~1_combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\;
\top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~2_combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\;
\top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~1_combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~1_combout\;
\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~1_combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\;
\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~1_combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\;
\top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|ALT_INV_cout~0_combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\;
\top_inst|alu_inst|AddSub_inst|FA0|ALT_INV_cout~1_combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FA0|cout~1_combout\;
\top_inst|alu_inst|AddSub_inst|FA0|ALT_INV_cout~0_combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FA0|cout~0_combout\;
\top_inst|alu_inst|ALT_INV_yAdd[1]~5_combout\ <= NOT \top_inst|alu_inst|yAdd[1]~5_combout\;
\top_inst|alu_inst|AddSub_inst|ALT_INV_xForAdder\(1) <= NOT \top_inst|alu_inst|AddSub_inst|xForAdder\(1);
\top_inst|alu_inst|ALT_INV_yAdd[2]~4_combout\ <= NOT \top_inst|alu_inst|yAdd[2]~4_combout\;
\top_inst|alu_inst|AddSub_inst|ALT_INV_xForAdder\(2) <= NOT \top_inst|alu_inst|AddSub_inst|xForAdder\(2);
\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~0_combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\;
\top_inst|alu_inst|ALT_INV_yAdd[3]~3_combout\ <= NOT \top_inst|alu_inst|yAdd[3]~3_combout\;
\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~0_combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\;
\top_inst|alu_inst|ALT_INV_yAdd[4]~2_combout\ <= NOT \top_inst|alu_inst|yAdd[4]~2_combout\;
\top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~0_combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0_combout\;
\top_inst|alu_inst|ALT_INV_yAdd[5]~1_combout\ <= NOT \top_inst|alu_inst|yAdd[5]~1_combout\;
\top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~0_combout\ <= NOT \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\;
\top_inst|alu_inst|ALT_INV_negAdd~0_combout\ <= NOT \top_inst|alu_inst|negAdd~0_combout\;
\top_inst|alu_inst|ALT_INV_yAdd[7]~0_combout\ <= NOT \top_inst|alu_inst|yAdd[7]~0_combout\;
\top_inst|alu_inst|ALT_INV_Equal6~0_combout\ <= NOT \top_inst|alu_inst|Equal6~0_combout\;
\top_inst|pwm_inst|pwm_inst|ALT_INV_intPWM~q\ <= NOT \top_inst|pwm_inst|pwm_inst|intPWM~q\;
ALT_INV_alufnReg(4) <= NOT alufnReg(4);
ALT_INV_alufnReg(3) <= NOT alufnReg(3);
ALT_INV_alufnReg(2) <= NOT alufnReg(2);
ALT_INV_alufnReg(1) <= NOT alufnReg(1);
ALT_INV_alufnReg(0) <= NOT alufnReg(0);
ALT_INV_xReg(7) <= NOT xReg(7);
ALT_INV_xReg(6) <= NOT xReg(6);
ALT_INV_xReg(5) <= NOT xReg(5);
ALT_INV_xReg(4) <= NOT xReg(4);
ALT_INV_xReg(3) <= NOT xReg(3);
ALT_INV_xReg(2) <= NOT xReg(2);
ALT_INV_xReg(1) <= NOT xReg(1);
ALT_INV_xReg(0) <= NOT xReg(0);
ALT_INV_yReg(7) <= NOT yReg(7);
ALT_INV_yReg(6) <= NOT yReg(6);
ALT_INV_yReg(5) <= NOT yReg(5);
ALT_INV_yReg(4) <= NOT yReg(4);
ALT_INV_yReg(3) <= NOT yReg(3);
ALT_INV_yReg(2) <= NOT yReg(2);
ALT_INV_yReg(1) <= NOT yReg(1);
ALT_INV_yReg(0) <= NOT yReg(0);
\top_inst|pwm_inst|pwm_inst|ALT_INV_Add0~9_sumout\ <= NOT \top_inst|pwm_inst|pwm_inst|Add0~9_sumout\;
\top_inst|pwm_inst|pwm_inst|ALT_INV_count\(3) <= NOT \top_inst|pwm_inst|pwm_inst|count\(3);
\top_inst|pwm_inst|pwm_inst|ALT_INV_count\(2) <= NOT \top_inst|pwm_inst|pwm_inst|count\(2);
\top_inst|pwm_inst|pwm_inst|ALT_INV_count\(1) <= NOT \top_inst|pwm_inst|pwm_inst|count\(1);
\top_inst|pwm_inst|pwm_inst|ALT_INV_count\(0) <= NOT \top_inst|pwm_inst|pwm_inst|count\(0);
\top_inst|pwm_inst|pwm_inst|ALT_INV_count\(5) <= NOT \top_inst|pwm_inst|pwm_inst|count\(5);
\top_inst|pwm_inst|pwm_inst|ALT_INV_count\(4) <= NOT \top_inst|pwm_inst|pwm_inst|count\(4);
\top_inst|pwm_inst|pwm_inst|ALT_INV_count\(7) <= NOT \top_inst|pwm_inst|pwm_inst|count\(7);
\top_inst|pwm_inst|pwm_inst|ALT_INV_count\(6) <= NOT \top_inst|pwm_inst|pwm_inst|count\(6);

-- Location: IOOBUF_X88_Y0_N3
\y_tohex_o[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => yReg(0),
	devoe => ww_devoe,
	o => ww_y_tohex_o(0));

-- Location: IOOBUF_X56_Y0_N19
\y_tohex_o[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => yReg(1),
	devoe => ww_devoe,
	o => ww_y_tohex_o(1));

-- Location: IOOBUF_X68_Y0_N19
\y_tohex_o[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => yReg(2),
	devoe => ww_devoe,
	o => ww_y_tohex_o(2));

-- Location: IOOBUF_X68_Y0_N2
\y_tohex_o[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => yReg(3),
	devoe => ww_devoe,
	o => ww_y_tohex_o(3));

-- Location: IOOBUF_X72_Y0_N2
\y_tohex_o[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => yReg(4),
	devoe => ww_devoe,
	o => ww_y_tohex_o(4));

-- Location: IOOBUF_X50_Y0_N59
\y_tohex_o[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => yReg(5),
	devoe => ww_devoe,
	o => ww_y_tohex_o(5));

-- Location: IOOBUF_X52_Y0_N19
\y_tohex_o[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => yReg(6),
	devoe => ww_devoe,
	o => ww_y_tohex_o(6));

-- Location: IOOBUF_X84_Y0_N2
\y_tohex_o[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => yReg(7),
	devoe => ww_devoe,
	o => ww_y_tohex_o(7));

-- Location: IOOBUF_X60_Y0_N19
\x_tohex_o[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => xReg(0),
	devoe => ww_devoe,
	o => ww_x_tohex_o(0));

-- Location: IOOBUF_X80_Y0_N2
\x_tohex_o[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => xReg(1),
	devoe => ww_devoe,
	o => ww_x_tohex_o(1));

-- Location: IOOBUF_X50_Y0_N93
\x_tohex_o[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => xReg(2),
	devoe => ww_devoe,
	o => ww_x_tohex_o(2));

-- Location: IOOBUF_X50_Y0_N76
\x_tohex_o[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => xReg(3),
	devoe => ww_devoe,
	o => ww_x_tohex_o(3));

-- Location: IOOBUF_X56_Y0_N36
\x_tohex_o[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => xReg(4),
	devoe => ww_devoe,
	o => ww_x_tohex_o(4));

-- Location: IOOBUF_X58_Y0_N76
\x_tohex_o[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => xReg(5),
	devoe => ww_devoe,
	o => ww_x_tohex_o(5));

-- Location: IOOBUF_X56_Y0_N53
\x_tohex_o[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => xReg(6),
	devoe => ww_devoe,
	o => ww_x_tohex_o(6));

-- Location: IOOBUF_X52_Y0_N53
\x_tohex_o[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => xReg(7),
	devoe => ww_devoe,
	o => ww_x_tohex_o(7));

-- Location: IOOBUF_X86_Y0_N36
\alufn_tohex_o[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => alufnReg(0),
	devoe => ww_devoe,
	o => ww_alufn_tohex_o(0));

-- Location: IOOBUF_X88_Y0_N54
\alufn_tohex_o[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => alufnReg(1),
	devoe => ww_devoe,
	o => ww_alufn_tohex_o(1));

-- Location: IOOBUF_X74_Y0_N59
\alufn_tohex_o[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => alufnReg(2),
	devoe => ww_devoe,
	o => ww_alufn_tohex_o(2));

-- Location: IOOBUF_X89_Y9_N5
\alufn_tohex_o[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => alufnReg(3),
	devoe => ww_devoe,
	o => ww_alufn_tohex_o(3));

-- Location: IOOBUF_X86_Y0_N2
\alufn_tohex_o[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => alufnReg(4),
	devoe => ww_devoe,
	o => ww_alufn_tohex_o(4));

-- Location: IOOBUF_X14_Y0_N53
\pwm_o~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \top_inst|pwm_o~0_combout\,
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
	i => \top_inst|ov_flag_o~1_combout\,
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
	i => \top_inst|z_flag_o~2_combout\,
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
	i => \top_inst|alu_inst|Cflag_o~1_combout\,
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
	i => \top_inst|n_flag_o~0_combout\,
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
	i => \top_inst|aluRes_o[0]~0_combout\,
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
	i => \top_inst|aluRes_o[1]~1_combout\,
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
	i => \top_inst|aluRes_o[2]~2_combout\,
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
	i => \top_inst|aluRes_o[3]~3_combout\,
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
	i => \top_inst|aluRes_o[4]~4_combout\,
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
	i => \top_inst|aluRes_o[5]~5_combout\,
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
	i => \top_inst|aluRes_o[6]~6_combout\,
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
	i => \top_inst|n_flag_o~0_combout\,
	devoe => ww_devoe,
	o => ww_aluRes_o(7));

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
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

-- Location: IOIBUF_X89_Y21_N4
\sw07_i[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw07_i(0),
	o => \sw07_i[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N35
\y_ena~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y_ena,
	o => \y_ena~input_o\);

-- Location: FF_X71_Y4_N59
\yReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[0]~input_o\,
	sload => VCC,
	ena => \y_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yReg(0));

-- Location: IOIBUF_X89_Y25_N21
\sw07_i[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw07_i(1),
	o => \sw07_i[1]~input_o\);

-- Location: FF_X71_Y4_N35
\yReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[1]~input_o\,
	sload => VCC,
	ena => \y_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yReg(1));

-- Location: IOIBUF_X89_Y21_N38
\sw07_i[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw07_i(2),
	o => \sw07_i[2]~input_o\);

-- Location: FF_X73_Y4_N32
\yReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[2]~input_o\,
	sload => VCC,
	ena => \y_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yReg(2));

-- Location: IOIBUF_X89_Y25_N55
\sw07_i[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw07_i(3),
	o => \sw07_i[3]~input_o\);

-- Location: FF_X73_Y4_N41
\yReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[3]~input_o\,
	sload => VCC,
	ena => \y_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yReg(3));

-- Location: IOIBUF_X89_Y20_N44
\sw07_i[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw07_i(4),
	o => \sw07_i[4]~input_o\);

-- Location: FF_X73_Y4_N47
\yReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[4]~input_o\,
	sload => VCC,
	ena => \y_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yReg(4));

-- Location: IOIBUF_X89_Y20_N61
\sw07_i[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw07_i(5),
	o => \sw07_i[5]~input_o\);

-- Location: FF_X71_Y4_N41
\yReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[5]~input_o\,
	sload => VCC,
	ena => \y_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yReg(5));

-- Location: IOIBUF_X89_Y20_N78
\sw07_i[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw07_i(6),
	o => \sw07_i[6]~input_o\);

-- Location: FF_X73_Y4_N53
\yReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[6]~input_o\,
	sload => VCC,
	ena => \y_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yReg(6));

-- Location: IOIBUF_X89_Y25_N38
\sw07_i[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw07_i(7),
	o => \sw07_i[7]~input_o\);

-- Location: FF_X72_Y4_N32
\yReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[7]~input_o\,
	sload => VCC,
	ena => \y_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => yReg(7));

-- Location: IOIBUF_X36_Y0_N1
\x_ena~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x_ena,
	o => \x_ena~input_o\);

-- Location: FF_X78_Y4_N2
\xReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[0]~input_o\,
	sload => VCC,
	ena => \x_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xReg(0));

-- Location: FF_X72_Y4_N8
\xReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[1]~input_o\,
	sload => VCC,
	ena => \x_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xReg(1));

-- Location: FF_X74_Y4_N2
\xReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[2]~input_o\,
	sload => VCC,
	ena => \x_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xReg(2));

-- Location: FF_X72_Y4_N17
\xReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[3]~input_o\,
	sload => VCC,
	ena => \x_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xReg(3));

-- Location: FF_X73_Y4_N59
\xReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[4]~input_o\,
	sload => VCC,
	ena => \x_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xReg(4));

-- Location: FF_X72_Y4_N23
\xReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[5]~input_o\,
	sload => VCC,
	ena => \x_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xReg(5));

-- Location: FF_X73_Y4_N2
\xReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[6]~input_o\,
	sload => VCC,
	ena => \x_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xReg(6));

-- Location: FF_X72_Y4_N56
\xReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[7]~input_o\,
	sload => VCC,
	ena => \x_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => xReg(7));

-- Location: IOIBUF_X22_Y0_N52
\alufn_ena~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alufn_ena,
	o => \alufn_ena~input_o\);

-- Location: FF_X78_Y4_N38
\alufnReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[0]~input_o\,
	sload => VCC,
	ena => \alufn_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => alufnReg(0));

-- Location: FF_X78_Y4_N17
\alufnReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[1]~input_o\,
	sload => VCC,
	ena => \alufn_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => alufnReg(1));

-- Location: FF_X78_Y4_N23
\alufnReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[2]~input_o\,
	sload => VCC,
	ena => \alufn_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => alufnReg(2));

-- Location: MLABCELL_X72_Y4_N3
\alufnReg[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \alufnReg[3]~feeder_combout\ = ( \sw07_i[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_sw07_i[3]~input_o\,
	combout => \alufnReg[3]~feeder_combout\);

-- Location: FF_X72_Y4_N5
\alufnReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \alufnReg[3]~feeder_combout\,
	ena => \alufn_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => alufnReg(3));

-- Location: FF_X78_Y4_N26
\alufnReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \sw07_i[4]~input_o\,
	sload => VCC,
	ena => \alufn_ena~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => alufnReg(4));

-- Location: PLLREFCLKSELECT_X0_Y21_N0
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: FRACTIONALPLL_X0_Y15_N0
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "none",
	nreset_invert => "true",
	output_clock_frequency => "300.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 4000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 10,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "m_cnt",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 6,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 6,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 1,
	pll_n_cnt_lo_div => 1,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "50.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \counter_env_clk|m1|pll_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => GND,
	refclkin => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \counter_env_clk|m1|pll_inst|altera_pll_i|fboutclk_wire\(0),
	tclk => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y19_N0
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y20_N1
\counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 75,
	dprio0_cnt_lo_div => 75,
	dprio0_cnt_odd_div_even_duty_en => "false",
	duty_cycle => 50,
	output_clock_frequency => "2.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 6)
-- pragma translate_on
PORT MAP (
	nen0 => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\,
	tclk0 => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \counter_env_clk|m1|pll_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \counter_env_clk|m1|pll_inst|altera_pll_i|outclk_wire\(0));

-- Location: CLKCTRL_G0
\counter_env_clk|m1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \counter_env_clk|m1|pll_inst|altera_pll_i|outclk_wire\(0),
	outclk => \counter_env_clk|m1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\);

-- Location: FF_X70_Y4_N23
\counter_env_clk|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_env_clk|m1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \counter_env_clk|counter[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_env_clk|counter\(0));

-- Location: LABCELL_X70_Y4_N21
\counter_env_clk|counter[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_env_clk|counter[0]~5_combout\ = ( !\counter_env_clk|counter\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \counter_env_clk|ALT_INV_counter\(0),
	combout => \counter_env_clk|counter[0]~5_combout\);

-- Location: FF_X70_Y4_N22
\counter_env_clk|counter[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_env_clk|m1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \counter_env_clk|counter[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_env_clk|counter[0]~DUPLICATE_q\);

-- Location: LABCELL_X70_Y4_N6
\counter_env_clk|counter[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_env_clk|counter[1]~4_combout\ = ( !\counter_env_clk|counter\(1) & ( \counter_env_clk|counter[0]~DUPLICATE_q\ ) ) # ( \counter_env_clk|counter\(1) & ( !\counter_env_clk|counter[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \counter_env_clk|ALT_INV_counter\(1),
	dataf => \counter_env_clk|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \counter_env_clk|counter[1]~4_combout\);

-- Location: FF_X70_Y4_N8
\counter_env_clk|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_env_clk|m1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \counter_env_clk|counter[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_env_clk|counter\(1));

-- Location: FF_X70_Y4_N16
\counter_env_clk|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_env_clk|m1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \counter_env_clk|counter[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_env_clk|counter\(2));

-- Location: LABCELL_X70_Y4_N15
\counter_env_clk|counter[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_env_clk|counter[2]~3_combout\ = ( \counter_env_clk|counter\(2) & ( \counter_env_clk|counter[0]~DUPLICATE_q\ & ( !\counter_env_clk|counter\(1) ) ) ) # ( !\counter_env_clk|counter\(2) & ( \counter_env_clk|counter[0]~DUPLICATE_q\ & ( 
-- \counter_env_clk|counter\(1) ) ) ) # ( \counter_env_clk|counter\(2) & ( !\counter_env_clk|counter[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \counter_env_clk|ALT_INV_counter\(1),
	datae => \counter_env_clk|ALT_INV_counter\(2),
	dataf => \counter_env_clk|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \counter_env_clk|counter[2]~3_combout\);

-- Location: FF_X70_Y4_N17
\counter_env_clk|counter[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_env_clk|m1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \counter_env_clk|counter[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_env_clk|counter[2]~DUPLICATE_q\);

-- Location: LABCELL_X70_Y4_N24
\counter_env_clk|counter[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_env_clk|counter[3]~2_combout\ = ( \counter_env_clk|counter\(3) & ( \counter_env_clk|counter[0]~DUPLICATE_q\ & ( (!\counter_env_clk|counter\(1)) # (!\counter_env_clk|counter[2]~DUPLICATE_q\) ) ) ) # ( !\counter_env_clk|counter\(3) & ( 
-- \counter_env_clk|counter[0]~DUPLICATE_q\ & ( (\counter_env_clk|counter\(1) & \counter_env_clk|counter[2]~DUPLICATE_q\) ) ) ) # ( \counter_env_clk|counter\(3) & ( !\counter_env_clk|counter[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000001100111111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_env_clk|ALT_INV_counter\(1),
	datad => \counter_env_clk|ALT_INV_counter[2]~DUPLICATE_q\,
	datae => \counter_env_clk|ALT_INV_counter\(3),
	dataf => \counter_env_clk|ALT_INV_counter[0]~DUPLICATE_q\,
	combout => \counter_env_clk|counter[3]~2_combout\);

-- Location: FF_X70_Y4_N26
\counter_env_clk|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_env_clk|m1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \counter_env_clk|counter[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_env_clk|counter\(3));

-- Location: LABCELL_X70_Y4_N33
\counter_env_clk|counter[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_env_clk|counter[4]~1_combout\ = ( \counter_env_clk|counter\(4) & ( \counter_env_clk|counter\(2) & ( (!\counter_env_clk|counter\(1)) # ((!\counter_env_clk|counter[0]~DUPLICATE_q\) # (!\counter_env_clk|counter\(3))) ) ) ) # ( 
-- !\counter_env_clk|counter\(4) & ( \counter_env_clk|counter\(2) & ( (\counter_env_clk|counter\(1) & (\counter_env_clk|counter[0]~DUPLICATE_q\ & \counter_env_clk|counter\(3))) ) ) ) # ( \counter_env_clk|counter\(4) & ( !\counter_env_clk|counter\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000111111111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_env_clk|ALT_INV_counter\(1),
	datac => \counter_env_clk|ALT_INV_counter[0]~DUPLICATE_q\,
	datad => \counter_env_clk|ALT_INV_counter\(3),
	datae => \counter_env_clk|ALT_INV_counter\(4),
	dataf => \counter_env_clk|ALT_INV_counter\(2),
	combout => \counter_env_clk|counter[4]~1_combout\);

-- Location: FF_X70_Y4_N35
\counter_env_clk|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_env_clk|m1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \counter_env_clk|counter[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_env_clk|counter\(4));

-- Location: FF_X70_Y4_N25
\counter_env_clk|counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_env_clk|m1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \counter_env_clk|counter[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_env_clk|counter[3]~DUPLICATE_q\);

-- Location: LABCELL_X70_Y4_N48
\counter_env_clk|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_env_clk|Equal0~0_combout\ = ( \counter_env_clk|counter[3]~DUPLICATE_q\ & ( (\counter_env_clk|counter[2]~DUPLICATE_q\ & (\counter_env_clk|counter\(1) & \counter_env_clk|counter\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \counter_env_clk|ALT_INV_counter[2]~DUPLICATE_q\,
	datac => \counter_env_clk|ALT_INV_counter\(1),
	datad => \counter_env_clk|ALT_INV_counter\(0),
	dataf => \counter_env_clk|ALT_INV_counter[3]~DUPLICATE_q\,
	combout => \counter_env_clk|Equal0~0_combout\);

-- Location: LABCELL_X70_Y4_N0
\counter_env_clk|counter[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_env_clk|counter[5]~0_combout\ = ( \counter_env_clk|counter\(5) & ( \counter_env_clk|counter[3]~DUPLICATE_q\ & ( (!\counter_env_clk|counter\(1)) # ((!\counter_env_clk|counter[2]~DUPLICATE_q\) # ((!\counter_env_clk|counter\(4)) # 
-- (!\counter_env_clk|counter[0]~DUPLICATE_q\))) ) ) ) # ( !\counter_env_clk|counter\(5) & ( \counter_env_clk|counter[3]~DUPLICATE_q\ & ( (\counter_env_clk|counter\(1) & (\counter_env_clk|counter[2]~DUPLICATE_q\ & (\counter_env_clk|counter\(4) & 
-- \counter_env_clk|counter[0]~DUPLICATE_q\))) ) ) ) # ( \counter_env_clk|counter\(5) & ( !\counter_env_clk|counter[3]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_env_clk|ALT_INV_counter\(1),
	datab => \counter_env_clk|ALT_INV_counter[2]~DUPLICATE_q\,
	datac => \counter_env_clk|ALT_INV_counter\(4),
	datad => \counter_env_clk|ALT_INV_counter[0]~DUPLICATE_q\,
	datae => \counter_env_clk|ALT_INV_counter\(5),
	dataf => \counter_env_clk|ALT_INV_counter[3]~DUPLICATE_q\,
	combout => \counter_env_clk|counter[5]~0_combout\);

-- Location: FF_X70_Y4_N2
\counter_env_clk|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_env_clk|m1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \counter_env_clk|counter[5]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_env_clk|counter\(5));

-- Location: LABCELL_X70_Y4_N51
\counter_env_clk|clk_out_int~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_env_clk|clk_out_int~0_combout\ = ( \counter_env_clk|clk_out_int~q\ & ( (!\counter_env_clk|counter\(4)) # ((!\counter_env_clk|Equal0~0_combout\) # (!\counter_env_clk|counter\(5))) ) ) # ( !\counter_env_clk|clk_out_int~q\ & ( 
-- (\counter_env_clk|counter\(4) & (\counter_env_clk|Equal0~0_combout\ & \counter_env_clk|counter\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \counter_env_clk|ALT_INV_counter\(4),
	datac => \counter_env_clk|ALT_INV_Equal0~0_combout\,
	datad => \counter_env_clk|ALT_INV_counter\(5),
	dataf => \counter_env_clk|ALT_INV_clk_out_int~q\,
	combout => \counter_env_clk|clk_out_int~0_combout\);

-- Location: LABCELL_X70_Y4_N42
\counter_env_clk|clk_out_int~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter_env_clk|clk_out_int~feeder_combout\ = ( \counter_env_clk|clk_out_int~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \counter_env_clk|ALT_INV_clk_out_int~0_combout\,
	combout => \counter_env_clk|clk_out_int~feeder_combout\);

-- Location: FF_X70_Y4_N44
\counter_env_clk|clk_out_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_env_clk|m1|pll_inst|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \counter_env_clk|clk_out_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \counter_env_clk|clk_out_int~q\);

-- Location: LABCELL_X71_Y4_N0
\top_inst|pwm_inst|pwm_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|Add0~17_sumout\ = SUM(( \top_inst|pwm_inst|pwm_inst|count\(0) ) + ( VCC ) + ( !VCC ))
-- \top_inst|pwm_inst|pwm_inst|Add0~18\ = CARRY(( \top_inst|pwm_inst|pwm_inst|count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(0),
	cin => GND,
	sumout => \top_inst|pwm_inst|pwm_inst|Add0~17_sumout\,
	cout => \top_inst|pwm_inst|pwm_inst|Add0~18\);

-- Location: LABCELL_X71_Y4_N3
\top_inst|pwm_inst|pwm_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|Add0~21_sumout\ = SUM(( \top_inst|pwm_inst|pwm_inst|count\(1) ) + ( GND ) + ( \top_inst|pwm_inst|pwm_inst|Add0~18\ ))
-- \top_inst|pwm_inst|pwm_inst|Add0~22\ = CARRY(( \top_inst|pwm_inst|pwm_inst|count\(1) ) + ( GND ) + ( \top_inst|pwm_inst|pwm_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(1),
	cin => \top_inst|pwm_inst|pwm_inst|Add0~18\,
	sumout => \top_inst|pwm_inst|pwm_inst|Add0~21_sumout\,
	cout => \top_inst|pwm_inst|pwm_inst|Add0~22\);

-- Location: LABCELL_X71_Y4_N6
\top_inst|pwm_inst|pwm_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|Add0~25_sumout\ = SUM(( \top_inst|pwm_inst|pwm_inst|count\(2) ) + ( GND ) + ( \top_inst|pwm_inst|pwm_inst|Add0~22\ ))
-- \top_inst|pwm_inst|pwm_inst|Add0~26\ = CARRY(( \top_inst|pwm_inst|pwm_inst|count\(2) ) + ( GND ) + ( \top_inst|pwm_inst|pwm_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(2),
	cin => \top_inst|pwm_inst|pwm_inst|Add0~22\,
	sumout => \top_inst|pwm_inst|pwm_inst|Add0~25_sumout\,
	cout => \top_inst|pwm_inst|pwm_inst|Add0~26\);

-- Location: FF_X71_Y4_N11
\top_inst|pwm_inst|pwm_inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_env_clk|clk_out_int~q\,
	asdata => \top_inst|pwm_inst|pwm_inst|Add0~25_sumout\,
	sclr => \top_inst|pwm_inst|pwm_inst|count[7]~0_combout\,
	sload => VCC,
	ena => \top_inst|pwm_inst|pwm_inst|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|pwm_inst|pwm_inst|count\(2));

-- Location: LABCELL_X71_Y4_N9
\top_inst|pwm_inst|pwm_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|Add0~29_sumout\ = SUM(( \top_inst|pwm_inst|pwm_inst|count\(3) ) + ( GND ) + ( \top_inst|pwm_inst|pwm_inst|Add0~26\ ))
-- \top_inst|pwm_inst|pwm_inst|Add0~30\ = CARRY(( \top_inst|pwm_inst|pwm_inst|count\(3) ) + ( GND ) + ( \top_inst|pwm_inst|pwm_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(3),
	cin => \top_inst|pwm_inst|pwm_inst|Add0~26\,
	sumout => \top_inst|pwm_inst|pwm_inst|Add0~29_sumout\,
	cout => \top_inst|pwm_inst|pwm_inst|Add0~30\);

-- Location: FF_X71_Y4_N23
\top_inst|pwm_inst|pwm_inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_env_clk|clk_out_int~q\,
	asdata => \top_inst|pwm_inst|pwm_inst|Add0~29_sumout\,
	sclr => \top_inst|pwm_inst|pwm_inst|count[7]~0_combout\,
	sload => VCC,
	ena => \top_inst|pwm_inst|pwm_inst|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|pwm_inst|pwm_inst|count\(3));

-- Location: MLABCELL_X72_Y4_N33
\top_inst|pwm_inst|pwm_inst|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|Equal0~3_combout\ = ( !alufnReg(4) & ( \top_inst|pwm_inst|pwm_inst|count\(3) & ( (yReg(3) & (!alufnReg(3) & (!\top_inst|pwm_inst|pwm_inst|count\(2) $ (yReg(2))))) ) ) ) # ( alufnReg(4) & ( !\top_inst|pwm_inst|pwm_inst|count\(3) 
-- & ( !\top_inst|pwm_inst|pwm_inst|count\(2) ) ) ) # ( !alufnReg(4) & ( !\top_inst|pwm_inst|pwm_inst|count\(3) & ( (!alufnReg(3) & (!yReg(3) & (!\top_inst|pwm_inst|pwm_inst|count\(2) $ (yReg(2))))) # (alufnReg(3) & (!\top_inst|pwm_inst|pwm_inst|count\(2))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101001001010101010101010101000100000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(2),
	datab => ALT_INV_yReg(3),
	datac => ALT_INV_alufnReg(3),
	datad => ALT_INV_yReg(2),
	datae => ALT_INV_alufnReg(4),
	dataf => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(3),
	combout => \top_inst|pwm_inst|pwm_inst|Equal0~3_combout\);

-- Location: IOIBUF_X36_Y0_N18
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LABCELL_X71_Y4_N12
\top_inst|pwm_inst|pwm_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|Add0~9_sumout\ = SUM(( \top_inst|pwm_inst|pwm_inst|count\(4) ) + ( GND ) + ( \top_inst|pwm_inst|pwm_inst|Add0~30\ ))
-- \top_inst|pwm_inst|pwm_inst|Add0~10\ = CARRY(( \top_inst|pwm_inst|pwm_inst|count\(4) ) + ( GND ) + ( \top_inst|pwm_inst|pwm_inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(4),
	cin => \top_inst|pwm_inst|pwm_inst|Add0~30\,
	sumout => \top_inst|pwm_inst|pwm_inst|Add0~9_sumout\,
	cout => \top_inst|pwm_inst|pwm_inst|Add0~10\);

-- Location: LABCELL_X70_Y4_N39
\top_inst|pwm_inst|pwm_inst|count[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|count[4]~feeder_combout\ = ( \top_inst|pwm_inst|pwm_inst|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \top_inst|pwm_inst|pwm_inst|ALT_INV_Add0~9_sumout\,
	combout => \top_inst|pwm_inst|pwm_inst|count[4]~feeder_combout\);

-- Location: FF_X70_Y4_N41
\top_inst|pwm_inst|pwm_inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_env_clk|clk_out_int~q\,
	d => \top_inst|pwm_inst|pwm_inst|count[4]~feeder_combout\,
	sclr => \top_inst|pwm_inst|pwm_inst|count[7]~0_combout\,
	ena => \top_inst|pwm_inst|pwm_inst|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|pwm_inst|pwm_inst|count\(4));

-- Location: LABCELL_X71_Y4_N15
\top_inst|pwm_inst|pwm_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|Add0~13_sumout\ = SUM(( \top_inst|pwm_inst|pwm_inst|count\(5) ) + ( GND ) + ( \top_inst|pwm_inst|pwm_inst|Add0~10\ ))
-- \top_inst|pwm_inst|pwm_inst|Add0~14\ = CARRY(( \top_inst|pwm_inst|pwm_inst|count\(5) ) + ( GND ) + ( \top_inst|pwm_inst|pwm_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(5),
	cin => \top_inst|pwm_inst|pwm_inst|Add0~10\,
	sumout => \top_inst|pwm_inst|pwm_inst|Add0~13_sumout\,
	cout => \top_inst|pwm_inst|pwm_inst|Add0~14\);

-- Location: FF_X70_Y4_N59
\top_inst|pwm_inst|pwm_inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_env_clk|clk_out_int~q\,
	asdata => \top_inst|pwm_inst|pwm_inst|Add0~13_sumout\,
	sclr => \top_inst|pwm_inst|pwm_inst|count[7]~0_combout\,
	sload => VCC,
	ena => \top_inst|pwm_inst|pwm_inst|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|pwm_inst|pwm_inst|count\(5));

-- Location: LABCELL_X71_Y4_N30
\top_inst|pwm_inst|pwm_inst|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|Equal0~1_combout\ = ( !\top_inst|pwm_inst|pwm_inst|count\(4) & ( alufnReg(4) & ( !\top_inst|pwm_inst|pwm_inst|count\(5) ) ) ) # ( \top_inst|pwm_inst|pwm_inst|count\(4) & ( !alufnReg(4) & ( (!alufnReg(3) & (yReg(4) & (!yReg(5) $ 
-- (\top_inst|pwm_inst|pwm_inst|count\(5))))) ) ) ) # ( !\top_inst|pwm_inst|pwm_inst|count\(4) & ( !alufnReg(4) & ( (!alufnReg(3) & (!yReg(4) & (!yReg(5) $ (\top_inst|pwm_inst|pwm_inst|count\(5))))) # (alufnReg(3) & 
-- (((!\top_inst|pwm_inst|pwm_inst|count\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001001010000000000001000001011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(3),
	datab => ALT_INV_yReg(5),
	datac => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(5),
	datad => ALT_INV_yReg(4),
	datae => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(4),
	dataf => ALT_INV_alufnReg(4),
	combout => \top_inst|pwm_inst|pwm_inst|Equal0~1_combout\);

-- Location: LABCELL_X71_Y4_N18
\top_inst|pwm_inst|pwm_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|Add0~1_sumout\ = SUM(( \top_inst|pwm_inst|pwm_inst|count\(6) ) + ( GND ) + ( \top_inst|pwm_inst|pwm_inst|Add0~14\ ))
-- \top_inst|pwm_inst|pwm_inst|Add0~2\ = CARRY(( \top_inst|pwm_inst|pwm_inst|count\(6) ) + ( GND ) + ( \top_inst|pwm_inst|pwm_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(6),
	cin => \top_inst|pwm_inst|pwm_inst|Add0~14\,
	sumout => \top_inst|pwm_inst|pwm_inst|Add0~1_sumout\,
	cout => \top_inst|pwm_inst|pwm_inst|Add0~2\);

-- Location: FF_X71_Y4_N8
\top_inst|pwm_inst|pwm_inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_env_clk|clk_out_int~q\,
	asdata => \top_inst|pwm_inst|pwm_inst|Add0~1_sumout\,
	sclr => \top_inst|pwm_inst|pwm_inst|count[7]~0_combout\,
	sload => VCC,
	ena => \top_inst|pwm_inst|pwm_inst|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|pwm_inst|pwm_inst|count\(6));

-- Location: LABCELL_X71_Y4_N21
\top_inst|pwm_inst|pwm_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|Add0~5_sumout\ = SUM(( \top_inst|pwm_inst|pwm_inst|count\(7) ) + ( GND ) + ( \top_inst|pwm_inst|pwm_inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(7),
	cin => \top_inst|pwm_inst|pwm_inst|Add0~2\,
	sumout => \top_inst|pwm_inst|pwm_inst|Add0~5_sumout\);

-- Location: FF_X70_Y4_N56
\top_inst|pwm_inst|pwm_inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_env_clk|clk_out_int~q\,
	asdata => \top_inst|pwm_inst|pwm_inst|Add0~5_sumout\,
	sclr => \top_inst|pwm_inst|pwm_inst|count[7]~0_combout\,
	sload => VCC,
	ena => \top_inst|pwm_inst|pwm_inst|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|pwm_inst|pwm_inst|count\(7));

-- Location: MLABCELL_X72_Y4_N57
\top_inst|pwm_inst|pwm_inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|Equal0~0_combout\ = ( !alufnReg(4) & ( \top_inst|pwm_inst|pwm_inst|count\(7) & ( (!alufnReg(3) & (yReg(7) & (!\top_inst|pwm_inst|pwm_inst|count\(6) $ (yReg(6))))) ) ) ) # ( alufnReg(4) & ( !\top_inst|pwm_inst|pwm_inst|count\(7) 
-- & ( !\top_inst|pwm_inst|pwm_inst|count\(6) ) ) ) # ( !alufnReg(4) & ( !\top_inst|pwm_inst|pwm_inst|count\(7) & ( (!alufnReg(3) & (!yReg(7) & (!\top_inst|pwm_inst|pwm_inst|count\(6) $ (yReg(6))))) # (alufnReg(3) & (!\top_inst|pwm_inst|pwm_inst|count\(6))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001001100010101010101010101000001000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(6),
	datab => ALT_INV_alufnReg(3),
	datac => ALT_INV_yReg(7),
	datad => ALT_INV_yReg(6),
	datae => ALT_INV_alufnReg(4),
	dataf => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(7),
	combout => \top_inst|pwm_inst|pwm_inst|Equal0~0_combout\);

-- Location: IOIBUF_X89_Y20_N95
\ena~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ena,
	o => \ena~input_o\);

-- Location: LABCELL_X71_Y4_N36
\top_inst|pwm_inst|pwm_inst|count[7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|count[7]~1_combout\ = ( \top_inst|pwm_inst|pwm_inst|Equal0~0_combout\ & ( \ena~input_o\ ) ) # ( !\top_inst|pwm_inst|pwm_inst|Equal0~0_combout\ & ( \ena~input_o\ ) ) # ( \top_inst|pwm_inst|pwm_inst|Equal0~0_combout\ & ( 
-- !\ena~input_o\ & ( ((\top_inst|pwm_inst|pwm_inst|Equal0~3_combout\ & (\top_inst|pwm_inst|pwm_inst|Equal0~2_combout\ & \top_inst|pwm_inst|pwm_inst|Equal0~1_combout\))) # (\rst~input_o\) ) ) ) # ( !\top_inst|pwm_inst|pwm_inst|Equal0~0_combout\ & ( 
-- !\ena~input_o\ & ( \rst~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011011111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~3_combout\,
	datab => \ALT_INV_rst~input_o\,
	datac => \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~2_combout\,
	datad => \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~1_combout\,
	datae => \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_ena~input_o\,
	combout => \top_inst|pwm_inst|pwm_inst|count[7]~1_combout\);

-- Location: FF_X71_Y4_N2
\top_inst|pwm_inst|pwm_inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_env_clk|clk_out_int~q\,
	asdata => \top_inst|pwm_inst|pwm_inst|Add0~21_sumout\,
	sclr => \top_inst|pwm_inst|pwm_inst|count[7]~0_combout\,
	sload => VCC,
	ena => \top_inst|pwm_inst|pwm_inst|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|pwm_inst|pwm_inst|count\(1));

-- Location: LABCELL_X71_Y4_N54
\top_inst|pwm_inst|pwm_inst|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|Equal0~2_combout\ = ( !\top_inst|pwm_inst|pwm_inst|count\(1) & ( alufnReg(4) & ( !\top_inst|pwm_inst|pwm_inst|count\(0) ) ) ) # ( \top_inst|pwm_inst|pwm_inst|count\(1) & ( !alufnReg(4) & ( (!alufnReg(3) & (yReg(1) & 
-- (!\top_inst|pwm_inst|pwm_inst|count\(0) $ (yReg(0))))) ) ) ) # ( !\top_inst|pwm_inst|pwm_inst|count\(1) & ( !alufnReg(4) & ( (!alufnReg(3) & (!yReg(1) & (!\top_inst|pwm_inst|pwm_inst|count\(0) $ (yReg(0))))) # (alufnReg(3) & 
-- (!\top_inst|pwm_inst|pwm_inst|count\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010001100100000010000000001011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(3),
	datab => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(0),
	datac => ALT_INV_yReg(1),
	datad => ALT_INV_yReg(0),
	datae => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(1),
	dataf => ALT_INV_alufnReg(4),
	combout => \top_inst|pwm_inst|pwm_inst|Equal0~2_combout\);

-- Location: LABCELL_X71_Y4_N27
\top_inst|pwm_inst|pwm_inst|count[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|count[7]~0_combout\ = ( \top_inst|pwm_inst|pwm_inst|Equal0~3_combout\ & ( ((\top_inst|pwm_inst|pwm_inst|Equal0~2_combout\ & (\top_inst|pwm_inst|pwm_inst|Equal0~1_combout\ & \top_inst|pwm_inst|pwm_inst|Equal0~0_combout\))) # 
-- (\rst~input_o\) ) ) # ( !\top_inst|pwm_inst|pwm_inst|Equal0~3_combout\ & ( \rst~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000111110000111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~2_combout\,
	datab => \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_rst~input_o\,
	datad => \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~0_combout\,
	dataf => \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~3_combout\,
	combout => \top_inst|pwm_inst|pwm_inst|count[7]~0_combout\);

-- Location: FF_X70_Y4_N38
\top_inst|pwm_inst|pwm_inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_env_clk|clk_out_int~q\,
	asdata => \top_inst|pwm_inst|pwm_inst|Add0~17_sumout\,
	sclr => \top_inst|pwm_inst|pwm_inst|count[7]~0_combout\,
	sload => VCC,
	ena => \top_inst|pwm_inst|pwm_inst|count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|pwm_inst|pwm_inst|count\(0));

-- Location: MLABCELL_X72_Y4_N18
\top_inst|pwm_inst|pwm_inst|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|Equal1~2_combout\ = ( \top_inst|pwm_inst|pwm_inst|count\(0) & ( \top_inst|pwm_inst|pwm_inst|count\(1) & ( (!alufnReg(3) & (xReg(1) & (xReg(0) & !alufnReg(4)))) ) ) ) # ( !\top_inst|pwm_inst|pwm_inst|count\(0) & ( 
-- \top_inst|pwm_inst|pwm_inst|count\(1) & ( (!alufnReg(3) & (xReg(1) & (!xReg(0) & !alufnReg(4)))) ) ) ) # ( \top_inst|pwm_inst|pwm_inst|count\(0) & ( !\top_inst|pwm_inst|pwm_inst|count\(1) & ( (!alufnReg(3) & (!xReg(1) & (xReg(0) & !alufnReg(4)))) ) ) ) # 
-- ( !\top_inst|pwm_inst|pwm_inst|count\(0) & ( !\top_inst|pwm_inst|pwm_inst|count\(1) & ( (((!xReg(1) & !xReg(0))) # (alufnReg(4))) # (alufnReg(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101010111111111000010000000000000100000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(3),
	datab => ALT_INV_xReg(1),
	datac => ALT_INV_xReg(0),
	datad => ALT_INV_alufnReg(4),
	datae => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(0),
	dataf => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(1),
	combout => \top_inst|pwm_inst|pwm_inst|Equal1~2_combout\);

-- Location: MLABCELL_X72_Y4_N9
\top_inst|pwm_inst|pwm_inst|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|Equal1~3_combout\ = ( !alufnReg(4) & ( \top_inst|pwm_inst|pwm_inst|count\(3) & ( (!alufnReg(3) & (xReg(3) & (!\top_inst|pwm_inst|pwm_inst|count\(2) $ (xReg(2))))) ) ) ) # ( alufnReg(4) & ( !\top_inst|pwm_inst|pwm_inst|count\(3) 
-- & ( !\top_inst|pwm_inst|pwm_inst|count\(2) ) ) ) # ( !alufnReg(4) & ( !\top_inst|pwm_inst|pwm_inst|count\(3) & ( (!alufnReg(3) & (!xReg(3) & (!\top_inst|pwm_inst|pwm_inst|count\(2) $ (xReg(2))))) # (alufnReg(3) & (!\top_inst|pwm_inst|pwm_inst|count\(2))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001001100010101010101010101000001000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(2),
	datab => ALT_INV_alufnReg(3),
	datac => ALT_INV_xReg(3),
	datad => ALT_INV_xReg(2),
	datae => ALT_INV_alufnReg(4),
	dataf => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(3),
	combout => \top_inst|pwm_inst|pwm_inst|Equal1~3_combout\);

-- Location: MLABCELL_X72_Y4_N12
\top_inst|pwm_inst|pwm_inst|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|Equal1~1_combout\ = ( !alufnReg(4) & ( \top_inst|pwm_inst|pwm_inst|count\(5) & ( (xReg(5) & (!alufnReg(3) & (!\top_inst|pwm_inst|pwm_inst|count\(4) $ (xReg(4))))) ) ) ) # ( alufnReg(4) & ( !\top_inst|pwm_inst|pwm_inst|count\(5) 
-- & ( !\top_inst|pwm_inst|pwm_inst|count\(4) ) ) ) # ( !alufnReg(4) & ( !\top_inst|pwm_inst|pwm_inst|count\(5) & ( (!alufnReg(3) & (!xReg(5) & (!\top_inst|pwm_inst|pwm_inst|count\(4) $ (xReg(4))))) # (alufnReg(3) & 
-- (((!\top_inst|pwm_inst|pwm_inst|count\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110000101100110011001100110001000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xReg(5),
	datab => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(4),
	datac => ALT_INV_alufnReg(3),
	datad => ALT_INV_xReg(4),
	datae => ALT_INV_alufnReg(4),
	dataf => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(5),
	combout => \top_inst|pwm_inst|pwm_inst|Equal1~1_combout\);

-- Location: MLABCELL_X72_Y4_N39
\top_inst|pwm_inst|pwm_inst|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|Equal1~0_combout\ = ( xReg(6) & ( \top_inst|pwm_inst|pwm_inst|count\(7) & ( (\top_inst|pwm_inst|pwm_inst|count\(6) & (!alufnReg(4) & (!alufnReg(3) & xReg(7)))) ) ) ) # ( !xReg(6) & ( \top_inst|pwm_inst|pwm_inst|count\(7) & ( 
-- (!\top_inst|pwm_inst|pwm_inst|count\(6) & (!alufnReg(4) & (!alufnReg(3) & xReg(7)))) ) ) ) # ( xReg(6) & ( !\top_inst|pwm_inst|pwm_inst|count\(7) & ( (!\top_inst|pwm_inst|pwm_inst|count\(6) & (((alufnReg(3))) # (alufnReg(4)))) # 
-- (\top_inst|pwm_inst|pwm_inst|count\(6) & (!alufnReg(4) & (!alufnReg(3) & !xReg(7)))) ) ) ) # ( !xReg(6) & ( !\top_inst|pwm_inst|pwm_inst|count\(7) & ( (!\top_inst|pwm_inst|pwm_inst|count\(6) & (((!xReg(7)) # (alufnReg(3))) # (alufnReg(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000101010011010100010101000000000100000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(6),
	datab => ALT_INV_alufnReg(4),
	datac => ALT_INV_alufnReg(3),
	datad => ALT_INV_xReg(7),
	datae => ALT_INV_xReg(6),
	dataf => \top_inst|pwm_inst|pwm_inst|ALT_INV_count\(7),
	combout => \top_inst|pwm_inst|pwm_inst|Equal1~0_combout\);

-- Location: LABCELL_X71_Y4_N48
\top_inst|pwm_inst|pwm_inst|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|Equal1~4_combout\ = ( \top_inst|pwm_inst|pwm_inst|Equal1~0_combout\ & ( (\top_inst|pwm_inst|pwm_inst|Equal1~2_combout\ & (\top_inst|pwm_inst|pwm_inst|Equal1~3_combout\ & \top_inst|pwm_inst|pwm_inst|Equal1~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal1~2_combout\,
	datac => \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal1~3_combout\,
	datad => \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal1~1_combout\,
	dataf => \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal1~0_combout\,
	combout => \top_inst|pwm_inst|pwm_inst|Equal1~4_combout\);

-- Location: LABCELL_X71_Y4_N24
\top_inst|pwm_inst|pwm_inst|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|Equal0~4_combout\ = ( \top_inst|pwm_inst|pwm_inst|Equal0~3_combout\ & ( (\top_inst|pwm_inst|pwm_inst|Equal0~2_combout\ & (\top_inst|pwm_inst|pwm_inst|Equal0~1_combout\ & \top_inst|pwm_inst|pwm_inst|Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100010000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~2_combout\,
	datab => \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~1_combout\,
	datad => \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~0_combout\,
	dataf => \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~3_combout\,
	combout => \top_inst|pwm_inst|pwm_inst|Equal0~4_combout\);

-- Location: LABCELL_X71_Y4_N45
\top_inst|pwm_inst|pwm_inst|intPWM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_inst|pwm_inst|intPWM~0_combout\ = ( \top_inst|pwm_inst|pwm_inst|Equal0~4_combout\ & ( !\top_inst|pwm_inst|pwm_inst|Equal1~4_combout\ $ (!alufnReg(0)) ) ) # ( !\top_inst|pwm_inst|pwm_inst|Equal0~4_combout\ & ( 
-- (!\top_inst|pwm_inst|pwm_inst|Equal1~4_combout\ & ((\top_inst|pwm_inst|pwm_inst|intPWM~q\))) # (\top_inst|pwm_inst|pwm_inst|Equal1~4_combout\ & (!alufnReg(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010011100100111001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal1~4_combout\,
	datab => ALT_INV_alufnReg(0),
	datac => \top_inst|pwm_inst|pwm_inst|ALT_INV_intPWM~q\,
	dataf => \top_inst|pwm_inst|pwm_inst|ALT_INV_Equal0~4_combout\,
	combout => \top_inst|pwm_inst|pwm_inst|intPWM~0_combout\);

-- Location: FF_X71_Y4_N44
\top_inst|pwm_inst|pwm_inst|intPWM\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \counter_env_clk|clk_out_int~q\,
	asdata => \top_inst|pwm_inst|pwm_inst|intPWM~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \top_inst|pwm_inst|pwm_inst|intPWM~q\);

-- Location: LABCELL_X71_Y4_N42
\top_inst|pwm_o~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|pwm_o~0_combout\ = ( !alufnReg(4) & ( (!alufnReg(3) & \top_inst|pwm_inst|pwm_inst|intPWM~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_alufnReg(3),
	datad => \top_inst|pwm_inst|pwm_inst|ALT_INV_intPWM~q\,
	dataf => ALT_INV_alufnReg(4),
	combout => \top_inst|pwm_o~0_combout\);

-- Location: LABCELL_X73_Y3_N48
\top_inst|ov_flag_o~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|ov_flag_o~0_combout\ = ( !alufnReg(4) & ( (alufnReg(3) & !alufnReg(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_alufnReg(3),
	datac => ALT_INV_alufnReg(1),
	dataf => ALT_INV_alufnReg(4),
	combout => \top_inst|ov_flag_o~0_combout\);

-- Location: LABCELL_X73_Y3_N0
\top_inst|alu_inst|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Equal6~0_combout\ = (alufnReg(1) & !alufnReg(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(1),
	datab => ALT_INV_alufnReg(0),
	combout => \top_inst|alu_inst|Equal6~0_combout\);

-- Location: LABCELL_X73_Y3_N6
\top_inst|alu_inst|negAdd~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|negAdd~0_combout\ = ( !alufnReg(4) & ( (!alufnReg(2) & (alufnReg(3) & (!alufnReg(1) $ (!alufnReg(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000000000100010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(2),
	datab => ALT_INV_alufnReg(3),
	datac => ALT_INV_alufnReg(1),
	datad => ALT_INV_alufnReg(0),
	dataf => ALT_INV_alufnReg(4),
	combout => \top_inst|alu_inst|negAdd~0_combout\);

-- Location: LABCELL_X73_Y3_N51
\top_inst|alu_inst|AddSub_inst|FAN:7:FA_i_instance|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FAN:7:FA_i_instance|s~0_combout\ = ( xReg(7) & ( !\top_inst|alu_inst|negAdd~0_combout\ $ (((!\top_inst|alu_inst|Equal6~0_combout\ & yReg(7)))) ) ) # ( !xReg(7) & ( !\top_inst|alu_inst|negAdd~0_combout\ $ (((!yReg(7)) # 
-- (\top_inst|alu_inst|Equal6~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011110101000010101111010111110101000010101111010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|ALT_INV_Equal6~0_combout\,
	datac => ALT_INV_yReg(7),
	datad => \top_inst|alu_inst|ALT_INV_negAdd~0_combout\,
	dataf => ALT_INV_xReg(7),
	combout => \top_inst|alu_inst|AddSub_inst|FAN:7:FA_i_instance|s~0_combout\);

-- Location: LABCELL_X73_Y3_N3
\top_inst|alu_inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux0~0_combout\ = ( alufnReg(3) & ( (!alufnReg(4) & ((!alufnReg(1)) # (!alufnReg(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(1),
	datab => ALT_INV_alufnReg(0),
	datac => ALT_INV_alufnReg(4),
	dataf => ALT_INV_alufnReg(3),
	combout => \top_inst|alu_inst|Mux0~0_combout\);

-- Location: LABCELL_X73_Y3_N45
\top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\ = ( xReg(6) & ( (\top_inst|alu_inst|negAdd~0_combout\ & ((!yReg(6)) # (\top_inst|alu_inst|Equal6~0_combout\))) ) ) # ( !xReg(6) & ( (!\top_inst|alu_inst|negAdd~0_combout\ & ((!yReg(6)) # 
-- (\top_inst|alu_inst|Equal6~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010101010100010001010101001000100010101010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|ALT_INV_negAdd~0_combout\,
	datab => ALT_INV_yReg(6),
	datad => \top_inst|alu_inst|ALT_INV_Equal6~0_combout\,
	dataf => ALT_INV_xReg(6),
	combout => \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\);

-- Location: LABCELL_X73_Y3_N42
\top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\ = ( xReg(6) & ( (yReg(6) & (!\top_inst|alu_inst|negAdd~0_combout\ & !\top_inst|alu_inst|Equal6~0_combout\)) ) ) # ( !xReg(6) & ( (yReg(6) & (\top_inst|alu_inst|negAdd~0_combout\ & 
-- !\top_inst|alu_inst|Equal6~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_yReg(6),
	datac => \top_inst|alu_inst|ALT_INV_negAdd~0_combout\,
	datad => \top_inst|alu_inst|ALT_INV_Equal6~0_combout\,
	dataf => ALT_INV_xReg(6),
	combout => \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\);

-- Location: LABCELL_X77_Y4_N3
\top_inst|alu_inst|yAdd[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|yAdd[5]~1_combout\ = ( alufnReg(1) & ( (alufnReg(0) & yReg(5)) ) ) # ( !alufnReg(1) & ( yReg(5) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(0),
	datac => ALT_INV_yReg(5),
	dataf => ALT_INV_alufnReg(1),
	combout => \top_inst|alu_inst|yAdd[5]~1_combout\);

-- Location: LABCELL_X75_Y3_N3
\top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0_combout\ = ( \top_inst|alu_inst|yAdd[5]~1_combout\ & ( !\top_inst|alu_inst|negAdd~0_combout\ $ (!xReg(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|alu_inst|ALT_INV_negAdd~0_combout\,
	datac => ALT_INV_xReg(5),
	dataf => \top_inst|alu_inst|ALT_INV_yAdd[5]~1_combout\,
	combout => \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0_combout\);

-- Location: LABCELL_X73_Y4_N6
\top_inst|alu_inst|yAdd[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|yAdd[4]~2_combout\ = ( yReg(4) & ( (!alufnReg(1)) # (alufnReg(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(0),
	datab => ALT_INV_alufnReg(1),
	dataf => ALT_INV_yReg(4),
	combout => \top_inst|alu_inst|yAdd[4]~2_combout\);

-- Location: LABCELL_X75_Y3_N54
\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\ = ( !\top_inst|alu_inst|yAdd[4]~2_combout\ & ( !\top_inst|alu_inst|negAdd~0_combout\ $ (xReg(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|alu_inst|ALT_INV_negAdd~0_combout\,
	datac => ALT_INV_xReg(4),
	dataf => \top_inst|alu_inst|ALT_INV_yAdd[4]~2_combout\,
	combout => \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\);

-- Location: LABCELL_X75_Y3_N57
\top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~1_combout\ = ( !\top_inst|alu_inst|yAdd[5]~1_combout\ & ( !\top_inst|alu_inst|negAdd~0_combout\ $ (xReg(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|alu_inst|ALT_INV_negAdd~0_combout\,
	datac => ALT_INV_xReg(5),
	dataf => \top_inst|alu_inst|ALT_INV_yAdd[5]~1_combout\,
	combout => \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~1_combout\);

-- Location: LABCELL_X75_Y3_N36
\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\ = ( \top_inst|alu_inst|yAdd[4]~2_combout\ & ( !xReg(4) $ (!\top_inst|alu_inst|negAdd~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_xReg(4),
	datad => \top_inst|alu_inst|ALT_INV_negAdd~0_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_yAdd[4]~2_combout\,
	combout => \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\);

-- Location: LABCELL_X73_Y4_N9
\top_inst|alu_inst|yAdd[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|yAdd[3]~3_combout\ = (yReg(3) & ((!alufnReg(1)) # (alufnReg(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100001101000011010000110100001101000011010000110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(0),
	datab => ALT_INV_alufnReg(1),
	datac => ALT_INV_yReg(3),
	combout => \top_inst|alu_inst|yAdd[3]~3_combout\);

-- Location: LABCELL_X75_Y3_N42
\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\ = ( \top_inst|alu_inst|yAdd[3]~3_combout\ & ( xReg(3) & ( !\top_inst|alu_inst|negAdd~0_combout\ ) ) ) # ( \top_inst|alu_inst|yAdd[3]~3_combout\ & ( !xReg(3) & ( 
-- \top_inst|alu_inst|negAdd~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|alu_inst|ALT_INV_negAdd~0_combout\,
	datae => \top_inst|alu_inst|ALT_INV_yAdd[3]~3_combout\,
	dataf => ALT_INV_xReg(3),
	combout => \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\);

-- Location: MLABCELL_X78_Y4_N33
\top_inst|alu_inst|AddSub_inst|xForAdder[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|xForAdder\(1) = ( alufnReg(4) & ( xReg(1) ) ) # ( !alufnReg(4) & ( xReg(1) & ( ((!alufnReg(3)) # (!alufnReg(0) $ (alufnReg(1)))) # (alufnReg(2)) ) ) ) # ( !alufnReg(4) & ( !xReg(1) & ( (!alufnReg(2) & (alufnReg(3) & 
-- (!alufnReg(0) $ (!alufnReg(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000000000000000000011111101110111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(2),
	datab => ALT_INV_alufnReg(3),
	datac => ALT_INV_alufnReg(0),
	datad => ALT_INV_alufnReg(1),
	datae => ALT_INV_alufnReg(4),
	dataf => ALT_INV_xReg(1),
	combout => \top_inst|alu_inst|AddSub_inst|xForAdder\(1));

-- Location: MLABCELL_X78_Y4_N42
\top_inst|alu_inst|AddSub_inst|FA0|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FA0|cout~1_combout\ = ( !xReg(0) & ( alufnReg(3) & ( (!alufnReg(4) & (!alufnReg(2) & (!alufnReg(0) $ (!alufnReg(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(4),
	datab => ALT_INV_alufnReg(0),
	datac => ALT_INV_alufnReg(2),
	datad => ALT_INV_alufnReg(1),
	datae => ALT_INV_xReg(0),
	dataf => ALT_INV_alufnReg(3),
	combout => \top_inst|alu_inst|AddSub_inst|FA0|cout~1_combout\);

-- Location: MLABCELL_X78_Y4_N24
\top_inst|alu_inst|yAdd[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|yAdd[2]~4_combout\ = ( alufnReg(0) & ( yReg(2) ) ) # ( !alufnReg(0) & ( (yReg(2) & !alufnReg(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_yReg(2),
	datac => ALT_INV_alufnReg(1),
	dataf => ALT_INV_alufnReg(0),
	combout => \top_inst|alu_inst|yAdd[2]~4_combout\);

-- Location: MLABCELL_X78_Y4_N9
\top_inst|alu_inst|yAdd[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|yAdd[1]~5_combout\ = ( yReg(1) & ( (!alufnReg(1)) # (alufnReg(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(1),
	datab => ALT_INV_alufnReg(0),
	dataf => ALT_INV_yReg(1),
	combout => \top_inst|alu_inst|yAdd[1]~5_combout\);

-- Location: MLABCELL_X78_Y4_N6
\top_inst|alu_inst|AddSub_inst|FA0|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FA0|cout~0_combout\ = ( yReg(0) & ( (xReg(0) & ((!alufnReg(1)) # (alufnReg(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100110000000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_alufnReg(0),
	datac => ALT_INV_alufnReg(1),
	datad => ALT_INV_xReg(0),
	dataf => ALT_INV_yReg(0),
	combout => \top_inst|alu_inst|AddSub_inst|FA0|cout~0_combout\);

-- Location: MLABCELL_X78_Y4_N30
\top_inst|alu_inst|AddSub_inst|xForAdder[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|xForAdder\(2) = ( alufnReg(4) & ( xReg(2) ) ) # ( !alufnReg(4) & ( xReg(2) & ( ((!alufnReg(3)) # (!alufnReg(1) $ (alufnReg(0)))) # (alufnReg(2)) ) ) ) # ( !alufnReg(4) & ( !xReg(2) & ( (!alufnReg(2) & (alufnReg(3) & 
-- (!alufnReg(1) $ (!alufnReg(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100000000000000000000011111101110111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(2),
	datab => ALT_INV_alufnReg(3),
	datac => ALT_INV_alufnReg(1),
	datad => ALT_INV_alufnReg(0),
	datae => ALT_INV_alufnReg(4),
	dataf => ALT_INV_xReg(2),
	combout => \top_inst|alu_inst|AddSub_inst|xForAdder\(2));

-- Location: MLABCELL_X78_Y4_N48
\top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\ = ( \top_inst|alu_inst|AddSub_inst|FA0|cout~0_combout\ & ( \top_inst|alu_inst|AddSub_inst|xForAdder\(2) & ( (!\top_inst|alu_inst|AddSub_inst|xForAdder\(1) & 
-- (!\top_inst|alu_inst|yAdd[2]~4_combout\ & !\top_inst|alu_inst|yAdd[1]~5_combout\)) ) ) ) # ( !\top_inst|alu_inst|AddSub_inst|FA0|cout~0_combout\ & ( \top_inst|alu_inst|AddSub_inst|xForAdder\(2) & ( (!\top_inst|alu_inst|yAdd[2]~4_combout\ & 
-- ((!\top_inst|alu_inst|AddSub_inst|xForAdder\(1) & ((!\top_inst|alu_inst|AddSub_inst|FA0|cout~1_combout\) # (!\top_inst|alu_inst|yAdd[1]~5_combout\))) # (\top_inst|alu_inst|AddSub_inst|xForAdder\(1) & (!\top_inst|alu_inst|AddSub_inst|FA0|cout~1_combout\ & 
-- !\top_inst|alu_inst|yAdd[1]~5_combout\)))) ) ) ) # ( \top_inst|alu_inst|AddSub_inst|FA0|cout~0_combout\ & ( !\top_inst|alu_inst|AddSub_inst|xForAdder\(2) & ( (!\top_inst|alu_inst|yAdd[2]~4_combout\) # ((!\top_inst|alu_inst|AddSub_inst|xForAdder\(1) & 
-- !\top_inst|alu_inst|yAdd[1]~5_combout\)) ) ) ) # ( !\top_inst|alu_inst|AddSub_inst|FA0|cout~0_combout\ & ( !\top_inst|alu_inst|AddSub_inst|xForAdder\(2) & ( (!\top_inst|alu_inst|yAdd[2]~4_combout\) # ((!\top_inst|alu_inst|AddSub_inst|xForAdder\(1) & 
-- ((!\top_inst|alu_inst|AddSub_inst|FA0|cout~1_combout\) # (!\top_inst|alu_inst|yAdd[1]~5_combout\))) # (\top_inst|alu_inst|AddSub_inst|xForAdder\(1) & (!\top_inst|alu_inst|AddSub_inst|FA0|cout~1_combout\ & !\top_inst|alu_inst|yAdd[1]~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111000111110101111000011100000100000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|AddSub_inst|ALT_INV_xForAdder\(1),
	datab => \top_inst|alu_inst|AddSub_inst|FA0|ALT_INV_cout~1_combout\,
	datac => \top_inst|alu_inst|ALT_INV_yAdd[2]~4_combout\,
	datad => \top_inst|alu_inst|ALT_INV_yAdd[1]~5_combout\,
	datae => \top_inst|alu_inst|AddSub_inst|FA0|ALT_INV_cout~0_combout\,
	dataf => \top_inst|alu_inst|AddSub_inst|ALT_INV_xForAdder\(2),
	combout => \top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\);

-- Location: LABCELL_X75_Y3_N51
\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\ = ( !\top_inst|alu_inst|yAdd[3]~3_combout\ & ( xReg(3) & ( \top_inst|alu_inst|negAdd~0_combout\ ) ) ) # ( !\top_inst|alu_inst|yAdd[3]~3_combout\ & ( !xReg(3) & ( 
-- !\top_inst|alu_inst|negAdd~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|alu_inst|ALT_INV_negAdd~0_combout\,
	datae => \top_inst|alu_inst|ALT_INV_yAdd[3]~3_combout\,
	dataf => ALT_INV_xReg(3),
	combout => \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\);

-- Location: LABCELL_X75_Y3_N30
\top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ = ( \top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\ & ( \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\ & ( 
-- (!\top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~1_combout\ & (((!\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\ & \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\)) # 
-- (\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\))) ) ) ) # ( !\top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\ & ( \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\ & ( 
-- (!\top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~1_combout\ & (((!\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\ & \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\)) # 
-- (\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\))) ) ) ) # ( \top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\ & ( !\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\ & ( 
-- (!\top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~1_combout\ & (((!\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\ & \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\)) # 
-- (\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\))) ) ) ) # ( !\top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\ & ( !\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\ & ( 
-- (!\top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~1_combout\ & ((!\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\) # (\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100000011001000110000001100100011000000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~1_combout\,
	datab => \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~1_combout\,
	datac => \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~0_combout\,
	datad => \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~0_combout\,
	datae => \top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|ALT_INV_cout~0_combout\,
	dataf => \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~1_combout\,
	combout => \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\);

-- Location: LABCELL_X74_Y3_N0
\top_inst|alu_inst|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux0~1_combout\ = ( \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0_combout\ & ( \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ & ( (\top_inst|alu_inst|Mux0~0_combout\ & 
-- (!\top_inst|alu_inst|AddSub_inst|FAN:7:FA_i_instance|s~0_combout\ $ (((\top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\ & !\top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\))))) ) ) ) # ( 
-- !\top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0_combout\ & ( \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ & ( (\top_inst|alu_inst|Mux0~0_combout\ & (!\top_inst|alu_inst|AddSub_inst|FAN:7:FA_i_instance|s~0_combout\ $ 
-- (((\top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\ & !\top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\))))) ) ) ) # ( \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0_combout\ & ( 
-- !\top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ & ( (\top_inst|alu_inst|Mux0~0_combout\ & (!\top_inst|alu_inst|AddSub_inst|FAN:7:FA_i_instance|s~0_combout\ $ (((\top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\ & 
-- !\top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\))))) ) ) ) # ( !\top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0_combout\ & ( !\top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ & ( 
-- (\top_inst|alu_inst|Mux0~0_combout\ & (!\top_inst|alu_inst|AddSub_inst|FAN:7:FA_i_instance|s~0_combout\ $ (!\top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010001000010010001000100001001000100010000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|AddSub_inst|FAN:7:FA_i_instance|ALT_INV_s~0_combout\,
	datab => \top_inst|alu_inst|ALT_INV_Mux0~0_combout\,
	datac => \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~1_combout\,
	datad => \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~0_combout\,
	datae => \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~0_combout\,
	dataf => \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~2_combout\,
	combout => \top_inst|alu_inst|Mux0~1_combout\);

-- Location: LABCELL_X73_Y3_N9
\top_inst|alu_inst|yAdd[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|yAdd[7]~0_combout\ = (yReg(7) & !\top_inst|alu_inst|Equal6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_yReg(7),
	datad => \top_inst|alu_inst|ALT_INV_Equal6~0_combout\,
	combout => \top_inst|alu_inst|yAdd[7]~0_combout\);

-- Location: LABCELL_X77_Y4_N42
\top_inst|alu_inst|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux1~2_combout\ = ( alufnReg(3) & ( alufnReg(2) ) ) # ( !alufnReg(3) & ( alufnReg(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_alufnReg(2),
	datad => ALT_INV_alufnReg(1),
	dataf => ALT_INV_alufnReg(3),
	combout => \top_inst|alu_inst|Mux1~2_combout\);

-- Location: LABCELL_X73_Y3_N57
\top_inst|alu_inst|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux1~1_combout\ = ( alufnReg(3) & ( (!alufnReg(4) & ((!alufnReg(0)) # (!alufnReg(1)))) ) ) # ( !alufnReg(3) & ( (!alufnReg(0) & (alufnReg(4) & !alufnReg(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_alufnReg(0),
	datac => ALT_INV_alufnReg(4),
	datad => ALT_INV_alufnReg(1),
	dataf => ALT_INV_alufnReg(3),
	combout => \top_inst|alu_inst|Mux1~1_combout\);

-- Location: LABCELL_X77_Y4_N18
\top_inst|alu_inst|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux0~2_combout\ = ( alufnReg(0) & ( yReg(7) & ( (alufnReg(3) & (alufnReg(2) & (!xReg(7) $ (alufnReg(1))))) ) ) ) # ( alufnReg(0) & ( !yReg(7) & ( (alufnReg(3) & (alufnReg(2) & ((!xReg(7)) # (!alufnReg(1))))) ) ) ) # ( !alufnReg(0) & ( 
-- !yReg(7) & ( (!xReg(7) & (alufnReg(3) & (alufnReg(2) & !alufnReg(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000110000001000000000000000000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xReg(7),
	datab => ALT_INV_alufnReg(3),
	datac => ALT_INV_alufnReg(2),
	datad => ALT_INV_alufnReg(1),
	datae => ALT_INV_alufnReg(0),
	dataf => ALT_INV_yReg(7),
	combout => \top_inst|alu_inst|Mux0~2_combout\);

-- Location: LABCELL_X77_Y4_N27
\top_inst|alu_inst|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux1~3_combout\ = ( alufnReg(3) & ( (alufnReg(2) & ((!alufnReg(1)) # (alufnReg(0)))) ) ) # ( !alufnReg(3) & ( !alufnReg(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(0),
	datab => ALT_INV_alufnReg(1),
	datad => ALT_INV_alufnReg(2),
	dataf => ALT_INV_alufnReg(3),
	combout => \top_inst|alu_inst|Mux1~3_combout\);

-- Location: LABCELL_X73_Y4_N15
\top_inst|alu_inst|Shift_inst|horiz[0][0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Shift_inst|horiz[0][0]~0_combout\ = ( yReg(7) & ( (!xReg(0) & ((yReg(0)) # (alufnReg(0)))) ) ) # ( !yReg(7) & ( (!alufnReg(0) & (!xReg(0) & yReg(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(0),
	datab => ALT_INV_xReg(0),
	datac => ALT_INV_yReg(0),
	dataf => ALT_INV_yReg(7),
	combout => \top_inst|alu_inst|Shift_inst|horiz[0][0]~0_combout\);

-- Location: LABCELL_X77_Y4_N24
\top_inst|alu_inst|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux0~3_combout\ = ( xReg(7) & ( (!alufnReg(0) & (!alufnReg(1) $ (yReg(7)))) # (alufnReg(0) & ((!alufnReg(1)) # (!yReg(7)))) ) ) # ( !xReg(7) & ( (!alufnReg(0) & (!alufnReg(1) & !yReg(7))) # (alufnReg(0) & ((yReg(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010110000101100001011000010111010110110101101101011011010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(0),
	datab => ALT_INV_alufnReg(1),
	datac => ALT_INV_yReg(7),
	dataf => ALT_INV_xReg(7),
	combout => \top_inst|alu_inst|Mux0~3_combout\);

-- Location: LABCELL_X77_Y4_N45
\top_inst|alu_inst|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux0~4_combout\ = ( \top_inst|alu_inst|Mux0~3_combout\ & ( (!\top_inst|alu_inst|Mux1~3_combout\) # ((!xReg(1) & (\top_inst|alu_inst|Shift_inst|horiz[0][0]~0_combout\ & !xReg(2)))) ) ) # ( !\top_inst|alu_inst|Mux0~3_combout\ & ( 
-- (\top_inst|alu_inst|Mux1~3_combout\ & (!xReg(1) & (\top_inst|alu_inst|Shift_inst|horiz[0][0]~0_combout\ & !xReg(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000010101110101010101010111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|ALT_INV_Mux1~3_combout\,
	datab => ALT_INV_xReg(1),
	datac => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][0]~0_combout\,
	datad => ALT_INV_xReg(2),
	dataf => \top_inst|alu_inst|ALT_INV_Mux0~3_combout\,
	combout => \top_inst|alu_inst|Mux0~4_combout\);

-- Location: LABCELL_X73_Y4_N54
\top_inst|alu_inst|Shift_inst|horiz[0][5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Shift_inst|horiz[0][5]~2_combout\ = ( yReg(5) & ( yReg(3) & ( (!xReg(0) & (((!alufnReg(0))) # (yReg(2)))) # (xReg(0) & (((yReg(4)) # (alufnReg(0))))) ) ) ) # ( !yReg(5) & ( yReg(3) & ( (!xReg(0) & (yReg(2) & (alufnReg(0)))) # (xReg(0) & 
-- (((yReg(4)) # (alufnReg(0))))) ) ) ) # ( yReg(5) & ( !yReg(3) & ( (!xReg(0) & (((!alufnReg(0))) # (yReg(2)))) # (xReg(0) & (((!alufnReg(0) & yReg(4))))) ) ) ) # ( !yReg(5) & ( !yReg(3) & ( (!xReg(0) & (yReg(2) & (alufnReg(0)))) # (xReg(0) & 
-- (((!alufnReg(0) & yReg(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010101000101111001000000111010101111010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xReg(0),
	datab => ALT_INV_yReg(2),
	datac => ALT_INV_alufnReg(0),
	datad => ALT_INV_yReg(4),
	datae => ALT_INV_yReg(5),
	dataf => ALT_INV_yReg(3),
	combout => \top_inst|alu_inst|Shift_inst|horiz[0][5]~2_combout\);

-- Location: LABCELL_X73_Y4_N18
\top_inst|alu_inst|Shift_inst|horiz[0][1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\ = ( alufnReg(0) & ( xReg(0) & ( yReg(7) ) ) ) # ( !alufnReg(0) & ( xReg(0) & ( yReg(0) ) ) ) # ( alufnReg(0) & ( !xReg(0) & ( yReg(6) ) ) ) # ( !alufnReg(0) & ( !xReg(0) & ( yReg(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_yReg(6),
	datab => ALT_INV_yReg(0),
	datac => ALT_INV_yReg(7),
	datad => ALT_INV_yReg(1),
	datae => ALT_INV_alufnReg(0),
	dataf => ALT_INV_xReg(0),
	combout => \top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\);

-- Location: LABCELL_X73_Y4_N42
\top_inst|alu_inst|Shift_inst|horiz[0][3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Shift_inst|horiz[0][3]~3_combout\ = ( yReg(5) & ( yReg(3) & ( (!xReg(0) & (((!alufnReg(0)) # (yReg(4))))) # (xReg(0) & (((alufnReg(0))) # (yReg(2)))) ) ) ) # ( !yReg(5) & ( yReg(3) & ( (!xReg(0) & (((!alufnReg(0)) # (yReg(4))))) # 
-- (xReg(0) & (yReg(2) & (!alufnReg(0)))) ) ) ) # ( yReg(5) & ( !yReg(3) & ( (!xReg(0) & (((alufnReg(0) & yReg(4))))) # (xReg(0) & (((alufnReg(0))) # (yReg(2)))) ) ) ) # ( !yReg(5) & ( !yReg(3) & ( (!xReg(0) & (((alufnReg(0) & yReg(4))))) # (xReg(0) & 
-- (yReg(2) & (!alufnReg(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xReg(0),
	datab => ALT_INV_yReg(2),
	datac => ALT_INV_alufnReg(0),
	datad => ALT_INV_yReg(4),
	datae => ALT_INV_yReg(5),
	dataf => ALT_INV_yReg(3),
	combout => \top_inst|alu_inst|Shift_inst|horiz[0][3]~3_combout\);

-- Location: LABCELL_X73_Y4_N36
\top_inst|alu_inst|Shift_inst|horiz[0][7]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Shift_inst|horiz[0][7]~1_combout\ = ( alufnReg(0) & ( yReg(0) & ( (!xReg(0)) # (yReg(1)) ) ) ) # ( !alufnReg(0) & ( yReg(0) & ( (!xReg(0) & ((yReg(7)))) # (xReg(0) & (yReg(6))) ) ) ) # ( alufnReg(0) & ( !yReg(0) & ( (xReg(0) & yReg(1)) 
-- ) ) ) # ( !alufnReg(0) & ( !yReg(0) & ( (!xReg(0) & ((yReg(7)))) # (xReg(0) & (yReg(6))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000000000011001100011101000111011100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_yReg(6),
	datab => ALT_INV_xReg(0),
	datac => ALT_INV_yReg(7),
	datad => ALT_INV_yReg(1),
	datae => ALT_INV_alufnReg(0),
	dataf => ALT_INV_yReg(0),
	combout => \top_inst|alu_inst|Shift_inst|horiz[0][7]~1_combout\);

-- Location: LABCELL_X74_Y4_N36
\top_inst|alu_inst|Shift_inst|horiz[2][7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Shift_inst|horiz[2][7]~5_combout\ = ( \top_inst|alu_inst|Shift_inst|horiz[0][3]~3_combout\ & ( \top_inst|alu_inst|Shift_inst|horiz[0][7]~1_combout\ & ( (!xReg(1)) # ((!xReg(2) & (\top_inst|alu_inst|Shift_inst|horiz[0][5]~2_combout\)) # 
-- (xReg(2) & ((\top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\)))) ) ) ) # ( !\top_inst|alu_inst|Shift_inst|horiz[0][3]~3_combout\ & ( \top_inst|alu_inst|Shift_inst|horiz[0][7]~1_combout\ & ( (!xReg(2) & (((!xReg(1))) # 
-- (\top_inst|alu_inst|Shift_inst|horiz[0][5]~2_combout\))) # (xReg(2) & (((\top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\ & xReg(1))))) ) ) ) # ( \top_inst|alu_inst|Shift_inst|horiz[0][3]~3_combout\ & ( 
-- !\top_inst|alu_inst|Shift_inst|horiz[0][7]~1_combout\ & ( (!xReg(2) & (\top_inst|alu_inst|Shift_inst|horiz[0][5]~2_combout\ & ((xReg(1))))) # (xReg(2) & (((!xReg(1)) # (\top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\)))) ) ) ) # ( 
-- !\top_inst|alu_inst|Shift_inst|horiz[0][3]~3_combout\ & ( !\top_inst|alu_inst|Shift_inst|horiz[0][7]~1_combout\ & ( (xReg(1) & ((!xReg(2) & (\top_inst|alu_inst|Shift_inst|horiz[0][5]~2_combout\)) # (xReg(2) & 
-- ((\top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100111010101010010011110101010001001111111111100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xReg(2),
	datab => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][5]~2_combout\,
	datac => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][1]~4_combout\,
	datad => ALT_INV_xReg(1),
	datae => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][3]~3_combout\,
	dataf => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][7]~1_combout\,
	combout => \top_inst|alu_inst|Shift_inst|horiz[2][7]~5_combout\);

-- Location: LABCELL_X77_Y4_N6
\top_inst|alu_inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux1~0_combout\ = ( alufnReg(1) & ( (!alufnReg(4) & ((!alufnReg(3)) # (alufnReg(0)))) ) ) # ( !alufnReg(1) & ( (!alufnReg(3) & ((!alufnReg(0)) # (!alufnReg(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011000000110011001100000011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_alufnReg(3),
	datac => ALT_INV_alufnReg(0),
	datad => ALT_INV_alufnReg(4),
	dataf => ALT_INV_alufnReg(1),
	combout => \top_inst|alu_inst|Mux1~0_combout\);

-- Location: LABCELL_X77_Y4_N30
\top_inst|alu_inst|Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux0~5_combout\ = ( \top_inst|alu_inst|Shift_inst|horiz[2][7]~5_combout\ & ( \top_inst|alu_inst|Mux1~0_combout\ & ( \top_inst|alu_inst|Mux1~1_combout\ ) ) ) # ( \top_inst|alu_inst|Shift_inst|horiz[2][7]~5_combout\ & ( 
-- !\top_inst|alu_inst|Mux1~0_combout\ & ( (!\top_inst|alu_inst|Mux1~1_combout\ & (((!\top_inst|alu_inst|Mux1~2_combout\ & \top_inst|alu_inst|Mux0~4_combout\)) # (\top_inst|alu_inst|Mux0~2_combout\))) ) ) ) # ( 
-- !\top_inst|alu_inst|Shift_inst|horiz[2][7]~5_combout\ & ( !\top_inst|alu_inst|Mux1~0_combout\ & ( (!\top_inst|alu_inst|Mux1~1_combout\ & (((!\top_inst|alu_inst|Mux1~2_combout\ & \top_inst|alu_inst|Mux0~4_combout\)) # (\top_inst|alu_inst|Mux0~2_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110010001100000011001000110000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|ALT_INV_Mux1~2_combout\,
	datab => \top_inst|alu_inst|ALT_INV_Mux1~1_combout\,
	datac => \top_inst|alu_inst|ALT_INV_Mux0~2_combout\,
	datad => \top_inst|alu_inst|ALT_INV_Mux0~4_combout\,
	datae => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[2][7]~5_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux1~0_combout\,
	combout => \top_inst|alu_inst|Mux0~5_combout\);

-- Location: LABCELL_X74_Y3_N36
\top_inst|ov_flag_o~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|ov_flag_o~1_combout\ = ( alufnReg(0) & ( \top_inst|alu_inst|Mux0~5_combout\ & ( (xReg(7) & (\top_inst|ov_flag_o~0_combout\ & !\top_inst|alu_inst|yAdd[7]~0_combout\)) ) ) ) # ( !alufnReg(0) & ( \top_inst|alu_inst|Mux0~5_combout\ & ( (!xReg(7) & 
-- (\top_inst|ov_flag_o~0_combout\ & !\top_inst|alu_inst|yAdd[7]~0_combout\)) ) ) ) # ( alufnReg(0) & ( !\top_inst|alu_inst|Mux0~5_combout\ & ( (\top_inst|ov_flag_o~0_combout\ & ((!xReg(7) & (!\top_inst|alu_inst|Mux0~1_combout\ & 
-- \top_inst|alu_inst|yAdd[7]~0_combout\)) # (xReg(7) & (\top_inst|alu_inst|Mux0~1_combout\ & !\top_inst|alu_inst|yAdd[7]~0_combout\)))) ) ) ) # ( !alufnReg(0) & ( !\top_inst|alu_inst|Mux0~5_combout\ & ( (\top_inst|ov_flag_o~0_combout\ & ((!xReg(7) & 
-- (\top_inst|alu_inst|Mux0~1_combout\ & !\top_inst|alu_inst|yAdd[7]~0_combout\)) # (xReg(7) & (!\top_inst|alu_inst|Mux0~1_combout\ & \top_inst|alu_inst|yAdd[7]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010000000000010010000000100010000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xReg(7),
	datab => \top_inst|ALT_INV_ov_flag_o~0_combout\,
	datac => \top_inst|alu_inst|ALT_INV_Mux0~1_combout\,
	datad => \top_inst|alu_inst|ALT_INV_yAdd[7]~0_combout\,
	datae => ALT_INV_alufnReg(0),
	dataf => \top_inst|alu_inst|ALT_INV_Mux0~5_combout\,
	combout => \top_inst|ov_flag_o~1_combout\);

-- Location: LABCELL_X73_Y3_N36
\top_inst|alu_inst|Mux1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux1~4_combout\ = ( xReg(6) & ( !\top_inst|alu_inst|negAdd~0_combout\ $ (((yReg(6) & !\top_inst|alu_inst|Equal6~0_combout\))) ) ) # ( !xReg(6) & ( !\top_inst|alu_inst|negAdd~0_combout\ $ (((!yReg(6)) # 
-- (\top_inst|alu_inst|Equal6~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100101011001010110010110011010100110101001101010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|ALT_INV_negAdd~0_combout\,
	datab => ALT_INV_yReg(6),
	datac => \top_inst|alu_inst|ALT_INV_Equal6~0_combout\,
	dataf => ALT_INV_xReg(6),
	combout => \top_inst|alu_inst|Mux1~4_combout\);

-- Location: LABCELL_X73_Y3_N39
\top_inst|alu_inst|Mux1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux1~5_combout\ = ( xReg(6) & ( !\top_inst|alu_inst|negAdd~0_combout\ $ (((!yReg(6)) # (\top_inst|alu_inst|Equal6~0_combout\))) ) ) # ( !xReg(6) & ( !\top_inst|alu_inst|negAdd~0_combout\ $ (((yReg(6) & 
-- !\top_inst|alu_inst|Equal6~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110101010101001011010101001011010010101010101101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|ALT_INV_negAdd~0_combout\,
	datac => ALT_INV_yReg(6),
	datad => \top_inst|alu_inst|ALT_INV_Equal6~0_combout\,
	dataf => ALT_INV_xReg(6),
	combout => \top_inst|alu_inst|Mux1~5_combout\);

-- Location: LABCELL_X73_Y3_N27
\top_inst|alu_inst|Mux1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux1~9_combout\ = ( alufnReg(0) & ( alufnReg(3) & ( (!alufnReg(1) & ((!xReg(6) & ((yReg(6)) # (alufnReg(2)))) # (xReg(6) & ((!alufnReg(2)) # (!yReg(6)))))) # (alufnReg(1) & (!xReg(6) $ (!alufnReg(2) $ (yReg(6))))) ) ) ) # ( !alufnReg(0) 
-- & ( alufnReg(3) & ( (!xReg(6) & (((!yReg(6) & !alufnReg(1))))) # (xReg(6) & (!alufnReg(2) & (!yReg(6) $ (alufnReg(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011100000000001000111111001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xReg(6),
	datab => ALT_INV_alufnReg(2),
	datac => ALT_INV_yReg(6),
	datad => ALT_INV_alufnReg(1),
	datae => ALT_INV_alufnReg(0),
	dataf => ALT_INV_alufnReg(3),
	combout => \top_inst|alu_inst|Mux1~9_combout\);

-- Location: LABCELL_X75_Y4_N0
\top_inst|alu_inst|internalCarry~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|internalCarry~0_combout\ = ( !alufnReg(3) & ( !alufnReg(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_alufnReg(3),
	dataf => ALT_INV_alufnReg(1),
	combout => \top_inst|alu_inst|internalCarry~0_combout\);

-- Location: LABCELL_X74_Y4_N33
\top_inst|alu_inst|Mux1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux1~6_combout\ = ( \top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\ & ( (!xReg(2) & (!xReg(1) & \top_inst|alu_inst|internalCarry~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xReg(2),
	datab => ALT_INV_xReg(1),
	datad => \top_inst|alu_inst|ALT_INV_internalCarry~0_combout\,
	dataf => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][1]~4_combout\,
	combout => \top_inst|alu_inst|Mux1~6_combout\);

-- Location: LABCELL_X73_Y4_N33
\top_inst|alu_inst|Shift_inst|horiz[0][6]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Shift_inst|horiz[0][6]~10_combout\ = ( yReg(1) & ( xReg(0) & ( (!alufnReg(0) & ((yReg(5)))) # (alufnReg(0) & (yReg(2))) ) ) ) # ( !yReg(1) & ( xReg(0) & ( (!alufnReg(0) & ((yReg(5)))) # (alufnReg(0) & (yReg(2))) ) ) ) # ( yReg(1) & ( 
-- !xReg(0) & ( (alufnReg(0)) # (yReg(6)) ) ) ) # ( !yReg(1) & ( !xReg(0) & ( (yReg(6) & !alufnReg(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_yReg(6),
	datab => ALT_INV_yReg(2),
	datac => ALT_INV_yReg(5),
	datad => ALT_INV_alufnReg(0),
	datae => ALT_INV_yReg(1),
	dataf => ALT_INV_xReg(0),
	combout => \top_inst|alu_inst|Shift_inst|horiz[0][6]~10_combout\);

-- Location: LABCELL_X73_Y4_N12
\top_inst|alu_inst|Shift_inst|horiz[0][4]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Shift_inst|horiz[0][4]~7_combout\ = (!alufnReg(0) & ((!xReg(0) & ((yReg(4)))) # (xReg(0) & (yReg(3))))) # (alufnReg(0) & ((!xReg(0) & (yReg(3))) # (xReg(0) & ((yReg(4))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010011111000001101001111100000110100111110000011010011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(0),
	datab => ALT_INV_xReg(0),
	datac => ALT_INV_yReg(3),
	datad => ALT_INV_yReg(4),
	combout => \top_inst|alu_inst|Shift_inst|horiz[0][4]~7_combout\);

-- Location: LABCELL_X73_Y4_N48
\top_inst|alu_inst|Shift_inst|horiz[0][2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ = ( yReg(1) & ( xReg(0) & ( (!alufnReg(0)) # (yReg(6)) ) ) ) # ( !yReg(1) & ( xReg(0) & ( (alufnReg(0) & yReg(6)) ) ) ) # ( yReg(1) & ( !xReg(0) & ( (!alufnReg(0) & ((yReg(2)))) # (alufnReg(0) & 
-- (yReg(5))) ) ) ) # ( !yReg(1) & ( !xReg(0) & ( (!alufnReg(0) & ((yReg(2)))) # (alufnReg(0) & (yReg(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100000101000001011010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(0),
	datab => ALT_INV_yReg(5),
	datac => ALT_INV_yReg(6),
	datad => ALT_INV_yReg(2),
	datae => ALT_INV_yReg(1),
	dataf => ALT_INV_xReg(0),
	combout => \top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\);

-- Location: LABCELL_X74_Y4_N6
\top_inst|alu_inst|Shift_inst|horiz[2][6]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Shift_inst|horiz[2][6]~11_combout\ = ( xReg(2) & ( \top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( (!xReg(1)) # (\top_inst|alu_inst|Shift_inst|horiz[0][0]~0_combout\) ) ) ) # ( !xReg(2) & ( 
-- \top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( (!xReg(1) & (\top_inst|alu_inst|Shift_inst|horiz[0][6]~10_combout\)) # (xReg(1) & ((\top_inst|alu_inst|Shift_inst|horiz[0][4]~7_combout\))) ) ) ) # ( xReg(2) & ( 
-- !\top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( (\top_inst|alu_inst|Shift_inst|horiz[0][0]~0_combout\ & xReg(1)) ) ) ) # ( !xReg(2) & ( !\top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( (!xReg(1) & 
-- (\top_inst|alu_inst|Shift_inst|horiz[0][6]~10_combout\)) # (xReg(1) & ((\top_inst|alu_inst|Shift_inst|horiz[0][4]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111000000000101010100110011000011111111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][0]~0_combout\,
	datab => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][6]~10_combout\,
	datac => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][4]~7_combout\,
	datad => ALT_INV_xReg(1),
	datae => ALT_INV_xReg(2),
	dataf => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][2]~6_combout\,
	combout => \top_inst|alu_inst|Shift_inst|horiz[2][6]~11_combout\);

-- Location: LABCELL_X75_Y4_N39
\top_inst|alu_inst|Mux1~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux1~7_combout\ = ( \top_inst|alu_inst|Shift_inst|horiz[2][6]~11_combout\ & ( (!\top_inst|alu_inst|Mux1~1_combout\ & (!\top_inst|alu_inst|Mux1~0_combout\ & ((\top_inst|alu_inst|Mux1~6_combout\) # (\top_inst|alu_inst|Mux1~9_combout\)))) 
-- # (\top_inst|alu_inst|Mux1~1_combout\ & (((\top_inst|alu_inst|Mux1~0_combout\)))) ) ) # ( !\top_inst|alu_inst|Shift_inst|horiz[2][6]~11_combout\ & ( (!\top_inst|alu_inst|Mux1~1_combout\ & (!\top_inst|alu_inst|Mux1~0_combout\ & 
-- ((\top_inst|alu_inst|Mux1~6_combout\) # (\top_inst|alu_inst|Mux1~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000011100000000111101110000000000000111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|ALT_INV_Mux1~9_combout\,
	datab => \top_inst|alu_inst|ALT_INV_Mux1~6_combout\,
	datac => \top_inst|alu_inst|ALT_INV_Mux1~1_combout\,
	datad => \top_inst|alu_inst|ALT_INV_Mux1~0_combout\,
	datae => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[2][6]~11_combout\,
	combout => \top_inst|alu_inst|Mux1~7_combout\);

-- Location: LABCELL_X74_Y3_N54
\top_inst|alu_inst|Mux1~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux1~8_combout\ = ( !\top_inst|alu_inst|Mux1~7_combout\ & ( \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ & ( (!\top_inst|alu_inst|Mux0~0_combout\) # (!\top_inst|alu_inst|Mux1~5_combout\) ) ) ) # ( 
-- !\top_inst|alu_inst|Mux1~7_combout\ & ( !\top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ & ( (!\top_inst|alu_inst|Mux0~0_combout\) # ((!\top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0_combout\ & 
-- (!\top_inst|alu_inst|Mux1~4_combout\)) # (\top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0_combout\ & ((!\top_inst|alu_inst|Mux1~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111101100000000000000000011111111110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|ALT_INV_Mux1~4_combout\,
	datab => \top_inst|alu_inst|ALT_INV_Mux0~0_combout\,
	datac => \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~0_combout\,
	datad => \top_inst|alu_inst|ALT_INV_Mux1~5_combout\,
	datae => \top_inst|alu_inst|ALT_INV_Mux1~7_combout\,
	dataf => \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~2_combout\,
	combout => \top_inst|alu_inst|Mux1~8_combout\);

-- Location: LABCELL_X75_Y3_N0
\top_inst|alu_inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux3~0_combout\ = ( \top_inst|alu_inst|yAdd[4]~2_combout\ & ( !\top_inst|alu_inst|negAdd~0_combout\ $ (xReg(4)) ) ) # ( !\top_inst|alu_inst|yAdd[4]~2_combout\ & ( !\top_inst|alu_inst|negAdd~0_combout\ $ (!xReg(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|alu_inst|ALT_INV_negAdd~0_combout\,
	datac => ALT_INV_xReg(4),
	dataf => \top_inst|alu_inst|ALT_INV_yAdd[4]~2_combout\,
	combout => \top_inst|alu_inst|Mux3~0_combout\);

-- Location: LABCELL_X73_Y4_N24
\top_inst|alu_inst|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux3~3_combout\ = ( yReg(4) & ( !alufnReg(0) $ (((!alufnReg(1)) # (!xReg(4)))) ) ) # ( !yReg(4) & ( (!alufnReg(0) & (!alufnReg(1))) # (alufnReg(0) & ((xReg(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011011101100010001101110101010101011001100101010101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(0),
	datab => ALT_INV_alufnReg(1),
	datad => ALT_INV_xReg(4),
	dataf => ALT_INV_yReg(4),
	combout => \top_inst|alu_inst|Mux3~3_combout\);

-- Location: LABCELL_X74_Y4_N48
\top_inst|alu_inst|Mux3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux3~4_combout\ = ( \top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\ & ( \top_inst|alu_inst|Mux1~3_combout\ & ( (!xReg(2) & ((\top_inst|alu_inst|Shift_inst|horiz[0][3]~3_combout\) # (xReg(1)))) ) ) ) # ( 
-- !\top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\ & ( \top_inst|alu_inst|Mux1~3_combout\ & ( (!xReg(2) & (!xReg(1) & \top_inst|alu_inst|Shift_inst|horiz[0][3]~3_combout\)) ) ) ) # ( \top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\ & ( 
-- !\top_inst|alu_inst|Mux1~3_combout\ & ( \top_inst|alu_inst|Mux3~3_combout\ ) ) ) # ( !\top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\ & ( !\top_inst|alu_inst|Mux1~3_combout\ & ( \top_inst|alu_inst|Mux3~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000100010000010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xReg(2),
	datab => ALT_INV_xReg(1),
	datac => \top_inst|alu_inst|ALT_INV_Mux3~3_combout\,
	datad => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][3]~3_combout\,
	datae => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][1]~4_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux1~3_combout\,
	combout => \top_inst|alu_inst|Mux3~4_combout\);

-- Location: LABCELL_X74_Y4_N12
\top_inst|alu_inst|Shift_inst|horiz[2][4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Shift_inst|horiz[2][4]~8_combout\ = ( \top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( (!xReg(1) & ((!xReg(2) & ((\top_inst|alu_inst|Shift_inst|horiz[0][4]~7_combout\))) # (xReg(2) & 
-- (\top_inst|alu_inst|Shift_inst|horiz[0][0]~0_combout\)))) # (xReg(1) & (((!xReg(2))))) ) ) # ( !\top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( (!xReg(1) & ((!xReg(2) & ((\top_inst|alu_inst|Shift_inst|horiz[0][4]~7_combout\))) # (xReg(2) & 
-- (\top_inst|alu_inst|Shift_inst|horiz[0][0]~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100000011000100010000111111010001000011111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][0]~0_combout\,
	datab => ALT_INV_xReg(1),
	datac => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][4]~7_combout\,
	datad => ALT_INV_xReg(2),
	dataf => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][2]~6_combout\,
	combout => \top_inst|alu_inst|Shift_inst|horiz[2][4]~8_combout\);

-- Location: LABCELL_X73_Y3_N33
\top_inst|alu_inst|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux3~2_combout\ = ( alufnReg(2) & ( alufnReg(3) & ( (!alufnReg(1) & ((!yReg(4) & ((!xReg(4)) # (alufnReg(0)))) # (yReg(4) & (alufnReg(0) & !xReg(4))))) # (alufnReg(1) & (alufnReg(0) & (!yReg(4) $ (xReg(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000111000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(1),
	datab => ALT_INV_yReg(4),
	datac => ALT_INV_alufnReg(0),
	datad => ALT_INV_xReg(4),
	datae => ALT_INV_alufnReg(2),
	dataf => ALT_INV_alufnReg(3),
	combout => \top_inst|alu_inst|Mux3~2_combout\);

-- Location: LABCELL_X74_Y4_N54
\top_inst|alu_inst|Mux3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux3~5_combout\ = ( \top_inst|alu_inst|Mux3~2_combout\ & ( \top_inst|alu_inst|Mux1~0_combout\ & ( (\top_inst|alu_inst|Shift_inst|horiz[2][4]~8_combout\ & \top_inst|alu_inst|Mux1~1_combout\) ) ) ) # ( !\top_inst|alu_inst|Mux3~2_combout\ 
-- & ( \top_inst|alu_inst|Mux1~0_combout\ & ( (\top_inst|alu_inst|Shift_inst|horiz[2][4]~8_combout\ & \top_inst|alu_inst|Mux1~1_combout\) ) ) ) # ( \top_inst|alu_inst|Mux3~2_combout\ & ( !\top_inst|alu_inst|Mux1~0_combout\ & ( 
-- !\top_inst|alu_inst|Mux1~1_combout\ ) ) ) # ( !\top_inst|alu_inst|Mux3~2_combout\ & ( !\top_inst|alu_inst|Mux1~0_combout\ & ( (\top_inst|alu_inst|Mux3~4_combout\ & (!\top_inst|alu_inst|Mux1~1_combout\ & !\top_inst|alu_inst|Mux1~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000111100001111000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|ALT_INV_Mux3~4_combout\,
	datab => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[2][4]~8_combout\,
	datac => \top_inst|alu_inst|ALT_INV_Mux1~1_combout\,
	datad => \top_inst|alu_inst|ALT_INV_Mux1~2_combout\,
	datae => \top_inst|alu_inst|ALT_INV_Mux3~2_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux1~0_combout\,
	combout => \top_inst|alu_inst|Mux3~5_combout\);

-- Location: LABCELL_X73_Y3_N54
\top_inst|alu_inst|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux3~1_combout\ = !xReg(4) $ (!\top_inst|alu_inst|negAdd~0_combout\ $ (!\top_inst|alu_inst|yAdd[4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010101011010101001010101101010100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xReg(4),
	datac => \top_inst|alu_inst|ALT_INV_negAdd~0_combout\,
	datad => \top_inst|alu_inst|ALT_INV_yAdd[4]~2_combout\,
	combout => \top_inst|alu_inst|Mux3~1_combout\);

-- Location: LABCELL_X75_Y3_N9
\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~2_combout\ = ( \top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\ & ( !\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\ ) ) # ( 
-- !\top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\ & ( (\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\ & !\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111100001111000001010000010100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~1_combout\,
	datac => \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~0_combout\,
	datae => \top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|ALT_INV_cout~0_combout\,
	combout => \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~2_combout\);

-- Location: LABCELL_X74_Y3_N42
\top_inst|alu_inst|Mux3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux3~6_combout\ = ( \top_inst|alu_inst|Mux0~0_combout\ & ( (!\top_inst|alu_inst|Mux3~5_combout\ & ((!\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~2_combout\ & ((!\top_inst|alu_inst|Mux3~1_combout\))) # 
-- (\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~2_combout\ & (!\top_inst|alu_inst|Mux3~0_combout\)))) ) ) # ( !\top_inst|alu_inst|Mux0~0_combout\ & ( !\top_inst|alu_inst|Mux3~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011000000100010001100000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|ALT_INV_Mux3~0_combout\,
	datab => \top_inst|alu_inst|ALT_INV_Mux3~5_combout\,
	datac => \top_inst|alu_inst|ALT_INV_Mux3~1_combout\,
	datad => \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~2_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux0~0_combout\,
	combout => \top_inst|alu_inst|Mux3~6_combout\);

-- Location: LABCELL_X75_Y3_N39
\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~2_combout\ = ( \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\ & ( (!\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\ & 
-- ((!\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\) # (\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\))) ) ) # ( !\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~1_combout\ & ( 
-- (!\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~0_combout\ & (((!\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~0_combout\ & \top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\)) # 
-- (\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010100010001000101010001010100010101000101010001010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~0_combout\,
	datab => \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~1_combout\,
	datac => \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~0_combout\,
	datad => \top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|ALT_INV_cout~0_combout\,
	dataf => \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~1_combout\,
	combout => \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~2_combout\);

-- Location: LABCELL_X75_Y3_N12
\top_inst|alu_inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux2~0_combout\ = !\top_inst|alu_inst|yAdd[5]~1_combout\ $ (!\top_inst|alu_inst|negAdd~0_combout\ $ (xReg(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|ALT_INV_yAdd[5]~1_combout\,
	datab => \top_inst|alu_inst|ALT_INV_negAdd~0_combout\,
	datad => ALT_INV_xReg(5),
	combout => \top_inst|alu_inst|Mux2~0_combout\);

-- Location: LABCELL_X74_Y4_N30
\top_inst|alu_inst|Shift_inst|horiz[2][5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Shift_inst|horiz[2][5]~9_combout\ = ( \top_inst|alu_inst|Shift_inst|horiz[0][5]~2_combout\ & ( (!xReg(2) & ((!xReg(1)) # ((\top_inst|alu_inst|Shift_inst|horiz[0][3]~3_combout\)))) # (xReg(2) & (!xReg(1) & 
-- (\top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\))) ) ) # ( !\top_inst|alu_inst|Shift_inst|horiz[0][5]~2_combout\ & ( (!xReg(2) & (xReg(1) & ((\top_inst|alu_inst|Shift_inst|horiz[0][3]~3_combout\)))) # (xReg(2) & (!xReg(1) & 
-- (\top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xReg(2),
	datab => ALT_INV_xReg(1),
	datac => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][1]~4_combout\,
	datad => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][3]~3_combout\,
	dataf => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][5]~2_combout\,
	combout => \top_inst|alu_inst|Shift_inst|horiz[2][5]~9_combout\);

-- Location: LABCELL_X73_Y4_N27
\top_inst|alu_inst|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux2~3_combout\ = ( xReg(5) & ( (!alufnReg(0) & (!alufnReg(1) $ (yReg(5)))) # (alufnReg(0) & ((!alufnReg(1)) # (!yReg(5)))) ) ) # ( !xReg(5) & ( (!alufnReg(0) & (!alufnReg(1) & !yReg(5))) # (alufnReg(0) & ((yReg(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010110000101100001011000010111010110110101101101011011010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(0),
	datab => ALT_INV_alufnReg(1),
	datac => ALT_INV_yReg(5),
	dataf => ALT_INV_xReg(5),
	combout => \top_inst|alu_inst|Mux2~3_combout\);

-- Location: LABCELL_X77_Y4_N12
\top_inst|alu_inst|Mux2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux2~4_combout\ = ( xReg(2) & ( \top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( (\top_inst|alu_inst|Mux2~3_combout\ & !\top_inst|alu_inst|Mux1~3_combout\) ) ) ) # ( !xReg(2) & ( 
-- \top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( (!\top_inst|alu_inst|Mux1~3_combout\ & (((\top_inst|alu_inst|Mux2~3_combout\)))) # (\top_inst|alu_inst|Mux1~3_combout\ & ((!xReg(1)) # ((\top_inst|alu_inst|Shift_inst|horiz[0][0]~0_combout\)))) ) ) 
-- ) # ( xReg(2) & ( !\top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( (\top_inst|alu_inst|Mux2~3_combout\ & !\top_inst|alu_inst|Mux1~3_combout\) ) ) ) # ( !xReg(2) & ( !\top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( 
-- (!\top_inst|alu_inst|Mux1~3_combout\ & (((\top_inst|alu_inst|Mux2~3_combout\)))) # (\top_inst|alu_inst|Mux1~3_combout\ & (xReg(1) & ((\top_inst|alu_inst|Shift_inst|horiz[0][0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110101001100000011000000111010001111110011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xReg(1),
	datab => \top_inst|alu_inst|ALT_INV_Mux2~3_combout\,
	datac => \top_inst|alu_inst|ALT_INV_Mux1~3_combout\,
	datad => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][0]~0_combout\,
	datae => ALT_INV_xReg(2),
	dataf => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][2]~6_combout\,
	combout => \top_inst|alu_inst|Mux2~4_combout\);

-- Location: LABCELL_X77_Y4_N36
\top_inst|alu_inst|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux2~2_combout\ = ( yReg(5) & ( alufnReg(1) & ( (alufnReg(0) & (alufnReg(3) & (alufnReg(2) & xReg(5)))) ) ) ) # ( !yReg(5) & ( alufnReg(1) & ( (alufnReg(0) & (alufnReg(3) & (alufnReg(2) & !xReg(5)))) ) ) ) # ( yReg(5) & ( !alufnReg(1) & 
-- ( (alufnReg(0) & (alufnReg(3) & (alufnReg(2) & !xReg(5)))) ) ) ) # ( !yReg(5) & ( !alufnReg(1) & ( (alufnReg(3) & (alufnReg(2) & ((!xReg(5)) # (alufnReg(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000001000000010000000000000001000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(0),
	datab => ALT_INV_alufnReg(3),
	datac => ALT_INV_alufnReg(2),
	datad => ALT_INV_xReg(5),
	datae => ALT_INV_yReg(5),
	dataf => ALT_INV_alufnReg(1),
	combout => \top_inst|alu_inst|Mux2~2_combout\);

-- Location: LABCELL_X77_Y4_N48
\top_inst|alu_inst|Mux2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux2~5_combout\ = ( \top_inst|alu_inst|Mux2~2_combout\ & ( \top_inst|alu_inst|Mux1~0_combout\ & ( (\top_inst|alu_inst|Mux1~1_combout\ & \top_inst|alu_inst|Shift_inst|horiz[2][5]~9_combout\) ) ) ) # ( !\top_inst|alu_inst|Mux2~2_combout\ 
-- & ( \top_inst|alu_inst|Mux1~0_combout\ & ( (\top_inst|alu_inst|Mux1~1_combout\ & \top_inst|alu_inst|Shift_inst|horiz[2][5]~9_combout\) ) ) ) # ( \top_inst|alu_inst|Mux2~2_combout\ & ( !\top_inst|alu_inst|Mux1~0_combout\ & ( 
-- !\top_inst|alu_inst|Mux1~1_combout\ ) ) ) # ( !\top_inst|alu_inst|Mux2~2_combout\ & ( !\top_inst|alu_inst|Mux1~0_combout\ & ( (!\top_inst|alu_inst|Mux1~2_combout\ & (!\top_inst|alu_inst|Mux1~1_combout\ & \top_inst|alu_inst|Mux2~4_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000110011001100110000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|ALT_INV_Mux1~2_combout\,
	datab => \top_inst|alu_inst|ALT_INV_Mux1~1_combout\,
	datac => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[2][5]~9_combout\,
	datad => \top_inst|alu_inst|ALT_INV_Mux2~4_combout\,
	datae => \top_inst|alu_inst|ALT_INV_Mux2~2_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux1~0_combout\,
	combout => \top_inst|alu_inst|Mux2~5_combout\);

-- Location: LABCELL_X75_Y3_N15
\top_inst|alu_inst|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux2~1_combout\ = !\top_inst|alu_inst|yAdd[5]~1_combout\ $ (!\top_inst|alu_inst|negAdd~0_combout\ $ (!xReg(5)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010010110100101101001011010010110100101101001011010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|ALT_INV_yAdd[5]~1_combout\,
	datab => \top_inst|alu_inst|ALT_INV_negAdd~0_combout\,
	datac => ALT_INV_xReg(5),
	combout => \top_inst|alu_inst|Mux2~1_combout\);

-- Location: LABCELL_X74_Y3_N48
\top_inst|alu_inst|Mux2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux2~6_combout\ = ( \top_inst|alu_inst|Mux0~0_combout\ & ( (!\top_inst|alu_inst|Mux2~5_combout\ & ((!\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~2_combout\ & ((!\top_inst|alu_inst|Mux2~1_combout\))) # 
-- (\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~2_combout\ & (!\top_inst|alu_inst|Mux2~0_combout\)))) ) ) # ( !\top_inst|alu_inst|Mux0~0_combout\ & ( !\top_inst|alu_inst|Mux2~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011100000010000001110000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~2_combout\,
	datab => \top_inst|alu_inst|ALT_INV_Mux2~0_combout\,
	datac => \top_inst|alu_inst|ALT_INV_Mux2~5_combout\,
	datad => \top_inst|alu_inst|ALT_INV_Mux2~1_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux0~0_combout\,
	combout => \top_inst|alu_inst|Mux2~6_combout\);

-- Location: LABCELL_X75_Y4_N15
\top_inst|alu_inst|Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux0~6_combout\ = ( alufnReg(0) & ( alufnReg(4) ) ) # ( !alufnReg(0) & ( (alufnReg(4) & ((alufnReg(1)) # (alufnReg(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(3),
	datab => ALT_INV_alufnReg(1),
	datac => ALT_INV_alufnReg(4),
	dataf => ALT_INV_alufnReg(0),
	combout => \top_inst|alu_inst|Mux0~6_combout\);

-- Location: MLABCELL_X78_Y4_N39
\top_inst|alu_inst|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux6~2_combout\ = ( alufnReg(2) & ( alufnReg(0) & ( (alufnReg(3) & ((!yReg(1) & ((!xReg(1)) # (!alufnReg(1)))) # (yReg(1) & (!xReg(1) $ (alufnReg(1)))))) ) ) ) # ( !alufnReg(2) & ( alufnReg(0) & ( (alufnReg(3) & ((!yReg(1) & (xReg(1))) 
-- # (yReg(1) & ((!xReg(1)) # (!alufnReg(1)))))) ) ) ) # ( alufnReg(2) & ( !alufnReg(0) & ( (!yReg(1) & (!xReg(1) & (alufnReg(3) & !alufnReg(1)))) ) ) ) # ( !alufnReg(2) & ( !alufnReg(0) & ( (alufnReg(3) & ((!yReg(1) & ((!alufnReg(1)))) # (yReg(1) & (xReg(1) 
-- & alufnReg(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000001000010000000000000000111000001100000111000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_yReg(1),
	datab => ALT_INV_xReg(1),
	datac => ALT_INV_alufnReg(3),
	datad => ALT_INV_alufnReg(1),
	datae => ALT_INV_alufnReg(2),
	dataf => ALT_INV_alufnReg(0),
	combout => \top_inst|alu_inst|Mux6~2_combout\);

-- Location: LABCELL_X75_Y4_N24
\top_inst|alu_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux6~0_combout\ = ( \top_inst|alu_inst|Shift_inst|horiz[2][6]~11_combout\ & ( \top_inst|alu_inst|Mux6~2_combout\ & ( \top_inst|alu_inst|Mux0~6_combout\ ) ) ) # ( !\top_inst|alu_inst|Shift_inst|horiz[2][6]~11_combout\ & ( 
-- \top_inst|alu_inst|Mux6~2_combout\ & ( \top_inst|alu_inst|Mux0~6_combout\ ) ) ) # ( \top_inst|alu_inst|Shift_inst|horiz[2][6]~11_combout\ & ( !\top_inst|alu_inst|Mux6~2_combout\ & ( (\top_inst|alu_inst|Mux0~6_combout\ & 
-- \top_inst|alu_inst|internalCarry~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|alu_inst|ALT_INV_Mux0~6_combout\,
	datac => \top_inst|alu_inst|ALT_INV_internalCarry~0_combout\,
	datae => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[2][6]~11_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux6~2_combout\,
	combout => \top_inst|alu_inst|Mux6~0_combout\);

-- Location: MLABCELL_X78_Y4_N54
\top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|s~combout\ = ( \top_inst|alu_inst|AddSub_inst|FA0|cout~0_combout\ & ( \top_inst|alu_inst|AddSub_inst|xForAdder\(2) & ( !\top_inst|alu_inst|yAdd[2]~4_combout\ $ (((\top_inst|alu_inst|yAdd[1]~5_combout\) # 
-- (\top_inst|alu_inst|AddSub_inst|xForAdder\(1)))) ) ) ) # ( !\top_inst|alu_inst|AddSub_inst|FA0|cout~0_combout\ & ( \top_inst|alu_inst|AddSub_inst|xForAdder\(2) & ( !\top_inst|alu_inst|yAdd[2]~4_combout\ $ (((!\top_inst|alu_inst|AddSub_inst|xForAdder\(1) & 
-- (\top_inst|alu_inst|AddSub_inst|FA0|cout~1_combout\ & \top_inst|alu_inst|yAdd[1]~5_combout\)) # (\top_inst|alu_inst|AddSub_inst|xForAdder\(1) & ((\top_inst|alu_inst|yAdd[1]~5_combout\) # (\top_inst|alu_inst|AddSub_inst|FA0|cout~1_combout\))))) ) ) ) # ( 
-- \top_inst|alu_inst|AddSub_inst|FA0|cout~0_combout\ & ( !\top_inst|alu_inst|AddSub_inst|xForAdder\(2) & ( !\top_inst|alu_inst|yAdd[2]~4_combout\ $ (((!\top_inst|alu_inst|AddSub_inst|xForAdder\(1) & !\top_inst|alu_inst|yAdd[1]~5_combout\))) ) ) ) # ( 
-- !\top_inst|alu_inst|AddSub_inst|FA0|cout~0_combout\ & ( !\top_inst|alu_inst|AddSub_inst|xForAdder\(2) & ( !\top_inst|alu_inst|yAdd[2]~4_combout\ $ (((!\top_inst|alu_inst|AddSub_inst|xForAdder\(1) & ((!\top_inst|alu_inst|AddSub_inst|FA0|cout~1_combout\) # 
-- (!\top_inst|alu_inst|yAdd[1]~5_combout\))) # (\top_inst|alu_inst|AddSub_inst|xForAdder\(1) & (!\top_inst|alu_inst|AddSub_inst|FA0|cout~1_combout\ & !\top_inst|alu_inst|yAdd[1]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000010110101111000011100001100001111010010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|AddSub_inst|ALT_INV_xForAdder\(1),
	datab => \top_inst|alu_inst|AddSub_inst|FA0|ALT_INV_cout~1_combout\,
	datac => \top_inst|alu_inst|ALT_INV_yAdd[2]~4_combout\,
	datad => \top_inst|alu_inst|ALT_INV_yAdd[1]~5_combout\,
	datae => \top_inst|alu_inst|AddSub_inst|FA0|ALT_INV_cout~0_combout\,
	dataf => \top_inst|alu_inst|AddSub_inst|ALT_INV_xForAdder\(2),
	combout => \top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|s~combout\);

-- Location: LABCELL_X74_Y4_N15
\top_inst|alu_inst|Shift_inst|horiz[2][2]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Shift_inst|horiz[2][2]~12_combout\ = ( \top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( (!xReg(2) & ((!xReg(1)) # (\top_inst|alu_inst|Shift_inst|horiz[0][0]~0_combout\))) ) ) # ( 
-- !\top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( (\top_inst|alu_inst|Shift_inst|horiz[0][0]~0_combout\ & (xReg(1) & !xReg(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000011011101000000001101110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][0]~0_combout\,
	datab => ALT_INV_xReg(1),
	datad => ALT_INV_xReg(2),
	dataf => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][2]~6_combout\,
	combout => \top_inst|alu_inst|Shift_inst|horiz[2][2]~12_combout\);

-- Location: LABCELL_X75_Y4_N12
\top_inst|alu_inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux5~0_combout\ = (!alufnReg(3) & !alufnReg(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(3),
	datab => ALT_INV_alufnReg(1),
	combout => \top_inst|alu_inst|Mux5~0_combout\);

-- Location: LABCELL_X74_Y4_N42
\top_inst|alu_inst|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux5~1_combout\ = ( \top_inst|alu_inst|Shift_inst|horiz[0][3]~3_combout\ & ( \top_inst|alu_inst|Mux5~0_combout\ & ( (!xReg(1) & ((!xReg(2) & ((\top_inst|alu_inst|Shift_inst|horiz[0][5]~2_combout\))) # (xReg(2) & 
-- (\top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\)))) # (xReg(1) & (((!xReg(2))))) ) ) ) # ( !\top_inst|alu_inst|Shift_inst|horiz[0][3]~3_combout\ & ( \top_inst|alu_inst|Mux5~0_combout\ & ( (!xReg(1) & ((!xReg(2) & 
-- ((\top_inst|alu_inst|Shift_inst|horiz[0][5]~2_combout\))) # (xReg(2) & (\top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100110001000011010011110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][1]~4_combout\,
	datab => ALT_INV_xReg(1),
	datac => ALT_INV_xReg(2),
	datad => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][5]~2_combout\,
	datae => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][3]~3_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux5~0_combout\,
	combout => \top_inst|alu_inst|Mux5~1_combout\);

-- Location: MLABCELL_X78_Y4_N12
\top_inst|alu_inst|Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux5~3_combout\ = ( alufnReg(2) & ( alufnReg(0) & ( (alufnReg(3) & ((!alufnReg(1) & ((!yReg(2)) # (!xReg(2)))) # (alufnReg(1) & (!yReg(2) $ (xReg(2)))))) ) ) ) # ( !alufnReg(2) & ( alufnReg(0) & ( (alufnReg(3) & ((!yReg(2) & 
-- ((xReg(2)))) # (yReg(2) & ((!alufnReg(1)) # (!xReg(2)))))) ) ) ) # ( alufnReg(2) & ( !alufnReg(0) & ( (!alufnReg(1) & (alufnReg(3) & (!yReg(2) & !xReg(2)))) ) ) ) # ( !alufnReg(2) & ( !alufnReg(0) & ( (alufnReg(3) & ((!alufnReg(1) & (!yReg(2))) # 
-- (alufnReg(1) & (yReg(2) & xReg(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100001001000000000000000000011001100100011001000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(1),
	datab => ALT_INV_alufnReg(3),
	datac => ALT_INV_yReg(2),
	datad => ALT_INV_xReg(2),
	datae => ALT_INV_alufnReg(2),
	dataf => ALT_INV_alufnReg(0),
	combout => \top_inst|alu_inst|Mux5~3_combout\);

-- Location: LABCELL_X75_Y4_N48
\top_inst|alu_inst|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux5~2_combout\ = ( \top_inst|alu_inst|Mux5~1_combout\ & ( \top_inst|alu_inst|Mux5~3_combout\ & ( (!\top_inst|alu_inst|Mux1~1_combout\ & (((!\top_inst|alu_inst|Mux1~0_combout\)))) # (\top_inst|alu_inst|Mux1~1_combout\ & 
-- ((!\top_inst|alu_inst|Mux1~0_combout\ & (\top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|s~combout\)) # (\top_inst|alu_inst|Mux1~0_combout\ & ((\top_inst|alu_inst|Shift_inst|horiz[2][2]~12_combout\))))) ) ) ) # ( !\top_inst|alu_inst|Mux5~1_combout\ & ( 
-- \top_inst|alu_inst|Mux5~3_combout\ & ( (!\top_inst|alu_inst|Mux1~1_combout\ & (((!\top_inst|alu_inst|Mux1~0_combout\)))) # (\top_inst|alu_inst|Mux1~1_combout\ & ((!\top_inst|alu_inst|Mux1~0_combout\ & 
-- (\top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|s~combout\)) # (\top_inst|alu_inst|Mux1~0_combout\ & ((\top_inst|alu_inst|Shift_inst|horiz[2][2]~12_combout\))))) ) ) ) # ( \top_inst|alu_inst|Mux5~1_combout\ & ( !\top_inst|alu_inst|Mux5~3_combout\ & ( 
-- (!\top_inst|alu_inst|Mux1~1_combout\ & (((!\top_inst|alu_inst|Mux1~0_combout\)))) # (\top_inst|alu_inst|Mux1~1_combout\ & ((!\top_inst|alu_inst|Mux1~0_combout\ & (\top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|s~combout\)) # 
-- (\top_inst|alu_inst|Mux1~0_combout\ & ((\top_inst|alu_inst|Shift_inst|horiz[2][2]~12_combout\))))) ) ) ) # ( !\top_inst|alu_inst|Mux5~1_combout\ & ( !\top_inst|alu_inst|Mux5~3_combout\ & ( (\top_inst|alu_inst|Mux1~1_combout\ & 
-- ((!\top_inst|alu_inst|Mux1~0_combout\ & (\top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|s~combout\)) # (\top_inst|alu_inst|Mux1~0_combout\ & ((\top_inst|alu_inst|Shift_inst|horiz[2][2]~12_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011110100001101001111010000110100111101000011010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|ALT_INV_s~combout\,
	datab => \top_inst|alu_inst|ALT_INV_Mux1~1_combout\,
	datac => \top_inst|alu_inst|ALT_INV_Mux1~0_combout\,
	datad => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[2][2]~12_combout\,
	datae => \top_inst|alu_inst|ALT_INV_Mux5~1_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux5~3_combout\,
	combout => \top_inst|alu_inst|Mux5~2_combout\);

-- Location: LABCELL_X75_Y3_N18
\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|s~0_combout\ = ( \top_inst|alu_inst|yAdd[3]~3_combout\ & ( xReg(3) & ( \top_inst|alu_inst|negAdd~0_combout\ ) ) ) # ( !\top_inst|alu_inst|yAdd[3]~3_combout\ & ( xReg(3) & ( 
-- !\top_inst|alu_inst|negAdd~0_combout\ ) ) ) # ( \top_inst|alu_inst|yAdd[3]~3_combout\ & ( !xReg(3) & ( !\top_inst|alu_inst|negAdd~0_combout\ ) ) ) # ( !\top_inst|alu_inst|yAdd[3]~3_combout\ & ( !xReg(3) & ( \top_inst|alu_inst|negAdd~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|alu_inst|ALT_INV_negAdd~0_combout\,
	datae => \top_inst|alu_inst|ALT_INV_yAdd[3]~3_combout\,
	dataf => ALT_INV_xReg(3),
	combout => \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|s~0_combout\);

-- Location: LABCELL_X74_Y4_N24
\top_inst|alu_inst|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux4~1_combout\ = ( xReg(2) & ( \top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( (\top_inst|alu_inst|Shift_inst|horiz[0][0]~0_combout\ & (!xReg(1) & \top_inst|alu_inst|Mux5~0_combout\)) ) ) ) # ( !xReg(2) & ( 
-- \top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( (\top_inst|alu_inst|Mux5~0_combout\ & ((\top_inst|alu_inst|Shift_inst|horiz[0][4]~7_combout\) # (xReg(1)))) ) ) ) # ( xReg(2) & ( !\top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( 
-- (\top_inst|alu_inst|Shift_inst|horiz[0][0]~0_combout\ & (!xReg(1) & \top_inst|alu_inst|Mux5~0_combout\)) ) ) ) # ( !xReg(2) & ( !\top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( (!xReg(1) & (\top_inst|alu_inst|Shift_inst|horiz[0][4]~7_combout\ & 
-- \top_inst|alu_inst|Mux5~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000100010000000000001111110000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][0]~0_combout\,
	datab => ALT_INV_xReg(1),
	datac => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][4]~7_combout\,
	datad => \top_inst|alu_inst|ALT_INV_Mux5~0_combout\,
	datae => ALT_INV_xReg(2),
	dataf => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][2]~6_combout\,
	combout => \top_inst|alu_inst|Mux4~1_combout\);

-- Location: MLABCELL_X78_Y4_N18
\top_inst|alu_inst|Mux4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux4~3_combout\ = ( alufnReg(2) & ( alufnReg(0) & ( (alufnReg(3) & ((!alufnReg(1) & ((!xReg(3)) # (!yReg(3)))) # (alufnReg(1) & (!xReg(3) $ (yReg(3)))))) ) ) ) # ( !alufnReg(2) & ( alufnReg(0) & ( (alufnReg(3) & ((!xReg(3) & 
-- ((yReg(3)))) # (xReg(3) & ((!alufnReg(1)) # (!yReg(3)))))) ) ) ) # ( alufnReg(2) & ( !alufnReg(0) & ( (!alufnReg(1) & (!xReg(3) & (!yReg(3) & alufnReg(3)))) ) ) ) # ( !alufnReg(2) & ( !alufnReg(0) & ( (alufnReg(3) & ((!alufnReg(1) & ((!yReg(3)))) # 
-- (alufnReg(1) & (xReg(3) & yReg(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100001000000001000000000000000001111100000000011101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(1),
	datab => ALT_INV_xReg(3),
	datac => ALT_INV_yReg(3),
	datad => ALT_INV_alufnReg(3),
	datae => ALT_INV_alufnReg(2),
	dataf => ALT_INV_alufnReg(0),
	combout => \top_inst|alu_inst|Mux4~3_combout\);

-- Location: LABCELL_X75_Y3_N27
\top_inst|alu_inst|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux4~2_combout\ = ( \top_inst|alu_inst|Mux1~1_combout\ & ( \top_inst|alu_inst|Mux4~3_combout\ & ( (!\top_inst|alu_inst|Mux1~0_combout\ & (!\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|s~0_combout\ $ 
-- (\top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\))) ) ) ) # ( !\top_inst|alu_inst|Mux1~1_combout\ & ( \top_inst|alu_inst|Mux4~3_combout\ & ( !\top_inst|alu_inst|Mux1~0_combout\ ) ) ) # ( \top_inst|alu_inst|Mux1~1_combout\ & ( 
-- !\top_inst|alu_inst|Mux4~3_combout\ & ( (!\top_inst|alu_inst|Mux1~0_combout\ & (!\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|s~0_combout\ $ (\top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|cout~0_combout\))) ) ) ) # ( 
-- !\top_inst|alu_inst|Mux1~1_combout\ & ( !\top_inst|alu_inst|Mux4~3_combout\ & ( (!\top_inst|alu_inst|Mux1~0_combout\ & \top_inst|alu_inst|Mux4~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100100010000100010011001100110011001000100001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_s~0_combout\,
	datab => \top_inst|alu_inst|ALT_INV_Mux1~0_combout\,
	datac => \top_inst|alu_inst|ALT_INV_Mux4~1_combout\,
	datad => \top_inst|alu_inst|AddSub_inst|FAN:2:FA_i_instance|ALT_INV_cout~0_combout\,
	datae => \top_inst|alu_inst|ALT_INV_Mux1~1_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux4~3_combout\,
	combout => \top_inst|alu_inst|Mux4~2_combout\);

-- Location: LABCELL_X75_Y4_N30
\top_inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|Equal0~0_combout\ = ( !alufnReg(3) & ( !alufnReg(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100000000000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_alufnReg(4),
	datae => ALT_INV_alufnReg(3),
	combout => \top_inst|Equal0~0_combout\);

-- Location: LABCELL_X73_Y4_N3
\top_inst|alu_inst|AddSub_inst|FA0|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FA0|s~combout\ = ( alufnReg(1) & ( xReg(0) & ( (!alufnReg(0)) # (!yReg(0)) ) ) ) # ( !alufnReg(1) & ( xReg(0) & ( !yReg(0) ) ) ) # ( alufnReg(1) & ( !xReg(0) & ( (alufnReg(0) & yReg(0)) ) ) ) # ( !alufnReg(1) & ( !xReg(0) & 
-- ( yReg(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000001010000010111110000111100001111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(0),
	datac => ALT_INV_yReg(0),
	datae => ALT_INV_alufnReg(1),
	dataf => ALT_INV_xReg(0),
	combout => \top_inst|alu_inst|AddSub_inst|FA0|s~combout\);

-- Location: LABCELL_X77_Y4_N54
\top_inst|alu_inst|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux7~0_combout\ = ( \top_inst|alu_inst|Shift_inst|horiz[0][0]~0_combout\ & ( \top_inst|alu_inst|AddSub_inst|FA0|s~combout\ & ( (\top_inst|alu_inst|Mux1~1_combout\ & ((!\top_inst|alu_inst|Mux1~0_combout\) # ((!xReg(1) & !xReg(2))))) ) ) 
-- ) # ( !\top_inst|alu_inst|Shift_inst|horiz[0][0]~0_combout\ & ( \top_inst|alu_inst|AddSub_inst|FA0|s~combout\ & ( (\top_inst|alu_inst|Mux1~1_combout\ & !\top_inst|alu_inst|Mux1~0_combout\) ) ) ) # ( \top_inst|alu_inst|Shift_inst|horiz[0][0]~0_combout\ & ( 
-- !\top_inst|alu_inst|AddSub_inst|FA0|s~combout\ & ( (!xReg(1) & (\top_inst|alu_inst|Mux1~1_combout\ & (!xReg(2) & \top_inst|alu_inst|Mux1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000110011000000000011001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xReg(1),
	datab => \top_inst|alu_inst|ALT_INV_Mux1~1_combout\,
	datac => ALT_INV_xReg(2),
	datad => \top_inst|alu_inst|ALT_INV_Mux1~0_combout\,
	datae => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][0]~0_combout\,
	dataf => \top_inst|alu_inst|AddSub_inst|FA0|ALT_INV_s~combout\,
	combout => \top_inst|alu_inst|Mux7~0_combout\);

-- Location: MLABCELL_X78_Y4_N3
\top_inst|alu_inst|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux7~1_combout\ = ( alufnReg(2) & ( alufnReg(0) & ( (alufnReg(3) & ((!alufnReg(1) & ((!yReg(0)) # (!xReg(0)))) # (alufnReg(1) & (!yReg(0) $ (xReg(0)))))) ) ) ) # ( !alufnReg(2) & ( alufnReg(0) & ( (alufnReg(3) & ((!yReg(0) & 
-- ((xReg(0)))) # (yReg(0) & ((!alufnReg(1)) # (!xReg(0)))))) ) ) ) # ( alufnReg(2) & ( !alufnReg(0) & ( (!alufnReg(1) & (alufnReg(3) & (!yReg(0) & !xReg(0)))) ) ) ) # ( !alufnReg(2) & ( !alufnReg(0) & ( (alufnReg(3) & ((!alufnReg(1) & (!yReg(0))) # 
-- (alufnReg(1) & (yReg(0) & xReg(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100001001000000000000000000011001100100011001000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(1),
	datab => ALT_INV_alufnReg(3),
	datac => ALT_INV_yReg(0),
	datad => ALT_INV_xReg(0),
	datae => ALT_INV_alufnReg(2),
	dataf => ALT_INV_alufnReg(0),
	combout => \top_inst|alu_inst|Mux7~1_combout\);

-- Location: LABCELL_X75_Y4_N6
\top_inst|z_flag_o~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|z_flag_o~0_combout\ = ( \top_inst|alu_inst|internalCarry~0_combout\ & ( \top_inst|alu_inst|Mux7~1_combout\ & ( (!\top_inst|Equal0~0_combout\ & (!\top_inst|alu_inst|Mux0~6_combout\ & !\top_inst|alu_inst|Mux7~0_combout\)) ) ) ) # ( 
-- !\top_inst|alu_inst|internalCarry~0_combout\ & ( \top_inst|alu_inst|Mux7~1_combout\ & ( (!\top_inst|Equal0~0_combout\ & (!\top_inst|alu_inst|Mux0~6_combout\ & !\top_inst|alu_inst|Mux7~0_combout\)) ) ) ) # ( \top_inst|alu_inst|internalCarry~0_combout\ & ( 
-- !\top_inst|alu_inst|Mux7~1_combout\ & ( (!\top_inst|Equal0~0_combout\ & (!\top_inst|alu_inst|Mux7~0_combout\ & ((!\top_inst|alu_inst|Mux0~6_combout\) # (!\top_inst|alu_inst|Shift_inst|horiz[2][7]~5_combout\)))) ) ) ) # ( 
-- !\top_inst|alu_inst|internalCarry~0_combout\ & ( !\top_inst|alu_inst|Mux7~1_combout\ & ( (!\top_inst|Equal0~0_combout\ & !\top_inst|alu_inst|Mux7~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010000000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|ALT_INV_Equal0~0_combout\,
	datab => \top_inst|alu_inst|ALT_INV_Mux0~6_combout\,
	datac => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[2][7]~5_combout\,
	datad => \top_inst|alu_inst|ALT_INV_Mux7~0_combout\,
	datae => \top_inst|alu_inst|ALT_INV_internalCarry~0_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux7~1_combout\,
	combout => \top_inst|z_flag_o~0_combout\);

-- Location: LABCELL_X74_Y4_N18
\top_inst|alu_inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux4~0_combout\ = ( \top_inst|alu_inst|Mux1~1_combout\ & ( \top_inst|alu_inst|Mux1~0_combout\ & ( (!xReg(2) & ((!xReg(1) & ((\top_inst|alu_inst|Shift_inst|horiz[0][3]~3_combout\))) # (xReg(1) & 
-- (\top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xReg(2),
	datab => ALT_INV_xReg(1),
	datac => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][1]~4_combout\,
	datad => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][3]~3_combout\,
	datae => \top_inst|alu_inst|ALT_INV_Mux1~1_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux1~0_combout\,
	combout => \top_inst|alu_inst|Mux4~0_combout\);

-- Location: MLABCELL_X78_Y4_N27
\top_inst|alu_inst|AddSub_inst|FAN:1:FA_i_instance|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FAN:1:FA_i_instance|s~combout\ = ( \top_inst|alu_inst|AddSub_inst|xForAdder\(1) & ( !\top_inst|alu_inst|yAdd[1]~5_combout\ $ (((\top_inst|alu_inst|AddSub_inst|FA0|cout~0_combout\) # 
-- (\top_inst|alu_inst|AddSub_inst|FA0|cout~1_combout\))) ) ) # ( !\top_inst|alu_inst|AddSub_inst|xForAdder\(1) & ( !\top_inst|alu_inst|yAdd[1]~5_combout\ $ (((!\top_inst|alu_inst|AddSub_inst|FA0|cout~1_combout\ & 
-- !\top_inst|alu_inst|AddSub_inst|FA0|cout~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011001100001111001100110011000011001100111100001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|alu_inst|ALT_INV_yAdd[1]~5_combout\,
	datac => \top_inst|alu_inst|AddSub_inst|FA0|ALT_INV_cout~1_combout\,
	datad => \top_inst|alu_inst|AddSub_inst|FA0|ALT_INV_cout~0_combout\,
	dataf => \top_inst|alu_inst|AddSub_inst|ALT_INV_xForAdder\(1),
	combout => \top_inst|alu_inst|AddSub_inst|FAN:1:FA_i_instance|s~combout\);

-- Location: LABCELL_X77_Y4_N57
\top_inst|alu_inst|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Mux6~1_combout\ = ( \top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\ & ( \top_inst|alu_inst|AddSub_inst|FAN:1:FA_i_instance|s~combout\ & ( (\top_inst|alu_inst|Mux1~1_combout\ & ((!\top_inst|alu_inst|Mux1~0_combout\) # ((!xReg(1) & 
-- !xReg(2))))) ) ) ) # ( !\top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\ & ( \top_inst|alu_inst|AddSub_inst|FAN:1:FA_i_instance|s~combout\ & ( (\top_inst|alu_inst|Mux1~1_combout\ & !\top_inst|alu_inst|Mux1~0_combout\) ) ) ) # ( 
-- \top_inst|alu_inst|Shift_inst|horiz[0][1]~4_combout\ & ( !\top_inst|alu_inst|AddSub_inst|FAN:1:FA_i_instance|s~combout\ & ( (!xReg(1) & (\top_inst|alu_inst|Mux1~1_combout\ & (\top_inst|alu_inst|Mux1~0_combout\ & !xReg(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000110000001100000011001000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xReg(1),
	datab => \top_inst|alu_inst|ALT_INV_Mux1~1_combout\,
	datac => \top_inst|alu_inst|ALT_INV_Mux1~0_combout\,
	datad => ALT_INV_xReg(2),
	datae => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][1]~4_combout\,
	dataf => \top_inst|alu_inst|AddSub_inst|FAN:1:FA_i_instance|ALT_INV_s~combout\,
	combout => \top_inst|alu_inst|Mux6~1_combout\);

-- Location: LABCELL_X74_Y3_N30
\top_inst|z_flag_o~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|z_flag_o~1_combout\ = ( !\top_inst|alu_inst|Mux4~0_combout\ & ( !\top_inst|alu_inst|Mux6~1_combout\ & ( (!\top_inst|alu_inst|Mux6~0_combout\ & (!\top_inst|alu_inst|Mux5~2_combout\ & (!\top_inst|alu_inst|Mux4~2_combout\ & 
-- \top_inst|z_flag_o~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|ALT_INV_Mux6~0_combout\,
	datab => \top_inst|alu_inst|ALT_INV_Mux5~2_combout\,
	datac => \top_inst|alu_inst|ALT_INV_Mux4~2_combout\,
	datad => \top_inst|ALT_INV_z_flag_o~0_combout\,
	datae => \top_inst|alu_inst|ALT_INV_Mux4~0_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux6~1_combout\,
	combout => \top_inst|z_flag_o~1_combout\);

-- Location: LABCELL_X74_Y3_N6
\top_inst|z_flag_o~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|z_flag_o~2_combout\ = ( !\top_inst|alu_inst|Mux0~1_combout\ & ( !\top_inst|alu_inst|Mux0~5_combout\ & ( (\top_inst|alu_inst|Mux1~8_combout\ & (\top_inst|alu_inst|Mux3~6_combout\ & (\top_inst|alu_inst|Mux2~6_combout\ & 
-- \top_inst|z_flag_o~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|ALT_INV_Mux1~8_combout\,
	datab => \top_inst|alu_inst|ALT_INV_Mux3~6_combout\,
	datac => \top_inst|alu_inst|ALT_INV_Mux2~6_combout\,
	datad => \top_inst|ALT_INV_z_flag_o~1_combout\,
	datae => \top_inst|alu_inst|ALT_INV_Mux0~1_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux0~5_combout\,
	combout => \top_inst|z_flag_o~2_combout\);

-- Location: LABCELL_X71_Y4_N51
\top_inst|alu_inst|Shift_inst|horiz[0][8]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Shift_inst|horiz[0][8]~13_combout\ = ( xReg(0) & ( (!alufnReg(0) & (yReg(7))) # (alufnReg(0) & ((yReg(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_yReg(7),
	datac => ALT_INV_yReg(0),
	datad => ALT_INV_alufnReg(0),
	dataf => ALT_INV_xReg(0),
	combout => \top_inst|alu_inst|Shift_inst|horiz[0][8]~13_combout\);

-- Location: LABCELL_X74_Y4_N3
\top_inst|alu_inst|Shift_inst|cout~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Shift_inst|cout~0_combout\ = ( \top_inst|alu_inst|Shift_inst|horiz[0][8]~13_combout\ & ( \top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( (!xReg(2) & (((!xReg(1))) # (\top_inst|alu_inst|Shift_inst|horiz[0][6]~10_combout\))) # 
-- (xReg(2) & (((\top_inst|alu_inst|Shift_inst|horiz[0][4]~7_combout\) # (xReg(1))))) ) ) ) # ( !\top_inst|alu_inst|Shift_inst|horiz[0][8]~13_combout\ & ( \top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( (!xReg(2) & 
-- (\top_inst|alu_inst|Shift_inst|horiz[0][6]~10_combout\ & (xReg(1)))) # (xReg(2) & (((\top_inst|alu_inst|Shift_inst|horiz[0][4]~7_combout\) # (xReg(1))))) ) ) ) # ( \top_inst|alu_inst|Shift_inst|horiz[0][8]~13_combout\ & ( 
-- !\top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( (!xReg(2) & (((!xReg(1))) # (\top_inst|alu_inst|Shift_inst|horiz[0][6]~10_combout\))) # (xReg(2) & (((!xReg(1) & \top_inst|alu_inst|Shift_inst|horiz[0][4]~7_combout\)))) ) ) ) # ( 
-- !\top_inst|alu_inst|Shift_inst|horiz[0][8]~13_combout\ & ( !\top_inst|alu_inst|Shift_inst|horiz[0][2]~6_combout\ & ( (!xReg(2) & (\top_inst|alu_inst|Shift_inst|horiz[0][6]~10_combout\ & (xReg(1)))) # (xReg(2) & (((!xReg(1) & 
-- \top_inst|alu_inst|Shift_inst|horiz[0][4]~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010010101000101111001000000111010101111010011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_xReg(2),
	datab => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][6]~10_combout\,
	datac => ALT_INV_xReg(1),
	datad => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][4]~7_combout\,
	datae => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][8]~13_combout\,
	dataf => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[0][2]~6_combout\,
	combout => \top_inst|alu_inst|Shift_inst|cout~0_combout\);

-- Location: LABCELL_X73_Y3_N12
\top_inst|alu_inst|internalCarry~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|internalCarry~1_combout\ = (!alufnReg(2) & (alufnReg(4) & (\top_inst|alu_inst|Shift_inst|cout~0_combout\ & \top_inst|alu_inst|internalCarry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(2),
	datab => ALT_INV_alufnReg(4),
	datac => \top_inst|alu_inst|Shift_inst|ALT_INV_cout~0_combout\,
	datad => \top_inst|alu_inst|ALT_INV_internalCarry~0_combout\,
	combout => \top_inst|alu_inst|internalCarry~1_combout\);

-- Location: LABCELL_X73_Y3_N15
\top_inst|alu_inst|Cflag_o~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Cflag_o~0_combout\ = ( alufnReg(3) & ( (!alufnReg(2) & (!alufnReg(4) & ((!alufnReg(0)) # (!alufnReg(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_alufnReg(2),
	datab => ALT_INV_alufnReg(4),
	datac => ALT_INV_alufnReg(0),
	datad => ALT_INV_alufnReg(1),
	dataf => ALT_INV_alufnReg(3),
	combout => \top_inst|alu_inst|Cflag_o~0_combout\);

-- Location: LABCELL_X74_Y3_N12
\top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~2_combout\ = ( \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ & ( (!\top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\ & 
-- \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\) ) ) # ( !\top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~2_combout\ & ( (!\top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~0_combout\ & 
-- ((!\top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|cout~0_combout\) # (\top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000001100110011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~0_combout\,
	datac => \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~1_combout\,
	datad => \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~0_combout\,
	dataf => \top_inst|alu_inst|AddSub_inst|FAN:5:FA_i_instance|ALT_INV_cout~2_combout\,
	combout => \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~2_combout\);

-- Location: LABCELL_X73_Y3_N18
\top_inst|alu_inst|Cflag_o~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|alu_inst|Cflag_o~1_combout\ = ( xReg(7) & ( \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~2_combout\ & ( ((\top_inst|alu_inst|yAdd[7]~0_combout\ & (!\top_inst|alu_inst|negAdd~0_combout\ & \top_inst|alu_inst|Cflag_o~0_combout\))) # 
-- (\top_inst|alu_inst|internalCarry~1_combout\) ) ) ) # ( !xReg(7) & ( \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~2_combout\ & ( ((\top_inst|alu_inst|yAdd[7]~0_combout\ & (\top_inst|alu_inst|negAdd~0_combout\ & 
-- \top_inst|alu_inst|Cflag_o~0_combout\))) # (\top_inst|alu_inst|internalCarry~1_combout\) ) ) ) # ( xReg(7) & ( !\top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~2_combout\ & ( ((\top_inst|alu_inst|Cflag_o~0_combout\ & 
-- ((!\top_inst|alu_inst|negAdd~0_combout\) # (\top_inst|alu_inst|yAdd[7]~0_combout\)))) # (\top_inst|alu_inst|internalCarry~1_combout\) ) ) ) # ( !xReg(7) & ( !\top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|cout~2_combout\ & ( 
-- ((\top_inst|alu_inst|Cflag_o~0_combout\ & ((\top_inst|alu_inst|negAdd~0_combout\) # (\top_inst|alu_inst|yAdd[7]~0_combout\)))) # (\top_inst|alu_inst|internalCarry~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101111111001100111111011100110011001101110011001101110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|ALT_INV_yAdd[7]~0_combout\,
	datab => \top_inst|alu_inst|ALT_INV_internalCarry~1_combout\,
	datac => \top_inst|alu_inst|ALT_INV_negAdd~0_combout\,
	datad => \top_inst|alu_inst|ALT_INV_Cflag_o~0_combout\,
	datae => ALT_INV_xReg(7),
	dataf => \top_inst|alu_inst|AddSub_inst|FAN:6:FA_i_instance|ALT_INV_cout~2_combout\,
	combout => \top_inst|alu_inst|Cflag_o~1_combout\);

-- Location: LABCELL_X74_Y3_N45
\top_inst|n_flag_o~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|n_flag_o~0_combout\ = ( \top_inst|alu_inst|Mux0~5_combout\ & ( !\top_inst|Equal0~0_combout\ ) ) # ( !\top_inst|alu_inst|Mux0~5_combout\ & ( (\top_inst|alu_inst|Mux0~1_combout\ & !\top_inst|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|alu_inst|ALT_INV_Mux0~1_combout\,
	datad => \top_inst|ALT_INV_Equal0~0_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux0~5_combout\,
	combout => \top_inst|n_flag_o~0_combout\);

-- Location: LABCELL_X75_Y4_N42
\top_inst|aluRes_o[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|aluRes_o[0]~0_combout\ = ( \top_inst|alu_inst|internalCarry~0_combout\ & ( \top_inst|alu_inst|Mux7~1_combout\ & ( (!\top_inst|Equal0~0_combout\ & ((\top_inst|alu_inst|Mux7~0_combout\) # (\top_inst|alu_inst|Mux0~6_combout\))) ) ) ) # ( 
-- !\top_inst|alu_inst|internalCarry~0_combout\ & ( \top_inst|alu_inst|Mux7~1_combout\ & ( (!\top_inst|Equal0~0_combout\ & ((\top_inst|alu_inst|Mux7~0_combout\) # (\top_inst|alu_inst|Mux0~6_combout\))) ) ) ) # ( \top_inst|alu_inst|internalCarry~0_combout\ & 
-- ( !\top_inst|alu_inst|Mux7~1_combout\ & ( (!\top_inst|Equal0~0_combout\ & (((\top_inst|alu_inst|Mux0~6_combout\ & \top_inst|alu_inst|Shift_inst|horiz[2][7]~5_combout\)) # (\top_inst|alu_inst|Mux7~0_combout\))) ) ) ) # ( 
-- !\top_inst|alu_inst|internalCarry~0_combout\ & ( !\top_inst|alu_inst|Mux7~1_combout\ & ( (!\top_inst|Equal0~0_combout\ & \top_inst|alu_inst|Mux7~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000101010101000100010101010100010001010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|ALT_INV_Equal0~0_combout\,
	datab => \top_inst|alu_inst|ALT_INV_Mux0~6_combout\,
	datac => \top_inst|alu_inst|Shift_inst|ALT_INV_horiz[2][7]~5_combout\,
	datad => \top_inst|alu_inst|ALT_INV_Mux7~0_combout\,
	datae => \top_inst|alu_inst|ALT_INV_internalCarry~0_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux7~1_combout\,
	combout => \top_inst|aluRes_o[0]~0_combout\);

-- Location: LABCELL_X74_Y3_N15
\top_inst|aluRes_o[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|aluRes_o[1]~1_combout\ = ( \top_inst|alu_inst|Mux6~1_combout\ & ( !\top_inst|Equal0~0_combout\ ) ) # ( !\top_inst|alu_inst|Mux6~1_combout\ & ( (!\top_inst|Equal0~0_combout\ & \top_inst|alu_inst|Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|ALT_INV_Equal0~0_combout\,
	datad => \top_inst|alu_inst|ALT_INV_Mux6~0_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux6~1_combout\,
	combout => \top_inst|aluRes_o[1]~1_combout\);

-- Location: LABCELL_X75_Y4_N21
\top_inst|aluRes_o[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|aluRes_o[2]~2_combout\ = ( !\top_inst|Equal0~0_combout\ & ( \top_inst|alu_inst|Mux5~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|ALT_INV_Mux5~2_combout\,
	dataf => \top_inst|ALT_INV_Equal0~0_combout\,
	combout => \top_inst|aluRes_o[2]~2_combout\);

-- Location: LABCELL_X74_Y3_N51
\top_inst|aluRes_o[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|aluRes_o[3]~3_combout\ = ( \top_inst|alu_inst|Mux4~0_combout\ & ( !\top_inst|Equal0~0_combout\ ) ) # ( !\top_inst|alu_inst|Mux4~0_combout\ & ( (!\top_inst|Equal0~0_combout\ & \top_inst|alu_inst|Mux4~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|ALT_INV_Equal0~0_combout\,
	datad => \top_inst|alu_inst|ALT_INV_Mux4~2_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux4~0_combout\,
	combout => \top_inst|aluRes_o[3]~3_combout\);

-- Location: LABCELL_X74_Y3_N18
\top_inst|aluRes_o[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|aluRes_o[4]~4_combout\ = ( \top_inst|alu_inst|Mux3~0_combout\ & ( \top_inst|alu_inst|Mux3~1_combout\ & ( (!\top_inst|Equal0~0_combout\ & ((\top_inst|alu_inst|Mux3~5_combout\) # (\top_inst|alu_inst|Mux0~0_combout\))) ) ) ) # ( 
-- !\top_inst|alu_inst|Mux3~0_combout\ & ( \top_inst|alu_inst|Mux3~1_combout\ & ( (!\top_inst|Equal0~0_combout\ & (((!\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~2_combout\ & \top_inst|alu_inst|Mux0~0_combout\)) # 
-- (\top_inst|alu_inst|Mux3~5_combout\))) ) ) ) # ( \top_inst|alu_inst|Mux3~0_combout\ & ( !\top_inst|alu_inst|Mux3~1_combout\ & ( (!\top_inst|Equal0~0_combout\ & (((\top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|cout~2_combout\ & 
-- \top_inst|alu_inst|Mux0~0_combout\)) # (\top_inst|alu_inst|Mux3~5_combout\))) ) ) ) # ( !\top_inst|alu_inst|Mux3~0_combout\ & ( !\top_inst|alu_inst|Mux3~1_combout\ & ( (!\top_inst|Equal0~0_combout\ & \top_inst|alu_inst|Mux3~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000100001111000000100000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|alu_inst|AddSub_inst|FAN:3:FA_i_instance|ALT_INV_cout~2_combout\,
	datab => \top_inst|alu_inst|ALT_INV_Mux0~0_combout\,
	datac => \top_inst|ALT_INV_Equal0~0_combout\,
	datad => \top_inst|alu_inst|ALT_INV_Mux3~5_combout\,
	datae => \top_inst|alu_inst|ALT_INV_Mux3~0_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux3~1_combout\,
	combout => \top_inst|aluRes_o[4]~4_combout\);

-- Location: LABCELL_X74_Y3_N24
\top_inst|aluRes_o[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|aluRes_o[5]~5_combout\ = ( \top_inst|alu_inst|Mux2~1_combout\ & ( \top_inst|alu_inst|Mux2~5_combout\ & ( !\top_inst|Equal0~0_combout\ ) ) ) # ( !\top_inst|alu_inst|Mux2~1_combout\ & ( \top_inst|alu_inst|Mux2~5_combout\ & ( 
-- !\top_inst|Equal0~0_combout\ ) ) ) # ( \top_inst|alu_inst|Mux2~1_combout\ & ( !\top_inst|alu_inst|Mux2~5_combout\ & ( (!\top_inst|Equal0~0_combout\ & (\top_inst|alu_inst|Mux0~0_combout\ & 
-- ((!\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~2_combout\) # (\top_inst|alu_inst|Mux2~0_combout\)))) ) ) ) # ( !\top_inst|alu_inst|Mux2~1_combout\ & ( !\top_inst|alu_inst|Mux2~5_combout\ & ( (!\top_inst|Equal0~0_combout\ & 
-- (\top_inst|alu_inst|Mux0~0_combout\ & (\top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|cout~2_combout\ & \top_inst|alu_inst|Mux2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010001000000010001010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \top_inst|ALT_INV_Equal0~0_combout\,
	datab => \top_inst|alu_inst|ALT_INV_Mux0~0_combout\,
	datac => \top_inst|alu_inst|AddSub_inst|FAN:4:FA_i_instance|ALT_INV_cout~2_combout\,
	datad => \top_inst|alu_inst|ALT_INV_Mux2~0_combout\,
	datae => \top_inst|alu_inst|ALT_INV_Mux2~1_combout\,
	dataf => \top_inst|alu_inst|ALT_INV_Mux2~5_combout\,
	combout => \top_inst|aluRes_o[5]~5_combout\);

-- Location: MLABCELL_X72_Y3_N3
\top_inst|aluRes_o[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \top_inst|aluRes_o[6]~6_combout\ = ( !\top_inst|Equal0~0_combout\ & ( !\top_inst|alu_inst|Mux1~8_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \top_inst|alu_inst|ALT_INV_Mux1~8_combout\,
	dataf => \top_inst|ALT_INV_Equal0~0_combout\,
	combout => \top_inst|aluRes_o[6]~6_combout\);

-- Location: LABCELL_X22_Y40_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;



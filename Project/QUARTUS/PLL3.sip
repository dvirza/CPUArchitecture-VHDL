set_global_assignment -entity "PLL3" -library "lib_PLL3" -name IP_TOOL_NAME "altera_pll_reconfig"
set_global_assignment -entity "PLL3" -library "lib_PLL3" -name IP_TOOL_VERSION "21.1"
set_global_assignment -entity "PLL3" -library "lib_PLL3" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_PLL3" -name SPD_FILE [file join $::quartus(sip_path) "PLL3.spd"]

set_global_assignment -library "lib_PLL3" -name MISC_FILE [file join $::quartus(sip_path) "PLL3_sim/PLL3.vhd"]
set_global_assignment -library "lib_PLL3" -name MISC_FILE [file join $::quartus(sip_path) "PLL3_sim/altera_pll_reconfig/altera_pll_reconfig_top.v"]
set_global_assignment -library "lib_PLL3" -name MISC_FILE [file join $::quartus(sip_path) "PLL3_sim/altera_pll_reconfig/altera_pll_reconfig_core.v"]
set_global_assignment -library "lib_PLL3" -name MISC_FILE [file join $::quartus(sip_path) "PLL3_sim/altera_pll_reconfig/altera_std_synchronizer.v"]

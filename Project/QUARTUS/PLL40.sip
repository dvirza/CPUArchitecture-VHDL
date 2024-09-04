set_global_assignment -entity "PLL40" -library "lib_PLL40" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "PLL40" -library "lib_PLL40" -name IP_TOOL_VERSION "21.1"
set_global_assignment -entity "PLL40" -library "lib_PLL40" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_PLL40" -name SPD_FILE [file join $::quartus(sip_path) "PLL40.spd"]

set_global_assignment -library "lib_PLL40" -name MISC_FILE [file join $::quartus(sip_path) "PLL40_sim/PLL40.vho"]

set_property IOSTANDARD LVCMOS33 [get_ports sonar_echo_0]
set_property PACKAGE_PIN W14 [get_ports sonar_echo_0]
set_property PACKAGE_PIN Y14 [get_ports sonar_trig_0]
set_property IOSTANDARD LVCMOS33 [get_ports sonar_trig_0]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]

set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports sonar_echo]
set_property IOSTANDARD LVCMOS33 [get_ports sonar_trig]
set_property PACKAGE_PIN W14 [get_ports sonar_echo]
set_property PACKAGE_PIN Y14 [get_ports sonar_trig]
set_property PACKAGE_PIN H16 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports {centimeter[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {centimeter[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {centimeter[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {centimeter[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {centimeter[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {centimeter[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {centimeter[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {centimeter[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {centimeter[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {centimeter[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {centimeter[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {centimeter[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {centimeter[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {centimeter[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {centimeter[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {centimeter[0]}]

# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\DevWorks\SOC_HCSR04_AXI\Vitis\SOC_HCSR04_AXI_2Sensor_app_system\_ide\scripts\debugger_soc_hcsr04_axi_2sensor_app-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\DevWorks\SOC_HCSR04_AXI\Vitis\SOC_HCSR04_AXI_2Sensor_app_system\_ide\scripts\debugger_soc_hcsr04_axi_2sensor_app-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx HW-FTDI-TEST FT2232H 1234-tulA" && level==0 && jtag_device_ctx=="jsn-HW-FTDI-TEST FT2232H-1234-tulA-23727093-0"}
fpga -file C:/DevWorks/SOC_HCSR04_AXI/Vitis/SOC_HCSR04_AXI_2Sensor_app/_ide/bitstream/SOC_HCSR04_AXI_2Sensor.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/DevWorks/SOC_HCSR04_AXI/Vitis/SOC_HCSR04_AXI_2Sensor/export/SOC_HCSR04_AXI_2Sensor/hw/SOC_HCSR04_AXI_2Sensor.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/DevWorks/SOC_HCSR04_AXI/Vitis/SOC_HCSR04_AXI_2Sensor_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/DevWorks/SOC_HCSR04_AXI/Vitis/SOC_HCSR04_AXI_2Sensor_app/Debug/SOC_HCSR04_AXI_2Sensor_app.elf
configparams force-mem-access 0
bpadd -addr &main

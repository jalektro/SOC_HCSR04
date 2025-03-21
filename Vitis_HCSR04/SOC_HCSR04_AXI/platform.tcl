# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\DevWorks\SOC_HCSR04_AXI\Vitis\SOC_HCSR04_AXI\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\DevWorks\SOC_HCSR04_AXI\Vitis\SOC_HCSR04_AXI\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {SOC_HCSR04_AXI}\
-hw {C:\DevWorks\SOC_HCSR04_AXI\SOC_HCSR04_AXI.xsa}\
-out {C:/DevWorks/SOC_HCSR04_AXI/Vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {SOC_HCSR04_AXI}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform clean
platform generate
platform active {SOC_HCSR04_AXI}
platform config -updatehw {C:/DevWorks/SOC_HCSR04_AXI/SOC_HCSR04_AXI.xsa}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 

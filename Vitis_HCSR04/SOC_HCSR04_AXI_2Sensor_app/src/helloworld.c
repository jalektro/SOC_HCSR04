/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "SOC_HCSR04_AXI_Core.h"
#include "sleep.h"


int main()
{
    init_platform();
    unsigned int distance_left=0;
    unsigned int distance_right=0;
    print("Hello Vincent\n\r");
    print("Distance from ultrasonic sensor HC-SR04");

    for(;;){
    	distance_right = SOC_HCSR04_AXI_CORE_mReadReg(XPAR_SOC_HCSR04_AXI_CORE_0_S00_AXI_BASEADDR,SOC_HCSR04_AXI_CORE_S00_AXI_SLV_REG2_OFFSET);
    	printf("distance Right: %d cm\n\r",(int) distance_right);
    	distance_left = SOC_HCSR04_AXI_CORE_mReadReg(XPAR_SOC_HCSR04_AXI_CORE_1_S00_AXI_BASEADDR,SOC_HCSR04_AXI_CORE_S00_AXI_SLV_REG2_OFFSET);
    	printf("distance left: %d cm\n\r",(int) distance_left);
    	sleep_A9(1);
    }
    cleanup_platform();
    return 0;
}


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
#include "xil_io.h"
#include "SOC_HCSR04_AXI_Core.h"
#include "sleep.h"


int main()
{
    init_platform();
    unsigned int value=0;
    print("Hello Vincent\n\r");
    print("Distance from ultrasonic sensor HC-SR04");

    for(;;){
    	value = SOC_HCSR04_AXI_CORE_mReadReg(XPAR_SOC_HCSR04_AXI_CORE_0_S00_AXI_BASEADDR,SOC_HCSR04_AXI_CORE_S00_AXI_SLV_REG2_OFFSET);
    	printf("distance: %d cm\n\r",(int) value);
    	sleep_A9(1);
    }
    cleanup_platform();
    return 0;
}

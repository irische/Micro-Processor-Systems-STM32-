   1              		.cpu cortex-m7
   2              		.eabi_attribute 28, 1
   3              		.eabi_attribute 20, 1
   4              		.eabi_attribute 21, 1
   5              		.eabi_attribute 23, 3
   6              		.eabi_attribute 24, 1
   7              		.eabi_attribute 25, 1
   8              		.eabi_attribute 26, 1
   9              		.eabi_attribute 30, 1
  10              		.eabi_attribute 34, 1
  11              		.eabi_attribute 18, 4
  12              		.file	"init.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.SystemClock_Config,"ax",%progbits
  17              		.align	1
  18              		.global	SystemClock_Config
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv5-d16
  24              	SystemClock_Config:
  25              	.LFB138:
  26              		.file 1 "../src/init.c"
   1:../src/init.c **** #include "init.h"
   2:../src/init.c **** 
   3:../src/init.c **** /**
   4:../src/init.c ****   * @brief  System Clock Configuration
   5:../src/init.c ****   *         The system Clock is configured as follow :
   6:../src/init.c ****   *            System Clock source            = PLL (HSE)
   7:../src/init.c ****   *            SYSCLK(Hz)                     = 216000000
   8:../src/init.c ****   *            HCLK(Hz)                       = 216000000
   9:../src/init.c ****   *            AHB Prescaler                  = 1
  10:../src/init.c ****   *            APB1 Prescaler                 = 4
  11:../src/init.c ****   *            APB2 Prescaler                 = 2
  12:../src/init.c ****   *            HSE Frequency(Hz)              = 25000000
  13:../src/init.c ****   *            PLL_M                          = 25
  14:../src/init.c ****   *            PLL_N                          = 432
  15:../src/init.c ****   *            PLL_P                          = 2
  16:../src/init.c ****   *            PLL_Q                          = 9
  17:../src/init.c ****   *            PLL_R                          = 7
  18:../src/init.c ****   *            VDD(V)                         = 3.3
  19:../src/init.c ****   *            Main regulator output voltage  = Scale1 mode
  20:../src/init.c ****   *            Flash Latency(WS)              = 7
  21:../src/init.c ****   * @param  None
  22:../src/init.c ****   * @retval None
  23:../src/init.c ****   */
  24:../src/init.c **** void SystemClock_Config(void) {
  27              		.loc 1 24 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 72
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31 0000 00B5     		push	{lr}
  32              		.cfi_def_cfa_offset 4
  33              		.cfi_offset 14, -4
  34 0002 93B0     		sub	sp, sp, #76
  35              		.cfi_def_cfa_offset 80
  36              	.LVL0:
  25:../src/init.c ****   RCC_ClkInitTypeDef RCC_ClkInitStruct;
  26:../src/init.c ****   RCC_OscInitTypeDef RCC_OscInitStruct;
  27:../src/init.c ****   HAL_StatusTypeDef ret = HAL_OK;
  28:../src/init.c **** 
  29:../src/init.c ****   /* Enable HSE Oscillator and activate PLL with HSE as source */
  30:../src/init.c ****   RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  37              		.loc 1 30 0
  38 0004 0123     		movs	r3, #1
  39 0006 0093     		str	r3, [sp]
  31:../src/init.c ****   RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  40              		.loc 1 31 0
  41 0008 4FF48033 		mov	r3, #65536
  42 000c 0193     		str	r3, [sp, #4]
  32:../src/init.c ****   RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  43              		.loc 1 32 0
  44 000e 0223     		movs	r3, #2
  45 0010 0693     		str	r3, [sp, #24]
  33:../src/init.c ****   RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  46              		.loc 1 33 0
  47 0012 4FF48002 		mov	r2, #4194304
  48 0016 0792     		str	r2, [sp, #28]
  34:../src/init.c ****   RCC_OscInitStruct.PLL.PLLM = 25;
  49              		.loc 1 34 0
  50 0018 1922     		movs	r2, #25
  51 001a 0892     		str	r2, [sp, #32]
  35:../src/init.c ****   RCC_OscInitStruct.PLL.PLLN = 432;
  52              		.loc 1 35 0
  53 001c 4FF4D872 		mov	r2, #432
  54 0020 0992     		str	r2, [sp, #36]
  36:../src/init.c ****   RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  55              		.loc 1 36 0
  56 0022 0A93     		str	r3, [sp, #40]
  37:../src/init.c ****   RCC_OscInitStruct.PLL.PLLQ = 9;
  57              		.loc 1 37 0
  58 0024 0923     		movs	r3, #9
  59 0026 0B93     		str	r3, [sp, #44]
  38:../src/init.c ****   RCC_OscInitStruct.PLL.PLLR = 7;
  60              		.loc 1 38 0
  61 0028 0723     		movs	r3, #7
  62 002a 0C93     		str	r3, [sp, #48]
  39:../src/init.c **** 
  40:../src/init.c ****   ret = HAL_RCC_OscConfig(&RCC_OscInitStruct);
  63              		.loc 1 40 0
  64 002c 6846     		mov	r0, sp
  65 002e FFF7FEFF 		bl	HAL_RCC_OscConfig
  66              	.LVL1:
  41:../src/init.c ****   if(ret != HAL_OK) {
  67              		.loc 1 41 0
  68 0032 00B1     		cbz	r0, .L2
  69              	.L3:
  70 0034 FEE7     		b	.L3
  71              	.L2:
  42:../src/init.c ****     while(1) { ; }
  43:../src/init.c ****   }
  44:../src/init.c **** 
  45:../src/init.c ****   /* Activate the OverDrive to reach the 216 MHz Frequency */
  46:../src/init.c ****   ret = HAL_PWREx_EnableOverDrive();
  72              		.loc 1 46 0
  73 0036 FFF7FEFF 		bl	HAL_PWREx_EnableOverDrive
  74              	.LVL2:
  47:../src/init.c ****   if(ret != HAL_OK) {
  75              		.loc 1 47 0
  76 003a 00B1     		cbz	r0, .L4
  77              	.L5:
  78 003c FEE7     		b	.L5
  79              	.L4:
  48:../src/init.c ****     while(1) { ; }
  49:../src/init.c ****   }
  50:../src/init.c **** 
  51:../src/init.c ****   /* Select PLL as system clock source and configure the HCLK, PCLK1 and PCLK2 clocks dividers */
  52:../src/init.c ****   RCC_ClkInitStruct.ClockType = (RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | 
  80              		.loc 1 52 0
  81 003e 0F23     		movs	r3, #15
  82 0040 0D93     		str	r3, [sp, #52]
  53:../src/init.c ****   RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  83              		.loc 1 53 0
  84 0042 0223     		movs	r3, #2
  85 0044 0E93     		str	r3, [sp, #56]
  54:../src/init.c ****   RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  86              		.loc 1 54 0
  87 0046 0023     		movs	r3, #0
  88 0048 0F93     		str	r3, [sp, #60]
  55:../src/init.c ****   RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  89              		.loc 1 55 0
  90 004a 4FF4A053 		mov	r3, #5120
  91 004e 1093     		str	r3, [sp, #64]
  56:../src/init.c ****   RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;
  92              		.loc 1 56 0
  93 0050 4FF48053 		mov	r3, #4096
  94 0054 1193     		str	r3, [sp, #68]
  57:../src/init.c **** 
  58:../src/init.c ****   ret = HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_7);
  95              		.loc 1 58 0
  96 0056 0721     		movs	r1, #7
  97 0058 0DA8     		add	r0, sp, #52
  98              	.LVL3:
  99 005a FFF7FEFF 		bl	HAL_RCC_ClockConfig
 100              	.LVL4:
  59:../src/init.c ****   if(ret != HAL_OK) {
 101              		.loc 1 59 0
 102 005e 00B1     		cbz	r0, .L1
 103              	.L7:
 104 0060 FEE7     		b	.L7
 105              	.L1:
  60:../src/init.c ****     while(1) { ; }
  61:../src/init.c ****   }
  62:../src/init.c **** }
 106              		.loc 1 62 0
 107 0062 13B0     		add	sp, sp, #76
 108              		.cfi_def_cfa_offset 4
 109              		@ sp needed
 110 0064 5DF804FB 		ldr	pc, [sp], #4
 111              		.cfi_endproc
 112              	.LFE138:
 114              		.section	.text.CPU_CACHE_Enable,"ax",%progbits
 115              		.align	1
 116              		.global	CPU_CACHE_Enable
 117              		.syntax unified
 118              		.thumb
 119              		.thumb_func
 120              		.fpu fpv5-d16
 122              	CPU_CACHE_Enable:
 123              	.LFB139:
  63:../src/init.c **** 
  64:../src/init.c **** // Enables CPU Instruction and Data Caches
  65:../src/init.c **** void CPU_CACHE_Enable(void) {
 124              		.loc 1 65 0
 125              		.cfi_startproc
 126              		@ args = 0, pretend = 0, frame = 0
 127              		@ frame_needed = 0, uses_anonymous_args = 0
 128              		@ link register save eliminated.
 129 0000 10B4     		push	{r4}
 130              		.cfi_def_cfa_offset 4
 131              		.cfi_offset 4, -4
 132              	.LBB48:
 133              	.LBB49:
 134              	.LBB50:
 135              	.LBB51:
 136              		.file 2 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h"
   1:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**************************************************************************//**
   2:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  * @file     cmsis_gcc.h
   3:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  * @brief    CMSIS Cortex-M Core Function/Instruction Header File
   4:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  * @version  V4.30
   5:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  * @date     20. October 2015
   6:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  ******************************************************************************/
   7:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /* Copyright (c) 2009 - 2015 ARM LIMITED
   8:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
   9:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    All rights reserved.
  10:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    Redistribution and use in source and binary forms, with or without
  11:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    modification, are permitted provided that the following conditions are met:
  12:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    - Redistributions of source code must retain the above copyright
  13:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****      notice, this list of conditions and the following disclaimer.
  14:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    - Redistributions in binary form must reproduce the above copyright
  15:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****      notice, this list of conditions and the following disclaimer in the
  16:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****      documentation and/or other materials provided with the distribution.
  17:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    - Neither the name of ARM nor the names of its contributors may be used
  18:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****      to endorse or promote products derived from this software without
  19:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****      specific prior written permission.
  20:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    *
  21:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  22:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  23:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  24:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
  25:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  26:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  27:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  28:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  29:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  30:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  31:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    POSSIBILITY OF SUCH DAMAGE.
  32:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    ---------------------------------------------------------------------------*/
  33:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
  34:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
  35:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #ifndef __CMSIS_GCC_H
  36:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #define __CMSIS_GCC_H
  37:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
  38:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /* ignore some GCC warnings */
  39:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #if defined ( __GNUC__ )
  40:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #pragma GCC diagnostic push
  41:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #pragma GCC diagnostic ignored "-Wsign-conversion"
  42:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #pragma GCC diagnostic ignored "-Wconversion"
  43:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #pragma GCC diagnostic ignored "-Wunused-parameter"
  44:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #endif
  45:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
  46:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
  47:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /* ###########################  Core Function Access  ########################### */
  48:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /** \ingroup  CMSIS_Core_FunctionInterface
  49:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****     \defgroup CMSIS_Core_RegAccFunctions CMSIS Core Register Access Functions
  50:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   @{
  51:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
  52:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
  53:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
  54:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Enable IRQ Interrupts
  55:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Enables IRQ interrupts by clearing the I-bit in the CPSR.
  56:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
  57:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
  58:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __enable_irq(void)
  59:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
  60:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("cpsie i" : : : "memory");
  61:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
  62:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
  63:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
  64:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
  65:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Disable IRQ Interrupts
  66:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Disables IRQ interrupts by setting the I-bit in the CPSR.
  67:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   Can only be executed in Privileged modes.
  68:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
  69:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __disable_irq(void)
  70:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
  71:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("cpsid i" : : : "memory");
  72:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
  73:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
  74:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
  75:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
  76:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get Control Register
  77:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the content of the Control Register.
  78:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Control Register value
  79:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
  80:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_CONTROL(void)
  81:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
  82:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
  83:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
  84:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, control" : "=r" (result) );
  85:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
  86:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
  87:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
  88:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
  89:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
  90:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Set Control Register
  91:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Writes the given value to the Control Register.
  92:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    control  Control Register value to set
  93:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
  94:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_CONTROL(uint32_t control)
  95:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
  96:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MSR control, %0" : : "r" (control) : "memory");
  97:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
  98:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
  99:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get IPSR Register
 102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the content of the IPSR Register.
 103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               IPSR Register value
 104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_IPSR(void)
 106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, ipsr" : "=r" (result) );
 110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get APSR Register
 116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the content of the APSR Register.
 117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               APSR Register value
 118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_APSR(void)
 120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, apsr" : "=r" (result) );
 124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get xPSR Register
 130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the content of the xPSR Register.
 131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****     \return               xPSR Register value
 133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_xPSR(void)
 135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, xpsr" : "=r" (result) );
 139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get Process Stack Pointer
 145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the current value of the Process Stack Pointer (PSP).
 146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               PSP Register value
 147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_PSP(void)
 149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   register uint32_t result;
 151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, psp\n"  : "=r" (result) );
 153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Set Process Stack Pointer
 159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Assigns the given value to the Process Stack Pointer (PSP).
 160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    topOfProcStack  Process Stack Pointer value to set
 161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_PSP(uint32_t topOfProcStack)
 163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MSR psp, %0\n" : : "r" (topOfProcStack) : "sp");
 165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get Main Stack Pointer
 170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the current value of the Main Stack Pointer (MSP).
 171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               MSP Register value
 172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_MSP(void)
 174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   register uint32_t result;
 176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, msp\n" : "=r" (result) );
 178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Set Main Stack Pointer
 184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Assigns the given value to the Main Stack Pointer (MSP).
 185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****     \param [in]    topOfMainStack  Main Stack Pointer value to set
 187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_MSP(uint32_t topOfMainStack)
 189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MSR msp, %0\n" : : "r" (topOfMainStack) : "sp");
 191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get Priority Mask
 196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the current state of the priority mask bit from the Priority Mask Register.
 197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Priority Mask value
 198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_PRIMASK(void)
 200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, primask" : "=r" (result) );
 204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Set Priority Mask
 210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Assigns the given value to the Priority Mask Register.
 211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    priMask  Priority Mask
 212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_PRIMASK(uint32_t priMask)
 214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MSR primask, %0" : : "r" (priMask) : "memory");
 216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #if       (__CORTEX_M >= 0x03U)
 220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Enable FIQ
 223:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Enables FIQ interrupts by clearing the F-bit in the CPSR.
 224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
 225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __enable_fault_irq(void)
 227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("cpsie f" : : : "memory");
 229:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Disable FIQ
 234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Disables FIQ interrupts by setting the F-bit in the CPSR.
 235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****            Can only be executed in Privileged modes.
 236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __disable_fault_irq(void)
 238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("cpsid f" : : : "memory");
 240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get Base Priority
 245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the current value of the Base Priority register.
 246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Base Priority register value
 247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_BASEPRI(void)
 249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, basepri" : "=r" (result) );
 253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Set Base Priority
 259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Assigns the given value to the Base Priority register.
 260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    basePri  Base Priority value to set
 261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_BASEPRI(uint32_t value)
 263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MSR basepri, %0" : : "r" (value) : "memory");
 265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Set Base Priority with condition
 270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Assigns the given value to the Base Priority register only if BASEPRI masking is disable
 271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****            or the new value increases the BASEPRI priority level.
 272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    basePri  Base Priority value to set
 273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_BASEPRI_MAX(uint32_t value)
 275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MSR basepri_max, %0" : : "r" (value) : "memory");
 277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 279:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get Fault Mask
 282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the current value of the Fault Mask register.
 283:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Fault Mask register value
 284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_FAULTMASK(void)
 286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MRS %0, faultmask" : "=r" (result) );
 290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 292:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Set Fault Mask
 296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Assigns the given value to the Fault Mask register.
 297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    faultMask  Fault Mask value to set
 298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_FAULTMASK(uint32_t faultMask)
 300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 301:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("MSR faultmask, %0" : : "r" (faultMask) : "memory");
 302:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #endif /* (__CORTEX_M >= 0x03U) */
 305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 306:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #if       (__CORTEX_M == 0x04U) || (__CORTEX_M == 0x07U)
 308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 310:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Get FPSCR
 311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Returns the current value of the Floating Point Status/Control register.
 312:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Floating Point Status/Control register value
 313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE uint32_t __get_FPSCR(void)
 315:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #if (__FPU_PRESENT == 1U) && (__FPU_USED == 1U)
 317:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   /* Empty asm statement works as a scheduling barrier */
 320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("");
 321:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("VMRS %0, fpscr" : "=r" (result) );
 322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("");
 323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 324:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #else
 325:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    return(0);
 326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #endif
 327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 331:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Set FPSCR
 332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Assigns the given value to the Floating Point Status/Control register.
 333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    fpscr  Floating Point Status/Control value to set
 334:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__( ( always_inline ) ) __STATIC_INLINE void __set_FPSCR(uint32_t fpscr)
 336:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #if (__FPU_PRESENT == 1U) && (__FPU_USED == 1U)
 338:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   /* Empty asm statement works as a scheduling barrier */
 339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("");
 340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("VMSR fpscr, %0" : : "r" (fpscr) : "vfpcc");
 341:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("");
 342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #endif
 343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 344:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #endif /* (__CORTEX_M == 0x04U) || (__CORTEX_M == 0x07U) */
 346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 347:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /*@} end of CMSIS_Core_RegAccFunctions */
 350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /* ##########################  Core Instruction Access  ######################### */
 353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /** \defgroup CMSIS_Core_InstructionInterface CMSIS Core Instruction Interface
 354:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   Access to dedicated instructions
 355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   @{
 356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** */
 357:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /* Define macros for porting to both thumb1 and thumb2.
 359:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  * For thumb1, use low register (r0-r7), specified by constraint "l"
 360:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  * Otherwise, use general registers, specified by constraint "r" */
 361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #if defined (__thumb__) && !defined (__thumb2__)
 362:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #define __CMSIS_GCC_OUT_REG(r) "=l" (r)
 363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #define __CMSIS_GCC_USE_REG(r) "l" (r)
 364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #else
 365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #define __CMSIS_GCC_OUT_REG(r) "=r" (r)
 366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #define __CMSIS_GCC_USE_REG(r) "r" (r)
 367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #endif
 368:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   No Operation
 371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details No Operation does nothing. This instruction can be used for code alignment purposes.
 372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE void __NOP(void)
 374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("nop");
 376:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 377:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 378:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 380:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Wait For Interrupt
 381:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Wait For Interrupt is a hint instruction that suspends execution until one of a number o
 382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE void __WFI(void)
 384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("wfi");
 386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 387:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Wait For Event
 391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Wait For Event is a hint instruction that permits the processor to enter
 392:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****     a low-power state until one of a number of events occurs.
 393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE void __WFE(void)
 395:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 396:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("wfe");
 397:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 400:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Send Event
 402:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Send Event is a hint instruction. It causes an event to be signaled to the CPU.
 403:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE void __SEV(void)
 405:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 406:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("sev");
 407:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Instruction Synchronization Barrier
 412:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Instruction Synchronization Barrier flushes the pipeline in the processor,
 413:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****            so that all instructions following the ISB are fetched from cache or memory,
 414:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****            after the instruction has been completed.
 415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 416:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE void __ISB(void)
 417:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("isb 0xF":::"memory");
 419:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 423:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Data Synchronization Barrier
 424:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Acts as a special kind of Data Memory Barrier.
 425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****            It completes when all explicit memory accesses before this instruction complete.
 426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 427:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE void __DSB(void)
 428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("dsb 0xF":::"memory");
 137              		.loc 2 429 0
 138              		.syntax unified
 139              	@ 429 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 140 0002 BFF34F8F 		dsb 0xF
 141              	@ 0 "" 2
 142              		.thumb
 143              		.syntax unified
 144              	.LBE51:
 145              	.LBE50:
 146              	.LBB52:
 147              	.LBB53:
 418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 148              		.loc 2 418 0
 149              		.syntax unified
 150              	@ 418 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 151 0006 BFF36F8F 		isb 0xF
 152              	@ 0 "" 2
 153              		.thumb
 154              		.syntax unified
 155              	.LBE53:
 156              	.LBE52:
 157              		.file 3 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h"
   1:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**************************************************************************//**
   2:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  * @file     core_cm7.h
   3:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  * @brief    CMSIS Cortex-M7 Core Peripheral Access Layer Header File
   4:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  * @version  V4.30
   5:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  * @date     20. October 2015
   6:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
   7:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* Copyright (c) 2009 - 2015 ARM LIMITED
   8:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
   9:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    All rights reserved.
  10:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    Redistribution and use in source and binary forms, with or without
  11:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    modification, are permitted provided that the following conditions are met:
  12:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    - Redistributions of source code must retain the above copyright
  13:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****      notice, this list of conditions and the following disclaimer.
  14:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    - Redistributions in binary form must reproduce the above copyright
  15:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****      notice, this list of conditions and the following disclaimer in the
  16:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****      documentation and/or other materials provided with the distribution.
  17:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    - Neither the name of ARM nor the names of its contributors may be used
  18:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****      to endorse or promote products derived from this software without
  19:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****      specific prior written permission.
  20:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    *
  21:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  22:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  23:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
  24:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    ARE DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS AND CONTRIBUTORS BE
  25:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  26:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  27:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  28:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  29:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  30:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  31:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    POSSIBILITY OF SUCH DAMAGE.
  32:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    ---------------------------------------------------------------------------*/
  33:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
  34:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
  35:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #if   defined ( __ICCARM__ )
  36:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  #pragma system_include         /* treat file as system include file for MISRA check */
  37:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #elif defined(__ARMCC_VERSION) && (__ARMCC_VERSION >= 6010050)
  38:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #pragma clang system_header   /* treat file as system include file */
  39:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #endif
  40:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
  41:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #ifndef __CORE_CM7_H_GENERIC
  42:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define __CORE_CM7_H_GENERIC
  43:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
  44:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #include <stdint.h>
  45:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
  46:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
  47:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  extern "C" {
  48:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #endif
  49:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
  50:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
  51:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \page CMSIS_MISRA_Exceptions  MISRA-C:2004 Compliance Exceptions
  52:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   CMSIS violates the following MISRA-C:2004 rules:
  53:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
  54:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    \li Required Rule 8.5, object/function definition in header file.<br>
  55:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****      Function definitions in header files are used to allow 'inlining'.
  56:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
  57:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    \li Required Rule 18.4, declaration of union type or object of union type: '{...}'.<br>
  58:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****      Unions are used for effective representation of core registers.
  59:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
  60:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    \li Advisory Rule 19.7, Function-like macro defined.<br>
  61:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****      Function-like macros are used to allow more efficient code.
  62:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
  63:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
  64:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
  65:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*******************************************************************************
  66:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  *                 CMSIS definitions
  67:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
  68:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
  69:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \ingroup Cortex_M7
  70:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   @{
  71:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
  72:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
  73:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*  CMSIS CM7 definitions */
  74:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define __CM7_CMSIS_VERSION_MAIN  (0x04U)                                      /*!< [31:16] CMSIS H
  75:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define __CM7_CMSIS_VERSION_SUB   (0x1EU)                                      /*!< [15:0]  CMSIS H
  76:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define __CM7_CMSIS_VERSION       ((__CM7_CMSIS_VERSION_MAIN << 16U) | \
  77:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****                                     __CM7_CMSIS_VERSION_SUB           )        /*!< CMSIS HAL versi
  78:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
  79:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define __CORTEX_M                (0x07U)                                      /*!< Cortex-M Core *
  80:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
  81:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
  82:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #if   defined ( __CC_ARM )
  83:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for ARM Comp
  84:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __INLINE         __inline                                   /*!< inline keyword for ARM C
  85:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static __inline
  86:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
  87:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #elif defined(__ARMCC_VERSION) && (__ARMCC_VERSION >= 6010050)
  88:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for ARM Comp
  89:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __INLINE         __inline                                   /*!< inline keyword for ARM C
  90:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static __inline
  91:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
  92:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #elif defined ( __GNUC__ )
  93:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for GNU Comp
  94:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                     /*!< inline keyword for GNU C
  95:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
  96:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
  97:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #elif defined ( __ICCARM__ )
  98:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for IAR Comp
  99:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                     /*!< inline keyword for IAR C
 100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
 101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #elif defined ( __TMS470__ )
 103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for TI CCS C
 104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
 105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #elif defined ( __TASKING__ )
 107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __ASM            __asm                                      /*!< asm keyword for TASKING 
 108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                     /*!< inline keyword for TASKI
 109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
 110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #elif defined ( __CSMC__ )
 112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __packed
 113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __ASM            _asm                                      /*!< asm keyword for COSMIC Co
 114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __INLINE         inline                                    /*!< inline keyword for COSMIC
 115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define __STATIC_INLINE  static inline
 116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #else
 118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #error Unknown compiler
 119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #endif
 120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /** __FPU_USED indicates whether an FPU is used or not.
 122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     For this, __FPU_PRESENT has to be checked prior to making use of FPU specific registers and fun
 123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** */
 124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #if defined ( __CC_ARM )
 125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #if defined __TARGET_FPU_VFP
 126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1U)
 127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1U
 128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #else
 129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
 130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0U
 131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #endif
 132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #else
 133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0U
 134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #endif
 135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #elif defined(__ARMCC_VERSION) && (__ARMCC_VERSION >= 6010050)
 137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #if defined __ARM_PCS_VFP
 138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1)
 139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1U
 140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #else
 141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #warning "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESEN
 142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0U
 143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #endif
 144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #else
 145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0U
 146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #endif
 147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #elif defined ( __GNUC__ )
 149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #if defined (__VFP_FP__) && !defined(__SOFTFP__)
 150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1U)
 151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1U
 152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #else
 153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
 154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0U
 155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #endif
 156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #else
 157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0U
 158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #endif
 159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #elif defined ( __ICCARM__ )
 161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #if defined __ARMVFP__
 162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1U)
 163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1U
 164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #else
 165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
 166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0U
 167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #endif
 168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #else
 169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0U
 170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #endif
 171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #elif defined ( __TMS470__ )
 173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #if defined __TI_VFP_SUPPORT__
 174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1U)
 175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1U
 176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #else
 177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
 178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0U
 179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #endif
 180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #else
 181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0U
 182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #endif
 183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #elif defined ( __TASKING__ )
 185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #if defined __FPU_VFP__
 186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1U)
 187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1U
 188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #else
 189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
 190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0U
 191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #endif
 192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #else
 193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0U
 194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #endif
 195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #elif defined ( __CSMC__ )
 197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #if ( __CSMC__ & 0x400U)
 198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #if (__FPU_PRESENT == 1U)
 199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       1U
 200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #else
 201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #error "Compiler generates FPU instructions for a device without an FPU (check __FPU_PRESENT)
 202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       #define __FPU_USED       0U
 203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #endif
 204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #else
 205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #define __FPU_USED         0U
 206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #endif
 207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #endif
 209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #include "core_cmInstr.h"                /* Core Instruction Access */
 211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #include "core_cmFunc.h"                 /* Core Function Access */
 212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #include "core_cmSimd.h"                 /* Compiler specific SIMD Intrinsics */
 213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
 215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** }
 216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #endif
 217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #endif /* __CORE_CM7_H_GENERIC */
 219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #ifndef __CMSIS_GENERIC
 221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #ifndef __CORE_CM7_H_DEPENDANT
 223:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define __CORE_CM7_H_DEPENDANT
 224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
 226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  extern "C" {
 227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #endif
 228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 229:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* check device defines and use defaults */
 230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #if defined __CHECK_DEVICE_DEFINES
 231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #ifndef __CM7_REV
 232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #define __CM7_REV               0x0000U
 233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #warning "__CM7_REV not defined in device header file; using default!"
 234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #endif
 235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #ifndef __FPU_PRESENT
 237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #define __FPU_PRESENT             0U
 238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #warning "__FPU_PRESENT not defined in device header file; using default!"
 239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #endif
 240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #ifndef __MPU_PRESENT
 242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #define __MPU_PRESENT             0U
 243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #warning "__MPU_PRESENT not defined in device header file; using default!"
 244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #endif
 245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #ifndef __ICACHE_PRESENT
 247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #define __ICACHE_PRESENT          0U
 248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #warning "__ICACHE_PRESENT not defined in device header file; using default!"
 249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #endif
 250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #ifndef __DCACHE_PRESENT
 252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #define __DCACHE_PRESENT          0U
 253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #warning "__DCACHE_PRESENT not defined in device header file; using default!"
 254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #endif
 255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #ifndef __DTCM_PRESENT
 257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #define __DTCM_PRESENT            0U
 258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #warning "__DTCM_PRESENT        not defined in device header file; using default!"
 259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #endif
 260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #ifndef __NVIC_PRIO_BITS
 262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #define __NVIC_PRIO_BITS          3U
 263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #warning "__NVIC_PRIO_BITS not defined in device header file; using default!"
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #endif
 265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #ifndef __Vendor_SysTickConfig
 267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #define __Vendor_SysTickConfig    0U
 268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     #warning "__Vendor_SysTickConfig not defined in device header file; using default!"
 269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #endif
 270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #endif
 271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* IO definitions (access restrictions to peripheral registers) */
 273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
 274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     \defgroup CMSIS_glob_defs CMSIS Global Defines
 275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     <strong>IO Type Qualifiers</strong> are used
 277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     \li to specify the access to peripheral variables.
 278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     \li for automatic generation of peripheral register debug information.
 279:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** */
 280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #ifdef __cplusplus
 281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define   __I     volatile             /*!< Defines 'read only' permissions */
 282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #else
 283:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define   __I     volatile const       /*!< Defines 'read only' permissions */
 284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #endif
 285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define     __O     volatile             /*!< Defines 'write only' permissions */
 286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define     __IO    volatile             /*!< Defines 'read / write' permissions */
 287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* following defines should be used for structure members */
 289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define     __IM     volatile const      /*! Defines 'read only' structure member permissions */
 290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define     __OM     volatile            /*! Defines 'write only' structure member permissions */
 291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define     __IOM    volatile            /*! Defines 'read / write' structure member permissions */
 292:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*@} end of group Cortex_M7 */
 294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*******************************************************************************
 298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  *                 Register Abstraction
 299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   Core Register contain:
 300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   - Core Register
 301:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   - Core NVIC Register
 302:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   - Core SCB Register
 303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   - Core SysTick Register
 304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   - Core Debug Register
 305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   - Core MPU Register
 306:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   - Core FPU Register
 307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
 308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
 309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \defgroup CMSIS_core_register Defines and Type Definitions
 310:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief Type definitions and defines for Cortex-M processor based devices.
 311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** */
 312:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
 314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \ingroup    CMSIS_core_register
 315:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \defgroup   CMSIS_CORE  Status and Control Registers
 316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief      Core Register type definitions.
 317:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   @{
 318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
 319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
 321:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief  Union type to access the Application Program Status Register (APSR).
 322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
 323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** typedef union
 324:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
 325:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   struct
 326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   {
 327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:16;              /*!< bit:  0..15  Reserved */
 328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t GE:4;                       /*!< bit: 16..19  Greater than or Equal flags */
 329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t _reserved1:7;               /*!< bit: 20..26  Reserved */
 330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t Q:1;                        /*!< bit:     27  Saturation condition flag */
 331:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t V:1;                        /*!< bit:     28  Overflow condition code flag */
 332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t C:1;                        /*!< bit:     29  Carry condition code flag */
 333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t Z:1;                        /*!< bit:     30  Zero condition code flag */
 334:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t N:1;                        /*!< bit:     31  Negative condition code flag */
 335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access */
 336:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access */
 337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** } APSR_Type;
 338:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* APSR Register Definitions */
 340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define APSR_N_Pos                         31U                                            /*!< APSR
 341:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define APSR_N_Msk                         (1UL << APSR_N_Pos)                            /*!< APSR
 342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define APSR_Z_Pos                         30U                                            /*!< APSR
 344:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define APSR_Z_Msk                         (1UL << APSR_Z_Pos)                            /*!< APSR
 345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define APSR_C_Pos                         29U                                            /*!< APSR
 347:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define APSR_C_Msk                         (1UL << APSR_C_Pos)                            /*!< APSR
 348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define APSR_V_Pos                         28U                                            /*!< APSR
 350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define APSR_V_Msk                         (1UL << APSR_V_Pos)                            /*!< APSR
 351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define APSR_Q_Pos                         27U                                            /*!< APSR
 353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define APSR_Q_Msk                         (1UL << APSR_Q_Pos)                            /*!< APSR
 354:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define APSR_GE_Pos                        16U                                            /*!< APSR
 356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define APSR_GE_Msk                        (0xFUL << APSR_GE_Pos)                         /*!< APSR
 357:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 359:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
 360:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief  Union type to access the Interrupt Program Status Register (IPSR).
 361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
 362:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** typedef union
 363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
 364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   struct
 365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   {
 366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t ISR:9;                      /*!< bit:  0.. 8  Exception number */
 367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:23;              /*!< bit:  9..31  Reserved */
 368:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access */
 369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access */
 370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** } IPSR_Type;
 371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* IPSR Register Definitions */
 373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define IPSR_ISR_Pos                        0U                                            /*!< IPSR
 374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define IPSR_ISR_Msk                       (0x1FFUL /*<< IPSR_ISR_Pos*/)                  /*!< IPSR
 375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 376:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 377:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
 378:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief  Union type to access the Special-Purpose Program Status Registers (xPSR).
 379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
 380:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** typedef union
 381:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
 382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   struct
 383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   {
 384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t ISR:9;                      /*!< bit:  0.. 8  Exception number */
 385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:7;               /*!< bit:  9..15  Reserved */
 386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t GE:4;                       /*!< bit: 16..19  Greater than or Equal flags */
 387:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t _reserved1:4;               /*!< bit: 20..23  Reserved */
 388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t T:1;                        /*!< bit:     24  Thumb bit        (read 0) */
 389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t IT:2;                       /*!< bit: 25..26  saved IT state   (read 0) */
 390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t Q:1;                        /*!< bit:     27  Saturation condition flag */
 391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t V:1;                        /*!< bit:     28  Overflow condition code flag */
 392:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t C:1;                        /*!< bit:     29  Carry condition code flag */
 393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t Z:1;                        /*!< bit:     30  Zero condition code flag */
 394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t N:1;                        /*!< bit:     31  Negative condition code flag */
 395:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access */
 396:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access */
 397:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** } xPSR_Type;
 398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* xPSR Register Definitions */
 400:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define xPSR_N_Pos                         31U                                            /*!< xPSR
 401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define xPSR_N_Msk                         (1UL << xPSR_N_Pos)                            /*!< xPSR
 402:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 403:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define xPSR_Z_Pos                         30U                                            /*!< xPSR
 404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define xPSR_Z_Msk                         (1UL << xPSR_Z_Pos)                            /*!< xPSR
 405:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 406:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define xPSR_C_Pos                         29U                                            /*!< xPSR
 407:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define xPSR_C_Msk                         (1UL << xPSR_C_Pos)                            /*!< xPSR
 408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define xPSR_V_Pos                         28U                                            /*!< xPSR
 410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define xPSR_V_Msk                         (1UL << xPSR_V_Pos)                            /*!< xPSR
 411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 412:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define xPSR_Q_Pos                         27U                                            /*!< xPSR
 413:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define xPSR_Q_Msk                         (1UL << xPSR_Q_Pos)                            /*!< xPSR
 414:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define xPSR_IT_Pos                        25U                                            /*!< xPSR
 416:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define xPSR_IT_Msk                        (3UL << xPSR_IT_Pos)                           /*!< xPSR
 417:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define xPSR_T_Pos                         24U                                            /*!< xPSR
 419:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define xPSR_T_Msk                         (1UL << xPSR_T_Pos)                            /*!< xPSR
 420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define xPSR_GE_Pos                        16U                                            /*!< xPSR
 422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define xPSR_GE_Msk                        (0xFUL << xPSR_GE_Pos)                         /*!< xPSR
 423:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 424:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define xPSR_ISR_Pos                        0U                                            /*!< xPSR
 425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define xPSR_ISR_Msk                       (0x1FFUL /*<< xPSR_ISR_Pos*/)                  /*!< xPSR
 426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 427:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
 429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief  Union type to access the Control Registers (CONTROL).
 430:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
 431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** typedef union
 432:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
 433:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   struct
 434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   {
 435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t nPRIV:1;                    /*!< bit:      0  Execution privilege in Thread mode */
 436:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t SPSEL:1;                    /*!< bit:      1  Stack to be used */
 437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t FPCA:1;                     /*!< bit:      2  FP extension active flag */
 438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t _reserved0:29;              /*!< bit:  3..31  Reserved */
 439:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   } b;                                   /*!< Structure used for bit  access */
 440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   uint32_t w;                            /*!< Type      used for word access */
 441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** } CONTROL_Type;
 442:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* CONTROL Register Definitions */
 444:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CONTROL_FPCA_Pos                    2U                                            /*!< CONT
 445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CONTROL_FPCA_Msk                   (1UL << CONTROL_FPCA_Pos)                      /*!< CONT
 446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CONTROL_SPSEL_Pos                   1U                                            /*!< CONT
 448:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CONTROL_SPSEL_Msk                  (1UL << CONTROL_SPSEL_Pos)                     /*!< CONT
 449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 450:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CONTROL_nPRIV_Pos                   0U                                            /*!< CONT
 451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CONTROL_nPRIV_Msk                  (1UL /*<< CONTROL_nPRIV_Pos*/)                 /*!< CONT
 452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_CORE */
 454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 456:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
 457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \ingroup    CMSIS_core_register
 458:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \defgroup   CMSIS_NVIC  Nested Vectored Interrupt Controller (NVIC)
 459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief      Type definitions for the NVIC Registers
 460:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   @{
 461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
 462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 463:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
 464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief  Structure type to access the Nested Vectored Interrupt Controller (NVIC).
 465:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
 466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** typedef struct
 467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
 468:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t ISER[8U];               /*!< Offset: 0x000 (R/W)  Interrupt Set Enable Register */
 469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED0[24U];
 470:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t ICER[8U];               /*!< Offset: 0x080 (R/W)  Interrupt Clear Enable Register 
 471:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RSERVED1[24U];
 472:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t ISPR[8U];               /*!< Offset: 0x100 (R/W)  Interrupt Set Pending Register *
 473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED2[24U];
 474:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t ICPR[8U];               /*!< Offset: 0x180 (R/W)  Interrupt Clear Pending Register
 475:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED3[24U];
 476:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t IABR[8U];               /*!< Offset: 0x200 (R/W)  Interrupt Active bit Register */
 477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED4[56U];
 478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint8_t  IP[240U];               /*!< Offset: 0x300 (R/W)  Interrupt Priority Register (8Bi
 479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED5[644U];
 480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __OM  uint32_t STIR;                   /*!< Offset: 0xE00 ( /W)  Software Trigger Interrupt Regis
 481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** }  NVIC_Type;
 482:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* Software Triggered Interrupt Register Definitions */
 484:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define NVIC_STIR_INTID_Pos                 0U                                         /*!< STIR: I
 485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define NVIC_STIR_INTID_Msk                (0x1FFUL /*<< NVIC_STIR_INTID_Pos*/)        /*!< STIR: I
 486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_NVIC */
 488:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 489:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
 491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \ingroup  CMSIS_core_register
 492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \defgroup CMSIS_SCB     System Control Block (SCB)
 493:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief    Type definitions for the System Control Block Registers
 494:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   @{
 495:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
 496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 497:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
 498:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief  Structure type to access the System Control Block (SCB).
 499:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
 500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** typedef struct
 501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
 502:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t CPUID;                  /*!< Offset: 0x000 (R/ )  CPUID Base Register */
 503:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t ICSR;                   /*!< Offset: 0x004 (R/W)  Interrupt Control and State Regi
 504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t VTOR;                   /*!< Offset: 0x008 (R/W)  Vector Table Offset Register */
 505:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t AIRCR;                  /*!< Offset: 0x00C (R/W)  Application Interrupt and Reset 
 506:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t SCR;                    /*!< Offset: 0x010 (R/W)  System Control Register */
 507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t CCR;                    /*!< Offset: 0x014 (R/W)  Configuration Control Register *
 508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint8_t  SHPR[12U];              /*!< Offset: 0x018 (R/W)  System Handlers Priority Registe
 509:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t SHCSR;                  /*!< Offset: 0x024 (R/W)  System Handler Control and State
 510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t CFSR;                   /*!< Offset: 0x028 (R/W)  Configurable Fault Status Regist
 511:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t HFSR;                   /*!< Offset: 0x02C (R/W)  HardFault Status Register */
 512:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t DFSR;                   /*!< Offset: 0x030 (R/W)  Debug Fault Status Register */
 513:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t MMFAR;                  /*!< Offset: 0x034 (R/W)  MemManage Fault Address Register
 514:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t BFAR;                   /*!< Offset: 0x038 (R/W)  BusFault Address Register */
 515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t AFSR;                   /*!< Offset: 0x03C (R/W)  Auxiliary Fault Status Register 
 516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t ID_PFR[2U];             /*!< Offset: 0x040 (R/ )  Processor Feature Register */
 517:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t ID_DFR;                 /*!< Offset: 0x048 (R/ )  Debug Feature Register */
 518:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t ID_AFR;                 /*!< Offset: 0x04C (R/ )  Auxiliary Feature Register */
 519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t ID_MFR[4U];             /*!< Offset: 0x050 (R/ )  Memory Model Feature Register */
 520:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t ID_ISAR[5U];            /*!< Offset: 0x060 (R/ )  Instruction Set Attributes Regis
 521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED0[1U];
 522:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t CLIDR;                  /*!< Offset: 0x078 (R/ )  Cache Level ID register */
 523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t CTR;                    /*!< Offset: 0x07C (R/ )  Cache Type register */
 524:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t CCSIDR;                 /*!< Offset: 0x080 (R/ )  Cache Size ID Register */
 525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t CSSELR;                 /*!< Offset: 0x084 (R/W)  Cache Size Selection Register */
 526:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t CPACR;                  /*!< Offset: 0x088 (R/W)  Coprocessor Access Control Regis
 527:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED3[93U];
 528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __OM  uint32_t STIR;                   /*!< Offset: 0x200 ( /W)  Software Triggered Interrupt Reg
 529:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED4[15U];
 530:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t MVFR0;                  /*!< Offset: 0x240 (R/ )  Media and VFP Feature Register 0
 531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t MVFR1;                  /*!< Offset: 0x244 (R/ )  Media and VFP Feature Register 1
 532:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t MVFR2;                  /*!< Offset: 0x248 (R/ )  Media and VFP Feature Register 1
 533:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED5[1U];
 534:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __OM  uint32_t ICIALLU;                /*!< Offset: 0x250 ( /W)  I-Cache Invalidate All to PoU */
 535:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED6[1U];
 536:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __OM  uint32_t ICIMVAU;                /*!< Offset: 0x258 ( /W)  I-Cache Invalidate by MVA to PoU
 537:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __OM  uint32_t DCIMVAC;                /*!< Offset: 0x25C ( /W)  D-Cache Invalidate by MVA to PoC
 538:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __OM  uint32_t DCISW;                  /*!< Offset: 0x260 ( /W)  D-Cache Invalidate by Set-way */
 539:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __OM  uint32_t DCCMVAU;                /*!< Offset: 0x264 ( /W)  D-Cache Clean by MVA to PoU */
 540:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __OM  uint32_t DCCMVAC;                /*!< Offset: 0x268 ( /W)  D-Cache Clean by MVA to PoC */
 541:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __OM  uint32_t DCCSW;                  /*!< Offset: 0x26C ( /W)  D-Cache Clean by Set-way */
 542:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __OM  uint32_t DCCIMVAC;               /*!< Offset: 0x270 ( /W)  D-Cache Clean and Invalidate by 
 543:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __OM  uint32_t DCCISW;                 /*!< Offset: 0x274 ( /W)  D-Cache Clean and Invalidate by 
 544:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED7[6U];
 545:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t ITCMCR;                 /*!< Offset: 0x290 (R/W)  Instruction Tightly-Coupled Memo
 546:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t DTCMCR;                 /*!< Offset: 0x294 (R/W)  Data Tightly-Coupled Memory Cont
 547:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t AHBPCR;                 /*!< Offset: 0x298 (R/W)  AHBP Control Register */
 548:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t CACR;                   /*!< Offset: 0x29C (R/W)  L1 Cache Control Register */
 549:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t AHBSCR;                 /*!< Offset: 0x2A0 (R/W)  AHB Slave Control Register */
 550:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED8[1U];
 551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t ABFSR;                  /*!< Offset: 0x2A8 (R/W)  Auxiliary Bus Fault Status Regis
 552:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** } SCB_Type;
 553:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 554:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SCB CPUID Register Definitions */
 555:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_IMPLEMENTER_Pos          24U                                            /*!< SCB 
 556:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_IMPLEMENTER_Msk          (0xFFUL << SCB_CPUID_IMPLEMENTER_Pos)          /*!< SCB 
 557:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 558:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_VARIANT_Pos              20U                                            /*!< SCB 
 559:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_VARIANT_Msk              (0xFUL << SCB_CPUID_VARIANT_Pos)               /*!< SCB 
 560:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 561:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_ARCHITECTURE_Pos         16U                                            /*!< SCB 
 562:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_ARCHITECTURE_Msk         (0xFUL << SCB_CPUID_ARCHITECTURE_Pos)          /*!< SCB 
 563:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 564:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_PARTNO_Pos                4U                                            /*!< SCB 
 565:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_PARTNO_Msk               (0xFFFUL << SCB_CPUID_PARTNO_Pos)              /*!< SCB 
 566:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 567:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_REVISION_Pos              0U                                            /*!< SCB 
 568:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CPUID_REVISION_Msk             (0xFUL /*<< SCB_CPUID_REVISION_Pos*/)          /*!< SCB 
 569:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 570:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SCB Interrupt Control State Register Definitions */
 571:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_NMIPENDSET_Pos            31U                                            /*!< SCB 
 572:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_NMIPENDSET_Msk            (1UL << SCB_ICSR_NMIPENDSET_Pos)               /*!< SCB 
 573:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 574:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVSET_Pos             28U                                            /*!< SCB 
 575:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVSET_Msk             (1UL << SCB_ICSR_PENDSVSET_Pos)                /*!< SCB 
 576:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 577:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVCLR_Pos             27U                                            /*!< SCB 
 578:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSVCLR_Msk             (1UL << SCB_ICSR_PENDSVCLR_Pos)                /*!< SCB 
 579:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 580:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTSET_Pos             26U                                            /*!< SCB 
 581:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTSET_Msk             (1UL << SCB_ICSR_PENDSTSET_Pos)                /*!< SCB 
 582:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 583:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTCLR_Pos             25U                                            /*!< SCB 
 584:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_PENDSTCLR_Msk             (1UL << SCB_ICSR_PENDSTCLR_Pos)                /*!< SCB 
 585:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 586:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPREEMPT_Pos            23U                                            /*!< SCB 
 587:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPREEMPT_Msk            (1UL << SCB_ICSR_ISRPREEMPT_Pos)               /*!< SCB 
 588:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 589:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPENDING_Pos            22U                                            /*!< SCB 
 590:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_ISRPENDING_Msk            (1UL << SCB_ICSR_ISRPENDING_Pos)               /*!< SCB 
 591:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 592:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTPENDING_Pos           12U                                            /*!< SCB 
 593:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTPENDING_Msk           (0x1FFUL << SCB_ICSR_VECTPENDING_Pos)          /*!< SCB 
 594:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 595:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_RETTOBASE_Pos             11U                                            /*!< SCB 
 596:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_RETTOBASE_Msk             (1UL << SCB_ICSR_RETTOBASE_Pos)                /*!< SCB 
 597:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 598:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTACTIVE_Pos             0U                                            /*!< SCB 
 599:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ICSR_VECTACTIVE_Msk            (0x1FFUL /*<< SCB_ICSR_VECTACTIVE_Pos*/)       /*!< SCB 
 600:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 601:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SCB Vector Table Offset Register Definitions */
 602:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_VTOR_TBLOFF_Pos                 7U                                            /*!< SCB 
 603:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_VTOR_TBLOFF_Msk                (0x1FFFFFFUL << SCB_VTOR_TBLOFF_Pos)           /*!< SCB 
 604:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 605:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SCB Application Interrupt and Reset Control Register Definitions */
 606:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEY_Pos              16U                                            /*!< SCB 
 607:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEY_Msk              (0xFFFFUL << SCB_AIRCR_VECTKEY_Pos)            /*!< SCB 
 608:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 609:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEYSTAT_Pos          16U                                            /*!< SCB 
 610:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTKEYSTAT_Msk          (0xFFFFUL << SCB_AIRCR_VECTKEYSTAT_Pos)        /*!< SCB 
 611:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_ENDIANESS_Pos            15U                                            /*!< SCB 
 613:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_ENDIANESS_Msk            (1UL << SCB_AIRCR_ENDIANESS_Pos)               /*!< SCB 
 614:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 615:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_PRIGROUP_Pos              8U                                            /*!< SCB 
 616:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_PRIGROUP_Msk             (7UL << SCB_AIRCR_PRIGROUP_Pos)                /*!< SCB 
 617:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 618:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_SYSRESETREQ_Pos           2U                                            /*!< SCB 
 619:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_SYSRESETREQ_Msk          (1UL << SCB_AIRCR_SYSRESETREQ_Pos)             /*!< SCB 
 620:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 621:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTCLRACTIVE_Pos         1U                                            /*!< SCB 
 622:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTCLRACTIVE_Msk        (1UL << SCB_AIRCR_VECTCLRACTIVE_Pos)           /*!< SCB 
 623:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 624:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTRESET_Pos             0U                                            /*!< SCB 
 625:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AIRCR_VECTRESET_Msk            (1UL /*<< SCB_AIRCR_VECTRESET_Pos*/)           /*!< SCB 
 626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 627:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SCB System Control Register Definitions */
 628:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SEVONPEND_Pos               4U                                            /*!< SCB 
 629:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SEVONPEND_Msk              (1UL << SCB_SCR_SEVONPEND_Pos)                 /*!< SCB 
 630:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 631:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPDEEP_Pos               2U                                            /*!< SCB 
 632:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPDEEP_Msk              (1UL << SCB_SCR_SLEEPDEEP_Pos)                 /*!< SCB 
 633:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 634:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPONEXIT_Pos             1U                                            /*!< SCB 
 635:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SCR_SLEEPONEXIT_Msk            (1UL << SCB_SCR_SLEEPONEXIT_Pos)               /*!< SCB 
 636:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SCB Configuration Control Register Definitions */
 638:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BP_Pos                      18U                                           /*!< SCB 
 639:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BP_Msk                     (1UL << SCB_CCR_BP_Pos)                        /*!< SCB 
 640:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 641:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCR_IC_Pos                      17U                                           /*!< SCB 
 642:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCR_IC_Msk                     (1UL << SCB_CCR_IC_Pos)                        /*!< SCB 
 643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 644:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DC_Pos                      16U                                           /*!< SCB 
 645:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DC_Msk                     (1UL << SCB_CCR_DC_Pos)                        /*!< SCB 
 646:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 647:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCR_STKALIGN_Pos                9U                                            /*!< SCB 
 648:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCR_STKALIGN_Msk               (1UL << SCB_CCR_STKALIGN_Pos)                  /*!< SCB 
 649:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 650:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BFHFNMIGN_Pos               8U                                            /*!< SCB 
 651:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCR_BFHFNMIGN_Msk              (1UL << SCB_CCR_BFHFNMIGN_Pos)                 /*!< SCB 
 652:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 653:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DIV_0_TRP_Pos               4U                                            /*!< SCB 
 654:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCR_DIV_0_TRP_Msk              (1UL << SCB_CCR_DIV_0_TRP_Pos)                 /*!< SCB 
 655:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 656:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCR_UNALIGN_TRP_Pos             3U                                            /*!< SCB 
 657:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCR_UNALIGN_TRP_Msk            (1UL << SCB_CCR_UNALIGN_TRP_Pos)               /*!< SCB 
 658:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 659:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCR_USERSETMPEND_Pos            1U                                            /*!< SCB 
 660:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCR_USERSETMPEND_Msk           (1UL << SCB_CCR_USERSETMPEND_Pos)              /*!< SCB 
 661:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 662:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCR_NONBASETHRDENA_Pos          0U                                            /*!< SCB 
 663:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCR_NONBASETHRDENA_Msk         (1UL /*<< SCB_CCR_NONBASETHRDENA_Pos*/)        /*!< SCB 
 664:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 665:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SCB System Handler Control and State Register Definitions */
 666:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTENA_Pos          18U                                            /*!< SCB 
 667:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTENA_Msk          (1UL << SCB_SHCSR_USGFAULTENA_Pos)             /*!< SCB 
 668:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 669:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTENA_Pos          17U                                            /*!< SCB 
 670:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTENA_Msk          (1UL << SCB_SHCSR_BUSFAULTENA_Pos)             /*!< SCB 
 671:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 672:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTENA_Pos          16U                                            /*!< SCB 
 673:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTENA_Msk          (1UL << SCB_SHCSR_MEMFAULTENA_Pos)             /*!< SCB 
 674:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 675:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLPENDED_Pos         15U                                            /*!< SCB 
 676:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLPENDED_Msk         (1UL << SCB_SHCSR_SVCALLPENDED_Pos)            /*!< SCB 
 677:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTPENDED_Pos       14U                                            /*!< SCB 
 679:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTPENDED_Msk       (1UL << SCB_SHCSR_BUSFAULTPENDED_Pos)          /*!< SCB 
 680:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 681:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTPENDED_Pos       13U                                            /*!< SCB 
 682:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTPENDED_Msk       (1UL << SCB_SHCSR_MEMFAULTPENDED_Pos)          /*!< SCB 
 683:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 684:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTPENDED_Pos       12U                                            /*!< SCB 
 685:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTPENDED_Msk       (1UL << SCB_SHCSR_USGFAULTPENDED_Pos)          /*!< SCB 
 686:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 687:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SYSTICKACT_Pos           11U                                            /*!< SCB 
 688:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SYSTICKACT_Msk           (1UL << SCB_SHCSR_SYSTICKACT_Pos)              /*!< SCB 
 689:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 690:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_PENDSVACT_Pos            10U                                            /*!< SCB 
 691:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_PENDSVACT_Msk            (1UL << SCB_SHCSR_PENDSVACT_Pos)               /*!< SCB 
 692:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 693:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MONITORACT_Pos            8U                                            /*!< SCB 
 694:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MONITORACT_Msk           (1UL << SCB_SHCSR_MONITORACT_Pos)              /*!< SCB 
 695:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 696:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLACT_Pos             7U                                            /*!< SCB 
 697:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_SVCALLACT_Msk            (1UL << SCB_SHCSR_SVCALLACT_Pos)               /*!< SCB 
 698:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 699:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTACT_Pos           3U                                            /*!< SCB 
 700:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_USGFAULTACT_Msk          (1UL << SCB_SHCSR_USGFAULTACT_Pos)             /*!< SCB 
 701:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 702:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTACT_Pos           1U                                            /*!< SCB 
 703:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_BUSFAULTACT_Msk          (1UL << SCB_SHCSR_BUSFAULTACT_Pos)             /*!< SCB 
 704:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 705:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTACT_Pos           0U                                            /*!< SCB 
 706:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_SHCSR_MEMFAULTACT_Msk          (1UL /*<< SCB_SHCSR_MEMFAULTACT_Pos*/)         /*!< SCB 
 707:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 708:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SCB Configurable Fault Status Register Definitions */
 709:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_USGFAULTSR_Pos            16U                                            /*!< SCB 
 710:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_USGFAULTSR_Msk            (0xFFFFUL << SCB_CFSR_USGFAULTSR_Pos)          /*!< SCB 
 711:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 712:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_BUSFAULTSR_Pos             8U                                            /*!< SCB 
 713:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_BUSFAULTSR_Msk            (0xFFUL << SCB_CFSR_BUSFAULTSR_Pos)            /*!< SCB 
 714:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 715:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_MEMFAULTSR_Pos             0U                                            /*!< SCB 
 716:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CFSR_MEMFAULTSR_Msk            (0xFFUL /*<< SCB_CFSR_MEMFAULTSR_Pos*/)        /*!< SCB 
 717:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 718:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SCB Hard Fault Status Register Definitions */
 719:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_DEBUGEVT_Pos              31U                                            /*!< SCB 
 720:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_DEBUGEVT_Msk              (1UL << SCB_HFSR_DEBUGEVT_Pos)                 /*!< SCB 
 721:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 722:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_FORCED_Pos                30U                                            /*!< SCB 
 723:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_FORCED_Msk                (1UL << SCB_HFSR_FORCED_Pos)                   /*!< SCB 
 724:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 725:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_VECTTBL_Pos                1U                                            /*!< SCB 
 726:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_HFSR_VECTTBL_Msk               (1UL << SCB_HFSR_VECTTBL_Pos)                  /*!< SCB 
 727:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 728:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SCB Debug Fault Status Register Definitions */
 729:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_EXTERNAL_Pos               4U                                            /*!< SCB 
 730:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_EXTERNAL_Msk              (1UL << SCB_DFSR_EXTERNAL_Pos)                 /*!< SCB 
 731:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 732:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_VCATCH_Pos                 3U                                            /*!< SCB 
 733:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_VCATCH_Msk                (1UL << SCB_DFSR_VCATCH_Pos)                   /*!< SCB 
 734:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 735:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_DWTTRAP_Pos                2U                                            /*!< SCB 
 736:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_DWTTRAP_Msk               (1UL << SCB_DFSR_DWTTRAP_Pos)                  /*!< SCB 
 737:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 738:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_BKPT_Pos                   1U                                            /*!< SCB 
 739:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_BKPT_Msk                  (1UL << SCB_DFSR_BKPT_Pos)                     /*!< SCB 
 740:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 741:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_HALTED_Pos                 0U                                            /*!< SCB 
 742:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DFSR_HALTED_Msk                (1UL /*<< SCB_DFSR_HALTED_Pos*/)               /*!< SCB 
 743:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 744:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SCB Cache Level ID Register Definitions */
 745:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOUU_Pos                 27U                                            /*!< SCB 
 746:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOUU_Msk                 (7UL << SCB_CLIDR_LOUU_Pos)                    /*!< SCB 
 747:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 748:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOC_Pos                  24U                                            /*!< SCB 
 749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CLIDR_LOC_Msk                  (7UL << SCB_CLIDR_LOC_Pos)                     /*!< SCB 
 750:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 751:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SCB Cache Type Register Definitions */
 752:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CTR_FORMAT_Pos                 29U                                            /*!< SCB 
 753:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CTR_FORMAT_Msk                 (7UL << SCB_CTR_FORMAT_Pos)                    /*!< SCB 
 754:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 755:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CTR_CWG_Pos                    24U                                            /*!< SCB 
 756:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CTR_CWG_Msk                    (0xFUL << SCB_CTR_CWG_Pos)                     /*!< SCB 
 757:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 758:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CTR_ERG_Pos                    20U                                            /*!< SCB 
 759:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CTR_ERG_Msk                    (0xFUL << SCB_CTR_ERG_Pos)                     /*!< SCB 
 760:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 761:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CTR_DMINLINE_Pos               16U                                            /*!< SCB 
 762:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CTR_DMINLINE_Msk               (0xFUL << SCB_CTR_DMINLINE_Pos)                /*!< SCB 
 763:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 764:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CTR_IMINLINE_Pos                0U                                            /*!< SCB 
 765:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CTR_IMINLINE_Msk               (0xFUL /*<< SCB_CTR_IMINLINE_Pos*/)            /*!< SCB 
 766:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 767:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SCB Cache Size ID Register Definitions */
 768:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WT_Pos                  31U                                            /*!< SCB 
 769:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WT_Msk                  (1UL << SCB_CCSIDR_WT_Pos)                     /*!< SCB 
 770:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 771:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WB_Pos                  30U                                            /*!< SCB 
 772:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WB_Msk                  (1UL << SCB_CCSIDR_WB_Pos)                     /*!< SCB 
 773:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 774:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_RA_Pos                  29U                                            /*!< SCB 
 775:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_RA_Msk                  (1UL << SCB_CCSIDR_RA_Pos)                     /*!< SCB 
 776:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 777:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WA_Pos                  28U                                            /*!< SCB 
 778:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_WA_Msk                  (1UL << SCB_CCSIDR_WA_Pos)                     /*!< SCB 
 779:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 780:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_NUMSETS_Pos             13U                                            /*!< SCB 
 781:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_NUMSETS_Msk             (0x7FFFUL << SCB_CCSIDR_NUMSETS_Pos)           /*!< SCB 
 782:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 783:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_ASSOCIATIVITY_Pos        3U                                            /*!< SCB 
 784:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_ASSOCIATIVITY_Msk       (0x3FFUL << SCB_CCSIDR_ASSOCIATIVITY_Pos)      /*!< SCB 
 785:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 786:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_LINESIZE_Pos             0U                                            /*!< SCB 
 787:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CCSIDR_LINESIZE_Msk            (7UL /*<< SCB_CCSIDR_LINESIZE_Pos*/)           /*!< SCB 
 788:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 789:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SCB Cache Size Selection Register Definitions */
 790:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_LEVEL_Pos                1U                                            /*!< SCB 
 791:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_LEVEL_Msk               (7UL << SCB_CSSELR_LEVEL_Pos)                  /*!< SCB 
 792:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 793:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_IND_Pos                  0U                                            /*!< SCB 
 794:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CSSELR_IND_Msk                 (1UL /*<< SCB_CSSELR_IND_Pos*/)                /*!< SCB 
 795:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 796:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SCB Software Triggered Interrupt Register Definitions */
 797:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_STIR_INTID_Pos                  0U                                            /*!< SCB 
 798:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_STIR_INTID_Msk                 (0x1FFUL /*<< SCB_STIR_INTID_Pos*/)            /*!< SCB 
 799:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 800:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SCB D-Cache Invalidate by Set-way Register Definitions */
 801:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DCISW_WAY_Pos                  30U                                            /*!< SCB 
 802:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DCISW_WAY_Msk                  (3UL << SCB_DCISW_WAY_Pos)                     /*!< SCB 
 803:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 804:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DCISW_SET_Pos                   5U                                            /*!< SCB 
 805:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DCISW_SET_Msk                  (0x1FFUL << SCB_DCISW_SET_Pos)                 /*!< SCB 
 806:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 807:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SCB D-Cache Clean by Set-way Register Definitions */
 808:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DCCSW_WAY_Pos                  30U                                            /*!< SCB 
 809:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DCCSW_WAY_Msk                  (3UL << SCB_DCCSW_WAY_Pos)                     /*!< SCB 
 810:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 811:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DCCSW_SET_Pos                   5U                                            /*!< SCB 
 812:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DCCSW_SET_Msk                  (0x1FFUL << SCB_DCCSW_SET_Pos)                 /*!< SCB 
 813:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SCB D-Cache Clean and Invalidate by Set-way Register Definitions */
 815:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DCCISW_WAY_Pos                 30U                                            /*!< SCB 
 816:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DCCISW_WAY_Msk                 (3UL << SCB_DCCISW_WAY_Pos)                    /*!< SCB 
 817:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 818:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DCCISW_SET_Pos                  5U                                            /*!< SCB 
 819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DCCISW_SET_Msk                 (0x1FFUL << SCB_DCCISW_SET_Pos)                /*!< SCB 
 820:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 821:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* Instruction Tightly-Coupled Memory Control Register Definitions */
 822:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_SZ_Pos                   3U                                            /*!< SCB 
 823:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_SZ_Msk                  (0xFUL << SCB_ITCMCR_SZ_Pos)                   /*!< SCB 
 824:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 825:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RETEN_Pos                2U                                            /*!< SCB 
 826:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RETEN_Msk               (1UL << SCB_ITCMCR_RETEN_Pos)                  /*!< SCB 
 827:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 828:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RMW_Pos                  1U                                            /*!< SCB 
 829:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_RMW_Msk                 (1UL << SCB_ITCMCR_RMW_Pos)                    /*!< SCB 
 830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 831:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_EN_Pos                   0U                                            /*!< SCB 
 832:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ITCMCR_EN_Msk                  (1UL /*<< SCB_ITCMCR_EN_Pos*/)                 /*!< SCB 
 833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 834:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* Data Tightly-Coupled Memory Control Register Definitions */
 835:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_SZ_Pos                   3U                                            /*!< SCB 
 836:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_SZ_Msk                  (0xFUL << SCB_DTCMCR_SZ_Pos)                   /*!< SCB 
 837:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 838:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RETEN_Pos                2U                                            /*!< SCB 
 839:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RETEN_Msk               (1UL << SCB_DTCMCR_RETEN_Pos)                   /*!< SCB
 840:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 841:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RMW_Pos                  1U                                            /*!< SCB 
 842:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_RMW_Msk                 (1UL << SCB_DTCMCR_RMW_Pos)                    /*!< SCB 
 843:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 844:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_EN_Pos                   0U                                            /*!< SCB 
 845:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_DTCMCR_EN_Msk                  (1UL /*<< SCB_DTCMCR_EN_Pos*/)                 /*!< SCB 
 846:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 847:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* AHBP Control Register Definitions */
 848:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_SZ_Pos                   1U                                            /*!< SCB 
 849:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_SZ_Msk                  (7UL << SCB_AHBPCR_SZ_Pos)                     /*!< SCB 
 850:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 851:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_EN_Pos                   0U                                            /*!< SCB 
 852:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AHBPCR_EN_Msk                  (1UL /*<< SCB_AHBPCR_EN_Pos*/)                 /*!< SCB 
 853:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 854:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* L1 Cache Control Register Definitions */
 855:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CACR_FORCEWT_Pos                2U                                            /*!< SCB 
 856:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CACR_FORCEWT_Msk               (1UL << SCB_CACR_FORCEWT_Pos)                  /*!< SCB 
 857:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 858:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CACR_ECCEN_Pos                  1U                                            /*!< SCB 
 859:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CACR_ECCEN_Msk                 (1UL << SCB_CACR_ECCEN_Pos)                    /*!< SCB 
 860:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 861:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CACR_SIWT_Pos                   0U                                            /*!< SCB 
 862:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_CACR_SIWT_Msk                  (1UL /*<< SCB_CACR_SIWT_Pos*/)                 /*!< SCB 
 863:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 864:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* AHBS Control Register Definitions */
 865:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_INITCOUNT_Pos           11U                                            /*!< SCB 
 866:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_INITCOUNT_Msk           (0x1FUL << SCB_AHBPCR_INITCOUNT_Pos)           /*!< SCB 
 867:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 868:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_TPRI_Pos                 2U                                            /*!< SCB 
 869:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_TPRI_Msk                (0x1FFUL << SCB_AHBPCR_TPRI_Pos)               /*!< SCB 
 870:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 871:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_CTL_Pos                  0U                                            /*!< SCB 
 872:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_AHBSCR_CTL_Msk                 (3UL /*<< SCB_AHBPCR_CTL_Pos*/)                /*!< SCB 
 873:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 874:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* Auxiliary Bus Fault Status Register Definitions */
 875:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIMTYPE_Pos              8U                                            /*!< SCB 
 876:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIMTYPE_Msk             (3UL << SCB_ABFSR_AXIMTYPE_Pos)                /*!< SCB 
 877:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 878:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_EPPB_Pos                  4U                                            /*!< SCB 
 879:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_EPPB_Msk                 (1UL << SCB_ABFSR_EPPB_Pos)                    /*!< SCB 
 880:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 881:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIM_Pos                  3U                                            /*!< SCB 
 882:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AXIM_Msk                 (1UL << SCB_ABFSR_AXIM_Pos)                    /*!< SCB 
 883:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 884:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AHBP_Pos                  2U                                            /*!< SCB 
 885:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_AHBP_Msk                 (1UL << SCB_ABFSR_AHBP_Pos)                    /*!< SCB 
 886:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 887:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_DTCM_Pos                  1U                                            /*!< SCB 
 888:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_DTCM_Msk                 (1UL << SCB_ABFSR_DTCM_Pos)                    /*!< SCB 
 889:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 890:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_ITCM_Pos                  0U                                            /*!< SCB 
 891:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_ABFSR_ITCM_Msk                 (1UL /*<< SCB_ABFSR_ITCM_Pos*/)                /*!< SCB 
 892:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 893:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_SCB */
 894:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 895:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 896:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
 897:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \ingroup  CMSIS_core_register
 898:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \defgroup CMSIS_SCnSCB System Controls not in SCB (SCnSCB)
 899:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief    Type definitions for the System Control and ID Register not in the SCB
 900:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   @{
 901:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
 902:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 903:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
 904:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief  Structure type to access the System Control and ID Register not in the SCB.
 905:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
 906:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** typedef struct
 907:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
 908:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED0[1U];
 909:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t ICTR;                   /*!< Offset: 0x004 (R/ )  Interrupt Controller Type Regist
 910:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t ACTLR;                  /*!< Offset: 0x008 (R/W)  Auxiliary Control Register */
 911:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** } SCnSCB_Type;
 912:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 913:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* Interrupt Controller Type Register Definitions */
 914:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCnSCB_ICTR_INTLINESNUM_Pos         0U                                         /*!< ICTR: I
 915:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCnSCB_ICTR_INTLINESNUM_Msk        (0xFUL /*<< SCnSCB_ICTR_INTLINESNUM_Pos*/)  /*!< ICTR: I
 916:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* Auxiliary Control Register Definitions */
 918:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISITMATBFLUSH_Pos    12U                                         /*!< ACTLR: 
 919:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISITMATBFLUSH_Msk    (1UL << SCnSCB_ACTLR_DISITMATBFLUSH_Pos)    /*!< ACTLR: 
 920:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 921:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISRAMODE_Pos         11U                                         /*!< ACTLR: 
 922:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISRAMODE_Msk         (1UL << SCnSCB_ACTLR_DISRAMODE_Pos)         /*!< ACTLR: 
 923:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 924:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_FPEXCODIS_Pos         10U                                         /*!< ACTLR: 
 925:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_FPEXCODIS_Msk         (1UL << SCnSCB_ACTLR_FPEXCODIS_Pos)         /*!< ACTLR: 
 926:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 927:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISFOLD_Pos            2U                                         /*!< ACTLR: 
 928:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISFOLD_Msk           (1UL << SCnSCB_ACTLR_DISFOLD_Pos)           /*!< ACTLR: 
 929:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 930:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISMCYCINT_Pos         0U                                         /*!< ACTLR: 
 931:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCnSCB_ACTLR_DISMCYCINT_Msk        (1UL /*<< SCnSCB_ACTLR_DISMCYCINT_Pos*/)    /*!< ACTLR: 
 932:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 933:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_SCnotSCB */
 934:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 935:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 936:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
 937:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \ingroup  CMSIS_core_register
 938:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \defgroup CMSIS_SysTick     System Tick Timer (SysTick)
 939:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief    Type definitions for the System Timer Registers.
 940:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   @{
 941:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
 942:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 943:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
 944:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief  Structure type to access the System Timer (SysTick).
 945:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
 946:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** typedef struct
 947:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
 948:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t CTRL;                   /*!< Offset: 0x000 (R/W)  SysTick Control and Status Regis
 949:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t LOAD;                   /*!< Offset: 0x004 (R/W)  SysTick Reload Value Register */
 950:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t VAL;                    /*!< Offset: 0x008 (R/W)  SysTick Current Value Register *
 951:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t CALIB;                  /*!< Offset: 0x00C (R/ )  SysTick Calibration Register */
 952:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** } SysTick_Type;
 953:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 954:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SysTick Control / Status Register Definitions */
 955:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_COUNTFLAG_Pos         16U                                            /*!< SysT
 956:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_COUNTFLAG_Msk         (1UL << SysTick_CTRL_COUNTFLAG_Pos)            /*!< SysT
 957:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 958:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_CLKSOURCE_Pos          2U                                            /*!< SysT
 959:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_CLKSOURCE_Msk         (1UL << SysTick_CTRL_CLKSOURCE_Pos)            /*!< SysT
 960:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 961:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_TICKINT_Pos            1U                                            /*!< SysT
 962:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_TICKINT_Msk           (1UL << SysTick_CTRL_TICKINT_Pos)              /*!< SysT
 963:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 964:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_ENABLE_Pos             0U                                            /*!< SysT
 965:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick_CTRL_ENABLE_Msk            (1UL /*<< SysTick_CTRL_ENABLE_Pos*/)           /*!< SysT
 966:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 967:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SysTick Reload Register Definitions */
 968:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick_LOAD_RELOAD_Pos             0U                                            /*!< SysT
 969:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick_LOAD_RELOAD_Msk            (0xFFFFFFUL /*<< SysTick_LOAD_RELOAD_Pos*/)    /*!< SysT
 970:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 971:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SysTick Current Register Definitions */
 972:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick_VAL_CURRENT_Pos             0U                                            /*!< SysT
 973:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick_VAL_CURRENT_Msk            (0xFFFFFFUL /*<< SysTick_VAL_CURRENT_Pos*/)    /*!< SysT
 974:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 975:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* SysTick Calibration Register Definitions */
 976:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_NOREF_Pos            31U                                            /*!< SysT
 977:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_NOREF_Msk            (1UL << SysTick_CALIB_NOREF_Pos)               /*!< SysT
 978:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 979:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_SKEW_Pos             30U                                            /*!< SysT
 980:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_SKEW_Msk             (1UL << SysTick_CALIB_SKEW_Pos)                /*!< SysT
 981:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_TENMS_Pos             0U                                            /*!< SysT
 983:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick_CALIB_TENMS_Msk            (0xFFFFFFUL /*<< SysTick_CALIB_TENMS_Pos*/)    /*!< SysT
 984:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 985:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_SysTick */
 986:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 987:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 988:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
 989:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \ingroup  CMSIS_core_register
 990:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \defgroup CMSIS_ITM     Instrumentation Trace Macrocell (ITM)
 991:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief    Type definitions for the Instrumentation Trace Macrocell (ITM)
 992:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   @{
 993:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
 994:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
 995:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
 996:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief  Structure type to access the Instrumentation Trace Macrocell Register (ITM).
 997:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
 998:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** typedef struct
 999:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
1000:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __OM  union
1001:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   {
1002:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     __OM  uint8_t    u8;                 /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 8-bit */
1003:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     __OM  uint16_t   u16;                /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 16-bit */
1004:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     __OM  uint32_t   u32;                /*!< Offset: 0x000 ( /W)  ITM Stimulus Port 32-bit */
1005:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   }  PORT [32U];                         /*!< Offset: 0x000 ( /W)  ITM Stimulus Port Registers */
1006:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED0[864U];
1007:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t TER;                    /*!< Offset: 0xE00 (R/W)  ITM Trace Enable Register */
1008:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED1[15U];
1009:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t TPR;                    /*!< Offset: 0xE40 (R/W)  ITM Trace Privilege Register */
1010:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED2[15U];
1011:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t TCR;                    /*!< Offset: 0xE80 (R/W)  ITM Trace Control Register */
1012:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED3[29U];
1013:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __OM  uint32_t IWR;                    /*!< Offset: 0xEF8 ( /W)  ITM Integration Write Register *
1014:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t IRR;                    /*!< Offset: 0xEFC (R/ )  ITM Integration Read Register */
1015:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t IMCR;                   /*!< Offset: 0xF00 (R/W)  ITM Integration Mode Control Reg
1016:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED4[43U];
1017:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __OM  uint32_t LAR;                    /*!< Offset: 0xFB0 ( /W)  ITM Lock Access Register */
1018:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t LSR;                    /*!< Offset: 0xFB4 (R/ )  ITM Lock Status Register */
1019:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED5[6U];
1020:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t PID4;                   /*!< Offset: 0xFD0 (R/ )  ITM Peripheral Identification Re
1021:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t PID5;                   /*!< Offset: 0xFD4 (R/ )  ITM Peripheral Identification Re
1022:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t PID6;                   /*!< Offset: 0xFD8 (R/ )  ITM Peripheral Identification Re
1023:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t PID7;                   /*!< Offset: 0xFDC (R/ )  ITM Peripheral Identification Re
1024:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t PID0;                   /*!< Offset: 0xFE0 (R/ )  ITM Peripheral Identification Re
1025:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t PID1;                   /*!< Offset: 0xFE4 (R/ )  ITM Peripheral Identification Re
1026:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t PID2;                   /*!< Offset: 0xFE8 (R/ )  ITM Peripheral Identification Re
1027:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t PID3;                   /*!< Offset: 0xFEC (R/ )  ITM Peripheral Identification Re
1028:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t CID0;                   /*!< Offset: 0xFF0 (R/ )  ITM Component  Identification Re
1029:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t CID1;                   /*!< Offset: 0xFF4 (R/ )  ITM Component  Identification Re
1030:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t CID2;                   /*!< Offset: 0xFF8 (R/ )  ITM Component  Identification Re
1031:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t CID3;                   /*!< Offset: 0xFFC (R/ )  ITM Component  Identification Re
1032:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** } ITM_Type;
1033:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1034:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* ITM Trace Privilege Register Definitions */
1035:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TPR_PRIVMASK_Pos                0U                                            /*!< ITM 
1036:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TPR_PRIVMASK_Msk               (0xFUL /*<< ITM_TPR_PRIVMASK_Pos*/)            /*!< ITM 
1037:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1038:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* ITM Trace Control Register Definitions */
1039:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TCR_BUSY_Pos                   23U                                            /*!< ITM 
1040:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TCR_BUSY_Msk                   (1UL << ITM_TCR_BUSY_Pos)                      /*!< ITM 
1041:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1042:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TraceBusID_Pos             16U                                            /*!< ITM 
1043:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TraceBusID_Msk             (0x7FUL << ITM_TCR_TraceBusID_Pos)             /*!< ITM 
1044:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1045:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TCR_GTSFREQ_Pos                10U                                            /*!< ITM 
1046:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TCR_GTSFREQ_Msk                (3UL << ITM_TCR_GTSFREQ_Pos)                   /*!< ITM 
1047:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1048:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSPrescale_Pos              8U                                            /*!< ITM 
1049:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSPrescale_Msk             (3UL << ITM_TCR_TSPrescale_Pos)                /*!< ITM 
1050:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1051:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SWOENA_Pos                  4U                                            /*!< ITM 
1052:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SWOENA_Msk                 (1UL << ITM_TCR_SWOENA_Pos)                    /*!< ITM 
1053:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1054:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TCR_DWTENA_Pos                  3U                                            /*!< ITM 
1055:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TCR_DWTENA_Msk                 (1UL << ITM_TCR_DWTENA_Pos)                    /*!< ITM 
1056:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1057:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SYNCENA_Pos                 2U                                            /*!< ITM 
1058:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TCR_SYNCENA_Msk                (1UL << ITM_TCR_SYNCENA_Pos)                   /*!< ITM 
1059:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1060:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSENA_Pos                   1U                                            /*!< ITM 
1061:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TCR_TSENA_Msk                  (1UL << ITM_TCR_TSENA_Pos)                     /*!< ITM 
1062:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1063:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TCR_ITMENA_Pos                  0U                                            /*!< ITM 
1064:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_TCR_ITMENA_Msk                 (1UL /*<< ITM_TCR_ITMENA_Pos*/)                /*!< ITM 
1065:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1066:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* ITM Integration Write Register Definitions */
1067:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_IWR_ATVALIDM_Pos                0U                                            /*!< ITM 
1068:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_IWR_ATVALIDM_Msk               (1UL /*<< ITM_IWR_ATVALIDM_Pos*/)              /*!< ITM 
1069:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1070:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* ITM Integration Read Register Definitions */
1071:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_IRR_ATREADYM_Pos                0U                                            /*!< ITM 
1072:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_IRR_ATREADYM_Msk               (1UL /*<< ITM_IRR_ATREADYM_Pos*/)              /*!< ITM 
1073:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1074:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* ITM Integration Mode Control Register Definitions */
1075:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_IMCR_INTEGRATION_Pos            0U                                            /*!< ITM 
1076:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_IMCR_INTEGRATION_Msk           (1UL /*<< ITM_IMCR_INTEGRATION_Pos*/)          /*!< ITM 
1077:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1078:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* ITM Lock Status Register Definitions */
1079:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_LSR_ByteAcc_Pos                 2U                                            /*!< ITM 
1080:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_LSR_ByteAcc_Msk                (1UL << ITM_LSR_ByteAcc_Pos)                   /*!< ITM 
1081:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1082:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Access_Pos                  1U                                            /*!< ITM 
1083:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Access_Msk                 (1UL << ITM_LSR_Access_Pos)                    /*!< ITM 
1084:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1085:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Present_Pos                 0U                                            /*!< ITM 
1086:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_LSR_Present_Msk                (1UL /*<< ITM_LSR_Present_Pos*/)               /*!< ITM 
1087:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1088:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*@}*/ /* end of group CMSIS_ITM */
1089:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1090:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1091:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1092:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \ingroup  CMSIS_core_register
1093:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \defgroup CMSIS_DWT     Data Watchpoint and Trace (DWT)
1094:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief    Type definitions for the Data Watchpoint and Trace (DWT)
1095:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   @{
1096:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1097:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1098:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1099:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief  Structure type to access the Data Watchpoint and Trace Register (DWT).
1100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** typedef struct
1102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
1103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t CTRL;                   /*!< Offset: 0x000 (R/W)  Control Register */
1104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t CYCCNT;                 /*!< Offset: 0x004 (R/W)  Cycle Count Register */
1105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t CPICNT;                 /*!< Offset: 0x008 (R/W)  CPI Count Register */
1106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t EXCCNT;                 /*!< Offset: 0x00C (R/W)  Exception Overhead Count Registe
1107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t SLEEPCNT;               /*!< Offset: 0x010 (R/W)  Sleep Count Register */
1108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t LSUCNT;                 /*!< Offset: 0x014 (R/W)  LSU Count Register */
1109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t FOLDCNT;                /*!< Offset: 0x018 (R/W)  Folded-instruction Count Registe
1110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t PCSR;                   /*!< Offset: 0x01C (R/ )  Program Counter Sample Register 
1111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t COMP0;                  /*!< Offset: 0x020 (R/W)  Comparator Register 0 */
1112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t MASK0;                  /*!< Offset: 0x024 (R/W)  Mask Register 0 */
1113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t FUNCTION0;              /*!< Offset: 0x028 (R/W)  Function Register 0 */
1114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED0[1U];
1115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t COMP1;                  /*!< Offset: 0x030 (R/W)  Comparator Register 1 */
1116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t MASK1;                  /*!< Offset: 0x034 (R/W)  Mask Register 1 */
1117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t FUNCTION1;              /*!< Offset: 0x038 (R/W)  Function Register 1 */
1118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED1[1U];
1119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t COMP2;                  /*!< Offset: 0x040 (R/W)  Comparator Register 2 */
1120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t MASK2;                  /*!< Offset: 0x044 (R/W)  Mask Register 2 */
1121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t FUNCTION2;              /*!< Offset: 0x048 (R/W)  Function Register 2 */
1122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED2[1U];
1123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t COMP3;                  /*!< Offset: 0x050 (R/W)  Comparator Register 3 */
1124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t MASK3;                  /*!< Offset: 0x054 (R/W)  Mask Register 3 */
1125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t FUNCTION3;              /*!< Offset: 0x058 (R/W)  Function Register 3 */
1126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED3[981U];
1127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __OM  uint32_t LAR;                    /*!< Offset: 0xFB0 (  W)  Lock Access Register */
1128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t LSR;                    /*!< Offset: 0xFB4 (R  )  Lock Status Register */
1129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** } DWT_Type;
1130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* DWT Control Register Definitions */
1132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NUMCOMP_Pos               28U                                         /*!< DWT CTR
1133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NUMCOMP_Msk               (0xFUL << DWT_CTRL_NUMCOMP_Pos)             /*!< DWT CTR
1134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOTRCPKT_Pos              27U                                         /*!< DWT CTR
1136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOTRCPKT_Msk              (0x1UL << DWT_CTRL_NOTRCPKT_Pos)            /*!< DWT CTR
1137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOEXTTRIG_Pos             26U                                         /*!< DWT CTR
1139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOEXTTRIG_Msk             (0x1UL << DWT_CTRL_NOEXTTRIG_Pos)           /*!< DWT CTR
1140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOCYCCNT_Pos              25U                                         /*!< DWT CTR
1142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOCYCCNT_Msk              (0x1UL << DWT_CTRL_NOCYCCNT_Pos)            /*!< DWT CTR
1143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOPRFCNT_Pos              24U                                         /*!< DWT CTR
1145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_NOPRFCNT_Msk              (0x1UL << DWT_CTRL_NOPRFCNT_Pos)            /*!< DWT CTR
1146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCEVTENA_Pos             22U                                         /*!< DWT CTR
1148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCEVTENA_Msk             (0x1UL << DWT_CTRL_CYCEVTENA_Pos)           /*!< DWT CTR
1149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_FOLDEVTENA_Pos            21U                                         /*!< DWT CTR
1151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_FOLDEVTENA_Msk            (0x1UL << DWT_CTRL_FOLDEVTENA_Pos)          /*!< DWT CTR
1152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_LSUEVTENA_Pos             20U                                         /*!< DWT CTR
1154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_LSUEVTENA_Msk             (0x1UL << DWT_CTRL_LSUEVTENA_Pos)           /*!< DWT CTR
1155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SLEEPEVTENA_Pos           19U                                         /*!< DWT CTR
1157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SLEEPEVTENA_Msk           (0x1UL << DWT_CTRL_SLEEPEVTENA_Pos)         /*!< DWT CTR
1158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCEVTENA_Pos             18U                                         /*!< DWT CTR
1160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCEVTENA_Msk             (0x1UL << DWT_CTRL_EXCEVTENA_Pos)           /*!< DWT CTR
1161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CPIEVTENA_Pos             17U                                         /*!< DWT CTR
1163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CPIEVTENA_Msk             (0x1UL << DWT_CTRL_CPIEVTENA_Pos)           /*!< DWT CTR
1164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCTRCENA_Pos             16U                                         /*!< DWT CTR
1166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_EXCTRCENA_Msk             (0x1UL << DWT_CTRL_EXCTRCENA_Pos)           /*!< DWT CTR
1167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_PCSAMPLENA_Pos            12U                                         /*!< DWT CTR
1169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_PCSAMPLENA_Msk            (0x1UL << DWT_CTRL_PCSAMPLENA_Pos)          /*!< DWT CTR
1170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SYNCTAP_Pos               10U                                         /*!< DWT CTR
1172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_SYNCTAP_Msk               (0x3UL << DWT_CTRL_SYNCTAP_Pos)             /*!< DWT CTR
1173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCTAP_Pos                 9U                                         /*!< DWT CTR
1175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCTAP_Msk                (0x1UL << DWT_CTRL_CYCTAP_Pos)              /*!< DWT CTR
1176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTINIT_Pos               5U                                         /*!< DWT CTR
1178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTINIT_Msk              (0xFUL << DWT_CTRL_POSTINIT_Pos)            /*!< DWT CTR
1179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTPRESET_Pos             1U                                         /*!< DWT CTR
1181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_POSTPRESET_Msk            (0xFUL << DWT_CTRL_POSTPRESET_Pos)          /*!< DWT CTR
1182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCCNTENA_Pos              0U                                         /*!< DWT CTR
1184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CTRL_CYCCNTENA_Msk             (0x1UL /*<< DWT_CTRL_CYCCNTENA_Pos*/)       /*!< DWT CTR
1185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* DWT CPI Count Register Definitions */
1187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CPICNT_CPICNT_Pos               0U                                         /*!< DWT CPI
1188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_CPICNT_CPICNT_Msk              (0xFFUL /*<< DWT_CPICNT_CPICNT_Pos*/)       /*!< DWT CPI
1189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* DWT Exception Overhead Count Register Definitions */
1191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_EXCCNT_EXCCNT_Pos               0U                                         /*!< DWT EXC
1192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_EXCCNT_EXCCNT_Msk              (0xFFUL /*<< DWT_EXCCNT_EXCCNT_Pos*/)       /*!< DWT EXC
1193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* DWT Sleep Count Register Definitions */
1195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_SLEEPCNT_SLEEPCNT_Pos           0U                                         /*!< DWT SLE
1196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_SLEEPCNT_SLEEPCNT_Msk          (0xFFUL /*<< DWT_SLEEPCNT_SLEEPCNT_Pos*/)   /*!< DWT SLE
1197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* DWT LSU Count Register Definitions */
1199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_LSUCNT_LSUCNT_Pos               0U                                         /*!< DWT LSU
1200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_LSUCNT_LSUCNT_Msk              (0xFFUL /*<< DWT_LSUCNT_LSUCNT_Pos*/)       /*!< DWT LSU
1201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* DWT Folded-instruction Count Register Definitions */
1203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FOLDCNT_FOLDCNT_Pos             0U                                         /*!< DWT FOL
1204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FOLDCNT_FOLDCNT_Msk            (0xFFUL /*<< DWT_FOLDCNT_FOLDCNT_Pos*/)     /*!< DWT FOL
1205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* DWT Comparator Mask Register Definitions */
1207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_MASK_MASK_Pos                   0U                                         /*!< DWT MAS
1208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_MASK_MASK_Msk                  (0x1FUL /*<< DWT_MASK_MASK_Pos*/)           /*!< DWT MAS
1209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* DWT Comparator Function Register Definitions */
1211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_MATCHED_Pos           24U                                         /*!< DWT FUN
1212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_MATCHED_Msk           (0x1UL << DWT_FUNCTION_MATCHED_Pos)         /*!< DWT FUN
1213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR1_Pos        16U                                         /*!< DWT FUN
1215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR1_Msk        (0xFUL << DWT_FUNCTION_DATAVADDR1_Pos)      /*!< DWT FUN
1216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR0_Pos        12U                                         /*!< DWT FUN
1218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVADDR0_Msk        (0xFUL << DWT_FUNCTION_DATAVADDR0_Pos)      /*!< DWT FUN
1219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVSIZE_Pos         10U                                         /*!< DWT FUN
1221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVSIZE_Msk         (0x3UL << DWT_FUNCTION_DATAVSIZE_Pos)       /*!< DWT FUN
1222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1223:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_LNK1ENA_Pos            9U                                         /*!< DWT FUN
1224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_LNK1ENA_Msk           (0x1UL << DWT_FUNCTION_LNK1ENA_Pos)         /*!< DWT FUN
1225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVMATCH_Pos         8U                                         /*!< DWT FUN
1227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_DATAVMATCH_Msk        (0x1UL << DWT_FUNCTION_DATAVMATCH_Pos)      /*!< DWT FUN
1228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1229:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_CYCMATCH_Pos           7U                                         /*!< DWT FUN
1230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_CYCMATCH_Msk          (0x1UL << DWT_FUNCTION_CYCMATCH_Pos)        /*!< DWT FUN
1231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_EMITRANGE_Pos          5U                                         /*!< DWT FUN
1233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_EMITRANGE_Msk         (0x1UL << DWT_FUNCTION_EMITRANGE_Pos)       /*!< DWT FUN
1234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_FUNCTION_Pos           0U                                         /*!< DWT FUN
1236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_FUNCTION_FUNCTION_Msk          (0xFUL /*<< DWT_FUNCTION_FUNCTION_Pos*/)    /*!< DWT FUN
1237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*@}*/ /* end of group CMSIS_DWT */
1239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \ingroup  CMSIS_core_register
1243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \defgroup CMSIS_TPI     Trace Port Interface (TPI)
1244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief    Type definitions for the Trace Port Interface (TPI)
1245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   @{
1246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief  Structure type to access the Trace Port Interface Register (TPI).
1250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** typedef struct
1252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
1253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t SSPSR;                  /*!< Offset: 0x000 (R/ )  Supported Parallel Port Size Reg
1254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t CSPSR;                  /*!< Offset: 0x004 (R/W)  Current Parallel Port Size Regis
1255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED0[2U];
1256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t ACPR;                   /*!< Offset: 0x010 (R/W)  Asynchronous Clock Prescaler Reg
1257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED1[55U];
1258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t SPPR;                   /*!< Offset: 0x0F0 (R/W)  Selected Pin Protocol Register *
1259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED2[131U];
1260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t FFSR;                   /*!< Offset: 0x300 (R/ )  Formatter and Flush Status Regis
1261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t FFCR;                   /*!< Offset: 0x304 (R/W)  Formatter and Flush Control Regi
1262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t FSCR;                   /*!< Offset: 0x308 (R/ )  Formatter Synchronization Counte
1263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED3[759U];
1264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t TRIGGER;                /*!< Offset: 0xEE8 (R/ )  TRIGGER */
1265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t FIFO0;                  /*!< Offset: 0xEEC (R/ )  Integration ETM Data */
1266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t ITATBCTR2;              /*!< Offset: 0xEF0 (R/ )  ITATBCTR2 */
1267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED4[1U];
1268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t ITATBCTR0;              /*!< Offset: 0xEF8 (R/ )  ITATBCTR0 */
1269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t FIFO1;                  /*!< Offset: 0xEFC (R/ )  Integration ITM Data */
1270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t ITCTRL;                 /*!< Offset: 0xF00 (R/W)  Integration Mode Control */
1271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED5[39U];
1272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t CLAIMSET;               /*!< Offset: 0xFA0 (R/W)  Claim tag set */
1273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t CLAIMCLR;               /*!< Offset: 0xFA4 (R/W)  Claim tag clear */
1274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED7[8U];
1275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t DEVID;                  /*!< Offset: 0xFC8 (R/ )  TPIU_DEVID */
1276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t DEVTYPE;                /*!< Offset: 0xFCC (R/ )  TPIU_DEVTYPE */
1277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** } TPI_Type;
1278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1279:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* TPI Asynchronous Clock Prescaler Register Definitions */
1280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_ACPR_PRESCALER_Pos              0U                                         /*!< TPI ACP
1281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_ACPR_PRESCALER_Msk             (0x1FFFUL /*<< TPI_ACPR_PRESCALER_Pos*/)    /*!< TPI ACP
1282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1283:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* TPI Selected Pin Protocol Register Definitions */
1284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_SPPR_TXMODE_Pos                 0U                                         /*!< TPI SPP
1285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_SPPR_TXMODE_Msk                (0x3UL /*<< TPI_SPPR_TXMODE_Pos*/)          /*!< TPI SPP
1286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* TPI Formatter and Flush Status Register Definitions */
1288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtNonStop_Pos              3U                                         /*!< TPI FFS
1289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtNonStop_Msk             (0x1UL << TPI_FFSR_FtNonStop_Pos)           /*!< TPI FFS
1290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_TCPresent_Pos              2U                                         /*!< TPI FFS
1292:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_TCPresent_Msk             (0x1UL << TPI_FFSR_TCPresent_Pos)           /*!< TPI FFS
1293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtStopped_Pos              1U                                         /*!< TPI FFS
1295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FtStopped_Msk             (0x1UL << TPI_FFSR_FtStopped_Pos)           /*!< TPI FFS
1296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FlInProg_Pos               0U                                         /*!< TPI FFS
1298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FFSR_FlInProg_Msk              (0x1UL /*<< TPI_FFSR_FlInProg_Pos*/)        /*!< TPI FFS
1299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* TPI Formatter and Flush Control Register Definitions */
1301:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_TrigIn_Pos                 8U                                         /*!< TPI FFC
1302:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_TrigIn_Msk                (0x1UL << TPI_FFCR_TrigIn_Pos)              /*!< TPI FFC
1303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_EnFCont_Pos                1U                                         /*!< TPI FFC
1305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FFCR_EnFCont_Msk               (0x1UL << TPI_FFCR_EnFCont_Pos)             /*!< TPI FFC
1306:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* TPI TRIGGER Register Definitions */
1308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_TRIGGER_TRIGGER_Pos             0U                                         /*!< TPI TRI
1309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_TRIGGER_TRIGGER_Msk            (0x1UL /*<< TPI_TRIGGER_TRIGGER_Pos*/)      /*!< TPI TRI
1310:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* TPI Integration ETM Data Register Definitions (FIFO0) */
1312:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_ATVALID_Pos          29U                                         /*!< TPI FIF
1313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_ATVALID_Msk          (0x3UL << TPI_FIFO0_ITM_ATVALID_Pos)        /*!< TPI FIF
1314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1315:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_bytecount_Pos        27U                                         /*!< TPI FIF
1316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ITM_bytecount_Msk        (0x3UL << TPI_FIFO0_ITM_bytecount_Pos)      /*!< TPI FIF
1317:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_ATVALID_Pos          26U                                         /*!< TPI FIF
1319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_ATVALID_Msk          (0x3UL << TPI_FIFO0_ETM_ATVALID_Pos)        /*!< TPI FIF
1320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1321:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_bytecount_Pos        24U                                         /*!< TPI FIF
1322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM_bytecount_Msk        (0x3UL << TPI_FIFO0_ETM_bytecount_Pos)      /*!< TPI FIF
1323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1324:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM2_Pos                 16U                                         /*!< TPI FIF
1325:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM2_Msk                 (0xFFUL << TPI_FIFO0_ETM2_Pos)              /*!< TPI FIF
1326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM1_Pos                  8U                                         /*!< TPI FIF
1328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM1_Msk                 (0xFFUL << TPI_FIFO0_ETM1_Pos)              /*!< TPI FIF
1329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM0_Pos                  0U                                         /*!< TPI FIF
1331:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO0_ETM0_Msk                 (0xFFUL /*<< TPI_FIFO0_ETM0_Pos*/)          /*!< TPI FIF
1332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* TPI ITATBCTR2 Register Definitions */
1334:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR2_ATREADY_Pos           0U                                         /*!< TPI ITA
1335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR2_ATREADY_Msk          (0x1UL /*<< TPI_ITATBCTR2_ATREADY_Pos*/)    /*!< TPI ITA
1336:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* TPI Integration ITM Data Register Definitions (FIFO1) */
1338:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_ATVALID_Pos          29U                                         /*!< TPI FIF
1339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_ATVALID_Msk          (0x3UL << TPI_FIFO1_ITM_ATVALID_Pos)        /*!< TPI FIF
1340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1341:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_bytecount_Pos        27U                                         /*!< TPI FIF
1342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM_bytecount_Msk        (0x3UL << TPI_FIFO1_ITM_bytecount_Pos)      /*!< TPI FIF
1343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1344:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_ATVALID_Pos          26U                                         /*!< TPI FIF
1345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_ATVALID_Msk          (0x3UL << TPI_FIFO1_ETM_ATVALID_Pos)        /*!< TPI FIF
1346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1347:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_bytecount_Pos        24U                                         /*!< TPI FIF
1348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ETM_bytecount_Msk        (0x3UL << TPI_FIFO1_ETM_bytecount_Pos)      /*!< TPI FIF
1349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM2_Pos                 16U                                         /*!< TPI FIF
1351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM2_Msk                 (0xFFUL << TPI_FIFO1_ITM2_Pos)              /*!< TPI FIF
1352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM1_Pos                  8U                                         /*!< TPI FIF
1354:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM1_Msk                 (0xFFUL << TPI_FIFO1_ITM1_Pos)              /*!< TPI FIF
1355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM0_Pos                  0U                                         /*!< TPI FIF
1357:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_FIFO1_ITM0_Msk                 (0xFFUL /*<< TPI_FIFO1_ITM0_Pos*/)          /*!< TPI FIF
1358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1359:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* TPI ITATBCTR0 Register Definitions */
1360:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR0_ATREADY_Pos           0U                                         /*!< TPI ITA
1361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_ITATBCTR0_ATREADY_Msk          (0x1UL /*<< TPI_ITATBCTR0_ATREADY_Pos*/)    /*!< TPI ITA
1362:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* TPI Integration Mode Control Register Definitions */
1364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_ITCTRL_Mode_Pos                 0U                                         /*!< TPI ITC
1365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_ITCTRL_Mode_Msk                (0x1UL /*<< TPI_ITCTRL_Mode_Pos*/)          /*!< TPI ITC
1366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* TPI DEVID Register Definitions */
1368:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NRZVALID_Pos             11U                                         /*!< TPI DEV
1369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NRZVALID_Msk             (0x1UL << TPI_DEVID_NRZVALID_Pos)           /*!< TPI DEV
1370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MANCVALID_Pos            10U                                         /*!< TPI DEV
1372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MANCVALID_Msk            (0x1UL << TPI_DEVID_MANCVALID_Pos)          /*!< TPI DEV
1373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_PTINVALID_Pos             9U                                         /*!< TPI DEV
1375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_PTINVALID_Msk            (0x1UL << TPI_DEVID_PTINVALID_Pos)          /*!< TPI DEV
1376:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1377:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MinBufSz_Pos              6U                                         /*!< TPI DEV
1378:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_MinBufSz_Msk             (0x7UL << TPI_DEVID_MinBufSz_Pos)           /*!< TPI DEV
1379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1380:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_AsynClkIn_Pos             5U                                         /*!< TPI DEV
1381:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_AsynClkIn_Msk            (0x1UL << TPI_DEVID_AsynClkIn_Pos)          /*!< TPI DEV
1382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NrTraceInput_Pos          0U                                         /*!< TPI DEV
1384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_DEVID_NrTraceInput_Msk         (0x1FUL /*<< TPI_DEVID_NrTraceInput_Pos*/)  /*!< TPI DEV
1385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* TPI DEVTYPE Register Definitions */
1387:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_MajorType_Pos           4U                                         /*!< TPI DEV
1388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_MajorType_Msk          (0xFUL << TPI_DEVTYPE_MajorType_Pos)        /*!< TPI DEV
1389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_SubType_Pos             0U                                         /*!< TPI DEV
1391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_DEVTYPE_SubType_Msk            (0xFUL /*<< TPI_DEVTYPE_SubType_Pos*/)      /*!< TPI DEV
1392:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*@}*/ /* end of group CMSIS_TPI */
1394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1395:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1396:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #if (__MPU_PRESENT == 1U)
1397:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \ingroup  CMSIS_core_register
1399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \defgroup CMSIS_MPU     Memory Protection Unit (MPU)
1400:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief    Type definitions for the Memory Protection Unit (MPU)
1401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   @{
1402:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1403:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1405:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief  Structure type to access the Memory Protection Unit (MPU).
1406:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1407:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** typedef struct
1408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
1409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t TYPE;                   /*!< Offset: 0x000 (R/ )  MPU Type Register */
1410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t CTRL;                   /*!< Offset: 0x004 (R/W)  MPU Control Register */
1411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t RNR;                    /*!< Offset: 0x008 (R/W)  MPU Region RNRber Register */
1412:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t RBAR;                   /*!< Offset: 0x00C (R/W)  MPU Region Base Address Register
1413:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t RASR;                   /*!< Offset: 0x010 (R/W)  MPU Region Attribute and Size Re
1414:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t RBAR_A1;                /*!< Offset: 0x014 (R/W)  MPU Alias 1 Region Base Address 
1415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t RASR_A1;                /*!< Offset: 0x018 (R/W)  MPU Alias 1 Region Attribute and
1416:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t RBAR_A2;                /*!< Offset: 0x01C (R/W)  MPU Alias 2 Region Base Address 
1417:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t RASR_A2;                /*!< Offset: 0x020 (R/W)  MPU Alias 2 Region Attribute and
1418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t RBAR_A3;                /*!< Offset: 0x024 (R/W)  MPU Alias 3 Region Base Address 
1419:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t RASR_A3;                /*!< Offset: 0x028 (R/W)  MPU Alias 3 Region Attribute and
1420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** } MPU_Type;
1421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* MPU Type Register Definitions */
1423:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_IREGION_Pos               16U                                            /*!< MPU 
1424:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_IREGION_Msk               (0xFFUL << MPU_TYPE_IREGION_Pos)               /*!< MPU 
1425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_DREGION_Pos                8U                                            /*!< MPU 
1427:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_DREGION_Msk               (0xFFUL << MPU_TYPE_DREGION_Pos)               /*!< MPU 
1428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_SEPARATE_Pos               0U                                            /*!< MPU 
1430:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_TYPE_SEPARATE_Msk              (1UL /*<< MPU_TYPE_SEPARATE_Pos*/)             /*!< MPU 
1431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1432:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* MPU Control Register Definitions */
1433:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_PRIVDEFENA_Pos             2U                                            /*!< MPU 
1434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_PRIVDEFENA_Msk            (1UL << MPU_CTRL_PRIVDEFENA_Pos)               /*!< MPU 
1435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1436:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_HFNMIENA_Pos               1U                                            /*!< MPU 
1437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_HFNMIENA_Msk              (1UL << MPU_CTRL_HFNMIENA_Pos)                 /*!< MPU 
1438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1439:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_ENABLE_Pos                 0U                                            /*!< MPU 
1440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_CTRL_ENABLE_Msk                (1UL /*<< MPU_CTRL_ENABLE_Pos*/)               /*!< MPU 
1441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1442:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* MPU Region Number Register Definitions */
1443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RNR_REGION_Pos                  0U                                            /*!< MPU 
1444:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RNR_REGION_Msk                 (0xFFUL /*<< MPU_RNR_REGION_Pos*/)             /*!< MPU 
1445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* MPU Region Base Address Register Definitions */
1447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_ADDR_Pos                   5U                                            /*!< MPU 
1448:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_ADDR_Msk                  (0x7FFFFFFUL << MPU_RBAR_ADDR_Pos)             /*!< MPU 
1449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1450:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_VALID_Pos                  4U                                            /*!< MPU 
1451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_VALID_Msk                 (1UL << MPU_RBAR_VALID_Pos)                    /*!< MPU 
1452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_REGION_Pos                 0U                                            /*!< MPU 
1454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RBAR_REGION_Msk                (0xFUL /*<< MPU_RBAR_REGION_Pos*/)             /*!< MPU 
1455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1456:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* MPU Region Attribute and Size Register Definitions */
1457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ATTRS_Pos                 16U                                            /*!< MPU 
1458:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ATTRS_Msk                 (0xFFFFUL << MPU_RASR_ATTRS_Pos)               /*!< MPU 
1459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1460:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_XN_Pos                    28U                                            /*!< MPU 
1461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_XN_Msk                    (1UL << MPU_RASR_XN_Pos)                       /*!< MPU 
1462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1463:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_AP_Pos                    24U                                            /*!< MPU 
1464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_AP_Msk                    (0x7UL << MPU_RASR_AP_Pos)                     /*!< MPU 
1465:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_TEX_Pos                   19U                                            /*!< MPU 
1467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_TEX_Msk                   (0x7UL << MPU_RASR_TEX_Pos)                    /*!< MPU 
1468:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_S_Pos                     18U                                            /*!< MPU 
1470:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_S_Msk                     (1UL << MPU_RASR_S_Pos)                        /*!< MPU 
1471:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1472:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_C_Pos                     17U                                            /*!< MPU 
1473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_C_Msk                     (1UL << MPU_RASR_C_Pos)                        /*!< MPU 
1474:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1475:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_B_Pos                     16U                                            /*!< MPU 
1476:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_B_Msk                     (1UL << MPU_RASR_B_Pos)                        /*!< MPU 
1477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SRD_Pos                    8U                                            /*!< MPU 
1479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SRD_Msk                   (0xFFUL << MPU_RASR_SRD_Pos)                   /*!< MPU 
1480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SIZE_Pos                   1U                                            /*!< MPU 
1482:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_SIZE_Msk                  (0x1FUL << MPU_RASR_SIZE_Pos)                  /*!< MPU 
1483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1484:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ENABLE_Pos                 0U                                            /*!< MPU 
1485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define MPU_RASR_ENABLE_Msk                (1UL /*<< MPU_RASR_ENABLE_Pos*/)               /*!< MPU 
1486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_MPU */
1488:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #endif
1489:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #if (__FPU_PRESENT == 1U)
1492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1493:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \ingroup  CMSIS_core_register
1494:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \defgroup CMSIS_FPU     Floating Point Unit (FPU)
1495:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief    Type definitions for the Floating Point Unit (FPU)
1496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   @{
1497:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1498:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1499:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief  Structure type to access the Floating Point Unit (FPU).
1501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1502:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** typedef struct
1503:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
1504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         uint32_t RESERVED0[1U];
1505:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t FPCCR;                  /*!< Offset: 0x004 (R/W)  Floating-Point Context Control R
1506:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t FPCAR;                  /*!< Offset: 0x008 (R/W)  Floating-Point Context Address R
1507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t FPDSCR;                 /*!< Offset: 0x00C (R/W)  Floating-Point Default Status Co
1508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t MVFR0;                  /*!< Offset: 0x010 (R/ )  Media and FP Feature Register 0 
1509:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t MVFR1;                  /*!< Offset: 0x014 (R/ )  Media and FP Feature Register 1 
1510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IM  uint32_t MVFR2;                  /*!< Offset: 0x018 (R/ )  Media and FP Feature Register 2 
1511:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** } FPU_Type;
1512:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1513:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* Floating-Point Context Control Register Definitions */
1514:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_ASPEN_Pos                31U                                            /*!< FPCC
1515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_ASPEN_Msk                (1UL << FPU_FPCCR_ASPEN_Pos)                   /*!< FPCC
1516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1517:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPEN_Pos                30U                                            /*!< FPCC
1518:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPEN_Msk                (1UL << FPU_FPCCR_LSPEN_Pos)                   /*!< FPCC
1519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1520:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MONRDY_Pos                8U                                            /*!< FPCC
1521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MONRDY_Msk               (1UL << FPU_FPCCR_MONRDY_Pos)                  /*!< FPCC
1522:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_BFRDY_Pos                 6U                                            /*!< FPCC
1524:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_BFRDY_Msk                (1UL << FPU_FPCCR_BFRDY_Pos)                   /*!< FPCC
1525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1526:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MMRDY_Pos                 5U                                            /*!< FPCC
1527:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_MMRDY_Msk                (1UL << FPU_FPCCR_MMRDY_Pos)                   /*!< FPCC
1528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1529:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_HFRDY_Pos                 4U                                            /*!< FPCC
1530:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_HFRDY_Msk                (1UL << FPU_FPCCR_HFRDY_Pos)                   /*!< FPCC
1531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1532:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_THREAD_Pos                3U                                            /*!< FPCC
1533:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_THREAD_Msk               (1UL << FPU_FPCCR_THREAD_Pos)                  /*!< FPCC
1534:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1535:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_USER_Pos                  1U                                            /*!< FPCC
1536:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_USER_Msk                 (1UL << FPU_FPCCR_USER_Pos)                    /*!< FPCC
1537:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1538:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPACT_Pos                0U                                            /*!< FPCC
1539:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCCR_LSPACT_Msk               (1UL /*<< FPU_FPCCR_LSPACT_Pos*/)              /*!< FPCC
1540:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1541:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* Floating-Point Context Address Register Definitions */
1542:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCAR_ADDRESS_Pos               3U                                            /*!< FPCA
1543:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPCAR_ADDRESS_Msk              (0x1FFFFFFFUL << FPU_FPCAR_ADDRESS_Pos)        /*!< FPCA
1544:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1545:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* Floating-Point Default Status Control Register Definitions */
1546:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_AHP_Pos                 26U                                            /*!< FPDS
1547:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_AHP_Msk                 (1UL << FPU_FPDSCR_AHP_Pos)                    /*!< FPDS
1548:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1549:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_DN_Pos                  25U                                            /*!< FPDS
1550:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_DN_Msk                  (1UL << FPU_FPDSCR_DN_Pos)                     /*!< FPDS
1551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1552:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_FZ_Pos                  24U                                            /*!< FPDS
1553:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_FZ_Msk                  (1UL << FPU_FPDSCR_FZ_Pos)                     /*!< FPDS
1554:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1555:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_RMode_Pos               22U                                            /*!< FPDS
1556:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_FPDSCR_RMode_Msk               (3UL << FPU_FPDSCR_RMode_Pos)                  /*!< FPDS
1557:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1558:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* Media and FP Feature Register 0 Definitions */
1559:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_rounding_modes_Pos    28U                                            /*!< MVFR
1560:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_rounding_modes_Msk    (0xFUL << FPU_MVFR0_FP_rounding_modes_Pos)     /*!< MVFR
1561:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1562:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Short_vectors_Pos        24U                                            /*!< MVFR
1563:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Short_vectors_Msk        (0xFUL << FPU_MVFR0_Short_vectors_Pos)         /*!< MVFR
1564:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1565:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Square_root_Pos          20U                                            /*!< MVFR
1566:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Square_root_Msk          (0xFUL << FPU_MVFR0_Square_root_Pos)           /*!< MVFR
1567:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1568:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Divide_Pos               16U                                            /*!< MVFR
1569:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Divide_Msk               (0xFUL << FPU_MVFR0_Divide_Pos)                /*!< MVFR
1570:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1571:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_excep_trapping_Pos    12U                                            /*!< MVFR
1572:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_FP_excep_trapping_Msk    (0xFUL << FPU_MVFR0_FP_excep_trapping_Pos)     /*!< MVFR
1573:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1574:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Double_precision_Pos      8U                                            /*!< MVFR
1575:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Double_precision_Msk     (0xFUL << FPU_MVFR0_Double_precision_Pos)      /*!< MVFR
1576:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1577:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Single_precision_Pos      4U                                            /*!< MVFR
1578:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_Single_precision_Msk     (0xFUL << FPU_MVFR0_Single_precision_Pos)      /*!< MVFR
1579:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1580:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_A_SIMD_registers_Pos      0U                                            /*!< MVFR
1581:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR0_A_SIMD_registers_Msk     (0xFUL /*<< FPU_MVFR0_A_SIMD_registers_Pos*/)  /*!< MVFR
1582:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1583:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* Media and FP Feature Register 1 Definitions */
1584:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_fused_MAC_Pos         28U                                            /*!< MVFR
1585:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_fused_MAC_Msk         (0xFUL << FPU_MVFR1_FP_fused_MAC_Pos)          /*!< MVFR
1586:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1587:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_HPFP_Pos              24U                                            /*!< MVFR
1588:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FP_HPFP_Msk              (0xFUL << FPU_MVFR1_FP_HPFP_Pos)               /*!< MVFR
1589:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1590:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_D_NaN_mode_Pos            4U                                            /*!< MVFR
1591:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_D_NaN_mode_Msk           (0xFUL << FPU_MVFR1_D_NaN_mode_Pos)            /*!< MVFR
1592:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1593:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FtZ_mode_Pos              0U                                            /*!< MVFR
1594:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define FPU_MVFR1_FtZ_mode_Msk             (0xFUL /*<< FPU_MVFR1_FtZ_mode_Pos*/)          /*!< MVFR
1595:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1596:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* Media and FP Feature Register 2 Definitions */
1597:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1598:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_FPU */
1599:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #endif
1600:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1601:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1602:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1603:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \ingroup  CMSIS_core_register
1604:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \defgroup CMSIS_CoreDebug       Core Debug Registers (CoreDebug)
1605:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief    Type definitions for the Core Debug Registers
1606:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   @{
1607:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1608:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1609:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1610:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief  Structure type to access the Core Debug Register (CoreDebug).
1611:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** typedef struct
1613:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
1614:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t DHCSR;                  /*!< Offset: 0x000 (R/W)  Debug Halting Control and Status
1615:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __OM  uint32_t DCRSR;                  /*!< Offset: 0x004 ( /W)  Debug Core Register Selector Reg
1616:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t DCRDR;                  /*!< Offset: 0x008 (R/W)  Debug Core Register Data Registe
1617:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __IOM uint32_t DEMCR;                  /*!< Offset: 0x00C (R/W)  Debug Exception and Monitor Cont
1618:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** } CoreDebug_Type;
1619:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1620:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* Debug Halting Control and Status Register Definitions */
1621:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_DBGKEY_Pos         16U                                            /*!< Core
1622:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_DBGKEY_Msk         (0xFFFFUL << CoreDebug_DHCSR_DBGKEY_Pos)       /*!< Core
1623:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1624:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RESET_ST_Pos     25U                                            /*!< Core
1625:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RESET_ST_Msk     (1UL << CoreDebug_DHCSR_S_RESET_ST_Pos)        /*!< Core
1626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1627:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Pos    24U                                            /*!< Core
1628:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_RETIRE_ST_Msk    (1UL << CoreDebug_DHCSR_S_RETIRE_ST_Pos)       /*!< Core
1629:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1630:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_LOCKUP_Pos       19U                                            /*!< Core
1631:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_LOCKUP_Msk       (1UL << CoreDebug_DHCSR_S_LOCKUP_Pos)          /*!< Core
1632:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1633:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_SLEEP_Pos        18U                                            /*!< Core
1634:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_SLEEP_Msk        (1UL << CoreDebug_DHCSR_S_SLEEP_Pos)           /*!< Core
1635:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1636:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_HALT_Pos         17U                                            /*!< Core
1637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_HALT_Msk         (1UL << CoreDebug_DHCSR_S_HALT_Pos)            /*!< Core
1638:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1639:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_REGRDY_Pos       16U                                            /*!< Core
1640:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_S_REGRDY_Msk       (1UL << CoreDebug_DHCSR_S_REGRDY_Pos)          /*!< Core
1641:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1642:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_SNAPSTALL_Pos     5U                                            /*!< Core
1643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_SNAPSTALL_Msk    (1UL << CoreDebug_DHCSR_C_SNAPSTALL_Pos)       /*!< Core
1644:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1645:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_MASKINTS_Pos      3U                                            /*!< Core
1646:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_MASKINTS_Msk     (1UL << CoreDebug_DHCSR_C_MASKINTS_Pos)        /*!< Core
1647:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1648:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_STEP_Pos          2U                                            /*!< Core
1649:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_STEP_Msk         (1UL << CoreDebug_DHCSR_C_STEP_Pos)            /*!< Core
1650:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1651:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_HALT_Pos          1U                                            /*!< Core
1652:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_HALT_Msk         (1UL << CoreDebug_DHCSR_C_HALT_Pos)            /*!< Core
1653:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1654:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Pos       0U                                            /*!< Core
1655:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DHCSR_C_DEBUGEN_Msk      (1UL /*<< CoreDebug_DHCSR_C_DEBUGEN_Pos*/)     /*!< Core
1656:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1657:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* Debug Core Register Selector Register Definitions */
1658:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGWnR_Pos         16U                                            /*!< Core
1659:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGWnR_Msk         (1UL << CoreDebug_DCRSR_REGWnR_Pos)            /*!< Core
1660:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1661:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGSEL_Pos          0U                                            /*!< Core
1662:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DCRSR_REGSEL_Msk         (0x1FUL /*<< CoreDebug_DCRSR_REGSEL_Pos*/)     /*!< Core
1663:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1664:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* Debug Exception and Monitor Control Register Definitions */
1665:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_TRCENA_Pos         24U                                            /*!< Core
1666:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_TRCENA_Msk         (1UL << CoreDebug_DEMCR_TRCENA_Pos)            /*!< Core
1667:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1668:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_REQ_Pos        19U                                            /*!< Core
1669:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_REQ_Msk        (1UL << CoreDebug_DEMCR_MON_REQ_Pos)           /*!< Core
1670:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1671:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_STEP_Pos       18U                                            /*!< Core
1672:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_STEP_Msk       (1UL << CoreDebug_DEMCR_MON_STEP_Pos)          /*!< Core
1673:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1674:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_PEND_Pos       17U                                            /*!< Core
1675:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_PEND_Msk       (1UL << CoreDebug_DEMCR_MON_PEND_Pos)          /*!< Core
1676:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1677:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_EN_Pos         16U                                            /*!< Core
1678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_MON_EN_Msk         (1UL << CoreDebug_DEMCR_MON_EN_Pos)            /*!< Core
1679:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1680:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_HARDERR_Pos     10U                                            /*!< Core
1681:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_HARDERR_Msk     (1UL << CoreDebug_DEMCR_VC_HARDERR_Pos)        /*!< Core
1682:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1683:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_INTERR_Pos       9U                                            /*!< Core
1684:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_INTERR_Msk      (1UL << CoreDebug_DEMCR_VC_INTERR_Pos)         /*!< Core
1685:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1686:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_BUSERR_Pos       8U                                            /*!< Core
1687:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_BUSERR_Msk      (1UL << CoreDebug_DEMCR_VC_BUSERR_Pos)         /*!< Core
1688:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1689:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_STATERR_Pos      7U                                            /*!< Core
1690:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_STATERR_Msk     (1UL << CoreDebug_DEMCR_VC_STATERR_Pos)        /*!< Core
1691:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1692:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CHKERR_Pos       6U                                            /*!< Core
1693:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CHKERR_Msk      (1UL << CoreDebug_DEMCR_VC_CHKERR_Pos)         /*!< Core
1694:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1695:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_NOCPERR_Pos      5U                                            /*!< Core
1696:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_NOCPERR_Msk     (1UL << CoreDebug_DEMCR_VC_NOCPERR_Pos)        /*!< Core
1697:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1698:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_MMERR_Pos        4U                                            /*!< Core
1699:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_MMERR_Msk       (1UL << CoreDebug_DEMCR_VC_MMERR_Pos)          /*!< Core
1700:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1701:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CORERESET_Pos    0U                                            /*!< Core
1702:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_DEMCR_VC_CORERESET_Msk   (1UL /*<< CoreDebug_DEMCR_VC_CORERESET_Pos*/)  /*!< Core
1703:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1704:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_CoreDebug */
1705:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1706:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1707:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1708:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \ingroup    CMSIS_core_register
1709:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \defgroup   CMSIS_core_bitfield     Core register bit field macros
1710:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief      Macros for use with bit field definitions (xxx_Pos, xxx_Msk).
1711:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   @{
1712:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1713:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1714:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1715:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief   Mask and shift a bit field value for use in a register bit range.
1716:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param[in] field  Name of the register bit field.
1717:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param[in] value  Value of the bit field.
1718:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \return           Masked and shifted value.
1719:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** */
1720:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define _VAL2FLD(field, value)    ((value << field ## _Pos) & field ## _Msk)
1721:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1722:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1723:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief     Mask and shift a register value to extract a bit filed value.
1724:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param[in] field  Name of the register bit field.
1725:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param[in] value  Value of register.
1726:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \return           Masked and shifted bit field value.
1727:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** */
1728:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define _FLD2VAL(field, value)    ((value & field ## _Msk) >> field ## _Pos)
1729:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1730:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*@} end of group CMSIS_core_bitfield */
1731:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1732:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1733:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1734:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \ingroup    CMSIS_core_register
1735:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \defgroup   CMSIS_core_base     Core Definitions
1736:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief      Definitions for base addresses, unions, and structures.
1737:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   @{
1738:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1739:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1740:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* Memory mapping of Cortex-M4 Hardware */
1741:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCS_BASE            (0xE000E000UL)                            /*!< System Control Space Bas
1742:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM_BASE            (0xE0000000UL)                            /*!< ITM Base Address */
1743:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT_BASE            (0xE0001000UL)                            /*!< DWT Base Address */
1744:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI_BASE            (0xE0040000UL)                            /*!< TPI Base Address */
1745:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug_BASE      (0xE000EDF0UL)                            /*!< Core Debug Base Address 
1746:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick_BASE        (SCS_BASE +  0x0010UL)                    /*!< SysTick Base Address */
1747:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define NVIC_BASE           (SCS_BASE +  0x0100UL)                    /*!< NVIC Base Address */
1748:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB_BASE            (SCS_BASE +  0x0D00UL)                    /*!< System Control Block Bas
1749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1750:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCnSCB              ((SCnSCB_Type    *)     SCS_BASE      )   /*!< System control Register 
1751:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SCB                 ((SCB_Type       *)     SCB_BASE      )   /*!< SCB configuration struct
1752:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define SysTick             ((SysTick_Type   *)     SysTick_BASE  )   /*!< SysTick configuration st
1753:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define NVIC                ((NVIC_Type      *)     NVIC_BASE     )   /*!< NVIC configuration struc
1754:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define ITM                 ((ITM_Type       *)     ITM_BASE      )   /*!< ITM configuration struct
1755:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define DWT                 ((DWT_Type       *)     DWT_BASE      )   /*!< DWT configuration struct
1756:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define TPI                 ((TPI_Type       *)     TPI_BASE      )   /*!< TPI configuration struct
1757:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CoreDebug           ((CoreDebug_Type *)     CoreDebug_BASE)   /*!< Core Debug configuration
1758:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1759:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #if (__MPU_PRESENT == 1U)
1760:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define MPU_BASE          (SCS_BASE +  0x0D90UL)                    /*!< Memory Protection Unit *
1761:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define MPU               ((MPU_Type       *)     MPU_BASE      )   /*!< Memory Protection Unit *
1762:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #endif
1763:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1764:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #if (__FPU_PRESENT == 1U)
1765:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define FPU_BASE          (SCS_BASE +  0x0F30UL)                    /*!< Floating Point Unit */
1766:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #define FPU               ((FPU_Type       *)     FPU_BASE      )   /*!< Floating Point Unit */
1767:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #endif
1768:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1769:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*@} */
1770:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1771:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1772:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1773:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*******************************************************************************
1774:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  *                Hardware Abstraction Layer
1775:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   Core Function Interface contains:
1776:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   - Core NVIC Functions
1777:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   - Core SysTick Functions
1778:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   - Core Debug Functions
1779:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   - Core Register Access Functions
1780:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  ******************************************************************************/
1781:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1782:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \defgroup CMSIS_Core_FunctionInterface Functions and Instructions Reference
1783:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** */
1784:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1785:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1786:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1787:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* ##########################   NVIC functions  #################################### */
1788:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1789:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \ingroup  CMSIS_Core_FunctionInterface
1790:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \defgroup CMSIS_Core_NVICFunctions NVIC Functions
1791:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief    Functions that manage interrupts and exceptions via the NVIC.
1792:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   @{
1793:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1794:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1795:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1796:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief   Set Priority Grouping
1797:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \details Sets the priority grouping field using the required unlock sequence.
1798:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****            The parameter PriorityGroup is assigned to the field SCB->AIRCR [10:8] PRIGROUP field.
1799:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****            Only values from 0..7 are used.
1800:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****            In case of a conflict between priority grouping and available
1801:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****            priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.
1802:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param [in]      PriorityGroup  Priority grouping field.
1803:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1804:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
1805:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
1806:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   uint32_t reg_value;
1807:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);             /* only values 0..7 a
1808:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1809:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   reg_value  =  SCB->AIRCR;                                                   /* read old register 
1810:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   reg_value &= ~((uint32_t)(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk)); /* clear bits to chan
1811:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   reg_value  =  (reg_value                                   |
1812:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****                 ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
1813:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****                 (PriorityGroupTmp << 8U)                      );              /* Insert write key a
1814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   SCB->AIRCR =  reg_value;
1815:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** }
1816:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1817:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1818:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief   Get Priority Grouping
1820:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \details Reads the priority grouping field from the NVIC Interrupt Controller.
1821:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \return                Priority grouping field (SCB->AIRCR [10:8] PRIGROUP field).
1822:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1823:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_GetPriorityGrouping(void)
1824:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
1825:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   return ((uint32_t)((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos));
1826:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** }
1827:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1828:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1829:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief   Enable External Interrupt
1831:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \details Enables a device-specific interrupt in the NVIC interrupt controller.
1832:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param [in]      IRQn  External interrupt number. Value cannot be negative.
1833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1834:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_EnableIRQ(IRQn_Type IRQn)
1835:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
1836:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   NVIC->ISER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0
1837:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** }
1838:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1839:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1840:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1841:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief   Disable External Interrupt
1842:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \details Disables a device-specific interrupt in the NVIC interrupt controller.
1843:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param [in]      IRQn  External interrupt number. Value cannot be negative.
1844:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1845:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_DisableIRQ(IRQn_Type IRQn)
1846:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
1847:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   NVIC->ICER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0
1848:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** }
1849:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1850:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1851:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1852:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief   Get Pending Interrupt
1853:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \details Reads the pending register in the NVIC and returns the pending bit for the specified int
1854:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param [in]      IRQn  Interrupt number.
1855:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \return             0  Interrupt status is not pending.
1856:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \return             1  Interrupt status is pending.
1857:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1858:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
1859:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
1860:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   return((uint32_t)(((NVIC->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t
1861:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** }
1862:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1863:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1864:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1865:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief   Set Pending Interrupt
1866:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \details Sets the pending bit of an external interrupt.
1867:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param [in]      IRQn  Interrupt number. Value cannot be negative.
1868:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1869:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_SetPendingIRQ(IRQn_Type IRQn)
1870:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
1871:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   NVIC->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0
1872:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** }
1873:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1874:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1875:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1876:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief   Clear Pending Interrupt
1877:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \details Clears the pending bit of an external interrupt.
1878:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param [in]      IRQn  External interrupt number. Value cannot be negative.
1879:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1880:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
1881:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
1882:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   NVIC->ICPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0
1883:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** }
1884:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1885:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1886:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1887:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief   Get Active Interrupt
1888:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \details Reads the active register in NVIC and returns the active bit.
1889:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param [in]      IRQn  Interrupt number.
1890:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \return             0  Interrupt status is not active.
1891:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \return             1  Interrupt status is active.
1892:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1893:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_GetActive(IRQn_Type IRQn)
1894:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
1895:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   return((uint32_t)(((NVIC->IABR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t
1896:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** }
1897:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1898:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1899:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1900:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief   Set Interrupt Priority
1901:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \details Sets the priority of an interrupt.
1902:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \note    The priority cannot be set for every core interrupt.
1903:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param [in]      IRQn  Interrupt number.
1904:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param [in]  priority  Priority to set.
1905:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1906:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
1907:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
1908:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   if ((int32_t)(IRQn) < 0)
1909:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   {
1910:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     SCB->SHPR[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_B
1911:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   }
1912:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   else
1913:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   {
1914:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     NVIC->IP[((uint32_t)(int32_t)IRQn)]                = (uint8_t)((priority << (8U - __NVIC_PRIO_B
1915:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   }
1916:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** }
1917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1918:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1919:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1920:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief   Get Interrupt Priority
1921:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \details Reads the priority of an interrupt.
1922:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****            The interrupt number can be positive to specify an external (device specific) interrupt,
1923:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****            or negative to specify an internal (core) interrupt.
1924:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param [in]   IRQn  Interrupt number.
1925:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \return             Interrupt Priority.
1926:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****                       Value is aligned automatically to the implemented priority bits of the microc
1927:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1928:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_GetPriority(IRQn_Type IRQn)
1929:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
1930:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1931:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   if ((int32_t)(IRQn) < 0)
1932:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   {
1933:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     return(((uint32_t)SCB->SHPR[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] >> (8U - __NVIC_PRIO_BITS)
1934:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   }
1935:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   else
1936:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   {
1937:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     return(((uint32_t)NVIC->IP[((uint32_t)(int32_t)IRQn)]                >> (8U - __NVIC_PRIO_BITS)
1938:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   }
1939:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** }
1940:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1941:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1942:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1943:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief   Encode Priority
1944:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \details Encodes the priority for an interrupt with the given priority group,
1945:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****            preemptive priority value, and subpriority value.
1946:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****            In case of a conflict between priority grouping and available
1947:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****            priority bits (__NVIC_PRIO_BITS), the smallest possible priority group is set.
1948:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param [in]     PriorityGroup  Used priority group.
1949:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param [in]   PreemptPriority  Preemptive priority value (starting from 0).
1950:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param [in]       SubPriority  Subpriority value (starting from 0).
1951:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \return                        Encoded priority. Value can be used in the function \ref NVIC_SetP
1952:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1953:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uin
1954:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
1955:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);   /* only values 0..7 are used   
1956:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   uint32_t PreemptPriorityBits;
1957:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   uint32_t SubPriorityBits;
1958:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1959:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NV
1960:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint
1961:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1962:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   return (
1963:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****            ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits
1964:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****            ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
1965:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****          );
1966:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** }
1967:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1968:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1969:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1970:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief   Decode Priority
1971:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \details Decodes an interrupt priority value with a given priority group to
1972:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****            preemptive priority value and subpriority value.
1973:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****            In case of a conflict between priority grouping and available
1974:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****            priority bits (__NVIC_PRIO_BITS) the smallest possible priority group is set.
1975:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param [in]         Priority   Priority value, which can be retrieved with the function \ref NVIC
1976:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param [in]     PriorityGroup  Used priority group.
1977:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param [out] pPreemptPriority  Preemptive priority value (starting from 0).
1978:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \param [out]     pSubPriority  Subpriority value (starting from 0).
1979:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1980:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* cons
1981:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
1982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);   /* only values 0..7 are used   
1983:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   uint32_t PreemptPriorityBits;
1984:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   uint32_t SubPriorityBits;
1985:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1986:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NV
1987:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint
1988:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1989:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1
1990:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1
1991:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** }
1992:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1993:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
1994:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
1995:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief   System Reset
1996:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \details Initiates a system reset request to reset the MCU.
1997:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
1998:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void NVIC_SystemReset(void)
1999:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
2000:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __DSB();                                                          /* Ensure all outstanding memor
2001:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****                                                                        buffered write are completed
2002:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   SCB->AIRCR  = (uint32_t)((0x5FAUL << SCB_AIRCR_VECTKEY_Pos)    |
2003:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****                            (SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) |
2004:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****                             SCB_AIRCR_SYSRESETREQ_Msk    );         /* Keep priority group unchange
2005:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   __DSB();                                                          /* Ensure completion of memory 
2006:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2007:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   for(;;)                                                           /* wait until reset */
2008:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   {
2009:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     __NOP();
2010:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   }
2011:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** }
2012:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2013:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*@} end of CMSIS_Core_NVICFunctions */
2014:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2015:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2016:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* ##########################  FPU functions  #################################### */
2017:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
2018:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \ingroup  CMSIS_Core_FunctionInterface
2019:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \defgroup CMSIS_Core_FpuFunctions FPU Functions
2020:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief    Function that provides FPU type.
2021:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   @{
2022:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
2023:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2024:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
2025:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief   get FPU type
2026:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \details returns the FPU type
2027:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \returns
2028:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    - \b  0: No FPU
2029:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    - \b  1: Single precision FPU
2030:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****    - \b  2: Double + Single precision FPU
2031:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
2032:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** __STATIC_INLINE uint32_t SCB_GetFPUType(void)
2033:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
2034:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   uint32_t mvfr0;
2035:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2036:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   mvfr0 = SCB->MVFR0;
2037:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   if        ((mvfr0 & 0x00000FF0UL) == 0x220UL)
2038:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   {
2039:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     return 2UL;           /* Double + Single precision FPU */
2040:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   }
2041:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   else if ((mvfr0 & 0x00000FF0UL) == 0x020UL)
2042:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   {
2043:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     return 1UL;           /* Single precision FPU */
2044:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   }
2045:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   else
2046:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   {
2047:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     return 0UL;           /* No FPU */
2048:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   }
2049:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** }
2050:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2051:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2052:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /*@} end of CMSIS_Core_FpuFunctions */
2053:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2054:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2055:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2056:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* ##########################  Cache functions  #################################### */
2057:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
2058:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \ingroup  CMSIS_Core_FunctionInterface
2059:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \defgroup CMSIS_Core_CacheFunctions Cache Functions
2060:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief    Functions that configure Instruction and Data cache.
2061:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   @{
2062:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****  */
2063:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2064:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /* Cache Size ID Register Macros */
2065:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CCSIDR_WAYS(x)         (((x) & SCB_CCSIDR_ASSOCIATIVITY_Msk) >> SCB_CCSIDR_ASSOCIATIVITY_Po
2066:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** #define CCSIDR_SETS(x)         (((x) & SCB_CCSIDR_NUMSETS_Msk      ) >> SCB_CCSIDR_NUMSETS_Pos     
2067:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2068:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2069:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
2070:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief   Enable I-Cache
2071:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \details Turns on I-Cache
2072:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   */
2073:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void SCB_EnableICache (void)
2074:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
2075:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #if (__ICACHE_PRESENT == 1U)
2076:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     __DSB();
2077:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     __ISB();
2078:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     SCB->ICIALLU = 0UL;                     /* invalidate I-Cache */
 158              		.loc 3 2078 0
 159 000a 1A4B     		ldr	r3, .L16
 160 000c 0021     		movs	r1, #0
 161 000e C3F85012 		str	r1, [r3, #592]
2079:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     SCB->CCR |=  (uint32_t)SCB_CCR_IC_Msk;  /* enable I-Cache */
 162              		.loc 3 2079 0
 163 0012 5A69     		ldr	r2, [r3, #20]
 164 0014 42F40032 		orr	r2, r2, #131072
 165 0018 5A61     		str	r2, [r3, #20]
 166              	.LBB54:
 167              	.LBB55:
 168              		.loc 2 429 0
 169              		.syntax unified
 170              	@ 429 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 171 001a BFF34F8F 		dsb 0xF
 172              	@ 0 "" 2
 173              		.thumb
 174              		.syntax unified
 175              	.LBE55:
 176              	.LBE54:
 177              	.LBB56:
 178              	.LBB57:
 418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 179              		.loc 2 418 0
 180              		.syntax unified
 181              	@ 418 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 182 001e BFF36F8F 		isb 0xF
 183              	@ 0 "" 2
 184              		.thumb
 185              		.syntax unified
 186              	.LBE57:
 187              	.LBE56:
 188              	.LBE49:
 189              	.LBE48:
 190              	.LBB58:
 191              	.LBB59:
2080:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     __DSB();
2081:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     __ISB();
2082:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #endif
2083:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** }
2084:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2085:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2086:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
2087:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief   Disable I-Cache
2088:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \details Turns off I-Cache
2089:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   */
2090:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void SCB_DisableICache (void)
2091:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
2092:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #if (__ICACHE_PRESENT == 1U)
2093:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     __DSB();
2094:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     __ISB();
2095:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     SCB->CCR &= ~(uint32_t)SCB_CCR_IC_Msk;  /* disable I-Cache */
2096:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     SCB->ICIALLU = 0UL;                     /* invalidate I-Cache */
2097:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     __DSB();
2098:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     __ISB();
2099:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #endif
2100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** }
2101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
2104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief   Invalidate I-Cache
2105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \details Invalidates I-Cache
2106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   */
2107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void SCB_InvalidateICache (void)
2108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
2109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #if (__ICACHE_PRESENT == 1U)
2110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     __DSB();
2111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     __ISB();
2112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     SCB->ICIALLU = 0UL;
2113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     __DSB();
2114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     __ISB();
2115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #endif
2116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** }
2117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** /**
2120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \brief   Enable D-Cache
2121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   \details Turns on D-Cache
2122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   */
2123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** __STATIC_INLINE void SCB_EnableDCache (void)
2124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** {
2125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****   #if (__DCACHE_PRESENT == 1U)
2126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t ccsidr;
2127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t sets;
2128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     uint32_t ways;
2129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     SCB->CSSELR = (0U << 1U) | 0U;          /* Level 1 data cache */
 192              		.loc 3 2130 0
 193 0022 C3F88410 		str	r1, [r3, #132]
 194              	.LBB60:
 195              	.LBB61:
 196              		.loc 2 429 0
 197              		.syntax unified
 198              	@ 429 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 199 0026 BFF34F8F 		dsb 0xF
 200              	@ 0 "" 2
 201              		.thumb
 202              		.syntax unified
 203              	.LBE61:
 204              	.LBE60:
2131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     __DSB();
2132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     ccsidr = SCB->CCSIDR;
 205              		.loc 3 2133 0
 206 002a D3F88040 		ldr	r4, [r3, #128]
 207              	.LVL5:
2134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****                                             /* invalidate D-Cache */
2136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     sets = (uint32_t)(CCSIDR_SETS(ccsidr));
 208              		.loc 3 2136 0
 209 002e C4F34E30 		ubfx	r0, r4, #13, #15
 210              	.LVL6:
 211 0032 0FE0     		b	.L11
 212              	.LVL7:
 213              	.L12:
2137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     do {
2138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       ways = (uint32_t)(CCSIDR_WAYS(ccsidr));
2139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       do {
2140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         SCB->DCISW = (((sets << SCB_DCISW_SET_Pos) & SCB_DCISW_SET_Msk) |
2141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****                       ((ways << SCB_DCISW_WAY_Pos) & SCB_DCISW_WAY_Msk)  );
2142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         #if defined ( __CC_ARM )
2143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****           __schedule_barrier();
2144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****         #endif
2145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       } while (ways--);
 214              		.loc 3 2145 0
 215 0034 1A46     		mov	r2, r3
 216              	.LVL8:
 217              	.L10:
2140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****                       ((ways << SCB_DCISW_WAY_Pos) & SCB_DCISW_WAY_Msk)  );
 218              		.loc 3 2140 0
 219 0036 43F6E073 		movw	r3, #16352
 220 003a 03EA4013 		and	r3, r3, r0, lsl #5
 221 003e 43EA8273 		orr	r3, r3, r2, lsl #30
 222 0042 0C49     		ldr	r1, .L16
 223 0044 C1F86032 		str	r3, [r1, #608]
 224              		.loc 3 2145 0
 225 0048 531E     		subs	r3, r2, #1
 226              	.LVL9:
 227 004a 002A     		cmp	r2, #0
 228 004c F2D1     		bne	.L12
2146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     } while(sets--);
 229              		.loc 3 2146 0
 230 004e 431E     		subs	r3, r0, #1
 231              	.LVL10:
 232 0050 18B1     		cbz	r0, .L15
 233 0052 1846     		mov	r0, r3
 234              	.LVL11:
 235              	.L11:
2138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****       do {
 236              		.loc 3 2138 0
 237 0054 C4F3C902 		ubfx	r2, r4, #3, #10
 238              	.LVL12:
 239 0058 EDE7     		b	.L10
 240              	.LVL13:
 241              	.L15:
 242              	.LBB62:
 243              	.LBB63:
 244              		.loc 2 429 0
 245              		.syntax unified
 246              	@ 429 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 247 005a BFF34F8F 		dsb 0xF
 248              	@ 0 "" 2
 249              		.thumb
 250              		.syntax unified
 251              	.LBE63:
 252              	.LBE62:
2147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     __DSB();
2148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h **** 
2149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h ****     SCB->CCR |=  (uint32_t)SCB_CCR_DC_Msk;  /* enable D-Cache */
 253              		.loc 3 2149 0
 254 005e 4B69     		ldr	r3, [r1, #20]
 255              	.LVL14:
 256 0060 43F48033 		orr	r3, r3, #65536
 257 0064 4B61     		str	r3, [r1, #20]
 258              	.LBB64:
 259              	.LBB65:
 260              		.loc 2 429 0
 261              		.syntax unified
 262              	@ 429 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 263 0066 BFF34F8F 		dsb 0xF
 264              	@ 0 "" 2
 265              		.thumb
 266              		.syntax unified
 267              	.LBE65:
 268              	.LBE64:
 269              	.LBB66:
 270              	.LBB67:
 418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 271              		.loc 2 418 0
 272              		.syntax unified
 273              	@ 418 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 274 006a BFF36F8F 		isb 0xF
 275              	@ 0 "" 2
 276              	.LVL15:
 277              		.thumb
 278              		.syntax unified
 279              	.LBE67:
 280              	.LBE66:
 281              	.LBE59:
 282              	.LBE58:
  66:../src/init.c ****   /* Enable I-Cache */
  67:../src/init.c ****   SCB_EnableICache();
  68:../src/init.c **** 
  69:../src/init.c ****   /* Enable D-Cache */
  70:../src/init.c ****   SCB_EnableDCache();
  71:../src/init.c **** }
 283              		.loc 1 71 0
 284 006e 5DF8044B 		ldr	r4, [sp], #4
 285              		.cfi_restore 4
 286              		.cfi_def_cfa_offset 0
 287 0072 7047     		bx	lr
 288              	.L17:
 289              		.align	2
 290              	.L16:
 291 0074 00ED00E0 		.word	-536810240
 292              		.cfi_endproc
 293              	.LFE139:
 295              		.section	.text.Sys_Init,"ax",%progbits
 296              		.align	1
 297              		.global	Sys_Init
 298              		.syntax unified
 299              		.thumb
 300              		.thumb_func
 301              		.fpu fpv5-d16
 303              	Sys_Init:
 304              	.LFB140:
  72:../src/init.c **** 
  73:../src/init.c **** // Unified System Initialization (equivalent of current MPS Sys_Init())
  74:../src/init.c **** void Sys_Init(void) {
 305              		.loc 1 74 0
 306              		.cfi_startproc
 307              		@ args = 0, pretend = 0, frame = 0
 308              		@ frame_needed = 0, uses_anonymous_args = 0
 309 0000 08B5     		push	{r3, lr}
 310              		.cfi_def_cfa_offset 8
 311              		.cfi_offset 3, -8
 312              		.cfi_offset 14, -4
  75:../src/init.c **** 	//Initialize the system
  76:../src/init.c **** 	CPU_CACHE_Enable();		// Enable CPU Caching
 313              		.loc 1 76 0
 314 0002 FFF7FEFF 		bl	CPU_CACHE_Enable
 315              	.LVL16:
  77:../src/init.c **** 	HAL_Init();				// Initialize HAL
 316              		.loc 1 77 0
 317 0006 FFF7FEFF 		bl	HAL_Init
 318              	.LVL17:
  78:../src/init.c **** 	SystemClock_Config(); 	// Configure the system clock to 216 MHz
 319              		.loc 1 78 0
 320 000a FFF7FEFF 		bl	SystemClock_Config
 321              	.LVL18:
  79:../src/init.c **** 
  80:../src/init.c **** 	/* UART configured as follows:
  81:../src/init.c **** 		- Word Length = 8 Bits
  82:../src/init.c **** 		- Stop Bit = No Stop bits
  83:../src/init.c **** 		- Parity = None
  84:../src/init.c **** 		- BaudRate = 115200 baud
  85:../src/init.c **** 		- Hardware flow control disabled (RTS and CTS signals)
  86:../src/init.c **** 	*/
  87:../src/init.c **** 	initUart(&USB_UART, 115200, USART1);
 322              		.loc 1 87 0
 323 000e 064A     		ldr	r2, .L20
 324 0010 4FF4E131 		mov	r1, #115200
 325 0014 0548     		ldr	r0, .L20+4
 326 0016 FFF7FEFF 		bl	initUart
 327              	.LVL19:
  88:../src/init.c **** 
  89:../src/init.c **** 	setbuf(stdout,NULL); // Disable buffering of stdout - printf prints everything immediately
 328              		.loc 1 89 0
 329 001a 054B     		ldr	r3, .L20+8
 330 001c 1B68     		ldr	r3, [r3]
 331 001e 0021     		movs	r1, #0
 332 0020 9868     		ldr	r0, [r3, #8]
 333 0022 FFF7FEFF 		bl	setbuf
 334              	.LVL20:
  90:../src/init.c **** }
 335              		.loc 1 90 0
 336 0026 08BD     		pop	{r3, pc}
 337              	.L21:
 338              		.align	2
 339              	.L20:
 340 0028 00100140 		.word	1073811456
 341 002c 00000000 		.word	USB_UART
 342 0030 00000000 		.word	_impure_ptr
 343              		.cfi_endproc
 344              	.LFE140:
 346              		.section	.text.SysTick_Handler,"ax",%progbits
 347              		.align	1
 348              		.global	SysTick_Handler
 349              		.syntax unified
 350              		.thumb
 351              		.thumb_func
 352              		.fpu fpv5-d16
 354              	SysTick_Handler:
 355              	.LFB141:
  91:../src/init.c **** 
  92:../src/init.c **** // This function is what makes everything work
  93:../src/init.c **** // Don't touch it...
  94:../src/init.c **** // (Increments the system clock)
  95:../src/init.c **** void SysTick_Handler(void) {
 356              		.loc 1 95 0
 357              		.cfi_startproc
 358              		@ args = 0, pretend = 0, frame = 0
 359              		@ frame_needed = 0, uses_anonymous_args = 0
 360 0000 08B5     		push	{r3, lr}
 361              		.cfi_def_cfa_offset 8
 362              		.cfi_offset 3, -8
 363              		.cfi_offset 14, -4
  96:../src/init.c ****   HAL_IncTick();
 364              		.loc 1 96 0
 365 0002 FFF7FEFF 		bl	HAL_IncTick
 366              	.LVL21:
  97:../src/init.c **** }
 367              		.loc 1 97 0
 368 0006 08BD     		pop	{r3, pc}
 369              		.cfi_endproc
 370              	.LFE141:
 372              		.comm	USB_UART,112,4
 373              		.text
 374              	.Letext0:
 375              		.file 4 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 376              		.file 5 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 377              		.file 6 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/system_stm
 378              		.file 7 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f769x
 379              		.file 8 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 380              		.file 9 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 381              		.file 10 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 382              		.file 11 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 383              		.file 12 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_def.
 384              		.file 13 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_rcc_
 385              		.file 14 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_rcc.
 386              		.file 15 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_dma.
 387              		.file 16 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_uart
 388              		.file 17 "/Users/Qianqian/Desktop/MPS/Lab_4/LAB-04_Template/inc/uart.h"
 389              		.file 18 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal.h"
 390              		.file 19 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 391              		.file 20 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_pwr_
DEFINED SYMBOLS
                            *ABS*:0000000000000000 init.c
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc6UjE50.s:17     .text.SystemClock_Config:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc6UjE50.s:24     .text.SystemClock_Config:0000000000000000 SystemClock_Config
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc6UjE50.s:115    .text.CPU_CACHE_Enable:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc6UjE50.s:122    .text.CPU_CACHE_Enable:0000000000000000 CPU_CACHE_Enable
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc6UjE50.s:291    .text.CPU_CACHE_Enable:0000000000000074 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc6UjE50.s:296    .text.Sys_Init:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc6UjE50.s:303    .text.Sys_Init:0000000000000000 Sys_Init
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc6UjE50.s:340    .text.Sys_Init:0000000000000028 $d
                            *COM*:0000000000000070 USB_UART
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc6UjE50.s:347    .text.SysTick_Handler:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc6UjE50.s:354    .text.SysTick_Handler:0000000000000000 SysTick_Handler
                           .group:0000000000000000 wm4.0.1feba82c71ea6f90606b0f4a064b979b
                           .group:0000000000000000 wm4.stm32f769xx.h.53.fbb381ab180ffe54a92825512efacd7c
                           .group:0000000000000000 wm4._newlib_version.h.4.3572908597b70d672d181fc7fc501c19
                           .group:0000000000000000 wm4.features.h.33.d97f2d646536517df901beeb5b9993f5
                           .group:0000000000000000 wm4._default_types.h.15.247e5cd201eca3442cbf5404108c4935
                           .group:0000000000000000 wm4._intsup.h.10.cce27fed8484c08a33f522034c30d2b5
                           .group:0000000000000000 wm4._stdint.h.10.c24fa3af3bc1706662bb5593a907e841
                           .group:0000000000000000 wm4.stdint.h.23.d53047a68f4a85177f80b422d52785ed
                           .group:0000000000000000 wm4.core_cm7.h.74.fd1aa13295dc2a7b6cb68ba515ddee64
                           .group:0000000000000000 wm4.cmsis_gcc.h.36.39970cb43ce4b53c82644a1f9bc2eab9
                           .group:0000000000000000 wm4.core_cm7.h.223.3ba8e0c26e8c652fd61ebac634346018
                           .group:0000000000000000 wm4.stm32f769xx.h.1392.5beec6adeb9700b027ae21692fa8c3c5
                           .group:0000000000000000 wm4.stm32f7xx_hal_conf.h.42.3156784d5484408e6927d1d369303646
                           .group:0000000000000000 wm4.stm32f7xx.h.57.0a5c0849037a765b81edf98e7b917621
                           .group:0000000000000000 wm4.stm32f7xx.h.177.90d1aaec9345bde817d55cbd67a8e449
                           .group:0000000000000000 wm4.stm32_hal_legacy.h.41.ad2d6b636e1e97eb84d5e05e1c304f14
                           .group:0000000000000000 wm4.newlib.h.8.e0fd068ed40a600f7426443f865dd469
                           .group:0000000000000000 wm4.ieeefp.h.77.49bcce8a603f3d93a95080d6a3573782
                           .group:0000000000000000 wm4.config.h.220.6cac6a9685cfce5e83c17784171638d9
                           .group:0000000000000000 wm4._ansi.h.23.9f8fcfa20193763fcf364fb91705c94b
                           .group:0000000000000000 wm4.stdio.h.31.7c0e28c411445f3f9c5b11accf882760
                           .group:0000000000000000 wm4.stddef.h.187.2ff233552538c6ff9b8575ca8ea52cb3
                           .group:0000000000000000 wm4.cdefs.h.47.d5f52c0838d768c139d665d47892271a
                           .group:0000000000000000 wm4.stddef.h.39.ec95e8feac892e292b69dc7ae75b0d64
                           .group:0000000000000000 wm4.stdarg.h.34.3a23a216c0c293b3d2ea2e89281481e6
                           .group:0000000000000000 wm4.lock.h.2.1461d1fff82dffe8bfddc23307f6484f
                           .group:0000000000000000 wm4._types.h.125.5cf8a495f1f7ef36777ad868a1e32068
                           .group:0000000000000000 wm4.stddef.h.161.5349cb105733e8777bfb0cf53c4e3f34
                           .group:0000000000000000 wm4._types.h.184.7120b8bb2e0149e2359704f4e2251b68
                           .group:0000000000000000 wm4.reent.h.17.87376802c2b370b32a762f0a30482d9e
                           .group:0000000000000000 wm4.types.h.40.e8c16e7ec36ba55f133d0616070e25fc
                           .group:0000000000000000 wm4._endian.h.31.65a10590763c3dde1ac4a7f66d7d4891
                           .group:0000000000000000 wm4.endian.h.9.49f3a4695c1b61e8a0808de3c4a106cb
                           .group:0000000000000000 wm4._timeval.h.30.0e8bfd94e85db17dda3286ee81496fe6
                           .group:0000000000000000 wm4.timespec.h.41.d855182eb0e690443ab8651bcedca6e1
                           .group:0000000000000000 wm4.select.h.30.bbece7fa40993a78092dcc5805132560
                           .group:0000000000000000 wm4.types.h.69.ed3eae3cf73030a737515151ebcab7a1
                           .group:0000000000000000 wm4.sched.h.22.c60982713a5c428609783c78f9c78d95
                           .group:0000000000000000 wm4._pthreadtypes.h.36.fcee9961c35163dde6267ef772ad1972
                           .group:0000000000000000 wm4.stdio.h.2.4aa87247282eca6c8f36f9de33d8df1a
                           .group:0000000000000000 wm4.stdio.h.81.932d0c162786b883f622b8d05c120c78
                           .group:0000000000000000 wm4.stm32f7xx_hal_def.h.74.b888c85a55953d8ceefb5693b2fbcc3b
                           .group:0000000000000000 wm4.stm32f7xx_hal_rcc_ex.h.40.60b96b9ccbf1da15137cd9a32410e72a
                           .group:0000000000000000 wm4.stm32f7xx_hal_rcc.h.128.876a8388f421bf9069da8423ce12a642
                           .group:0000000000000000 wm4.stm32f7xx_hal_gpio.h.40.5b491122a55a4cfb269c7f5d0b0e2765
                           .group:0000000000000000 wm4.stm32f7xx_hal_gpio_ex.h.40.6e8ad997fa3d9f9be44aa5b158186ec6
                           .group:0000000000000000 wm4.stm32f7xx_hal_gpio.h.282.1a4b3540e40d365b673115c410a0799f
                           .group:0000000000000000 wm4.stm32f7xx_hal_dma.h.40.1a7826291b57151da392a769dafaeb2f
                           .group:0000000000000000 wm4.stm32f7xx_hal_dma_ex.h.40.0089dfbba9b5b0614b19b949f0613812
                           .group:0000000000000000 wm4.stm32f7xx_hal_dma.h.695.7c839724c192464320d1ce9006ec8fc9
                           .group:0000000000000000 wm4.stm32f7xx_hal_cortex.h.40.a33e55e2812239f4ff95dc999ea7a71c
                           .group:0000000000000000 wm4.stm32f7xx_hal_adc.h.40.395fe59c2cf48a2ca4ab3eb1a2f67aaa
                           .group:0000000000000000 wm4.stm32f7xx_hal_adc_ex.h.40.ea4dbe61c9ed121e453ebeae64a6b25d
                           .group:0000000000000000 wm4.stm32f7xx_hal_adc.h.638.aa9f3310160db65e9f9a683f3db7a5fa
                           .group:0000000000000000 wm4.stm32f7xx_hal_dma2d.h.40.ff9d636f1aad19ede2b48d702b1a9286
                           .group:0000000000000000 wm4.stm32f7xx_hal_dcmi.h.40.673446f64ddd96a0733a59ac85034da9
                           .group:0000000000000000 wm4.stm32f7xx_hal_eth.h.40.020ed4df21876b21be23ffb763bb65c8
                           .group:0000000000000000 wm4.stm32f7xx_hal_flash.h.40.88d6d7ad6cc41b1fb6ed52f385706e4c
                           .group:0000000000000000 wm4.stm32f7xx_hal_flash_ex.h.40.067f94cefa6c935e3787b9b99b0e4874
                           .group:0000000000000000 wm4.stm32f7xx_hal_flash.h.377.0b5859d03dcb7fd00a41e55848494632
                           .group:0000000000000000 wm4.stm32f7xx_hal_i2c.h.40.c4117ff4988ea7bdb48fd08d9cdf9ad0
                           .group:0000000000000000 wm4.stm32f7xx_hal_i2c_ex.h.40.6e94652bf3c6f4cbc213bc8e33dda394
                           .group:0000000000000000 wm4.stm32f7xx_hal_i2c.h.627.769e47a1e1e882fecef81821e201a56c
                           .group:0000000000000000 wm4.stm32f7xx_hal_i2s.h.40.3089a12d60e39424d771533b6cfe71b6
                           .group:0000000000000000 wm4.stm32f7xx_hal_pwr.h.40.80156eb26cb3f3918feeac5abcc796b2
                           .group:0000000000000000 wm4.stm32f7xx_hal_pwr_ex.h.40.20c46934e304cbeafd394f1f92e7de7b
                           .group:0000000000000000 wm4.stm32f7xx_hal_pwr.h.367.4534d07488d5bbcd92c37fae31f8a3a9
                           .group:0000000000000000 wm4.stm32f7xx_hal_qspi.h.40.af8497fb3bdbfa4a0ea0acf8d2e2aeb9
                           .group:0000000000000000 wm4.stm32f7xx_hal_spi.h.40.837a17bf540f9e1bb953964f6d7171ba
                           .group:0000000000000000 wm4.stm32f7xx_hal_tim.h.40.b0e48013867dc74112f3b8664ad0b2cf
                           .group:0000000000000000 wm4.stm32f7xx_hal_tim_ex.h.40.4eb6f7d48f22ffab14cb2722b045c073
                           .group:0000000000000000 wm4.stm32f7xx_hal_tim.h.1292.895b41654c9b2277493da0cfaafbf888
                           .group:0000000000000000 wm4.stm32f7xx_hal_uart.h.40.d982218192e2876a4472a6a56779ed5b
                           .group:0000000000000000 wm4.stm32f7xx_hal_uart_ex.h.40.1a40f961e3634e6be2d502b70233d8ba
                           .group:0000000000000000 wm4.stm32f7xx_hal_usart.h.40.cb5d21788289ea07c8cb86a8c3e9a3ee
                           .group:0000000000000000 wm4.stm32f7xx_hal_usart_ex.h.40.c832898289f809404e177a0100d56f20
                           .group:0000000000000000 wm4.stm32f7xx_hal_usart.h.551.f8e675842882b7225174c18c8021a5c2
                           .group:0000000000000000 wm4.stm32f7xx_hal_irda.h.40.57665501634b36a1b22fa8bd884479df
                           .group:0000000000000000 wm4.stm32f7xx_hal_irda_ex.h.40.7bdf52d810f75fccc5226f03ff82b874
                           .group:0000000000000000 wm4.stm32f7xx_hal_irda.h.679.f83fa0cd22cf50957e474d7db88ab913
                           .group:0000000000000000 wm4.stm32f7xx_hal_smartcard.h.40.c13674557d3f748f45654ac2817a3cc2
                           .group:0000000000000000 wm4.stm32f7xx_hal_smartcard_ex.h.40.157ef45425f8fa95eff0ecd6d5b9c812
                           .group:0000000000000000 wm4.stm32f7xx_hal_smartcard.h.877.8e0cb289cd19c5035cddc09a34497c90
                           .group:0000000000000000 wm4.stm32f7xx_hal_wwdg.h.40.25a3c5d72f2e8fcb30fb6a9525ecf44b
                           .group:0000000000000000 wm4.stm32f7xx_hal.h.67.578683c81040128cb37f30b893b3213c
                           .group:0000000000000000 wm4.string.h.8.c4b8571ce60dff2817f43fec8b86aecd
                           .group:0000000000000000 wm4.stddef.h.161.19e15733342b50ead2919490b095303e
                           .group:0000000000000000 wm4.stdarg.h.31.3fa7b8f6daaa31edd1696c08c77f2a73

UNDEFINED SYMBOLS
HAL_RCC_OscConfig
HAL_PWREx_EnableOverDrive
HAL_RCC_ClockConfig
HAL_Init
initUart
setbuf
_impure_ptr
HAL_IncTick

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
  12              		.file	"system_stm32f7xx.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.SystemInit,"ax",%progbits
  17              		.align	1
  18              		.global	SystemInit
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv5-d16
  24              	SystemInit:
  25              	.LFB138:
  26              		.file 1 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/s
   1:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /**
   2:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   ******************************************************************************
   3:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @file    system_stm32f7xx.c
   4:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @author  MCD Application Team
   5:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @version V1.2.0
   6:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @date    30-December-2016
   7:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @brief   CMSIS Cortex-M7 Device Peripheral Access Layer System Source File.
   8:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *
   9:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *   This file provides two functions and one global variable to be called from 
  10:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *   user application:
  11:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *      - SystemInit(): This function is called at startup just after reset and 
  12:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *                      before branch to main program. This call is made inside
  13:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *                      the "startup_stm32f7xx.s" file.
  14:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *
  15:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *      - SystemCoreClock variable: Contains the core clock (HCLK), it can be used
  16:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *                                  by the user application to setup the SysTick 
  17:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *                                  timer or configure other parameters.
  18:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *                                     
  19:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *      - SystemCoreClockUpdate(): Updates the variable SystemCoreClock and must
  20:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *                                 be called whenever the core clock is changed
  21:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *                                 during program execution.
  22:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *
  23:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *
  24:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   ******************************************************************************
  25:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @attention
  26:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *
  27:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * <h2><center>&copy; COPYRIGHT 2016 STMicroelectronics</center></h2>
  28:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *
  29:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * Redistribution and use in source and binary forms, with or without modification,
  30:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * are permitted provided that the following conditions are met:
  31:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  32:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *      this list of conditions and the following disclaimer.
  33:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  34:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *      this list of conditions and the following disclaimer in the documentation
  35:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *      and/or other materials provided with the distribution.
  36:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  37:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *      may be used to endorse or promote products derived from this software
  38:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *      without specific prior written permission.
  39:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *
  40:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  41:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  42:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  43:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  44:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  45:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  46:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  47:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  48:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  49:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  50:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *
  51:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   ******************************************************************************
  52:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   */
  53:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
  54:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /** @addtogroup CMSIS
  55:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @{
  56:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   */
  57:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
  58:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /** @addtogroup stm32f7xx_system
  59:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @{
  60:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   */  
  61:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   
  62:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /** @addtogroup STM32F7xx_System_Private_Includes
  63:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @{
  64:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   */
  65:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
  66:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** #include "stm32f7xx.h"
  67:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
  68:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** #if !defined  (HSE_VALUE) 
  69:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   #define HSE_VALUE    ((uint32_t)25000000) /*!< Default value of the External oscillator in Hz */
  70:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** #endif /* HSE_VALUE */
  71:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
  72:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** #if !defined  (HSI_VALUE)
  73:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   #define HSI_VALUE    ((uint32_t)16000000) /*!< Value of the Internal oscillator in Hz*/
  74:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** #endif /* HSI_VALUE */
  75:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
  76:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /**
  77:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @}
  78:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   */
  79:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
  80:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /** @addtogroup STM32F7xx_System_Private_TypesDefinitions
  81:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @{
  82:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   */
  83:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
  84:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /**
  85:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @}
  86:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   */
  87:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
  88:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /** @addtogroup STM32F7xx_System_Private_Defines
  89:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @{
  90:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   */
  91:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
  92:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /************************* Miscellaneous Configuration ************************/
  93:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
  94:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /*!< Uncomment the following line if you need to relocate your vector Table in
  95:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****      Internal SRAM. */
  96:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /* #define VECT_TAB_SRAM */
  97:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** #define VECT_TAB_OFFSET  0x00 /*!< Vector Table base offset field. 
  98:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****                                    This value must be a multiple of 0x200. */
  99:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /******************************************************************************/
 100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /**
 102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @}
 103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   */
 104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /** @addtogroup STM32F7xx_System_Private_Macros
 106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @{
 107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   */
 108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /**
 110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @}
 111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   */
 112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /** @addtogroup STM32F7xx_System_Private_Variables
 114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @{
 115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   */
 116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   /* This variable is updated in three ways:
 118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       1) by calling CMSIS function SystemCoreClockUpdate()
 119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       2) by calling HAL API function HAL_RCC_GetHCLKFreq()
 120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       3) each time HAL_RCC_ClockConfig() is called to configure the system clock frequency 
 121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****          Note: If you use this function to configure the system clock; then there
 122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****                is no need to call the 2 first functions listed above, since SystemCoreClock
 123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****                variable is updated automatically.
 124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   */
 125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   uint32_t SystemCoreClock = 16000000;
 126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   const uint8_t AHBPrescTable[16] = {0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 6, 7, 8, 9};
 127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   const uint8_t APBPrescTable[8] = {0, 0, 0, 0, 1, 2, 3, 4};
 128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /**
 130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @}
 131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   */
 132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /** @addtogroup STM32F7xx_System_Private_FunctionPrototypes
 134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @{
 135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   */
 136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /**
 138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @}
 139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   */
 140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /** @addtogroup STM32F7xx_System_Private_Functions
 142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @{
 143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   */
 144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /**
 146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @brief  Setup the microcontroller system
 147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *         Initialize the Embedded Flash Interface, the PLL and update the 
 148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *         SystemFrequency variable.
 149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @param  None
 150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @retval None
 151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   */
 152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** void SystemInit(void)
 153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** {
  27              		.loc 1 153 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31              		@ link register save eliminated.
  32 0000 10B4     		push	{r4}
  33              		.cfi_def_cfa_offset 4
  34              		.cfi_offset 4, -4
 154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   /* FPU settings ------------------------------------------------------------*/
 155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   #if (__FPU_PRESENT == 1) && (__FPU_USED == 1)
 156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****     SCB->CPACR |= ((3UL << 10*2)|(3UL << 11*2));  /* set CP10 and CP11 Full Access */
  35              		.loc 1 156 0
  36 0002 0F4A     		ldr	r2, .L3
  37 0004 D2F88830 		ldr	r3, [r2, #136]
  38 0008 43F47003 		orr	r3, r3, #15728640
  39 000c C2F88830 		str	r3, [r2, #136]
 157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   #endif
 158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   /* Reset the RCC clock configuration to the default reset state ------------*/
 159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   /* Set HSION bit */
 160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   RCC->CR |= (uint32_t)0x00000001;
  40              		.loc 1 160 0
  41 0010 0C4B     		ldr	r3, .L3+4
  42 0012 1968     		ldr	r1, [r3]
  43 0014 41F00101 		orr	r1, r1, #1
  44 0018 1960     		str	r1, [r3]
 161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   /* Reset CFGR register */
 163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   RCC->CFGR = 0x00000000;
  45              		.loc 1 163 0
  46 001a 0020     		movs	r0, #0
  47 001c 9860     		str	r0, [r3, #8]
 164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   /* Reset HSEON, CSSON and PLLON bits */
 166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   RCC->CR &= (uint32_t)0xFEF6FFFF;
  48              		.loc 1 166 0
  49 001e 1C68     		ldr	r4, [r3]
  50 0020 0949     		ldr	r1, .L3+8
  51 0022 2140     		ands	r1, r1, r4
  52 0024 1960     		str	r1, [r3]
 167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   /* Reset PLLCFGR register */
 169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   RCC->PLLCFGR = 0x24003010;
  53              		.loc 1 169 0
  54 0026 0949     		ldr	r1, .L3+12
  55 0028 5960     		str	r1, [r3, #4]
 170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   /* Reset HSEBYP bit */
 172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   RCC->CR &= (uint32_t)0xFFFBFFFF;
  56              		.loc 1 172 0
  57 002a 1968     		ldr	r1, [r3]
  58 002c 21F48021 		bic	r1, r1, #262144
  59 0030 1960     		str	r1, [r3]
 173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   /* Disable all interrupts */
 175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   RCC->CIR = 0x00000000;
  60              		.loc 1 175 0
  61 0032 D860     		str	r0, [r3, #12]
 176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   /* Configure the Vector Table location add offset address ------------------*/
 178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** #ifdef VECT_TAB_SRAM
 179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   SCB->VTOR = RAMDTCM_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal SRAM */
 180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** #else
 181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   SCB->VTOR = FLASH_BASE | VECT_TAB_OFFSET; /* Vector Table Relocation in Internal FLASH */
  62              		.loc 1 181 0
  63 0034 4FF00063 		mov	r3, #134217728
  64 0038 9360     		str	r3, [r2, #8]
 182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** #endif
 183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** }
  65              		.loc 1 183 0
  66 003a 5DF8044B 		ldr	r4, [sp], #4
  67              		.cfi_restore 4
  68              		.cfi_def_cfa_offset 0
  69 003e 7047     		bx	lr
  70              	.L4:
  71              		.align	2
  72              	.L3:
  73 0040 00ED00E0 		.word	-536810240
  74 0044 00380240 		.word	1073887232
  75 0048 FFFFF6FE 		.word	-17367041
  76 004c 10300024 		.word	603992080
  77              		.cfi_endproc
  78              	.LFE138:
  80              		.section	.text.SystemCoreClockUpdate,"ax",%progbits
  81              		.align	1
  82              		.global	SystemCoreClockUpdate
  83              		.syntax unified
  84              		.thumb
  85              		.thumb_func
  86              		.fpu fpv5-d16
  88              	SystemCoreClockUpdate:
  89              	.LFB139:
 184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** /**
 186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****    * @brief  Update SystemCoreClock variable according to Clock Register Values.
 187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *         The SystemCoreClock variable contains the core clock (HCLK), it can
 188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *         be used by the user application to setup the SysTick timer or configure
 189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *         other parameters.
 190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *           
 191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @note   Each time the core clock (HCLK) changes, this function must be called
 192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *         to update SystemCoreClock variable value. Otherwise, any configuration
 193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *         based on this variable will be incorrect.         
 194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *     
 195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @note   - The system frequency computed by this function is not the real 
 196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *           frequency in the chip. It is calculated based on the predefined 
 197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *           constant and the selected clock source:
 198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *             
 199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *           - If SYSCLK source is HSI, SystemCoreClock will contain the HSI_VALUE(*)
 200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *                                              
 201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *           - If SYSCLK source is HSE, SystemCoreClock will contain the HSE_VALUE(**)
 202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *                          
 203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *           - If SYSCLK source is PLL, SystemCoreClock will contain the HSE_VALUE(**) 
 204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *             or HSI_VALUE(*) multiplied/divided by the PLL factors.
 205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *         
 206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *         (*) HSI_VALUE is a constant defined in stm32f7xx_hal_conf.h file (default value
 207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *             16 MHz) but the real value may vary depending on the variations
 208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *             in voltage and temperature.   
 209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *    
 210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *         (**) HSE_VALUE is a constant defined in stm32f7xx_hal_conf.h file (default value
 211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *              25 MHz), user has to ensure that HSE_VALUE is same as the real
 212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *              frequency of the crystal used. Otherwise, this function may
 213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *              have wrong result.
 214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *                
 215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *         - The result of this function could be not correct when using fractional
 216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *           value for HSE crystal.
 217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   *     
 218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @param  None
 219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   * @retval None
 220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   */
 221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** void SystemCoreClockUpdate(void)
 222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** {
  90              		.loc 1 222 0
  91              		.cfi_startproc
  92              		@ args = 0, pretend = 0, frame = 0
  93              		@ frame_needed = 0, uses_anonymous_args = 0
  94              		@ link register save eliminated.
  95              	.LVL0:
 223:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   uint32_t tmp = 0, pllvco = 0, pllp = 2, pllsource = 0, pllm = 2;
 224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   
 225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   /* Get SYSCLK source -------------------------------------------------------*/
 226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   tmp = RCC->CFGR & RCC_CFGR_SWS;
  96              		.loc 1 226 0
  97 0000 224B     		ldr	r3, .L15
  98 0002 9B68     		ldr	r3, [r3, #8]
  99 0004 03F00C03 		and	r3, r3, #12
 100              	.LVL1:
 227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   switch (tmp)
 101              		.loc 1 228 0
 102 0008 042B     		cmp	r3, #4
 103 000a 14D0     		beq	.L7
 104 000c 082B     		cmp	r3, #8
 105 000e 16D0     		beq	.L8
 106 0010 1BB1     		cbz	r3, .L14
 229:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   {
 230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****     case 0x00:  /* HSI used as system clock source */
 231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       SystemCoreClock = HSI_VALUE;
 232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       break;
 233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****     case 0x04:  /* HSE used as system clock source */
 234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       SystemCoreClock = HSE_VALUE;
 235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       break;
 236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****     case 0x08:  /* PLL used as system clock source */
 237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       /* PLL_VCO = (HSE_VALUE or HSI_VALUE / PLL_M) * PLL_N
 239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****          SYSCLK = PLL_VCO / PLL_P
 240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****          */    
 241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       pllsource = (RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) >> 22;
 242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       pllm = RCC->PLLCFGR & RCC_PLLCFGR_PLLM;
 243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       
 244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       if (pllsource != 0)
 245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       {
 246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****         /* HSE used as PLL clock source */
 247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****         pllvco = (HSE_VALUE / pllm) * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 6);
 248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       }
 249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       else
 250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       {
 251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****         /* HSI used as PLL clock source */
 252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****         pllvco = (HSI_VALUE / pllm) * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> 6);      
 253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       }
 254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** 
 255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       pllp = (((RCC->PLLCFGR & RCC_PLLCFGR_PLLP) >>16) + 1 ) *2;
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       SystemCoreClock = pllvco/pllp;
 257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       break;
 258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****     default:
 259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       SystemCoreClock = HSI_VALUE;
 107              		.loc 1 259 0
 108 0012 1F4B     		ldr	r3, .L15+4
 109              	.LVL2:
 110 0014 1F4A     		ldr	r2, .L15+8
 111 0016 1A60     		str	r2, [r3]
 260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       break;
 112              		.loc 1 260 0
 113 0018 02E0     		b	.L10
 114              	.LVL3:
 115              	.L14:
 231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       break;
 116              		.loc 1 231 0
 117 001a 1D4B     		ldr	r3, .L15+4
 118              	.LVL4:
 119 001c 1D4A     		ldr	r2, .L15+8
 120 001e 1A60     		str	r2, [r3]
 121              	.LVL5:
 122              	.L10:
 261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   }
 262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   /* Compute HCLK frequency --------------------------------------------------*/
 263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   /* Get HCLK prescaler */
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   tmp = AHBPrescTable[((RCC->CFGR & RCC_CFGR_HPRE) >> 4)];
 123              		.loc 1 264 0
 124 0020 1A4B     		ldr	r3, .L15
 125 0022 9B68     		ldr	r3, [r3, #8]
 126 0024 C3F30313 		ubfx	r3, r3, #4, #4
 127 0028 1B4A     		ldr	r2, .L15+12
 128 002a D15C     		ldrb	r1, [r2, r3]	@ zero_extendqisi2
 129              	.LVL6:
 265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   /* HCLK frequency */
 266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****   SystemCoreClock >>= tmp;
 130              		.loc 1 266 0
 131 002c 184A     		ldr	r2, .L15+4
 132 002e 1368     		ldr	r3, [r2]
 133 0030 CB40     		lsrs	r3, r3, r1
 134 0032 1360     		str	r3, [r2]
 267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c **** }
 135              		.loc 1 267 0
 136 0034 7047     		bx	lr
 137              	.LVL7:
 138              	.L7:
 234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       break;
 139              		.loc 1 234 0
 140 0036 164B     		ldr	r3, .L15+4
 141              	.LVL8:
 142 0038 184A     		ldr	r2, .L15+16
 143 003a 1A60     		str	r2, [r3]
 235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****     case 0x08:  /* PLL used as system clock source */
 144              		.loc 1 235 0
 145 003c F0E7     		b	.L10
 146              	.LVL9:
 147              	.L8:
 241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       pllm = RCC->PLLCFGR & RCC_PLLCFGR_PLLM;
 148              		.loc 1 241 0
 149 003e 134B     		ldr	r3, .L15
 150              	.LVL10:
 151 0040 5A68     		ldr	r2, [r3, #4]
 152              	.LVL11:
 242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       
 153              		.loc 1 242 0
 154 0042 5B68     		ldr	r3, [r3, #4]
 155 0044 03F03F03 		and	r3, r3, #63
 156              	.LVL12:
 244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       {
 157              		.loc 1 244 0
 158 0048 12F4800F 		tst	r2, #4194304
 159 004c 13D0     		beq	.L11
 247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       }
 160              		.loc 1 247 0
 161 004e 134A     		ldr	r2, .L15+16
 162              	.LVL13:
 163 0050 B2FBF3F2 		udiv	r2, r2, r3
 164 0054 0D4B     		ldr	r3, .L15
 165              	.LVL14:
 166 0056 5B68     		ldr	r3, [r3, #4]
 167 0058 C3F38813 		ubfx	r3, r3, #6, #9
 168 005c 03FB02F3 		mul	r3, r3, r2
 169              	.LVL15:
 170              	.L12:
 255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       SystemCoreClock = pllvco/pllp;
 171              		.loc 1 255 0
 172 0060 0A4A     		ldr	r2, .L15
 173 0062 5268     		ldr	r2, [r2, #4]
 174 0064 C2F30142 		ubfx	r2, r2, #16, #2
 175 0068 0132     		adds	r2, r2, #1
 176 006a 5200     		lsls	r2, r2, #1
 177              	.LVL16:
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       break;
 178              		.loc 1 256 0
 179 006c B3FBF2F3 		udiv	r3, r3, r2
 180              	.LVL17:
 181 0070 074A     		ldr	r2, .L15+4
 182              	.LVL18:
 183 0072 1360     		str	r3, [r2]
 257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****     default:
 184              		.loc 1 257 0
 185 0074 D4E7     		b	.L10
 186              	.LVL19:
 187              	.L11:
 252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/system_stm32f7xx.c ****       }
 188              		.loc 1 252 0
 189 0076 074A     		ldr	r2, .L15+8
 190              	.LVL20:
 191 0078 B2FBF3F2 		udiv	r2, r2, r3
 192 007c 034B     		ldr	r3, .L15
 193              	.LVL21:
 194 007e 5B68     		ldr	r3, [r3, #4]
 195 0080 C3F38813 		ubfx	r3, r3, #6, #9
 196 0084 03FB02F3 		mul	r3, r3, r2
 197              	.LVL22:
 198 0088 EAE7     		b	.L12
 199              	.L16:
 200 008a 00BF     		.align	2
 201              	.L15:
 202 008c 00380240 		.word	1073887232
 203 0090 00000000 		.word	.LANCHOR0
 204 0094 0024F400 		.word	16000000
 205 0098 00000000 		.word	.LANCHOR1
 206 009c 40787D01 		.word	25000000
 207              		.cfi_endproc
 208              	.LFE139:
 210              		.global	APBPrescTable
 211              		.global	AHBPrescTable
 212              		.global	SystemCoreClock
 213              		.section	.rodata
 214              		.align	2
 215              		.set	.LANCHOR1,. + 0
 218              	AHBPrescTable:
 219 0000 00       		.byte	0
 220 0001 00       		.byte	0
 221 0002 00       		.byte	0
 222 0003 00       		.byte	0
 223 0004 00       		.byte	0
 224 0005 00       		.byte	0
 225 0006 00       		.byte	0
 226 0007 00       		.byte	0
 227 0008 01       		.byte	1
 228 0009 02       		.byte	2
 229 000a 03       		.byte	3
 230 000b 04       		.byte	4
 231 000c 06       		.byte	6
 232 000d 07       		.byte	7
 233 000e 08       		.byte	8
 234 000f 09       		.byte	9
 237              	APBPrescTable:
 238 0010 00       		.byte	0
 239 0011 00       		.byte	0
 240 0012 00       		.byte	0
 241 0013 00       		.byte	0
 242 0014 01       		.byte	1
 243 0015 02       		.byte	2
 244 0016 03       		.byte	3
 245 0017 04       		.byte	4
 246              		.data
 247              		.align	2
 248              		.set	.LANCHOR0,. + 0
 251              	SystemCoreClock:
 252 0000 0024F400 		.word	16000000
 253              		.text
 254              	.Letext0:
 255              		.file 2 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 256              		.file 3 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 257              		.file 4 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h"
 258              		.file 5 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/system_stm
 259              		.file 6 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f769x
 260              		.file 7 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 261              		.file 8 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 262              		.file 9 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 263              		.file 10 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
DEFINED SYMBOLS
                            *ABS*:0000000000000000 system_stm32f7xx.c
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnlM6Gw.s:17     .text.SystemInit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnlM6Gw.s:24     .text.SystemInit:0000000000000000 SystemInit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnlM6Gw.s:73     .text.SystemInit:0000000000000040 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnlM6Gw.s:81     .text.SystemCoreClockUpdate:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnlM6Gw.s:88     .text.SystemCoreClockUpdate:0000000000000000 SystemCoreClockUpdate
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnlM6Gw.s:202    .text.SystemCoreClockUpdate:000000000000008c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnlM6Gw.s:237    .rodata:0000000000000010 APBPrescTable
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnlM6Gw.s:218    .rodata:0000000000000000 AHBPrescTable
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnlM6Gw.s:251    .data:0000000000000000 SystemCoreClock
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnlM6Gw.s:214    .rodata:0000000000000000 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnlM6Gw.s:247    .data:0000000000000000 $d
                           .group:0000000000000000 wm4.0.1feba82c71ea6f90606b0f4a064b979b
                           .group:0000000000000000 wm4.stm32f7xx.h.57.0a5c0849037a765b81edf98e7b917621
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
                           .group:0000000000000000 wm4.stm32f7xx.h.177.90d1aaec9345bde817d55cbd67a8e449
                           .group:0000000000000000 wm4.stm32f7xx_hal_conf.h.42.3156784d5484408e6927d1d369303646
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

NO UNDEFINED SYMBOLS

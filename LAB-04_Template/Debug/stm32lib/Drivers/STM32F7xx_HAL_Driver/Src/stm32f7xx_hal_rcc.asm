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
  12              		.file	"stm32f7xx_hal_rcc.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.HAL_RCC_DeInit,"ax",%progbits
  17              		.align	1
  18              		.global	HAL_RCC_DeInit
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv5-d16
  24              	HAL_RCC_DeInit:
  25              	.LFB138:
  26              		.file 1 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c
   1:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /**
   2:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   ******************************************************************************
   3:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @file    stm32f7xx_hal_rcc.c
   4:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @author  MCD Application Team
   5:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @version V1.2.2
   6:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @date    14-April-2017
   7:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @brief   RCC HAL module driver.
   8:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *          This file provides firmware functions to manage the following 
   9:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *          functionalities of the Reset and Clock Control (RCC) peripheral:
  10:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *           + Initialization and de-initialization functions
  11:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *           + Peripheral Control functions
  12:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *       
  13:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   @verbatim                
  14:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   ==============================================================================
  15:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****                       ##### RCC specific features #####
  16:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   ==============================================================================
  17:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     [..]  
  18:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       After reset the device is running from Internal High Speed oscillator 
  19:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (HSI 16MHz) with Flash 0 wait state, Flash prefetch buffer, D-Cache 
  20:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       and I-Cache are disabled, and all peripherals are off except internal
  21:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       SRAM, Flash and JTAG.
  22:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (+) There is no prescaler on High speed (AHB) and Low speed (APB) busses;
  23:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           all peripherals mapped on these busses are running at HSI speed.
  24:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (+) The clock for all peripherals is switched off, except the SRAM and FLASH.
  25:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (+) All GPIOs are in input floating state, except the JTAG pins which
  26:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           are assigned to be used for debug purpose.
  27:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
  28:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     [..]          
  29:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       Once the device started from reset, the user application has to:        
  30:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (+) Configure the clock source to be used to drive the System clock
  31:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           (if the application needs higher frequency/performance)
  32:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (+) Configure the System clock frequency and Flash settings  
  33:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (+) Configure the AHB and APB busses prescalers
  34:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (+) Enable the clock for the peripheral(s) to be used
  35:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (+) Configure the clock source(s) for peripherals which clocks are not
  36:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           derived from the System clock (I2S, RTC, ADC, USB OTG FS/SDIO/RNG)
  37:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
  38:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****                       ##### RCC Limitations #####
  39:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   ==============================================================================
  40:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     [..]  
  41:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       A delay between an RCC peripheral clock enable and the effective peripheral 
  42:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       enabling should be taken into account in order to manage the peripheral read/write 
  43:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       from/to registers.
  44:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (+) This delay depends on the peripheral mapping.
  45:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (+) If peripheral is mapped on AHB: the delay is 2 AHB clock cycle 
  46:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           after the clock enable bit is set on the hardware register
  47:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (+) If peripheral is mapped on APB: the delay is 2 APB clock cycle 
  48:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           after the clock enable bit is set on the hardware register
  49:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
  50:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     [..]  
  51:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       Implemented Workaround:
  52:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (+) For AHB & APB peripherals, a dummy read to the peripheral register has been
  53:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           inserted in each __HAL_RCC_PPP_CLK_ENABLE() macro.
  54:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
  55:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   @endverbatim
  56:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   ******************************************************************************
  57:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @attention
  58:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *
  59:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * <h2><center>&copy; COPYRIGHT(c) 2017 STMicroelectronics</center></h2>
  60:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *
  61:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * Redistribution and use in source and binary forms, with or without modification,
  62:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * are permitted provided that the following conditions are met:
  63:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  64:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *      this list of conditions and the following disclaimer.
  65:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  66:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *      this list of conditions and the following disclaimer in the documentation
  67:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *      and/or other materials provided with the distribution.
  68:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  69:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *      may be used to endorse or promote products derived from this software
  70:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *      without specific prior written permission.
  71:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *
  72:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  73:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  74:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  75:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  76:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  77:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  78:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  79:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  80:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  81:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  82:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *
  83:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   ******************************************************************************
  84:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */ 
  85:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
  86:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /* Includes ------------------------------------------------------------------*/
  87:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** #include "stm32f7xx_hal.h"
  88:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
  89:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /** @addtogroup STM32F7xx_HAL_Driver
  90:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @{
  91:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
  92:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
  93:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /** @defgroup RCC RCC
  94:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @brief RCC HAL module driver
  95:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @{
  96:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
  97:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
  98:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** #ifdef HAL_RCC_MODULE_ENABLED
  99:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /* Private typedef -----------------------------------------------------------*/
 101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /* Private define ------------------------------------------------------------*/
 102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /* Private macro -------------------------------------------------------------*/
 103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /** @defgroup RCC_Private_Macros RCC Private Macros
 104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @{
 105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
 106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** #define MCO1_CLK_ENABLE()   __HAL_RCC_GPIOA_CLK_ENABLE()
 108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** #define MCO1_GPIO_PORT        GPIOA
 109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** #define MCO1_PIN              GPIO_PIN_8
 110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** #define MCO2_CLK_ENABLE()   __HAL_RCC_GPIOC_CLK_ENABLE()
 112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** #define MCO2_GPIO_PORT         GPIOC
 113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** #define MCO2_PIN               GPIO_PIN_9
 114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /**
 116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @}
 117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
 118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /* Private variables ---------------------------------------------------------*/
 119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /** @defgroup RCC_Private_Variables RCC Private Variables
 120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @{
 121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
 122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /**
 124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @}
 125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
 126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /* Private function prototypes -----------------------------------------------*/
 128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /* Exported functions ---------------------------------------------------------*/
 129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /** @defgroup RCC_Exported_Functions RCC Exported Functions
 131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @{
 132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
 133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /** @defgroup RCC_Exported_Functions_Group1 Initialization and de-initialization functions 
 135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *  @brief    Initialization and Configuration functions 
 136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *
 137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   @verbatim    
 138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   ===============================================================================
 139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** ##### Initialization and de-initialization functions #####
 140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   ===============================================================================
 141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     [..]
 142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       This section provides functions allowing to configure the internal/external oscillators
 143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (HSE, HSI, LSE, LSI, PLL, CSS and MCO) and the System buses clocks (SYSCLK, AHB, APB1 
 144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       and APB2).
 145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     [..] Internal/external clock and PLL configuration
 147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (#) HSI (high-speed internal), 16 MHz factory-trimmed RC used directly or through
 148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           the PLL as System clock source.
 149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (#) LSI (low-speed internal), 32 KHz low consumption RC used as IWDG and/or RTC
 151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           clock source.
 152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (#) HSE (high-speed external), 4 to 26 MHz crystal oscillator used directly or
 154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           through the PLL as System clock source. Can be used also as RTC clock source.
 155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (#) LSE (low-speed external), 32 KHz oscillator used as RTC clock source.   
 157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (#) PLL (clocked by HSI or HSE), featuring two different output clocks:
 159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         (++) The first output is used to generate the high speed system clock (up to 216 MHz)
 160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         (++) The second output is used to generate the clock for the USB OTG FS (48 MHz),
 161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****              the random analog generator (<=48 MHz) and the SDIO (<= 48 MHz).
 162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (#) CSS (Clock security system), once enable using the function HAL_RCC_EnableCSS()
 164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           and if a HSE clock failure occurs(HSE used directly or through PLL as System 
 165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           clock source), the System clock is automatically switched to HSI and an interrupt
 166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           is generated if enabled. The interrupt is linked to the Cortex-M7 NMI 
 167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           (Non-Maskable Interrupt) exception vector.   
 168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (#) MCO1 (microcontroller clock output), used to output HSI, LSE, HSE or PLL
 170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           clock (through a configurable prescaler) on PA8 pin.
 171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (#) MCO2 (microcontroller clock output), used to output HSE, PLL, SYSCLK or PLLI2S
 173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           clock (through a configurable prescaler) on PC9 pin.
 174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     [..] System, AHB and APB busses clocks configuration  
 176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       (#) Several clock sources can be used to drive the System clock (SYSCLK): HSI,
 177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           HSE and PLL.
 178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           The AHB clock (HCLK) is derived from System clock through configurable 
 179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           prescaler and used to clock the CPU, memory and peripherals mapped 
 180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           on AHB bus (DMA, GPIO...). APB1 (PCLK1) and APB2 (PCLK2) clocks are derived 
 181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           from AHB clock through configurable prescalers and used to clock 
 182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           the peripherals mapped on these busses. You can use 
 183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           "HAL_RCC_GetSysClockFreq()" function to retrieve the frequencies of these clocks.  
 184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       -@- All the peripheral clocks are derived from the System clock (SYSCLK) except:
 186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           (+@) I2S: the I2S clock can be derived either from a specific PLL (PLLI2S) or
 187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****               from an external clock mapped on the I2S_CKIN pin. 
 188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****               You have to use __HAL_RCC_PLLI2S_CONFIG() macro to configure this clock.
 189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           (+@)  SAI: the SAI clock can be derived either from a specific PLL (PLLI2S) or (PLLSAI) o
 190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****               from an external clock mapped on the I2S_CKIN pin. 
 191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****                You have to use __HAL_RCC_PLLI2S_CONFIG() macro to configure this clock. 
 192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           (+@) RTC: the RTC clock can be derived either from the LSI, LSE or HSE clock
 193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****               divided by 2 to 31. You have to use __HAL_RCC_RTC_CONFIG() and __HAL_RCC_RTC_ENABLE()
 194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****               macros to configure this clock. 
 195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           (+@) USB OTG FS, SDIO and RTC: USB OTG FS require a frequency equal to 48 MHz
 196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****               to work correctly, while the SDIO require a frequency equal or lower than
 197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****               to 48. This clock is derived of the main PLL through PLLQ divider.
 198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           (+@) IWDG clock which is always the LSI clock.
 199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** @endverbatim
 200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @{
 201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
 202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /**
 204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @brief  Resets the RCC clock configuration to the default reset state.
 205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note   The default reset state of the clock configuration is given below:
 206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            - HSI ON and used as system clock source
 207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            - HSE, PLL and PLLI2S OFF
 208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            - AHB, APB1 and APB2 prescaler set to 1.
 209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            - CSS, MCO1 and MCO2 OFF
 210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            - All interrupts disabled
 211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note   This function doesn't modify the configuration of the
 212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            - Peripheral clocks  
 213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            - LSI, LSE and RTC clocks 
 214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @retval None
 215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
 216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** void HAL_RCC_DeInit(void)
 217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** {
  27              		.loc 1 217 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31              		@ link register save eliminated.
 218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Set HSION bit */
 219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   SET_BIT(RCC->CR, RCC_CR_HSION | RCC_CR_HSITRIM_4); 
  32              		.loc 1 219 0
  33 0000 104B     		ldr	r3, .L2
  34 0002 1A68     		ldr	r2, [r3]
  35 0004 42F08102 		orr	r2, r2, #129
  36 0008 1A60     		str	r2, [r3]
 220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
 221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Reset CFGR register */
 222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   CLEAR_REG(RCC->CFGR);
  37              		.loc 1 222 0
  38 000a 0022     		movs	r2, #0
  39 000c 9A60     		str	r2, [r3, #8]
 223:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
 224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Reset HSEON, CSSON, PLLON, PLLI2S */
 225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   CLEAR_BIT(RCC->CR, RCC_CR_HSEON | RCC_CR_CSSON | RCC_CR_PLLON| RCC_CR_PLLI2SON); 
  40              		.loc 1 225 0
  41 000e 1868     		ldr	r0, [r3]
  42 0010 0D49     		ldr	r1, .L2+4
  43 0012 0140     		ands	r1, r1, r0
  44 0014 1960     		str	r1, [r3]
 226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
 227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Reset PLLCFGR register */
 228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   CLEAR_REG(RCC->PLLCFGR);
  45              		.loc 1 228 0
  46 0016 5A60     		str	r2, [r3, #4]
 229:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   SET_BIT(RCC->PLLCFGR, RCC_PLLCFGR_PLLM_4 | RCC_PLLCFGR_PLLN_6 | RCC_PLLCFGR_PLLN_7 | RCC_PLLCFGR_
  47              		.loc 1 229 0
  48 0018 5868     		ldr	r0, [r3, #4]
  49 001a 0C49     		ldr	r1, .L2+8
  50 001c 0143     		orrs	r1, r1, r0
  51 001e 5960     		str	r1, [r3, #4]
 230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
 231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Reset PLLI2SCFGR register */
 232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   CLEAR_REG(RCC->PLLI2SCFGR);
  52              		.loc 1 232 0
  53 0020 C3F88420 		str	r2, [r3, #132]
 233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   SET_BIT(RCC->PLLI2SCFGR,  RCC_PLLI2SCFGR_PLLI2SN_6 | RCC_PLLI2SCFGR_PLLI2SN_7 | RCC_PLLI2SCFGR_PL
  54              		.loc 1 233 0
  55 0024 D3F88400 		ldr	r0, [r3, #132]
  56 0028 0949     		ldr	r1, .L2+12
  57 002a 0143     		orrs	r1, r1, r0
  58 002c C3F88410 		str	r1, [r3, #132]
 234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
 235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Reset HSEBYP bit */
 236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   CLEAR_BIT(RCC->CR, RCC_CR_HSEBYP);
  59              		.loc 1 236 0
  60 0030 1968     		ldr	r1, [r3]
  61 0032 21F48021 		bic	r1, r1, #262144
  62 0036 1960     		str	r1, [r3]
 237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
 238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Disable all interrupts */
 239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   CLEAR_REG(RCC->CIR);
  63              		.loc 1 239 0
  64 0038 DA60     		str	r2, [r3, #12]
 240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
 241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Update the SystemCoreClock global variable */
 242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   SystemCoreClock = HSI_VALUE;
  65              		.loc 1 242 0
  66 003a 064B     		ldr	r3, .L2+16
  67 003c 064A     		ldr	r2, .L2+20
  68 003e 1A60     		str	r2, [r3]
 243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** }
  69              		.loc 1 243 0
  70 0040 7047     		bx	lr
  71              	.L3:
  72 0042 00BF     		.align	2
  73              	.L2:
  74 0044 00380240 		.word	1073887232
  75 0048 FFFFF6FA 		.word	-84475905
  76 004c 10300024 		.word	603992080
  77 0050 00300020 		.word	536883200
  78 0054 00000000 		.word	SystemCoreClock
  79 0058 0024F400 		.word	16000000
  80              		.cfi_endproc
  81              	.LFE138:
  83              		.section	.text.HAL_RCC_OscConfig,"ax",%progbits
  84              		.align	1
  85              		.global	HAL_RCC_OscConfig
  86              		.syntax unified
  87              		.thumb
  88              		.thumb_func
  89              		.fpu fpv5-d16
  91              	HAL_RCC_OscConfig:
  92              	.LFB139:
 244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /**
 246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @brief  Initializes the RCC Oscillators according to the specified parameters in the
 247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         RCC_OscInitTypeDef.
 248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @param  RCC_OscInitStruct: pointer to an RCC_OscInitTypeDef structure that
 249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         contains the configuration information for the RCC Oscillators.
 250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note   The PLL is not disabled when used as system clock.
 251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note   Transitions LSE Bypass to LSE On and LSE On to LSE Bypass are not
 252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         supported by this function. User should request a transition to LSE Off
 253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         first and then LSE On or LSE Bypass.
 254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note   Transition HSE Bypass to HSE On and HSE On to HSE Bypass are not
 255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         supported by this function. User should request a transition to HSE Off
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         first and then HSE On or HSE Bypass.
 257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @retval HAL status
 258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
 259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** HAL_StatusTypeDef HAL_RCC_OscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct)
 260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** {
  93              		.loc 1 260 0
  94              		.cfi_startproc
  95              		@ args = 0, pretend = 0, frame = 8
  96              		@ frame_needed = 0, uses_anonymous_args = 0
  97              	.LVL0:
  98 0000 70B5     		push	{r4, r5, r6, lr}
  99              		.cfi_def_cfa_offset 16
 100              		.cfi_offset 4, -16
 101              		.cfi_offset 5, -12
 102              		.cfi_offset 6, -8
 103              		.cfi_offset 14, -4
 104 0002 82B0     		sub	sp, sp, #8
 105              		.cfi_def_cfa_offset 24
 106 0004 0446     		mov	r4, r0
 107              	.LVL1:
 261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   uint32_t tickstart = 0;
 262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   FlagStatus pwrclkchanged = RESET;
 263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****  
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Check the parameters */
 265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   assert_param(IS_RCC_OSCILLATORTYPE(RCC_OscInitStruct->OscillatorType));
 266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
 267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /*------------------------------- HSE Configuration ------------------------*/ 
 268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSE) == RCC_OSCILLATORTYPE_HSE)
 108              		.loc 1 268 0
 109 0006 0368     		ldr	r3, [r0]
 110 0008 13F0010F 		tst	r3, #1
 111 000c 29D0     		beq	.L5
 269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Check the parameters */
 271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     assert_param(IS_RCC_HSE(RCC_OscInitStruct->HSEState));
 272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* When the HSE is used as system clock or clock source for PLL, It can not be disabled */
 273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_HSE) 
 112              		.loc 1 273 0
 113 000e A94B     		ldr	r3, .L87
 114 0010 9B68     		ldr	r3, [r3, #8]
 115 0012 03F00C03 		and	r3, r3, #12
 116 0016 042B     		cmp	r3, #4
 117 0018 1AD0     		beq	.L6
 274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****        || ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_PLLCLK) && ((RCC->PLLCFGR & RC
 118              		.loc 1 274 0
 119 001a A64B     		ldr	r3, .L87
 120 001c 9B68     		ldr	r3, [r3, #8]
 121 001e 03F00C03 		and	r3, r3, #12
 122 0022 082B     		cmp	r3, #8
 123 0024 0FD0     		beq	.L73
 124              	.L7:
 275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 	  if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF
 277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         return HAL_ERROR;
 279:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     else
 282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 283:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Set the new HSE configuration ---------------------------------------*/
 284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       __HAL_RCC_HSE_CONFIG(RCC_OscInitStruct->HSEState);
 125              		.loc 1 284 0
 126 0026 6368     		ldr	r3, [r4, #4]
 127 0028 B3F5803F 		cmp	r3, #65536
 128 002c 40D0     		beq	.L74
 129              		.loc 1 284 0 is_stmt 0 discriminator 2
 130 002e 002B     		cmp	r3, #0
 131 0030 54D1     		bne	.L11
 132              		.loc 1 284 0 discriminator 3
 133 0032 A04B     		ldr	r3, .L87
 134 0034 1A68     		ldr	r2, [r3]
 135 0036 22F48032 		bic	r2, r2, #65536
 136 003a 1A60     		str	r2, [r3]
 137 003c 1A68     		ldr	r2, [r3]
 138 003e 22F48022 		bic	r2, r2, #262144
 139 0042 1A60     		str	r2, [r3]
 140 0044 39E0     		b	.L10
 141              	.L73:
 274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****        || ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_PLLCLK) && ((RCC->PLLCFGR & RC
 142              		.loc 1 274 0 is_stmt 1 discriminator 1
 143 0046 9B4B     		ldr	r3, .L87
 144 0048 5B68     		ldr	r3, [r3, #4]
 145 004a 13F4800F 		tst	r3, #4194304
 146 004e EAD0     		beq	.L7
 147              	.L6:
 276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 148              		.loc 1 276 0
 149 0050 984B     		ldr	r3, .L87
 150 0052 1B68     		ldr	r3, [r3]
 151 0054 13F4003F 		tst	r3, #131072
 152 0058 03D0     		beq	.L5
 276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 153              		.loc 1 276 0 is_stmt 0 discriminator 1
 154 005a 6368     		ldr	r3, [r4, #4]
 155 005c 002B     		cmp	r3, #0
 156 005e 00F0D381 		beq	.L75
 157              	.LVL2:
 158              	.L5:
 285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       
 286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Check the HSE State */
 287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       if(RCC_OscInitStruct->HSEState != RCC_HSE_OFF)
 288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Get Start Tick*/
 290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         
 292:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Wait till HSE is ready */  
 293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
 296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           {
 297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****             return HAL_TIMEOUT;
 298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           }
 299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         }
 300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 301:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       else
 302:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Get Start Tick*/
 304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         
 306:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Wait till HSE is bypassed or disabled */
 307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
 308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****            if((HAL_GetTick() - tickstart ) > HSE_TIMEOUT_VALUE)
 310:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           {
 311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****             return HAL_TIMEOUT;
 312:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           }
 313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         }
 314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 315:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 317:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /*----------------------------- HSI Configuration --------------------------*/ 
 318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI) == RCC_OSCILLATORTYPE_HSI)
 159              		.loc 1 318 0 is_stmt 1
 160 0062 2368     		ldr	r3, [r4]
 161 0064 13F0020F 		tst	r3, #2
 162 0068 7BD0     		beq	.L18
 319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Check the parameters */
 321:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     assert_param(IS_RCC_HSI(RCC_OscInitStruct->HSIState));
 322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     assert_param(IS_RCC_CALIBRATION_VALUE(RCC_OscInitStruct->HSICalibrationValue));
 323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 324:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Check if HSI is used as system clock or as PLL source when PLL is selected as system clock *
 325:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     if((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_HSI) 
 163              		.loc 1 325 0
 164 006a 924B     		ldr	r3, .L87
 165 006c 9B68     		ldr	r3, [r3, #8]
 166 006e 13F00C0F 		tst	r3, #12
 167 0072 5ED0     		beq	.L19
 326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****        || ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_SYSCLKSOURCE_STATUS_PLLCLK) && ((RCC->PLLCFGR & RC
 168              		.loc 1 326 0
 169 0074 8F4B     		ldr	r3, .L87
 170 0076 9B68     		ldr	r3, [r3, #8]
 171 0078 03F00C03 		and	r3, r3, #12
 172 007c 082B     		cmp	r3, #8
 173 007e 53D0     		beq	.L76
 174              	.L20:
 327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* When HSI is used as system clock it will not disabled */
 329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       if((__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET) && (RCC_OscInitStruct->HSIState != RCC_HSI_
 330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 331:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         return HAL_ERROR;
 332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Otherwise, just the calibration is allowed */
 334:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       else
 335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 336:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Adjusts the Internal High Speed oscillator (HSI) calibration value.*/
 337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 338:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     else
 341:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Check the HSI State */
 343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       if((RCC_OscInitStruct->HSIState)!= RCC_HSI_OFF)
 175              		.loc 1 343 0
 176 0080 E368     		ldr	r3, [r4, #12]
 177 0082 002B     		cmp	r3, #0
 178 0084 00F09780 		beq	.L22
 344:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Enable the Internal High Speed oscillator (HSI). */
 346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         __HAL_RCC_HSI_ENABLE();
 179              		.loc 1 346 0
 180 0088 8A4A     		ldr	r2, .L87
 181 008a 1368     		ldr	r3, [r2]
 182 008c 43F00103 		orr	r3, r3, #1
 183 0090 1360     		str	r3, [r2]
 347:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Get Start Tick*/
 349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 184              		.loc 1 349 0
 185 0092 FFF7FEFF 		bl	HAL_GetTick
 186              	.LVL3:
 187 0096 0546     		mov	r5, r0
 188              	.LVL4:
 189              	.L23:
 350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Wait till HSI is ready */  
 352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 190              		.loc 1 352 0
 191 0098 864B     		ldr	r3, .L87
 192 009a 1B68     		ldr	r3, [r3]
 193 009c 13F0020F 		tst	r3, #2
 194 00a0 7AD1     		bne	.L77
 353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 354:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
 195              		.loc 1 354 0
 196 00a2 FFF7FEFF 		bl	HAL_GetTick
 197              	.LVL5:
 198 00a6 401B     		subs	r0, r0, r5
 199 00a8 0228     		cmp	r0, #2
 200 00aa F5D9     		bls	.L23
 355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           {
 356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****             return HAL_TIMEOUT;
 201              		.loc 1 356 0
 202 00ac 0320     		movs	r0, #3
 203 00ae AEE1     		b	.L8
 204              	.LVL6:
 205              	.L74:
 284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       
 206              		.loc 1 284 0 discriminator 1
 207 00b0 804A     		ldr	r2, .L87
 208 00b2 1368     		ldr	r3, [r2]
 209 00b4 43F48033 		orr	r3, r3, #65536
 210 00b8 1360     		str	r3, [r2]
 211              	.L10:
 287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 212              		.loc 1 287 0
 213 00ba 6368     		ldr	r3, [r4, #4]
 214 00bc 2BB3     		cbz	r3, .L13
 290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         
 215              		.loc 1 290 0
 216 00be FFF7FEFF 		bl	HAL_GetTick
 217              	.LVL7:
 218 00c2 0546     		mov	r5, r0
 219              	.LVL8:
 220              	.L14:
 293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 221              		.loc 1 293 0
 222 00c4 7B4B     		ldr	r3, .L87
 223 00c6 1B68     		ldr	r3, [r3]
 224 00c8 13F4003F 		tst	r3, #131072
 225 00cc C9D1     		bne	.L5
 295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           {
 226              		.loc 1 295 0
 227 00ce FFF7FEFF 		bl	HAL_GetTick
 228              	.LVL9:
 229 00d2 401B     		subs	r0, r0, r5
 230 00d4 6428     		cmp	r0, #100
 231 00d6 F5D9     		bls	.L14
 297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           }
 232              		.loc 1 297 0
 233 00d8 0320     		movs	r0, #3
 234 00da 98E1     		b	.L8
 235              	.LVL10:
 236              	.L11:
 284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       
 237              		.loc 1 284 0 discriminator 4
 238 00dc B3F5A02F 		cmp	r3, #327680
 239 00e0 09D0     		beq	.L78
 284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       
 240              		.loc 1 284 0 is_stmt 0 discriminator 6
 241 00e2 744B     		ldr	r3, .L87
 242 00e4 1A68     		ldr	r2, [r3]
 243 00e6 22F48032 		bic	r2, r2, #65536
 244 00ea 1A60     		str	r2, [r3]
 245 00ec 1A68     		ldr	r2, [r3]
 246 00ee 22F48022 		bic	r2, r2, #262144
 247 00f2 1A60     		str	r2, [r3]
 248 00f4 E1E7     		b	.L10
 249              	.L78:
 284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       
 250              		.loc 1 284 0 discriminator 5
 251 00f6 6F4B     		ldr	r3, .L87
 252 00f8 1A68     		ldr	r2, [r3]
 253 00fa 42F48022 		orr	r2, r2, #262144
 254 00fe 1A60     		str	r2, [r3]
 255 0100 1A68     		ldr	r2, [r3]
 256 0102 42F48032 		orr	r2, r2, #65536
 257 0106 1A60     		str	r2, [r3]
 258 0108 D7E7     		b	.L10
 259              	.L13:
 304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         
 260              		.loc 1 304 0 is_stmt 1
 261 010a FFF7FEFF 		bl	HAL_GetTick
 262              	.LVL11:
 263 010e 0546     		mov	r5, r0
 264              	.LVL12:
 265              	.L16:
 307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 266              		.loc 1 307 0
 267 0110 684B     		ldr	r3, .L87
 268 0112 1B68     		ldr	r3, [r3]
 269 0114 13F4003F 		tst	r3, #131072
 270 0118 A3D0     		beq	.L5
 309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           {
 271              		.loc 1 309 0
 272 011a FFF7FEFF 		bl	HAL_GetTick
 273              	.LVL13:
 274 011e 401B     		subs	r0, r0, r5
 275 0120 6428     		cmp	r0, #100
 276 0122 F5D9     		bls	.L16
 311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           }
 277              		.loc 1 311 0
 278 0124 0320     		movs	r0, #3
 279 0126 72E1     		b	.L8
 280              	.LVL14:
 281              	.L76:
 326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 282              		.loc 1 326 0 discriminator 1
 283 0128 624B     		ldr	r3, .L87
 284 012a 5B68     		ldr	r3, [r3, #4]
 285 012c 13F4800F 		tst	r3, #4194304
 286 0130 A6D1     		bne	.L20
 287              	.L19:
 329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 288              		.loc 1 329 0
 289 0132 604B     		ldr	r3, .L87
 290 0134 1B68     		ldr	r3, [r3]
 291 0136 13F0020F 		tst	r3, #2
 292 013a 04D0     		beq	.L21
 329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 293              		.loc 1 329 0 is_stmt 0 discriminator 1
 294 013c E368     		ldr	r3, [r4, #12]
 295 013e 012B     		cmp	r3, #1
 296 0140 01D0     		beq	.L21
 331:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 297              		.loc 1 331 0 is_stmt 1
 298 0142 0120     		movs	r0, #1
 299 0144 63E1     		b	.L8
 300              	.L21:
 337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 301              		.loc 1 337 0
 302 0146 5B48     		ldr	r0, .L87
 303 0148 0368     		ldr	r3, [r0]
 304 014a 23F0F803 		bic	r3, r3, #248
 305 014e 2169     		ldr	r1, [r4, #16]
 306              	.LVL15:
 307              	.LBB35:
 308              	.LBB36:
 309              		.file 2 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h"
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
 430:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 432:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 433:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Data Memory Barrier
 435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Ensures the apparent order of the explicit memory operations before
 436:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****            and after the instruction, without ensuring their completion.
 437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE void __DMB(void)
 439:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("dmb 0xF":::"memory");
 441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 442:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 444:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Reverse byte order (32 bit)
 446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Reverses the byte order in integer value.
 447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    value  Value to reverse
 448:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Reversed value
 449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 450:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE uint32_t __REV(uint32_t value)
 451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #if (__GNUC__ > 4) || (__GNUC__ == 4 && __GNUC_MINOR__ >= 5)
 453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   return __builtin_bswap32(value);
 454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #else
 455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 456:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("rev %0, %1" : __CMSIS_GCC_OUT_REG (result) : __CMSIS_GCC_USE_REG (value) );
 458:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #endif
 460:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 463:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Reverse byte order (16 bit)
 465:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Reverses the byte order in two unsigned short values.
 466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    value  Value to reverse
 467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Reversed value
 468:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE uint32_t __REV16(uint32_t value)
 470:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 471:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 472:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("rev16 %0, %1" : __CMSIS_GCC_OUT_REG (result) : __CMSIS_GCC_USE_REG (value) );
 474:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 475:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 476:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Reverse byte order in signed short value
 480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Reverses the byte order in a signed short value with sign extension to integer.
 481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    value  Value to reverse
 482:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Reversed value
 483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 484:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE int32_t __REVSH(int32_t value)
 485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #if (__GNUC__ > 4) || (__GNUC__ == 4 && __GNUC_MINOR__ >= 8)
 487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   return (short)__builtin_bswap16(value);
 488:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #else
 489:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   int32_t result;
 490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   __ASM volatile ("revsh %0, %1" : __CMSIS_GCC_OUT_REG (result) : __CMSIS_GCC_USE_REG (value) );
 492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   return(result);
 493:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #endif
 494:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 495:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 497:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 498:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Rotate Right in unsigned value (32 bit)
 499:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Rotate Right (immediate) provides the value of the contents of a register rotated by a v
 500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    value  Value to rotate
 501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    value  Number of Bits to rotate
 502:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Rotated value
 503:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE uint32_t __ROR(uint32_t op1, uint32_t op2)
 505:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 506:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   return (op1 >> op2) | (op1 << (32U - op2));
 507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 509:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 511:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Breakpoint
 512:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Causes the processor to enter Debug state.
 513:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****            Debug tools can use this to investigate system state when the instruction at a particula
 514:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    value  is ignored by the processor.
 515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****                  If required, a debugger can use it to store additional information about the break
 516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 517:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #define __BKPT(value)                       __ASM volatile ("bkpt "#value)
 518:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 520:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** /**
 521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \brief   Reverse bit order of value
 522:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \details Reverses the bit order of the given value.
 523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \param [in]    value  Value to reverse
 524:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   \return               Reversed value
 525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****  */
 526:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** __attribute__((always_inline)) __STATIC_INLINE uint32_t __RBIT(uint32_t value)
 527:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** {
 528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****   uint32_t result;
 529:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** 
 530:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** #if       (__CORTEX_M >= 0x03U) || (__CORTEX_SC >= 300U)
 531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h ****    __ASM volatile ("rbit %0, %1" : "=r" (result) : "r" (value) );
 310              		.loc 2 531 0
 311 0150 F822     		movs	r2, #248
 312              		.syntax unified
 313              	@ 531 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 314 0152 92FAA2F2 		rbit r2, r2
 315              	@ 0 "" 2
 316              	.LVL16:
 317              		.thumb
 318              		.syntax unified
 319              	.LBE36:
 320              	.LBE35:
 337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 321              		.loc 1 337 0
 322 0156 B2FA82F2 		clz	r2, r2
 323 015a 01FA02F2 		lsl	r2, r1, r2
 324 015e 1343     		orrs	r3, r3, r2
 325 0160 0360     		str	r3, [r0]
 326              	.L18:
 357:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           }
 358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         }
 359:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****                 
 360:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Adjusts the Internal High Speed oscillator (HSI) calibration value.*/
 361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
 362:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       else
 364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Disable the Internal High Speed oscillator (HSI). */
 366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         __HAL_RCC_HSI_DISABLE();
 367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 368:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Get Start Tick*/
 369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       
 371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Wait till HSI is ready */  
 372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         while(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET)
 373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           if((HAL_GetTick() - tickstart ) > HSI_TIMEOUT_VALUE)
 375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           {
 376:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****             return HAL_TIMEOUT;
 377:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           } 
 378:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         } 
 379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 380:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 381:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /*------------------------------ LSI Configuration -------------------------*/
 383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSI) == RCC_OSCILLATORTYPE_LSI)
 327              		.loc 1 383 0
 328 0162 2368     		ldr	r3, [r4]
 329 0164 13F0080F 		tst	r3, #8
 330 0168 4DD0     		beq	.L27
 384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Check the parameters */
 386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     assert_param(IS_RCC_LSI(RCC_OscInitStruct->LSIState));
 387:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Check the LSI State */
 389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     if((RCC_OscInitStruct->LSIState)!= RCC_LSI_OFF)
 331              		.loc 1 389 0
 332 016a 6369     		ldr	r3, [r4, #20]
 333 016c 002B     		cmp	r3, #0
 334 016e 36D0     		beq	.L28
 390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Enable the Internal Low Speed oscillator (LSI). */
 392:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       __HAL_RCC_LSI_ENABLE();
 335              		.loc 1 392 0
 336 0170 504A     		ldr	r2, .L87
 337 0172 536F     		ldr	r3, [r2, #116]
 338 0174 43F00103 		orr	r3, r3, #1
 339 0178 5367     		str	r3, [r2, #116]
 393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       
 394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Get Start Tick*/
 395:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       tickstart = HAL_GetTick();
 340              		.loc 1 395 0
 341 017a FFF7FEFF 		bl	HAL_GetTick
 342              	.LVL17:
 343 017e 0546     		mov	r5, r0
 344              	.LVL18:
 345              	.L29:
 396:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       
 397:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Wait till LSI is ready */
 398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) == RESET)
 346              		.loc 1 398 0
 347 0180 4C4B     		ldr	r3, .L87
 348 0182 5B6F     		ldr	r3, [r3, #116]
 349 0184 13F0020F 		tst	r3, #2
 350 0188 3DD1     		bne	.L27
 399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 400:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
 351              		.loc 1 400 0
 352 018a FFF7FEFF 		bl	HAL_GetTick
 353              	.LVL19:
 354 018e 401B     		subs	r0, r0, r5
 355 0190 0228     		cmp	r0, #2
 356 0192 F5D9     		bls	.L29
 401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 402:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           return HAL_TIMEOUT;
 357              		.loc 1 402 0
 358 0194 0320     		movs	r0, #3
 359 0196 3AE1     		b	.L8
 360              	.L77:
 361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 361              		.loc 1 361 0
 362 0198 4648     		ldr	r0, .L87
 363 019a 0368     		ldr	r3, [r0]
 364 019c 23F0F803 		bic	r3, r3, #248
 365 01a0 2169     		ldr	r1, [r4, #16]
 366              	.LVL20:
 367              	.LBB37:
 368              	.LBB38:
 369              		.loc 2 531 0
 370 01a2 F822     		movs	r2, #248
 371              		.syntax unified
 372              	@ 531 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 373 01a4 92FAA2F2 		rbit r2, r2
 374              	@ 0 "" 2
 375              	.LVL21:
 376              		.thumb
 377              		.syntax unified
 378              	.LBE38:
 379              	.LBE37:
 361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 380              		.loc 1 361 0
 381 01a8 B2FA82F2 		clz	r2, r2
 382 01ac 01FA02F2 		lsl	r2, r1, r2
 383 01b0 1343     		orrs	r3, r3, r2
 384 01b2 0360     		str	r3, [r0]
 385 01b4 D5E7     		b	.L18
 386              	.LVL22:
 387              	.L22:
 366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 388              		.loc 1 366 0
 389 01b6 3F4A     		ldr	r2, .L87
 390 01b8 1368     		ldr	r3, [r2]
 391 01ba 23F00103 		bic	r3, r3, #1
 392 01be 1360     		str	r3, [r2]
 369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       
 393              		.loc 1 369 0
 394 01c0 FFF7FEFF 		bl	HAL_GetTick
 395              	.LVL23:
 396 01c4 0546     		mov	r5, r0
 397              	.LVL24:
 398              	.L25:
 372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 399              		.loc 1 372 0
 400 01c6 3B4B     		ldr	r3, .L87
 401 01c8 1B68     		ldr	r3, [r3]
 402 01ca 13F0020F 		tst	r3, #2
 403 01ce C8D0     		beq	.L18
 374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           {
 404              		.loc 1 374 0
 405 01d0 FFF7FEFF 		bl	HAL_GetTick
 406              	.LVL25:
 407 01d4 401B     		subs	r0, r0, r5
 408 01d6 0228     		cmp	r0, #2
 409 01d8 F5D9     		bls	.L25
 376:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           } 
 410              		.loc 1 376 0
 411 01da 0320     		movs	r0, #3
 412 01dc 17E1     		b	.L8
 413              	.LVL26:
 414              	.L28:
 403:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         }
 404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 405:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 406:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     else
 407:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Disable the Internal Low Speed oscillator (LSI). */
 409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       __HAL_RCC_LSI_DISABLE();
 415              		.loc 1 409 0
 416 01de 354A     		ldr	r2, .L87
 417 01e0 536F     		ldr	r3, [r2, #116]
 418 01e2 23F00103 		bic	r3, r3, #1
 419 01e6 5367     		str	r3, [r2, #116]
 410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       
 411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Get Start Tick*/
 412:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       tickstart = HAL_GetTick();
 420              		.loc 1 412 0
 421 01e8 FFF7FEFF 		bl	HAL_GetTick
 422              	.LVL27:
 423 01ec 0546     		mov	r5, r0
 424              	.LVL28:
 425              	.L31:
 413:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       
 414:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Wait till LSI is ready */  
 415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSIRDY) != RESET)
 426              		.loc 1 415 0
 427 01ee 314B     		ldr	r3, .L87
 428 01f0 5B6F     		ldr	r3, [r3, #116]
 429 01f2 13F0020F 		tst	r3, #2
 430 01f6 06D0     		beq	.L27
 416:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 417:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart ) > LSI_TIMEOUT_VALUE)
 431              		.loc 1 417 0
 432 01f8 FFF7FEFF 		bl	HAL_GetTick
 433              	.LVL29:
 434 01fc 401B     		subs	r0, r0, r5
 435 01fe 0228     		cmp	r0, #2
 436 0200 F5D9     		bls	.L31
 418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 419:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           return HAL_TIMEOUT;
 437              		.loc 1 419 0
 438 0202 0320     		movs	r0, #3
 439 0204 03E1     		b	.L8
 440              	.LVL30:
 441              	.L27:
 420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         }
 421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 423:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 424:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /*------------------------------ LSE Configuration -------------------------*/ 
 425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   if(((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_LSE) == RCC_OSCILLATORTYPE_LSE)
 442              		.loc 1 425 0
 443 0206 2368     		ldr	r3, [r4]
 444 0208 13F0040F 		tst	r3, #4
 445 020c 7ED0     		beq	.L33
 426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 427:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Check the parameters */
 428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     assert_param(IS_RCC_LSE(RCC_OscInitStruct->LSEState));
 429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 430:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Update LSE configuration in Backup Domain control register    */
 431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Requires to enable write access to Backup Domain of necessary */
 432:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     if(__HAL_RCC_PWR_IS_CLK_DISABLED())
 446              		.loc 1 432 0
 447 020e 294B     		ldr	r3, .L87
 448 0210 1B6C     		ldr	r3, [r3, #64]
 449 0212 13F0805F 		tst	r3, #268435456
 450 0216 1ED1     		bne	.L63
 451              	.LBB39:
 433:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Enable Power Clock*/
 435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       __HAL_RCC_PWR_CLK_ENABLE();
 452              		.loc 1 435 0
 453 0218 264B     		ldr	r3, .L87
 454 021a 1A6C     		ldr	r2, [r3, #64]
 455 021c 42F08052 		orr	r2, r2, #268435456
 456 0220 1A64     		str	r2, [r3, #64]
 457 0222 1B6C     		ldr	r3, [r3, #64]
 458 0224 03F08053 		and	r3, r3, #268435456
 459 0228 0193     		str	r3, [sp, #4]
 460 022a 019B     		ldr	r3, [sp, #4]
 461              	.LVL31:
 462              	.LBE39:
 436:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       pwrclkchanged = SET;
 463              		.loc 1 436 0
 464 022c 0125     		movs	r5, #1
 465              	.LVL32:
 466              	.L34:
 437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 439:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     if(HAL_IS_BIT_CLR(PWR->CR1, PWR_CR1_DBP))
 467              		.loc 1 439 0
 468 022e 224B     		ldr	r3, .L87+4
 469 0230 1B68     		ldr	r3, [r3]
 470 0232 13F4807F 		tst	r3, #256
 471 0236 10D0     		beq	.L79
 472              	.L35:
 440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {    
 441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Enable write access to Backup domain */
 442:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       PWR->CR1 |= PWR_CR1_DBP;
 443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       
 444:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Wait for Backup domain Write protection disable */
 445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       tickstart = HAL_GetTick();
 446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       
 447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       while(HAL_IS_BIT_CLR(PWR->CR1, PWR_CR1_DBP))
 448:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart ) > RCC_DBP_TIMEOUT_VALUE)
 450:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           return HAL_TIMEOUT;
 452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         }
 453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 456:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Set the new LSE configuration -----------------------------------------*/
 457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     __HAL_RCC_LSE_CONFIG(RCC_OscInitStruct->LSEState);
 473              		.loc 1 457 0
 474 0238 A368     		ldr	r3, [r4, #8]
 475 023a 012B     		cmp	r3, #1
 476 023c 21D0     		beq	.L80
 477              		.loc 1 457 0 is_stmt 0 discriminator 2
 478 023e 002B     		cmp	r3, #0
 479 0240 3CD1     		bne	.L40
 480              		.loc 1 457 0 discriminator 3
 481 0242 1C4B     		ldr	r3, .L87
 482 0244 1A6F     		ldr	r2, [r3, #112]
 483 0246 22F00102 		bic	r2, r2, #1
 484 024a 1A67     		str	r2, [r3, #112]
 485 024c 1A6F     		ldr	r2, [r3, #112]
 486 024e 22F00402 		bic	r2, r2, #4
 487 0252 1A67     		str	r2, [r3, #112]
 488 0254 1AE0     		b	.L39
 489              	.LVL33:
 490              	.L63:
 262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****  
 491              		.loc 1 262 0 is_stmt 1
 492 0256 0025     		movs	r5, #0
 493 0258 E9E7     		b	.L34
 494              	.LVL34:
 495              	.L79:
 442:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       
 496              		.loc 1 442 0
 497 025a 174A     		ldr	r2, .L87+4
 498 025c 1368     		ldr	r3, [r2]
 499 025e 43F48073 		orr	r3, r3, #256
 500 0262 1360     		str	r3, [r2]
 445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       
 501              		.loc 1 445 0
 502 0264 FFF7FEFF 		bl	HAL_GetTick
 503              	.LVL35:
 504 0268 0646     		mov	r6, r0
 505              	.LVL36:
 506              	.L36:
 447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 507              		.loc 1 447 0
 508 026a 134B     		ldr	r3, .L87+4
 509 026c 1B68     		ldr	r3, [r3]
 510 026e 13F4807F 		tst	r3, #256
 511 0272 E1D1     		bne	.L35
 449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 512              		.loc 1 449 0
 513 0274 FFF7FEFF 		bl	HAL_GetTick
 514              	.LVL37:
 515 0278 801B     		subs	r0, r0, r6
 516 027a 6428     		cmp	r0, #100
 517 027c F5D9     		bls	.L36
 451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         }
 518              		.loc 1 451 0
 519 027e 0320     		movs	r0, #3
 520 0280 C5E0     		b	.L8
 521              	.LVL38:
 522              	.L80:
 523              		.loc 1 457 0 discriminator 1
 524 0282 0C4A     		ldr	r2, .L87
 525 0284 136F     		ldr	r3, [r2, #112]
 526 0286 43F00103 		orr	r3, r3, #1
 527 028a 1367     		str	r3, [r2, #112]
 528              	.L39:
 458:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Check the LSE State */
 459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     if((RCC_OscInitStruct->LSEState) != RCC_LSE_OFF)
 529              		.loc 1 459 0
 530 028c A368     		ldr	r3, [r4, #8]
 531 028e 5BB3     		cbz	r3, .L42
 460:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Get Start Tick*/
 462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       tickstart = HAL_GetTick();
 532              		.loc 1 462 0
 533 0290 FFF7FEFF 		bl	HAL_GetTick
 534              	.LVL39:
 535 0294 0646     		mov	r6, r0
 536              	.LVL40:
 537              	.L43:
 463:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       
 464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Wait till LSE is ready */  
 465:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) == RESET)
 538              		.loc 1 465 0
 539 0296 074B     		ldr	r3, .L87
 540 0298 1B6F     		ldr	r3, [r3, #112]
 541 029a 13F0020F 		tst	r3, #2
 542 029e 34D1     		bne	.L45
 466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
 543              		.loc 1 467 0
 544 02a0 FFF7FEFF 		bl	HAL_GetTick
 545              	.LVL41:
 546 02a4 801B     		subs	r0, r0, r6
 547 02a6 41F28833 		movw	r3, #5000
 548 02aa 9842     		cmp	r0, r3
 549 02ac F3D9     		bls	.L43
 468:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           return HAL_TIMEOUT;
 550              		.loc 1 469 0
 551 02ae 0320     		movs	r0, #3
 552 02b0 ADE0     		b	.L8
 553              	.L88:
 554 02b2 00BF     		.align	2
 555              	.L87:
 556 02b4 00380240 		.word	1073887232
 557 02b8 00700040 		.word	1073770496
 558              	.LVL42:
 559              	.L40:
 457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Check the LSE State */
 560              		.loc 1 457 0 discriminator 4
 561 02bc 052B     		cmp	r3, #5
 562 02be 09D0     		beq	.L81
 457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Check the LSE State */
 563              		.loc 1 457 0 is_stmt 0 discriminator 6
 564 02c0 554B     		ldr	r3, .L89
 565 02c2 1A6F     		ldr	r2, [r3, #112]
 566 02c4 22F00102 		bic	r2, r2, #1
 567 02c8 1A67     		str	r2, [r3, #112]
 568 02ca 1A6F     		ldr	r2, [r3, #112]
 569 02cc 22F00402 		bic	r2, r2, #4
 570 02d0 1A67     		str	r2, [r3, #112]
 571 02d2 DBE7     		b	.L39
 572              	.L81:
 457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Check the LSE State */
 573              		.loc 1 457 0 discriminator 5
 574 02d4 504B     		ldr	r3, .L89
 575 02d6 1A6F     		ldr	r2, [r3, #112]
 576 02d8 42F00402 		orr	r2, r2, #4
 577 02dc 1A67     		str	r2, [r3, #112]
 578 02de 1A6F     		ldr	r2, [r3, #112]
 579 02e0 42F00102 		orr	r2, r2, #1
 580 02e4 1A67     		str	r2, [r3, #112]
 581 02e6 D1E7     		b	.L39
 582              	.L42:
 470:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         }       
 471:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 472:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     else
 474:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 475:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Get Start Tick*/
 476:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       tickstart = HAL_GetTick();
 583              		.loc 1 476 0 is_stmt 1
 584 02e8 FFF7FEFF 		bl	HAL_GetTick
 585              	.LVL43:
 586 02ec 0646     		mov	r6, r0
 587              	.LVL44:
 588              	.L46:
 477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       
 478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Wait till LSE is ready */  
 479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       while(__HAL_RCC_GET_FLAG(RCC_FLAG_LSERDY) != RESET)
 589              		.loc 1 479 0
 590 02ee 4A4B     		ldr	r3, .L89
 591 02f0 1B6F     		ldr	r3, [r3, #112]
 592 02f2 13F0020F 		tst	r3, #2
 593 02f6 08D0     		beq	.L45
 480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart ) > RCC_LSE_TIMEOUT_VALUE)
 594              		.loc 1 481 0
 595 02f8 FFF7FEFF 		bl	HAL_GetTick
 596              	.LVL45:
 597 02fc 801B     		subs	r0, r0, r6
 598 02fe 41F28833 		movw	r3, #5000
 599 0302 9842     		cmp	r0, r3
 600 0304 F3D9     		bls	.L46
 482:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           return HAL_TIMEOUT;
 601              		.loc 1 483 0
 602 0306 0320     		movs	r0, #3
 603 0308 81E0     		b	.L8
 604              	.L45:
 484:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         }       
 485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 488:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Restore clock configuration if changed */
 489:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     if(pwrclkchanged == SET)
 605              		.loc 1 489 0
 606 030a F5B9     		cbnz	r5, .L82
 607              	.LVL46:
 608              	.L33:
 490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       __HAL_RCC_PWR_CLK_DISABLE();
 492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 493:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 494:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /*-------------------------------- PLL Configuration -----------------------*/
 495:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Check the parameters */
 496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   assert_param(IS_RCC_PLL(RCC_OscInitStruct->PLL.PLLState));
 497:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   if ((RCC_OscInitStruct->PLL.PLLState) != RCC_PLL_NONE)
 609              		.loc 1 497 0
 610 030c A369     		ldr	r3, [r4, #24]
 611 030e 002B     		cmp	r3, #0
 612 0310 7CD0     		beq	.L67
 498:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 499:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Check if the PLL is used as system clock or not */
 500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     if(__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_SYSCLKSOURCE_STATUS_PLLCLK)
 613              		.loc 1 500 0
 614 0312 414A     		ldr	r2, .L89
 615 0314 9268     		ldr	r2, [r2, #8]
 616 0316 02F00C02 		and	r2, r2, #12
 617 031a 082A     		cmp	r2, #8
 618 031c 79D0     		beq	.L68
 501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     { 
 502:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       if((RCC_OscInitStruct->PLL.PLLState) == RCC_PLL_ON)
 619              		.loc 1 502 0
 620 031e 022B     		cmp	r3, #2
 621 0320 19D0     		beq	.L83
 503:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Check the parameters */
 505:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         assert_param(IS_RCC_PLLSOURCE(RCC_OscInitStruct->PLL.PLLSource));
 506:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         assert_param(IS_RCC_PLLM_VALUE(RCC_OscInitStruct->PLL.PLLM));
 507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         assert_param(IS_RCC_PLLN_VALUE(RCC_OscInitStruct->PLL.PLLN));
 508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         assert_param(IS_RCC_PLLP_VALUE(RCC_OscInitStruct->PLL.PLLP));
 509:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         assert_param(IS_RCC_PLLQ_VALUE(RCC_OscInitStruct->PLL.PLLQ));
 510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** #if defined (RCC_PLLCFGR_PLLR)
 511:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         assert_param(IS_RCC_PLLR_VALUE(RCC_OscInitStruct->PLL.PLLR));
 512:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** #endif
 513:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         
 514:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Disable the main PLL. */
 515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         __HAL_RCC_PLL_DISABLE();
 516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         
 517:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Get Start Tick*/
 518:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         
 520:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Wait till PLL is ready */  
 521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 522:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 524:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           {
 525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****             return HAL_TIMEOUT;
 526:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           }
 527:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         }
 528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         
 529:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Configure the main PLL clock source, multiplication and division factors. */
 530:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** #if defined (RCC_PLLCFGR_PLLR)
 531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         __HAL_RCC_PLL_CONFIG(RCC_OscInitStruct->PLL.PLLSource,
 532:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLM,
 533:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLN,
 534:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLP,
 535:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLQ,
 536:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLR);
 537:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** #else
 538:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         __HAL_RCC_PLL_CONFIG(RCC_OscInitStruct->PLL.PLLSource,
 539:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLM,
 540:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLN,
 541:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLP,
 542:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLQ);
 543:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** #endif
 544:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 545:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Enable the main PLL. */
 546:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         __HAL_RCC_PLL_ENABLE();
 547:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 548:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Get Start Tick*/
 549:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 550:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         
 551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Wait till PLL is ready */  
 552:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 553:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 554:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 555:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           {
 556:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****             return HAL_TIMEOUT;
 557:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           } 
 558:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         }
 559:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 560:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       else
 561:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 562:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Disable the main PLL. */
 563:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         __HAL_RCC_PLL_DISABLE();
 622              		.loc 1 563 0
 623 0322 3D4A     		ldr	r2, .L89
 624 0324 1368     		ldr	r3, [r2]
 625 0326 23F08073 		bic	r3, r3, #16777216
 626 032a 1360     		str	r3, [r2]
 564:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****  
 565:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Get Start Tick*/
 566:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         tickstart = HAL_GetTick();
 627              		.loc 1 566 0
 628 032c FFF7FEFF 		bl	HAL_GetTick
 629              	.LVL47:
 630 0330 0446     		mov	r4, r0
 631              	.LVL48:
 632              	.L53:
 567:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         
 568:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* Wait till PLL is ready */  
 569:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 633              		.loc 1 569 0
 634 0332 394B     		ldr	r3, .L89
 635 0334 1B68     		ldr	r3, [r3]
 636 0336 13F0007F 		tst	r3, #33554432
 637 033a 63D0     		beq	.L84
 570:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 571:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 638              		.loc 1 571 0
 639 033c FFF7FEFF 		bl	HAL_GetTick
 640              	.LVL49:
 641 0340 001B     		subs	r0, r0, r4
 642 0342 0228     		cmp	r0, #2
 643 0344 F5D9     		bls	.L53
 572:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           {
 573:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****             return HAL_TIMEOUT;
 644              		.loc 1 573 0
 645 0346 0320     		movs	r0, #3
 646 0348 61E0     		b	.L8
 647              	.LVL50:
 648              	.L82:
 491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 649              		.loc 1 491 0
 650 034a 334A     		ldr	r2, .L89
 651 034c 136C     		ldr	r3, [r2, #64]
 652 034e 23F08053 		bic	r3, r3, #268435456
 653 0352 1364     		str	r3, [r2, #64]
 654 0354 DAE7     		b	.L33
 655              	.LVL51:
 656              	.L83:
 515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         
 657              		.loc 1 515 0
 658 0356 304A     		ldr	r2, .L89
 659 0358 1368     		ldr	r3, [r2]
 660 035a 23F08073 		bic	r3, r3, #16777216
 661 035e 1360     		str	r3, [r2]
 518:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         
 662              		.loc 1 518 0
 663 0360 FFF7FEFF 		bl	HAL_GetTick
 664              	.LVL52:
 665 0364 0546     		mov	r5, r0
 666              	.LVL53:
 667              	.L49:
 521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 668              		.loc 1 521 0
 669 0366 2C4B     		ldr	r3, .L89
 670 0368 1B68     		ldr	r3, [r3]
 671 036a 13F0007F 		tst	r3, #33554432
 672 036e 06D0     		beq	.L85
 523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           {
 673              		.loc 1 523 0
 674 0370 FFF7FEFF 		bl	HAL_GetTick
 675              	.LVL54:
 676 0374 401B     		subs	r0, r0, r5
 677 0376 0228     		cmp	r0, #2
 678 0378 F5D9     		bls	.L49
 525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           }
 679              		.loc 1 525 0
 680 037a 0320     		movs	r0, #3
 681 037c 47E0     		b	.L8
 682              	.L85:
 531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLM,
 683              		.loc 1 531 0
 684 037e E369     		ldr	r3, [r4, #28]
 685 0380 226A     		ldr	r2, [r4, #32]
 686 0382 1343     		orrs	r3, r3, r2
 687 0384 616A     		ldr	r1, [r4, #36]
 688              	.LVL55:
 689              	.LBB40:
 690              	.LBB41:
 691              		.loc 2 531 0
 692 0386 47F6C072 		movw	r2, #32704
 693              		.syntax unified
 694              	@ 531 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 695 038a 92FAA2F2 		rbit r2, r2
 696              	@ 0 "" 2
 697              	.LVL56:
 698              		.thumb
 699              		.syntax unified
 700              	.LBE41:
 701              	.LBE40:
 531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLM,
 702              		.loc 1 531 0
 703 038e B2FA82F2 		clz	r2, r2
 704 0392 01FA02F2 		lsl	r2, r1, r2
 705 0396 1343     		orrs	r3, r3, r2
 706 0398 A26A     		ldr	r2, [r4, #40]
 707 039a 5208     		lsrs	r2, r2, #1
 708 039c 013A     		subs	r2, r2, #1
 709              	.LVL57:
 710              	.LBB42:
 711              	.LBB43:
 712              		.loc 2 531 0
 713 039e 4FF44031 		mov	r1, #196608
 714              		.syntax unified
 715              	@ 531 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 716 03a2 91FAA1F1 		rbit r1, r1
 717              	@ 0 "" 2
 718              	.LVL58:
 719              		.thumb
 720              		.syntax unified
 721              	.LBE43:
 722              	.LBE42:
 531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLM,
 723              		.loc 1 531 0
 724 03a6 B1FA81F1 		clz	r1, r1
 725 03aa 8A40     		lsls	r2, r2, r1
 726 03ac 1343     		orrs	r3, r3, r2
 727 03ae E16A     		ldr	r1, [r4, #44]
 728              	.LVL59:
 729              	.LBB44:
 730              	.LBB45:
 731              		.loc 2 531 0
 732 03b0 4FF07062 		mov	r2, #251658240
 733              		.syntax unified
 734              	@ 531 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 735 03b4 92FAA2F2 		rbit r2, r2
 736              	@ 0 "" 2
 737              	.LVL60:
 738              		.thumb
 739              		.syntax unified
 740              	.LBE45:
 741              	.LBE44:
 531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLM,
 742              		.loc 1 531 0
 743 03b8 B2FA82F2 		clz	r2, r2
 744 03bc 01FA02F2 		lsl	r2, r1, r2
 745 03c0 1343     		orrs	r3, r3, r2
 746 03c2 216B     		ldr	r1, [r4, #48]
 747              	.LVL61:
 748              	.LBB46:
 749              	.LBB47:
 750              		.loc 2 531 0
 751 03c4 4FF0E042 		mov	r2, #1879048192
 752              		.syntax unified
 753              	@ 531 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 754 03c8 92FAA2F2 		rbit r2, r2
 755              	@ 0 "" 2
 756              	.LVL62:
 757              		.thumb
 758              		.syntax unified
 759              	.LBE47:
 760              	.LBE46:
 531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****                              RCC_OscInitStruct->PLL.PLLM,
 761              		.loc 1 531 0
 762 03cc B2FA82F2 		clz	r2, r2
 763 03d0 01FA02F2 		lsl	r2, r1, r2
 764 03d4 1343     		orrs	r3, r3, r2
 765 03d6 104A     		ldr	r2, .L89
 766 03d8 5360     		str	r3, [r2, #4]
 546:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 767              		.loc 1 546 0
 768 03da 1368     		ldr	r3, [r2]
 769 03dc 43F08073 		orr	r3, r3, #16777216
 770 03e0 1360     		str	r3, [r2]
 549:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         
 771              		.loc 1 549 0
 772 03e2 FFF7FEFF 		bl	HAL_GetTick
 773              	.LVL63:
 774 03e6 0446     		mov	r4, r0
 775              	.LVL64:
 776              	.L51:
 552:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 777              		.loc 1 552 0
 778 03e8 0B4B     		ldr	r3, .L89
 779 03ea 1B68     		ldr	r3, [r3]
 780 03ec 13F0007F 		tst	r3, #33554432
 781 03f0 06D1     		bne	.L86
 554:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           {
 782              		.loc 1 554 0
 783 03f2 FFF7FEFF 		bl	HAL_GetTick
 784              	.LVL65:
 785 03f6 001B     		subs	r0, r0, r4
 786 03f8 0228     		cmp	r0, #2
 787 03fa F5D9     		bls	.L51
 556:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           } 
 788              		.loc 1 556 0
 789 03fc 0320     		movs	r0, #3
 790 03fe 06E0     		b	.L8
 791              	.L86:
 574:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           }
 575:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         }
 576:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 577:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 578:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     else
 579:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 580:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       return HAL_ERROR;
 581:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 582:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 583:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   return HAL_OK;
 792              		.loc 1 583 0
 793 0400 0020     		movs	r0, #0
 794 0402 04E0     		b	.L8
 795              	.L84:
 796 0404 0020     		movs	r0, #0
 797 0406 02E0     		b	.L8
 798              	.LVL66:
 799              	.L75:
 278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 800              		.loc 1 278 0
 801 0408 0120     		movs	r0, #1
 802              	.LVL67:
 803 040a 00E0     		b	.L8
 804              	.LVL68:
 805              	.L67:
 806              		.loc 1 583 0
 807 040c 0020     		movs	r0, #0
 808              	.LVL69:
 809              	.L8:
 584:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** }
 810              		.loc 1 584 0
 811 040e 02B0     		add	sp, sp, #8
 812              		.cfi_remember_state
 813              		.cfi_def_cfa_offset 16
 814              		@ sp needed
 815 0410 70BD     		pop	{r4, r5, r6, pc}
 816              	.LVL70:
 817              	.L68:
 818              		.cfi_restore_state
 580:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 819              		.loc 1 580 0
 820 0412 0120     		movs	r0, #1
 821 0414 FBE7     		b	.L8
 822              	.L90:
 823 0416 00BF     		.align	2
 824              	.L89:
 825 0418 00380240 		.word	1073887232
 826              		.cfi_endproc
 827              	.LFE139:
 829              		.section	.text.HAL_RCC_MCOConfig,"ax",%progbits
 830              		.align	1
 831              		.global	HAL_RCC_MCOConfig
 832              		.syntax unified
 833              		.thumb
 834              		.thumb_func
 835              		.fpu fpv5-d16
 837              	HAL_RCC_MCOConfig:
 838              	.LFB141:
 585:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****  
 586:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /**
 587:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @brief  Initializes the CPU, AHB and APB busses clocks according to the specified 
 588:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         parameters in the RCC_ClkInitStruct.
 589:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @param  RCC_ClkInitStruct: pointer to an RCC_OscInitTypeDef structure that
 590:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         contains the configuration information for the RCC peripheral.
 591:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @param  FLatency: FLASH Latency, this parameter depend on device selected
 592:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * 
 593:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note   The SystemCoreClock CMSIS variable is used to store System Clock Frequency 
 594:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         and updated by HAL_RCC_GetHCLKFreq() function called within this function
 595:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *
 596:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note   The HSI is used (enabled by hardware) as system clock source after
 597:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         startup from Reset, wake-up from STOP and STANDBY mode, or in case
 598:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         of failure of the HSE used directly or indirectly as system clock
 599:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         (if the Clock Security System CSS is enabled).
 600:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *           
 601:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note   A switch from one clock source to another occurs only if the target
 602:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         clock source is ready (clock stable after startup delay or PLL locked). 
 603:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         If a clock source which is not yet ready is selected, the switch will
 604:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         occur when the clock source will be ready. 
 605:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         You can use HAL_RCC_GetClockConfig() function to know which clock is
 606:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         currently used as system clock source.
 607:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note   Depending on the device voltage range, the software has to set correctly
 608:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         HPRE[3:0] bits to ensure that HCLK not exceed the maximum allowed frequency
 609:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         (for more details refer to section above "Initialization/de-initialization functions")
 610:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @retval None
 611:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
 612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** HAL_StatusTypeDef HAL_RCC_ClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t FLatency)
 613:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** {
 614:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   uint32_t tickstart = 0;
 615:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 616:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Check the parameters */
 617:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   assert_param(IS_RCC_CLOCKTYPE(RCC_ClkInitStruct->ClockType));
 618:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   assert_param(IS_FLASH_LATENCY(FLatency));
 619:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 620:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* To correctly read data from FLASH memory, the number of wait states (LATENCY) 
 621:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   must be correctly programmed according to the frequency of the CPU clock 
 622:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   (HCLK) and the supply voltage of the device. */
 623:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
 624:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Increasing the CPU frequency */
 625:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   if(FLatency > (FLASH->ACR & FLASH_ACR_LATENCY))
 626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {    
 627:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
 628:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     __HAL_FLASH_SET_LATENCY(FLatency);
 629:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 630:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Check that the new number of wait states is taken into account to access the Flash
 631:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     memory by reading the FLASH_ACR register */
 632:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     if((FLASH->ACR & FLASH_ACR_LATENCY) != FLatency)
 633:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 634:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       return HAL_ERROR;
 635:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 636:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
 638:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /*-------------------------- HCLK Configuration --------------------------*/
 639:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_HCLK) == RCC_CLOCKTYPE_HCLK)
 640:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 641:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     assert_param(IS_RCC_HCLK(RCC_ClkInitStruct->AHBCLKDivider));
 642:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     MODIFY_REG(RCC->CFGR, RCC_CFGR_HPRE, RCC_ClkInitStruct->AHBCLKDivider);
 643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 644:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
 645:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /*------------------------- SYSCLK Configuration ---------------------------*/ 
 646:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_SYSCLK) == RCC_CLOCKTYPE_SYSCLK)
 647:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {    
 648:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     assert_param(IS_RCC_SYSCLKSOURCE(RCC_ClkInitStruct->SYSCLKSource));
 649:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 650:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* HSE is selected as System Clock Source */
 651:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_HSE)
 652:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 653:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Check the HSE ready flag */  
 654:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       if(__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
 655:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 656:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         return HAL_ERROR;
 657:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 658:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 659:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* PLL is selected as System Clock Source */
 660:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     else if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)
 661:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 662:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Check the PLL ready flag */  
 663:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       if(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 664:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 665:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         return HAL_ERROR;
 666:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 667:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 668:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* HSI is selected as System Clock Source */
 669:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     else
 670:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 671:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* Check the HSI ready flag */  
 672:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       if(__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) == RESET)
 673:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 674:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         return HAL_ERROR;
 675:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 676:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 677:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     __HAL_RCC_SYSCLK_CONFIG(RCC_ClkInitStruct->SYSCLKSource);
 679:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Get Start Tick*/
 680:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     tickstart = HAL_GetTick();
 681:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 682:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_HSE)
 683:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 684:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       while (__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_SYSCLKSOURCE_STATUS_HSE)
 685:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 686:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart ) > CLOCKSWITCH_TIMEOUT_VALUE)
 687:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 688:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           return HAL_TIMEOUT;
 689:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         }
 690:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 691:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 692:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     else if(RCC_ClkInitStruct->SYSCLKSource == RCC_SYSCLKSOURCE_PLLCLK)
 693:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 694:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       while (__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_SYSCLKSOURCE_STATUS_PLLCLK)
 695:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 696:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart ) > CLOCKSWITCH_TIMEOUT_VALUE)
 697:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 698:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           return HAL_TIMEOUT;
 699:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         }
 700:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 701:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 702:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     else
 703:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 704:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       while(__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_SYSCLKSOURCE_STATUS_HSI)
 705:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 706:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         if((HAL_GetTick() - tickstart ) > CLOCKSWITCH_TIMEOUT_VALUE)
 707:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 708:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****           return HAL_TIMEOUT;
 709:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         }
 710:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 711:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 712:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 713:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
 714:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Decreasing the number of wait states because of lower CPU frequency */
 715:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   if(FLatency < (FLASH->ACR & FLASH_ACR_LATENCY))
 716:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 717:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Program the new number of wait states to the LATENCY bits in the FLASH_ACR register */
 718:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     __HAL_FLASH_SET_LATENCY(FLatency);
 719:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 720:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Check that the new number of wait states is taken into account to access the Flash
 721:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     memory by reading the FLASH_ACR register */
 722:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     if((FLASH->ACR & FLASH_ACR_LATENCY) != FLatency)
 723:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 724:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       return HAL_ERROR;
 725:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 726:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 727:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 728:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /*-------------------------- PCLK1 Configuration ---------------------------*/ 
 729:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK1) == RCC_CLOCKTYPE_PCLK1)
 730:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 731:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB1CLKDivider));
 732:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE1, RCC_ClkInitStruct->APB1CLKDivider);
 733:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 734:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
 735:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /*-------------------------- PCLK2 Configuration ---------------------------*/ 
 736:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   if(((RCC_ClkInitStruct->ClockType) & RCC_CLOCKTYPE_PCLK2) == RCC_CLOCKTYPE_PCLK2)
 737:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 738:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     assert_param(IS_RCC_PCLK(RCC_ClkInitStruct->APB2CLKDivider));
 739:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     MODIFY_REG(RCC->CFGR, RCC_CFGR_PPRE2, ((RCC_ClkInitStruct->APB2CLKDivider) << 3));
 740:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 741:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 742:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Update the SystemCoreClock global variable */
 743:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   SystemCoreClock = HAL_RCC_GetSysClockFreq() >> AHBPrescTable[(RCC->CFGR & RCC_CFGR_HPRE)>> POSITI
 744:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
 745:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Configure the source of time base considering new system clocks settings*/
 746:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   HAL_InitTick (TICK_INT_PRIORITY);
 747:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
 748:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   return HAL_OK;
 749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** }
 750:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 751:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /**
 752:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @}
 753:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
 754:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 755:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /** @defgroup RCC_Exported_Functions_Group2 Peripheral Control functions 
 756:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *  @brief   RCC clocks control functions 
 757:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *
 758:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   @verbatim   
 759:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   ===============================================================================
 760:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****                   ##### Peripheral Control functions #####
 761:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   ===============================================================================  
 762:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     [..]
 763:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     This subsection provides a set of functions allowing to control the RCC Clocks 
 764:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     frequencies.
 765:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       
 766:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** @endverbatim
 767:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @{
 768:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
 769:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 770:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /**
 771:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @brief  Selects the clock source to output on MCO1 pin(PA8) or on MCO2 pin(PC9).
 772:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note   PA8/PC9 should be configured in alternate function mode.
 773:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @param  RCC_MCOx: specifies the output direction for the clock source.
 774:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *          This parameter can be one of the following values:
 775:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            @arg RCC_MCO1: Clock source to output on MCO1 pin(PA8).
 776:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            @arg RCC_MCO2: Clock source to output on MCO2 pin(PC9).
 777:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @param  RCC_MCOSource: specifies the clock source to output.
 778:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *          This parameter can be one of the following values:
 779:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            @arg RCC_MCO1SOURCE_HSI: HSI clock selected as MCO1 source
 780:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            @arg RCC_MCO1SOURCE_LSE: LSE clock selected as MCO1 source
 781:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            @arg RCC_MCO1SOURCE_HSE: HSE clock selected as MCO1 source
 782:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            @arg RCC_MCO1SOURCE_PLLCLK: main PLL clock selected as MCO1 source
 783:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            @arg RCC_MCO2SOURCE_SYSCLK: System clock (SYSCLK) selected as MCO2 source
 784:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            @arg RCC_MCO2SOURCE_PLLI2SCLK: PLLI2S clock selected as MCO2 source
 785:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            @arg RCC_MCO2SOURCE_HSE: HSE clock selected as MCO2 source
 786:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            @arg RCC_MCO2SOURCE_PLLCLK: main PLL clock selected as MCO2 source
 787:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @param  RCC_MCODiv: specifies the MCOx prescaler.
 788:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *          This parameter can be one of the following values:
 789:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            @arg RCC_MCODIV_1: no division applied to MCOx clock
 790:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            @arg RCC_MCODIV_2: division by 2 applied to MCOx clock
 791:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            @arg RCC_MCODIV_3: division by 3 applied to MCOx clock
 792:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            @arg RCC_MCODIV_4: division by 4 applied to MCOx clock
 793:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *            @arg RCC_MCODIV_5: division by 5 applied to MCOx clock
 794:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @retval None
 795:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
 796:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** void HAL_RCC_MCOConfig(uint32_t RCC_MCOx, uint32_t RCC_MCOSource, uint32_t RCC_MCODiv)
 797:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** {
 839              		.loc 1 797 0
 840              		.cfi_startproc
 841              		@ args = 0, pretend = 0, frame = 32
 842              		@ frame_needed = 0, uses_anonymous_args = 0
 843              	.LVL71:
 844 0000 70B5     		push	{r4, r5, r6, lr}
 845              		.cfi_def_cfa_offset 16
 846              		.cfi_offset 4, -16
 847              		.cfi_offset 5, -12
 848              		.cfi_offset 6, -8
 849              		.cfi_offset 14, -4
 850 0002 88B0     		sub	sp, sp, #32
 851              		.cfi_def_cfa_offset 48
 852 0004 0C46     		mov	r4, r1
 853 0006 1646     		mov	r6, r2
 798:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   GPIO_InitTypeDef GPIO_InitStruct;
 799:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Check the parameters */
 800:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   assert_param(IS_RCC_MCO(RCC_MCOx));
 801:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   assert_param(IS_RCC_MCODIV(RCC_MCODiv));
 802:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* RCC_MCO1 */
 803:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   if(RCC_MCOx == RCC_MCO1)
 854              		.loc 1 803 0
 855 0008 00B3     		cbz	r0, .L95
 856              	.LBB48:
 804:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 805:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     assert_param(IS_RCC_MCO1SOURCE(RCC_MCOSource));
 806:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 807:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* MCO1 Clock Enable */
 808:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     MCO1_CLK_ENABLE();
 809:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 810:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Configure the MCO1 pin in alternate function mode */    
 811:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     GPIO_InitStruct.Pin = MCO1_PIN;
 812:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
 813:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     GPIO_InitStruct.Speed = GPIO_SPEED_HIGH;
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     GPIO_InitStruct.Pull = GPIO_NOPULL;
 815:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     GPIO_InitStruct.Alternate = GPIO_AF0_MCO;
 816:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     HAL_GPIO_Init(MCO1_GPIO_PORT, &GPIO_InitStruct);
 817:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 818:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Mask MCO1 and MCO1PRE[2:0] bits then Select MCO1 clock source and prescaler */
 819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     MODIFY_REG(RCC->CFGR, (RCC_CFGR_MCO1 | RCC_CFGR_MCO1PRE), (RCC_MCOSource | RCC_MCODiv));
 820:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 821:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   else
 822:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 823:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     assert_param(IS_RCC_MCO2SOURCE(RCC_MCOSource));
 824:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 825:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* MCO2 Clock Enable */
 826:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     MCO2_CLK_ENABLE();
 857              		.loc 1 826 0
 858 000a 204D     		ldr	r5, .L96
 859 000c 2B6B     		ldr	r3, [r5, #48]
 860 000e 43F00403 		orr	r3, r3, #4
 861 0012 2B63     		str	r3, [r5, #48]
 862 0014 2B6B     		ldr	r3, [r5, #48]
 863 0016 03F00403 		and	r3, r3, #4
 864 001a 0293     		str	r3, [sp, #8]
 865 001c 029B     		ldr	r3, [sp, #8]
 866              	.LBE48:
 827:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 828:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Configure the MCO2 pin in alternate function mode */
 829:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     GPIO_InitStruct.Pin = MCO2_PIN;
 867              		.loc 1 829 0
 868 001e 4FF40073 		mov	r3, #512
 869 0022 0393     		str	r3, [sp, #12]
 830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
 870              		.loc 1 830 0
 871 0024 0223     		movs	r3, #2
 872 0026 0493     		str	r3, [sp, #16]
 831:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     GPIO_InitStruct.Speed = GPIO_SPEED_HIGH;
 873              		.loc 1 831 0
 874 0028 0323     		movs	r3, #3
 875 002a 0693     		str	r3, [sp, #24]
 832:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     GPIO_InitStruct.Pull = GPIO_NOPULL;
 876              		.loc 1 832 0
 877 002c 0023     		movs	r3, #0
 878 002e 0593     		str	r3, [sp, #20]
 833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     GPIO_InitStruct.Alternate = GPIO_AF0_MCO;
 879              		.loc 1 833 0
 880 0030 0793     		str	r3, [sp, #28]
 834:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     HAL_GPIO_Init(MCO2_GPIO_PORT, &GPIO_InitStruct);
 881              		.loc 1 834 0
 882 0032 03A9     		add	r1, sp, #12
 883              	.LVL72:
 884 0034 1648     		ldr	r0, .L96+4
 885              	.LVL73:
 886 0036 FFF7FEFF 		bl	HAL_GPIO_Init
 887              	.LVL74:
 835:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 836:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Mask MCO2 and MCO2PRE[2:0] bits then Select MCO2 clock source and prescaler */
 837:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     MODIFY_REG(RCC->CFGR, (RCC_CFGR_MCO2 | RCC_CFGR_MCO2PRE), (RCC_MCOSource | (RCC_MCODiv << 3)));
 888              		.loc 1 837 0
 889 003a AB68     		ldr	r3, [r5, #8]
 890 003c 23F07843 		bic	r3, r3, #-134217728
 891 0040 44EAC604 		orr	r4, r4, r6, lsl #3
 892              	.LVL75:
 893 0044 1C43     		orrs	r4, r4, r3
 894 0046 AC60     		str	r4, [r5, #8]
 895              	.L91:
 838:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 839:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** }
 896              		.loc 1 839 0
 897 0048 08B0     		add	sp, sp, #32
 898              		.cfi_remember_state
 899              		.cfi_def_cfa_offset 16
 900              		@ sp needed
 901 004a 70BD     		pop	{r4, r5, r6, pc}
 902              	.LVL76:
 903              	.L95:
 904              		.cfi_restore_state
 905              	.LBB49:
 808:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 906              		.loc 1 808 0
 907 004c 0F4D     		ldr	r5, .L96
 908 004e 2B6B     		ldr	r3, [r5, #48]
 909 0050 43F00103 		orr	r3, r3, #1
 910 0054 2B63     		str	r3, [r5, #48]
 911 0056 2B6B     		ldr	r3, [r5, #48]
 912 0058 03F00103 		and	r3, r3, #1
 913 005c 0193     		str	r3, [sp, #4]
 914 005e 019B     		ldr	r3, [sp, #4]
 915              	.LBE49:
 811:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
 916              		.loc 1 811 0
 917 0060 4FF48073 		mov	r3, #256
 918 0064 0393     		str	r3, [sp, #12]
 812:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     GPIO_InitStruct.Speed = GPIO_SPEED_HIGH;
 919              		.loc 1 812 0
 920 0066 0223     		movs	r3, #2
 921 0068 0493     		str	r3, [sp, #16]
 813:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     GPIO_InitStruct.Pull = GPIO_NOPULL;
 922              		.loc 1 813 0
 923 006a 0323     		movs	r3, #3
 924 006c 0693     		str	r3, [sp, #24]
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     GPIO_InitStruct.Alternate = GPIO_AF0_MCO;
 925              		.loc 1 814 0
 926 006e 0023     		movs	r3, #0
 927 0070 0593     		str	r3, [sp, #20]
 815:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     HAL_GPIO_Init(MCO1_GPIO_PORT, &GPIO_InitStruct);
 928              		.loc 1 815 0
 929 0072 0793     		str	r3, [sp, #28]
 816:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 930              		.loc 1 816 0
 931 0074 03A9     		add	r1, sp, #12
 932              	.LVL77:
 933 0076 0748     		ldr	r0, .L96+8
 934              	.LVL78:
 935 0078 FFF7FEFF 		bl	HAL_GPIO_Init
 936              	.LVL79:
 819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 937              		.loc 1 819 0
 938 007c AB68     		ldr	r3, [r5, #8]
 939 007e 23F0EC63 		bic	r3, r3, #123731968
 940 0082 3443     		orrs	r4, r4, r6
 941              	.LVL80:
 942 0084 1C43     		orrs	r4, r4, r3
 943 0086 AC60     		str	r4, [r5, #8]
 944 0088 DEE7     		b	.L91
 945              	.L97:
 946 008a 00BF     		.align	2
 947              	.L96:
 948 008c 00380240 		.word	1073887232
 949 0090 00080240 		.word	1073874944
 950 0094 00000240 		.word	1073872896
 951              		.cfi_endproc
 952              	.LFE141:
 954              		.section	.text.HAL_RCC_EnableCSS,"ax",%progbits
 955              		.align	1
 956              		.global	HAL_RCC_EnableCSS
 957              		.syntax unified
 958              		.thumb
 959              		.thumb_func
 960              		.fpu fpv5-d16
 962              	HAL_RCC_EnableCSS:
 963              	.LFB142:
 840:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 841:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /**
 842:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @brief  Enables the Clock Security System.
 843:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note   If a failure is detected on the HSE oscillator clock, this oscillator
 844:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         is automatically disabled and an interrupt is generated to inform the
 845:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         software about the failure (Clock Security System Interrupt, CSSI),
 846:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         allowing the MCU to perform rescue operations. The CSSI is linked to 
 847:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         the Cortex-M7 NMI (Non-Maskable Interrupt) exception vector.  
 848:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @retval None
 849:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
 850:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** void HAL_RCC_EnableCSS(void)
 851:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** {
 964              		.loc 1 851 0
 965              		.cfi_startproc
 966              		@ args = 0, pretend = 0, frame = 0
 967              		@ frame_needed = 0, uses_anonymous_args = 0
 968              		@ link register save eliminated.
 852:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   SET_BIT(RCC->CR, RCC_CR_CSSON);
 969              		.loc 1 852 0
 970 0000 024A     		ldr	r2, .L99
 971 0002 1368     		ldr	r3, [r2]
 972 0004 43F40023 		orr	r3, r3, #524288
 973 0008 1360     		str	r3, [r2]
 853:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** }
 974              		.loc 1 853 0
 975 000a 7047     		bx	lr
 976              	.L100:
 977              		.align	2
 978              	.L99:
 979 000c 00380240 		.word	1073887232
 980              		.cfi_endproc
 981              	.LFE142:
 983              		.section	.text.HAL_RCC_DisableCSS,"ax",%progbits
 984              		.align	1
 985              		.global	HAL_RCC_DisableCSS
 986              		.syntax unified
 987              		.thumb
 988              		.thumb_func
 989              		.fpu fpv5-d16
 991              	HAL_RCC_DisableCSS:
 992              	.LFB143:
 854:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 855:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /**
 856:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @brief  Disables the Clock Security System.
 857:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @retval None
 858:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
 859:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** void HAL_RCC_DisableCSS(void)
 860:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** {
 993              		.loc 1 860 0
 994              		.cfi_startproc
 995              		@ args = 0, pretend = 0, frame = 0
 996              		@ frame_needed = 0, uses_anonymous_args = 0
 997              		@ link register save eliminated.
 861:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   CLEAR_BIT(RCC->CR, RCC_CR_CSSON);
 998              		.loc 1 861 0
 999 0000 024A     		ldr	r2, .L102
 1000 0002 1368     		ldr	r3, [r2]
 1001 0004 23F40023 		bic	r3, r3, #524288
 1002 0008 1360     		str	r3, [r2]
 862:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** }
 1003              		.loc 1 862 0
 1004 000a 7047     		bx	lr
 1005              	.L103:
 1006              		.align	2
 1007              	.L102:
 1008 000c 00380240 		.word	1073887232
 1009              		.cfi_endproc
 1010              	.LFE143:
 1012              		.section	.text.HAL_RCC_GetSysClockFreq,"ax",%progbits
 1013              		.align	1
 1014              		.global	HAL_RCC_GetSysClockFreq
 1015              		.syntax unified
 1016              		.thumb
 1017              		.thumb_func
 1018              		.fpu fpv5-d16
 1020              	HAL_RCC_GetSysClockFreq:
 1021              	.LFB144:
 863:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 864:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /**
 865:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @brief  Returns the SYSCLK frequency
 866:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *        
 867:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note   The system frequency computed by this function is not the real 
 868:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         frequency in the chip. It is calculated based on the predefined 
 869:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         constant and the selected clock source:
 870:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note     If SYSCLK source is HSI, function returns values based on HSI_VALUE(*)
 871:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note     If SYSCLK source is HSE, function returns values based on HSE_VALUE(**)
 872:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note     If SYSCLK source is PLL, function returns values based on HSE_VALUE(**) 
 873:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *           or HSI_VALUE(*) multiplied/divided by the PLL factors.         
 874:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note     (*) HSI_VALUE is a constant defined in stm32f7xx_hal_conf.h file (default value
 875:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *               16 MHz) but the real value may vary depending on the variations
 876:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *               in voltage and temperature.
 877:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note     (**) HSE_VALUE is a constant defined in stm32f7xx_hal_conf.h file (default value
 878:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *                25 MHz), user has to ensure that HSE_VALUE is same as the real
 879:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *                frequency of the crystal used. Otherwise, this function may
 880:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *                have wrong result.
 881:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *                  
 882:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note   The result of this function could be not correct when using fractional
 883:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         value for HSE crystal.
 884:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *           
 885:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note   This function can be used by the user application to compute the 
 886:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         baudrate for the communication peripherals or configure other parameters.
 887:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *           
 888:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note   Each time SYSCLK changes, this function must be called to update the
 889:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         right SYSCLK value. Otherwise, any configuration based on this function will be incorre
 890:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         
 891:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *               
 892:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @retval SYSCLK frequency
 893:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
 894:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** uint32_t HAL_RCC_GetSysClockFreq(void)
 895:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** {
 1022              		.loc 1 895 0
 1023              		.cfi_startproc
 1024              		@ args = 0, pretend = 0, frame = 0
 1025              		@ frame_needed = 0, uses_anonymous_args = 0
 1026              		@ link register save eliminated.
 1027              	.LVL81:
 896:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   uint32_t pllm = 0, pllvco = 0, pllp = 0;
 897:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   uint32_t sysclockfreq = 0;
 898:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 899:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Get SYSCLK source -------------------------------------------------------*/
 900:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   switch (RCC->CFGR & RCC_CFGR_SWS)
 1028              		.loc 1 900 0
 1029 0000 214B     		ldr	r3, .L111
 1030 0002 9B68     		ldr	r3, [r3, #8]
 1031 0004 03F00C03 		and	r3, r3, #12
 1032 0008 042B     		cmp	r3, #4
 1033 000a 3AD0     		beq	.L110
 1034 000c 082B     		cmp	r3, #8
 1035 000e 01D0     		beq	.L107
 901:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 902:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     case RCC_SYSCLKSOURCE_STATUS_HSI:  /* HSI used as system clock source */
 903:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 904:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       sysclockfreq = HSI_VALUE;
 1036              		.loc 1 904 0
 1037 0010 1E48     		ldr	r0, .L111+4
 1038 0012 7047     		bx	lr
 1039              	.L107:
 905:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****        break;
 906:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 907:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     case RCC_SYSCLKSOURCE_STATUS_HSE:  /* HSE used as system clock  source */
 908:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 909:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       sysclockfreq = HSE_VALUE;
 910:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       break;
 911:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 912:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     case RCC_SYSCLKSOURCE_STATUS_PLLCLK:  /* PLL used as system clock  source */
 913:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 914:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       /* PLL_VCO = (HSE_VALUE or HSI_VALUE / PLLM) * PLLN
 915:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       SYSCLK = PLL_VCO / PLLP */
 916:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       pllm = RCC->PLLCFGR & RCC_PLLCFGR_PLLM;
 1040              		.loc 1 916 0
 1041 0014 1C4B     		ldr	r3, .L111
 1042 0016 5868     		ldr	r0, [r3, #4]
 1043 0018 00F03F00 		and	r0, r0, #63
 1044              	.LVL82:
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       if (__HAL_RCC_GET_PLL_OSCSOURCE() != RCC_PLLCFGR_PLLSRC_HSI)
 1045              		.loc 1 917 0
 1046 001c 5B68     		ldr	r3, [r3, #4]
 1047 001e 13F4800F 		tst	r3, #4194304
 1048 0022 1ED0     		beq	.L108
 918:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 919:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* HSE used as PLL clock source */
 920:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         pllvco = ((HSE_VALUE / pllm) * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> POSITION_VAL(RCC_PLLCF
 1049              		.loc 1 920 0
 1050 0024 1A4A     		ldr	r2, .L111+8
 1051 0026 B2FBF0F2 		udiv	r2, r2, r0
 1052 002a 174B     		ldr	r3, .L111
 1053 002c 5868     		ldr	r0, [r3, #4]
 1054              	.LVL83:
 1055 002e 47F6C073 		movw	r3, #32704
 1056 0032 1840     		ands	r0, r0, r3
 1057              	.LVL84:
 1058              	.LBB50:
 1059              	.LBB51:
 1060              		.loc 2 531 0
 1061              		.syntax unified
 1062              	@ 531 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 1063 0034 93FAA3F3 		rbit r3, r3
 1064              	@ 0 "" 2
 1065              	.LVL85:
 1066              		.thumb
 1067              		.syntax unified
 1068              	.LBE51:
 1069              	.LBE50:
 1070              		.loc 1 920 0
 1071 0038 B3FA83F3 		clz	r3, r3
 1072 003c D840     		lsrs	r0, r0, r3
 1073 003e 00FB02F0 		mul	r0, r0, r2
 1074              	.LVL86:
 1075              	.L109:
 921:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 922:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       else
 923:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 924:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         /* HSI used as PLL clock source */
 925:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         pllvco = ((HSI_VALUE / pllm) * ((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> POSITION_VAL(RCC_PLLCF
 926:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 927:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       pllp = ((((RCC->PLLCFGR & RCC_PLLCFGR_PLLP) >> POSITION_VAL(RCC_PLLCFGR_PLLP)) + 1 ) *2);
 1076              		.loc 1 927 0
 1077 0042 114B     		ldr	r3, .L111
 1078 0044 5B68     		ldr	r3, [r3, #4]
 1079 0046 03F44033 		and	r3, r3, #196608
 1080              	.LVL87:
 1081              	.LBB52:
 1082              	.LBB53:
 1083              		.loc 2 531 0
 1084 004a 4FF44032 		mov	r2, #196608
 1085              		.syntax unified
 1086              	@ 531 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 1087 004e 92FAA2F2 		rbit r2, r2
 1088              	@ 0 "" 2
 1089              	.LVL88:
 1090              		.thumb
 1091              		.syntax unified
 1092              	.LBE53:
 1093              	.LBE52:
 1094              		.loc 1 927 0
 1095 0052 B2FA82F2 		clz	r2, r2
 1096 0056 D340     		lsrs	r3, r3, r2
 1097 0058 0133     		adds	r3, r3, #1
 1098 005a 5B00     		lsls	r3, r3, #1
 1099              	.LVL89:
 928:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       
 929:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       sysclockfreq = pllvco/pllp;
 1100              		.loc 1 929 0
 1101 005c B0FBF3F0 		udiv	r0, r0, r3
 1102              	.LVL90:
 930:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       break;
 1103              		.loc 1 930 0
 1104 0060 7047     		bx	lr
 1105              	.LVL91:
 1106              	.L108:
 925:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 1107              		.loc 1 925 0
 1108 0062 0A4A     		ldr	r2, .L111+4
 1109 0064 B2FBF0F2 		udiv	r2, r2, r0
 1110 0068 074B     		ldr	r3, .L111
 1111 006a 5868     		ldr	r0, [r3, #4]
 1112              	.LVL92:
 1113 006c 47F6C073 		movw	r3, #32704
 1114 0070 1840     		ands	r0, r0, r3
 1115              	.LVL93:
 1116              	.LBB54:
 1117              	.LBB55:
 1118              		.loc 2 531 0
 1119              		.syntax unified
 1120              	@ 531 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 1121 0072 93FAA3F3 		rbit r3, r3
 1122              	@ 0 "" 2
 1123              	.LVL94:
 1124              		.thumb
 1125              		.syntax unified
 1126              	.LBE55:
 1127              	.LBE54:
 925:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 1128              		.loc 1 925 0
 1129 0076 B3FA83F3 		clz	r3, r3
 1130 007a D840     		lsrs	r0, r0, r3
 1131 007c 00FB02F0 		mul	r0, r0, r2
 1132              	.LVL95:
 1133 0080 DFE7     		b	.L109
 1134              	.LVL96:
 1135              	.L110:
 909:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       break;
 1136              		.loc 1 909 0
 1137 0082 0348     		ldr	r0, .L111+8
 1138              	.LVL97:
 931:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 932:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     default:
 933:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 934:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       sysclockfreq = HSI_VALUE;
 935:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       break;
 936:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 937:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 938:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   return sysclockfreq;
 939:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** }
 1139              		.loc 1 939 0
 1140 0084 7047     		bx	lr
 1141              	.L112:
 1142 0086 00BF     		.align	2
 1143              	.L111:
 1144 0088 00380240 		.word	1073887232
 1145 008c 0024F400 		.word	16000000
 1146 0090 40787D01 		.word	25000000
 1147              		.cfi_endproc
 1148              	.LFE144:
 1150              		.section	.text.HAL_RCC_ClockConfig,"ax",%progbits
 1151              		.align	1
 1152              		.global	HAL_RCC_ClockConfig
 1153              		.syntax unified
 1154              		.thumb
 1155              		.thumb_func
 1156              		.fpu fpv5-d16
 1158              	HAL_RCC_ClockConfig:
 1159              	.LFB140:
 613:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   uint32_t tickstart = 0;
 1160              		.loc 1 613 0
 1161              		.cfi_startproc
 1162              		@ args = 0, pretend = 0, frame = 0
 1163              		@ frame_needed = 0, uses_anonymous_args = 0
 1164              	.LVL98:
 625:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {    
 1165              		.loc 1 625 0
 1166 0000 5C4B     		ldr	r3, .L145
 1167 0002 1B68     		ldr	r3, [r3]
 1168 0004 03F00F03 		and	r3, r3, #15
 1169 0008 8B42     		cmp	r3, r1
 1170 000a 0CD2     		bcs	.L114
 628:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 1171              		.loc 1 628 0
 1172 000c 594A     		ldr	r2, .L145
 1173 000e 1368     		ldr	r3, [r2]
 1174 0010 23F00F03 		bic	r3, r3, #15
 1175 0014 0B43     		orrs	r3, r3, r1
 1176 0016 1360     		str	r3, [r2]
 632:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 1177              		.loc 1 632 0
 1178 0018 1368     		ldr	r3, [r2]
 1179 001a 03F00F03 		and	r3, r3, #15
 1180 001e 8B42     		cmp	r3, r1
 1181 0020 01D0     		beq	.L114
 634:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 1182              		.loc 1 634 0
 1183 0022 0120     		movs	r0, #1
 1184              	.LVL99:
 749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 1185              		.loc 1 749 0
 1186 0024 7047     		bx	lr
 1187              	.LVL100:
 1188              	.L114:
 613:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   uint32_t tickstart = 0;
 1189              		.loc 1 613 0
 1190 0026 70B5     		push	{r4, r5, r6, lr}
 1191              		.cfi_def_cfa_offset 16
 1192              		.cfi_offset 4, -16
 1193              		.cfi_offset 5, -12
 1194              		.cfi_offset 6, -8
 1195              		.cfi_offset 14, -4
 639:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 1196              		.loc 1 639 0
 1197 0028 0368     		ldr	r3, [r0]
 1198 002a 13F0020F 		tst	r3, #2
 1199 002e 06D0     		beq	.L116
 642:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 1200              		.loc 1 642 0
 1201 0030 514A     		ldr	r2, .L145+4
 1202 0032 9368     		ldr	r3, [r2, #8]
 1203 0034 23F0F003 		bic	r3, r3, #240
 1204 0038 8468     		ldr	r4, [r0, #8]
 1205 003a 2343     		orrs	r3, r3, r4
 1206 003c 9360     		str	r3, [r2, #8]
 1207              	.L116:
 1208 003e 0C46     		mov	r4, r1
 1209 0040 0546     		mov	r5, r0
 646:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {    
 1210              		.loc 1 646 0
 1211 0042 0368     		ldr	r3, [r0]
 1212 0044 13F0010F 		tst	r3, #1
 1213 0048 52D0     		beq	.L117
 651:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 1214              		.loc 1 651 0
 1215 004a 4368     		ldr	r3, [r0, #4]
 1216 004c 012B     		cmp	r3, #1
 1217 004e 23D0     		beq	.L143
 660:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 1218              		.loc 1 660 0
 1219 0050 022B     		cmp	r3, #2
 1220 0052 28D0     		beq	.L144
 672:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 1221              		.loc 1 672 0
 1222 0054 484A     		ldr	r2, .L145+4
 1223 0056 1268     		ldr	r2, [r2]
 1224 0058 12F0020F 		tst	r2, #2
 1225 005c 00F08880 		beq	.L134
 1226              	.L119:
 678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Get Start Tick*/
 1227              		.loc 1 678 0
 1228 0060 4549     		ldr	r1, .L145+4
 1229              	.LVL101:
 1230 0062 8A68     		ldr	r2, [r1, #8]
 1231 0064 22F00302 		bic	r2, r2, #3
 1232 0068 1343     		orrs	r3, r3, r2
 1233 006a 8B60     		str	r3, [r1, #8]
 680:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 1234              		.loc 1 680 0
 1235 006c FFF7FEFF 		bl	HAL_GetTick
 1236              	.LVL102:
 1237 0070 0646     		mov	r6, r0
 1238              	.LVL103:
 682:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 1239              		.loc 1 682 0
 1240 0072 6B68     		ldr	r3, [r5, #4]
 1241 0074 012B     		cmp	r3, #1
 1242 0076 1DD0     		beq	.L121
 692:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 1243              		.loc 1 692 0
 1244 0078 022B     		cmp	r3, #2
 1245 007a 2AD0     		beq	.L124
 1246              	.LVL104:
 1247              	.L125:
 704:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 1248              		.loc 1 704 0
 1249 007c 3E4B     		ldr	r3, .L145+4
 1250 007e 9B68     		ldr	r3, [r3, #8]
 1251 0080 13F00C0F 		tst	r3, #12
 1252 0084 34D0     		beq	.L117
 706:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 1253              		.loc 1 706 0
 1254 0086 FFF7FEFF 		bl	HAL_GetTick
 1255              	.LVL105:
 1256 008a 801B     		subs	r0, r0, r6
 1257 008c 41F28833 		movw	r3, #5000
 1258 0090 9842     		cmp	r0, r3
 1259 0092 F3D9     		bls	.L125
 708:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         }
 1260              		.loc 1 708 0
 1261 0094 0320     		movs	r0, #3
 1262 0096 6AE0     		b	.L115
 1263              	.LVL106:
 1264              	.L143:
 654:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 1265              		.loc 1 654 0
 1266 0098 374A     		ldr	r2, .L145+4
 1267 009a 1268     		ldr	r2, [r2]
 1268 009c 12F4003F 		tst	r2, #131072
 1269 00a0 DED1     		bne	.L119
 656:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 1270              		.loc 1 656 0
 1271 00a2 0120     		movs	r0, #1
 1272              	.LVL107:
 1273 00a4 63E0     		b	.L115
 1274              	.LVL108:
 1275              	.L144:
 663:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 1276              		.loc 1 663 0
 1277 00a6 344A     		ldr	r2, .L145+4
 1278 00a8 1268     		ldr	r2, [r2]
 1279 00aa 12F0007F 		tst	r2, #33554432
 1280 00ae D7D1     		bne	.L119
 665:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 1281              		.loc 1 665 0
 1282 00b0 0120     		movs	r0, #1
 1283              	.LVL109:
 1284 00b2 5CE0     		b	.L115
 1285              	.LVL110:
 1286              	.L121:
 684:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 1287              		.loc 1 684 0
 1288 00b4 304B     		ldr	r3, .L145+4
 1289 00b6 9B68     		ldr	r3, [r3, #8]
 1290 00b8 03F00C03 		and	r3, r3, #12
 1291 00bc 042B     		cmp	r3, #4
 1292 00be 17D0     		beq	.L117
 686:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 1293              		.loc 1 686 0
 1294 00c0 FFF7FEFF 		bl	HAL_GetTick
 1295              	.LVL111:
 1296 00c4 801B     		subs	r0, r0, r6
 1297 00c6 41F28833 		movw	r3, #5000
 1298 00ca 9842     		cmp	r0, r3
 1299 00cc F2D9     		bls	.L121
 688:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         }
 1300              		.loc 1 688 0
 1301 00ce 0320     		movs	r0, #3
 1302 00d0 4DE0     		b	.L115
 1303              	.L124:
 694:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       {
 1304              		.loc 1 694 0
 1305 00d2 294B     		ldr	r3, .L145+4
 1306 00d4 9B68     		ldr	r3, [r3, #8]
 1307 00d6 03F00C03 		and	r3, r3, #12
 1308 00da 082B     		cmp	r3, #8
 1309 00dc 08D0     		beq	.L117
 696:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         {
 1310              		.loc 1 696 0
 1311 00de FFF7FEFF 		bl	HAL_GetTick
 1312              	.LVL112:
 1313 00e2 801B     		subs	r0, r0, r6
 1314 00e4 41F28833 		movw	r3, #5000
 1315 00e8 9842     		cmp	r0, r3
 1316 00ea F2D9     		bls	.L124
 698:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****         }
 1317              		.loc 1 698 0
 1318 00ec 0320     		movs	r0, #3
 1319 00ee 3EE0     		b	.L115
 1320              	.LVL113:
 1321              	.L117:
 715:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 1322              		.loc 1 715 0
 1323 00f0 204B     		ldr	r3, .L145
 1324 00f2 1B68     		ldr	r3, [r3]
 1325 00f4 03F00F03 		and	r3, r3, #15
 1326 00f8 A342     		cmp	r3, r4
 1327 00fa 0CD9     		bls	.L128
 718:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     
 1328              		.loc 1 718 0
 1329 00fc 1D4A     		ldr	r2, .L145
 1330 00fe 1368     		ldr	r3, [r2]
 1331 0100 23F00F03 		bic	r3, r3, #15
 1332 0104 2343     		orrs	r3, r3, r4
 1333 0106 1360     		str	r3, [r2]
 722:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     {
 1334              		.loc 1 722 0
 1335 0108 1368     		ldr	r3, [r2]
 1336 010a 03F00F03 		and	r3, r3, #15
 1337 010e A342     		cmp	r3, r4
 1338 0110 01D0     		beq	.L128
 724:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     }
 1339              		.loc 1 724 0
 1340 0112 0120     		movs	r0, #1
 1341 0114 2BE0     		b	.L115
 1342              	.L128:
 729:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 1343              		.loc 1 729 0
 1344 0116 2B68     		ldr	r3, [r5]
 1345 0118 13F0040F 		tst	r3, #4
 1346 011c 06D0     		beq	.L129
 732:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 1347              		.loc 1 732 0
 1348 011e 164A     		ldr	r2, .L145+4
 1349 0120 9368     		ldr	r3, [r2, #8]
 1350 0122 23F4E053 		bic	r3, r3, #7168
 1351 0126 E968     		ldr	r1, [r5, #12]
 1352 0128 0B43     		orrs	r3, r3, r1
 1353 012a 9360     		str	r3, [r2, #8]
 1354              	.L129:
 736:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 1355              		.loc 1 736 0
 1356 012c 2B68     		ldr	r3, [r5]
 1357 012e 13F0080F 		tst	r3, #8
 1358 0132 07D0     		beq	.L130
 739:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 1359              		.loc 1 739 0
 1360 0134 104A     		ldr	r2, .L145+4
 1361 0136 9368     		ldr	r3, [r2, #8]
 1362 0138 23F46043 		bic	r3, r3, #57344
 1363 013c 2969     		ldr	r1, [r5, #16]
 1364 013e 43EAC103 		orr	r3, r3, r1, lsl #3
 1365 0142 9360     		str	r3, [r2, #8]
 1366              	.L130:
 743:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
 1367              		.loc 1 743 0
 1368 0144 FFF7FEFF 		bl	HAL_RCC_GetSysClockFreq
 1369              	.LVL114:
 1370 0148 0B4B     		ldr	r3, .L145+4
 1371 014a 9B68     		ldr	r3, [r3, #8]
 1372 014c 03F0F003 		and	r3, r3, #240
 1373              	.LVL115:
 1374              	.LBB56:
 1375              	.LBB57:
 1376              		.loc 2 531 0
 1377 0150 F022     		movs	r2, #240
 1378              		.syntax unified
 1379              	@ 531 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 1380 0152 92FAA2F2 		rbit r2, r2
 1381              	@ 0 "" 2
 1382              	.LVL116:
 1383              		.thumb
 1384              		.syntax unified
 1385              	.LBE57:
 1386              	.LBE56:
 743:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
 1387              		.loc 1 743 0
 1388 0156 B2FA82F2 		clz	r2, r2
 1389 015a D340     		lsrs	r3, r3, r2
 1390 015c 074A     		ldr	r2, .L145+8
 1391 015e D35C     		ldrb	r3, [r2, r3]	@ zero_extendqisi2
 1392 0160 D840     		lsrs	r0, r0, r3
 1393 0162 074B     		ldr	r3, .L145+12
 1394 0164 1860     		str	r0, [r3]
 746:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
 1395              		.loc 1 746 0
 1396 0166 0F20     		movs	r0, #15
 1397 0168 FFF7FEFF 		bl	HAL_InitTick
 1398              	.LVL117:
 748:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** }
 1399              		.loc 1 748 0
 1400 016c 0020     		movs	r0, #0
 1401              	.L115:
 749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 1402              		.loc 1 749 0
 1403 016e 70BD     		pop	{r4, r5, r6, pc}
 1404              	.LVL118:
 1405              	.L134:
 674:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****       }
 1406              		.loc 1 674 0
 1407 0170 0120     		movs	r0, #1
 1408              	.LVL119:
 1409 0172 FCE7     		b	.L115
 1410              	.L146:
 1411              		.align	2
 1412              	.L145:
 1413 0174 003C0240 		.word	1073888256
 1414 0178 00380240 		.word	1073887232
 1415 017c 00000000 		.word	AHBPrescTable
 1416 0180 00000000 		.word	SystemCoreClock
 1417              		.cfi_endproc
 1418              	.LFE140:
 1420              		.section	.text.HAL_RCC_GetHCLKFreq,"ax",%progbits
 1421              		.align	1
 1422              		.global	HAL_RCC_GetHCLKFreq
 1423              		.syntax unified
 1424              		.thumb
 1425              		.thumb_func
 1426              		.fpu fpv5-d16
 1428              	HAL_RCC_GetHCLKFreq:
 1429              	.LFB145:
 940:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 941:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /**
 942:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @brief  Returns the HCLK frequency     
 943:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note   Each time HCLK changes, this function must be called to update the
 944:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         right HCLK value. Otherwise, any configuration based on this function will be incorrect
 945:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note   The SystemCoreClock CMSIS variable is used to store System Clock Frequency.
 946:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @retval HCLK frequency
 947:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
 948:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** uint32_t HAL_RCC_GetHCLKFreq(void)
 949:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** {
 1430              		.loc 1 949 0
 1431              		.cfi_startproc
 1432              		@ args = 0, pretend = 0, frame = 0
 1433              		@ frame_needed = 0, uses_anonymous_args = 0
 1434              		@ link register save eliminated.
 950:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   return SystemCoreClock;
 951:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** }
 1435              		.loc 1 951 0
 1436 0000 014B     		ldr	r3, .L148
 1437 0002 1868     		ldr	r0, [r3]
 1438 0004 7047     		bx	lr
 1439              	.L149:
 1440 0006 00BF     		.align	2
 1441              	.L148:
 1442 0008 00000000 		.word	SystemCoreClock
 1443              		.cfi_endproc
 1444              	.LFE145:
 1446              		.section	.text.HAL_RCC_GetPCLK1Freq,"ax",%progbits
 1447              		.align	1
 1448              		.global	HAL_RCC_GetPCLK1Freq
 1449              		.syntax unified
 1450              		.thumb
 1451              		.thumb_func
 1452              		.fpu fpv5-d16
 1454              	HAL_RCC_GetPCLK1Freq:
 1455              	.LFB146:
 952:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 953:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /**
 954:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @brief  Returns the PCLK1 frequency     
 955:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note   Each time PCLK1 changes, this function must be called to update the
 956:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         right PCLK1 value. Otherwise, any configuration based on this function will be incorrec
 957:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @retval PCLK1 frequency
 958:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
 959:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** uint32_t HAL_RCC_GetPCLK1Freq(void)
 960:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** {  
 1456              		.loc 1 960 0
 1457              		.cfi_startproc
 1458              		@ args = 0, pretend = 0, frame = 0
 1459              		@ frame_needed = 0, uses_anonymous_args = 0
 1460 0000 08B5     		push	{r3, lr}
 1461              		.cfi_def_cfa_offset 8
 1462              		.cfi_offset 3, -8
 1463              		.cfi_offset 14, -4
 961:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Get HCLK source and Compute PCLK1 frequency ---------------------------*/
 962:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   return (HAL_RCC_GetHCLKFreq() >> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE1)>> POSITION_VAL(RCC_CF
 1464              		.loc 1 962 0
 1465 0002 FFF7FEFF 		bl	HAL_RCC_GetHCLKFreq
 1466              	.LVL120:
 1467 0006 074B     		ldr	r3, .L152
 1468 0008 9B68     		ldr	r3, [r3, #8]
 1469 000a 03F4E053 		and	r3, r3, #7168
 1470              	.LVL121:
 1471              	.LBB58:
 1472              	.LBB59:
 1473              		.loc 2 531 0
 1474 000e 4FF4E052 		mov	r2, #7168
 1475              		.syntax unified
 1476              	@ 531 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 1477 0012 92FAA2F2 		rbit r2, r2
 1478              	@ 0 "" 2
 1479              	.LVL122:
 1480              		.thumb
 1481              		.syntax unified
 1482              	.LBE59:
 1483              	.LBE58:
 1484              		.loc 1 962 0
 1485 0016 B2FA82F2 		clz	r2, r2
 1486 001a D340     		lsrs	r3, r3, r2
 1487 001c 024A     		ldr	r2, .L152+4
 1488 001e D35C     		ldrb	r3, [r2, r3]	@ zero_extendqisi2
 963:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** }
 1489              		.loc 1 963 0
 1490 0020 D840     		lsrs	r0, r0, r3
 1491 0022 08BD     		pop	{r3, pc}
 1492              	.L153:
 1493              		.align	2
 1494              	.L152:
 1495 0024 00380240 		.word	1073887232
 1496 0028 00000000 		.word	APBPrescTable
 1497              		.cfi_endproc
 1498              	.LFE146:
 1500              		.section	.text.HAL_RCC_GetPCLK2Freq,"ax",%progbits
 1501              		.align	1
 1502              		.global	HAL_RCC_GetPCLK2Freq
 1503              		.syntax unified
 1504              		.thumb
 1505              		.thumb_func
 1506              		.fpu fpv5-d16
 1508              	HAL_RCC_GetPCLK2Freq:
 1509              	.LFB147:
 964:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 965:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /**
 966:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @brief  Returns the PCLK2 frequency     
 967:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note   Each time PCLK2 changes, this function must be called to update the
 968:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *         right PCLK2 value. Otherwise, any configuration based on this function will be incorrec
 969:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @retval PCLK2 frequency
 970:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
 971:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** uint32_t HAL_RCC_GetPCLK2Freq(void)
 972:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** {
 1510              		.loc 1 972 0
 1511              		.cfi_startproc
 1512              		@ args = 0, pretend = 0, frame = 0
 1513              		@ frame_needed = 0, uses_anonymous_args = 0
 1514 0000 08B5     		push	{r3, lr}
 1515              		.cfi_def_cfa_offset 8
 1516              		.cfi_offset 3, -8
 1517              		.cfi_offset 14, -4
 973:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Get HCLK source and Compute PCLK2 frequency ---------------------------*/
 974:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   return (HAL_RCC_GetHCLKFreq()>> APBPrescTable[(RCC->CFGR & RCC_CFGR_PPRE2)>> POSITION_VAL(RCC_CFG
 1518              		.loc 1 974 0
 1519 0002 FFF7FEFF 		bl	HAL_RCC_GetHCLKFreq
 1520              	.LVL123:
 1521 0006 074B     		ldr	r3, .L156
 1522 0008 9B68     		ldr	r3, [r3, #8]
 1523 000a 03F46043 		and	r3, r3, #57344
 1524              	.LVL124:
 1525              	.LBB60:
 1526              	.LBB61:
 1527              		.loc 2 531 0
 1528 000e 4FF46042 		mov	r2, #57344
 1529              		.syntax unified
 1530              	@ 531 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 1531 0012 92FAA2F2 		rbit r2, r2
 1532              	@ 0 "" 2
 1533              	.LVL125:
 1534              		.thumb
 1535              		.syntax unified
 1536              	.LBE61:
 1537              	.LBE60:
 1538              		.loc 1 974 0
 1539 0016 B2FA82F2 		clz	r2, r2
 1540 001a D340     		lsrs	r3, r3, r2
 1541 001c 024A     		ldr	r2, .L156+4
 1542 001e D35C     		ldrb	r3, [r2, r3]	@ zero_extendqisi2
 975:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** } 
 1543              		.loc 1 975 0
 1544 0020 D840     		lsrs	r0, r0, r3
 1545 0022 08BD     		pop	{r3, pc}
 1546              	.L157:
 1547              		.align	2
 1548              	.L156:
 1549 0024 00380240 		.word	1073887232
 1550 0028 00000000 		.word	APBPrescTable
 1551              		.cfi_endproc
 1552              	.LFE147:
 1554              		.section	.text.HAL_RCC_GetOscConfig,"ax",%progbits
 1555              		.align	1
 1556              		.global	HAL_RCC_GetOscConfig
 1557              		.syntax unified
 1558              		.thumb
 1559              		.thumb_func
 1560              		.fpu fpv5-d16
 1562              	HAL_RCC_GetOscConfig:
 1563              	.LFB148:
 976:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 977:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /**
 978:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @brief  Configures the RCC_OscInitStruct according to the internal 
 979:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * RCC configuration registers.
 980:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @param  RCC_OscInitStruct: pointer to an RCC_OscInitTypeDef structure that 
 981:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * will be configured.
 982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @retval None
 983:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
 984:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** void HAL_RCC_GetOscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct)
 985:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** {
 1564              		.loc 1 985 0
 1565              		.cfi_startproc
 1566              		@ args = 0, pretend = 0, frame = 0
 1567              		@ frame_needed = 0, uses_anonymous_args = 0
 1568              		@ link register save eliminated.
 1569              	.LVL126:
 986:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Set all possible values for the Oscillator type parameter ---------------*/
 987:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   RCC_OscInitStruct->OscillatorType = RCC_OSCILLATORTYPE_HSE | RCC_OSCILLATORTYPE_HSI | RCC_OSCILLA
 1570              		.loc 1 987 0
 1571 0000 0F23     		movs	r3, #15
 1572 0002 0360     		str	r3, [r0]
 988:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
 989:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Get the HSE configuration -----------------------------------------------*/
 990:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   if((RCC->CR &RCC_CR_HSEBYP) == RCC_CR_HSEBYP)
 1573              		.loc 1 990 0
 1574 0004 3D4B     		ldr	r3, .L172
 1575 0006 1B68     		ldr	r3, [r3]
 1576 0008 13F4802F 		tst	r3, #262144
 1577 000c 56D0     		beq	.L159
 991:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 992:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     RCC_OscInitStruct->HSEState = RCC_HSE_BYPASS;
 1578              		.loc 1 992 0
 1579 000e 4FF4A023 		mov	r3, #327680
 1580 0012 4360     		str	r3, [r0, #4]
 1581              	.L160:
 993:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 994:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   else if((RCC->CR &RCC_CR_HSEON) == RCC_CR_HSEON)
 995:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 996:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     RCC_OscInitStruct->HSEState = RCC_HSE_ON;
 997:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 998:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   else
 999:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
1000:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     RCC_OscInitStruct->HSEState = RCC_HSE_OFF;
1001:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
1002:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
1003:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Get the HSI configuration -----------------------------------------------*/
1004:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   if((RCC->CR &RCC_CR_HSION) == RCC_CR_HSION)
 1582              		.loc 1 1004 0
 1583 0014 394B     		ldr	r3, .L172
 1584 0016 1B68     		ldr	r3, [r3]
 1585 0018 13F0010F 		tst	r3, #1
 1586 001c 5AD0     		beq	.L162
1005:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
1006:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     RCC_OscInitStruct->HSIState = RCC_HSI_ON;
 1587              		.loc 1 1006 0
 1588 001e 0123     		movs	r3, #1
 1589 0020 C360     		str	r3, [r0, #12]
 1590              	.L163:
1007:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
1008:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   else
1009:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
1010:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     RCC_OscInitStruct->HSIState = RCC_HSI_OFF;
1011:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
1012:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
1013:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   RCC_OscInitStruct->HSICalibrationValue = (uint32_t)((RCC->CR &RCC_CR_HSITRIM) >> POSITION_VAL(RCC
 1591              		.loc 1 1013 0
 1592 0022 3649     		ldr	r1, .L172
 1593 0024 0B68     		ldr	r3, [r1]
 1594 0026 03F0F803 		and	r3, r3, #248
 1595              	.LVL127:
 1596              	.LBB62:
 1597              	.LBB63:
 1598              		.loc 2 531 0
 1599 002a F822     		movs	r2, #248
 1600              		.syntax unified
 1601              	@ 531 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 1602 002c 92FAA2F2 		rbit r2, r2
 1603              	@ 0 "" 2
 1604              	.LVL128:
 1605              		.thumb
 1606              		.syntax unified
 1607              	.LBE63:
 1608              	.LBE62:
 1609              		.loc 1 1013 0
 1610 0030 B2FA82F2 		clz	r2, r2
 1611 0034 D340     		lsrs	r3, r3, r2
 1612 0036 0361     		str	r3, [r0, #16]
1014:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
1015:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Get the LSE configuration -----------------------------------------------*/
1016:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   if((RCC->BDCR &RCC_BDCR_LSEBYP) == RCC_BDCR_LSEBYP)
 1613              		.loc 1 1016 0
 1614 0038 0B6F     		ldr	r3, [r1, #112]
 1615 003a 13F0040F 		tst	r3, #4
 1616 003e 4CD0     		beq	.L164
1017:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
1018:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     RCC_OscInitStruct->LSEState = RCC_LSE_BYPASS;
 1617              		.loc 1 1018 0
 1618 0040 0523     		movs	r3, #5
 1619 0042 8360     		str	r3, [r0, #8]
 1620              	.L165:
1019:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
1020:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   else if((RCC->BDCR &RCC_BDCR_LSEON) == RCC_BDCR_LSEON)
1021:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
1022:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     RCC_OscInitStruct->LSEState = RCC_LSE_ON;
1023:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
1024:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   else
1025:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
1026:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     RCC_OscInitStruct->LSEState = RCC_LSE_OFF;
1027:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
1028:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
1029:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Get the LSI configuration -----------------------------------------------*/
1030:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   if((RCC->CSR &RCC_CSR_LSION) == RCC_CSR_LSION)
 1621              		.loc 1 1030 0
 1622 0044 2D4B     		ldr	r3, .L172
 1623 0046 5B6F     		ldr	r3, [r3, #116]
 1624 0048 13F0010F 		tst	r3, #1
 1625 004c 50D0     		beq	.L167
1031:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
1032:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     RCC_OscInitStruct->LSIState = RCC_LSI_ON;
 1626              		.loc 1 1032 0
 1627 004e 0123     		movs	r3, #1
 1628 0050 4361     		str	r3, [r0, #20]
 1629              	.L168:
1033:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
1034:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   else
1035:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
1036:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     RCC_OscInitStruct->LSIState = RCC_LSI_OFF;
1037:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
1038:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
1039:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Get the PLL configuration -----------------------------------------------*/
1040:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   if((RCC->CR &RCC_CR_PLLON) == RCC_CR_PLLON)
 1630              		.loc 1 1040 0
 1631 0052 2A4B     		ldr	r3, .L172
 1632 0054 1B68     		ldr	r3, [r3]
 1633 0056 13F0807F 		tst	r3, #16777216
 1634 005a 4CD1     		bne	.L171
1041:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
1042:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     RCC_OscInitStruct->PLL.PLLState = RCC_PLL_ON;
1043:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
1044:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   else
1045:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
1046:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     RCC_OscInitStruct->PLL.PLLState = RCC_PLL_OFF;
 1635              		.loc 1 1046 0
 1636 005c 0123     		movs	r3, #1
 1637 005e 8361     		str	r3, [r0, #24]
 1638              	.L170:
1047:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
1048:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLSource = (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC);
 1639              		.loc 1 1048 0
 1640 0060 264A     		ldr	r2, .L172
 1641 0062 5368     		ldr	r3, [r2, #4]
 1642 0064 03F48003 		and	r3, r3, #4194304
 1643 0068 C361     		str	r3, [r0, #28]
1049:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLM = (uint32_t)(RCC->PLLCFGR & RCC_PLLCFGR_PLLM);
 1644              		.loc 1 1049 0
 1645 006a 5368     		ldr	r3, [r2, #4]
 1646 006c 03F03F03 		and	r3, r3, #63
 1647 0070 0362     		str	r3, [r0, #32]
1050:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLN = (uint32_t)((RCC->PLLCFGR & RCC_PLLCFGR_PLLN) >> POSITION_VAL(RCC_PL
 1648              		.loc 1 1050 0
 1649 0072 5168     		ldr	r1, [r2, #4]
 1650 0074 47F6C073 		movw	r3, #32704
 1651 0078 1940     		ands	r1, r1, r3
 1652              	.LVL129:
 1653              	.LBB64:
 1654              	.LBB65:
 1655              		.loc 2 531 0
 1656              		.syntax unified
 1657              	@ 531 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 1658 007a 93FAA3F3 		rbit r3, r3
 1659              	@ 0 "" 2
 1660              	.LVL130:
 1661              		.thumb
 1662              		.syntax unified
 1663              	.LBE65:
 1664              	.LBE64:
 1665              		.loc 1 1050 0
 1666 007e B3FA83F3 		clz	r3, r3
 1667 0082 21FA03F3 		lsr	r3, r1, r3
 1668 0086 4362     		str	r3, [r0, #36]
1051:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLP = (uint32_t)((((RCC->PLLCFGR & RCC_PLLCFGR_PLLP) + RCC_PLLCFGR_PLLP_0
 1669              		.loc 1 1051 0
 1670 0088 5368     		ldr	r3, [r2, #4]
 1671 008a 03F44033 		and	r3, r3, #196608
 1672 008e 03F58033 		add	r3, r3, #65536
 1673 0092 5B00     		lsls	r3, r3, #1
 1674              	.LVL131:
 1675              	.LBB66:
 1676              	.LBB67:
 1677              		.loc 2 531 0
 1678 0094 4FF44031 		mov	r1, #196608
 1679              		.syntax unified
 1680              	@ 531 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 1681 0098 91FAA1F1 		rbit r1, r1
 1682              	@ 0 "" 2
 1683              	.LVL132:
 1684              		.thumb
 1685              		.syntax unified
 1686              	.LBE67:
 1687              	.LBE66:
 1688              		.loc 1 1051 0
 1689 009c B1FA81F1 		clz	r1, r1
 1690 00a0 CB40     		lsrs	r3, r3, r1
 1691 00a2 8362     		str	r3, [r0, #40]
1052:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   RCC_OscInitStruct->PLL.PLLQ = (uint32_t)((RCC->PLLCFGR & RCC_PLLCFGR_PLLQ) >> POSITION_VAL(RCC_PL
 1692              		.loc 1 1052 0
 1693 00a4 5368     		ldr	r3, [r2, #4]
 1694 00a6 03F07063 		and	r3, r3, #251658240
 1695              	.LVL133:
 1696              	.LBB68:
 1697              	.LBB69:
 1698              		.loc 2 531 0
 1699 00aa 4FF07062 		mov	r2, #251658240
 1700              		.syntax unified
 1701              	@ 531 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 1702 00ae 92FAA2F2 		rbit r2, r2
 1703              	@ 0 "" 2
 1704              	.LVL134:
 1705              		.thumb
 1706              		.syntax unified
 1707              	.LBE69:
 1708              	.LBE68:
 1709              		.loc 1 1052 0
 1710 00b2 B2FA82F2 		clz	r2, r2
 1711 00b6 D340     		lsrs	r3, r3, r2
 1712 00b8 C362     		str	r3, [r0, #44]
1053:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** }
 1713              		.loc 1 1053 0
 1714 00ba 7047     		bx	lr
 1715              	.L159:
 994:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 1716              		.loc 1 994 0
 1717 00bc 0F4B     		ldr	r3, .L172
 1718 00be 1B68     		ldr	r3, [r3]
 1719 00c0 13F4803F 		tst	r3, #65536
 1720 00c4 03D0     		beq	.L161
 996:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 1721              		.loc 1 996 0
 1722 00c6 4FF48033 		mov	r3, #65536
 1723 00ca 4360     		str	r3, [r0, #4]
 1724 00cc A2E7     		b	.L160
 1725              	.L161:
1000:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 1726              		.loc 1 1000 0
 1727 00ce 0023     		movs	r3, #0
 1728 00d0 4360     		str	r3, [r0, #4]
 1729 00d2 9FE7     		b	.L160
 1730              	.L162:
1010:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 1731              		.loc 1 1010 0
 1732 00d4 0023     		movs	r3, #0
 1733 00d6 C360     		str	r3, [r0, #12]
 1734 00d8 A3E7     		b	.L163
 1735              	.L164:
1020:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 1736              		.loc 1 1020 0
 1737 00da 084B     		ldr	r3, .L172
 1738 00dc 1B6F     		ldr	r3, [r3, #112]
 1739 00de 13F0010F 		tst	r3, #1
 1740 00e2 02D0     		beq	.L166
1022:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 1741              		.loc 1 1022 0
 1742 00e4 0123     		movs	r3, #1
 1743 00e6 8360     		str	r3, [r0, #8]
 1744 00e8 ACE7     		b	.L165
 1745              	.L166:
1026:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 1746              		.loc 1 1026 0
 1747 00ea 0023     		movs	r3, #0
 1748 00ec 8360     		str	r3, [r0, #8]
 1749 00ee A9E7     		b	.L165
 1750              	.L167:
1036:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 1751              		.loc 1 1036 0
 1752 00f0 0023     		movs	r3, #0
 1753 00f2 4361     		str	r3, [r0, #20]
 1754 00f4 ADE7     		b	.L168
 1755              	.L171:
1042:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 1756              		.loc 1 1042 0
 1757 00f6 0223     		movs	r3, #2
 1758 00f8 8361     		str	r3, [r0, #24]
 1759 00fa B1E7     		b	.L170
 1760              	.L173:
 1761              		.align	2
 1762              	.L172:
 1763 00fc 00380240 		.word	1073887232
 1764              		.cfi_endproc
 1765              	.LFE148:
 1767              		.section	.text.HAL_RCC_GetClockConfig,"ax",%progbits
 1768              		.align	1
 1769              		.global	HAL_RCC_GetClockConfig
 1770              		.syntax unified
 1771              		.thumb
 1772              		.thumb_func
 1773              		.fpu fpv5-d16
 1775              	HAL_RCC_GetClockConfig:
 1776              	.LFB149:
1054:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
1055:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /**
1056:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @brief  Configures the RCC_ClkInitStruct according to the internal 
1057:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * RCC configuration registers.
1058:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @param  RCC_ClkInitStruct: pointer to an RCC_ClkInitTypeDef structure that 
1059:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * will be configured.
1060:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @param  pFLatency: Pointer on the Flash Latency.
1061:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @retval None
1062:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
1063:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** void HAL_RCC_GetClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t *pFLatency)
1064:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** {
 1777              		.loc 1 1064 0
 1778              		.cfi_startproc
 1779              		@ args = 0, pretend = 0, frame = 0
 1780              		@ frame_needed = 0, uses_anonymous_args = 0
 1781              		@ link register save eliminated.
 1782              	.LVL135:
1065:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Set all possible values for the Clock type parameter --------------------*/
1066:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   RCC_ClkInitStruct->ClockType = RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | 
 1783              		.loc 1 1066 0
 1784 0000 0F23     		movs	r3, #15
 1785 0002 0360     		str	r3, [r0]
1067:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****    
1068:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Get the SYSCLK configuration --------------------------------------------*/ 
1069:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   RCC_ClkInitStruct->SYSCLKSource = (uint32_t)(RCC->CFGR & RCC_CFGR_SW);
 1786              		.loc 1 1069 0
 1787 0004 0B4B     		ldr	r3, .L175
 1788 0006 9A68     		ldr	r2, [r3, #8]
 1789 0008 02F00302 		and	r2, r2, #3
 1790 000c 4260     		str	r2, [r0, #4]
1070:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
1071:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Get the HCLK configuration ----------------------------------------------*/ 
1072:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   RCC_ClkInitStruct->AHBCLKDivider = (uint32_t)(RCC->CFGR & RCC_CFGR_HPRE); 
 1791              		.loc 1 1072 0
 1792 000e 9A68     		ldr	r2, [r3, #8]
 1793 0010 02F0F002 		and	r2, r2, #240
 1794 0014 8260     		str	r2, [r0, #8]
1073:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
1074:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Get the APB1 configuration ----------------------------------------------*/ 
1075:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   RCC_ClkInitStruct->APB1CLKDivider = (uint32_t)(RCC->CFGR & RCC_CFGR_PPRE1);   
 1795              		.loc 1 1075 0
 1796 0016 9A68     		ldr	r2, [r3, #8]
 1797 0018 02F4E052 		and	r2, r2, #7168
 1798 001c C260     		str	r2, [r0, #12]
1076:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
1077:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Get the APB2 configuration ----------------------------------------------*/ 
1078:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   RCC_ClkInitStruct->APB2CLKDivider = (uint32_t)((RCC->CFGR & RCC_CFGR_PPRE2) >> 3);
 1799              		.loc 1 1078 0
 1800 001e 9B68     		ldr	r3, [r3, #8]
 1801 0020 DB08     		lsrs	r3, r3, #3
 1802 0022 03F4E053 		and	r3, r3, #7168
 1803 0026 0361     		str	r3, [r0, #16]
1079:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   
1080:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Get the Flash Wait State (Latency) configuration ------------------------*/   
1081:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   *pFLatency = (uint32_t)(FLASH->ACR & FLASH_ACR_LATENCY); 
 1804              		.loc 1 1081 0
 1805 0028 034B     		ldr	r3, .L175+4
 1806 002a 1B68     		ldr	r3, [r3]
 1807 002c 03F00F03 		and	r3, r3, #15
 1808 0030 0B60     		str	r3, [r1]
1082:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** }
 1809              		.loc 1 1082 0
 1810 0032 7047     		bx	lr
 1811              	.L176:
 1812              		.align	2
 1813              	.L175:
 1814 0034 00380240 		.word	1073887232
 1815 0038 003C0240 		.word	1073888256
 1816              		.cfi_endproc
 1817              	.LFE149:
 1819              		.section	.text.HAL_RCC_CSSCallback,"ax",%progbits
 1820              		.align	1
 1821              		.weak	HAL_RCC_CSSCallback
 1822              		.syntax unified
 1823              		.thumb
 1824              		.thumb_func
 1825              		.fpu fpv5-d16
 1827              	HAL_RCC_CSSCallback:
 1828              	.LFB151:
1083:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
1084:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /**
1085:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @brief This function handles the RCC CSS interrupt request.
1086:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @note This API should be called under the NMI_Handler().
1087:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @retval None
1088:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
1089:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** void HAL_RCC_NMI_IRQHandler(void)
1090:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** {
1091:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Check RCC CSSF flag  */
1092:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   if(__HAL_RCC_GET_IT(RCC_IT_CSS))
1093:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
1094:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* RCC Clock Security System interrupt user callback */
1095:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     HAL_RCC_CSSCallback();
1096:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
1097:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     /* Clear RCC CSS pending bit */
1098:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****     __HAL_RCC_CLEAR_IT(RCC_IT_CSS);
1099:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
1100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** }
1101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
1102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** /**
1103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @brief  RCC Clock Security System interrupt callback
1104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   * @retval None
1105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   */
1106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** __weak void HAL_RCC_CSSCallback(void)
1107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** {
 1829              		.loc 1 1107 0
 1830              		.cfi_startproc
 1831              		@ args = 0, pretend = 0, frame = 0
 1832              		@ frame_needed = 0, uses_anonymous_args = 0
 1833              		@ link register save eliminated.
1108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
1109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****             the HAL_RCC_CSSCallback could be implemented in the user file
1110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****    */ 
1111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** }
 1834              		.loc 1 1111 0
 1835 0000 7047     		bx	lr
 1836              		.cfi_endproc
 1837              	.LFE151:
 1839              		.section	.text.HAL_RCC_NMI_IRQHandler,"ax",%progbits
 1840              		.align	1
 1841              		.global	HAL_RCC_NMI_IRQHandler
 1842              		.syntax unified
 1843              		.thumb
 1844              		.thumb_func
 1845              		.fpu fpv5-d16
 1847              	HAL_RCC_NMI_IRQHandler:
 1848              	.LFB150:
1090:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   /* Check RCC CSSF flag  */
 1849              		.loc 1 1090 0
 1850              		.cfi_startproc
 1851              		@ args = 0, pretend = 0, frame = 0
 1852              		@ frame_needed = 0, uses_anonymous_args = 0
 1853 0000 08B5     		push	{r3, lr}
 1854              		.cfi_def_cfa_offset 8
 1855              		.cfi_offset 3, -8
 1856              		.cfi_offset 14, -4
1092:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   {
 1857              		.loc 1 1092 0
 1858 0002 064B     		ldr	r3, .L182
 1859 0004 DB68     		ldr	r3, [r3, #12]
 1860 0006 13F0800F 		tst	r3, #128
 1861 000a 00D1     		bne	.L181
 1862              	.L178:
1100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 1863              		.loc 1 1100 0
 1864 000c 08BD     		pop	{r3, pc}
 1865              	.L181:
1095:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 1866              		.loc 1 1095 0
 1867 000e FFF7FEFF 		bl	HAL_RCC_CSSCallback
 1868              	.LVL136:
1098:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c ****   }
 1869              		.loc 1 1098 0
 1870 0012 034B     		ldr	r3, .L182+4
 1871 0014 8022     		movs	r2, #128
 1872 0016 1A70     		strb	r2, [r3]
1100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_rcc.c **** 
 1873              		.loc 1 1100 0
 1874 0018 F8E7     		b	.L178
 1875              	.L183:
 1876 001a 00BF     		.align	2
 1877              	.L182:
 1878 001c 00380240 		.word	1073887232
 1879 0020 0E380240 		.word	1073887246
 1880              		.cfi_endproc
 1881              	.LFE150:
 1883              		.text
 1884              	.Letext0:
 1885              		.file 3 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 1886              		.file 4 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 1887              		.file 5 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h"
 1888              		.file 6 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/system_stm
 1889              		.file 7 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f769x
 1890              		.file 8 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f7xx.
 1891              		.file 9 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 1892              		.file 10 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 1893              		.file 11 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 1894              		.file 12 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 1895              		.file 13 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_def.
 1896              		.file 14 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_rcc_
 1897              		.file 15 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_rcc.
 1898              		.file 16 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_gpio
 1899              		.file 17 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal.h"
DEFINED SYMBOLS
                            *ABS*:0000000000000000 stm32f7xx_hal_rcc.c
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:17     .text.HAL_RCC_DeInit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:24     .text.HAL_RCC_DeInit:0000000000000000 HAL_RCC_DeInit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:74     .text.HAL_RCC_DeInit:0000000000000044 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:84     .text.HAL_RCC_OscConfig:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:91     .text.HAL_RCC_OscConfig:0000000000000000 HAL_RCC_OscConfig
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:556    .text.HAL_RCC_OscConfig:00000000000002b4 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:561    .text.HAL_RCC_OscConfig:00000000000002bc $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:825    .text.HAL_RCC_OscConfig:0000000000000418 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:830    .text.HAL_RCC_MCOConfig:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:837    .text.HAL_RCC_MCOConfig:0000000000000000 HAL_RCC_MCOConfig
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:948    .text.HAL_RCC_MCOConfig:000000000000008c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:955    .text.HAL_RCC_EnableCSS:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:962    .text.HAL_RCC_EnableCSS:0000000000000000 HAL_RCC_EnableCSS
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:979    .text.HAL_RCC_EnableCSS:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:984    .text.HAL_RCC_DisableCSS:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:991    .text.HAL_RCC_DisableCSS:0000000000000000 HAL_RCC_DisableCSS
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1008   .text.HAL_RCC_DisableCSS:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1013   .text.HAL_RCC_GetSysClockFreq:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1020   .text.HAL_RCC_GetSysClockFreq:0000000000000000 HAL_RCC_GetSysClockFreq
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1144   .text.HAL_RCC_GetSysClockFreq:0000000000000088 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1151   .text.HAL_RCC_ClockConfig:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1158   .text.HAL_RCC_ClockConfig:0000000000000000 HAL_RCC_ClockConfig
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1413   .text.HAL_RCC_ClockConfig:0000000000000174 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1421   .text.HAL_RCC_GetHCLKFreq:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1428   .text.HAL_RCC_GetHCLKFreq:0000000000000000 HAL_RCC_GetHCLKFreq
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1442   .text.HAL_RCC_GetHCLKFreq:0000000000000008 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1447   .text.HAL_RCC_GetPCLK1Freq:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1454   .text.HAL_RCC_GetPCLK1Freq:0000000000000000 HAL_RCC_GetPCLK1Freq
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1495   .text.HAL_RCC_GetPCLK1Freq:0000000000000024 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1501   .text.HAL_RCC_GetPCLK2Freq:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1508   .text.HAL_RCC_GetPCLK2Freq:0000000000000000 HAL_RCC_GetPCLK2Freq
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1549   .text.HAL_RCC_GetPCLK2Freq:0000000000000024 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1555   .text.HAL_RCC_GetOscConfig:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1562   .text.HAL_RCC_GetOscConfig:0000000000000000 HAL_RCC_GetOscConfig
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1763   .text.HAL_RCC_GetOscConfig:00000000000000fc $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1768   .text.HAL_RCC_GetClockConfig:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1775   .text.HAL_RCC_GetClockConfig:0000000000000000 HAL_RCC_GetClockConfig
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1814   .text.HAL_RCC_GetClockConfig:0000000000000034 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1820   .text.HAL_RCC_CSSCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1827   .text.HAL_RCC_CSSCallback:0000000000000000 HAL_RCC_CSSCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1840   .text.HAL_RCC_NMI_IRQHandler:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1847   .text.HAL_RCC_NMI_IRQHandler:0000000000000000 HAL_RCC_NMI_IRQHandler
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cci5nBB4.s:1878   .text.HAL_RCC_NMI_IRQHandler:000000000000001c $d
                           .group:0000000000000000 wm4.0.1feba82c71ea6f90606b0f4a064b979b
                           .group:0000000000000000 wm4.stm32f7xx_hal_conf.h.42.3156784d5484408e6927d1d369303646
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

UNDEFINED SYMBOLS
SystemCoreClock
HAL_GetTick
HAL_GPIO_Init
HAL_InitTick
AHBPrescTable
APBPrescTable

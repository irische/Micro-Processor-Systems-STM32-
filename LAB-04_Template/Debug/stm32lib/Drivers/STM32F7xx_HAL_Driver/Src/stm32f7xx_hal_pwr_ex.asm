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
  12              		.file	"stm32f7xx_hal_pwr_ex.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.HAL_PWREx_EnableBkUpReg,"ax",%progbits
  17              		.align	1
  18              		.global	HAL_PWREx_EnableBkUpReg
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv5-d16
  24              	HAL_PWREx_EnableBkUpReg:
  25              	.LFB138:
  26              		.file 1 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_e
   1:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /**
   2:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   ******************************************************************************
   3:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @file    stm32f7xx_hal_pwr_ex.c
   4:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @author  MCD Application Team
   5:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @version V1.2.2
   6:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @date    14-April-2017
   7:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @brief   Extended PWR HAL module driver.
   8:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *          This file provides firmware functions to manage the following 
   9:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *          functionalities of PWR extension peripheral:           
  10:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *           + Peripheral Extended features functions
  11:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *         
  12:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   ******************************************************************************
  13:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @attention
  14:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *
  15:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * <h2><center>&copy; COPYRIGHT(c) 2017 STMicroelectronics</center></h2>
  16:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *
  17:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * Redistribution and use in source and binary forms, with or without modification,
  18:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * are permitted provided that the following conditions are met:
  19:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  20:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *      this list of conditions and the following disclaimer.
  21:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  22:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *      this list of conditions and the following disclaimer in the documentation
  23:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *      and/or other materials provided with the distribution.
  24:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  25:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *      may be used to endorse or promote products derived from this software
  26:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *      without specific prior written permission.
  27:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *
  28:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  29:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  30:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  31:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  32:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  33:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  34:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  35:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  36:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  37:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  38:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *
  39:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   ******************************************************************************
  40:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */ 
  41:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
  42:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /* Includes ------------------------------------------------------------------*/
  43:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** #include "stm32f7xx_hal.h"
  44:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
  45:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /** @addtogroup STM32F7xx_HAL_Driver
  46:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @{
  47:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */
  48:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
  49:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /** @defgroup PWREx PWREx
  50:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @brief PWR HAL module driver
  51:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @{
  52:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */
  53:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
  54:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** #ifdef HAL_PWR_MODULE_ENABLED
  55:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
  56:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /* Private typedef -----------------------------------------------------------*/
  57:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /* Private define ------------------------------------------------------------*/
  58:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /** @addtogroup PWREx_Private_Constants
  59:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @{
  60:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */    
  61:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** #define PWR_OVERDRIVE_TIMEOUT_VALUE  1000
  62:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** #define PWR_UDERDRIVE_TIMEOUT_VALUE  1000
  63:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** #define PWR_BKPREG_TIMEOUT_VALUE     1000
  64:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** #define PWR_VOSRDY_TIMEOUT_VALUE     1000
  65:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /**
  66:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @}
  67:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */
  68:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     
  69:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /* Private macro -------------------------------------------------------------*/
  70:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /* Private variables ---------------------------------------------------------*/
  71:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /* Private function prototypes -----------------------------------------------*/
  72:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /* Private functions ---------------------------------------------------------*/
  73:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /** @defgroup PWREx_Exported_Functions PWREx Exported Functions
  74:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *  @{
  75:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */
  76:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
  77:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /** @defgroup PWREx_Exported_Functions_Group1 Peripheral Extended features functions 
  78:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *  @brief Peripheral Extended features functions 
  79:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *
  80:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** @verbatim   
  81:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
  82:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****  ===============================================================================
  83:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****                  ##### Peripheral extended features functions #####
  84:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****  ===============================================================================
  85:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
  86:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     *** Main and Backup Regulators configuration ***
  87:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     ================================================
  88:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     [..] 
  89:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       (+) The backup domain includes 4 Kbytes of backup SRAM accessible only from 
  90:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           the CPU, and address in 32-bit, 16-bit or 8-bit mode. Its content is 
  91:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           retained even in Standby or VBAT mode when the low power backup regulator
  92:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           is enabled. It can be considered as an internal EEPROM when VBAT is 
  93:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           always present. You can use the HAL_PWREx_EnableBkUpReg() function to 
  94:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           enable the low power backup regulator. 
  95:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
  96:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       (+) When the backup domain is supplied by VDD (analog switch connected to VDD) 
  97:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           the backup SRAM is powered from VDD which replaces the VBAT power supply to 
  98:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           save battery life.
  99:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       (+) The backup SRAM is not mass erased by a tamper event. It is read 
 101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           protected to prevent confidential data, such as cryptographic private 
 102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           key, from being accessed. The backup SRAM can be erased only through 
 103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           the Flash interface when a protection level change from level 1 to 
 104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           level 0 is requested. 
 105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       -@- Refer to the description of Read protection (RDP) in the Flash 
 106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           programming manual.
 107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       (+) The main internal regulator can be configured to have a tradeoff between 
 109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           performance and power consumption when the device does not operate at 
 110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           the maximum frequency. This is done through __HAL_PWR_MAINREGULATORMODE_CONFIG() 
 111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           macro which configure VOS bit in PWR_CR register
 112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           
 113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****         Refer to the product datasheets for more details.
 114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     *** FLASH Power Down configuration ****
 116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     =======================================
 117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     [..] 
 118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       (+) By setting the FPDS bit in the PWR_CR register by using the 
 119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           HAL_PWREx_EnableFlashPowerDown() function, the Flash memory also enters power 
 120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           down mode when the device enters Stop mode. When the Flash memory 
 121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           is in power down mode, an additional startup delay is incurred when 
 122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****           waking up from Stop mode.
 123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     *** Over-Drive and Under-Drive configuration ****
 125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     =================================================
 126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     [..]         
 127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****        (+) In Run mode: the main regulator has 2 operating modes available:
 128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****         (++) Normal mode: The CPU and core logic operate at maximum frequency at a given 
 129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****              voltage scaling (scale 1, scale 2 or scale 3)
 130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****         (++) Over-drive mode: This mode allows the CPU and the core logic to operate at a 
 131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****             higher frequency than the normal mode for a given voltage scaling (scale 1,  
 132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****             scale 2 or scale 3). This mode is enabled through HAL_PWREx_EnableOverDrive() function 
 133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****             disabled by HAL_PWREx_DisableOverDrive() function, to enter or exit from Over-drive mod
 134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****             the sequence described in Reference manual.
 135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****              
 136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****        (+) In Stop mode: the main regulator or low power regulator supplies a low power 
 137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****            voltage to the 1.2V domain, thus preserving the content of registers 
 138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****            and internal SRAM. 2 operating modes are available:
 139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****          (++) Normal mode: the 1.2V domain is preserved in nominal leakage mode. This mode is only 
 140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****               available when the main regulator or the low power regulator is used in Scale 3 or 
 141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****               low voltage mode.
 142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****          (++) Under-drive mode: the 1.2V domain is preserved in reduced leakage mode. This mode is 
 143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****               available when the main regulator or the low power regulator is in low voltage mode.
 144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** @endverbatim
 146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @{
 147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */
 148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /**
 150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @brief Enables the Backup Regulator.
 151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @retval HAL status
 152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */
 153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** HAL_StatusTypeDef HAL_PWREx_EnableBkUpReg(void)
 154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** {
  27              		.loc 1 154 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31 0000 10B5     		push	{r4, lr}
  32              		.cfi_def_cfa_offset 8
  33              		.cfi_offset 4, -8
  34              		.cfi_offset 14, -4
  35              	.LVL0:
 155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   uint32_t tickstart = 0;
 156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Enable Backup regulator */
 158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   PWR->CSR1 |= PWR_CSR1_BRE;
  36              		.loc 1 158 0
  37 0002 0D4B     		ldr	r3, .L8
  38 0004 5A68     		ldr	r2, [r3, #4]
  39 0006 42F40072 		orr	r2, r2, #512
  40 000a 5A60     		str	r2, [r3, #4]
 159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     
 160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Workaround for the following hardware bug: */
 161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Id 19: PWR : No STANDBY wake-up when Back-up RAM enabled (ref. Errata Sheet p23) */
 162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   PWR->CSR1 |= PWR_CSR1_EIWUP;
  41              		.loc 1 162 0
  42 000c 5A68     		ldr	r2, [r3, #4]
  43 000e 42F48072 		orr	r2, r2, #256
  44 0012 5A60     		str	r2, [r3, #4]
 163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Get tick */
 165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   tickstart = HAL_GetTick();
  45              		.loc 1 165 0
  46 0014 FFF7FEFF 		bl	HAL_GetTick
  47              	.LVL1:
  48 0018 0446     		mov	r4, r0
  49              	.LVL2:
  50              	.L2:
 166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Wait till Backup regulator ready flag is set */  
 168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   while(__HAL_PWR_GET_FLAG(PWR_FLAG_BRR) == RESET)
  51              		.loc 1 168 0
  52 001a 074B     		ldr	r3, .L8
  53 001c 5B68     		ldr	r3, [r3, #4]
  54 001e 13F0080F 		tst	r3, #8
  55 0022 07D1     		bne	.L7
 169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   {
 170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     if((HAL_GetTick() - tickstart ) > PWR_BKPREG_TIMEOUT_VALUE)
  56              		.loc 1 170 0
  57 0024 FFF7FEFF 		bl	HAL_GetTick
  58              	.LVL3:
  59 0028 001B     		subs	r0, r0, r4
  60 002a B0F57A7F 		cmp	r0, #1000
  61 002e F4D9     		bls	.L2
 171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     {
 172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       return HAL_TIMEOUT;
  62              		.loc 1 172 0
  63 0030 0320     		movs	r0, #3
  64 0032 00E0     		b	.L3
  65              	.L7:
 173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     } 
 174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   }
 175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   return HAL_OK;
  66              		.loc 1 175 0
  67 0034 0020     		movs	r0, #0
  68              	.L3:
 176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** }
  69              		.loc 1 176 0
  70 0036 10BD     		pop	{r4, pc}
  71              	.LVL4:
  72              	.L9:
  73              		.align	2
  74              	.L8:
  75 0038 00700040 		.word	1073770496
  76              		.cfi_endproc
  77              	.LFE138:
  79              		.section	.text.HAL_PWREx_DisableBkUpReg,"ax",%progbits
  80              		.align	1
  81              		.global	HAL_PWREx_DisableBkUpReg
  82              		.syntax unified
  83              		.thumb
  84              		.thumb_func
  85              		.fpu fpv5-d16
  87              	HAL_PWREx_DisableBkUpReg:
  88              	.LFB139:
 177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /**
 179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @brief Disables the Backup Regulator.
 180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @retval HAL status
 181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */
 182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** HAL_StatusTypeDef HAL_PWREx_DisableBkUpReg(void)
 183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** {
  89              		.loc 1 183 0
  90              		.cfi_startproc
  91              		@ args = 0, pretend = 0, frame = 0
  92              		@ frame_needed = 0, uses_anonymous_args = 0
  93 0000 10B5     		push	{r4, lr}
  94              		.cfi_def_cfa_offset 8
  95              		.cfi_offset 4, -8
  96              		.cfi_offset 14, -4
  97              	.LVL5:
 184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   uint32_t tickstart = 0;
 185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   
 186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Disable Backup regulator */
 187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   PWR->CSR1 &= (uint32_t)~((uint32_t)PWR_CSR1_BRE);
  98              		.loc 1 187 0
  99 0002 0D4B     		ldr	r3, .L17
 100 0004 5A68     		ldr	r2, [r3, #4]
 101 0006 22F40072 		bic	r2, r2, #512
 102 000a 5A60     		str	r2, [r3, #4]
 188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   
 189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Workaround for the following hardware bug: */
 190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Id 19: PWR : No STANDBY wake-up when Back-up RAM enabled (ref. Errata Sheet p23) */
 191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   PWR->CSR1 |= PWR_CSR1_EIWUP;
 103              		.loc 1 191 0
 104 000c 5A68     		ldr	r2, [r3, #4]
 105 000e 42F48072 		orr	r2, r2, #256
 106 0012 5A60     		str	r2, [r3, #4]
 192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Get tick */
 194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   tickstart = HAL_GetTick();
 107              		.loc 1 194 0
 108 0014 FFF7FEFF 		bl	HAL_GetTick
 109              	.LVL6:
 110 0018 0446     		mov	r4, r0
 111              	.LVL7:
 112              	.L11:
 195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Wait till Backup regulator ready flag is set */  
 197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   while(__HAL_PWR_GET_FLAG(PWR_FLAG_BRR) != RESET)
 113              		.loc 1 197 0
 114 001a 074B     		ldr	r3, .L17
 115 001c 5B68     		ldr	r3, [r3, #4]
 116 001e 13F0080F 		tst	r3, #8
 117 0022 07D0     		beq	.L16
 198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   {
 199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     if((HAL_GetTick() - tickstart ) > PWR_BKPREG_TIMEOUT_VALUE)
 118              		.loc 1 199 0
 119 0024 FFF7FEFF 		bl	HAL_GetTick
 120              	.LVL8:
 121 0028 001B     		subs	r0, r0, r4
 122 002a B0F57A7F 		cmp	r0, #1000
 123 002e F4D9     		bls	.L11
 200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     {
 201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       return HAL_TIMEOUT;
 124              		.loc 1 201 0
 125 0030 0320     		movs	r0, #3
 126 0032 00E0     		b	.L12
 127              	.L16:
 202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     } 
 203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   }
 204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   return HAL_OK;
 128              		.loc 1 204 0
 129 0034 0020     		movs	r0, #0
 130              	.L12:
 205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** }
 131              		.loc 1 205 0
 132 0036 10BD     		pop	{r4, pc}
 133              	.LVL9:
 134              	.L18:
 135              		.align	2
 136              	.L17:
 137 0038 00700040 		.word	1073770496
 138              		.cfi_endproc
 139              	.LFE139:
 141              		.section	.text.HAL_PWREx_EnableFlashPowerDown,"ax",%progbits
 142              		.align	1
 143              		.global	HAL_PWREx_EnableFlashPowerDown
 144              		.syntax unified
 145              		.thumb
 146              		.thumb_func
 147              		.fpu fpv5-d16
 149              	HAL_PWREx_EnableFlashPowerDown:
 150              	.LFB140:
 206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /**
 208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @brief Enables the Flash Power Down in Stop mode.
 209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @retval None
 210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */
 211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** void HAL_PWREx_EnableFlashPowerDown(void)
 212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** {
 151              		.loc 1 212 0
 152              		.cfi_startproc
 153              		@ args = 0, pretend = 0, frame = 0
 154              		@ frame_needed = 0, uses_anonymous_args = 0
 155              		@ link register save eliminated.
 213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Enable the Flash Power Down */
 214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   PWR->CR1 |= PWR_CR1_FPDS;
 156              		.loc 1 214 0
 157 0000 024A     		ldr	r2, .L20
 158 0002 1368     		ldr	r3, [r2]
 159 0004 43F40073 		orr	r3, r3, #512
 160 0008 1360     		str	r3, [r2]
 215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** }
 161              		.loc 1 215 0
 162 000a 7047     		bx	lr
 163              	.L21:
 164              		.align	2
 165              	.L20:
 166 000c 00700040 		.word	1073770496
 167              		.cfi_endproc
 168              	.LFE140:
 170              		.section	.text.HAL_PWREx_DisableFlashPowerDown,"ax",%progbits
 171              		.align	1
 172              		.global	HAL_PWREx_DisableFlashPowerDown
 173              		.syntax unified
 174              		.thumb
 175              		.thumb_func
 176              		.fpu fpv5-d16
 178              	HAL_PWREx_DisableFlashPowerDown:
 179              	.LFB141:
 216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /**
 218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @brief Disables the Flash Power Down in Stop mode.
 219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @retval None
 220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */
 221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** void HAL_PWREx_DisableFlashPowerDown(void)
 222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** {
 180              		.loc 1 222 0
 181              		.cfi_startproc
 182              		@ args = 0, pretend = 0, frame = 0
 183              		@ frame_needed = 0, uses_anonymous_args = 0
 184              		@ link register save eliminated.
 223:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Disable the Flash Power Down */
 224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   PWR->CR1 &= (uint32_t)~((uint32_t)PWR_CR1_FPDS);
 185              		.loc 1 224 0
 186 0000 024A     		ldr	r2, .L23
 187 0002 1368     		ldr	r3, [r2]
 188 0004 23F40073 		bic	r3, r3, #512
 189 0008 1360     		str	r3, [r2]
 225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** }
 190              		.loc 1 225 0
 191 000a 7047     		bx	lr
 192              	.L24:
 193              		.align	2
 194              	.L23:
 195 000c 00700040 		.word	1073770496
 196              		.cfi_endproc
 197              	.LFE141:
 199              		.section	.text.HAL_PWREx_EnableMainRegulatorLowVoltage,"ax",%progbits
 200              		.align	1
 201              		.global	HAL_PWREx_EnableMainRegulatorLowVoltage
 202              		.syntax unified
 203              		.thumb
 204              		.thumb_func
 205              		.fpu fpv5-d16
 207              	HAL_PWREx_EnableMainRegulatorLowVoltage:
 208              	.LFB142:
 226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /**
 228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @brief Enables Main Regulator low voltage mode.
 229:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @retval None
 230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */
 231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** void HAL_PWREx_EnableMainRegulatorLowVoltage(void)
 232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** {
 209              		.loc 1 232 0
 210              		.cfi_startproc
 211              		@ args = 0, pretend = 0, frame = 0
 212              		@ frame_needed = 0, uses_anonymous_args = 0
 213              		@ link register save eliminated.
 233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Enable Main regulator low voltage */
 234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   PWR->CR1 |= PWR_CR1_MRUDS;
 214              		.loc 1 234 0
 215 0000 024A     		ldr	r2, .L26
 216 0002 1368     		ldr	r3, [r2]
 217 0004 43F40063 		orr	r3, r3, #2048
 218 0008 1360     		str	r3, [r2]
 235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** }
 219              		.loc 1 235 0
 220 000a 7047     		bx	lr
 221              	.L27:
 222              		.align	2
 223              	.L26:
 224 000c 00700040 		.word	1073770496
 225              		.cfi_endproc
 226              	.LFE142:
 228              		.section	.text.HAL_PWREx_DisableMainRegulatorLowVoltage,"ax",%progbits
 229              		.align	1
 230              		.global	HAL_PWREx_DisableMainRegulatorLowVoltage
 231              		.syntax unified
 232              		.thumb
 233              		.thumb_func
 234              		.fpu fpv5-d16
 236              	HAL_PWREx_DisableMainRegulatorLowVoltage:
 237              	.LFB143:
 236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /**
 238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @brief Disables Main Regulator low voltage mode.
 239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @retval None
 240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */
 241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** void HAL_PWREx_DisableMainRegulatorLowVoltage(void)
 242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** {  
 238              		.loc 1 242 0
 239              		.cfi_startproc
 240              		@ args = 0, pretend = 0, frame = 0
 241              		@ frame_needed = 0, uses_anonymous_args = 0
 242              		@ link register save eliminated.
 243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Disable Main regulator low voltage */
 244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   PWR->CR1 &= (uint32_t)~((uint32_t)PWR_CR1_MRUDS);
 243              		.loc 1 244 0
 244 0000 024A     		ldr	r2, .L29
 245 0002 1368     		ldr	r3, [r2]
 246 0004 23F40063 		bic	r3, r3, #2048
 247 0008 1360     		str	r3, [r2]
 245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** }
 248              		.loc 1 245 0
 249 000a 7047     		bx	lr
 250              	.L30:
 251              		.align	2
 252              	.L29:
 253 000c 00700040 		.word	1073770496
 254              		.cfi_endproc
 255              	.LFE143:
 257              		.section	.text.HAL_PWREx_EnableLowRegulatorLowVoltage,"ax",%progbits
 258              		.align	1
 259              		.global	HAL_PWREx_EnableLowRegulatorLowVoltage
 260              		.syntax unified
 261              		.thumb
 262              		.thumb_func
 263              		.fpu fpv5-d16
 265              	HAL_PWREx_EnableLowRegulatorLowVoltage:
 266              	.LFB144:
 246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /**
 248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @brief Enables Low Power Regulator low voltage mode.
 249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @retval None
 250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */
 251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** void HAL_PWREx_EnableLowRegulatorLowVoltage(void)
 252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** {
 267              		.loc 1 252 0
 268              		.cfi_startproc
 269              		@ args = 0, pretend = 0, frame = 0
 270              		@ frame_needed = 0, uses_anonymous_args = 0
 271              		@ link register save eliminated.
 253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Enable low power regulator */
 254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   PWR->CR1 |= PWR_CR1_LPUDS;
 272              		.loc 1 254 0
 273 0000 024A     		ldr	r2, .L32
 274 0002 1368     		ldr	r3, [r2]
 275 0004 43F48063 		orr	r3, r3, #1024
 276 0008 1360     		str	r3, [r2]
 255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** }
 277              		.loc 1 255 0
 278 000a 7047     		bx	lr
 279              	.L33:
 280              		.align	2
 281              	.L32:
 282 000c 00700040 		.word	1073770496
 283              		.cfi_endproc
 284              	.LFE144:
 286              		.section	.text.HAL_PWREx_DisableLowRegulatorLowVoltage,"ax",%progbits
 287              		.align	1
 288              		.global	HAL_PWREx_DisableLowRegulatorLowVoltage
 289              		.syntax unified
 290              		.thumb
 291              		.thumb_func
 292              		.fpu fpv5-d16
 294              	HAL_PWREx_DisableLowRegulatorLowVoltage:
 295              	.LFB145:
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /**
 258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @brief Disables Low Power Regulator low voltage mode.
 259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @retval None
 260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */
 261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** void HAL_PWREx_DisableLowRegulatorLowVoltage(void)
 262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** {
 296              		.loc 1 262 0
 297              		.cfi_startproc
 298              		@ args = 0, pretend = 0, frame = 0
 299              		@ frame_needed = 0, uses_anonymous_args = 0
 300              		@ link register save eliminated.
 263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Disable low power regulator */
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   PWR->CR1 &= (uint32_t)~((uint32_t)PWR_CR1_LPUDS);
 301              		.loc 1 264 0
 302 0000 024A     		ldr	r2, .L35
 303 0002 1368     		ldr	r3, [r2]
 304 0004 23F48063 		bic	r3, r3, #1024
 305 0008 1360     		str	r3, [r2]
 265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** }
 306              		.loc 1 265 0
 307 000a 7047     		bx	lr
 308              	.L36:
 309              		.align	2
 310              	.L35:
 311 000c 00700040 		.word	1073770496
 312              		.cfi_endproc
 313              	.LFE145:
 315              		.section	.text.HAL_PWREx_EnableOverDrive,"ax",%progbits
 316              		.align	1
 317              		.global	HAL_PWREx_EnableOverDrive
 318              		.syntax unified
 319              		.thumb
 320              		.thumb_func
 321              		.fpu fpv5-d16
 323              	HAL_PWREx_EnableOverDrive:
 324              	.LFB146:
 266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /**
 268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @brief  Activates the Over-Drive mode.
 269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @note   This mode allows the CPU and the core logic to operate at a higher frequency
 270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *         than the normal mode for a given voltage scaling (scale 1, scale 2 or scale 3).   
 271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @note   It is recommended to enter or exit Over-drive mode when the application is not running 
 272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *         critical tasks and when the system clock source is either HSI or HSE. 
 273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *         During the Over-drive switch activation, no peripheral clocks should be enabled.   
 274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *         The peripheral clocks must be enabled once the Over-drive mode is activated.   
 275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @retval HAL status
 276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */
 277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** HAL_StatusTypeDef HAL_PWREx_EnableOverDrive(void)
 278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** {
 325              		.loc 1 278 0
 326              		.cfi_startproc
 327              		@ args = 0, pretend = 0, frame = 8
 328              		@ frame_needed = 0, uses_anonymous_args = 0
 329 0000 10B5     		push	{r4, lr}
 330              		.cfi_def_cfa_offset 8
 331              		.cfi_offset 4, -8
 332              		.cfi_offset 14, -4
 333 0002 82B0     		sub	sp, sp, #8
 334              		.cfi_def_cfa_offset 16
 335              	.LVL10:
 336              	.LBB7:
 279:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   uint32_t tickstart = 0;
 280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   __HAL_RCC_PWR_CLK_ENABLE();
 337              		.loc 1 281 0
 338 0004 1B4B     		ldr	r3, .L48
 339 0006 1A6C     		ldr	r2, [r3, #64]
 340 0008 42F08052 		orr	r2, r2, #268435456
 341 000c 1A64     		str	r2, [r3, #64]
 342 000e 1B6C     		ldr	r3, [r3, #64]
 343 0010 03F08053 		and	r3, r3, #268435456
 344 0014 0193     		str	r3, [sp, #4]
 345 0016 019B     		ldr	r3, [sp, #4]
 346              	.LBE7:
 282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   
 283:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Enable the Over-drive to extend the clock frequency to 216 MHz */
 284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   __HAL_PWR_OVERDRIVE_ENABLE();
 347              		.loc 1 284 0
 348 0018 174A     		ldr	r2, .L48+4
 349 001a 1368     		ldr	r3, [r2]
 350 001c 43F48033 		orr	r3, r3, #65536
 351 0020 1360     		str	r3, [r2]
 285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Get tick */
 287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   tickstart = HAL_GetTick();
 352              		.loc 1 287 0
 353 0022 FFF7FEFF 		bl	HAL_GetTick
 354              	.LVL11:
 355 0026 0446     		mov	r4, r0
 356              	.LVL12:
 357              	.L38:
 288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   while(!__HAL_PWR_GET_FLAG(PWR_FLAG_ODRDY))
 358              		.loc 1 289 0
 359 0028 134B     		ldr	r3, .L48+4
 360 002a 5B68     		ldr	r3, [r3, #4]
 361 002c 13F4803F 		tst	r3, #65536
 362 0030 08D1     		bne	.L46
 290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   {
 291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     if((HAL_GetTick() - tickstart ) > PWR_OVERDRIVE_TIMEOUT_VALUE)
 363              		.loc 1 291 0
 364 0032 FFF7FEFF 		bl	HAL_GetTick
 365              	.LVL13:
 366 0036 001B     		subs	r0, r0, r4
 367 0038 B0F57A7F 		cmp	r0, #1000
 368 003c F4D9     		bls	.L38
 292:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     {
 293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       return HAL_TIMEOUT;
 369              		.loc 1 293 0
 370 003e 0320     		movs	r0, #3
 371              	.L39:
 294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     }
 295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   }
 296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   
 297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Enable the Over-drive switch */
 298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   __HAL_PWR_OVERDRIVESWITCHING_ENABLE();
 299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Get tick */
 301:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   tickstart = HAL_GetTick();
 302:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   while(!__HAL_PWR_GET_FLAG(PWR_FLAG_ODSWRDY))
 304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   {
 305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     if((HAL_GetTick() - tickstart ) > PWR_OVERDRIVE_TIMEOUT_VALUE)
 306:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     {
 307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       return HAL_TIMEOUT;
 308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     }
 309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   } 
 310:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   return HAL_OK;
 311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** }
 372              		.loc 1 311 0
 373 0040 02B0     		add	sp, sp, #8
 374              		.cfi_remember_state
 375              		.cfi_def_cfa_offset 8
 376              		@ sp needed
 377 0042 10BD     		pop	{r4, pc}
 378              	.LVL14:
 379              	.L46:
 380              		.cfi_restore_state
 298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 381              		.loc 1 298 0
 382 0044 0C4A     		ldr	r2, .L48+4
 383 0046 1368     		ldr	r3, [r2]
 384 0048 43F40033 		orr	r3, r3, #131072
 385 004c 1360     		str	r3, [r2]
 301:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 386              		.loc 1 301 0
 387 004e FFF7FEFF 		bl	HAL_GetTick
 388              	.LVL15:
 389 0052 0446     		mov	r4, r0
 390              	.LVL16:
 391              	.L41:
 303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   {
 392              		.loc 1 303 0
 393 0054 084B     		ldr	r3, .L48+4
 394 0056 5B68     		ldr	r3, [r3, #4]
 395 0058 13F4003F 		tst	r3, #131072
 396 005c 07D1     		bne	.L47
 305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     {
 397              		.loc 1 305 0
 398 005e FFF7FEFF 		bl	HAL_GetTick
 399              	.LVL17:
 400 0062 001B     		subs	r0, r0, r4
 401 0064 B0F57A7F 		cmp	r0, #1000
 402 0068 F4D9     		bls	.L41
 307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     }
 403              		.loc 1 307 0
 404 006a 0320     		movs	r0, #3
 405 006c E8E7     		b	.L39
 406              	.L47:
 310:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** }
 407              		.loc 1 310 0
 408 006e 0020     		movs	r0, #0
 409 0070 E6E7     		b	.L39
 410              	.L49:
 411 0072 00BF     		.align	2
 412              	.L48:
 413 0074 00380240 		.word	1073887232
 414 0078 00700040 		.word	1073770496
 415              		.cfi_endproc
 416              	.LFE146:
 418              		.section	.text.HAL_PWREx_DisableOverDrive,"ax",%progbits
 419              		.align	1
 420              		.global	HAL_PWREx_DisableOverDrive
 421              		.syntax unified
 422              		.thumb
 423              		.thumb_func
 424              		.fpu fpv5-d16
 426              	HAL_PWREx_DisableOverDrive:
 427              	.LFB147:
 312:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /**
 314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @brief  Deactivates the Over-Drive mode.
 315:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @note   This mode allows the CPU and the core logic to operate at a higher frequency
 316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *         than the normal mode for a given voltage scaling (scale 1, scale 2 or scale 3).    
 317:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @note   It is recommended to enter or exit Over-drive mode when the application is not running 
 318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *         critical tasks and when the system clock source is either HSI or HSE. 
 319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *         During the Over-drive switch activation, no peripheral clocks should be enabled.   
 320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *         The peripheral clocks must be enabled once the Over-drive mode is activated.
 321:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @retval HAL status
 322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */
 323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** HAL_StatusTypeDef HAL_PWREx_DisableOverDrive(void)
 324:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** {
 428              		.loc 1 324 0
 429              		.cfi_startproc
 430              		@ args = 0, pretend = 0, frame = 8
 431              		@ frame_needed = 0, uses_anonymous_args = 0
 432 0000 10B5     		push	{r4, lr}
 433              		.cfi_def_cfa_offset 8
 434              		.cfi_offset 4, -8
 435              		.cfi_offset 14, -4
 436 0002 82B0     		sub	sp, sp, #8
 437              		.cfi_def_cfa_offset 16
 438              	.LVL18:
 439              	.LBB8:
 325:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   uint32_t tickstart = 0;
 326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   
 327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   __HAL_RCC_PWR_CLK_ENABLE();
 440              		.loc 1 327 0
 441 0004 1B4B     		ldr	r3, .L61
 442 0006 1A6C     		ldr	r2, [r3, #64]
 443 0008 42F08052 		orr	r2, r2, #268435456
 444 000c 1A64     		str	r2, [r3, #64]
 445 000e 1B6C     		ldr	r3, [r3, #64]
 446 0010 03F08053 		and	r3, r3, #268435456
 447 0014 0193     		str	r3, [sp, #4]
 448 0016 019B     		ldr	r3, [sp, #4]
 449              	.LBE8:
 328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     
 329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Disable the Over-drive switch */
 330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   __HAL_PWR_OVERDRIVESWITCHING_DISABLE();
 450              		.loc 1 330 0
 451 0018 174A     		ldr	r2, .L61+4
 452 001a 1368     		ldr	r3, [r2]
 453 001c 23F40033 		bic	r3, r3, #131072
 454 0020 1360     		str	r3, [r2]
 331:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   
 332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Get tick */
 333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   tickstart = HAL_GetTick();
 455              		.loc 1 333 0
 456 0022 FFF7FEFF 		bl	HAL_GetTick
 457              	.LVL19:
 458 0026 0446     		mov	r4, r0
 459              	.LVL20:
 460              	.L51:
 334:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****  
 335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   while(__HAL_PWR_GET_FLAG(PWR_FLAG_ODSWRDY))
 461              		.loc 1 335 0
 462 0028 134B     		ldr	r3, .L61+4
 463 002a 5B68     		ldr	r3, [r3, #4]
 464 002c 13F4003F 		tst	r3, #131072
 465 0030 08D0     		beq	.L59
 336:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   {
 337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     if((HAL_GetTick() - tickstart ) > PWR_OVERDRIVE_TIMEOUT_VALUE)
 466              		.loc 1 337 0
 467 0032 FFF7FEFF 		bl	HAL_GetTick
 468              	.LVL21:
 469 0036 001B     		subs	r0, r0, r4
 470 0038 B0F57A7F 		cmp	r0, #1000
 471 003c F4D9     		bls	.L51
 338:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     {
 339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       return HAL_TIMEOUT;
 472              		.loc 1 339 0
 473 003e 0320     		movs	r0, #3
 474              	.L52:
 340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     }
 341:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   } 
 342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   
 343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Disable the Over-drive */
 344:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   __HAL_PWR_OVERDRIVE_DISABLE();
 345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Get tick */
 347:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   tickstart = HAL_GetTick();
 348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   while(__HAL_PWR_GET_FLAG(PWR_FLAG_ODRDY))
 350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   {
 351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     if((HAL_GetTick() - tickstart ) > PWR_OVERDRIVE_TIMEOUT_VALUE)
 352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     {
 353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       return HAL_TIMEOUT;
 354:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     }
 355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   }
 356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   
 357:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   return HAL_OK;
 358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** }
 475              		.loc 1 358 0
 476 0040 02B0     		add	sp, sp, #8
 477              		.cfi_remember_state
 478              		.cfi_def_cfa_offset 8
 479              		@ sp needed
 480 0042 10BD     		pop	{r4, pc}
 481              	.LVL22:
 482              	.L59:
 483              		.cfi_restore_state
 344:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 484              		.loc 1 344 0
 485 0044 0C4A     		ldr	r2, .L61+4
 486 0046 1368     		ldr	r3, [r2]
 487 0048 23F48033 		bic	r3, r3, #65536
 488 004c 1360     		str	r3, [r2]
 347:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 489              		.loc 1 347 0
 490 004e FFF7FEFF 		bl	HAL_GetTick
 491              	.LVL23:
 492 0052 0446     		mov	r4, r0
 493              	.LVL24:
 494              	.L54:
 349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   {
 495              		.loc 1 349 0
 496 0054 084B     		ldr	r3, .L61+4
 497 0056 5B68     		ldr	r3, [r3, #4]
 498 0058 13F4803F 		tst	r3, #65536
 499 005c 07D0     		beq	.L60
 351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     {
 500              		.loc 1 351 0
 501 005e FFF7FEFF 		bl	HAL_GetTick
 502              	.LVL25:
 503 0062 001B     		subs	r0, r0, r4
 504 0064 B0F57A7F 		cmp	r0, #1000
 505 0068 F4D9     		bls	.L54
 353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     }
 506              		.loc 1 353 0
 507 006a 0320     		movs	r0, #3
 508 006c E8E7     		b	.L52
 509              	.L60:
 357:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** }
 510              		.loc 1 357 0
 511 006e 0020     		movs	r0, #0
 512 0070 E6E7     		b	.L52
 513              	.L62:
 514 0072 00BF     		.align	2
 515              	.L61:
 516 0074 00380240 		.word	1073887232
 517 0078 00700040 		.word	1073770496
 518              		.cfi_endproc
 519              	.LFE147:
 521              		.section	.text.HAL_PWREx_EnterUnderDriveSTOPMode,"ax",%progbits
 522              		.align	1
 523              		.global	HAL_PWREx_EnterUnderDriveSTOPMode
 524              		.syntax unified
 525              		.thumb
 526              		.thumb_func
 527              		.fpu fpv5-d16
 529              	HAL_PWREx_EnterUnderDriveSTOPMode:
 530              	.LFB148:
 359:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 360:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /**
 361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @brief  Enters in Under-Drive STOP mode.
 362:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * 
 363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @note    This mode can be selected only when the Under-Drive is already active 
 364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *   
 365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @note    This mode is enabled only with STOP low power mode.
 366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *          In this mode, the 1.2V domain is preserved in reduced leakage mode. This 
 367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *          mode is only available when the main regulator or the low power regulator 
 368:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *          is in low voltage mode
 369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *        
 370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @note   If the Under-drive mode was enabled, it is automatically disabled after 
 371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *         exiting Stop mode. 
 372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *         When the voltage regulator operates in Under-drive mode, an additional  
 373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *         startup delay is induced when waking up from Stop mode.
 374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *                    
 375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @note   In Stop mode, all I/O pins keep the same state as in Run mode.
 376:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *   
 377:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @note   When exiting Stop mode by issuing an interrupt or a wakeup event, 
 378:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *         the HSI RC oscillator is selected as system clock.
 379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *           
 380:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @note   When the voltage regulator operates in low power mode, an additional 
 381:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *         startup delay is incurred when waking up from Stop mode. 
 382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *         By keeping the internal regulator ON during Stop mode, the consumption 
 383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *         is higher although the startup time is reduced.
 384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *     
 385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @param  Regulator: specifies the regulator state in STOP mode.
 386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *          This parameter can be one of the following values:
 387:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *            @arg PWR_MAINREGULATOR_UNDERDRIVE_ON:  Main Regulator in under-drive mode 
 388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *                 and Flash memory in power-down when the device is in Stop under-drive mode
 389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *            @arg PWR_LOWPOWERREGULATOR_UNDERDRIVE_ON:  Low Power Regulator in under-drive mode 
 390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *                and Flash memory in power-down when the device is in Stop under-drive mode
 391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @param  STOPEntry: specifies if STOP mode in entered with WFI or WFE instruction.
 392:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *          This parameter can be one of the following values:
 393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *            @arg PWR_SLEEPENTRY_WFI: enter STOP mode with WFI instruction
 394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *            @arg PWR_SLEEPENTRY_WFE: enter STOP mode with WFE instruction
 395:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @retval None
 396:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */
 397:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** HAL_StatusTypeDef HAL_PWREx_EnterUnderDriveSTOPMode(uint32_t Regulator, uint8_t STOPEntry)
 398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** {
 531              		.loc 1 398 0
 532              		.cfi_startproc
 533              		@ args = 0, pretend = 0, frame = 8
 534              		@ frame_needed = 0, uses_anonymous_args = 0
 535              	.LVL26:
 536 0000 70B5     		push	{r4, r5, r6, lr}
 537              		.cfi_def_cfa_offset 16
 538              		.cfi_offset 4, -16
 539              		.cfi_offset 5, -12
 540              		.cfi_offset 6, -8
 541              		.cfi_offset 14, -4
 542 0002 82B0     		sub	sp, sp, #8
 543              		.cfi_def_cfa_offset 24
 544 0004 0646     		mov	r6, r0
 545 0006 0D46     		mov	r5, r1
 546              	.LVL27:
 547              	.LBB9:
 399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   uint32_t tempreg = 0;
 400:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   uint32_t tickstart = 0;
 401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   
 402:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Check the parameters */
 403:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   assert_param(IS_PWR_REGULATOR_UNDERDRIVE(Regulator));
 404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   assert_param(IS_PWR_STOP_ENTRY(STOPEntry));
 405:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   
 406:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Enable Power ctrl clock */
 407:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   __HAL_RCC_PWR_CLK_ENABLE();
 548              		.loc 1 407 0
 549 0008 1E4B     		ldr	r3, .L73
 550 000a 1A6C     		ldr	r2, [r3, #64]
 551 000c 42F08052 		orr	r2, r2, #268435456
 552 0010 1A64     		str	r2, [r3, #64]
 553 0012 1B6C     		ldr	r3, [r3, #64]
 554 0014 03F08053 		and	r3, r3, #268435456
 555 0018 0193     		str	r3, [sp, #4]
 556 001a 019B     		ldr	r3, [sp, #4]
 557              	.LBE9:
 408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Enable the Under-drive Mode ---------------------------------------------*/
 409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Clear Under-drive flag */
 410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   __HAL_PWR_CLEAR_ODRUDR_FLAG();
 558              		.loc 1 410 0
 559 001c 1A4B     		ldr	r3, .L73+4
 560 001e 5A68     		ldr	r2, [r3, #4]
 561 0020 42F44022 		orr	r2, r2, #786432
 562 0024 5A60     		str	r2, [r3, #4]
 411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   
 412:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Enable the Under-drive */ 
 413:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   __HAL_PWR_UNDERDRIVE_ENABLE();
 563              		.loc 1 413 0
 564 0026 1A68     		ldr	r2, [r3]
 565 0028 42F44022 		orr	r2, r2, #786432
 566 002c 1A60     		str	r2, [r3]
 414:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Get tick */
 416:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   tickstart = HAL_GetTick();
 567              		.loc 1 416 0
 568 002e FFF7FEFF 		bl	HAL_GetTick
 569              	.LVL28:
 570 0032 0446     		mov	r4, r0
 571              	.LVL29:
 572              	.L64:
 417:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Wait for UnderDrive mode is ready */
 419:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   while(__HAL_PWR_GET_FLAG(PWR_FLAG_UDRDY))
 573              		.loc 1 419 0
 574 0034 144B     		ldr	r3, .L73+4
 575 0036 5B68     		ldr	r3, [r3, #4]
 576 0038 03F44023 		and	r3, r3, #786432
 577 003c B3F5402F 		cmp	r3, #786432
 578 0040 07D1     		bne	.L71
 420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   {
 421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     if((HAL_GetTick() - tickstart ) > PWR_UDERDRIVE_TIMEOUT_VALUE)
 579              		.loc 1 421 0
 580 0042 FFF7FEFF 		bl	HAL_GetTick
 581              	.LVL30:
 582 0046 001B     		subs	r0, r0, r4
 583 0048 B0F57A7F 		cmp	r0, #1000
 584 004c F2D9     		bls	.L64
 422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     {
 423:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       return HAL_TIMEOUT;
 585              		.loc 1 423 0
 586 004e 0320     		movs	r0, #3
 587 0050 13E0     		b	.L65
 588              	.L71:
 424:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     }
 425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   }
 426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   
 427:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Select the regulator state in STOP mode ---------------------------------*/
 428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   tempreg = PWR->CR1;
 589              		.loc 1 428 0
 590 0052 0D4A     		ldr	r2, .L73+4
 591 0054 1168     		ldr	r1, [r2]
 592              	.LVL31:
 429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Clear PDDS, LPDS, MRLUDS and LPLUDS bits */
 430:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   tempreg &= (uint32_t)~(PWR_CR1_PDDS | PWR_CR1_LPDS | PWR_CR1_LPUDS | PWR_CR1_MRUDS);
 593              		.loc 1 430 0
 594 0056 0D4B     		ldr	r3, .L73+8
 595 0058 0B40     		ands	r3, r3, r1
 596              	.LVL32:
 431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   
 432:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Set LPDS, MRLUDS and LPLUDS bits according to PWR_Regulator value */
 433:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   tempreg |= Regulator;
 597              		.loc 1 433 0
 598 005a 1E43     		orrs	r6, r6, r3
 599              	.LVL33:
 434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   
 435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Store the new value */
 436:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   PWR->CR1 = tempreg;
 600              		.loc 1 436 0
 601 005c 1660     		str	r6, [r2]
 437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   
 438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Set SLEEPDEEP bit of Cortex System Control Register */
 439:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   SCB->SCR |= SCB_SCR_SLEEPDEEP_Msk;
 602              		.loc 1 439 0
 603 005e 0C4A     		ldr	r2, .L73+12
 604 0060 1369     		ldr	r3, [r2, #16]
 605 0062 43F00403 		orr	r3, r3, #4
 606 0066 1361     		str	r3, [r2, #16]
 440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   
 441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Select STOP mode entry --------------------------------------------------*/
 442:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   if(STOPEntry == PWR_SLEEPENTRY_WFI)
 607              		.loc 1 442 0
 608 0068 012D     		cmp	r5, #1
 609 006a 08D0     		beq	.L72
 610              	.LBB10:
 611              	.LBB11:
 612              		.file 2 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h"
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
 613              		.loc 2 396 0
 614              		.syntax unified
 615              	@ 396 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 616 006c 20BF     		wfe
 617              	@ 0 "" 2
 618              		.thumb
 619              		.syntax unified
 620              	.L68:
 621              	.LBE11:
 622              	.LBE10:
 443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   {   
 444:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     /* Request Wait For Interrupt */
 445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     __WFI();
 446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   }
 447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   else
 448:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   {
 449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     /* Request Wait For Event */
 450:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     __WFE();
 451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   }
 452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Reset SLEEPDEEP bit of Cortex System Control Register */
 453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   SCB->SCR &= (uint32_t)~((uint32_t)SCB_SCR_SLEEPDEEP_Msk);
 623              		.loc 1 453 0
 624 006e 084A     		ldr	r2, .L73+12
 625 0070 1369     		ldr	r3, [r2, #16]
 626 0072 23F00403 		bic	r3, r3, #4
 627 0076 1361     		str	r3, [r2, #16]
 454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   return HAL_OK;  
 628              		.loc 1 455 0
 629 0078 0020     		movs	r0, #0
 630              	.LVL34:
 631              	.L65:
 456:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** }
 632              		.loc 1 456 0
 633 007a 02B0     		add	sp, sp, #8
 634              		.cfi_remember_state
 635              		.cfi_def_cfa_offset 16
 636              		@ sp needed
 637 007c 70BD     		pop	{r4, r5, r6, pc}
 638              	.LVL35:
 639              	.L72:
 640              		.cfi_restore_state
 641              	.LBB12:
 642              	.LBB13:
 385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h **** }
 643              		.loc 2 385 0
 644              		.syntax unified
 645              	@ 385 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 646 007e 30BF     		wfi
 647              	@ 0 "" 2
 648              		.thumb
 649              		.syntax unified
 650 0080 F5E7     		b	.L68
 651              	.L74:
 652 0082 00BF     		.align	2
 653              	.L73:
 654 0084 00380240 		.word	1073887232
 655 0088 00700040 		.word	1073770496
 656 008c FCF3FFFF 		.word	-3076
 657 0090 00ED00E0 		.word	-536810240
 658              	.LBE13:
 659              	.LBE12:
 660              		.cfi_endproc
 661              	.LFE148:
 663              		.section	.text.HAL_PWREx_GetVoltageRange,"ax",%progbits
 664              		.align	1
 665              		.global	HAL_PWREx_GetVoltageRange
 666              		.syntax unified
 667              		.thumb
 668              		.thumb_func
 669              		.fpu fpv5-d16
 671              	HAL_PWREx_GetVoltageRange:
 672              	.LFB149:
 457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 458:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /**
 459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @brief Returns Voltage Scaling Range.
 460:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @retval VOS bit field (PWR_REGULATOR_VOLTAGE_SCALE1, PWR_REGULATOR_VOLTAGE_SCALE2 or 
 461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *            PWR_REGULATOR_VOLTAGE_SCALE3)PWR_REGULATOR_VOLTAGE_SCALE1
 462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */  
 463:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** uint32_t HAL_PWREx_GetVoltageRange(void)
 464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** {
 673              		.loc 1 464 0
 674              		.cfi_startproc
 675              		@ args = 0, pretend = 0, frame = 0
 676              		@ frame_needed = 0, uses_anonymous_args = 0
 677              		@ link register save eliminated.
 465:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   return  (PWR->CR1 & PWR_CR1_VOS);
 678              		.loc 1 465 0
 679 0000 024B     		ldr	r3, .L76
 680 0002 1868     		ldr	r0, [r3]
 466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** }
 681              		.loc 1 466 0
 682 0004 00F44040 		and	r0, r0, #49152
 683 0008 7047     		bx	lr
 684              	.L77:
 685 000a 00BF     		.align	2
 686              	.L76:
 687 000c 00700040 		.word	1073770496
 688              		.cfi_endproc
 689              	.LFE149:
 691              		.section	.text.HAL_PWREx_ControlVoltageScaling,"ax",%progbits
 692              		.align	1
 693              		.global	HAL_PWREx_ControlVoltageScaling
 694              		.syntax unified
 695              		.thumb
 696              		.thumb_func
 697              		.fpu fpv5-d16
 699              	HAL_PWREx_ControlVoltageScaling:
 700              	.LFB150:
 467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 468:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** /**
 469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @brief Configures the main internal regulator output voltage.
 470:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @param  VoltageScaling: specifies the regulator output voltage to achieve
 471:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *         a tradeoff between performance and power consumption.
 472:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *          This parameter can be one of the following values:
 473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *            @arg PWR_REGULATOR_VOLTAGE_SCALE1: Regulator voltage output range 1 mode,
 474:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *                                                typical output voltage at 1.4 V,  
 475:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *                                                system frequency up to 216 MHz.
 476:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *            @arg PWR_REGULATOR_VOLTAGE_SCALE2: Regulator voltage output range 2 mode,
 477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *                                                typical output voltage at 1.2 V,                
 478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *                                                system frequency up to 180 MHz.
 479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *            @arg PWR_REGULATOR_VOLTAGE_SCALE3: Regulator voltage output range 2 mode,
 480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *                                                typical output voltage at 1.00 V,               
 481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *                                                system frequency up to 151 MHz.
 482:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @note To update the system clock frequency(SYSCLK):
 483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *        - Set the HSI or HSE as system clock frequency using the HAL_RCC_ClockConfig().
 484:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *        - Call the HAL_RCC_OscConfig() to configure the PLL.
 485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *        - Call HAL_PWREx_ConfigVoltageScaling() API to adjust the voltage scale.
 486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *        - Set the new system clock frequency using the HAL_RCC_ClockConfig().
 487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @note The scale can be modified only when the HSI or HSE clock source is selected 
 488:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *        as system clock source, otherwise the API returns HAL_ERROR.  
 489:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @note When the PLL is OFF, the voltage scale 3 is automatically selected and the VOS bits
 490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   *       value in the PWR_CR1 register are not taken in account.
 491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @note This API forces the PLL state ON to allow the possibility to configure the voltage scale 
 492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @note The new voltage scale is active only when the PLL is ON.  
 493:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   * @retval HAL Status
 494:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   */
 495:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** HAL_StatusTypeDef HAL_PWREx_ControlVoltageScaling(uint32_t VoltageScaling)
 496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** {
 701              		.loc 1 496 0
 702              		.cfi_startproc
 703              		@ args = 0, pretend = 0, frame = 8
 704              		@ frame_needed = 0, uses_anonymous_args = 0
 705              	.LVL36:
 706 0000 30B5     		push	{r4, r5, lr}
 707              		.cfi_def_cfa_offset 12
 708              		.cfi_offset 4, -12
 709              		.cfi_offset 5, -8
 710              		.cfi_offset 14, -4
 711 0002 83B0     		sub	sp, sp, #12
 712              		.cfi_def_cfa_offset 24
 713              	.LVL37:
 714              	.LBB14:
 497:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   uint32_t tickstart = 0;
 498:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 499:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   assert_param(IS_PWR_REGULATOR_VOLTAGE(VoltageScaling));
 500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Enable Power ctrl clock */
 502:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   __HAL_RCC_PWR_CLK_ENABLE();
 715              		.loc 1 502 0
 716 0004 2B4B     		ldr	r3, .L94
 717 0006 1A6C     		ldr	r2, [r3, #64]
 718 0008 42F08052 		orr	r2, r2, #268435456
 719 000c 1A64     		str	r2, [r3, #64]
 720 000e 1A6C     		ldr	r2, [r3, #64]
 721 0010 02F08052 		and	r2, r2, #268435456
 722 0014 0092     		str	r2, [sp]
 723 0016 009A     		ldr	r2, [sp]
 724              	.LBE14:
 503:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** 
 504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   /* Check if the PLL is used as system clock or not */
 505:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   if(__HAL_RCC_GET_SYSCLK_SOURCE() != RCC_CFGR_SWS_PLL)
 725              		.loc 1 505 0
 726 0018 9B68     		ldr	r3, [r3, #8]
 727 001a 03F00C03 		and	r3, r3, #12
 728 001e 082B     		cmp	r3, #8
 729 0020 45D0     		beq	.L86
 730 0022 0546     		mov	r5, r0
 506:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   {
 507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     /* Disable the main PLL */
 508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     __HAL_RCC_PLL_DISABLE();
 731              		.loc 1 508 0
 732 0024 234A     		ldr	r2, .L94
 733 0026 1368     		ldr	r3, [r2]
 734 0028 23F08073 		bic	r3, r3, #16777216
 735 002c 1360     		str	r3, [r2]
 509:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     
 510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     /* Get Start Tick */
 511:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     tickstart = HAL_GetTick();    
 736              		.loc 1 511 0
 737 002e FFF7FEFF 		bl	HAL_GetTick
 738              	.LVL38:
 739 0032 0446     		mov	r4, r0
 740              	.LVL39:
 741              	.L80:
 512:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     /* Wait till PLL is disabled */  
 513:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) != RESET)
 742              		.loc 1 513 0
 743 0034 1F4B     		ldr	r3, .L94
 744 0036 1B68     		ldr	r3, [r3]
 745 0038 13F0007F 		tst	r3, #33554432
 746 003c 06D0     		beq	.L91
 514:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     {
 515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 747              		.loc 1 515 0
 748 003e FFF7FEFF 		bl	HAL_GetTick
 749              	.LVL40:
 750 0042 001B     		subs	r0, r0, r4
 751 0044 0228     		cmp	r0, #2
 752 0046 F5D9     		bls	.L80
 516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       {
 517:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****         return HAL_TIMEOUT;
 753              		.loc 1 517 0
 754 0048 0320     		movs	r0, #3
 755 004a 31E0     		b	.L79
 756              	.L91:
 757              	.LBB15:
 518:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       }
 519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     }
 520:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     
 521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     /* Set Range */
 522:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     __HAL_PWR_VOLTAGESCALING_CONFIG(VoltageScaling);
 758              		.loc 1 522 0
 759 004c 1A4B     		ldr	r3, .L94+4
 760 004e 1868     		ldr	r0, [r3]
 761 0050 20F44040 		bic	r0, r0, #49152
 762 0054 0543     		orrs	r5, r5, r0
 763              	.LVL41:
 764 0056 1D60     		str	r5, [r3]
 765 0058 1B68     		ldr	r3, [r3]
 766 005a 03F44043 		and	r3, r3, #49152
 767 005e 0193     		str	r3, [sp, #4]
 768 0060 019B     		ldr	r3, [sp, #4]
 769              	.LBE15:
 523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     
 524:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     /* Enable the main PLL */
 525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     __HAL_RCC_PLL_ENABLE();
 770              		.loc 1 525 0
 771 0062 144A     		ldr	r2, .L94
 772 0064 1368     		ldr	r3, [r2]
 773 0066 43F08073 		orr	r3, r3, #16777216
 774 006a 1360     		str	r3, [r2]
 526:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     
 527:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     /* Get Start Tick */
 528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     tickstart = HAL_GetTick();
 775              		.loc 1 528 0
 776 006c FFF7FEFF 		bl	HAL_GetTick
 777              	.LVL42:
 778 0070 0446     		mov	r4, r0
 779              	.LVL43:
 780              	.L82:
 529:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     /* Wait till PLL is ready */  
 530:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     while(__HAL_RCC_GET_FLAG(RCC_FLAG_PLLRDY) == RESET)
 781              		.loc 1 530 0
 782 0072 104B     		ldr	r3, .L94
 783 0074 1B68     		ldr	r3, [r3]
 784 0076 13F0007F 		tst	r3, #33554432
 785 007a 06D1     		bne	.L92
 531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     {
 532:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       if((HAL_GetTick() - tickstart ) > PLL_TIMEOUT_VALUE)
 786              		.loc 1 532 0
 787 007c FFF7FEFF 		bl	HAL_GetTick
 788              	.LVL44:
 789 0080 001B     		subs	r0, r0, r4
 790 0082 0228     		cmp	r0, #2
 791 0084 F5D9     		bls	.L82
 533:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       {
 534:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****         return HAL_TIMEOUT;
 792              		.loc 1 534 0
 793 0086 0320     		movs	r0, #3
 794 0088 12E0     		b	.L79
 795              	.L92:
 535:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       } 
 536:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     }
 537:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     
 538:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     /* Get Start Tick */
 539:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     tickstart = HAL_GetTick();
 796              		.loc 1 539 0
 797 008a FFF7FEFF 		bl	HAL_GetTick
 798              	.LVL45:
 799 008e 0446     		mov	r4, r0
 800              	.LVL46:
 801              	.L84:
 540:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     while((__HAL_PWR_GET_FLAG(PWR_FLAG_VOSRDY) == RESET))
 802              		.loc 1 540 0
 803 0090 094B     		ldr	r3, .L94+4
 804 0092 5B68     		ldr	r3, [r3, #4]
 805 0094 13F4804F 		tst	r3, #16384
 806 0098 07D1     		bne	.L93
 541:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     {
 542:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       if((HAL_GetTick() - tickstart ) > PWR_VOSRDY_TIMEOUT_VALUE)
 807              		.loc 1 542 0
 808 009a FFF7FEFF 		bl	HAL_GetTick
 809              	.LVL47:
 810 009e 001B     		subs	r0, r0, r4
 811 00a0 B0F57A7F 		cmp	r0, #1000
 812 00a4 F4D9     		bls	.L84
 543:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       {
 544:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****         return HAL_TIMEOUT;
 813              		.loc 1 544 0
 814 00a6 0320     		movs	r0, #3
 815 00a8 02E0     		b	.L79
 816              	.L93:
 545:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****       } 
 546:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     }
 547:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   }
 548:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   else
 549:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   {
 550:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****     return HAL_ERROR;
 551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   }
 552:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   return HAL_OK;
 817              		.loc 1 552 0
 818 00aa 0020     		movs	r0, #0
 819 00ac 00E0     		b	.L79
 820              	.LVL48:
 821              	.L86:
 550:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c ****   }
 822              		.loc 1 550 0
 823 00ae 0120     		movs	r0, #1
 824              	.LVL49:
 825              	.L79:
 553:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_pwr_ex.c **** }
 826              		.loc 1 553 0
 827 00b0 03B0     		add	sp, sp, #12
 828              		.cfi_def_cfa_offset 12
 829              		@ sp needed
 830 00b2 30BD     		pop	{r4, r5, pc}
 831              	.L95:
 832              		.align	2
 833              	.L94:
 834 00b4 00380240 		.word	1073887232
 835 00b8 00700040 		.word	1073770496
 836              		.cfi_endproc
 837              	.LFE150:
 839              		.text
 840              	.Letext0:
 841              		.file 3 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 842              		.file 4 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 843              		.file 5 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h"
 844              		.file 6 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/system_stm
 845              		.file 7 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f769x
 846              		.file 8 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 847              		.file 9 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 848              		.file 10 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 849              		.file 11 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 850              		.file 12 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f7xx
 851              		.file 13 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_def.
 852              		.file 14 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal.h"
DEFINED SYMBOLS
                            *ABS*:0000000000000000 stm32f7xx_hal_pwr_ex.c
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:17     .text.HAL_PWREx_EnableBkUpReg:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:24     .text.HAL_PWREx_EnableBkUpReg:0000000000000000 HAL_PWREx_EnableBkUpReg
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:75     .text.HAL_PWREx_EnableBkUpReg:0000000000000038 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:80     .text.HAL_PWREx_DisableBkUpReg:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:87     .text.HAL_PWREx_DisableBkUpReg:0000000000000000 HAL_PWREx_DisableBkUpReg
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:137    .text.HAL_PWREx_DisableBkUpReg:0000000000000038 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:142    .text.HAL_PWREx_EnableFlashPowerDown:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:149    .text.HAL_PWREx_EnableFlashPowerDown:0000000000000000 HAL_PWREx_EnableFlashPowerDown
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:166    .text.HAL_PWREx_EnableFlashPowerDown:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:171    .text.HAL_PWREx_DisableFlashPowerDown:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:178    .text.HAL_PWREx_DisableFlashPowerDown:0000000000000000 HAL_PWREx_DisableFlashPowerDown
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:195    .text.HAL_PWREx_DisableFlashPowerDown:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:200    .text.HAL_PWREx_EnableMainRegulatorLowVoltage:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:207    .text.HAL_PWREx_EnableMainRegulatorLowVoltage:0000000000000000 HAL_PWREx_EnableMainRegulatorLowVoltage
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:224    .text.HAL_PWREx_EnableMainRegulatorLowVoltage:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:229    .text.HAL_PWREx_DisableMainRegulatorLowVoltage:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:236    .text.HAL_PWREx_DisableMainRegulatorLowVoltage:0000000000000000 HAL_PWREx_DisableMainRegulatorLowVoltage
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:253    .text.HAL_PWREx_DisableMainRegulatorLowVoltage:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:258    .text.HAL_PWREx_EnableLowRegulatorLowVoltage:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:265    .text.HAL_PWREx_EnableLowRegulatorLowVoltage:0000000000000000 HAL_PWREx_EnableLowRegulatorLowVoltage
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:282    .text.HAL_PWREx_EnableLowRegulatorLowVoltage:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:287    .text.HAL_PWREx_DisableLowRegulatorLowVoltage:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:294    .text.HAL_PWREx_DisableLowRegulatorLowVoltage:0000000000000000 HAL_PWREx_DisableLowRegulatorLowVoltage
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:311    .text.HAL_PWREx_DisableLowRegulatorLowVoltage:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:316    .text.HAL_PWREx_EnableOverDrive:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:323    .text.HAL_PWREx_EnableOverDrive:0000000000000000 HAL_PWREx_EnableOverDrive
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:413    .text.HAL_PWREx_EnableOverDrive:0000000000000074 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:419    .text.HAL_PWREx_DisableOverDrive:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:426    .text.HAL_PWREx_DisableOverDrive:0000000000000000 HAL_PWREx_DisableOverDrive
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:516    .text.HAL_PWREx_DisableOverDrive:0000000000000074 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:522    .text.HAL_PWREx_EnterUnderDriveSTOPMode:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:529    .text.HAL_PWREx_EnterUnderDriveSTOPMode:0000000000000000 HAL_PWREx_EnterUnderDriveSTOPMode
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:654    .text.HAL_PWREx_EnterUnderDriveSTOPMode:0000000000000084 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:664    .text.HAL_PWREx_GetVoltageRange:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:671    .text.HAL_PWREx_GetVoltageRange:0000000000000000 HAL_PWREx_GetVoltageRange
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:687    .text.HAL_PWREx_GetVoltageRange:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:692    .text.HAL_PWREx_ControlVoltageScaling:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:699    .text.HAL_PWREx_ControlVoltageScaling:0000000000000000 HAL_PWREx_ControlVoltageScaling
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccdTbOqF.s:834    .text.HAL_PWREx_ControlVoltageScaling:00000000000000b4 $d
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
HAL_GetTick

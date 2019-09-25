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
  12              		.file	"stm32f7xx_hal.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.HAL_MspInit,"ax",%progbits
  17              		.align	1
  18              		.weak	HAL_MspInit
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv5-d16
  24              	HAL_MspInit:
  25              	.LFB140:
  26              		.file 1 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c"
   1:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
   2:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   ******************************************************************************
   3:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @file    stm32f7xx_hal.c
   4:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @author  MCD Application Team
   5:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @version V1.2.2
   6:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @date    14-April-2017
   7:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief   HAL module driver.
   8:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *          This is the common part of the HAL initialization
   9:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *
  10:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   @verbatim
  11:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   ==============================================================================
  12:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****                      ##### How to use this driver #####
  13:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   ==============================================================================
  14:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****     [..]
  15:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****     The common HAL driver contains a set of generic and common APIs that can be
  16:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****     used by the PPP peripheral drivers and the user to start using the HAL. 
  17:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****     [..]
  18:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****     The HAL contains two APIs' categories: 
  19:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****          (+) Common HAL APIs
  20:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****          (+) Services HAL APIs
  21:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
  22:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   @endverbatim
  23:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   ******************************************************************************
  24:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @attention
  25:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *
  26:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * <h2><center>&copy; COPYRIGHT(c) 2017 STMicroelectronics</center></h2>
  27:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *
  28:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * Redistribution and use in source and binary forms, with or without modification,
  29:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * are permitted provided that the following conditions are met:
  30:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  31:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *      this list of conditions and the following disclaimer.
  32:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  33:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *      this list of conditions and the following disclaimer in the documentation
  34:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *      and/or other materials provided with the distribution.
  35:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  36:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *      may be used to endorse or promote products derived from this software
  37:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *      without specific prior written permission.
  38:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *
  39:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  40:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  41:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  42:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  43:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  44:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  45:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  46:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  47:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  48:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  49:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *
  50:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   ******************************************************************************
  51:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */ 
  52:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
  53:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /* Includes ------------------------------------------------------------------*/
  54:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** #include "stm32f7xx_hal.h"
  55:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
  56:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /** @addtogroup STM32F7xx_HAL_Driver
  57:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @{
  58:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
  59:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
  60:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /** @defgroup HAL HAL
  61:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief HAL module driver.
  62:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @{
  63:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
  64:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
  65:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /* Private typedef -----------------------------------------------------------*/
  66:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /* Private define ------------------------------------------------------------*/
  67:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /** @addtogroup HAL_Private_Constants
  68:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @{
  69:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
  70:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
  71:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****  * @brief STM32F7xx HAL Driver version number V1.2.2
  72:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****    */
  73:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** #define __STM32F7xx_HAL_VERSION_MAIN   (0x01) /*!< [31:24] main version */
  74:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** #define __STM32F7xx_HAL_VERSION_SUB1   (0x02) /*!< [23:16] sub1 version */
  75:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** #define __STM32F7xx_HAL_VERSION_SUB2   (0x02) /*!< [15:8]  sub2 version */
  76:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** #define __STM32F7xx_HAL_VERSION_RC     (0x00) /*!< [7:0]  release candidate */ 
  77:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** #define __STM32F7xx_HAL_VERSION         ((__STM32F7xx_HAL_VERSION_MAIN << 24)\
  78:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****                                         |(__STM32F7xx_HAL_VERSION_SUB1 << 16)\
  79:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****                                         |(__STM32F7xx_HAL_VERSION_SUB2 << 8 )\
  80:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****                                         |(__STM32F7xx_HAL_VERSION_RC))
  81:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****                                         
  82:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** #define IDCODE_DEVID_MASK    ((uint32_t)0x00000FFF)
  83:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
  84:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @}
  85:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
  86:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
  87:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /* Private macro -------------------------------------------------------------*/
  88:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /* Private variables ---------------------------------------------------------*/
  89:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /** @addtogroup HAL_Private_Variables
  90:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @{
  91:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
  92:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** __IO uint32_t uwTick;
  93:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
  94:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @}
  95:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
  96:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
  97:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /* Private function prototypes -----------------------------------------------*/
  98:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /* Private functions ---------------------------------------------------------*/
  99:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /** @defgroup HAL_Exported_Functions HAL Exported Functions
 101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @{
 102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /** @defgroup HAL_Exported_Functions_Group1 Initialization and de-initialization Functions 
 105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****  *  @brief    Initialization and de-initialization functions
 106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****  *
 107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** @verbatim    
 108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****  ===============================================================================
 109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****               ##### Initialization and de-initialization functions #####
 110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****  ===============================================================================
 111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****     [..]  This section provides functions allowing to:
 112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****       (+) Initializes the Flash interface the NVIC allocation and initial clock 
 113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****           configuration. It initializes the systick also when timeout is needed 
 114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****           and the backup domain when enabled.
 115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****       (+) de-Initializes common part of the HAL
 116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****       (+) Configure The time base source to have 1ms time base with a dedicated 
 117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****           Tick interrupt priority. 
 118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****         (++) Systick timer is used by default as source of time base, but user 
 119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****              can eventually implement his proper time base source (a general purpose 
 120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****              timer for example or other time source), keeping in mind that Time base 
 121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****              duration should be kept 1ms since PPP_TIMEOUT_VALUEs are defined and 
 122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****              handled in milliseconds basis.
 123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****         (++) Time base configuration function (HAL_InitTick ()) is called automatically 
 124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****              at the beginning of the program after reset by HAL_Init() or at any time 
 125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****              when clock is configured, by HAL_RCC_ClockConfig(). 
 126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****         (++) Source of time base is configured  to generate interrupts at regular 
 127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****              time intervals. Care must be taken if HAL_Delay() is called from a 
 128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****              peripheral ISR process, the Tick interrupt line must have higher priority 
 129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****             (numerically lower) than the peripheral interrupt. Otherwise the caller 
 130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****             ISR process will be blocked. 
 131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****        (++) functions affecting time base configurations are declared as __weak  
 132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****              to make  override possible  in case of other  implementations in user file.
 133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** @endverbatim
 134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @{
 135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief  This function is used to initialize the HAL Library; it must be the first 
 139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *         instruction to be executed in the main program (before to call any other
 140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *         HAL function), it performs the following:
 141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *           Configure the Flash prefetch, and instruction cache through ART accelerator.
 142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *           Configures the SysTick to generate an interrupt each 1 millisecond,
 143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *           which is clocked by the HSI (at this stage, the clock is not yet
 144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *           configured and thus the system is running from the internal HSI at 16 MHz).
 145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *           Set NVIC Group Priority to 4.
 146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *           Calls the HAL_MspInit() callback function defined in user file 
 147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *           "stm32f7xx_hal_msp.c" to do the global low level hardware initialization 
 148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *            
 149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @note   SysTick is used as time base for the HAL_Delay() function, the application
 150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *         need to ensure that the SysTick time base is always set to 1 millisecond
 151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *         to have correct HAL operation.
 152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval HAL status
 153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** HAL_StatusTypeDef HAL_Init(void)
 155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   /* Configure Flash prefetch and Instruction cache through ART accelerator */ 
 157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** #if (ART_ACCLERATOR_ENABLE != 0)
 158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****    __HAL_FLASH_ART_ENABLE();
 159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** #endif /* ART_ACCLERATOR_ENABLE */
 160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   /* Set Interrupt Group Priority */
 162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);
 163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   /* Use systick as time base source and configure 1ms tick (default clock after Reset is HSI) */
 165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   HAL_InitTick(TICK_INT_PRIORITY);
 166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   
 167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   /* Init the low level hardware */
 168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   HAL_MspInit();
 169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   
 170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   /* Return function status */
 171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   return HAL_OK;
 172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief  This function de-Initializes common part of the HAL and stops the systick.
 176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *         This function is optional.   
 177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval HAL status
 178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** HAL_StatusTypeDef HAL_DeInit(void)
 180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   /* Reset of all peripherals */
 182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   __HAL_RCC_APB1_FORCE_RESET();
 183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   __HAL_RCC_APB1_RELEASE_RESET();
 184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   __HAL_RCC_APB2_FORCE_RESET();
 186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   __HAL_RCC_APB2_RELEASE_RESET();
 187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   __HAL_RCC_AHB1_FORCE_RESET();
 189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   __HAL_RCC_AHB1_RELEASE_RESET();
 190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   __HAL_RCC_AHB2_FORCE_RESET();
 192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   __HAL_RCC_AHB2_RELEASE_RESET();
 193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   __HAL_RCC_AHB3_FORCE_RESET();
 195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   __HAL_RCC_AHB3_RELEASE_RESET();
 196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   /* De-Init the low level hardware */
 198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   HAL_MspDeInit();
 199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****     
 200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   /* Return function status */
 201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   return HAL_OK;
 202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief  Initializes the MSP.
 206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval None
 207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** __weak void HAL_MspInit(void)
 209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
  27              		.loc 1 209 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31              		@ link register save eliminated.
 210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
 211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****             the HAL_MspInit could be implemented in the user file
 212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****    */
 213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
  32              		.loc 1 213 0
  33 0000 7047     		bx	lr
  34              		.cfi_endproc
  35              	.LFE140:
  37              		.section	.text.HAL_MspDeInit,"ax",%progbits
  38              		.align	1
  39              		.weak	HAL_MspDeInit
  40              		.syntax unified
  41              		.thumb
  42              		.thumb_func
  43              		.fpu fpv5-d16
  45              	HAL_MspDeInit:
  46              	.LFB141:
 214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief  DeInitializes the MSP.
 217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval None
 218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** __weak void HAL_MspDeInit(void)
 220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
  47              		.loc 1 220 0
  48              		.cfi_startproc
  49              		@ args = 0, pretend = 0, frame = 0
  50              		@ frame_needed = 0, uses_anonymous_args = 0
  51              		@ link register save eliminated.
 221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
 222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****             the HAL_MspDeInit could be implemented in the user file
 223:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****    */ 
 224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
  52              		.loc 1 224 0
  53 0000 7047     		bx	lr
  54              		.cfi_endproc
  55              	.LFE141:
  57              		.section	.text.HAL_DeInit,"ax",%progbits
  58              		.align	1
  59              		.global	HAL_DeInit
  60              		.syntax unified
  61              		.thumb
  62              		.thumb_func
  63              		.fpu fpv5-d16
  65              	HAL_DeInit:
  66              	.LFB139:
 180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   /* Reset of all peripherals */
  67              		.loc 1 180 0
  68              		.cfi_startproc
  69              		@ args = 0, pretend = 0, frame = 0
  70              		@ frame_needed = 0, uses_anonymous_args = 0
  71 0000 10B5     		push	{r4, lr}
  72              		.cfi_def_cfa_offset 8
  73              		.cfi_offset 4, -8
  74              		.cfi_offset 14, -4
 182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   __HAL_RCC_APB1_RELEASE_RESET();
  75              		.loc 1 182 0
  76 0002 094B     		ldr	r3, .L5
  77 0004 4FF0FF32 		mov	r2, #-1
  78 0008 1A62     		str	r2, [r3, #32]
 183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
  79              		.loc 1 183 0
  80 000a 0024     		movs	r4, #0
  81 000c 1C62     		str	r4, [r3, #32]
 185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   __HAL_RCC_APB2_RELEASE_RESET();
  82              		.loc 1 185 0
  83 000e 5A62     		str	r2, [r3, #36]
 186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
  84              		.loc 1 186 0
  85 0010 5C62     		str	r4, [r3, #36]
 188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   __HAL_RCC_AHB1_RELEASE_RESET();
  86              		.loc 1 188 0
  87 0012 1A61     		str	r2, [r3, #16]
 189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
  88              		.loc 1 189 0
  89 0014 1C61     		str	r4, [r3, #16]
 191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   __HAL_RCC_AHB2_RELEASE_RESET();
  90              		.loc 1 191 0
  91 0016 5A61     		str	r2, [r3, #20]
 192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
  92              		.loc 1 192 0
  93 0018 5C61     		str	r4, [r3, #20]
 194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   __HAL_RCC_AHB3_RELEASE_RESET();
  94              		.loc 1 194 0
  95 001a 9A61     		str	r2, [r3, #24]
 195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
  96              		.loc 1 195 0
  97 001c 9C61     		str	r4, [r3, #24]
 198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****     
  98              		.loc 1 198 0
  99 001e FFF7FEFF 		bl	HAL_MspDeInit
 100              	.LVL0:
 202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 101              		.loc 1 202 0
 102 0022 2046     		mov	r0, r4
 103 0024 10BD     		pop	{r4, pc}
 104              	.L6:
 105 0026 00BF     		.align	2
 106              	.L5:
 107 0028 00380240 		.word	1073887232
 108              		.cfi_endproc
 109              	.LFE139:
 111              		.section	.text.HAL_InitTick,"ax",%progbits
 112              		.align	1
 113              		.weak	HAL_InitTick
 114              		.syntax unified
 115              		.thumb
 116              		.thumb_func
 117              		.fpu fpv5-d16
 119              	HAL_InitTick:
 120              	.LFB142:
 225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief This function configures the source of the time base.
 228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *        The time source is configured  to have 1ms time base with a dedicated 
 229:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *        Tick interrupt priority.
 230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @note This function is called  automatically at the beginning of program after
 231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       reset by HAL_Init() or at any time when clock is reconfigured  by HAL_RCC_ClockConfig().
 232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @note In the default implementation, SysTick timer is the source of time base. 
 233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       It is used to generate interrupts at regular time intervals. 
 234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       Care must be taken if HAL_Delay() is called from a peripheral ISR process, 
 235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       The the SysTick interrupt must have higher priority (numerically lower) 
 236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       than the peripheral interrupt. Otherwise the caller ISR process will be blocked.
 237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       The function is declared as __weak  to be overwritten  in case of other
 238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       implementation  in user file.
 239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @param TickPriority: Tick interrupt priority.
 240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval HAL status
 241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** __weak HAL_StatusTypeDef HAL_InitTick(uint32_t TickPriority)
 243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 121              		.loc 1 243 0
 122              		.cfi_startproc
 123              		@ args = 0, pretend = 0, frame = 0
 124              		@ frame_needed = 0, uses_anonymous_args = 0
 125              	.LVL1:
 126 0000 10B5     		push	{r4, lr}
 127              		.cfi_def_cfa_offset 8
 128              		.cfi_offset 4, -8
 129              		.cfi_offset 14, -4
 130 0002 0446     		mov	r4, r0
 244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   /*Configure the SysTick to have interrupt in 1ms time basis*/
 245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   HAL_SYSTICK_Config(SystemCoreClock/1000);
 131              		.loc 1 245 0
 132 0004 074B     		ldr	r3, .L9
 133 0006 1868     		ldr	r0, [r3]
 134              	.LVL2:
 135 0008 074B     		ldr	r3, .L9+4
 136 000a A3FB0030 		umull	r3, r0, r3, r0
 137 000e 8009     		lsrs	r0, r0, #6
 138 0010 FFF7FEFF 		bl	HAL_SYSTICK_Config
 139              	.LVL3:
 246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   /*Configure the SysTick IRQ priority */
 248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   HAL_NVIC_SetPriority(SysTick_IRQn, TickPriority ,0);
 140              		.loc 1 248 0
 141 0014 0022     		movs	r2, #0
 142 0016 2146     		mov	r1, r4
 143 0018 4FF0FF30 		mov	r0, #-1
 144 001c FFF7FEFF 		bl	HAL_NVIC_SetPriority
 145              	.LVL4:
 249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   /* Return function status */
 251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   return HAL_OK;
 252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 146              		.loc 1 252 0
 147 0020 0020     		movs	r0, #0
 148 0022 10BD     		pop	{r4, pc}
 149              	.LVL5:
 150              	.L10:
 151              		.align	2
 152              	.L9:
 153 0024 00000000 		.word	SystemCoreClock
 154 0028 D34D6210 		.word	274877907
 155              		.cfi_endproc
 156              	.LFE142:
 158              		.section	.text.HAL_Init,"ax",%progbits
 159              		.align	1
 160              		.global	HAL_Init
 161              		.syntax unified
 162              		.thumb
 163              		.thumb_func
 164              		.fpu fpv5-d16
 166              	HAL_Init:
 167              	.LFB138:
 155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   /* Configure Flash prefetch and Instruction cache through ART accelerator */ 
 168              		.loc 1 155 0
 169              		.cfi_startproc
 170              		@ args = 0, pretend = 0, frame = 0
 171              		@ frame_needed = 0, uses_anonymous_args = 0
 172 0000 08B5     		push	{r3, lr}
 173              		.cfi_def_cfa_offset 8
 174              		.cfi_offset 3, -8
 175              		.cfi_offset 14, -4
 158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** #endif /* ART_ACCLERATOR_ENABLE */
 176              		.loc 1 158 0
 177 0002 074A     		ldr	r2, .L13
 178 0004 1368     		ldr	r3, [r2]
 179 0006 43F40073 		orr	r3, r3, #512
 180 000a 1360     		str	r3, [r2]
 162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 181              		.loc 1 162 0
 182 000c 0320     		movs	r0, #3
 183 000e FFF7FEFF 		bl	HAL_NVIC_SetPriorityGrouping
 184              	.LVL6:
 165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   
 185              		.loc 1 165 0
 186 0012 0F20     		movs	r0, #15
 187 0014 FFF7FEFF 		bl	HAL_InitTick
 188              	.LVL7:
 168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   
 189              		.loc 1 168 0
 190 0018 FFF7FEFF 		bl	HAL_MspInit
 191              	.LVL8:
 172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 192              		.loc 1 172 0
 193 001c 0020     		movs	r0, #0
 194 001e 08BD     		pop	{r3, pc}
 195              	.L14:
 196              		.align	2
 197              	.L13:
 198 0020 003C0240 		.word	1073888256
 199              		.cfi_endproc
 200              	.LFE138:
 202              		.section	.text.HAL_IncTick,"ax",%progbits
 203              		.align	1
 204              		.weak	HAL_IncTick
 205              		.syntax unified
 206              		.thumb
 207              		.thumb_func
 208              		.fpu fpv5-d16
 210              	HAL_IncTick:
 211              	.LFB143:
 253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @}
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /** @defgroup HAL_Exported_Functions_Group2 HAL Control functions 
 259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****  *  @brief    HAL Control functions
 260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****  *
 261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** @verbatim
 262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****  ===============================================================================
 263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****                       ##### HAL Control functions #####
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****  ===============================================================================
 265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****     [..]  This section provides functions allowing to:
 266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****       (+) Provide a tick value in millisecond
 267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****       (+) Provide a blocking delay in millisecond
 268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****       (+) Suspend the time base source interrupt
 269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****       (+) Resume the time base source interrupt
 270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****       (+) Get the HAL API driver version
 271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****       (+) Get the device identifier
 272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****       (+) Get the device revision identifier
 273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****       (+) Enable/Disable Debug module during SLEEP mode
 274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****       (+) Enable/Disable Debug module during STOP mode
 275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****       (+) Enable/Disable Debug module during STANDBY mode
 276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** @endverbatim
 278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @{
 279:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief This function is called to increment  a global variable "uwTick"
 283:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *        used as application time base.
 284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @note In the default implementation, this variable is incremented each 1ms
 285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       in Systick ISR.
 286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****  * @note This function is declared as __weak to be overwritten in case of other 
 287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *      implementations in user file.
 288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval None
 289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** __weak void HAL_IncTick(void)
 291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 212              		.loc 1 291 0
 213              		.cfi_startproc
 214              		@ args = 0, pretend = 0, frame = 0
 215              		@ frame_needed = 0, uses_anonymous_args = 0
 216              		@ link register save eliminated.
 292:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   uwTick++;
 217              		.loc 1 292 0
 218 0000 024A     		ldr	r2, .L16
 219 0002 1368     		ldr	r3, [r2]
 220 0004 0133     		adds	r3, r3, #1
 221 0006 1360     		str	r3, [r2]
 293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 222              		.loc 1 293 0
 223 0008 7047     		bx	lr
 224              	.L17:
 225 000a 00BF     		.align	2
 226              	.L16:
 227 000c 00000000 		.word	uwTick
 228              		.cfi_endproc
 229              	.LFE143:
 231              		.section	.text.HAL_GetTick,"ax",%progbits
 232              		.align	1
 233              		.weak	HAL_GetTick
 234              		.syntax unified
 235              		.thumb
 236              		.thumb_func
 237              		.fpu fpv5-d16
 239              	HAL_GetTick:
 240              	.LFB144:
 294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief Provides a tick value in millisecond.
 297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @note This function is declared as __weak to be overwritten in case of other 
 298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       implementations in user file.
 299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval tick value
 300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 301:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** __weak uint32_t HAL_GetTick(void)
 302:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 241              		.loc 1 302 0
 242              		.cfi_startproc
 243              		@ args = 0, pretend = 0, frame = 0
 244              		@ frame_needed = 0, uses_anonymous_args = 0
 245              		@ link register save eliminated.
 303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   return uwTick;
 246              		.loc 1 303 0
 247 0000 014B     		ldr	r3, .L19
 248 0002 1868     		ldr	r0, [r3]
 304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 249              		.loc 1 304 0
 250 0004 7047     		bx	lr
 251              	.L20:
 252 0006 00BF     		.align	2
 253              	.L19:
 254 0008 00000000 		.word	uwTick
 255              		.cfi_endproc
 256              	.LFE144:
 258              		.section	.text.HAL_Delay,"ax",%progbits
 259              		.align	1
 260              		.weak	HAL_Delay
 261              		.syntax unified
 262              		.thumb
 263              		.thumb_func
 264              		.fpu fpv5-d16
 266              	HAL_Delay:
 267              	.LFB145:
 305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 306:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief This function provides accurate delay (in milliseconds) based 
 308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *        on variable incremented.
 309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @note In the default implementation , SysTick timer is the source of time base.
 310:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       It is used to generate interrupts at regular time intervals where uwTick
 311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       is incremented.
 312:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @note This function is declared as __weak to be overwritten in case of other
 313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       implementations in user file.
 314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @param Delay: specifies the delay time length, in milliseconds.
 315:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval None
 316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 317:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** __weak void HAL_Delay(__IO uint32_t Delay)
 318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 268              		.loc 1 318 0
 269              		.cfi_startproc
 270              		@ args = 0, pretend = 0, frame = 8
 271              		@ frame_needed = 0, uses_anonymous_args = 0
 272              	.LVL9:
 273 0000 10B5     		push	{r4, lr}
 274              		.cfi_def_cfa_offset 8
 275              		.cfi_offset 4, -8
 276              		.cfi_offset 14, -4
 277 0002 82B0     		sub	sp, sp, #8
 278              		.cfi_def_cfa_offset 16
 279 0004 0190     		str	r0, [sp, #4]
 280              	.LVL10:
 319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   uint32_t tickstart = 0;
 320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   tickstart = HAL_GetTick();
 281              		.loc 1 320 0
 282 0006 FFF7FEFF 		bl	HAL_GetTick
 283              	.LVL11:
 284 000a 0446     		mov	r4, r0
 285              	.LVL12:
 286              	.L22:
 321:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   while((HAL_GetTick() - tickstart) < Delay)
 287              		.loc 1 321 0 discriminator 1
 288 000c FFF7FEFF 		bl	HAL_GetTick
 289              	.LVL13:
 290 0010 001B     		subs	r0, r0, r4
 291 0012 019B     		ldr	r3, [sp, #4]
 292 0014 9842     		cmp	r0, r3
 293 0016 F9D3     		bcc	.L22
 322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   {
 323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   }
 324:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 294              		.loc 1 324 0
 295 0018 02B0     		add	sp, sp, #8
 296              		.cfi_def_cfa_offset 8
 297              		@ sp needed
 298 001a 10BD     		pop	{r4, pc}
 299              		.cfi_endproc
 300              	.LFE145:
 302              		.section	.text.HAL_SuspendTick,"ax",%progbits
 303              		.align	1
 304              		.weak	HAL_SuspendTick
 305              		.syntax unified
 306              		.thumb
 307              		.thumb_func
 308              		.fpu fpv5-d16
 310              	HAL_SuspendTick:
 311              	.LFB146:
 325:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief Suspend Tick increment.
 328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @note In the default implementation , SysTick timer is the source of time base. It is
 329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       used to generate interrupts at regular time intervals. Once HAL_SuspendTick()
 330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       is called, the SysTick interrupt will be disabled and so Tick increment 
 331:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       is suspended.
 332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @note This function is declared as __weak to be overwritten in case of other
 333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       implementations in user file.
 334:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval None
 335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 336:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** __weak void HAL_SuspendTick(void)
 337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 312              		.loc 1 337 0
 313              		.cfi_startproc
 314              		@ args = 0, pretend = 0, frame = 0
 315              		@ frame_needed = 0, uses_anonymous_args = 0
 316              		@ link register save eliminated.
 338:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   /* Disable SysTick Interrupt */
 339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   SysTick->CTRL &= ~SysTick_CTRL_TICKINT_Msk;
 317              		.loc 1 339 0
 318 0000 024A     		ldr	r2, .L25
 319 0002 1368     		ldr	r3, [r2]
 320 0004 23F00203 		bic	r3, r3, #2
 321 0008 1360     		str	r3, [r2]
 340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 322              		.loc 1 340 0
 323 000a 7047     		bx	lr
 324              	.L26:
 325              		.align	2
 326              	.L25:
 327 000c 10E000E0 		.word	-536813552
 328              		.cfi_endproc
 329              	.LFE146:
 331              		.section	.text.HAL_ResumeTick,"ax",%progbits
 332              		.align	1
 333              		.weak	HAL_ResumeTick
 334              		.syntax unified
 335              		.thumb
 336              		.thumb_func
 337              		.fpu fpv5-d16
 339              	HAL_ResumeTick:
 340              	.LFB147:
 341:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief Resume Tick increment.
 344:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @note In the default implementation , SysTick timer is the source of time base. It is
 345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       used to generate interrupts at regular time intervals. Once HAL_ResumeTick()
 346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       is called, the SysTick interrupt will be enabled and so Tick increment 
 347:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       is resumed.
 348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @note This function is declared as __weak to be overwritten in case of other
 349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *       implementations in user file.
 350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval None
 351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** __weak void HAL_ResumeTick(void)
 353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 341              		.loc 1 353 0
 342              		.cfi_startproc
 343              		@ args = 0, pretend = 0, frame = 0
 344              		@ frame_needed = 0, uses_anonymous_args = 0
 345              		@ link register save eliminated.
 354:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   /* Enable SysTick Interrupt */
 355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   SysTick->CTRL  |= SysTick_CTRL_TICKINT_Msk;
 346              		.loc 1 355 0
 347 0000 024A     		ldr	r2, .L28
 348 0002 1368     		ldr	r3, [r2]
 349 0004 43F00203 		orr	r3, r3, #2
 350 0008 1360     		str	r3, [r2]
 356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 351              		.loc 1 356 0
 352 000a 7047     		bx	lr
 353              	.L29:
 354              		.align	2
 355              	.L28:
 356 000c 10E000E0 		.word	-536813552
 357              		.cfi_endproc
 358              	.LFE147:
 360              		.section	.text.HAL_GetHalVersion,"ax",%progbits
 361              		.align	1
 362              		.global	HAL_GetHalVersion
 363              		.syntax unified
 364              		.thumb
 365              		.thumb_func
 366              		.fpu fpv5-d16
 368              	HAL_GetHalVersion:
 369              	.LFB148:
 357:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 359:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief  Returns the HAL revision
 360:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval version : 0xXYZR (8bits for each decimal, R for RC)
 361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 362:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** uint32_t HAL_GetHalVersion(void)
 363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 370              		.loc 1 363 0
 371              		.cfi_startproc
 372              		@ args = 0, pretend = 0, frame = 0
 373              		@ frame_needed = 0, uses_anonymous_args = 0
 374              		@ link register save eliminated.
 364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****  return __STM32F7xx_HAL_VERSION;
 365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 375              		.loc 1 365 0
 376 0000 0048     		ldr	r0, .L31
 377 0002 7047     		bx	lr
 378              	.L32:
 379              		.align	2
 380              	.L31:
 381 0004 00020201 		.word	16908800
 382              		.cfi_endproc
 383              	.LFE148:
 385              		.section	.text.HAL_GetREVID,"ax",%progbits
 386              		.align	1
 387              		.global	HAL_GetREVID
 388              		.syntax unified
 389              		.thumb
 390              		.thumb_func
 391              		.fpu fpv5-d16
 393              	HAL_GetREVID:
 394              	.LFB149:
 366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 368:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief  Returns the device revision identifier.
 369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval Device revision identifier
 370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** uint32_t HAL_GetREVID(void)
 372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 395              		.loc 1 372 0
 396              		.cfi_startproc
 397              		@ args = 0, pretend = 0, frame = 0
 398              		@ frame_needed = 0, uses_anonymous_args = 0
 399              		@ link register save eliminated.
 373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****    return((DBGMCU->IDCODE) >> 16U);
 400              		.loc 1 373 0
 401 0000 014B     		ldr	r3, .L34
 402 0002 1868     		ldr	r0, [r3]
 374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 403              		.loc 1 374 0
 404 0004 000C     		lsrs	r0, r0, #16
 405 0006 7047     		bx	lr
 406              	.L35:
 407              		.align	2
 408              	.L34:
 409 0008 002004E0 		.word	-536600576
 410              		.cfi_endproc
 411              	.LFE149:
 413              		.section	.text.HAL_GetDEVID,"ax",%progbits
 414              		.align	1
 415              		.global	HAL_GetDEVID
 416              		.syntax unified
 417              		.thumb
 418              		.thumb_func
 419              		.fpu fpv5-d16
 421              	HAL_GetDEVID:
 422              	.LFB150:
 375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 376:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 377:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief  Returns the device identifier.
 378:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval Device identifier
 379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 380:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** uint32_t HAL_GetDEVID(void)
 381:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 423              		.loc 1 381 0
 424              		.cfi_startproc
 425              		@ args = 0, pretend = 0, frame = 0
 426              		@ frame_needed = 0, uses_anonymous_args = 0
 427              		@ link register save eliminated.
 382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****    return((DBGMCU->IDCODE) & IDCODE_DEVID_MASK);
 428              		.loc 1 382 0
 429 0000 024B     		ldr	r3, .L37
 430 0002 1868     		ldr	r0, [r3]
 383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 431              		.loc 1 383 0
 432 0004 C0F30B00 		ubfx	r0, r0, #0, #12
 433 0008 7047     		bx	lr
 434              	.L38:
 435 000a 00BF     		.align	2
 436              	.L37:
 437 000c 002004E0 		.word	-536600576
 438              		.cfi_endproc
 439              	.LFE150:
 441              		.section	.text.HAL_DBGMCU_EnableDBGSleepMode,"ax",%progbits
 442              		.align	1
 443              		.global	HAL_DBGMCU_EnableDBGSleepMode
 444              		.syntax unified
 445              		.thumb
 446              		.thumb_func
 447              		.fpu fpv5-d16
 449              	HAL_DBGMCU_EnableDBGSleepMode:
 450              	.LFB151:
 384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief  Enable the Debug Module during SLEEP mode
 387:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval None
 388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** void HAL_DBGMCU_EnableDBGSleepMode(void)
 390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 451              		.loc 1 390 0
 452              		.cfi_startproc
 453              		@ args = 0, pretend = 0, frame = 0
 454              		@ frame_needed = 0, uses_anonymous_args = 0
 455              		@ link register save eliminated.
 391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   SET_BIT(DBGMCU->CR, DBGMCU_CR_DBG_SLEEP);
 456              		.loc 1 391 0
 457 0000 024A     		ldr	r2, .L40
 458 0002 5368     		ldr	r3, [r2, #4]
 459 0004 43F00103 		orr	r3, r3, #1
 460 0008 5360     		str	r3, [r2, #4]
 392:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 461              		.loc 1 392 0
 462 000a 7047     		bx	lr
 463              	.L41:
 464              		.align	2
 465              	.L40:
 466 000c 002004E0 		.word	-536600576
 467              		.cfi_endproc
 468              	.LFE151:
 470              		.section	.text.HAL_DBGMCU_DisableDBGSleepMode,"ax",%progbits
 471              		.align	1
 472              		.global	HAL_DBGMCU_DisableDBGSleepMode
 473              		.syntax unified
 474              		.thumb
 475              		.thumb_func
 476              		.fpu fpv5-d16
 478              	HAL_DBGMCU_DisableDBGSleepMode:
 479              	.LFB152:
 393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 395:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief  Disable the Debug Module during SLEEP mode
 396:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval None
 397:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** void HAL_DBGMCU_DisableDBGSleepMode(void)
 399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 480              		.loc 1 399 0
 481              		.cfi_startproc
 482              		@ args = 0, pretend = 0, frame = 0
 483              		@ frame_needed = 0, uses_anonymous_args = 0
 484              		@ link register save eliminated.
 400:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   CLEAR_BIT(DBGMCU->CR, DBGMCU_CR_DBG_SLEEP);
 485              		.loc 1 400 0
 486 0000 024A     		ldr	r2, .L43
 487 0002 5368     		ldr	r3, [r2, #4]
 488 0004 23F00103 		bic	r3, r3, #1
 489 0008 5360     		str	r3, [r2, #4]
 401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 490              		.loc 1 401 0
 491 000a 7047     		bx	lr
 492              	.L44:
 493              		.align	2
 494              	.L43:
 495 000c 002004E0 		.word	-536600576
 496              		.cfi_endproc
 497              	.LFE152:
 499              		.section	.text.HAL_DBGMCU_EnableDBGStopMode,"ax",%progbits
 500              		.align	1
 501              		.global	HAL_DBGMCU_EnableDBGStopMode
 502              		.syntax unified
 503              		.thumb
 504              		.thumb_func
 505              		.fpu fpv5-d16
 507              	HAL_DBGMCU_EnableDBGStopMode:
 508              	.LFB153:
 402:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 403:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief  Enable the Debug Module during STOP mode
 405:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval None
 406:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 407:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** void HAL_DBGMCU_EnableDBGStopMode(void)
 408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 509              		.loc 1 408 0
 510              		.cfi_startproc
 511              		@ args = 0, pretend = 0, frame = 0
 512              		@ frame_needed = 0, uses_anonymous_args = 0
 513              		@ link register save eliminated.
 409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   SET_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STOP);
 514              		.loc 1 409 0
 515 0000 024A     		ldr	r2, .L46
 516 0002 5368     		ldr	r3, [r2, #4]
 517 0004 43F00203 		orr	r3, r3, #2
 518 0008 5360     		str	r3, [r2, #4]
 410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 519              		.loc 1 410 0
 520 000a 7047     		bx	lr
 521              	.L47:
 522              		.align	2
 523              	.L46:
 524 000c 002004E0 		.word	-536600576
 525              		.cfi_endproc
 526              	.LFE153:
 528              		.section	.text.HAL_DBGMCU_DisableDBGStopMode,"ax",%progbits
 529              		.align	1
 530              		.global	HAL_DBGMCU_DisableDBGStopMode
 531              		.syntax unified
 532              		.thumb
 533              		.thumb_func
 534              		.fpu fpv5-d16
 536              	HAL_DBGMCU_DisableDBGStopMode:
 537              	.LFB154:
 411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 412:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 413:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief  Disable the Debug Module during STOP mode
 414:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval None
 415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 416:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** void HAL_DBGMCU_DisableDBGStopMode(void)
 417:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 538              		.loc 1 417 0
 539              		.cfi_startproc
 540              		@ args = 0, pretend = 0, frame = 0
 541              		@ frame_needed = 0, uses_anonymous_args = 0
 542              		@ link register save eliminated.
 418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   CLEAR_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STOP);
 543              		.loc 1 418 0
 544 0000 024A     		ldr	r2, .L49
 545 0002 5368     		ldr	r3, [r2, #4]
 546 0004 23F00203 		bic	r3, r3, #2
 547 0008 5360     		str	r3, [r2, #4]
 419:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 548              		.loc 1 419 0
 549 000a 7047     		bx	lr
 550              	.L50:
 551              		.align	2
 552              	.L49:
 553 000c 002004E0 		.word	-536600576
 554              		.cfi_endproc
 555              	.LFE154:
 557              		.section	.text.HAL_DBGMCU_EnableDBGStandbyMode,"ax",%progbits
 558              		.align	1
 559              		.global	HAL_DBGMCU_EnableDBGStandbyMode
 560              		.syntax unified
 561              		.thumb
 562              		.thumb_func
 563              		.fpu fpv5-d16
 565              	HAL_DBGMCU_EnableDBGStandbyMode:
 566              	.LFB155:
 420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief  Enable the Debug Module during STANDBY mode
 423:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval None
 424:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** void HAL_DBGMCU_EnableDBGStandbyMode(void)
 426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 567              		.loc 1 426 0
 568              		.cfi_startproc
 569              		@ args = 0, pretend = 0, frame = 0
 570              		@ frame_needed = 0, uses_anonymous_args = 0
 571              		@ link register save eliminated.
 427:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   SET_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STANDBY);
 572              		.loc 1 427 0
 573 0000 024A     		ldr	r2, .L52
 574 0002 5368     		ldr	r3, [r2, #4]
 575 0004 43F00403 		orr	r3, r3, #4
 576 0008 5360     		str	r3, [r2, #4]
 428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 577              		.loc 1 428 0
 578 000a 7047     		bx	lr
 579              	.L53:
 580              		.align	2
 581              	.L52:
 582 000c 002004E0 		.word	-536600576
 583              		.cfi_endproc
 584              	.LFE155:
 586              		.section	.text.HAL_DBGMCU_DisableDBGStandbyMode,"ax",%progbits
 587              		.align	1
 588              		.global	HAL_DBGMCU_DisableDBGStandbyMode
 589              		.syntax unified
 590              		.thumb
 591              		.thumb_func
 592              		.fpu fpv5-d16
 594              	HAL_DBGMCU_DisableDBGStandbyMode:
 595              	.LFB156:
 429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 430:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief  Disable the Debug Module during STANDBY mode
 432:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval None
 433:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** void HAL_DBGMCU_DisableDBGStandbyMode(void)
 435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 596              		.loc 1 435 0
 597              		.cfi_startproc
 598              		@ args = 0, pretend = 0, frame = 0
 599              		@ frame_needed = 0, uses_anonymous_args = 0
 600              		@ link register save eliminated.
 436:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   CLEAR_BIT(DBGMCU->CR, DBGMCU_CR_DBG_STANDBY);
 601              		.loc 1 436 0
 602 0000 024A     		ldr	r2, .L55
 603 0002 5368     		ldr	r3, [r2, #4]
 604 0004 23F00403 		bic	r3, r3, #4
 605 0008 5360     		str	r3, [r2, #4]
 437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 606              		.loc 1 437 0
 607 000a 7047     		bx	lr
 608              	.L56:
 609              		.align	2
 610              	.L55:
 611 000c 002004E0 		.word	-536600576
 612              		.cfi_endproc
 613              	.LFE156:
 615              		.section	.text.HAL_EnableCompensationCell,"ax",%progbits
 616              		.align	1
 617              		.global	HAL_EnableCompensationCell
 618              		.syntax unified
 619              		.thumb
 620              		.thumb_func
 621              		.fpu fpv5-d16
 623              	HAL_EnableCompensationCell:
 624              	.LFB157:
 438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 439:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief  Enables the I/O Compensation Cell.
 441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @note   The I/O compensation cell can be used only when the device supply
 442:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *         voltage ranges from 2.4 to 3.6 V.  
 443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval None
 444:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** void HAL_EnableCompensationCell(void)
 446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 625              		.loc 1 446 0
 626              		.cfi_startproc
 627              		@ args = 0, pretend = 0, frame = 0
 628              		@ frame_needed = 0, uses_anonymous_args = 0
 629              		@ link register save eliminated.
 447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   SYSCFG->CMPCR |= SYSCFG_CMPCR_CMP_PD;
 630              		.loc 1 447 0
 631 0000 024A     		ldr	r2, .L58
 632 0002 136A     		ldr	r3, [r2, #32]
 633 0004 43F00103 		orr	r3, r3, #1
 634 0008 1362     		str	r3, [r2, #32]
 448:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 635              		.loc 1 448 0
 636 000a 7047     		bx	lr
 637              	.L59:
 638              		.align	2
 639              	.L58:
 640 000c 00380140 		.word	1073821696
 641              		.cfi_endproc
 642              	.LFE157:
 644              		.section	.text.HAL_DisableCompensationCell,"ax",%progbits
 645              		.align	1
 646              		.global	HAL_DisableCompensationCell
 647              		.syntax unified
 648              		.thumb
 649              		.thumb_func
 650              		.fpu fpv5-d16
 652              	HAL_DisableCompensationCell:
 653              	.LFB158:
 449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 450:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief  Power-down the I/O Compensation Cell.
 452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @note   The I/O compensation cell can be used only when the device supply
 453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *         voltage ranges from 2.4 to 3.6 V.  
 454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval None
 455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 456:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** void HAL_DisableCompensationCell(void)
 457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 654              		.loc 1 457 0
 655              		.cfi_startproc
 656              		@ args = 0, pretend = 0, frame = 0
 657              		@ frame_needed = 0, uses_anonymous_args = 0
 658              		@ link register save eliminated.
 458:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   SYSCFG->CMPCR &= (uint32_t)~((uint32_t)SYSCFG_CMPCR_CMP_PD);
 659              		.loc 1 458 0
 660 0000 024A     		ldr	r2, .L61
 661 0002 136A     		ldr	r3, [r2, #32]
 662 0004 23F00103 		bic	r3, r3, #1
 663 0008 1362     		str	r3, [r2, #32]
 459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 664              		.loc 1 459 0
 665 000a 7047     		bx	lr
 666              	.L62:
 667              		.align	2
 668              	.L61:
 669 000c 00380140 		.word	1073821696
 670              		.cfi_endproc
 671              	.LFE158:
 673              		.section	.text.HAL_EnableFMCMemorySwapping,"ax",%progbits
 674              		.align	1
 675              		.global	HAL_EnableFMCMemorySwapping
 676              		.syntax unified
 677              		.thumb
 678              		.thumb_func
 679              		.fpu fpv5-d16
 681              	HAL_EnableFMCMemorySwapping:
 682              	.LFB159:
 460:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief  Enables the FMC Memory Mapping Swapping.
 463:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *   
 464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @note   SDRAM is accessible at 0x60000000 
 465:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *         and NOR/RAM is accessible at 0xC0000000   
 466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *
 467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval None
 468:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** void HAL_EnableFMCMemorySwapping(void)
 470:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 683              		.loc 1 470 0
 684              		.cfi_startproc
 685              		@ args = 0, pretend = 0, frame = 0
 686              		@ frame_needed = 0, uses_anonymous_args = 0
 687              		@ link register save eliminated.
 471:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   SYSCFG->MEMRMP |= SYSCFG_MEMRMP_SWP_FMC_0;
 688              		.loc 1 471 0
 689 0000 024A     		ldr	r2, .L64
 690 0002 1368     		ldr	r3, [r2]
 691 0004 43F48063 		orr	r3, r3, #1024
 692 0008 1360     		str	r3, [r2]
 472:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 693              		.loc 1 472 0
 694 000a 7047     		bx	lr
 695              	.L65:
 696              		.align	2
 697              	.L64:
 698 000c 00380140 		.word	1073821696
 699              		.cfi_endproc
 700              	.LFE159:
 702              		.section	.text.HAL_DisableFMCMemorySwapping,"ax",%progbits
 703              		.align	1
 704              		.global	HAL_DisableFMCMemorySwapping
 705              		.syntax unified
 706              		.thumb
 707              		.thumb_func
 708              		.fpu fpv5-d16
 710              	HAL_DisableFMCMemorySwapping:
 711              	.LFB160:
 473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 474:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 475:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @brief  Disables the FMC Memory Mapping Swapping
 476:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *   
 477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @note   SDRAM is accessible at 0xC0000000 (default mapping)  
 478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *         and NOR/RAM is accessible at 0x60000000 (default mapping)    
 479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   *           
 480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   * @retval None
 481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   */
 482:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** void HAL_DisableFMCMemorySwapping(void)
 483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 712              		.loc 1 483 0
 713              		.cfi_startproc
 714              		@ args = 0, pretend = 0, frame = 0
 715              		@ frame_needed = 0, uses_anonymous_args = 0
 716              		@ link register save eliminated.
 484:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   SYSCFG->MEMRMP &= (uint32_t)~((uint32_t)SYSCFG_MEMRMP_SWP_FMC);
 717              		.loc 1 485 0
 718 0000 024A     		ldr	r2, .L67
 719 0002 1368     		ldr	r3, [r2]
 720 0004 23F44063 		bic	r3, r3, #3072
 721 0008 1360     		str	r3, [r2]
 486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 722              		.loc 1 486 0
 723 000a 7047     		bx	lr
 724              	.L68:
 725              		.align	2
 726              	.L67:
 727 000c 00380140 		.word	1073821696
 728              		.cfi_endproc
 729              	.LFE160:
 731              		.section	.text.HAL_EnableMemorySwappingBank,"ax",%progbits
 732              		.align	1
 733              		.global	HAL_EnableMemorySwappingBank
 734              		.syntax unified
 735              		.thumb
 736              		.thumb_func
 737              		.fpu fpv5-d16
 739              	HAL_EnableMemorySwappingBank:
 740              	.LFB161:
 487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 488:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** #if defined (STM32F765xx) || defined (STM32F767xx) || defined (STM32F769xx) || defined (STM32F777xx
 489:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** * @brief  Enable the Internal FLASH Bank Swapping.
 491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** *   
 492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** * @note   This function can be used only for STM32F77xx/STM32F76xx devices. 
 493:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** *
 494:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** * @note   Flash Bank2 mapped at 0x08000000 (AXI) (aliased at 0x00200000 (TCM)) 
 495:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** *         and Flash Bank1 mapped at 0x08100000 (AXI) (aliased at 0x00300000 (TCM))   
 496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** *
 497:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** * @retval None
 498:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** */
 499:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** void HAL_EnableMemorySwappingBank(void)
 500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 741              		.loc 1 500 0
 742              		.cfi_startproc
 743              		@ args = 0, pretend = 0, frame = 0
 744              		@ frame_needed = 0, uses_anonymous_args = 0
 745              		@ link register save eliminated.
 501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   SET_BIT(SYSCFG->MEMRMP, SYSCFG_MEMRMP_SWP_FB);
 746              		.loc 1 501 0
 747 0000 024A     		ldr	r2, .L70
 748 0002 1368     		ldr	r3, [r2]
 749 0004 43F48073 		orr	r3, r3, #256
 750 0008 1360     		str	r3, [r2]
 502:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 751              		.loc 1 502 0
 752 000a 7047     		bx	lr
 753              	.L71:
 754              		.align	2
 755              	.L70:
 756 000c 00380140 		.word	1073821696
 757              		.cfi_endproc
 758              	.LFE161:
 760              		.section	.text.HAL_DisableMemorySwappingBank,"ax",%progbits
 761              		.align	1
 762              		.global	HAL_DisableMemorySwappingBank
 763              		.syntax unified
 764              		.thumb
 765              		.thumb_func
 766              		.fpu fpv5-d16
 768              	HAL_DisableMemorySwappingBank:
 769              	.LFB162:
 503:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** 
 504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** /**
 505:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** * @brief  Disable the Internal FLASH Bank Swapping.
 506:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** *   
 507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** * @note   This function can be used only for STM32F77xx/STM32F76xx devices. 
 508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** *
 509:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** * @note   The default state : Flash Bank1 mapped at 0x08000000 (AXI) (aliased at 0x00200000 (TCM)) 
 510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** *         and Flash Bank2 mapped at 0x08100000 (AXI)( aliased at 0x00300000 (TCM)) 
 511:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** *           
 512:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** * @retval None
 513:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** */
 514:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** void HAL_DisableMemorySwappingBank(void)
 515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** {
 770              		.loc 1 515 0
 771              		.cfi_startproc
 772              		@ args = 0, pretend = 0, frame = 0
 773              		@ frame_needed = 0, uses_anonymous_args = 0
 774              		@ link register save eliminated.
 516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c ****   CLEAR_BIT(SYSCFG->MEMRMP, SYSCFG_MEMRMP_SWP_FB);
 775              		.loc 1 516 0
 776 0000 024A     		ldr	r2, .L73
 777 0002 1368     		ldr	r3, [r2]
 778 0004 23F48073 		bic	r3, r3, #256
 779 0008 1360     		str	r3, [r2]
 517:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal.c **** }
 780              		.loc 1 517 0
 781 000a 7047     		bx	lr
 782              	.L74:
 783              		.align	2
 784              	.L73:
 785 000c 00380140 		.word	1073821696
 786              		.cfi_endproc
 787              	.LFE162:
 789              		.comm	uwTick,4,4
 790              		.text
 791              	.Letext0:
 792              		.file 2 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 793              		.file 3 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 794              		.file 4 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h"
 795              		.file 5 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/system_stm
 796              		.file 6 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f769x
 797              		.file 7 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 798              		.file 8 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 799              		.file 9 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 800              		.file 10 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 801              		.file 11 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_def.
 802              		.file 12 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_cort
DEFINED SYMBOLS
                            *ABS*:0000000000000000 stm32f7xx_hal.c
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:17     .text.HAL_MspInit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:24     .text.HAL_MspInit:0000000000000000 HAL_MspInit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:38     .text.HAL_MspDeInit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:45     .text.HAL_MspDeInit:0000000000000000 HAL_MspDeInit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:58     .text.HAL_DeInit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:65     .text.HAL_DeInit:0000000000000000 HAL_DeInit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:107    .text.HAL_DeInit:0000000000000028 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:112    .text.HAL_InitTick:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:119    .text.HAL_InitTick:0000000000000000 HAL_InitTick
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:153    .text.HAL_InitTick:0000000000000024 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:159    .text.HAL_Init:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:166    .text.HAL_Init:0000000000000000 HAL_Init
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:198    .text.HAL_Init:0000000000000020 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:203    .text.HAL_IncTick:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:210    .text.HAL_IncTick:0000000000000000 HAL_IncTick
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:227    .text.HAL_IncTick:000000000000000c $d
                            *COM*:0000000000000004 uwTick
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:232    .text.HAL_GetTick:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:239    .text.HAL_GetTick:0000000000000000 HAL_GetTick
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:254    .text.HAL_GetTick:0000000000000008 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:259    .text.HAL_Delay:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:266    .text.HAL_Delay:0000000000000000 HAL_Delay
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:303    .text.HAL_SuspendTick:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:310    .text.HAL_SuspendTick:0000000000000000 HAL_SuspendTick
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:327    .text.HAL_SuspendTick:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:332    .text.HAL_ResumeTick:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:339    .text.HAL_ResumeTick:0000000000000000 HAL_ResumeTick
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:356    .text.HAL_ResumeTick:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:361    .text.HAL_GetHalVersion:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:368    .text.HAL_GetHalVersion:0000000000000000 HAL_GetHalVersion
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:381    .text.HAL_GetHalVersion:0000000000000004 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:386    .text.HAL_GetREVID:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:393    .text.HAL_GetREVID:0000000000000000 HAL_GetREVID
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:409    .text.HAL_GetREVID:0000000000000008 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:414    .text.HAL_GetDEVID:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:421    .text.HAL_GetDEVID:0000000000000000 HAL_GetDEVID
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:437    .text.HAL_GetDEVID:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:442    .text.HAL_DBGMCU_EnableDBGSleepMode:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:449    .text.HAL_DBGMCU_EnableDBGSleepMode:0000000000000000 HAL_DBGMCU_EnableDBGSleepMode
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:466    .text.HAL_DBGMCU_EnableDBGSleepMode:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:471    .text.HAL_DBGMCU_DisableDBGSleepMode:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:478    .text.HAL_DBGMCU_DisableDBGSleepMode:0000000000000000 HAL_DBGMCU_DisableDBGSleepMode
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:495    .text.HAL_DBGMCU_DisableDBGSleepMode:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:500    .text.HAL_DBGMCU_EnableDBGStopMode:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:507    .text.HAL_DBGMCU_EnableDBGStopMode:0000000000000000 HAL_DBGMCU_EnableDBGStopMode
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:524    .text.HAL_DBGMCU_EnableDBGStopMode:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:529    .text.HAL_DBGMCU_DisableDBGStopMode:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:536    .text.HAL_DBGMCU_DisableDBGStopMode:0000000000000000 HAL_DBGMCU_DisableDBGStopMode
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:553    .text.HAL_DBGMCU_DisableDBGStopMode:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:558    .text.HAL_DBGMCU_EnableDBGStandbyMode:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:565    .text.HAL_DBGMCU_EnableDBGStandbyMode:0000000000000000 HAL_DBGMCU_EnableDBGStandbyMode
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:582    .text.HAL_DBGMCU_EnableDBGStandbyMode:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:587    .text.HAL_DBGMCU_DisableDBGStandbyMode:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:594    .text.HAL_DBGMCU_DisableDBGStandbyMode:0000000000000000 HAL_DBGMCU_DisableDBGStandbyMode
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:611    .text.HAL_DBGMCU_DisableDBGStandbyMode:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:616    .text.HAL_EnableCompensationCell:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:623    .text.HAL_EnableCompensationCell:0000000000000000 HAL_EnableCompensationCell
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:640    .text.HAL_EnableCompensationCell:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:645    .text.HAL_DisableCompensationCell:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:652    .text.HAL_DisableCompensationCell:0000000000000000 HAL_DisableCompensationCell
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:669    .text.HAL_DisableCompensationCell:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:674    .text.HAL_EnableFMCMemorySwapping:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:681    .text.HAL_EnableFMCMemorySwapping:0000000000000000 HAL_EnableFMCMemorySwapping
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:698    .text.HAL_EnableFMCMemorySwapping:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:703    .text.HAL_DisableFMCMemorySwapping:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:710    .text.HAL_DisableFMCMemorySwapping:0000000000000000 HAL_DisableFMCMemorySwapping
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:727    .text.HAL_DisableFMCMemorySwapping:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:732    .text.HAL_EnableMemorySwappingBank:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:739    .text.HAL_EnableMemorySwappingBank:0000000000000000 HAL_EnableMemorySwappingBank
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:756    .text.HAL_EnableMemorySwappingBank:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:761    .text.HAL_DisableMemorySwappingBank:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:768    .text.HAL_DisableMemorySwappingBank:0000000000000000 HAL_DisableMemorySwappingBank
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccnpsIRm.s:785    .text.HAL_DisableMemorySwappingBank:000000000000000c $d
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
HAL_SYSTICK_Config
HAL_NVIC_SetPriority
SystemCoreClock
HAL_NVIC_SetPriorityGrouping

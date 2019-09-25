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
  12              		.file	"stm32f7xx_hal_dma.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.DMA_SetConfig,"ax",%progbits
  17              		.align	1
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv5-d16
  23              	DMA_SetConfig:
  24              	.LFB150:
  25              		.file 1 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c
   1:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
   2:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   ******************************************************************************
   3:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @file    stm32f7xx_hal_dma.c
   4:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @author  MCD Application Team
   5:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @version V1.2.2
   6:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @date    14-April-2017
   7:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @brief   DMA HAL module driver.
   8:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *    
   9:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *          This file provides firmware functions to manage the following 
  10:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *          functionalities of the Direct Memory Access (DMA) peripheral:
  11:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *           + Initialization and de-initialization functions
  12:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *           + IO operation functions
  13:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *           + Peripheral State and errors functions
  14:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   @verbatim     
  15:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   ==============================================================================
  16:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****                         ##### How to use this driver #####
  17:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   ==============================================================================
  18:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   [..]
  19:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****    (#) Enable and configure the peripheral to be connected to the DMA Stream
  20:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****        (except for internal SRAM/FLASH memories: no initialization is 
  21:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****        necessary) please refer to Reference manual for connection between peripherals
  22:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****        and DMA requests.
  23:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
  24:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****    (#) For a given Stream, program the required configuration through the following parameters:
  25:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****        Transfer Direction, Source and Destination data formats, 
  26:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****        Circular, Normal or peripheral flow control mode, Stream Priority level, 
  27:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****        Source and Destination Increment mode, FIFO mode and its Threshold (if needed), 
  28:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****        Burst mode for Source and/or Destination (if needed) using HAL_DMA_Init() function.
  29:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
  30:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****    -@-   Prior to HAL_DMA_Init() the clock must be enabled for DMA through the following macros:
  31:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****          __HAL_RCC_DMA1_CLK_ENABLE() or __HAL_RCC_DMA2_CLK_ENABLE().
  32:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
  33:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****      *** Polling mode IO operation ***
  34:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****      =================================
  35:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     [..]
  36:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           (+) Use HAL_DMA_Start() to start DMA transfer after the configuration of Source 
  37:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****               address and destination address and the Length of data to be transferred.
  38:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           (+) Use HAL_DMA_PollForTransfer() to poll for the end of current transfer, in this  
  39:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****               case a fixed Timeout can be configured by User depending from his application.
  40:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           (+) Use HAL_DMA_Abort() function to abort the current transfer.
  41:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
  42:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****      *** Interrupt mode IO operation ***
  43:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****      ===================================
  44:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     [..]
  45:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           (+) Configure the DMA interrupt priority using HAL_NVIC_SetPriority()
  46:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           (+) Enable the DMA IRQ handler using HAL_NVIC_EnableIRQ() 
  47:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           (+) Use HAL_DMA_Start_IT() to start DMA transfer after the configuration of  
  48:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****               Source address and destination address and the Length of data to be transferred. In t
  49:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****               case the DMA interrupt is configured 
  50:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           (+) Use HAL_DMA_IRQHandler() called under DMA_IRQHandler() Interrupt subroutine
  51:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           (+) At the end of data transfer HAL_DMA_IRQHandler() function is executed and user can 
  52:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****               add his own function by customization of function pointer XferCpltCallback and 
  53:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****               XferErrorCallback (i.e a member of DMA handle structure).
  54:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     [..]
  55:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****      (#) Use HAL_DMA_GetState() function to return the DMA state and HAL_DMA_GetError() in case of 
  56:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****          detection.
  57:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
  58:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****      (#) Use HAL_DMA_Abort_IT() function to abort the current transfer
  59:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
  60:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****      -@-   In Memory-to-Memory transfer mode, Circular mode is not allowed.
  61:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
  62:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****      -@-   The FIFO is used mainly to reduce bus usage and to allow data packing/unpacking: it is
  63:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****            possible to set different Data Sizes for the Peripheral and the Memory (ie. you can set
  64:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****            Half-Word data size for the peripheral to access its data register and set Word data siz
  65:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****            for the Memory to gain in access time. Each two half words will be packed and written in
  66:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****            a single access to a Word in the Memory).
  67:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
  68:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****      -@-   When FIFO is disabled, it is not allowed to configure different Data Sizes for Source
  69:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****            and Destination. In this case the Peripheral Data Size will be applied to both Source
  70:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****            and Destination.
  71:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
  72:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****      *** DMA HAL driver macros list ***
  73:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****      =============================================
  74:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****      [..]
  75:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****        Below the list of most used macros in DMA HAL driver.
  76:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****        
  77:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       (+) __HAL_DMA_ENABLE: Enable the specified DMA Stream.
  78:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       (+) __HAL_DMA_DISABLE: Disable the specified DMA Stream.
  79:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       (+) __HAL_DMA_GET_IT_SOURCE: Check whether the specified DMA Stream interrupt has occurred or
  80:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
  81:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****      [..]
  82:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       (@) You can refer to the DMA HAL driver header file for more useful macros
  83:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
  84:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   @endverbatim
  85:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   ******************************************************************************
  86:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @attention
  87:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *
  88:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * <h2><center>&copy; COPYRIGHT(c) 2017 STMicroelectronics</center></h2>
  89:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *
  90:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * Redistribution and use in source and binary forms, with or without modification,
  91:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * are permitted provided that the following conditions are met:
  92:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  93:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *      this list of conditions and the following disclaimer.
  94:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  95:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *      this list of conditions and the following disclaimer in the documentation
  96:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *      and/or other materials provided with the distribution.
  97:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  98:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *      may be used to endorse or promote products derived from this software
  99:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *      without specific prior written permission.
 100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *
 101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *
 112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   ******************************************************************************
 113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */ 
 114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /* Includes ------------------------------------------------------------------*/
 116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** #include "stm32f7xx_hal.h"
 117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /** @addtogroup STM32F7xx_HAL_Driver
 119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @{
 120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
 121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /** @defgroup DMA DMA
 123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @brief DMA HAL module driver
 124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @{
 125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
 126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** #ifdef HAL_DMA_MODULE_ENABLED
 128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /* Private types -------------------------------------------------------------*/
 130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** typedef struct
 131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** {
 132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   __IO uint32_t ISR;   /*!< DMA interrupt status register */
 133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   __IO uint32_t Reserved0;
 134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   __IO uint32_t IFCR;  /*!< DMA interrupt flag clear register */
 135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** } DMA_Base_Registers;
 136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /* Private variables ---------------------------------------------------------*/
 138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /* Private constants ---------------------------------------------------------*/
 139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /** @addtogroup DMA_Private_Constants
 140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****  * @{
 141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****  */
 142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****  #define HAL_TIMEOUT_DMA_ABORT    ((uint32_t)5)  /* 5 ms */
 143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
 144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @}
 145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
 146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /* Private macros ------------------------------------------------------------*/
 147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /* Private functions ---------------------------------------------------------*/
 148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /** @addtogroup DMA_Private_Functions
 149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @{
 150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
 151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** static void DMA_SetConfig(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32
 152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** static uint32_t DMA_CalcBaseAndBitshift(DMA_HandleTypeDef *hdma);
 153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** static HAL_StatusTypeDef DMA_CheckFifoParam(DMA_HandleTypeDef *hdma);
 154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
 156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @}
 157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */  
 158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /* Exported functions ---------------------------------------------------------*/
 160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /** @addtogroup DMA_Exported_Functions
 161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @{
 162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
 163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /** @addtogroup DMA_Exported_Functions_Group1
 165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *
 166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** @verbatim
 167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****  ===============================================================================
 168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****              ##### Initialization and de-initialization functions  #####
 169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****  ===============================================================================
 170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     [..]
 171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     This section provides functions allowing to initialize the DMA Stream source
 172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     and destination addresses, incrementation and data sizes, transfer direction, 
 173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     circular/normal mode selection, memory-to-memory mode selection and Stream priority value.
 174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     [..]
 175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     The HAL_DMA_Init() function follows the DMA configuration procedures as described in
 176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     reference manual.
 177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** @endverbatim
 179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @{
 180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
 181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
 183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @brief  Initialize the DMA according to the specified
 184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *         parameters in the DMA_InitTypeDef and create the associated handle.
 185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  hdma: Pointer to a DMA_HandleTypeDef structure that contains
 186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *               the configuration information for the specified DMA Stream.  
 187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @retval HAL status
 188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
 189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_Init(DMA_HandleTypeDef *hdma)
 190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** {
 191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t tmp = 0U;
 192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t tickstart = HAL_GetTick();
 193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   DMA_Base_Registers *regs;
 194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Check the DMA peripheral state */
 196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if(hdma == NULL)
 197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     return HAL_ERROR;
 199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Check the parameters */
 202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   assert_param(IS_DMA_STREAM_ALL_INSTANCE(hdma->Instance));
 203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   assert_param(IS_DMA_CHANNEL(hdma->Init.Channel));
 204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   assert_param(IS_DMA_DIRECTION(hdma->Init.Direction));
 205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   assert_param(IS_DMA_PERIPHERAL_INC_STATE(hdma->Init.PeriphInc));
 206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   assert_param(IS_DMA_MEMORY_INC_STATE(hdma->Init.MemInc));
 207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   assert_param(IS_DMA_PERIPHERAL_DATA_SIZE(hdma->Init.PeriphDataAlignment));
 208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   assert_param(IS_DMA_MEMORY_DATA_SIZE(hdma->Init.MemDataAlignment));
 209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   assert_param(IS_DMA_MODE(hdma->Init.Mode));
 210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   assert_param(IS_DMA_PRIORITY(hdma->Init.Priority));
 211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   assert_param(IS_DMA_FIFO_MODE_STATE(hdma->Init.FIFOMode));
 212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Check the memory burst, peripheral burst and FIFO threshold parameters only
 213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****      when FIFO mode is enabled */
 214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if(hdma->Init.FIFOMode != DMA_FIFOMODE_DISABLE)
 215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     assert_param(IS_DMA_FIFO_THRESHOLD(hdma->Init.FIFOThreshold));
 217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     assert_param(IS_DMA_MEMORY_BURST(hdma->Init.MemBurst));
 218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     assert_param(IS_DMA_PERIPHERAL_BURST(hdma->Init.PeriphBurst));
 219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Allocate lock resource */
 222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   __HAL_UNLOCK(hdma);
 223:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Change DMA peripheral state */
 225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   hdma->State = HAL_DMA_STATE_BUSY;
 226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Disable the peripheral */
 228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   __HAL_DMA_DISABLE(hdma);
 229:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Check if the DMA Stream is effectively disabled */
 231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   while((hdma->Instance->CR & DMA_SxCR_EN) != RESET)
 232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Check for the Timeout */
 234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     if((HAL_GetTick() - tickstart ) > HAL_TIMEOUT_DMA_ABORT)
 235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Update error code */
 237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->ErrorCode = HAL_DMA_ERROR_TIMEOUT;
 238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Change the DMA state */
 240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->State = HAL_DMA_STATE_TIMEOUT;
 241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       return HAL_TIMEOUT;
 243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Get the CR register value */
 247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   tmp = hdma->Instance->CR;
 248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Clear CHSEL, MBURST, PBURST, PL, MSIZE, PSIZE, MINC, PINC, CIRC, DIR, CT and DBM bits */
 250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   tmp &= ((uint32_t)~(DMA_SxCR_CHSEL | DMA_SxCR_MBURST | DMA_SxCR_PBURST | \
 251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****                       DMA_SxCR_PL    | DMA_SxCR_MSIZE  | DMA_SxCR_PSIZE  | \
 252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****                       DMA_SxCR_MINC  | DMA_SxCR_PINC   | DMA_SxCR_CIRC   | \
 253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****                       DMA_SxCR_DIR   | DMA_SxCR_CT     | DMA_SxCR_DBM));
 254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Prepare the DMA Stream configuration */
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   tmp |=  hdma->Init.Channel             | hdma->Init.Direction        |
 257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           hdma->Init.Mode                | hdma->Init.Priority;
 260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* the Memory burst and peripheral burst are not used when the FIFO is disabled */
 262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if(hdma->Init.FIFOMode == DMA_FIFOMODE_ENABLE)
 263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Get memory burst and peripheral burst */
 265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     tmp |=  hdma->Init.MemBurst | hdma->Init.PeriphBurst;
 266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Write to DMA Stream CR register */
 269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   hdma->Instance->CR = tmp;  
 270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Get the FCR register value */
 272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   tmp = hdma->Instance->FCR;
 273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Clear Direct mode and FIFO threshold bits */
 275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   tmp &= (uint32_t)~(DMA_SxFCR_DMDIS | DMA_SxFCR_FTH);
 276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Prepare the DMA Stream FIFO configuration */
 278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   tmp |= hdma->Init.FIFOMode;
 279:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* The FIFO threshold is not used when the FIFO mode is disabled */
 281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if(hdma->Init.FIFOMode == DMA_FIFOMODE_ENABLE)
 282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 283:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Get the FIFO threshold */
 284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     tmp |= hdma->Init.FIFOThreshold;
 285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Check compatibility between FIFO threshold level and size of the memory burst */
 287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* for INCR4, INCR8, INCR16 bursts */
 288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     if (hdma->Init.MemBurst != DMA_MBURST_SINGLE)
 289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       if (DMA_CheckFifoParam(hdma) != HAL_OK)
 291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
 292:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         /* Update error code */
 293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         hdma->ErrorCode = HAL_DMA_ERROR_PARAM;
 294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         
 295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         /* Change the DMA state */
 296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         hdma->State = HAL_DMA_STATE_READY;
 297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         
 298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         return HAL_ERROR; 
 299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
 300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 301:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 302:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Write to DMA Stream FCR */
 304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   hdma->Instance->FCR = tmp;
 305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 306:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Initialize StreamBaseAddress and StreamIndex parameters to be used to calculate
 307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****      DMA steam Base Address needed by HAL_DMA_IRQHandler() and HAL_DMA_PollForTransfer() */
 308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   regs = (DMA_Base_Registers *)DMA_CalcBaseAndBitshift(hdma);
 309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 310:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Clear all interrupt flags */
 311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   regs->IFCR = 0x3FU << hdma->StreamIndex;
 312:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Initialize the error code */
 314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 315:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****                                                                                      
 316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Initialize the DMA state */
 317:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   hdma->State = HAL_DMA_STATE_READY;
 318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   return HAL_OK;
 320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
 321:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
 323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @brief  DeInitializes the DMA peripheral 
 324:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
 325:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *               the configuration information for the specified DMA Stream.  
 326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @retval HAL status
 327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
 328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_DeInit(DMA_HandleTypeDef *hdma)
 329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** {
 330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   DMA_Base_Registers *regs;
 331:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Check the DMA peripheral state */
 333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if(hdma == NULL)
 334:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     return HAL_ERROR;
 336:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 338:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Check the DMA peripheral state */
 339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if(hdma->State == HAL_DMA_STATE_BUSY)
 340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 341:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Return error status */
 342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     return HAL_BUSY;
 343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 344:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Check the parameters */
 346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   assert_param(IS_DMA_STREAM_ALL_INSTANCE(hdma->Instance));
 347:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Disable the selected DMA Streamx */
 349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   __HAL_DMA_DISABLE(hdma);
 350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Reset DMA Streamx control register */
 352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   hdma->Instance->CR   = 0U;
 353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 354:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Reset DMA Streamx number of data to transfer register */
 355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   hdma->Instance->NDTR = 0U;
 356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 357:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Reset DMA Streamx peripheral address register */
 358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   hdma->Instance->PAR  = 0U;
 359:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 360:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Reset DMA Streamx memory 0 address register */
 361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   hdma->Instance->M0AR = 0U;
 362:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Reset DMA Streamx memory 1 address register */
 364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   hdma->Instance->M1AR = 0U;
 365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Reset DMA Streamx FIFO control register */
 367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   hdma->Instance->FCR  = (uint32_t)0x00000021U;
 368:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Get DMA steam Base Address */  
 370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   regs = (DMA_Base_Registers *)DMA_CalcBaseAndBitshift(hdma);
 371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Clear all interrupt flags at correct offset within the register */
 373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   regs->IFCR = 0x3FU << hdma->StreamIndex;
 374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Initialize the error code */
 376:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 377:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 378:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Initialize the DMA state */
 379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   hdma->State = HAL_DMA_STATE_RESET;
 380:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 381:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Release Lock */
 382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   __HAL_UNLOCK(hdma);
 383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   return HAL_OK;
 385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
 386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 387:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
 388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @}
 389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
 390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /** @addtogroup DMA_Exported_Functions_Group2
 392:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *
 393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** @verbatim   
 394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****  ===============================================================================
 395:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****                       #####  IO operation functions  #####
 396:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****  ===============================================================================
 397:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     [..]  This section provides functions allowing to:
 398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       (+) Configure the source, destination address and data length and Start DMA transfer
 399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       (+) Configure the source, destination address and data length and 
 400:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           Start DMA transfer with interrupt
 401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       (+) Abort DMA transfer
 402:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       (+) Poll for transfer complete
 403:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       (+) Handle DMA interrupt request  
 404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 405:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** @endverbatim
 406:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @{
 407:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
 408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
 410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @brief  Starts the DMA Transfer.
 411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  hdma      : pointer to a DMA_HandleTypeDef structure that contains
 412:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *                     the configuration information for the specified DMA Stream.
 413:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  SrcAddress: The source memory Buffer address
 414:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  DstAddress: The destination memory Buffer address
 415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  DataLength: The length of data to be transferred from source to destination
 416:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @retval HAL status
 417:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
 418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_Start(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, 
 419:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** {
 420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Check the parameters */
 423:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   assert_param(IS_DMA_BUFFER_SIZE(DataLength));
 424:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Process locked */
 426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   __HAL_LOCK(hdma);
 427:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if(HAL_DMA_STATE_READY == hdma->State)
 429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 430:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Change DMA peripheral state */
 431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->State = HAL_DMA_STATE_BUSY;
 432:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 433:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Initialize the error code */
 434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 436:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Configure the source, destination address and the data length */
 437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     DMA_SetConfig(hdma, SrcAddress, DstAddress, DataLength);
 438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 439:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Enable the Peripheral */
 440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     __HAL_DMA_ENABLE(hdma);
 441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 442:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   else
 443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 444:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Process unlocked */
 445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Return error status */
 448:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     status = HAL_BUSY;
 449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   } 
 450:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   return status; 
 451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
 452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
 454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @brief  Start the DMA Transfer with interrupt enabled.
 455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  hdma:       pointer to a DMA_HandleTypeDef structure that contains
 456:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *                     the configuration information for the specified DMA Stream.  
 457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  SrcAddress: The source memory Buffer address
 458:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  DstAddress: The destination memory Buffer address
 459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  DataLength: The length of data to be transferred from source to destination
 460:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @retval HAL status
 461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
 462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_Start_IT(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddres
 463:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** {
 464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 465:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* calculate DMA base and stream number */
 467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   DMA_Base_Registers *regs = (DMA_Base_Registers *)hdma->StreamBaseAddress;
 468:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Check the parameters */
 470:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   assert_param(IS_DMA_BUFFER_SIZE(DataLength));
 471:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****  
 472:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Process locked */
 473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   __HAL_LOCK(hdma);
 474:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 475:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if(HAL_DMA_STATE_READY == hdma->State)
 476:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Change DMA peripheral state */
 478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->State = HAL_DMA_STATE_BUSY;
 479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Initialize the error code */
 481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NONE;
 482:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Configure the source, destination address and the data length */
 484:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     DMA_SetConfig(hdma, SrcAddress, DstAddress, DataLength);
 485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Clear all interrupt flags at correct offset within the register */
 487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     regs->IFCR = 0x3FU << hdma->StreamIndex;
 488:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 489:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Enable Common interrupts*/
 490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->Instance->CR  |= DMA_IT_TC | DMA_IT_TE | DMA_IT_DME;
 491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->Instance->FCR |= DMA_IT_FE;
 492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 493:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     if(hdma->XferHalfCpltCallback != NULL)
 494:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 495:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->Instance->CR  |= DMA_IT_HT;
 496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 497:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 498:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Enable the Peripheral */
 499:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     __HAL_DMA_ENABLE(hdma);
 500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   else
 502:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 503:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Process unlocked */
 504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     __HAL_UNLOCK(hdma);	  
 505:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 506:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Return error status */
 507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     status = HAL_BUSY;
 508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 509:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   return status;
 511:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
 512:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 513:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
 514:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @brief  Aborts the DMA Transfer.
 515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  hdma  : pointer to a DMA_HandleTypeDef structure that contains
 516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *                 the configuration information for the specified DMA Stream.
 517:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *                   
 518:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @note  After disabling a DMA Stream, a check for wait until the DMA Stream is 
 519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *        effectively disabled is added. If a Stream is disabled 
 520:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *        while a data transfer is ongoing, the current data will be transferred
 521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *        and the Stream will be effectively disabled only after the transfer of
 522:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *        this single data is finished.  
 523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @retval HAL status
 524:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
 525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_Abort(DMA_HandleTypeDef *hdma)
 526:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** {
 527:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* calculate DMA base and stream number */
 528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   DMA_Base_Registers *regs = (DMA_Base_Registers *)hdma->StreamBaseAddress;
 529:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 530:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t tickstart = HAL_GetTick();
 531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 532:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if(hdma->State != HAL_DMA_STATE_BUSY)
 533:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 534:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NO_XFER;
 535:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 536:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Process Unlocked */
 537:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 538:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 539:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     return HAL_ERROR;
 540:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 541:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   else
 542:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 543:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Disable all the transfer interrupts */
 544:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->Instance->CR  &= ~(DMA_IT_TC | DMA_IT_TE | DMA_IT_DME);
 545:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->Instance->FCR &= ~(DMA_IT_FE);
 546:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 547:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     if((hdma->XferHalfCpltCallback != NULL) || (hdma->XferM1HalfCpltCallback != NULL))
 548:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 549:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->Instance->CR  &= ~(DMA_IT_HT);
 550:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 552:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Disable the stream */
 553:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     __HAL_DMA_DISABLE(hdma);
 554:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 555:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Check if the DMA Stream is effectively disabled */
 556:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     while((hdma->Instance->CR & DMA_SxCR_EN) != RESET)
 557:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 558:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Check for the Timeout */
 559:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       if((HAL_GetTick() - tickstart ) > HAL_TIMEOUT_DMA_ABORT)
 560:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
 561:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         /* Update error code */
 562:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         hdma->ErrorCode = HAL_DMA_ERROR_TIMEOUT;
 563:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         
 564:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         /* Process Unlocked */
 565:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         __HAL_UNLOCK(hdma);
 566:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         
 567:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         /* Change the DMA state */
 568:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         hdma->State = HAL_DMA_STATE_TIMEOUT;
 569:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         
 570:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         return HAL_TIMEOUT;
 571:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
 572:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 573:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 574:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Clear all interrupt flags at correct offset within the register */
 575:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     regs->IFCR = 0x3FU << hdma->StreamIndex;
 576:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 577:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Process Unlocked */
 578:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 579:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 580:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Change the DMA state*/
 581:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->State = HAL_DMA_STATE_READY;
 582:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 583:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   return HAL_OK;
 584:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
 585:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 586:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
 587:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @brief  Aborts the DMA Transfer in Interrupt mode.
 588:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  hdma  : pointer to a DMA_HandleTypeDef structure that contains
 589:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *                 the configuration information for the specified DMA Stream.
 590:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @retval HAL status
 591:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
 592:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_Abort_IT(DMA_HandleTypeDef *hdma)
 593:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** {
 594:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if(hdma->State != HAL_DMA_STATE_BUSY)
 595:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 596:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NO_XFER;
 597:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     return HAL_ERROR;
 598:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 599:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   else
 600:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 601:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Set Abort State  */
 602:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->State = HAL_DMA_STATE_ABORT;
 603:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 604:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Disable the stream */
 605:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     __HAL_DMA_DISABLE(hdma);
 606:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 607:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 608:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   return HAL_OK;
 609:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
 610:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 611:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
 612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @brief  Polling for transfer complete.
 613:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  hdma:          pointer to a DMA_HandleTypeDef structure that contains
 614:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *                        the configuration information for the specified DMA Stream.
 615:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  CompleteLevel: Specifies the DMA level complete.
 616:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @note   The polling mode is kept in this version for legacy. it is recommanded to use the IT mo
 617:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *         This model could be used for debug purpose.
 618:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @note   The HAL_DMA_PollForTransfer API cannot be used in circular and double buffering mode (a
 619:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  Timeout:       Timeout duration.
 620:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @retval HAL status
 621:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
 622:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_PollForTransfer(DMA_HandleTypeDef *hdma, HAL_DMA_LevelCompleteTypeDef Com
 623:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** {
 624:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK; 
 625:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t mask_cpltlevel;
 626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t tickstart = HAL_GetTick(); 
 627:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t tmpisr;
 628:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 629:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* calculate DMA base and stream number */
 630:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   DMA_Base_Registers *regs;
 631:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 632:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if(HAL_DMA_STATE_BUSY != hdma->State)
 633:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 634:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* No transfer ongoing */
 635:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NO_XFER;
 636:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     return HAL_ERROR;
 638:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 639:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 640:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Polling mode not supported in circular mode and double buffering mode */
 641:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if ((hdma->Instance->CR & DMA_SxCR_CIRC) != RESET)
 642:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->ErrorCode = HAL_DMA_ERROR_NOT_SUPPORTED;
 644:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     return HAL_ERROR;
 645:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 646:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 647:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Get the level transfer complete flag */
 648:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if(CompleteLevel == HAL_DMA_FULL_TRANSFER)
 649:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 650:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Transfer Complete flag */
 651:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     mask_cpltlevel = DMA_FLAG_TCIF0_4 << hdma->StreamIndex;
 652:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 653:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   else
 654:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 655:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Half Transfer Complete flag */
 656:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     mask_cpltlevel = DMA_FLAG_HTIF0_4 << hdma->StreamIndex;
 657:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 658:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 659:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   regs = (DMA_Base_Registers *)hdma->StreamBaseAddress;
 660:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   tmpisr = regs->ISR;
 661:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 662:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   while(((tmpisr & mask_cpltlevel) == RESET) && ((hdma->ErrorCode & HAL_DMA_ERROR_TE) == RESET))
 663:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 664:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Check for the Timeout (Not applicable in circular mode)*/
 665:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     if(Timeout != HAL_MAX_DELAY)
 666:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 667:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
 668:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
 669:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         /* Update error code */
 670:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         hdma->ErrorCode = HAL_DMA_ERROR_TIMEOUT;
 671:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 672:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         /* Process Unlocked */
 673:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         __HAL_UNLOCK(hdma);
 674:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         
 675:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         /* Change the DMA state */
 676:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         hdma->State = HAL_DMA_STATE_READY;
 677:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         
 678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         return HAL_TIMEOUT;
 679:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
 680:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 681:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 682:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Get the ISR register value */
 683:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     tmpisr = regs->ISR;
 684:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 685:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     if((tmpisr & (DMA_FLAG_TEIF0_4 << hdma->StreamIndex)) != RESET)
 686:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 687:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Update error code */
 688:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->ErrorCode |= HAL_DMA_ERROR_TE;
 689:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 690:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Clear the transfer error flag */
 691:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       regs->IFCR = DMA_FLAG_TEIF0_4 << hdma->StreamIndex;
 692:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 693:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 694:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     if((tmpisr & (DMA_FLAG_FEIF0_4 << hdma->StreamIndex)) != RESET)
 695:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 696:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Update error code */
 697:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->ErrorCode |= HAL_DMA_ERROR_FE;
 698:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 699:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Clear the FIFO error flag */
 700:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       regs->IFCR = DMA_FLAG_FEIF0_4 << hdma->StreamIndex;
 701:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 702:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 703:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     if((tmpisr & (DMA_FLAG_DMEIF0_4 << hdma->StreamIndex)) != RESET)
 704:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 705:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Update error code */
 706:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->ErrorCode |= HAL_DMA_ERROR_DME;
 707:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 708:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Clear the Direct Mode error flag */
 709:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       regs->IFCR = DMA_FLAG_DMEIF0_4 << hdma->StreamIndex;
 710:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 711:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 712:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 713:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if(hdma->ErrorCode != HAL_DMA_ERROR_NONE)
 714:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 715:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     if((hdma->ErrorCode & HAL_DMA_ERROR_TE) != RESET)
 716:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 717:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       HAL_DMA_Abort(hdma);
 718:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 719:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Clear the half transfer and transfer complete flags */
 720:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       regs->IFCR = (DMA_FLAG_HTIF0_4 | DMA_FLAG_TCIF0_4) << hdma->StreamIndex;
 721:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 722:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Process Unlocked */
 723:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       __HAL_UNLOCK(hdma);
 724:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 725:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Change the DMA state */
 726:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->State= HAL_DMA_STATE_READY;
 727:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 728:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       return HAL_ERROR;
 729:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****    }
 730:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 731:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 732:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Get the level transfer complete flag */
 733:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if(CompleteLevel == HAL_DMA_FULL_TRANSFER)
 734:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 735:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Clear the half transfer and transfer complete flags */
 736:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     regs->IFCR = (DMA_FLAG_HTIF0_4 | DMA_FLAG_TCIF0_4) << hdma->StreamIndex;
 737:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 738:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Process Unlocked */
 739:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 740:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 741:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->State = HAL_DMA_STATE_READY;
 742:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 743:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   else
 744:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 745:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Clear the half transfer and transfer complete flags */
 746:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     regs->IFCR = (DMA_FLAG_HTIF0_4) << hdma->StreamIndex;
 747:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 748:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   return status;
 750:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
 751:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 752:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
 753:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @brief  Handles DMA interrupt request.
 754:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
 755:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *               the configuration information for the specified DMA Stream.  
 756:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @retval None
 757:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
 758:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** void HAL_DMA_IRQHandler(DMA_HandleTypeDef *hdma)
 759:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** {
 760:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t tmpisr;
 761:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   __IO uint32_t count = 0;
 762:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t timeout = SystemCoreClock / 9600;
 763:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 764:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* calculate DMA base and stream number */
 765:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   DMA_Base_Registers *regs = (DMA_Base_Registers *)hdma->StreamBaseAddress;
 766:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 767:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   tmpisr = regs->ISR;
 768:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 769:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Transfer Error Interrupt management ***************************************/
 770:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if ((tmpisr & (DMA_FLAG_TEIF0_4 << hdma->StreamIndex)) != RESET)
 771:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 772:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     if(__HAL_DMA_GET_IT_SOURCE(hdma, DMA_IT_TE) != RESET)
 773:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 774:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Disable the transfer error interrupt */
 775:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->Instance->CR  &= ~(DMA_IT_TE);
 776:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 777:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Clear the transfer error flag */
 778:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       regs->IFCR = DMA_FLAG_TEIF0_4 << hdma->StreamIndex;
 779:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 780:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Update error code */
 781:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->ErrorCode |= HAL_DMA_ERROR_TE;
 782:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 783:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 784:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* FIFO Error Interrupt management ******************************************/
 785:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if ((tmpisr & (DMA_FLAG_FEIF0_4 << hdma->StreamIndex)) != RESET)
 786:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 787:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     if(__HAL_DMA_GET_IT_SOURCE(hdma, DMA_IT_FE) != RESET)
 788:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 789:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Clear the FIFO error flag */
 790:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       regs->IFCR = DMA_FLAG_FEIF0_4 << hdma->StreamIndex;
 791:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 792:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Update error code */
 793:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->ErrorCode |= HAL_DMA_ERROR_FE;
 794:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 795:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 796:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Direct Mode Error Interrupt management ***********************************/
 797:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if ((tmpisr & (DMA_FLAG_DMEIF0_4 << hdma->StreamIndex)) != RESET)
 798:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 799:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     if(__HAL_DMA_GET_IT_SOURCE(hdma, DMA_IT_DME) != RESET)
 800:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 801:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Clear the direct mode error flag */
 802:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       regs->IFCR = DMA_FLAG_DMEIF0_4 << hdma->StreamIndex;
 803:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 804:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Update error code */
 805:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->ErrorCode |= HAL_DMA_ERROR_DME;
 806:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 807:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 808:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Half Transfer Complete Interrupt management ******************************/
 809:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if ((tmpisr & (DMA_FLAG_HTIF0_4 << hdma->StreamIndex)) != RESET)
 810:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 811:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     if(__HAL_DMA_GET_IT_SOURCE(hdma, DMA_IT_HT) != RESET)
 812:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 813:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Clear the half transfer complete flag */
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       regs->IFCR = DMA_FLAG_HTIF0_4 << hdma->StreamIndex;
 815:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 816:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Multi_Buffering mode enabled */
 817:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       if(((hdma->Instance->CR) & (uint32_t)(DMA_SxCR_DBM)) != RESET)
 818:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
 819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         /* Current memory buffer used is Memory 0 */
 820:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         if((hdma->Instance->CR & DMA_SxCR_CT) == RESET)
 821:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 822:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           if(hdma->XferHalfCpltCallback != NULL)
 823:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           {
 824:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****             /* Half transfer callback */
 825:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****             hdma->XferHalfCpltCallback(hdma);
 826:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           }
 827:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         }
 828:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         /* Current memory buffer used is Memory 1 */
 829:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         else
 830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 831:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           if(hdma->XferM1HalfCpltCallback != NULL)
 832:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           {
 833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****             /* Half transfer callback */
 834:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****             hdma->XferM1HalfCpltCallback(hdma);
 835:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           }
 836:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         }
 837:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
 838:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       else
 839:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
 840:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         /* Disable the half transfer interrupt if the DMA mode is not CIRCULAR */
 841:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         if((hdma->Instance->CR & DMA_SxCR_CIRC) == RESET)
 842:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 843:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           /* Disable the half transfer interrupt */
 844:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           hdma->Instance->CR  &= ~(DMA_IT_HT);
 845:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         }
 846:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         
 847:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         if(hdma->XferHalfCpltCallback != NULL)
 848:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 849:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           /* Half transfer callback */
 850:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           hdma->XferHalfCpltCallback(hdma);
 851:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         }
 852:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
 853:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 854:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 855:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Transfer Complete Interrupt management ***********************************/
 856:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if ((tmpisr & (DMA_FLAG_TCIF0_4 << hdma->StreamIndex)) != RESET)
 857:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 858:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     if(__HAL_DMA_GET_IT_SOURCE(hdma, DMA_IT_TC) != RESET)
 859:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 860:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Clear the transfer complete flag */
 861:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       regs->IFCR = DMA_FLAG_TCIF0_4 << hdma->StreamIndex;
 862:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 863:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       if(HAL_DMA_STATE_ABORT == hdma->State)
 864:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
 865:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         /* Disable all the transfer interrupts */
 866:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         hdma->Instance->CR  &= ~(DMA_IT_TC | DMA_IT_TE | DMA_IT_DME);
 867:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         hdma->Instance->FCR &= ~(DMA_IT_FE);
 868:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         
 869:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         if((hdma->XferHalfCpltCallback != NULL) || (hdma->XferM1HalfCpltCallback != NULL))
 870:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 871:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           hdma->Instance->CR  &= ~(DMA_IT_HT);
 872:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         }
 873:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 874:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         /* Clear all interrupt flags at correct offset within the register */
 875:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         regs->IFCR = 0x3FU << hdma->StreamIndex;
 876:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 877:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         /* Process Unlocked */
 878:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         __HAL_UNLOCK(hdma);
 879:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 880:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         /* Change the DMA state */
 881:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         hdma->State = HAL_DMA_STATE_READY;
 882:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 883:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         if(hdma->XferAbortCallback != NULL)
 884:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 885:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           hdma->XferAbortCallback(hdma);
 886:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         }
 887:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         return;
 888:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
 889:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 890:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       if(((hdma->Instance->CR) & (uint32_t)(DMA_SxCR_DBM)) != RESET)
 891:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
 892:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         /* Current memory buffer used is Memory 0 */
 893:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         if((hdma->Instance->CR & DMA_SxCR_CT) == RESET)
 894:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 895:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           if(hdma->XferM1CpltCallback != NULL)
 896:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           {
 897:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****             /* Transfer complete Callback for memory1 */
 898:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****             hdma->XferM1CpltCallback(hdma);
 899:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           }
 900:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         }
 901:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         /* Current memory buffer used is Memory 1 */
 902:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         else
 903:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 904:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           if(hdma->XferCpltCallback != NULL)
 905:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           {
 906:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****             /* Transfer complete Callback for memory0 */
 907:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****             hdma->XferCpltCallback(hdma);
 908:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           }
 909:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         }
 910:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
 911:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Disable the transfer complete interrupt if the DMA mode is not CIRCULAR */
 912:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       else
 913:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
 914:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         if((hdma->Instance->CR & DMA_SxCR_CIRC) == RESET)
 915:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 916:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           /* Disable the transfer complete interrupt */
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           hdma->Instance->CR  &= ~(DMA_IT_TC);
 918:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 919:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           /* Process Unlocked */
 920:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           __HAL_UNLOCK(hdma);
 921:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 922:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           /* Change the DMA state */
 923:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           hdma->State = HAL_DMA_STATE_READY;
 924:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         }
 925:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 926:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         if(hdma->XferCpltCallback != NULL)
 927:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 928:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           /* Transfer complete callback */
 929:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           hdma->XferCpltCallback(hdma);
 930:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         }
 931:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
 932:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 933:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 934:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 935:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* manage error case */
 936:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if(hdma->ErrorCode != HAL_DMA_ERROR_NONE)
 937:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 938:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     if((hdma->ErrorCode & HAL_DMA_ERROR_TE) != RESET)
 939:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 940:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->State = HAL_DMA_STATE_ABORT;
 941:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 942:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Disable the stream */
 943:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       __HAL_DMA_DISABLE(hdma);
 944:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 945:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       do
 946:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
 947:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         if (++count > timeout)
 948:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 949:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           break;
 950:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         }
 951:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
 952:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       while((hdma->Instance->CR & DMA_SxCR_EN) != RESET);
 953:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 954:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Process Unlocked */
 955:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       __HAL_UNLOCK(hdma);
 956:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 957:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Change the DMA state */
 958:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->State = HAL_DMA_STATE_READY;
 959:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 960:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 961:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     if(hdma->XferErrorCallback != NULL)
 962:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 963:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       /* Transfer error callback */
 964:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferErrorCallback(hdma);
 965:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 966:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 967:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
 968:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 969:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
 970:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @brief  Register callbacks
 971:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  hdma:                 pointer to a DMA_HandleTypeDef structure that contains
 972:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *                               the configuration information for the specified DMA Stream.
 973:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  CallbackID:           User Callback identifer
 974:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *                               a DMA_HandleTypeDef structure as parameter.
 975:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  pCallback:            pointer to private callbacsk function which has pointer to 
 976:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *                               a DMA_HandleTypeDef structure as parameter.
 977:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @retval HAL status
 978:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */                      
 979:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_RegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef Callb
 980:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** {
 981:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 983:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 984:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Process locked */
 985:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   __HAL_LOCK(hdma);
 986:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 987:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if(HAL_DMA_STATE_READY == hdma->State)
 988:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 989:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     switch (CallbackID)
 990:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 991:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case  HAL_DMA_XFER_CPLT_CB_ID:
 992:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferCpltCallback = pCallback;
 993:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
 994:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 995:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case  HAL_DMA_XFER_HALFCPLT_CB_ID:
 996:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferHalfCpltCallback = pCallback;
 997:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
 998:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 999:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case  HAL_DMA_XFER_M1CPLT_CB_ID:
1000:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferM1CpltCallback = pCallback;
1001:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1002:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1003:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case  HAL_DMA_XFER_M1HALFCPLT_CB_ID:
1004:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferM1HalfCpltCallback = pCallback;
1005:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1006:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1007:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case  HAL_DMA_XFER_ERROR_CB_ID:
1008:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferErrorCallback = pCallback;
1009:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1010:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1011:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case  HAL_DMA_XFER_ABORT_CB_ID:
1012:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferAbortCallback = pCallback;
1013:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1014:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1015:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     default:
1016:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1017:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
1018:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
1019:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   else
1020:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
1021:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Return error status */
1022:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     status =  HAL_ERROR;
1023:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
1024:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1025:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Release Lock */
1026:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   __HAL_UNLOCK(hdma);
1027:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
1028:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   return status;
1029:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
1030:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1031:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
1032:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @brief  UnRegister callbacks
1033:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  hdma:                 pointer to a DMA_HandleTypeDef structure that contains
1034:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *                               the configuration information for the specified DMA Stream.
1035:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  CallbackID:           User Callback identifer
1036:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *                               a HAL_DMA_CallbackIDTypeDef ENUM as parameter.
1037:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @retval HAL status
1038:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */              
1039:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** HAL_StatusTypeDef HAL_DMA_UnRegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef Cal
1040:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** {
1041:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
1042:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
1043:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Process locked */
1044:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   __HAL_LOCK(hdma);
1045:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
1046:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if(HAL_DMA_STATE_READY == hdma->State)
1047:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
1048:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     switch (CallbackID)
1049:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
1050:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case  HAL_DMA_XFER_CPLT_CB_ID:
1051:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferCpltCallback = NULL;
1052:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1053:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
1054:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case  HAL_DMA_XFER_HALFCPLT_CB_ID:
1055:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferHalfCpltCallback = NULL;
1056:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1057:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
1058:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case  HAL_DMA_XFER_M1CPLT_CB_ID:
1059:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferM1CpltCallback = NULL;
1060:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1061:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
1062:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case  HAL_DMA_XFER_M1HALFCPLT_CB_ID:
1063:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferM1HalfCpltCallback = NULL;
1064:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1065:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
1066:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case  HAL_DMA_XFER_ERROR_CB_ID:
1067:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferErrorCallback = NULL;
1068:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1069:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
1070:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case  HAL_DMA_XFER_ABORT_CB_ID:
1071:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferAbortCallback = NULL;
1072:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break; 
1073:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
1074:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case   HAL_DMA_XFER_ALL_CB_ID:
1075:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferCpltCallback = NULL;
1076:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferHalfCpltCallback = NULL;
1077:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferM1CpltCallback = NULL;
1078:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferM1HalfCpltCallback = NULL;
1079:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferErrorCallback = NULL;
1080:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferAbortCallback = NULL;
1081:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break; 
1082:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
1083:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     default:
1084:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       status = HAL_ERROR;
1085:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1086:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
1087:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
1088:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   else
1089:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
1090:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     status = HAL_ERROR;
1091:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
1092:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
1093:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Release Lock */
1094:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   __HAL_UNLOCK(hdma);
1095:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
1096:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   return status;
1097:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
1098:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1099:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
1100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @}
1101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
1102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /** @addtogroup DMA_Exported_Functions_Group3
1104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *
1105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** @verbatim
1106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****  ===============================================================================
1107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****                     ##### State and Errors functions #####
1108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****  ===============================================================================
1109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     [..]
1110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     This subsection provides functions allowing to
1111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       (+) Check the DMA state
1112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       (+) Get error code
1113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** @endverbatim
1115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @{
1116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
1117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
1119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @brief  Returns the DMA state.
1120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
1121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *               the configuration information for the specified DMA Stream.
1122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @retval HAL state
1123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
1124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** HAL_DMA_StateTypeDef HAL_DMA_GetState(DMA_HandleTypeDef *hdma)
1125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** {
1126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   return hdma->State;
1127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
1128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
1130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @brief  Return the DMA error code
1131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  hdma : pointer to a DMA_HandleTypeDef structure that contains
1132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *              the configuration information for the specified DMA Stream.
1133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @retval DMA Error Code
1134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
1135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** uint32_t HAL_DMA_GetError(DMA_HandleTypeDef *hdma)
1136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** {
1137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   return hdma->ErrorCode;
1138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
1139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
1141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @}
1142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
1143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
1145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @}
1146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
1147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /** @addtogroup DMA_Private_Functions
1149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @{
1150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
1151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
1153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @brief  Sets the DMA Transfer parameter.
1154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  hdma:       pointer to a DMA_HandleTypeDef structure that contains
1155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *                     the configuration information for the specified DMA Stream.
1156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  SrcAddress: The source memory Buffer address
1157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  DstAddress: The destination memory Buffer address
1158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  DataLength: The length of data to be transferred from source to destination
1159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @retval HAL status
1160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
1161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** static void DMA_SetConfig(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32
1162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** {
  26              		.loc 1 1162 0
  27              		.cfi_startproc
  28              		@ args = 0, pretend = 0, frame = 0
  29              		@ frame_needed = 0, uses_anonymous_args = 0
  30              		@ link register save eliminated.
  31              	.LVL0:
  32 0000 30B4     		push	{r4, r5}
  33              		.cfi_def_cfa_offset 8
  34              		.cfi_offset 4, -8
  35              		.cfi_offset 5, -4
1163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Clear DBM bit */
1164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   hdma->Instance->CR &= (uint32_t)(~DMA_SxCR_DBM);
  36              		.loc 1 1164 0
  37 0002 0568     		ldr	r5, [r0]
  38 0004 2C68     		ldr	r4, [r5]
  39 0006 24F48024 		bic	r4, r4, #262144
  40 000a 2C60     		str	r4, [r5]
1165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Configure DMA Stream data length */
1167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   hdma->Instance->NDTR = DataLength;
  41              		.loc 1 1167 0
  42 000c 0468     		ldr	r4, [r0]
  43 000e 6360     		str	r3, [r4, #4]
1168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Peripheral to Memory */
1170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if((hdma->Init.Direction) == DMA_MEMORY_TO_PERIPH)
  44              		.loc 1 1170 0
  45 0010 8368     		ldr	r3, [r0, #8]
  46              	.LVL1:
  47 0012 402B     		cmp	r3, #64
  48 0014 05D0     		beq	.L5
1171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
1172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Configure DMA Stream destination address */
1173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->Instance->PAR = DstAddress;
1174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Configure DMA Stream source address */
1176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->Instance->M0AR = SrcAddress;
1177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
1178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Memory to Peripheral */
1179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   else
1180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
1181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Configure DMA Stream source address */
1182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->Instance->PAR = SrcAddress;
  49              		.loc 1 1182 0
  50 0016 0368     		ldr	r3, [r0]
  51 0018 9960     		str	r1, [r3, #8]
  52              	.LVL2:
1183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* Configure DMA Stream destination address */
1185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->Instance->M0AR = DstAddress;
  53              		.loc 1 1185 0
  54 001a 0368     		ldr	r3, [r0]
  55 001c DA60     		str	r2, [r3, #12]
  56              	.L1:
1186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
1187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
  57              		.loc 1 1187 0
  58 001e 30BC     		pop	{r4, r5}
  59              		.cfi_remember_state
  60              		.cfi_restore 5
  61              		.cfi_restore 4
  62              		.cfi_def_cfa_offset 0
  63 0020 7047     		bx	lr
  64              	.LVL3:
  65              	.L5:
  66              		.cfi_restore_state
1173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
  67              		.loc 1 1173 0
  68 0022 0368     		ldr	r3, [r0]
  69 0024 9A60     		str	r2, [r3, #8]
  70              	.LVL4:
1176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
  71              		.loc 1 1176 0
  72 0026 0368     		ldr	r3, [r0]
  73 0028 D960     		str	r1, [r3, #12]
  74 002a F8E7     		b	.L1
  75              		.cfi_endproc
  76              	.LFE150:
  78              		.section	.text.DMA_CalcBaseAndBitshift,"ax",%progbits
  79              		.align	1
  80              		.syntax unified
  81              		.thumb
  82              		.thumb_func
  83              		.fpu fpv5-d16
  85              	DMA_CalcBaseAndBitshift:
  86              	.LFB151:
1188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
1190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @brief  Returns the DMA Stream base address depending on stream number
1191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  hdma:       pointer to a DMA_HandleTypeDef structure that contains
1192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *                     the configuration information for the specified DMA Stream. 
1193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @retval Stream base address
1194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
1195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** static uint32_t DMA_CalcBaseAndBitshift(DMA_HandleTypeDef *hdma)
1196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** {
  87              		.loc 1 1196 0
  88              		.cfi_startproc
  89              		@ args = 0, pretend = 0, frame = 0
  90              		@ frame_needed = 0, uses_anonymous_args = 0
  91              		@ link register save eliminated.
  92              	.LVL5:
1197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t stream_number = (((uint32_t)hdma->Instance & 0xFFU) - 16U) / 24U;
  93              		.loc 1 1197 0
  94 0000 0268     		ldr	r2, [r0]
  95 0002 D3B2     		uxtb	r3, r2
  96 0004 103B     		subs	r3, r3, #16
  97 0006 0949     		ldr	r1, .L10
  98 0008 A1FB0313 		umull	r1, r3, r1, r3
  99 000c 1B09     		lsrs	r3, r3, #4
 100              	.LVL6:
1198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
1199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* lookup table for necessary bitshift of flags within status registers */
1200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   static const uint8_t flagBitshiftOffset[8U] = {0U, 6U, 16U, 22U, 0U, 6U, 16U, 22U};
1201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   hdma->StreamIndex = flagBitshiftOffset[stream_number];
 101              		.loc 1 1201 0
 102 000e 0849     		ldr	r1, .L10+4
 103 0010 C95C     		ldrb	r1, [r1, r3]	@ zero_extendqisi2
 104 0012 C165     		str	r1, [r0, #92]
1202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
1203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if (stream_number > 3U)
 105              		.loc 1 1203 0
 106 0014 032B     		cmp	r3, #3
 107 0016 04D8     		bhi	.L9
1204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
1205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* return pointer to HISR and HIFCR */
1206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->StreamBaseAddress = (((uint32_t)hdma->Instance & (uint32_t)(~0x3FFU)) + 4U);
1207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
1208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   else
1209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
1210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     /* return pointer to LISR and LIFCR */
1211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->StreamBaseAddress = ((uint32_t)hdma->Instance & (uint32_t)(~0x3FFU));
 108              		.loc 1 1211 0
 109 0018 064B     		ldr	r3, .L10+8
 110              	.LVL7:
 111 001a 1340     		ands	r3, r3, r2
 112 001c 8365     		str	r3, [r0, #88]
 113              	.L8:
1212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
1213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
1214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   return hdma->StreamBaseAddress;
1215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
 114              		.loc 1 1215 0
 115 001e 806D     		ldr	r0, [r0, #88]
 116              	.LVL8:
 117 0020 7047     		bx	lr
 118              	.LVL9:
 119              	.L9:
1206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 120              		.loc 1 1206 0
 121 0022 044B     		ldr	r3, .L10+8
 122              	.LVL10:
 123 0024 1340     		ands	r3, r3, r2
 124 0026 0433     		adds	r3, r3, #4
 125 0028 8365     		str	r3, [r0, #88]
 126 002a F8E7     		b	.L8
 127              	.L11:
 128              		.align	2
 129              	.L10:
 130 002c ABAAAAAA 		.word	-1431655765
 131 0030 00000000 		.word	.LANCHOR0
 132 0034 00FCFFFF 		.word	-1024
 133              		.cfi_endproc
 134              	.LFE151:
 136              		.section	.text.DMA_CheckFifoParam,"ax",%progbits
 137              		.align	1
 138              		.syntax unified
 139              		.thumb
 140              		.thumb_func
 141              		.fpu fpv5-d16
 143              	DMA_CheckFifoParam:
 144              	.LFB152:
1216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
1217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** /**
1218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @brief  Check compatibility between FIFO threshold level and size of the memory burst
1219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @param  hdma:       pointer to a DMA_HandleTypeDef structure that contains
1220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   *                     the configuration information for the specified DMA Stream. 
1221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   * @retval HAL status
1222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   */
1223:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** static HAL_StatusTypeDef DMA_CheckFifoParam(DMA_HandleTypeDef *hdma)
1224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** {
 145              		.loc 1 1224 0
 146              		.cfi_startproc
 147              		@ args = 0, pretend = 0, frame = 0
 148              		@ frame_needed = 0, uses_anonymous_args = 0
 149              		@ link register save eliminated.
 150              	.LVL11:
1225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
1226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t tmp = hdma->Init.FIFOThreshold;
 151              		.loc 1 1226 0
 152 0000 836A     		ldr	r3, [r0, #40]
 153              	.LVL12:
1227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
1228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Memory Data size equal to Byte */
1229:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if(hdma->Init.MemDataAlignment == DMA_MDATAALIGN_BYTE)
 154              		.loc 1 1229 0
 155 0002 8269     		ldr	r2, [r0, #24]
 156 0004 92B9     		cbnz	r2, .L13
1230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
1231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     switch (tmp)
 157              		.loc 1 1231 0
 158 0006 012B     		cmp	r3, #1
 159 0008 0AD0     		beq	.L15
 160 000a 1BB1     		cbz	r3, .L16
 161 000c 022B     		cmp	r3, #2
 162 000e 01D0     		beq	.L16
1225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t tmp = hdma->Init.FIFOThreshold;
 163              		.loc 1 1225 0
 164 0010 0020     		movs	r0, #0
 165              	.LVL13:
 166 0012 7047     		bx	lr
 167              	.LVL14:
 168              	.L16:
1232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
1233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case DMA_FIFO_THRESHOLD_1QUARTERFULL:
1234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case DMA_FIFO_THRESHOLD_3QUARTERSFULL:
1235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
 169              		.loc 1 1235 0
 170 0014 C36A     		ldr	r3, [r0, #44]
 171              	.LVL15:
 172 0016 13F0807F 		tst	r3, #16777216
 173 001a 2CD1     		bne	.L25
1225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t tmp = hdma->Init.FIFOThreshold;
 174              		.loc 1 1225 0
 175 001c 0020     		movs	r0, #0
 176              	.LVL16:
 177 001e 7047     		bx	lr
 178              	.LVL17:
 179              	.L15:
1236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
1237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         status = HAL_ERROR;
1238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
1239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case DMA_FIFO_THRESHOLD_HALFFULL:
1241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       if (hdma->Init.MemBurst == DMA_MBURST_INC16)
 180              		.loc 1 1241 0
 181 0020 C36A     		ldr	r3, [r0, #44]
 182              	.LVL18:
 183 0022 B3F1C07F 		cmp	r3, #25165824
 184 0026 28D0     		beq	.L26
1225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t tmp = hdma->Init.FIFOThreshold;
 185              		.loc 1 1225 0
 186 0028 0020     		movs	r0, #0
 187              	.LVL19:
 188 002a 7047     		bx	lr
 189              	.LVL20:
 190              	.L13:
1242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
1243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         status = HAL_ERROR;
1244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
1245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case DMA_FIFO_THRESHOLD_FULL:
1247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     default:
1249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
1251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
1252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
1253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Memory Data size equal to Half-Word */
1254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   else if (hdma->Init.MemDataAlignment == DMA_MDATAALIGN_HALFWORD)
 191              		.loc 1 1254 0
 192 002c B2F5005F 		cmp	r2, #8192
 193 0030 05D0     		beq	.L33
1255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
1256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     switch (tmp)
1257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
1258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case DMA_FIFO_THRESHOLD_1QUARTERFULL:
1259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case DMA_FIFO_THRESHOLD_3QUARTERSFULL:
1260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       status = HAL_ERROR;
1261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case DMA_FIFO_THRESHOLD_HALFFULL:
1263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
1264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
1265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         status = HAL_ERROR;
1266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
1267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case DMA_FIFO_THRESHOLD_FULL:
1269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       if (hdma->Init.MemBurst == DMA_MBURST_INC16)
1270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
1271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         status = HAL_ERROR;
1272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
1273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;   
1274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     default:
1275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
1277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
1278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
1279:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* Memory Data size equal to Word */
1280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   else
1281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
1282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     switch (tmp)
 194              		.loc 1 1282 0
 195 0032 022B     		cmp	r3, #2
 196 0034 29D9     		bls	.L30
 197 0036 032B     		cmp	r3, #3
 198 0038 15D0     		beq	.L23
1225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t tmp = hdma->Init.FIFOThreshold;
 199              		.loc 1 1225 0
 200 003a 0020     		movs	r0, #0
 201              	.LVL21:
 202 003c 7047     		bx	lr
 203              	.LVL22:
 204              	.L33:
1256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 205              		.loc 1 1256 0
 206 003e 032B     		cmp	r3, #3
 207 0040 03D8     		bhi	.L18
 208 0042 DFE803F0 		tbb	[pc, r3]
 209              	.L19:
 210 0046 1C       		.byte	(.L27-.L19)/2
 211 0047 04       		.byte	(.L20-.L19)/2
 212 0048 1C       		.byte	(.L27-.L19)/2
 213 0049 0A       		.byte	(.L21-.L19)/2
 214              		.p2align 1
 215              	.L18:
1225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t tmp = hdma->Init.FIFOThreshold;
 216              		.loc 1 1225 0
 217 004a 0020     		movs	r0, #0
 218              	.LVL23:
 219 004c 7047     		bx	lr
 220              	.LVL24:
 221              	.L20:
1263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
 222              		.loc 1 1263 0
 223 004e C36A     		ldr	r3, [r0, #44]
 224              	.LVL25:
 225 0050 13F0807F 		tst	r3, #16777216
 226 0054 15D1     		bne	.L28
1225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t tmp = hdma->Init.FIFOThreshold;
 227              		.loc 1 1225 0
 228 0056 0020     		movs	r0, #0
 229              	.LVL26:
 230 0058 7047     		bx	lr
 231              	.LVL27:
 232              	.L21:
1269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
 233              		.loc 1 1269 0
 234 005a C36A     		ldr	r3, [r0, #44]
 235              	.LVL28:
 236 005c B3F1C07F 		cmp	r3, #25165824
 237 0060 11D0     		beq	.L29
1225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t tmp = hdma->Init.FIFOThreshold;
 238              		.loc 1 1225 0
 239 0062 0020     		movs	r0, #0
 240              	.LVL29:
 241 0064 7047     		bx	lr
 242              	.LVL30:
 243              	.L23:
1283:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
1284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case DMA_FIFO_THRESHOLD_1QUARTERFULL:
1285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case DMA_FIFO_THRESHOLD_HALFFULL:
1286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case DMA_FIFO_THRESHOLD_3QUARTERSFULL:
1287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       status = HAL_ERROR;
1288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     case DMA_FIFO_THRESHOLD_FULL:
1290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       if ((hdma->Init.MemBurst & DMA_SxCR_MBURST_1) == DMA_SxCR_MBURST_1)
 244              		.loc 1 1290 0
 245 0066 C36A     		ldr	r3, [r0, #44]
 246              	.LVL31:
 247 0068 13F0807F 		tst	r3, #16777216
 248 006c 01D0     		beq	.L34
1291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
1292:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         status = HAL_ERROR;
 249              		.loc 1 1292 0
 250 006e 0120     		movs	r0, #1
 251              	.LVL32:
1293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
1294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     default:
1296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
1297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
1298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   } 
1299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
1300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   return status; 
1301:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
 252              		.loc 1 1301 0
 253 0070 7047     		bx	lr
 254              	.LVL33:
 255              	.L34:
1225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t tmp = hdma->Init.FIFOThreshold;
 256              		.loc 1 1225 0
 257 0072 0020     		movs	r0, #0
 258              	.LVL34:
 259 0074 7047     		bx	lr
 260              	.LVL35:
 261              	.L25:
1237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
 262              		.loc 1 1237 0
 263 0076 0120     		movs	r0, #1
 264              	.LVL36:
 265 0078 7047     		bx	lr
 266              	.LVL37:
 267              	.L26:
1243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
 268              		.loc 1 1243 0
 269 007a 0120     		movs	r0, #1
 270              	.LVL38:
 271 007c 7047     		bx	lr
 272              	.LVL39:
 273              	.L27:
1260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
 274              		.loc 1 1260 0
 275 007e 0120     		movs	r0, #1
 276              	.LVL40:
 277 0080 7047     		bx	lr
 278              	.LVL41:
 279              	.L28:
1265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
 280              		.loc 1 1265 0
 281 0082 0120     		movs	r0, #1
 282              	.LVL42:
 283 0084 7047     		bx	lr
 284              	.LVL43:
 285              	.L29:
1271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
 286              		.loc 1 1271 0
 287 0086 0120     		movs	r0, #1
 288              	.LVL44:
 289 0088 7047     		bx	lr
 290              	.LVL45:
 291              	.L30:
1287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
 292              		.loc 1 1287 0
 293 008a 0120     		movs	r0, #1
 294              	.LVL46:
 295 008c 7047     		bx	lr
 296              		.cfi_endproc
 297              	.LFE152:
 299              		.section	.text.HAL_DMA_Init,"ax",%progbits
 300              		.align	1
 301              		.global	HAL_DMA_Init
 302              		.syntax unified
 303              		.thumb
 304              		.thumb_func
 305              		.fpu fpv5-d16
 307              	HAL_DMA_Init:
 308              	.LFB138:
 190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t tmp = 0U;
 309              		.loc 1 190 0
 310              		.cfi_startproc
 311              		@ args = 0, pretend = 0, frame = 0
 312              		@ frame_needed = 0, uses_anonymous_args = 0
 313              	.LVL47:
 314 0000 70B5     		push	{r4, r5, r6, lr}
 315              		.cfi_def_cfa_offset 16
 316              		.cfi_offset 4, -16
 317              		.cfi_offset 5, -12
 318              		.cfi_offset 6, -8
 319              		.cfi_offset 14, -4
 320 0002 0446     		mov	r4, r0
 321              	.LVL48:
 192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   DMA_Base_Registers *regs;
 322              		.loc 1 192 0
 323 0004 FFF7FEFF 		bl	HAL_GetTick
 324              	.LVL49:
 196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 325              		.loc 1 196 0
 326 0008 002C     		cmp	r4, #0
 327 000a 5BD0     		beq	.L41
 328 000c 0546     		mov	r5, r0
 222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 329              		.loc 1 222 0
 330 000e 0023     		movs	r3, #0
 331 0010 84F83430 		strb	r3, [r4, #52]
 225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 332              		.loc 1 225 0
 333 0014 0223     		movs	r3, #2
 334 0016 84F83530 		strb	r3, [r4, #53]
 228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 335              		.loc 1 228 0
 336 001a 2268     		ldr	r2, [r4]
 337 001c 1368     		ldr	r3, [r2]
 338 001e 23F00103 		bic	r3, r3, #1
 339 0022 1360     		str	r3, [r2]
 340              	.LVL50:
 341              	.L37:
 231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 342              		.loc 1 231 0
 343 0024 2368     		ldr	r3, [r4]
 344 0026 1A68     		ldr	r2, [r3]
 345 0028 12F0010F 		tst	r2, #1
 346 002c 0AD0     		beq	.L43
 234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 347              		.loc 1 234 0
 348 002e FFF7FEFF 		bl	HAL_GetTick
 349              	.LVL51:
 350 0032 401B     		subs	r0, r0, r5
 351 0034 0528     		cmp	r0, #5
 352 0036 F5D9     		bls	.L37
 237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 353              		.loc 1 237 0
 354 0038 2023     		movs	r3, #32
 355 003a 6365     		str	r3, [r4, #84]
 240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 356              		.loc 1 240 0
 357 003c 0320     		movs	r0, #3
 358 003e 84F83500 		strb	r0, [r4, #53]
 359              	.LVL52:
 360              	.L36:
 320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 361              		.loc 1 320 0
 362 0042 70BD     		pop	{r4, r5, r6, pc}
 363              	.LVL53:
 364              	.L43:
 247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 365              		.loc 1 247 0
 366 0044 1A68     		ldr	r2, [r3]
 367              	.LVL54:
 250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****                       DMA_SxCR_PL    | DMA_SxCR_MSIZE  | DMA_SxCR_PSIZE  | \
 368              		.loc 1 250 0
 369 0046 2048     		ldr	r0, .L46
 370 0048 1040     		ands	r0, r0, r2
 371              	.LVL55:
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 372              		.loc 1 256 0
 373 004a 6168     		ldr	r1, [r4, #4]
 374 004c A268     		ldr	r2, [r4, #8]
 375 004e 0A43     		orrs	r2, r2, r1
 257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 376              		.loc 1 257 0
 377 0050 E168     		ldr	r1, [r4, #12]
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 378              		.loc 1 256 0
 379 0052 0A43     		orrs	r2, r2, r1
 257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 380              		.loc 1 257 0
 381 0054 2169     		ldr	r1, [r4, #16]
 382 0056 0A43     		orrs	r2, r2, r1
 258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           hdma->Init.Mode                | hdma->Init.Priority;
 383              		.loc 1 258 0
 384 0058 6169     		ldr	r1, [r4, #20]
 257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           hdma->Init.PeriphDataAlignment | hdma->Init.MemDataAlignment |
 385              		.loc 1 257 0
 386 005a 0A43     		orrs	r2, r2, r1
 258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           hdma->Init.Mode                | hdma->Init.Priority;
 387              		.loc 1 258 0
 388 005c A169     		ldr	r1, [r4, #24]
 389 005e 0A43     		orrs	r2, r2, r1
 259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 390              		.loc 1 259 0
 391 0060 E169     		ldr	r1, [r4, #28]
 258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           hdma->Init.Mode                | hdma->Init.Priority;
 392              		.loc 1 258 0
 393 0062 0A43     		orrs	r2, r2, r1
 259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 394              		.loc 1 259 0
 395 0064 216A     		ldr	r1, [r4, #32]
 396 0066 0A43     		orrs	r2, r2, r1
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           hdma->Init.PeriphInc           | hdma->Init.MemInc           |
 397              		.loc 1 256 0
 398 0068 0243     		orrs	r2, r2, r0
 399              	.LVL56:
 262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 400              		.loc 1 262 0
 401 006a 616A     		ldr	r1, [r4, #36]
 402 006c 0429     		cmp	r1, #4
 403 006e 1ED0     		beq	.L44
 404              	.L39:
 269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 405              		.loc 1 269 0
 406 0070 1A60     		str	r2, [r3]
 272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 407              		.loc 1 272 0
 408 0072 2668     		ldr	r6, [r4]
 409 0074 7569     		ldr	r5, [r6, #20]
 410              	.LVL57:
 275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 411              		.loc 1 275 0
 412 0076 25F00705 		bic	r5, r5, #7
 413              	.LVL58:
 278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 414              		.loc 1 278 0
 415 007a 636A     		ldr	r3, [r4, #36]
 416 007c 1D43     		orrs	r5, r5, r3
 417              	.LVL59:
 281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 418              		.loc 1 281 0
 419 007e 042B     		cmp	r3, #4
 420 0080 07D1     		bne	.L40
 284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 421              		.loc 1 284 0
 422 0082 A36A     		ldr	r3, [r4, #40]
 423 0084 1D43     		orrs	r5, r5, r3
 424              	.LVL60:
 288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 425              		.loc 1 288 0
 426 0086 E36A     		ldr	r3, [r4, #44]
 427 0088 1BB1     		cbz	r3, .L40
 290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
 428              		.loc 1 290 0
 429 008a 2046     		mov	r0, r4
 430 008c FFF7FEFF 		bl	DMA_CheckFifoParam
 431              	.LVL61:
 432 0090 90B9     		cbnz	r0, .L45
 433              	.L40:
 304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 434              		.loc 1 304 0
 435 0092 7561     		str	r5, [r6, #20]
 308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 436              		.loc 1 308 0
 437 0094 2046     		mov	r0, r4
 438 0096 FFF7FEFF 		bl	DMA_CalcBaseAndBitshift
 439              	.LVL62:
 311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 440              		.loc 1 311 0
 441 009a E26D     		ldr	r2, [r4, #92]
 442 009c 3F23     		movs	r3, #63
 443 009e 9340     		lsls	r3, r3, r2
 444 00a0 8360     		str	r3, [r0, #8]
 314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****                                                                                      
 445              		.loc 1 314 0
 446 00a2 0020     		movs	r0, #0
 447              	.LVL63:
 448 00a4 6065     		str	r0, [r4, #84]
 317:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 449              		.loc 1 317 0
 450 00a6 0123     		movs	r3, #1
 451 00a8 84F83530 		strb	r3, [r4, #53]
 319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
 452              		.loc 1 319 0
 453 00ac C9E7     		b	.L36
 454              	.LVL64:
 455              	.L44:
 265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 456              		.loc 1 265 0
 457 00ae E16A     		ldr	r1, [r4, #44]
 458 00b0 206B     		ldr	r0, [r4, #48]
 459 00b2 0143     		orrs	r1, r1, r0
 460 00b4 0A43     		orrs	r2, r2, r1
 461              	.LVL65:
 462 00b6 DBE7     		b	.L39
 463              	.LVL66:
 464              	.L45:
 293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         
 465              		.loc 1 293 0
 466 00b8 4023     		movs	r3, #64
 467 00ba 6365     		str	r3, [r4, #84]
 296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         
 468              		.loc 1 296 0
 469 00bc 0120     		movs	r0, #1
 470 00be 84F83500 		strb	r0, [r4, #53]
 298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
 471              		.loc 1 298 0
 472 00c2 BEE7     		b	.L36
 473              	.LVL67:
 474              	.L41:
 198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 475              		.loc 1 198 0
 476 00c4 0120     		movs	r0, #1
 477              	.LVL68:
 478 00c6 BCE7     		b	.L36
 479              	.L47:
 480              		.align	2
 481              	.L46:
 482 00c8 3F8010E0 		.word	-535789505
 483              		.cfi_endproc
 484              	.LFE138:
 486              		.section	.text.HAL_DMA_DeInit,"ax",%progbits
 487              		.align	1
 488              		.global	HAL_DMA_DeInit
 489              		.syntax unified
 490              		.thumb
 491              		.thumb_func
 492              		.fpu fpv5-d16
 494              	HAL_DMA_DeInit:
 495              	.LFB139:
 329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   DMA_Base_Registers *regs;
 496              		.loc 1 329 0
 497              		.cfi_startproc
 498              		@ args = 0, pretend = 0, frame = 0
 499              		@ frame_needed = 0, uses_anonymous_args = 0
 500              	.LVL69:
 333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 501              		.loc 1 333 0
 502 0000 30B3     		cbz	r0, .L50
 329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   DMA_Base_Registers *regs;
 503              		.loc 1 329 0
 504 0002 38B5     		push	{r3, r4, r5, lr}
 505              		.cfi_def_cfa_offset 16
 506              		.cfi_offset 3, -16
 507              		.cfi_offset 4, -12
 508              		.cfi_offset 5, -8
 509              		.cfi_offset 14, -4
 510 0004 0446     		mov	r4, r0
 339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 511              		.loc 1 339 0
 512 0006 90F83530 		ldrb	r3, [r0, #53]	@ zero_extendqisi2
 513 000a DBB2     		uxtb	r3, r3
 514 000c 022B     		cmp	r3, #2
 515 000e 21D0     		beq	.L51
 349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 516              		.loc 1 349 0
 517 0010 0268     		ldr	r2, [r0]
 518 0012 1368     		ldr	r3, [r2]
 519 0014 23F00103 		bic	r3, r3, #1
 520 0018 1360     		str	r3, [r2]
 352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 521              		.loc 1 352 0
 522 001a 0368     		ldr	r3, [r0]
 523 001c 0025     		movs	r5, #0
 524 001e 1D60     		str	r5, [r3]
 355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 525              		.loc 1 355 0
 526 0020 0368     		ldr	r3, [r0]
 527 0022 5D60     		str	r5, [r3, #4]
 358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 528              		.loc 1 358 0
 529 0024 0368     		ldr	r3, [r0]
 530 0026 9D60     		str	r5, [r3, #8]
 361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 531              		.loc 1 361 0
 532 0028 0368     		ldr	r3, [r0]
 533 002a DD60     		str	r5, [r3, #12]
 364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 534              		.loc 1 364 0
 535 002c 0368     		ldr	r3, [r0]
 536 002e 1D61     		str	r5, [r3, #16]
 367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 537              		.loc 1 367 0
 538 0030 0368     		ldr	r3, [r0]
 539 0032 2122     		movs	r2, #33
 540 0034 5A61     		str	r2, [r3, #20]
 370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 541              		.loc 1 370 0
 542 0036 FFF7FEFF 		bl	DMA_CalcBaseAndBitshift
 543              	.LVL70:
 373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 544              		.loc 1 373 0
 545 003a E26D     		ldr	r2, [r4, #92]
 546 003c 3F23     		movs	r3, #63
 547 003e 9340     		lsls	r3, r3, r2
 548 0040 8360     		str	r3, [r0, #8]
 376:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 549              		.loc 1 376 0
 550 0042 6565     		str	r5, [r4, #84]
 379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 551              		.loc 1 379 0
 552 0044 84F83550 		strb	r5, [r4, #53]
 382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 553              		.loc 1 382 0
 554 0048 84F83450 		strb	r5, [r4, #52]
 384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
 555              		.loc 1 384 0
 556 004c 2846     		mov	r0, r5
 557              	.LVL71:
 558              	.L49:
 385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 559              		.loc 1 385 0
 560 004e 38BD     		pop	{r3, r4, r5, pc}
 561              	.LVL72:
 562              	.L50:
 563              		.cfi_def_cfa_offset 0
 564              		.cfi_restore 3
 565              		.cfi_restore 4
 566              		.cfi_restore 5
 567              		.cfi_restore 14
 335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 568              		.loc 1 335 0
 569 0050 0120     		movs	r0, #1
 570              	.LVL73:
 385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 571              		.loc 1 385 0
 572 0052 7047     		bx	lr
 573              	.LVL74:
 574              	.L51:
 575              		.cfi_def_cfa_offset 16
 576              		.cfi_offset 3, -16
 577              		.cfi_offset 4, -12
 578              		.cfi_offset 5, -8
 579              		.cfi_offset 14, -4
 342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 580              		.loc 1 342 0
 581 0054 0220     		movs	r0, #2
 582              	.LVL75:
 583 0056 FAE7     		b	.L49
 584              		.cfi_endproc
 585              	.LFE139:
 587              		.section	.text.HAL_DMA_Start,"ax",%progbits
 588              		.align	1
 589              		.global	HAL_DMA_Start
 590              		.syntax unified
 591              		.thumb
 592              		.thumb_func
 593              		.fpu fpv5-d16
 595              	HAL_DMA_Start:
 596              	.LFB140:
 419:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 597              		.loc 1 419 0
 598              		.cfi_startproc
 599              		@ args = 0, pretend = 0, frame = 0
 600              		@ frame_needed = 0, uses_anonymous_args = 0
 601              	.LVL76:
 602 0000 38B5     		push	{r3, r4, r5, lr}
 603              		.cfi_def_cfa_offset 16
 604              		.cfi_offset 3, -16
 605              		.cfi_offset 4, -12
 606              		.cfi_offset 5, -8
 607              		.cfi_offset 14, -4
 608              	.LVL77:
 426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 609              		.loc 1 426 0
 610 0002 90F83440 		ldrb	r4, [r0, #52]	@ zero_extendqisi2
 611 0006 012C     		cmp	r4, #1
 612 0008 1CD0     		beq	.L59
 426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 613              		.loc 1 426 0 is_stmt 0 discriminator 2
 614 000a 0124     		movs	r4, #1
 615 000c 80F83440 		strb	r4, [r0, #52]
 428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 616              		.loc 1 428 0 is_stmt 1 discriminator 2
 617 0010 90F83540 		ldrb	r4, [r0, #53]	@ zero_extendqisi2
 618 0014 E4B2     		uxtb	r4, r4
 619 0016 012C     		cmp	r4, #1
 620 0018 04D0     		beq	.L61
 445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 621              		.loc 1 445 0
 622 001a 0023     		movs	r3, #0
 623              	.LVL78:
 624 001c 80F83430 		strb	r3, [r0, #52]
 625              	.LVL79:
 448:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   } 
 626              		.loc 1 448 0
 627 0020 0220     		movs	r0, #2
 628              	.LVL80:
 629              	.L57:
 451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 630              		.loc 1 451 0
 631 0022 38BD     		pop	{r3, r4, r5, pc}
 632              	.LVL81:
 633              	.L61:
 634 0024 0546     		mov	r5, r0
 431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 635              		.loc 1 431 0
 636 0026 0220     		movs	r0, #2
 637              	.LVL82:
 638 0028 85F83500 		strb	r0, [r5, #53]
 434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 639              		.loc 1 434 0
 640 002c 0024     		movs	r4, #0
 641 002e 6C65     		str	r4, [r5, #84]
 437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 642              		.loc 1 437 0
 643 0030 2846     		mov	r0, r5
 644 0032 FFF7FEFF 		bl	DMA_SetConfig
 645              	.LVL83:
 440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 646              		.loc 1 440 0
 647 0036 2A68     		ldr	r2, [r5]
 648 0038 1368     		ldr	r3, [r2]
 649 003a 43F00103 		orr	r3, r3, #1
 650 003e 1360     		str	r3, [r2]
 420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 651              		.loc 1 420 0
 652 0040 2046     		mov	r0, r4
 653 0042 EEE7     		b	.L57
 654              	.LVL84:
 655              	.L59:
 426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 656              		.loc 1 426 0
 657 0044 0220     		movs	r0, #2
 658              	.LVL85:
 659 0046 ECE7     		b	.L57
 660              		.cfi_endproc
 661              	.LFE140:
 663              		.section	.text.HAL_DMA_Start_IT,"ax",%progbits
 664              		.align	1
 665              		.global	HAL_DMA_Start_IT
 666              		.syntax unified
 667              		.thumb
 668              		.thumb_func
 669              		.fpu fpv5-d16
 671              	HAL_DMA_Start_IT:
 672              	.LFB141:
 463:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 673              		.loc 1 463 0
 674              		.cfi_startproc
 675              		@ args = 0, pretend = 0, frame = 0
 676              		@ frame_needed = 0, uses_anonymous_args = 0
 677              	.LVL86:
 678 0000 38B5     		push	{r3, r4, r5, lr}
 679              		.cfi_def_cfa_offset 16
 680              		.cfi_offset 3, -16
 681              		.cfi_offset 4, -12
 682              		.cfi_offset 5, -8
 683              		.cfi_offset 14, -4
 684              	.LVL87:
 467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 685              		.loc 1 467 0
 686 0002 856D     		ldr	r5, [r0, #88]
 687              	.LVL88:
 473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 688              		.loc 1 473 0
 689 0004 90F83440 		ldrb	r4, [r0, #52]	@ zero_extendqisi2
 690 0008 012C     		cmp	r4, #1
 691 000a 31D0     		beq	.L66
 473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 692              		.loc 1 473 0 is_stmt 0 discriminator 2
 693 000c 0124     		movs	r4, #1
 694 000e 80F83440 		strb	r4, [r0, #52]
 475:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 695              		.loc 1 475 0 is_stmt 1 discriminator 2
 696 0012 90F83540 		ldrb	r4, [r0, #53]	@ zero_extendqisi2
 697 0016 E4B2     		uxtb	r4, r4
 698 0018 012C     		cmp	r4, #1
 699 001a 04D0     		beq	.L68
 504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 700              		.loc 1 504 0
 701 001c 0023     		movs	r3, #0
 702              	.LVL89:
 703 001e 80F83430 		strb	r3, [r0, #52]
 704              	.LVL90:
 507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 705              		.loc 1 507 0
 706 0022 0220     		movs	r0, #2
 707              	.LVL91:
 708              	.L63:
 511:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 709              		.loc 1 511 0
 710 0024 38BD     		pop	{r3, r4, r5, pc}
 711              	.LVL92:
 712              	.L68:
 713 0026 0446     		mov	r4, r0
 478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 714              		.loc 1 478 0
 715 0028 0220     		movs	r0, #2
 716              	.LVL93:
 717 002a 84F83500 		strb	r0, [r4, #53]
 481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 718              		.loc 1 481 0
 719 002e 0020     		movs	r0, #0
 720 0030 6065     		str	r0, [r4, #84]
 484:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 721              		.loc 1 484 0
 722 0032 2046     		mov	r0, r4
 723 0034 FFF7FEFF 		bl	DMA_SetConfig
 724              	.LVL94:
 487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 725              		.loc 1 487 0
 726 0038 E26D     		ldr	r2, [r4, #92]
 727 003a 3F23     		movs	r3, #63
 728 003c 9340     		lsls	r3, r3, r2
 729 003e AB60     		str	r3, [r5, #8]
 490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->Instance->FCR |= DMA_IT_FE;
 730              		.loc 1 490 0
 731 0040 2268     		ldr	r2, [r4]
 732 0042 1368     		ldr	r3, [r2]
 733 0044 43F01603 		orr	r3, r3, #22
 734 0048 1360     		str	r3, [r2]
 491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 735              		.loc 1 491 0
 736 004a 2268     		ldr	r2, [r4]
 737 004c 5369     		ldr	r3, [r2, #20]
 738 004e 43F08003 		orr	r3, r3, #128
 739 0052 5361     		str	r3, [r2, #20]
 493:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 740              		.loc 1 493 0
 741 0054 236C     		ldr	r3, [r4, #64]
 742 0056 23B1     		cbz	r3, .L65
 495:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 743              		.loc 1 495 0
 744 0058 2268     		ldr	r2, [r4]
 745 005a 1368     		ldr	r3, [r2]
 746 005c 43F00803 		orr	r3, r3, #8
 747 0060 1360     		str	r3, [r2]
 748              	.L65:
 499:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 749              		.loc 1 499 0
 750 0062 2268     		ldr	r2, [r4]
 751 0064 1368     		ldr	r3, [r2]
 752 0066 43F00103 		orr	r3, r3, #1
 753 006a 1360     		str	r3, [r2]
 464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 754              		.loc 1 464 0
 755 006c 0020     		movs	r0, #0
 756 006e D9E7     		b	.L63
 757              	.LVL95:
 758              	.L66:
 473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 759              		.loc 1 473 0
 760 0070 0220     		movs	r0, #2
 761              	.LVL96:
 762 0072 D7E7     		b	.L63
 763              		.cfi_endproc
 764              	.LFE141:
 766              		.section	.text.HAL_DMA_Abort,"ax",%progbits
 767              		.align	1
 768              		.global	HAL_DMA_Abort
 769              		.syntax unified
 770              		.thumb
 771              		.thumb_func
 772              		.fpu fpv5-d16
 774              	HAL_DMA_Abort:
 775              	.LFB142:
 526:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   /* calculate DMA base and stream number */
 776              		.loc 1 526 0
 777              		.cfi_startproc
 778              		@ args = 0, pretend = 0, frame = 0
 779              		@ frame_needed = 0, uses_anonymous_args = 0
 780              	.LVL97:
 781 0000 70B5     		push	{r4, r5, r6, lr}
 782              		.cfi_def_cfa_offset 16
 783              		.cfi_offset 4, -16
 784              		.cfi_offset 5, -12
 785              		.cfi_offset 6, -8
 786              		.cfi_offset 14, -4
 787 0002 0446     		mov	r4, r0
 528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 788              		.loc 1 528 0
 789 0004 866D     		ldr	r6, [r0, #88]
 790              	.LVL98:
 530:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 791              		.loc 1 530 0
 792 0006 FFF7FEFF 		bl	HAL_GetTick
 793              	.LVL99:
 532:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 794              		.loc 1 532 0
 795 000a 94F83530 		ldrb	r3, [r4, #53]	@ zero_extendqisi2
 796 000e DBB2     		uxtb	r3, r3
 797 0010 022B     		cmp	r3, #2
 798 0012 06D0     		beq	.L70
 534:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 799              		.loc 1 534 0
 800 0014 8023     		movs	r3, #128
 801 0016 6365     		str	r3, [r4, #84]
 537:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 802              		.loc 1 537 0
 803 0018 0023     		movs	r3, #0
 804 001a 84F83430 		strb	r3, [r4, #52]
 539:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 805              		.loc 1 539 0
 806 001e 0120     		movs	r0, #1
 807              	.LVL100:
 808              	.L71:
 584:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 809              		.loc 1 584 0
 810 0020 70BD     		pop	{r4, r5, r6, pc}
 811              	.LVL101:
 812              	.L70:
 813 0022 0546     		mov	r5, r0
 544:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     hdma->Instance->FCR &= ~(DMA_IT_FE);
 814              		.loc 1 544 0
 815 0024 2268     		ldr	r2, [r4]
 816 0026 1368     		ldr	r3, [r2]
 817 0028 23F01603 		bic	r3, r3, #22
 818 002c 1360     		str	r3, [r2]
 545:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 819              		.loc 1 545 0
 820 002e 2268     		ldr	r2, [r4]
 821 0030 5369     		ldr	r3, [r2, #20]
 822 0032 23F08003 		bic	r3, r3, #128
 823 0036 5361     		str	r3, [r2, #20]
 547:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 824              		.loc 1 547 0
 825 0038 236C     		ldr	r3, [r4, #64]
 826 003a E3B1     		cbz	r3, .L77
 827              	.L72:
 549:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 828              		.loc 1 549 0
 829 003c 2268     		ldr	r2, [r4]
 830 003e 1368     		ldr	r3, [r2]
 831 0040 23F00803 		bic	r3, r3, #8
 832 0044 1360     		str	r3, [r2]
 833              	.L73:
 553:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 834              		.loc 1 553 0
 835 0046 2268     		ldr	r2, [r4]
 836 0048 1368     		ldr	r3, [r2]
 837 004a 23F00103 		bic	r3, r3, #1
 838 004e 1360     		str	r3, [r2]
 839              	.LVL102:
 840              	.L74:
 556:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 841              		.loc 1 556 0
 842 0050 2368     		ldr	r3, [r4]
 843 0052 1B68     		ldr	r3, [r3]
 844 0054 13F0010F 		tst	r3, #1
 845 0058 11D0     		beq	.L78
 559:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
 846              		.loc 1 559 0
 847 005a FFF7FEFF 		bl	HAL_GetTick
 848              	.LVL103:
 849 005e 401B     		subs	r0, r0, r5
 850 0060 0528     		cmp	r0, #5
 851 0062 F5D9     		bls	.L74
 562:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         
 852              		.loc 1 562 0
 853 0064 2023     		movs	r3, #32
 854 0066 6365     		str	r3, [r4, #84]
 565:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         
 855              		.loc 1 565 0
 856 0068 0023     		movs	r3, #0
 857 006a 84F83430 		strb	r3, [r4, #52]
 568:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         
 858              		.loc 1 568 0
 859 006e 0320     		movs	r0, #3
 860 0070 84F83500 		strb	r0, [r4, #53]
 570:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
 861              		.loc 1 570 0
 862 0074 D4E7     		b	.L71
 863              	.LVL104:
 864              	.L77:
 547:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 865              		.loc 1 547 0 discriminator 1
 866 0076 A36C     		ldr	r3, [r4, #72]
 867 0078 002B     		cmp	r3, #0
 868 007a DFD1     		bne	.L72
 869 007c E3E7     		b	.L73
 870              	.LVL105:
 871              	.L78:
 575:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 872              		.loc 1 575 0
 873 007e E26D     		ldr	r2, [r4, #92]
 874 0080 3F23     		movs	r3, #63
 875 0082 9340     		lsls	r3, r3, r2
 876 0084 B360     		str	r3, [r6, #8]
 578:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 877              		.loc 1 578 0
 878 0086 0020     		movs	r0, #0
 879 0088 84F83400 		strb	r0, [r4, #52]
 581:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 880              		.loc 1 581 0
 881 008c 0123     		movs	r3, #1
 882 008e 84F83530 		strb	r3, [r4, #53]
 583:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
 883              		.loc 1 583 0
 884 0092 C5E7     		b	.L71
 885              		.cfi_endproc
 886              	.LFE142:
 888              		.section	.text.HAL_DMA_Abort_IT,"ax",%progbits
 889              		.align	1
 890              		.global	HAL_DMA_Abort_IT
 891              		.syntax unified
 892              		.thumb
 893              		.thumb_func
 894              		.fpu fpv5-d16
 896              	HAL_DMA_Abort_IT:
 897              	.LFB143:
 593:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   if(hdma->State != HAL_DMA_STATE_BUSY)
 898              		.loc 1 593 0
 899              		.cfi_startproc
 900              		@ args = 0, pretend = 0, frame = 0
 901              		@ frame_needed = 0, uses_anonymous_args = 0
 902              		@ link register save eliminated.
 903              	.LVL106:
 594:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 904              		.loc 1 594 0
 905 0000 90F83530 		ldrb	r3, [r0, #53]	@ zero_extendqisi2
 906 0004 DBB2     		uxtb	r3, r3
 907 0006 022B     		cmp	r3, #2
 908 0008 03D0     		beq	.L80
 596:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     return HAL_ERROR;
 909              		.loc 1 596 0
 910 000a 8023     		movs	r3, #128
 911 000c 4365     		str	r3, [r0, #84]
 597:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 912              		.loc 1 597 0
 913 000e 0120     		movs	r0, #1
 914              	.LVL107:
 915 0010 7047     		bx	lr
 916              	.LVL108:
 917              	.L80:
 602:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 918              		.loc 1 602 0
 919 0012 0523     		movs	r3, #5
 920 0014 80F83530 		strb	r3, [r0, #53]
 605:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 921              		.loc 1 605 0
 922 0018 0268     		ldr	r2, [r0]
 923 001a 1368     		ldr	r3, [r2]
 924 001c 23F00103 		bic	r3, r3, #1
 925 0020 1360     		str	r3, [r2]
 608:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
 926              		.loc 1 608 0
 927 0022 0020     		movs	r0, #0
 928              	.LVL109:
 609:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 929              		.loc 1 609 0
 930 0024 7047     		bx	lr
 931              		.cfi_endproc
 932              	.LFE143:
 934              		.section	.text.HAL_DMA_PollForTransfer,"ax",%progbits
 935              		.align	1
 936              		.global	HAL_DMA_PollForTransfer
 937              		.syntax unified
 938              		.thumb
 939              		.thumb_func
 940              		.fpu fpv5-d16
 942              	HAL_DMA_PollForTransfer:
 943              	.LFB144:
 623:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK; 
 944              		.loc 1 623 0
 945              		.cfi_startproc
 946              		@ args = 0, pretend = 0, frame = 0
 947              		@ frame_needed = 0, uses_anonymous_args = 0
 948              	.LVL110:
 949 0000 2DE9F843 		push	{r3, r4, r5, r6, r7, r8, r9, lr}
 950              		.cfi_def_cfa_offset 32
 951              		.cfi_offset 3, -32
 952              		.cfi_offset 4, -28
 953              		.cfi_offset 5, -24
 954              		.cfi_offset 6, -20
 955              		.cfi_offset 7, -16
 956              		.cfi_offset 8, -12
 957              		.cfi_offset 9, -8
 958              		.cfi_offset 14, -4
 959 0004 0446     		mov	r4, r0
 960 0006 8946     		mov	r9, r1
 961 0008 1546     		mov	r5, r2
 962              	.LVL111:
 626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t tmpisr;
 963              		.loc 1 626 0
 964 000a FFF7FEFF 		bl	HAL_GetTick
 965              	.LVL112:
 632:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 966              		.loc 1 632 0
 967 000e 94F83530 		ldrb	r3, [r4, #53]	@ zero_extendqisi2
 968 0012 DBB2     		uxtb	r3, r3
 969 0014 022B     		cmp	r3, #2
 970 0016 07D0     		beq	.L83
 635:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     __HAL_UNLOCK(hdma);
 971              		.loc 1 635 0
 972 0018 8023     		movs	r3, #128
 973 001a 6365     		str	r3, [r4, #84]
 636:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     return HAL_ERROR;
 974              		.loc 1 636 0
 975 001c 0023     		movs	r3, #0
 976 001e 84F83430 		strb	r3, [r4, #52]
 637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 977              		.loc 1 637 0
 978 0022 0120     		movs	r0, #1
 979              	.LVL113:
 980              	.L84:
 750:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 981              		.loc 1 750 0
 982 0024 BDE8F883 		pop	{r3, r4, r5, r6, r7, r8, r9, pc}
 983              	.LVL114:
 984              	.L83:
 985 0028 8046     		mov	r8, r0
 641:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 986              		.loc 1 641 0
 987 002a 2368     		ldr	r3, [r4]
 988 002c 1B68     		ldr	r3, [r3]
 989 002e 13F4807F 		tst	r3, #256
 990 0032 38D1     		bne	.L99
 648:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 991              		.loc 1 648 0
 992 0034 B9F1000F 		cmp	r9, #0
 993 0038 3AD1     		bne	.L86
 651:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 994              		.loc 1 651 0
 995 003a E36D     		ldr	r3, [r4, #92]
 996 003c 2027     		movs	r7, #32
 997 003e 9F40     		lsls	r7, r7, r3
 998              	.LVL115:
 999              	.L87:
 659:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   tmpisr = regs->ISR;
 1000              		.loc 1 659 0
 1001 0040 A66D     		ldr	r6, [r4, #88]
 1002              	.LVL116:
 660:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 1003              		.loc 1 660 0
 1004 0042 3368     		ldr	r3, [r6]
 1005              	.LVL117:
 1006              	.L88:
 662:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 1007              		.loc 1 662 0
 1008 0044 1F42     		tst	r7, r3
 1009 0046 41D1     		bne	.L94
 662:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 1010              		.loc 1 662 0 is_stmt 0 discriminator 1
 1011 0048 636D     		ldr	r3, [r4, #84]
 1012              	.LVL118:
 1013 004a 13F0010F 		tst	r3, #1
 1014 004e 3DD1     		bne	.L94
 665:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 1015              		.loc 1 665 0 is_stmt 1
 1016 0050 B5F1FF3F 		cmp	r5, #-1
 1017 0054 07D0     		beq	.L89
 667:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
 1018              		.loc 1 667 0
 1019 0056 002D     		cmp	r5, #0
 1020 0058 2ED0     		beq	.L90
 667:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
 1021              		.loc 1 667 0 is_stmt 0 discriminator 1
 1022 005a FFF7FEFF 		bl	HAL_GetTick
 1023              	.LVL119:
 1024 005e A0EB0800 		sub	r0, r0, r8
 1025 0062 A842     		cmp	r0, r5
 1026 0064 28D8     		bhi	.L90
 1027              	.L89:
 683:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1028              		.loc 1 683 0 is_stmt 1
 1029 0066 3368     		ldr	r3, [r6]
 1030              	.LVL120:
 685:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 1031              		.loc 1 685 0
 1032 0068 E16D     		ldr	r1, [r4, #92]
 1033 006a 0822     		movs	r2, #8
 1034 006c 8A40     		lsls	r2, r2, r1
 1035 006e 1A42     		tst	r2, r3
 1036 0070 04D0     		beq	.L91
 688:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 1037              		.loc 1 688 0
 1038 0072 616D     		ldr	r1, [r4, #84]
 1039 0074 41F00101 		orr	r1, r1, #1
 1040 0078 6165     		str	r1, [r4, #84]
 691:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 1041              		.loc 1 691 0
 1042 007a B260     		str	r2, [r6, #8]
 1043              	.L91:
 694:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 1044              		.loc 1 694 0
 1045 007c E16D     		ldr	r1, [r4, #92]
 1046 007e 274A     		ldr	r2, .L102
 1047 0080 8A40     		lsls	r2, r2, r1
 1048 0082 1A42     		tst	r2, r3
 1049 0084 04D0     		beq	.L92
 697:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 1050              		.loc 1 697 0
 1051 0086 616D     		ldr	r1, [r4, #84]
 1052 0088 41F00201 		orr	r1, r1, #2
 1053 008c 6165     		str	r1, [r4, #84]
 700:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 1054              		.loc 1 700 0
 1055 008e B260     		str	r2, [r6, #8]
 1056              	.L92:
 703:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 1057              		.loc 1 703 0
 1058 0090 E16D     		ldr	r1, [r4, #92]
 1059 0092 234A     		ldr	r2, .L102+4
 1060 0094 8A40     		lsls	r2, r2, r1
 1061 0096 1A42     		tst	r2, r3
 1062 0098 D4D0     		beq	.L88
 706:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 1063              		.loc 1 706 0
 1064 009a 616D     		ldr	r1, [r4, #84]
 1065 009c 41F00401 		orr	r1, r1, #4
 1066 00a0 6165     		str	r1, [r4, #84]
 709:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 1067              		.loc 1 709 0
 1068 00a2 B260     		str	r2, [r6, #8]
 1069 00a4 CEE7     		b	.L88
 1070              	.LVL121:
 1071              	.L99:
 643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     return HAL_ERROR;
 1072              		.loc 1 643 0
 1073 00a6 4FF48073 		mov	r3, #256
 1074 00aa 6365     		str	r3, [r4, #84]
 644:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 1075              		.loc 1 644 0
 1076 00ac 0120     		movs	r0, #1
 1077              	.LVL122:
 1078 00ae B9E7     		b	.L84
 1079              	.LVL123:
 1080              	.L86:
 656:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 1081              		.loc 1 656 0
 1082 00b0 E36D     		ldr	r3, [r4, #92]
 1083 00b2 1027     		movs	r7, #16
 1084 00b4 9F40     		lsls	r7, r7, r3
 1085              	.LVL124:
 1086 00b6 C3E7     		b	.L87
 1087              	.LVL125:
 1088              	.L90:
 670:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1089              		.loc 1 670 0
 1090 00b8 2023     		movs	r3, #32
 1091 00ba 6365     		str	r3, [r4, #84]
 673:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         
 1092              		.loc 1 673 0
 1093 00bc 0023     		movs	r3, #0
 1094 00be 84F83430 		strb	r3, [r4, #52]
 676:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         
 1095              		.loc 1 676 0
 1096 00c2 0123     		movs	r3, #1
 1097 00c4 84F83530 		strb	r3, [r4, #53]
 678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       }
 1098              		.loc 1 678 0
 1099 00c8 0320     		movs	r0, #3
 1100 00ca ABE7     		b	.L84
 1101              	.L94:
 713:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 1102              		.loc 1 713 0
 1103 00cc 636D     		ldr	r3, [r4, #84]
 1104 00ce 1BB1     		cbz	r3, .L96
 715:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 1105              		.loc 1 715 0
 1106 00d0 636D     		ldr	r3, [r4, #84]
 1107 00d2 13F0010F 		tst	r3, #1
 1108 00d6 08D1     		bne	.L100
 1109              	.L96:
 733:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 1110              		.loc 1 733 0
 1111 00d8 B9F1000F 		cmp	r9, #0
 1112 00dc 13D0     		beq	.L101
 746:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 1113              		.loc 1 746 0
 1114 00de E26D     		ldr	r2, [r4, #92]
 1115 00e0 1023     		movs	r3, #16
 1116 00e2 9340     		lsls	r3, r3, r2
 1117 00e4 B360     		str	r3, [r6, #8]
 749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
 1118              		.loc 1 749 0
 1119 00e6 0020     		movs	r0, #0
 1120 00e8 9CE7     		b	.L84
 1121              	.L100:
 717:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 1122              		.loc 1 717 0
 1123 00ea 2046     		mov	r0, r4
 1124 00ec FFF7FEFF 		bl	HAL_DMA_Abort
 1125              	.LVL126:
 720:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 1126              		.loc 1 720 0
 1127 00f0 E26D     		ldr	r2, [r4, #92]
 1128 00f2 3023     		movs	r3, #48
 1129 00f4 9340     		lsls	r3, r3, r2
 1130 00f6 B360     		str	r3, [r6, #8]
 723:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1131              		.loc 1 723 0
 1132 00f8 0023     		movs	r3, #0
 1133 00fa 84F83430 		strb	r3, [r4, #52]
 726:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1134              		.loc 1 726 0
 1135 00fe 0120     		movs	r0, #1
 1136 0100 84F83500 		strb	r0, [r4, #53]
 728:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****    }
 1137              		.loc 1 728 0
 1138 0104 8EE7     		b	.L84
 1139              	.L101:
 736:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     
 1140              		.loc 1 736 0
 1141 0106 E26D     		ldr	r2, [r4, #92]
 1142 0108 3023     		movs	r3, #48
 1143 010a 9340     		lsls	r3, r3, r2
 1144 010c B360     		str	r3, [r6, #8]
 739:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1145              		.loc 1 739 0
 1146 010e 0020     		movs	r0, #0
 1147 0110 84F83400 		strb	r0, [r4, #52]
 741:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 1148              		.loc 1 741 0
 1149 0114 0123     		movs	r3, #1
 1150 0116 84F83530 		strb	r3, [r4, #53]
 1151 011a 83E7     		b	.L84
 1152              	.L103:
 1153              		.align	2
 1154              	.L102:
 1155 011c 01008000 		.word	8388609
 1156 0120 04008000 		.word	8388612
 1157              		.cfi_endproc
 1158              	.LFE144:
 1160              		.section	.text.HAL_DMA_IRQHandler,"ax",%progbits
 1161              		.align	1
 1162              		.global	HAL_DMA_IRQHandler
 1163              		.syntax unified
 1164              		.thumb
 1165              		.thumb_func
 1166              		.fpu fpv5-d16
 1168              	HAL_DMA_IRQHandler:
 1169              	.LFB145:
 759:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t tmpisr;
 1170              		.loc 1 759 0
 1171              		.cfi_startproc
 1172              		@ args = 0, pretend = 0, frame = 8
 1173              		@ frame_needed = 0, uses_anonymous_args = 0
 1174              	.LVL127:
 1175 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 1176              		.cfi_def_cfa_offset 20
 1177              		.cfi_offset 4, -20
 1178              		.cfi_offset 5, -16
 1179              		.cfi_offset 6, -12
 1180              		.cfi_offset 7, -8
 1181              		.cfi_offset 14, -4
 1182 0002 83B0     		sub	sp, sp, #12
 1183              		.cfi_def_cfa_offset 32
 1184 0004 0446     		mov	r4, r0
 761:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   uint32_t timeout = SystemCoreClock / 9600;
 1185              		.loc 1 761 0
 1186 0006 0023     		movs	r3, #0
 1187 0008 0193     		str	r3, [sp, #4]
 762:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1188              		.loc 1 762 0
 1189 000a 724B     		ldr	r3, .L126
 1190 000c 1D68     		ldr	r5, [r3]
 1191 000e 724B     		ldr	r3, .L126+4
 1192 0010 A3FB0535 		umull	r3, r5, r3, r5
 1193 0014 AD0A     		lsrs	r5, r5, #10
 1194              	.LVL128:
 765:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1195              		.loc 1 765 0
 1196 0016 876D     		ldr	r7, [r0, #88]
 1197              	.LVL129:
 767:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1198              		.loc 1 767 0
 1199 0018 3E68     		ldr	r6, [r7]
 1200              	.LVL130:
 770:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 1201              		.loc 1 770 0
 1202 001a C26D     		ldr	r2, [r0, #92]
 1203 001c 0823     		movs	r3, #8
 1204 001e 9340     		lsls	r3, r3, r2
 1205 0020 3342     		tst	r3, r6
 1206 0022 10D0     		beq	.L105
 772:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 1207              		.loc 1 772 0
 1208 0024 0368     		ldr	r3, [r0]
 1209 0026 1A68     		ldr	r2, [r3]
 1210 0028 12F0040F 		tst	r2, #4
 1211 002c 0BD0     		beq	.L105
 775:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 1212              		.loc 1 775 0
 1213 002e 1A68     		ldr	r2, [r3]
 1214 0030 22F00402 		bic	r2, r2, #4
 1215 0034 1A60     		str	r2, [r3]
 778:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 1216              		.loc 1 778 0
 1217 0036 C26D     		ldr	r2, [r0, #92]
 1218 0038 0823     		movs	r3, #8
 1219 003a 9340     		lsls	r3, r3, r2
 1220 003c BB60     		str	r3, [r7, #8]
 781:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 1221              		.loc 1 781 0
 1222 003e 436D     		ldr	r3, [r0, #84]
 1223 0040 43F00103 		orr	r3, r3, #1
 1224 0044 4365     		str	r3, [r0, #84]
 1225              	.L105:
 785:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 1226              		.loc 1 785 0
 1227 0046 E26D     		ldr	r2, [r4, #92]
 1228 0048 644B     		ldr	r3, .L126+8
 1229 004a 9340     		lsls	r3, r3, r2
 1230 004c 3342     		tst	r3, r6
 1231 004e 09D0     		beq	.L106
 787:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 1232              		.loc 1 787 0
 1233 0050 2268     		ldr	r2, [r4]
 1234 0052 5269     		ldr	r2, [r2, #20]
 1235 0054 12F0800F 		tst	r2, #128
 1236 0058 04D0     		beq	.L106
 790:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1237              		.loc 1 790 0
 1238 005a BB60     		str	r3, [r7, #8]
 793:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 1239              		.loc 1 793 0
 1240 005c 636D     		ldr	r3, [r4, #84]
 1241 005e 43F00203 		orr	r3, r3, #2
 1242 0062 6365     		str	r3, [r4, #84]
 1243              	.L106:
 797:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 1244              		.loc 1 797 0
 1245 0064 E26D     		ldr	r2, [r4, #92]
 1246 0066 5E4B     		ldr	r3, .L126+12
 1247 0068 9340     		lsls	r3, r3, r2
 1248 006a 3342     		tst	r3, r6
 1249 006c 09D0     		beq	.L107
 799:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 1250              		.loc 1 799 0
 1251 006e 2268     		ldr	r2, [r4]
 1252 0070 1268     		ldr	r2, [r2]
 1253 0072 12F0020F 		tst	r2, #2
 1254 0076 04D0     		beq	.L107
 802:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1255              		.loc 1 802 0
 1256 0078 BB60     		str	r3, [r7, #8]
 805:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 1257              		.loc 1 805 0
 1258 007a 636D     		ldr	r3, [r4, #84]
 1259 007c 43F00403 		orr	r3, r3, #4
 1260 0080 6365     		str	r3, [r4, #84]
 1261              	.L107:
 809:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 1262              		.loc 1 809 0
 1263 0082 E26D     		ldr	r2, [r4, #92]
 1264 0084 1023     		movs	r3, #16
 1265 0086 9340     		lsls	r3, r3, r2
 1266 0088 3342     		tst	r3, r6
 1267 008a 24D0     		beq	.L108
 811:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 1268              		.loc 1 811 0
 1269 008c 2268     		ldr	r2, [r4]
 1270 008e 1268     		ldr	r2, [r2]
 1271 0090 12F0080F 		tst	r2, #8
 1272 0094 1FD0     		beq	.L108
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 1273              		.loc 1 814 0
 1274 0096 BB60     		str	r3, [r7, #8]
 817:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
 1275              		.loc 1 817 0
 1276 0098 2368     		ldr	r3, [r4]
 1277 009a 1A68     		ldr	r2, [r3]
 1278 009c 12F4802F 		tst	r2, #262144
 1279 00a0 0DD0     		beq	.L109
 820:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 1280              		.loc 1 820 0
 1281 00a2 1B68     		ldr	r3, [r3]
 1282 00a4 13F4002F 		tst	r3, #524288
 1283 00a8 04D1     		bne	.L110
 822:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           {
 1284              		.loc 1 822 0
 1285 00aa 236C     		ldr	r3, [r4, #64]
 1286 00ac 9BB1     		cbz	r3, .L108
 825:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           }
 1287              		.loc 1 825 0
 1288 00ae 2046     		mov	r0, r4
 1289              	.LVL131:
 1290 00b0 9847     		blx	r3
 1291              	.LVL132:
 1292 00b2 10E0     		b	.L108
 1293              	.LVL133:
 1294              	.L110:
 831:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           {
 1295              		.loc 1 831 0
 1296 00b4 A36C     		ldr	r3, [r4, #72]
 1297 00b6 73B1     		cbz	r3, .L108
 834:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           }
 1298              		.loc 1 834 0
 1299 00b8 2046     		mov	r0, r4
 1300              	.LVL134:
 1301 00ba 9847     		blx	r3
 1302              	.LVL135:
 1303 00bc 0BE0     		b	.L108
 1304              	.LVL136:
 1305              	.L109:
 841:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 1306              		.loc 1 841 0
 1307 00be 1A68     		ldr	r2, [r3]
 1308 00c0 12F4807F 		tst	r2, #256
 1309 00c4 03D1     		bne	.L111
 844:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         }
 1310              		.loc 1 844 0
 1311 00c6 1A68     		ldr	r2, [r3]
 1312 00c8 22F00802 		bic	r2, r2, #8
 1313 00cc 1A60     		str	r2, [r3]
 1314              	.L111:
 847:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 1315              		.loc 1 847 0
 1316 00ce 236C     		ldr	r3, [r4, #64]
 1317 00d0 0BB1     		cbz	r3, .L108
 850:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         }
 1318              		.loc 1 850 0
 1319 00d2 2046     		mov	r0, r4
 1320              	.LVL137:
 1321 00d4 9847     		blx	r3
 1322              	.LVL138:
 1323              	.L108:
 856:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 1324              		.loc 1 856 0
 1325 00d6 E26D     		ldr	r2, [r4, #92]
 1326 00d8 2023     		movs	r3, #32
 1327 00da 9340     		lsls	r3, r3, r2
 1328 00dc 3342     		tst	r3, r6
 1329 00de 55D0     		beq	.L112
 858:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 1330              		.loc 1 858 0
 1331 00e0 2268     		ldr	r2, [r4]
 1332 00e2 1268     		ldr	r2, [r2]
 1333 00e4 12F0100F 		tst	r2, #16
 1334 00e8 50D0     		beq	.L112
 861:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 1335              		.loc 1 861 0
 1336 00ea BB60     		str	r3, [r7, #8]
 863:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
 1337              		.loc 1 863 0
 1338 00ec 94F83530 		ldrb	r3, [r4, #53]	@ zero_extendqisi2
 1339 00f0 DBB2     		uxtb	r3, r3
 1340 00f2 052B     		cmp	r3, #5
 1341 00f4 0ED0     		beq	.L124
 890:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       {
 1342              		.loc 1 890 0
 1343 00f6 2368     		ldr	r3, [r4]
 1344 00f8 1A68     		ldr	r2, [r3]
 1345 00fa 12F4802F 		tst	r2, #262144
 1346 00fe 33D0     		beq	.L117
 893:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 1347              		.loc 1 893 0
 1348 0100 1B68     		ldr	r3, [r3]
 1349 0102 13F4002F 		tst	r3, #524288
 1350 0106 2AD1     		bne	.L118
 895:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           {
 1351              		.loc 1 895 0
 1352 0108 636C     		ldr	r3, [r4, #68]
 1353 010a 002B     		cmp	r3, #0
 1354 010c 3ED0     		beq	.L112
 898:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           }
 1355              		.loc 1 898 0
 1356 010e 2046     		mov	r0, r4
 1357 0110 9847     		blx	r3
 1358              	.LVL139:
 1359 0112 3BE0     		b	.L112
 1360              	.L124:
 866:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         hdma->Instance->FCR &= ~(DMA_IT_FE);
 1361              		.loc 1 866 0
 1362 0114 2268     		ldr	r2, [r4]
 1363 0116 1368     		ldr	r3, [r2]
 1364 0118 23F01603 		bic	r3, r3, #22
 1365 011c 1360     		str	r3, [r2]
 867:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         
 1366              		.loc 1 867 0
 1367 011e 2268     		ldr	r2, [r4]
 1368 0120 5369     		ldr	r3, [r2, #20]
 1369 0122 23F08003 		bic	r3, r3, #128
 1370 0126 5361     		str	r3, [r2, #20]
 869:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 1371              		.loc 1 869 0
 1372 0128 236C     		ldr	r3, [r4, #64]
 1373 012a A3B1     		cbz	r3, .L125
 1374              	.L114:
 871:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         }
 1375              		.loc 1 871 0
 1376 012c 2268     		ldr	r2, [r4]
 1377 012e 1368     		ldr	r3, [r2]
 1378 0130 23F00803 		bic	r3, r3, #8
 1379 0134 1360     		str	r3, [r2]
 1380              	.L115:
 875:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1381              		.loc 1 875 0
 1382 0136 E26D     		ldr	r2, [r4, #92]
 1383 0138 3F23     		movs	r3, #63
 1384 013a 9340     		lsls	r3, r3, r2
 1385 013c BB60     		str	r3, [r7, #8]
 878:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1386              		.loc 1 878 0
 1387 013e 0023     		movs	r3, #0
 1388 0140 84F83430 		strb	r3, [r4, #52]
 881:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1389              		.loc 1 881 0
 1390 0144 0123     		movs	r3, #1
 1391 0146 84F83530 		strb	r3, [r4, #53]
 883:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 1392              		.loc 1 883 0
 1393 014a 236D     		ldr	r3, [r4, #80]
 1394 014c 002B     		cmp	r3, #0
 1395 014e 3FD0     		beq	.L104
 885:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         }
 1396              		.loc 1 885 0
 1397 0150 2046     		mov	r0, r4
 1398 0152 9847     		blx	r3
 1399              	.LVL140:
 1400 0154 3CE0     		b	.L104
 1401              	.L125:
 869:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 1402              		.loc 1 869 0 discriminator 1
 1403 0156 A36C     		ldr	r3, [r4, #72]
 1404 0158 002B     		cmp	r3, #0
 1405 015a E7D1     		bne	.L114
 1406 015c EBE7     		b	.L115
 1407              	.L118:
 904:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           {
 1408              		.loc 1 904 0
 1409 015e E36B     		ldr	r3, [r4, #60]
 1410 0160 A3B1     		cbz	r3, .L112
 907:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****           }
 1411              		.loc 1 907 0
 1412 0162 2046     		mov	r0, r4
 1413 0164 9847     		blx	r3
 1414              	.LVL141:
 1415 0166 11E0     		b	.L112
 1416              	.L117:
 914:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 1417              		.loc 1 914 0
 1418 0168 1A68     		ldr	r2, [r3]
 1419 016a 12F4807F 		tst	r2, #256
 1420 016e 09D1     		bne	.L119
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1421              		.loc 1 917 0
 1422 0170 1A68     		ldr	r2, [r3]
 1423 0172 22F01002 		bic	r2, r2, #16
 1424 0176 1A60     		str	r2, [r3]
 920:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1425              		.loc 1 920 0
 1426 0178 0023     		movs	r3, #0
 1427 017a 84F83430 		strb	r3, [r4, #52]
 923:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         }
 1428              		.loc 1 923 0
 1429 017e 0123     		movs	r3, #1
 1430 0180 84F83530 		strb	r3, [r4, #53]
 1431              	.L119:
 926:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 1432              		.loc 1 926 0
 1433 0184 E36B     		ldr	r3, [r4, #60]
 1434 0186 0BB1     		cbz	r3, .L112
 929:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         }
 1435              		.loc 1 929 0
 1436 0188 2046     		mov	r0, r4
 1437 018a 9847     		blx	r3
 1438              	.LVL142:
 1439              	.L112:
 936:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 1440              		.loc 1 936 0
 1441 018c 636D     		ldr	r3, [r4, #84]
 1442 018e FBB1     		cbz	r3, .L104
 938:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 1443              		.loc 1 938 0
 1444 0190 636D     		ldr	r3, [r4, #84]
 1445 0192 13F0010F 		tst	r3, #1
 1446 0196 17D0     		beq	.L120
 940:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1447              		.loc 1 940 0
 1448 0198 0523     		movs	r3, #5
 1449 019a 84F83530 		strb	r3, [r4, #53]
 943:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1450              		.loc 1 943 0
 1451 019e 2268     		ldr	r2, [r4]
 1452 01a0 1368     		ldr	r3, [r2]
 1453 01a2 23F00103 		bic	r3, r3, #1
 1454 01a6 1360     		str	r3, [r2]
 1455              	.L122:
 947:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****         {
 1456              		.loc 1 947 0
 1457 01a8 019B     		ldr	r3, [sp, #4]
 1458 01aa 0133     		adds	r3, r3, #1
 1459 01ac 0193     		str	r3, [sp, #4]
 1460 01ae AB42     		cmp	r3, r5
 1461 01b0 04D8     		bhi	.L121
 952:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1462              		.loc 1 952 0
 1463 01b2 2368     		ldr	r3, [r4]
 1464 01b4 1B68     		ldr	r3, [r3]
 1465 01b6 13F0010F 		tst	r3, #1
 1466 01ba F5D1     		bne	.L122
 1467              	.L121:
 955:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1468              		.loc 1 955 0
 1469 01bc 0023     		movs	r3, #0
 1470 01be 84F83430 		strb	r3, [r4, #52]
 958:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 1471              		.loc 1 958 0
 1472 01c2 0123     		movs	r3, #1
 1473 01c4 84F83530 		strb	r3, [r4, #53]
 1474              	.L120:
 961:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 1475              		.loc 1 961 0
 1476 01c8 E36C     		ldr	r3, [r4, #76]
 1477 01ca 0BB1     		cbz	r3, .L104
 964:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     }
 1478              		.loc 1 964 0
 1479 01cc 2046     		mov	r0, r4
 1480 01ce 9847     		blx	r3
 1481              	.LVL143:
 1482              	.L104:
 967:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1483              		.loc 1 967 0
 1484 01d0 03B0     		add	sp, sp, #12
 1485              		.cfi_def_cfa_offset 20
 1486              		@ sp needed
 1487 01d2 F0BD     		pop	{r4, r5, r6, r7, pc}
 1488              	.LVL144:
 1489              	.L127:
 1490              		.align	2
 1491              	.L126:
 1492 01d4 00000000 		.word	SystemCoreClock
 1493 01d8 B5814E1B 		.word	458129845
 1494 01dc 01008000 		.word	8388609
 1495 01e0 04008000 		.word	8388612
 1496              		.cfi_endproc
 1497              	.LFE145:
 1499              		.section	.text.HAL_DMA_RegisterCallback,"ax",%progbits
 1500              		.align	1
 1501              		.global	HAL_DMA_RegisterCallback
 1502              		.syntax unified
 1503              		.thumb
 1504              		.thumb_func
 1505              		.fpu fpv5-d16
 1507              	HAL_DMA_RegisterCallback:
 1508              	.LFB146:
 980:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1509              		.loc 1 980 0
 1510              		.cfi_startproc
 1511              		@ args = 0, pretend = 0, frame = 0
 1512              		@ frame_needed = 0, uses_anonymous_args = 0
 1513              		@ link register save eliminated.
 1514              	.LVL145:
 1515 0000 0346     		mov	r3, r0
 1516              	.LVL146:
 985:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1517              		.loc 1 985 0
 1518 0002 90F83400 		ldrb	r0, [r0, #52]	@ zero_extendqisi2
 1519              	.LVL147:
 1520 0006 0128     		cmp	r0, #1
 1521 0008 27D0     		beq	.L138
 985:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1522              		.loc 1 985 0 is_stmt 0 discriminator 2
 1523 000a 0120     		movs	r0, #1
 1524 000c 83F83400 		strb	r0, [r3, #52]
 987:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 1525              		.loc 1 987 0 is_stmt 1 discriminator 2
 1526 0010 93F83500 		ldrb	r0, [r3, #53]	@ zero_extendqisi2
 1527 0014 C0B2     		uxtb	r0, r0
 1528 0016 0128     		cmp	r0, #1
 1529 0018 04D0     		beq	.L141
1022:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 1530              		.loc 1 1022 0
 1531 001a 0120     		movs	r0, #1
 1532              	.L130:
 1533              	.LVL148:
1026:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 1534              		.loc 1 1026 0
 1535 001c 0022     		movs	r2, #0
 1536              	.LVL149:
 1537 001e 83F83420 		strb	r2, [r3, #52]
1028:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
 1538              		.loc 1 1028 0
 1539 0022 7047     		bx	lr
 1540              	.LVL150:
 1541              	.L141:
 989:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 1542              		.loc 1 989 0
 1543 0024 0529     		cmp	r1, #5
 1544 0026 16D8     		bhi	.L140
 1545 0028 DFE801F0 		tbb	[pc, r1]
 1546              	.L132:
 1547 002c 03       		.byte	(.L131-.L132)/2
 1548 002d 06       		.byte	(.L133-.L132)/2
 1549 002e 09       		.byte	(.L134-.L132)/2
 1550 002f 0C       		.byte	(.L135-.L132)/2
 1551 0030 0F       		.byte	(.L136-.L132)/2
 1552 0031 12       		.byte	(.L137-.L132)/2
 1553              		.p2align 1
 1554              	.L131:
 992:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
 1555              		.loc 1 992 0
 1556 0032 DA63     		str	r2, [r3, #60]
 982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1557              		.loc 1 982 0
 1558 0034 0020     		movs	r0, #0
 993:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1559              		.loc 1 993 0
 1560 0036 F1E7     		b	.L130
 1561              	.L133:
 996:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
 1562              		.loc 1 996 0
 1563 0038 1A64     		str	r2, [r3, #64]
 982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1564              		.loc 1 982 0
 1565 003a 0020     		movs	r0, #0
 997:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1566              		.loc 1 997 0
 1567 003c EEE7     		b	.L130
 1568              	.L134:
1000:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
 1569              		.loc 1 1000 0
 1570 003e 5A64     		str	r2, [r3, #68]
 982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1571              		.loc 1 982 0
 1572 0040 0020     		movs	r0, #0
1001:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1573              		.loc 1 1001 0
 1574 0042 EBE7     		b	.L130
 1575              	.L135:
1004:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
 1576              		.loc 1 1004 0
 1577 0044 9A64     		str	r2, [r3, #72]
 982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1578              		.loc 1 982 0
 1579 0046 0020     		movs	r0, #0
1005:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1580              		.loc 1 1005 0
 1581 0048 E8E7     		b	.L130
 1582              	.L136:
1008:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
 1583              		.loc 1 1008 0
 1584 004a DA64     		str	r2, [r3, #76]
 982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1585              		.loc 1 982 0
 1586 004c 0020     		movs	r0, #0
1009:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1587              		.loc 1 1009 0
 1588 004e E5E7     		b	.L130
 1589              	.L137:
1012:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
 1590              		.loc 1 1012 0
 1591 0050 1A65     		str	r2, [r3, #80]
 982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1592              		.loc 1 982 0
 1593 0052 0020     		movs	r0, #0
1013:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1594              		.loc 1 1013 0
 1595 0054 E2E7     		b	.L130
 1596              	.L140:
 982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1597              		.loc 1 982 0
 1598 0056 0020     		movs	r0, #0
 1599 0058 E0E7     		b	.L130
 1600              	.L138:
 985:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1601              		.loc 1 985 0
 1602 005a 0220     		movs	r0, #2
1029:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1603              		.loc 1 1029 0
 1604 005c 7047     		bx	lr
 1605              		.cfi_endproc
 1606              	.LFE146:
 1608              		.section	.text.HAL_DMA_UnRegisterCallback,"ax",%progbits
 1609              		.align	1
 1610              		.global	HAL_DMA_UnRegisterCallback
 1611              		.syntax unified
 1612              		.thumb
 1613              		.thumb_func
 1614              		.fpu fpv5-d16
 1616              	HAL_DMA_UnRegisterCallback:
 1617              	.LFB147:
1040:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   HAL_StatusTypeDef status = HAL_OK;
 1618              		.loc 1 1040 0
 1619              		.cfi_startproc
 1620              		@ args = 0, pretend = 0, frame = 0
 1621              		@ frame_needed = 0, uses_anonymous_args = 0
 1622              		@ link register save eliminated.
 1623              	.LVL151:
 1624 0000 0346     		mov	r3, r0
 1625              	.LVL152:
1044:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 1626              		.loc 1 1044 0
 1627 0002 90F83420 		ldrb	r2, [r0, #52]	@ zero_extendqisi2
 1628 0006 012A     		cmp	r2, #1
 1629 0008 30D0     		beq	.L153
1044:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 1630              		.loc 1 1044 0 is_stmt 0 discriminator 2
 1631 000a 0122     		movs	r2, #1
 1632 000c 80F83420 		strb	r2, [r0, #52]
1046:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   {
 1633              		.loc 1 1046 0 is_stmt 1 discriminator 2
 1634 0010 90F83520 		ldrb	r2, [r0, #53]	@ zero_extendqisi2
 1635 0014 D2B2     		uxtb	r2, r2
 1636 0016 012A     		cmp	r2, #1
 1637 0018 04D0     		beq	.L156
1090:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   }
 1638              		.loc 1 1090 0
 1639 001a 0120     		movs	r0, #1
 1640              	.LVL153:
 1641              	.L144:
1094:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 1642              		.loc 1 1094 0
 1643 001c 0022     		movs	r2, #0
 1644 001e 83F83420 		strb	r2, [r3, #52]
1096:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
 1645              		.loc 1 1096 0
 1646 0022 7047     		bx	lr
 1647              	.LVL154:
 1648              	.L156:
1048:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****     {
 1649              		.loc 1 1048 0
 1650 0024 0629     		cmp	r1, #6
 1651 0026 1FD8     		bhi	.L155
 1652 0028 DFE801F0 		tbb	[pc, r1]
 1653              	.L146:
 1654 002c 04       		.byte	(.L145-.L146)/2
 1655 002d 07       		.byte	(.L147-.L146)/2
 1656 002e 0A       		.byte	(.L148-.L146)/2
 1657 002f 0D       		.byte	(.L149-.L146)/2
 1658 0030 10       		.byte	(.L150-.L146)/2
 1659 0031 13       		.byte	(.L151-.L146)/2
 1660 0032 16       		.byte	(.L152-.L146)/2
 1661 0033 00       		.p2align 1
 1662              	.L145:
1051:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
 1663              		.loc 1 1051 0
 1664 0034 0020     		movs	r0, #0
 1665              	.LVL155:
 1666 0036 D863     		str	r0, [r3, #60]
1052:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 1667              		.loc 1 1052 0
 1668 0038 F0E7     		b	.L144
 1669              	.LVL156:
 1670              	.L147:
1055:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
 1671              		.loc 1 1055 0
 1672 003a 0020     		movs	r0, #0
 1673              	.LVL157:
 1674 003c 1864     		str	r0, [r3, #64]
1056:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 1675              		.loc 1 1056 0
 1676 003e EDE7     		b	.L144
 1677              	.LVL158:
 1678              	.L148:
1059:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
 1679              		.loc 1 1059 0
 1680 0040 0020     		movs	r0, #0
 1681              	.LVL159:
 1682 0042 5864     		str	r0, [r3, #68]
1060:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 1683              		.loc 1 1060 0
 1684 0044 EAE7     		b	.L144
 1685              	.LVL160:
 1686              	.L149:
1063:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
 1687              		.loc 1 1063 0
 1688 0046 0020     		movs	r0, #0
 1689              	.LVL161:
 1690 0048 9864     		str	r0, [r3, #72]
1064:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 1691              		.loc 1 1064 0
 1692 004a E7E7     		b	.L144
 1693              	.LVL162:
 1694              	.L150:
1067:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
 1695              		.loc 1 1067 0
 1696 004c 0020     		movs	r0, #0
 1697              	.LVL163:
 1698 004e D864     		str	r0, [r3, #76]
1068:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 1699              		.loc 1 1068 0
 1700 0050 E4E7     		b	.L144
 1701              	.LVL164:
 1702              	.L151:
1071:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break; 
 1703              		.loc 1 1071 0
 1704 0052 0020     		movs	r0, #0
 1705              	.LVL165:
 1706 0054 1865     		str	r0, [r3, #80]
1072:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 1707              		.loc 1 1072 0
 1708 0056 E1E7     		b	.L144
 1709              	.LVL166:
 1710              	.L152:
1075:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferHalfCpltCallback = NULL;
 1711              		.loc 1 1075 0
 1712 0058 0020     		movs	r0, #0
 1713              	.LVL167:
 1714 005a D863     		str	r0, [r3, #60]
1076:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferM1CpltCallback = NULL;
 1715              		.loc 1 1076 0
 1716 005c 1864     		str	r0, [r3, #64]
1077:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferM1HalfCpltCallback = NULL;
 1717              		.loc 1 1077 0
 1718 005e 5864     		str	r0, [r3, #68]
1078:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferErrorCallback = NULL;
 1719              		.loc 1 1078 0
 1720 0060 9864     		str	r0, [r3, #72]
1079:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       hdma->XferAbortCallback = NULL;
 1721              		.loc 1 1079 0
 1722 0062 D864     		str	r0, [r3, #76]
1080:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break; 
 1723              		.loc 1 1080 0
 1724 0064 1865     		str	r0, [r3, #80]
1081:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       
 1725              		.loc 1 1081 0
 1726 0066 D9E7     		b	.L144
 1727              	.LVL168:
 1728              	.L155:
1084:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****       break;
 1729              		.loc 1 1084 0
 1730 0068 0120     		movs	r0, #1
 1731              	.LVL169:
 1732 006a D7E7     		b	.L144
 1733              	.LVL170:
 1734              	.L153:
1044:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   
 1735              		.loc 1 1044 0
 1736 006c 0220     		movs	r0, #2
 1737              	.LVL171:
1097:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1738              		.loc 1 1097 0
 1739 006e 7047     		bx	lr
 1740              		.cfi_endproc
 1741              	.LFE147:
 1743              		.section	.text.HAL_DMA_GetState,"ax",%progbits
 1744              		.align	1
 1745              		.global	HAL_DMA_GetState
 1746              		.syntax unified
 1747              		.thumb
 1748              		.thumb_func
 1749              		.fpu fpv5-d16
 1751              	HAL_DMA_GetState:
 1752              	.LFB148:
1125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   return hdma->State;
 1753              		.loc 1 1125 0
 1754              		.cfi_startproc
 1755              		@ args = 0, pretend = 0, frame = 0
 1756              		@ frame_needed = 0, uses_anonymous_args = 0
 1757              		@ link register save eliminated.
 1758              	.LVL172:
1126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
 1759              		.loc 1 1126 0
 1760 0000 90F83500 		ldrb	r0, [r0, #53]	@ zero_extendqisi2
 1761              	.LVL173:
1127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1762              		.loc 1 1127 0
 1763 0004 7047     		bx	lr
 1764              		.cfi_endproc
 1765              	.LFE148:
 1767              		.section	.text.HAL_DMA_GetError,"ax",%progbits
 1768              		.align	1
 1769              		.global	HAL_DMA_GetError
 1770              		.syntax unified
 1771              		.thumb
 1772              		.thumb_func
 1773              		.fpu fpv5-d16
 1775              	HAL_DMA_GetError:
 1776              	.LFB149:
1136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c ****   return hdma->ErrorCode;
 1777              		.loc 1 1136 0
 1778              		.cfi_startproc
 1779              		@ args = 0, pretend = 0, frame = 0
 1780              		@ frame_needed = 0, uses_anonymous_args = 0
 1781              		@ link register save eliminated.
 1782              	.LVL174:
1137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** }
 1783              		.loc 1 1137 0
 1784 0000 406D     		ldr	r0, [r0, #84]
 1785              	.LVL175:
1138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_dma.c **** 
 1786              		.loc 1 1138 0
 1787 0002 7047     		bx	lr
 1788              		.cfi_endproc
 1789              	.LFE149:
 1791              		.section	.rodata
 1792              		.align	2
 1793              		.set	.LANCHOR0,. + 0
 1796              	flagBitshiftOffset.11125:
 1797 0000 00       		.byte	0
 1798 0001 06       		.byte	6
 1799 0002 10       		.byte	16
 1800 0003 16       		.byte	22
 1801 0004 00       		.byte	0
 1802 0005 06       		.byte	6
 1803 0006 10       		.byte	16
 1804 0007 16       		.byte	22
 1805              		.text
 1806              	.Letext0:
 1807              		.file 2 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 1808              		.file 3 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 1809              		.file 4 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h"
 1810              		.file 5 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/system_stm
 1811              		.file 6 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f769x
 1812              		.file 7 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 1813              		.file 8 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 1814              		.file 9 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 1815              		.file 10 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 1816              		.file 11 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f7xx
 1817              		.file 12 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_def.
 1818              		.file 13 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_dma.
 1819              		.file 14 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal.h"
DEFINED SYMBOLS
                            *ABS*:0000000000000000 stm32f7xx_hal_dma.c
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:17     .text.DMA_SetConfig:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:23     .text.DMA_SetConfig:0000000000000000 DMA_SetConfig
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:79     .text.DMA_CalcBaseAndBitshift:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:85     .text.DMA_CalcBaseAndBitshift:0000000000000000 DMA_CalcBaseAndBitshift
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:130    .text.DMA_CalcBaseAndBitshift:000000000000002c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:137    .text.DMA_CheckFifoParam:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:143    .text.DMA_CheckFifoParam:0000000000000000 DMA_CheckFifoParam
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:210    .text.DMA_CheckFifoParam:0000000000000046 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:214    .text.DMA_CheckFifoParam:000000000000004a $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:300    .text.HAL_DMA_Init:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:307    .text.HAL_DMA_Init:0000000000000000 HAL_DMA_Init
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:482    .text.HAL_DMA_Init:00000000000000c8 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:487    .text.HAL_DMA_DeInit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:494    .text.HAL_DMA_DeInit:0000000000000000 HAL_DMA_DeInit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:588    .text.HAL_DMA_Start:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:595    .text.HAL_DMA_Start:0000000000000000 HAL_DMA_Start
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:664    .text.HAL_DMA_Start_IT:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:671    .text.HAL_DMA_Start_IT:0000000000000000 HAL_DMA_Start_IT
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:767    .text.HAL_DMA_Abort:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:774    .text.HAL_DMA_Abort:0000000000000000 HAL_DMA_Abort
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:889    .text.HAL_DMA_Abort_IT:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:896    .text.HAL_DMA_Abort_IT:0000000000000000 HAL_DMA_Abort_IT
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:935    .text.HAL_DMA_PollForTransfer:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:942    .text.HAL_DMA_PollForTransfer:0000000000000000 HAL_DMA_PollForTransfer
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:1155   .text.HAL_DMA_PollForTransfer:000000000000011c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:1161   .text.HAL_DMA_IRQHandler:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:1168   .text.HAL_DMA_IRQHandler:0000000000000000 HAL_DMA_IRQHandler
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:1492   .text.HAL_DMA_IRQHandler:00000000000001d4 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:1500   .text.HAL_DMA_RegisterCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:1507   .text.HAL_DMA_RegisterCallback:0000000000000000 HAL_DMA_RegisterCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:1547   .text.HAL_DMA_RegisterCallback:000000000000002c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:1553   .text.HAL_DMA_RegisterCallback:0000000000000032 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:1609   .text.HAL_DMA_UnRegisterCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:1616   .text.HAL_DMA_UnRegisterCallback:0000000000000000 HAL_DMA_UnRegisterCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:1654   .text.HAL_DMA_UnRegisterCallback:000000000000002c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:1744   .text.HAL_DMA_GetState:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:1751   .text.HAL_DMA_GetState:0000000000000000 HAL_DMA_GetState
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:1768   .text.HAL_DMA_GetError:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:1775   .text.HAL_DMA_GetError:0000000000000000 HAL_DMA_GetError
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:1792   .rodata:0000000000000000 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:1796   .rodata:0000000000000000 flagBitshiftOffset.11125
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:1661   .text.HAL_DMA_UnRegisterCallback:0000000000000033 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc9oMU2O.s:1661   .text.HAL_DMA_UnRegisterCallback:0000000000000034 $t
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
SystemCoreClock

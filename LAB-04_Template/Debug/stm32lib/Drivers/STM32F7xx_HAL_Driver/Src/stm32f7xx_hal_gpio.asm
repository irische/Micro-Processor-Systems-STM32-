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
  12              		.file	"stm32f7xx_hal_gpio.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.HAL_GPIO_Init,"ax",%progbits
  17              		.align	1
  18              		.global	HAL_GPIO_Init
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv5-d16
  24              	HAL_GPIO_Init:
  25              	.LFB138:
  26              		.file 1 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.
   1:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /**
   2:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   ******************************************************************************
   3:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @file    stm32f7xx_hal_gpio.c
   4:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @author  MCD Application Team
   5:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @version V1.2.2
   6:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @date    14-April-2017
   7:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @brief   GPIO HAL module driver.
   8:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *          This file provides firmware functions to manage the following 
   9:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *          functionalities of the General Purpose Input/Output (GPIO) peripheral:
  10:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *           + Initialization and de-initialization functions
  11:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *           + IO operation functions
  12:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *
  13:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   @verbatim
  14:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   ==============================================================================
  15:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****                     ##### GPIO Peripheral features #####
  16:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   ==============================================================================
  17:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   [..] 
  18:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   Subject to the specific hardware characteristics of each I/O port listed in the datasheet, each
  19:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   port bit of the General Purpose IO (GPIO) Ports, can be individually configured by software
  20:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   in several modes:
  21:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   (+) Input mode 
  22:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   (+) Analog mode
  23:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   (+) Output mode
  24:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   (+) Alternate function mode
  25:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   (+) External interrupt/event lines
  26:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
  27:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   [..]  
  28:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   During and just after reset, the alternate functions and external interrupt  
  29:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   lines are not active and the I/O ports are configured in input floating mode.
  30:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   
  31:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   [..]   
  32:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   All GPIO pins have weak internal pull-up and pull-down resistors, which can be 
  33:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   activated or not.
  34:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
  35:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   [..]
  36:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   In Output or Alternate mode, each IO can be configured on open-drain or push-pull
  37:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   type and the IO speed can be selected depending on the VDD value.
  38:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
  39:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   [..]  
  40:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   All ports have external interrupt/event capability. To use external interrupt 
  41:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   lines, the port must be configured in input mode. All available GPIO pins are 
  42:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   connected to the 16 external interrupt/event lines from EXTI0 to EXTI15.
  43:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   
  44:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   [..]
  45:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   The external interrupt/event controller consists of up to 23 edge detectors 
  46:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   (16 lines are connected to GPIO) for generating event/interrupt requests (each 
  47:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   input line can be independently configured to select the type (interrupt or event) 
  48:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   and the corresponding trigger event (rising or falling or both). Each line can 
  49:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   also be masked independently. 
  50:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
  51:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****                      ##### How to use this driver #####
  52:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   ==============================================================================  
  53:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   [..]
  54:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     (#) Enable the GPIO AHB clock using the following function: __HAL_RCC_GPIOx_CLK_ENABLE(). 
  55:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
  56:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     (#) Configure the GPIO pin(s) using HAL_GPIO_Init().
  57:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         (++) Configure the IO mode using "Mode" member from GPIO_InitTypeDef structure
  58:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         (++) Activate Pull-up, Pull-down resistor using "Pull" member from GPIO_InitTypeDef 
  59:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****              structure.
  60:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         (++) In case of Output or alternate function mode selection: the speed is 
  61:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****              configured through "Speed" member from GPIO_InitTypeDef structure.
  62:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         (++) In alternate mode is selection, the alternate function connected to the IO
  63:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****              is configured through "Alternate" member from GPIO_InitTypeDef structure.
  64:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         (++) Analog mode is required when a pin is to be used as ADC channel 
  65:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****              or DAC output.
  66:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         (++) In case of external interrupt/event selection the "Mode" member from 
  67:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****              GPIO_InitTypeDef structure select the type (interrupt or event) and 
  68:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****              the corresponding trigger event (rising or falling or both).
  69:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
  70:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     (#) In case of external interrupt/event mode selection, configure NVIC IRQ priority 
  71:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         mapped to the EXTI line using HAL_NVIC_SetPriority() and enable it using
  72:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         HAL_NVIC_EnableIRQ().
  73:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****          
  74:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     (#) To get the level of a pin configured in input mode use HAL_GPIO_ReadPin().
  75:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****             
  76:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     (#) To set/reset the level of a pin configured in output mode use 
  77:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         HAL_GPIO_WritePin()/HAL_GPIO_TogglePin().
  78:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     
  79:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     (#) To lock pin configuration until next reset use HAL_GPIO_LockPin().
  80:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
  81:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****                  
  82:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     (#) During and just after reset, the alternate functions are not 
  83:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         active and the GPIO pins are configured in input floating mode (except JTAG
  84:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         pins).
  85:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   
  86:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     (#) The LSE oscillator pins OSC32_IN and OSC32_OUT can be used as general purpose 
  87:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         (PC14 and PC15, respectively) when the LSE oscillator is off. The LSE has 
  88:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         priority over the GPIO function.
  89:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   
  90:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     (#) The HSE oscillator pins OSC_IN/OSC_OUT can be used as 
  91:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         general purpose PH0 and PH1, respectively, when the HSE oscillator is off. 
  92:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         The HSE has priority over the GPIO function.
  93:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   
  94:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   @endverbatim
  95:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   ******************************************************************************
  96:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @attention
  97:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *
  98:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * <h2><center>&copy; COPYRIGHT(c) 2017 STMicroelectronics</center></h2>
  99:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *
 100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * Redistribution and use in source and binary forms, with or without modification,
 101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * are permitted provided that the following conditions are met:
 102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *   1. Redistributions of source code must retain the above copyright notice,
 103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *      this list of conditions and the following disclaimer.
 104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
 105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *      this list of conditions and the following disclaimer in the documentation
 106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *      and/or other materials provided with the distribution.
 107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
 108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *      may be used to endorse or promote products derived from this software
 109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *      without specific prior written permission.
 110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *
 111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *
 122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   ******************************************************************************
 123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   */ 
 124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /* Includes ------------------------------------------------------------------*/
 126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** #include "stm32f7xx_hal.h"
 127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /** @addtogroup STM32F7xx_HAL_Driver
 129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @{
 130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   */
 131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /** @defgroup GPIO GPIO
 133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @brief GPIO HAL module driver
 134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @{
 135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   */
 136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** #ifdef HAL_GPIO_MODULE_ENABLED
 138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /* Private typedef -----------------------------------------------------------*/
 140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /* Private define ------------------------------------------------------------*/
 141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /** @addtogroup GPIO_Private_Constants GPIO Private Constants
 142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @{
 143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   */
 144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** #define GPIO_MODE             ((uint32_t)0x00000003U)
 145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** #define EXTI_MODE             ((uint32_t)0x10000000U)
 146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** #define GPIO_MODE_IT          ((uint32_t)0x00010000U)
 147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** #define GPIO_MODE_EVT         ((uint32_t)0x00020000U)
 148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** #define RISING_EDGE           ((uint32_t)0x00100000U)
 149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** #define FALLING_EDGE          ((uint32_t)0x00200000U)
 150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** #define GPIO_OUTPUT_TYPE      ((uint32_t)0x00000010U)
 151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** #define GPIO_NUMBER           ((uint32_t)16U)
 153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /**
 154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @}
 155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   */
 156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /* Private macro -------------------------------------------------------------*/
 157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /* Private variables ---------------------------------------------------------*/
 158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /* Private function prototypes -----------------------------------------------*/
 159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /* Private functions ---------------------------------------------------------*/
 160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /* Exported functions --------------------------------------------------------*/
 161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /** @defgroup GPIO_Exported_Functions GPIO Exported Functions
 162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @{
 163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   */
 164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /** @defgroup GPIO_Exported_Functions_Group1 Initialization and de-initialization functions
 166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****  *  @brief    Initialization and Configuration functions
 167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****  *
 168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** @verbatim
 169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****  ===============================================================================
 170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****               ##### Initialization and de-initialization functions #####
 171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****  ===============================================================================
 172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   [..]
 173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     This section provides functions allowing to initialize and de-initialize the GPIOs
 174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     to be ready for use.
 175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****  
 176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** @endverbatim
 177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @{
 178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   */
 179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /**
 181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @brief  Initializes the GPIOx peripheral according to the specified parameters in the GPIO_Init
 182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @param  GPIOx: where x can be (A..K) to select the GPIO peripheral.
 183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @param  GPIO_Init: pointer to a GPIO_InitTypeDef structure that contains
 184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *         the configuration information for the specified GPIO peripheral.
 185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @retval None
 186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   */
 187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** void HAL_GPIO_Init(GPIO_TypeDef  *GPIOx, GPIO_InitTypeDef *GPIO_Init)
 188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** {
  27              		.loc 1 188 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 8
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31              		@ link register save eliminated.
  32              	.LVL0:
 189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   uint32_t position = 0x00;
 190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   uint32_t ioposition = 0x00;
 191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   uint32_t iocurrent = 0x00;
 192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   uint32_t temp = 0x00;
 193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   /* Check the parameters */
 195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   assert_param(IS_GPIO_ALL_INSTANCE(GPIOx));
 196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN(GPIO_Init->Pin));
 197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   assert_param(IS_GPIO_MODE(GPIO_Init->Mode));
 198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   assert_param(IS_GPIO_PULL(GPIO_Init->Pull));
 199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   /* Configure the port pins */
 201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   for(position = 0; position < GPIO_NUMBER; position++)
  33              		.loc 1 201 0
  34 0000 0023     		movs	r3, #0
  35              	.LVL1:
  36 0002 0F2B     		cmp	r3, #15
  37 0004 00F2E280 		bhi	.L26
 188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   uint32_t position = 0x00;
  38              		.loc 1 188 0
  39 0008 F0B4     		push	{r4, r5, r6, r7}
  40              		.cfi_def_cfa_offset 16
  41              		.cfi_offset 4, -16
  42              		.cfi_offset 5, -12
  43              		.cfi_offset 6, -8
  44              		.cfi_offset 7, -4
  45 000a 82B0     		sub	sp, sp, #8
  46              		.cfi_def_cfa_offset 24
  47 000c 39E0     		b	.L12
  48              	.LVL2:
  49              	.L28:
 202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   {
 203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     /* Get the IO position */
 204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     ioposition = ((uint32_t)0x01) << position;
 205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     /* Get the current IO position */
 206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     iocurrent = (uint32_t)(GPIO_Init->Pin) & ioposition;
 207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     if(iocurrent == ioposition)
 209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     {
 210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       /*--------------------- GPIO Mode Configuration ------------------------*/
 211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       /* In case of Alternate function mode selection */
 212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       if((GPIO_Init->Mode == GPIO_MODE_AF_PP) || (GPIO_Init->Mode == GPIO_MODE_AF_OD))
 213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       {
 214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         /* Check the Alternate function parameter */
 215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         assert_param(IS_GPIO_AF(GPIO_Init->Alternate));
 216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         
 217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         /* Configure Alternate function mapped with the current IO */
 218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp = GPIOx->AFR[position >> 3];
 219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp &= ~((uint32_t)0xF << ((uint32_t)(position & (uint32_t)0x07) * 4)) ;
 220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp |= ((uint32_t)(GPIO_Init->Alternate) << (((uint32_t)position & (uint32_t)0x07) * 4));
 221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         GPIOx->AFR[position >> 3] = temp;
 222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       }
 223:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       /* Configure IO Direction mode (Input, Output, Alternate or Analog) */
 225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       temp = GPIOx->MODER;
 226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       temp &= ~(GPIO_MODER_MODER0 << (position * 2));
 227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2));
 228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       GPIOx->MODER = temp;
 229:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       /* In case of Output or Alternate function mode selection */
 231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       if((GPIO_Init->Mode == GPIO_MODE_OUTPUT_PP) || (GPIO_Init->Mode == GPIO_MODE_AF_PP) ||
 232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****          (GPIO_Init->Mode == GPIO_MODE_OUTPUT_OD) || (GPIO_Init->Mode == GPIO_MODE_AF_OD))
 233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       {
 234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         /* Check the Speed parameter */
 235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         assert_param(IS_GPIO_SPEED(GPIO_Init->Speed));
 236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         /* Configure the IO Speed */
 237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp = GPIOx->OSPEEDR; 
 238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp &= ~(GPIO_OSPEEDER_OSPEEDR0 << (position * 2));
 239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp |= (GPIO_Init->Speed << (position * 2));
 240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         GPIOx->OSPEEDR = temp;
 241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         /* Configure the IO Output Type */
 243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp = GPIOx->OTYPER;
 244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp &= ~(GPIO_OTYPER_OT_0 << position) ;
 245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp |= (((GPIO_Init->Mode & GPIO_OUTPUT_TYPE) >> 4) << position);
 246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         GPIOx->OTYPER = temp;
 247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       }
 248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       /* Activate the Pull-up or Pull down resistor for the current IO */
 250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       temp = GPIOx->PUPDR;
 251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       temp &= ~(GPIO_PUPDR_PUPDR0 << (position * 2));
 252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       temp |= ((GPIO_Init->Pull) << (position * 2));
 253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       GPIOx->PUPDR = temp;
 254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       /*--------------------- EXTI Mode Configuration ------------------------*/
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       /* Configure the External Interrupt or event for the current IO */
 257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       if((GPIO_Init->Mode & EXTI_MODE) == EXTI_MODE)
 258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       {
 259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         /* Enable SYSCFG Clock */
 260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         __HAL_RCC_SYSCFG_CLK_ENABLE();
 261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp = SYSCFG->EXTICR[position >> 2];
 263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp &= ~(((uint32_t)0x0F) << (4 * (position & 0x03)));
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp |= ((uint32_t)(GPIO_GET_INDEX(GPIOx)) << (4 * (position & 0x03)));
  50              		.loc 1 264 0
  51 000e 0922     		movs	r2, #9
  52 0010 00E0     		b	.L7
  53              	.L13:
  54 0012 0022     		movs	r2, #0
  55              	.L7:
  56              		.loc 1 264 0 is_stmt 0 discriminator 40
  57 0014 B240     		lsls	r2, r2, r6
  58 0016 3A43     		orrs	r2, r2, r7
  59              	.LVL3:
 265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2] = temp;
  60              		.loc 1 265 0 is_stmt 1 discriminator 40
  61 0018 0234     		adds	r4, r4, #2
  62 001a 6D4E     		ldr	r6, .L29
  63 001c 46F82420 		str	r2, [r6, r4, lsl #2]
 266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         /* Clear EXTI line configuration */
 268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp = EXTI->IMR;
  64              		.loc 1 268 0 discriminator 40
  65 0020 6C4A     		ldr	r2, .L29+4
  66              	.LVL4:
  67 0022 1468     		ldr	r4, [r2]
  68              	.LVL5:
 269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp &= ~((uint32_t)iocurrent);
  69              		.loc 1 269 0 discriminator 40
  70 0024 EA43     		mvns	r2, r5
  71 0026 02EA0406 		and	r6, r2, r4
  72              	.LVL6:
 270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         if((GPIO_Init->Mode & GPIO_MODE_IT) == GPIO_MODE_IT)
  73              		.loc 1 270 0 discriminator 40
  74 002a 4F68     		ldr	r7, [r1, #4]
  75 002c 17F4803F 		tst	r7, #65536
  76 0030 01D0     		beq	.L8
 271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         {
 272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****           temp |= iocurrent;
  77              		.loc 1 272 0
  78 0032 45EA0406 		orr	r6, r5, r4
  79              	.LVL7:
  80              	.L8:
 273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         }
 274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         EXTI->IMR = temp;
  81              		.loc 1 274 0
  82 0036 674C     		ldr	r4, .L29+4
  83 0038 2660     		str	r6, [r4]
 275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp = EXTI->EMR;
  84              		.loc 1 276 0
  85 003a 6468     		ldr	r4, [r4, #4]
  86              	.LVL8:
 277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp &= ~((uint32_t)iocurrent);
  87              		.loc 1 277 0
  88 003c 02EA0406 		and	r6, r2, r4
  89              	.LVL9:
 278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         if((GPIO_Init->Mode & GPIO_MODE_EVT) == GPIO_MODE_EVT)
  90              		.loc 1 278 0
  91 0040 4F68     		ldr	r7, [r1, #4]
  92 0042 17F4003F 		tst	r7, #131072
  93 0046 01D0     		beq	.L9
 279:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         {
 280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****           temp |= iocurrent;
  94              		.loc 1 280 0
  95 0048 45EA0406 		orr	r6, r5, r4
  96              	.LVL10:
  97              	.L9:
 281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         }
 282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         EXTI->EMR = temp;
  98              		.loc 1 282 0
  99 004c 614C     		ldr	r4, .L29+4
 100 004e 6660     		str	r6, [r4, #4]
 283:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         /* Clear Rising Falling edge configuration */
 285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp = EXTI->RTSR;
 101              		.loc 1 285 0
 102 0050 A468     		ldr	r4, [r4, #8]
 103              	.LVL11:
 286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp &= ~((uint32_t)iocurrent);
 104              		.loc 1 286 0
 105 0052 02EA0406 		and	r6, r2, r4
 106              	.LVL12:
 287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         if((GPIO_Init->Mode & RISING_EDGE) == RISING_EDGE)
 107              		.loc 1 287 0
 108 0056 4F68     		ldr	r7, [r1, #4]
 109 0058 17F4801F 		tst	r7, #1048576
 110 005c 01D0     		beq	.L10
 288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         {
 289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****           temp |= iocurrent;
 111              		.loc 1 289 0
 112 005e 45EA0406 		orr	r6, r5, r4
 113              	.LVL13:
 114              	.L10:
 290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         }
 291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         EXTI->RTSR = temp;
 115              		.loc 1 291 0
 116 0062 5C4C     		ldr	r4, .L29+4
 117 0064 A660     		str	r6, [r4, #8]
 292:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp = EXTI->FTSR;
 118              		.loc 1 293 0
 119 0066 E468     		ldr	r4, [r4, #12]
 120              	.LVL14:
 294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp &= ~((uint32_t)iocurrent);
 121              		.loc 1 294 0
 122 0068 2240     		ands	r2, r2, r4
 123              	.LVL15:
 295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         if((GPIO_Init->Mode & FALLING_EDGE) == FALLING_EDGE)
 124              		.loc 1 295 0
 125 006a 4E68     		ldr	r6, [r1, #4]
 126 006c 16F4001F 		tst	r6, #2097152
 127 0070 01D0     		beq	.L11
 296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         {
 297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****           temp |= iocurrent;
 128              		.loc 1 297 0
 129 0072 45EA0402 		orr	r2, r5, r4
 130              	.LVL16:
 131              	.L11:
 298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         }
 299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         EXTI->FTSR = temp;
 132              		.loc 1 299 0
 133 0076 574C     		ldr	r4, .L29+4
 134 0078 E260     		str	r2, [r4, #12]
 135              	.LVL17:
 136              	.L3:
 201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   {
 137              		.loc 1 201 0 discriminator 2
 138 007a 0133     		adds	r3, r3, #1
 139              	.LVL18:
 140 007c 0F2B     		cmp	r3, #15
 141 007e 00F2A280 		bhi	.L27
 142              	.LVL19:
 143              	.L12:
 204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     /* Get the current IO position */
 144              		.loc 1 204 0
 145 0082 0122     		movs	r2, #1
 146 0084 9A40     		lsls	r2, r2, r3
 147              	.LVL20:
 206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 148              		.loc 1 206 0
 149 0086 0C68     		ldr	r4, [r1]
 150 0088 04EA0205 		and	r5, r4, r2
 151              	.LVL21:
 208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     {
 152              		.loc 1 208 0
 153 008c AA42     		cmp	r2, r5
 154 008e F4D1     		bne	.L3
 212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       {
 155              		.loc 1 212 0
 156 0090 4C68     		ldr	r4, [r1, #4]
 157 0092 122C     		cmp	r4, #18
 158 0094 18BF     		it	ne
 159 0096 022C     		cmpne	r4, #2
 160 0098 10D1     		bne	.L4
 218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp &= ~((uint32_t)0xF << ((uint32_t)(position & (uint32_t)0x07) * 4)) ;
 161              		.loc 1 218 0
 162 009a DE08     		lsrs	r6, r3, #3
 163 009c 0836     		adds	r6, r6, #8
 164 009e 50F826C0 		ldr	ip, [r0, r6, lsl #2]
 165              	.LVL22:
 219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp |= ((uint32_t)(GPIO_Init->Alternate) << (((uint32_t)position & (uint32_t)0x07) * 4));
 166              		.loc 1 219 0
 167 00a2 03F00704 		and	r4, r3, #7
 168 00a6 A700     		lsls	r7, r4, #2
 169 00a8 0F24     		movs	r4, #15
 170 00aa BC40     		lsls	r4, r4, r7
 171 00ac 2CEA040C 		bic	ip, ip, r4
 172              	.LVL23:
 220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         GPIOx->AFR[position >> 3] = temp;
 173              		.loc 1 220 0
 174 00b0 0C69     		ldr	r4, [r1, #16]
 175 00b2 BC40     		lsls	r4, r4, r7
 176 00b4 44EA0C04 		orr	r4, r4, ip
 177              	.LVL24:
 221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       }
 178              		.loc 1 221 0
 179 00b8 40F82640 		str	r4, [r0, r6, lsl #2]
 180              	.LVL25:
 181              	.L4:
 225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       temp &= ~(GPIO_MODER_MODER0 << (position * 2));
 182              		.loc 1 225 0
 183 00bc 0468     		ldr	r4, [r0]
 184              	.LVL26:
 226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2));
 185              		.loc 1 226 0
 186 00be 5F00     		lsls	r7, r3, #1
 187 00c0 0326     		movs	r6, #3
 188 00c2 BE40     		lsls	r6, r6, r7
 189 00c4 F643     		mvns	r6, r6
 190 00c6 06EA040C 		and	ip, r6, r4
 191              	.LVL27:
 227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       GPIOx->MODER = temp;
 192              		.loc 1 227 0
 193 00ca 4C68     		ldr	r4, [r1, #4]
 194 00cc 04F00304 		and	r4, r4, #3
 195 00d0 BC40     		lsls	r4, r4, r7
 196 00d2 44EA0C04 		orr	r4, r4, ip
 197              	.LVL28:
 228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 198              		.loc 1 228 0
 199 00d6 0460     		str	r4, [r0]
 231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****          (GPIO_Init->Mode == GPIO_MODE_OUTPUT_OD) || (GPIO_Init->Mode == GPIO_MODE_AF_OD))
 200              		.loc 1 231 0
 201 00d8 4C68     		ldr	r4, [r1, #4]
 202              	.LVL29:
 203 00da 04F1FF3C 		add	ip, r4, #-1
 204 00de 112C     		cmp	r4, #17
 205 00e0 18BF     		it	ne
 206 00e2 BCF1010F 		cmpne	ip, #1
 207 00e6 01D9     		bls	.L5
 232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       {
 208              		.loc 1 232 0
 209 00e8 122C     		cmp	r4, #18
 210 00ea 11D1     		bne	.L6
 211              	.L5:
 237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp &= ~(GPIO_OSPEEDER_OSPEEDR0 << (position * 2));
 212              		.loc 1 237 0
 213 00ec 8468     		ldr	r4, [r0, #8]
 214              	.LVL30:
 238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp |= (GPIO_Init->Speed << (position * 2));
 215              		.loc 1 238 0
 216 00ee 06EA040C 		and	ip, r6, r4
 217              	.LVL31:
 239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         GPIOx->OSPEEDR = temp;
 218              		.loc 1 239 0
 219 00f2 CC68     		ldr	r4, [r1, #12]
 220 00f4 BC40     		lsls	r4, r4, r7
 221 00f6 44EA0C04 		orr	r4, r4, ip
 222              	.LVL32:
 240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 223              		.loc 1 240 0
 224 00fa 8460     		str	r4, [r0, #8]
 243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp &= ~(GPIO_OTYPER_OT_0 << position) ;
 225              		.loc 1 243 0
 226 00fc 4468     		ldr	r4, [r0, #4]
 227              	.LVL33:
 244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp |= (((GPIO_Init->Mode & GPIO_OUTPUT_TYPE) >> 4) << position);
 228              		.loc 1 244 0
 229 00fe 24EA020C 		bic	ip, r4, r2
 230              	.LVL34:
 245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         GPIOx->OTYPER = temp;
 231              		.loc 1 245 0
 232 0102 4C68     		ldr	r4, [r1, #4]
 233 0104 C4F30012 		ubfx	r2, r4, #4, #1
 234              	.LVL35:
 235 0108 9A40     		lsls	r2, r2, r3
 236 010a 42EA0C02 		orr	r2, r2, ip
 237              	.LVL36:
 246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       }
 238              		.loc 1 246 0
 239 010e 4260     		str	r2, [r0, #4]
 240              	.LVL37:
 241              	.L6:
 250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       temp &= ~(GPIO_PUPDR_PUPDR0 << (position * 2));
 242              		.loc 1 250 0
 243 0110 C268     		ldr	r2, [r0, #12]
 244              	.LVL38:
 251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       temp |= ((GPIO_Init->Pull) << (position * 2));
 245              		.loc 1 251 0
 246 0112 1640     		ands	r6, r6, r2
 247              	.LVL39:
 252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       GPIOx->PUPDR = temp;
 248              		.loc 1 252 0
 249 0114 8A68     		ldr	r2, [r1, #8]
 250 0116 BA40     		lsls	r2, r2, r7
 251 0118 3243     		orrs	r2, r2, r6
 252              	.LVL40:
 253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 253              		.loc 1 253 0
 254 011a C260     		str	r2, [r0, #12]
 257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       {
 255              		.loc 1 257 0
 256 011c 4A68     		ldr	r2, [r1, #4]
 257              	.LVL41:
 258 011e 12F0805F 		tst	r2, #268435456
 259 0122 AAD0     		beq	.L3
 260              	.LBB2:
 260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 261              		.loc 1 260 0
 262 0124 2C4A     		ldr	r2, .L29+8
 263 0126 546C     		ldr	r4, [r2, #68]
 264 0128 44F48044 		orr	r4, r4, #16384
 265 012c 5464     		str	r4, [r2, #68]
 266              	.LVL42:
 267 012e 526C     		ldr	r2, [r2, #68]
 268 0130 02F48042 		and	r2, r2, #16384
 269 0134 0192     		str	r2, [sp, #4]
 270 0136 019A     		ldr	r2, [sp, #4]
 271              	.LBE2:
 262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp &= ~(((uint32_t)0x0F) << (4 * (position & 0x03)));
 272              		.loc 1 262 0
 273 0138 9C08     		lsrs	r4, r3, #2
 274 013a A61C     		adds	r6, r4, #2
 275 013c 244A     		ldr	r2, .L29
 276 013e 52F82670 		ldr	r7, [r2, r6, lsl #2]
 277              	.LVL43:
 263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         temp |= ((uint32_t)(GPIO_GET_INDEX(GPIOx)) << (4 * (position & 0x03)));
 278              		.loc 1 263 0
 279 0142 03F00302 		and	r2, r3, #3
 280 0146 9600     		lsls	r6, r2, #2
 281 0148 0F22     		movs	r2, #15
 282 014a B240     		lsls	r2, r2, r6
 283 014c 27EA0207 		bic	r7, r7, r2
 284              	.LVL44:
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2] = temp;
 285              		.loc 1 264 0
 286 0150 224A     		ldr	r2, .L29+12
 287 0152 9042     		cmp	r0, r2
 288 0154 3FF45DAF 		beq	.L13
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2] = temp;
 289              		.loc 1 264 0 is_stmt 0 discriminator 1
 290 0158 02F58062 		add	r2, r2, #1024
 291 015c 9042     		cmp	r0, r2
 292 015e 22D0     		beq	.L14
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2] = temp;
 293              		.loc 1 264 0 discriminator 3
 294 0160 02F58062 		add	r2, r2, #1024
 295 0164 9042     		cmp	r0, r2
 296 0166 20D0     		beq	.L15
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2] = temp;
 297              		.loc 1 264 0 discriminator 5
 298 0168 02F58062 		add	r2, r2, #1024
 299 016c 9042     		cmp	r0, r2
 300 016e 1ED0     		beq	.L16
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2] = temp;
 301              		.loc 1 264 0 discriminator 7
 302 0170 02F58062 		add	r2, r2, #1024
 303 0174 9042     		cmp	r0, r2
 304 0176 1CD0     		beq	.L17
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2] = temp;
 305              		.loc 1 264 0 discriminator 9
 306 0178 02F58062 		add	r2, r2, #1024
 307 017c 9042     		cmp	r0, r2
 308 017e 1AD0     		beq	.L18
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2] = temp;
 309              		.loc 1 264 0 discriminator 11
 310 0180 02F58062 		add	r2, r2, #1024
 311 0184 9042     		cmp	r0, r2
 312 0186 18D0     		beq	.L19
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2] = temp;
 313              		.loc 1 264 0 discriminator 13
 314 0188 02F58062 		add	r2, r2, #1024
 315 018c 9042     		cmp	r0, r2
 316 018e 16D0     		beq	.L20
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2] = temp;
 317              		.loc 1 264 0 discriminator 15
 318 0190 02F58062 		add	r2, r2, #1024
 319 0194 9042     		cmp	r0, r2
 320 0196 14D0     		beq	.L21
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2] = temp;
 321              		.loc 1 264 0 discriminator 17
 322 0198 02F58062 		add	r2, r2, #1024
 323 019c 9042     		cmp	r0, r2
 324 019e 3FF436AF 		beq	.L28
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2] = temp;
 325              		.loc 1 264 0
 326 01a2 0A22     		movs	r2, #10
 327 01a4 36E7     		b	.L7
 328              	.L14:
 329 01a6 0122     		movs	r2, #1
 330              	.LVL45:
 331 01a8 34E7     		b	.L7
 332              	.LVL46:
 333              	.L15:
 334 01aa 0222     		movs	r2, #2
 335 01ac 32E7     		b	.L7
 336              	.L16:
 337 01ae 0322     		movs	r2, #3
 338 01b0 30E7     		b	.L7
 339              	.L17:
 340 01b2 0422     		movs	r2, #4
 341 01b4 2EE7     		b	.L7
 342              	.L18:
 343 01b6 0522     		movs	r2, #5
 344 01b8 2CE7     		b	.L7
 345              	.L19:
 346 01ba 0622     		movs	r2, #6
 347 01bc 2AE7     		b	.L7
 348              	.L20:
 349 01be 0722     		movs	r2, #7
 350 01c0 28E7     		b	.L7
 351              	.L21:
 352 01c2 0822     		movs	r2, #8
 353 01c4 26E7     		b	.L7
 354              	.LVL47:
 355              	.L27:
 300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       }
 301:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     }
 302:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   }
 303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** }
 356              		.loc 1 303 0 is_stmt 1
 357 01c6 02B0     		add	sp, sp, #8
 358              		.cfi_def_cfa_offset 16
 359              		@ sp needed
 360 01c8 F0BC     		pop	{r4, r5, r6, r7}
 361              		.cfi_restore 7
 362              		.cfi_restore 6
 363              		.cfi_restore 5
 364              		.cfi_restore 4
 365              		.cfi_def_cfa_offset 0
 366              	.LVL48:
 367 01ca 7047     		bx	lr
 368              	.LVL49:
 369              	.L26:
 370 01cc 7047     		bx	lr
 371              	.L30:
 372 01ce 00BF     		.align	2
 373              	.L29:
 374 01d0 00380140 		.word	1073821696
 375 01d4 003C0140 		.word	1073822720
 376 01d8 00380240 		.word	1073887232
 377 01dc 00000240 		.word	1073872896
 378              		.cfi_endproc
 379              	.LFE138:
 381              		.section	.text.HAL_GPIO_DeInit,"ax",%progbits
 382              		.align	1
 383              		.global	HAL_GPIO_DeInit
 384              		.syntax unified
 385              		.thumb
 386              		.thumb_func
 387              		.fpu fpv5-d16
 389              	HAL_GPIO_DeInit:
 390              	.LFB139:
 304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /**
 306:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @brief  De-initializes the GPIOx peripheral registers to their default reset values.
 307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @param  GPIOx: where x can be (A..K) to select the GPIO peripheral.
 308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @param  GPIO_Pin: specifies the port bit to be written.
 309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *          This parameter can be one of GPIO_PIN_x where x can be (0..15).
 310:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @retval None
 311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   */
 312:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** void HAL_GPIO_DeInit(GPIO_TypeDef  *GPIOx, uint32_t GPIO_Pin)
 313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** {
 391              		.loc 1 313 0
 392              		.cfi_startproc
 393              		@ args = 0, pretend = 0, frame = 0
 394              		@ frame_needed = 0, uses_anonymous_args = 0
 395              	.LVL50:
 314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   uint32_t position;
 315:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   uint32_t ioposition = 0x00;
 316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   uint32_t iocurrent = 0x00;
 317:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   uint32_t tmp = 0x00;
 318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   /* Check the parameters */
 320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   assert_param(IS_GPIO_ALL_INSTANCE(GPIOx));
 321:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   
 322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   /* Configure the port pins */
 323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   for(position = 0; position < GPIO_NUMBER; position++)
 396              		.loc 1 323 0
 397 0000 0023     		movs	r3, #0
 398              	.LVL51:
 399 0002 0F2B     		cmp	r3, #15
 400 0004 00F29280 		bhi	.L49
 313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   uint32_t position;
 401              		.loc 1 313 0
 402 0008 F0B5     		push	{r4, r5, r6, r7, lr}
 403              		.cfi_def_cfa_offset 20
 404              		.cfi_offset 4, -20
 405              		.cfi_offset 5, -16
 406              		.cfi_offset 6, -12
 407              		.cfi_offset 7, -8
 408              		.cfi_offset 14, -4
 409 000a 0AE0     		b	.L35
 410              	.LVL52:
 411              	.L52:
 324:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   {
 325:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     /* Get the IO position */
 326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     ioposition = ((uint32_t)0x01) << position;
 327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     /* Get the current IO position */
 328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     iocurrent = (GPIO_Pin) & ioposition;
 329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     if(iocurrent == ioposition)
 331:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     {
 332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       /*------------------------- GPIO Mode Configuration --------------------*/
 333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       /* Configure IO Direction in Input Floating Mode */
 334:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       GPIOx->MODER &= ~(GPIO_MODER_MODER0 << (position * 2));
 335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 336:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       /* Configure the default Alternate Function in current IO */
 337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       GPIOx->AFR[position >> 3] &= ~((uint32_t)0xF << ((uint32_t)(position & (uint32_t)0x07) * 4)) 
 338:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       /* Configure the default value for IO Speed */
 340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       GPIOx->OSPEEDR &= ~(GPIO_OSPEEDER_OSPEEDR0 << (position * 2));
 341:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       /* Configure the default value IO Output Type */
 343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       GPIOx->OTYPER  &= ~(GPIO_OTYPER_OT_0 << position) ;
 344:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       /* Deactivate the Pull-up and Pull-down resistor for the current IO */
 346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       GPIOx->PUPDR &= ~(GPIO_PUPDR_PUPDR0 << (position * 2));
 347:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       /*------------------------- EXTI Mode Configuration --------------------*/
 349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       tmp = SYSCFG->EXTICR[position >> 2];
 350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       tmp &= (((uint32_t)0x0F) << (4 * (position & 0x03)));
 351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       if(tmp == ((uint32_t)(GPIO_GET_INDEX(GPIOx)) << (4 * (position & 0x03))))
 412              		.loc 1 351 0
 413 000c 0925     		movs	r5, #9
 414 000e 00E0     		b	.L34
 415              	.L36:
 416 0010 0025     		movs	r5, #0
 417              	.L34:
 418              		.loc 1 351 0 is_stmt 0 discriminator 40
 419 0012 05FA02F2 		lsl	r2, r5, r2
 420 0016 A242     		cmp	r2, r4
 421 0018 6FD0     		beq	.L50
 422              	.LVL53:
 423              	.L33:
 323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   {
 424              		.loc 1 323 0 is_stmt 1 discriminator 2
 425 001a 0133     		adds	r3, r3, #1
 426              	.LVL54:
 427 001c 0F2B     		cmp	r3, #15
 428 001e 00F28480 		bhi	.L51
 429              	.LVL55:
 430              	.L35:
 326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     /* Get the current IO position */
 431              		.loc 1 326 0
 432 0022 0122     		movs	r2, #1
 433 0024 9A40     		lsls	r2, r2, r3
 434              	.LVL56:
 328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 435              		.loc 1 328 0
 436 0026 02EA0106 		and	r6, r2, r1
 437              	.LVL57:
 330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     {
 438              		.loc 1 330 0
 439 002a B242     		cmp	r2, r6
 440 002c F5D1     		bne	.L33
 334:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 441              		.loc 1 334 0
 442 002e 0568     		ldr	r5, [r0]
 443 0030 5F00     		lsls	r7, r3, #1
 444 0032 0324     		movs	r4, #3
 445 0034 BC40     		lsls	r4, r4, r7
 446 0036 E443     		mvns	r4, r4
 447 0038 2540     		ands	r5, r5, r4
 448 003a 0560     		str	r5, [r0]
 337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 449              		.loc 1 337 0
 450 003c 4FEAD30C 		lsr	ip, r3, #3
 451 0040 0CF1080C 		add	ip, ip, #8
 452 0044 50F82CE0 		ldr	lr, [r0, ip, lsl #2]
 453 0048 03F00705 		and	r5, r3, #7
 454 004c AD00     		lsls	r5, r5, #2
 455 004e 0F27     		movs	r7, #15
 456 0050 07FA05F5 		lsl	r5, r7, r5
 457 0054 2EEA0505 		bic	r5, lr, r5
 458 0058 40F82C50 		str	r5, [r0, ip, lsl #2]
 340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 459              		.loc 1 340 0
 460 005c 8568     		ldr	r5, [r0, #8]
 461 005e 2540     		ands	r5, r5, r4
 462 0060 8560     		str	r5, [r0, #8]
 343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 463              		.loc 1 343 0
 464 0062 4568     		ldr	r5, [r0, #4]
 465 0064 25EA0202 		bic	r2, r5, r2
 466              	.LVL58:
 467 0068 4260     		str	r2, [r0, #4]
 346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 468              		.loc 1 346 0
 469 006a C268     		ldr	r2, [r0, #12]
 470 006c 1440     		ands	r4, r4, r2
 471 006e C460     		str	r4, [r0, #12]
 349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       tmp &= (((uint32_t)0x0F) << (4 * (position & 0x03)));
 472              		.loc 1 349 0
 473 0070 4FEA930C 		lsr	ip, r3, #2
 474 0074 0CF10204 		add	r4, ip, #2
 475 0078 2D4A     		ldr	r2, .L53
 476 007a 52F82440 		ldr	r4, [r2, r4, lsl #2]
 477              	.LVL59:
 350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       if(tmp == ((uint32_t)(GPIO_GET_INDEX(GPIOx)) << (4 * (position & 0x03))))
 478              		.loc 1 350 0
 479 007e 03F00302 		and	r2, r3, #3
 480 0082 9200     		lsls	r2, r2, #2
 481 0084 9740     		lsls	r7, r7, r2
 482 0086 3C40     		ands	r4, r4, r7
 483              	.LVL60:
 484              		.loc 1 351 0
 485 0088 2A4D     		ldr	r5, .L53+4
 486 008a A842     		cmp	r0, r5
 487 008c C0D0     		beq	.L36
 488              		.loc 1 351 0 is_stmt 0 discriminator 1
 489 008e 05F58065 		add	r5, r5, #1024
 490 0092 A842     		cmp	r0, r5
 491 0094 21D0     		beq	.L37
 492              		.loc 1 351 0 discriminator 3
 493 0096 05F58065 		add	r5, r5, #1024
 494 009a A842     		cmp	r0, r5
 495 009c 1FD0     		beq	.L38
 496              		.loc 1 351 0 discriminator 5
 497 009e 05F58065 		add	r5, r5, #1024
 498 00a2 A842     		cmp	r0, r5
 499 00a4 1DD0     		beq	.L39
 500              		.loc 1 351 0 discriminator 7
 501 00a6 05F58065 		add	r5, r5, #1024
 502 00aa A842     		cmp	r0, r5
 503 00ac 1BD0     		beq	.L40
 504              		.loc 1 351 0 discriminator 9
 505 00ae 05F58065 		add	r5, r5, #1024
 506 00b2 A842     		cmp	r0, r5
 507 00b4 19D0     		beq	.L41
 508              		.loc 1 351 0 discriminator 11
 509 00b6 05F58065 		add	r5, r5, #1024
 510 00ba A842     		cmp	r0, r5
 511 00bc 17D0     		beq	.L42
 512              		.loc 1 351 0 discriminator 13
 513 00be 05F58065 		add	r5, r5, #1024
 514 00c2 A842     		cmp	r0, r5
 515 00c4 15D0     		beq	.L43
 516              		.loc 1 351 0 discriminator 15
 517 00c6 05F58065 		add	r5, r5, #1024
 518 00ca A842     		cmp	r0, r5
 519 00cc 13D0     		beq	.L44
 520              		.loc 1 351 0 discriminator 17
 521 00ce 05F58065 		add	r5, r5, #1024
 522 00d2 A842     		cmp	r0, r5
 523 00d4 9AD0     		beq	.L52
 524              		.loc 1 351 0
 525 00d6 0A25     		movs	r5, #10
 526 00d8 9BE7     		b	.L34
 527              	.L37:
 528 00da 0125     		movs	r5, #1
 529              	.LVL61:
 530 00dc 99E7     		b	.L34
 531              	.LVL62:
 532              	.L38:
 533 00de 0225     		movs	r5, #2
 534 00e0 97E7     		b	.L34
 535              	.L39:
 536 00e2 0325     		movs	r5, #3
 537 00e4 95E7     		b	.L34
 538              	.L40:
 539 00e6 0425     		movs	r5, #4
 540 00e8 93E7     		b	.L34
 541              	.L41:
 542 00ea 0525     		movs	r5, #5
 543 00ec 91E7     		b	.L34
 544              	.L42:
 545 00ee 0625     		movs	r5, #6
 546 00f0 8FE7     		b	.L34
 547              	.L43:
 548 00f2 0725     		movs	r5, #7
 549 00f4 8DE7     		b	.L34
 550              	.L44:
 551 00f6 0825     		movs	r5, #8
 552 00f8 8BE7     		b	.L34
 553              	.L50:
 554              	.LVL63:
 352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****       {
 353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         /* Configure the External Interrupt or event for the current IO */
 354:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         tmp = ((uint32_t)0x0F) << (4 * (position & 0x03));
 355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         SYSCFG->EXTICR[position >> 2] &= ~tmp;
 555              		.loc 1 355 0 is_stmt 1
 556 00fa 0D4D     		ldr	r5, .L53
 557 00fc 0CF10202 		add	r2, ip, #2
 558 0100 55F82240 		ldr	r4, [r5, r2, lsl #2]
 559 0104 24EA0707 		bic	r7, r4, r7
 560              	.LVL64:
 561 0108 45F82270 		str	r7, [r5, r2, lsl #2]
 356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 357:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         /* Clear EXTI line configuration */
 358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         EXTI->IMR &= ~((uint32_t)iocurrent);
 562              		.loc 1 358 0
 563 010c 0A4C     		ldr	r4, .L53+8
 564 010e 2568     		ldr	r5, [r4]
 565 0110 F243     		mvns	r2, r6
 566 0112 1540     		ands	r5, r5, r2
 567 0114 2560     		str	r5, [r4]
 359:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         EXTI->EMR &= ~((uint32_t)iocurrent);
 568              		.loc 1 359 0
 569 0116 6568     		ldr	r5, [r4, #4]
 570 0118 1540     		ands	r5, r5, r2
 571 011a 6560     		str	r5, [r4, #4]
 360:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         /* Clear Rising Falling edge configuration */
 362:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         EXTI->RTSR &= ~((uint32_t)iocurrent);
 572              		.loc 1 362 0
 573 011c A568     		ldr	r5, [r4, #8]
 574 011e 1540     		ands	r5, r5, r2
 575 0120 A560     		str	r5, [r4, #8]
 363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****         EXTI->FTSR &= ~((uint32_t)iocurrent);
 576              		.loc 1 363 0
 577 0122 E568     		ldr	r5, [r4, #12]
 578 0124 2A40     		ands	r2, r2, r5
 579 0126 E260     		str	r2, [r4, #12]
 580 0128 77E7     		b	.L33
 581              	.LVL65:
 582              	.L51:
 364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 	  }
 365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     }
 366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   }
 367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** }
 583              		.loc 1 367 0
 584 012a F0BD     		pop	{r4, r5, r6, r7, pc}
 585              	.LVL66:
 586              	.L49:
 587              		.cfi_def_cfa_offset 0
 588              		.cfi_restore 4
 589              		.cfi_restore 5
 590              		.cfi_restore 6
 591              		.cfi_restore 7
 592              		.cfi_restore 14
 593 012c 7047     		bx	lr
 594              	.L54:
 595 012e 00BF     		.align	2
 596              	.L53:
 597 0130 00380140 		.word	1073821696
 598 0134 00000240 		.word	1073872896
 599 0138 003C0140 		.word	1073822720
 600              		.cfi_endproc
 601              	.LFE139:
 603              		.section	.text.HAL_GPIO_ReadPin,"ax",%progbits
 604              		.align	1
 605              		.global	HAL_GPIO_ReadPin
 606              		.syntax unified
 607              		.thumb
 608              		.thumb_func
 609              		.fpu fpv5-d16
 611              	HAL_GPIO_ReadPin:
 612              	.LFB140:
 368:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /**
 370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @}
 371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   */
 372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /** @defgroup GPIO_Exported_Functions_Group2 IO operation functions 
 374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****  *  @brief   GPIO Read and Write
 375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****  *
 376:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** @verbatim
 377:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****  ===============================================================================
 378:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****                        ##### IO operation functions #####
 379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****  ===============================================================================
 380:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 381:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** @endverbatim
 382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @{
 383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   */
 384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /**
 386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @brief  Reads the specified input port pin.
 387:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @param  GPIOx: where x can be (A..K) to select the GPIO peripheral.
 388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @param  GPIO_Pin: specifies the port bit to read.
 389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *         This parameter can be GPIO_PIN_x where x can be (0..15).
 390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @retval The input port pin value.
 391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   */
 392:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** GPIO_PinState HAL_GPIO_ReadPin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
 393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** {
 613              		.loc 1 393 0
 614              		.cfi_startproc
 615              		@ args = 0, pretend = 0, frame = 0
 616              		@ frame_needed = 0, uses_anonymous_args = 0
 617              		@ link register save eliminated.
 618              	.LVL67:
 394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   GPIO_PinState bitstatus;
 395:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 396:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   /* Check the parameters */
 397:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN(GPIO_Pin));
 398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   if((GPIOx->IDR & GPIO_Pin) != (uint32_t)GPIO_PIN_RESET)
 619              		.loc 1 399 0
 620 0000 0369     		ldr	r3, [r0, #16]
 621 0002 1942     		tst	r1, r3
 622 0004 01D1     		bne	.L58
 400:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   {
 401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     bitstatus = GPIO_PIN_SET;
 402:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   }
 403:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   else
 404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   {
 405:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     bitstatus = GPIO_PIN_RESET;
 623              		.loc 1 405 0
 624 0006 0020     		movs	r0, #0
 625              	.LVL68:
 406:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   }
 407:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   return bitstatus;
 408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** }
 626              		.loc 1 408 0
 627 0008 7047     		bx	lr
 628              	.LVL69:
 629              	.L58:
 401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   }
 630              		.loc 1 401 0
 631 000a 0120     		movs	r0, #1
 632              	.LVL70:
 633 000c 7047     		bx	lr
 634              		.cfi_endproc
 635              	.LFE140:
 637              		.section	.text.HAL_GPIO_WritePin,"ax",%progbits
 638              		.align	1
 639              		.global	HAL_GPIO_WritePin
 640              		.syntax unified
 641              		.thumb
 642              		.thumb_func
 643              		.fpu fpv5-d16
 645              	HAL_GPIO_WritePin:
 646              	.LFB141:
 409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /**
 411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @brief  Sets or clears the selected data port bit.
 412:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *
 413:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @note   This function uses GPIOx_BSRR register to allow atomic read/modify
 414:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *         accesses. In this way, there is no risk of an IRQ occurring between
 415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *         the read and the modify access.
 416:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *
 417:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @param  GPIOx: where x can be (A..K) to select the GPIO peripheral.
 418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @param  GPIO_Pin: specifies the port bit to be written.
 419:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *          This parameter can be one of GPIO_PIN_x where x can be (0..15).
 420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @param  PinState: specifies the value to be written to the selected bit.
 421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *          This parameter can be one of the GPIO_PinState enum values:
 422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *            @arg GPIO_PIN_RESET: to clear the port pin
 423:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *            @arg GPIO_PIN_SET: to set the port pin
 424:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @retval None
 425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   */
 426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** void HAL_GPIO_WritePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState)
 427:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** {
 647              		.loc 1 427 0
 648              		.cfi_startproc
 649              		@ args = 0, pretend = 0, frame = 0
 650              		@ frame_needed = 0, uses_anonymous_args = 0
 651              		@ link register save eliminated.
 652              	.LVL71:
 428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   /* Check the parameters */
 429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN(GPIO_Pin));
 430:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN_ACTION(PinState));
 431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 432:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   if(PinState != GPIO_PIN_RESET)
 653              		.loc 1 432 0
 654 0000 12B9     		cbnz	r2, .L62
 433:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   {
 434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     GPIOx->BSRR = GPIO_Pin;
 435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   }
 436:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   else
 437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   {
 438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     GPIOx->BSRR = (uint32_t)GPIO_Pin << 16;
 655              		.loc 1 438 0
 656 0002 0904     		lsls	r1, r1, #16
 657              	.LVL72:
 658 0004 8161     		str	r1, [r0, #24]
 439:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   }
 440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** }
 659              		.loc 1 440 0
 660 0006 7047     		bx	lr
 661              	.LVL73:
 662              	.L62:
 434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   }
 663              		.loc 1 434 0
 664 0008 8161     		str	r1, [r0, #24]
 665 000a 7047     		bx	lr
 666              		.cfi_endproc
 667              	.LFE141:
 669              		.section	.text.HAL_GPIO_TogglePin,"ax",%progbits
 670              		.align	1
 671              		.global	HAL_GPIO_TogglePin
 672              		.syntax unified
 673              		.thumb
 674              		.thumb_func
 675              		.fpu fpv5-d16
 677              	HAL_GPIO_TogglePin:
 678              	.LFB142:
 441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 442:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /**
 443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @brief  Toggles the specified GPIO pins.
 444:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @param  GPIOx: Where x can be (A..I) to select the GPIO peripheral.
 445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @param  GPIO_Pin: Specifies the pins to be toggled.
 446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @retval None
 447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   */
 448:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** void HAL_GPIO_TogglePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
 449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** {
 679              		.loc 1 449 0
 680              		.cfi_startproc
 681              		@ args = 0, pretend = 0, frame = 0
 682              		@ frame_needed = 0, uses_anonymous_args = 0
 683              		@ link register save eliminated.
 684              	.LVL74:
 450:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   /* Check the parameters */
 451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN(GPIO_Pin));
 452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   GPIOx->ODR ^= GPIO_Pin;
 685              		.loc 1 453 0
 686 0000 4369     		ldr	r3, [r0, #20]
 687 0002 5940     		eors	r1, r1, r3
 688              	.LVL75:
 689 0004 4161     		str	r1, [r0, #20]
 454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** }
 690              		.loc 1 454 0
 691 0006 7047     		bx	lr
 692              		.cfi_endproc
 693              	.LFE142:
 695              		.section	.text.HAL_GPIO_LockPin,"ax",%progbits
 696              		.align	1
 697              		.global	HAL_GPIO_LockPin
 698              		.syntax unified
 699              		.thumb
 700              		.thumb_func
 701              		.fpu fpv5-d16
 703              	HAL_GPIO_LockPin:
 704              	.LFB143:
 455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 456:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /**
 457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @brief  Locks GPIO Pins configuration registers.
 458:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @note   The locked registers are GPIOx_MODER, GPIOx_OTYPER, GPIOx_OSPEEDR,
 459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *         GPIOx_PUPDR, GPIOx_AFRL and GPIOx_AFRH.
 460:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @note   The configuration of the locked GPIO pins can no longer be modified
 461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *         until the next reset.
 462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @param  GPIOx: where x can be (A..F) to select the GPIO peripheral for STM32F7 family
 463:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @param  GPIO_Pin: specifies the port bit to be locked.
 464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   *         This parameter can be any combination of GPIO_PIN_x where x can be (0..15).
 465:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @retval None
 466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   */
 467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** HAL_StatusTypeDef HAL_GPIO_LockPin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin)
 468:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** {
 705              		.loc 1 468 0
 706              		.cfi_startproc
 707              		@ args = 0, pretend = 0, frame = 8
 708              		@ frame_needed = 0, uses_anonymous_args = 0
 709              		@ link register save eliminated.
 710              	.LVL76:
 711 0000 82B0     		sub	sp, sp, #8
 712              		.cfi_def_cfa_offset 8
 469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   __IO uint32_t tmp = GPIO_LCKR_LCKK;
 713              		.loc 1 469 0
 714 0002 4FF48033 		mov	r3, #65536
 715 0006 0193     		str	r3, [sp, #4]
 470:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 471:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   /* Check the parameters */
 472:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   assert_param(IS_GPIO_PIN(GPIO_Pin));
 473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 474:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   /* Apply lock key write sequence */
 475:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   tmp |= GPIO_Pin;
 716              		.loc 1 475 0
 717 0008 019B     		ldr	r3, [sp, #4]
 718 000a 0B43     		orrs	r3, r3, r1
 719 000c 0193     		str	r3, [sp, #4]
 476:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   /* Set LCKx bit(s): LCKK='1' + LCK[15-0] */
 477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   GPIOx->LCKR = tmp;
 720              		.loc 1 477 0
 721 000e 019B     		ldr	r3, [sp, #4]
 722 0010 C361     		str	r3, [r0, #28]
 478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   /* Reset LCKx bit(s): LCKK='0' + LCK[15-0] */
 479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   GPIOx->LCKR = GPIO_Pin;
 723              		.loc 1 479 0
 724 0012 C161     		str	r1, [r0, #28]
 480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   /* Set LCKx bit(s): LCKK='1' + LCK[15-0] */
 481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   GPIOx->LCKR = tmp;
 725              		.loc 1 481 0
 726 0014 019B     		ldr	r3, [sp, #4]
 727 0016 C361     		str	r3, [r0, #28]
 482:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   /* Read LCKK bit*/
 483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   tmp = GPIOx->LCKR;
 728              		.loc 1 483 0
 729 0018 C369     		ldr	r3, [r0, #28]
 730 001a 0193     		str	r3, [sp, #4]
 484:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****  if((GPIOx->LCKR & GPIO_LCKR_LCKK) != RESET)
 731              		.loc 1 485 0
 732 001c C369     		ldr	r3, [r0, #28]
 733 001e 13F4803F 		tst	r3, #65536
 734 0022 02D1     		bne	.L68
 486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   {
 487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     return HAL_OK;
 488:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   }
 489:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   else
 490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   {
 491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     return HAL_ERROR;
 735              		.loc 1 491 0
 736 0024 0120     		movs	r0, #1
 737              	.LVL77:
 738              	.L65:
 492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   }
 493:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** }
 739              		.loc 1 493 0
 740 0026 02B0     		add	sp, sp, #8
 741              		.cfi_remember_state
 742              		.cfi_def_cfa_offset 0
 743              		@ sp needed
 744 0028 7047     		bx	lr
 745              	.LVL78:
 746              	.L68:
 747              		.cfi_restore_state
 487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   }
 748              		.loc 1 487 0
 749 002a 0020     		movs	r0, #0
 750              	.LVL79:
 751 002c FBE7     		b	.L65
 752              		.cfi_endproc
 753              	.LFE143:
 755              		.section	.text.HAL_GPIO_EXTI_Callback,"ax",%progbits
 756              		.align	1
 757              		.weak	HAL_GPIO_EXTI_Callback
 758              		.syntax unified
 759              		.thumb
 760              		.thumb_func
 761              		.fpu fpv5-d16
 763              	HAL_GPIO_EXTI_Callback:
 764              	.LFB145:
 494:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 495:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /**
 496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @brief  This function handles EXTI interrupt request.
 497:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @param  GPIO_Pin: Specifies the pins connected EXTI line
 498:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @retval None
 499:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   */
 500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** void HAL_GPIO_EXTI_IRQHandler(uint16_t GPIO_Pin)
 501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** {
 502:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   /* EXTI line interrupt detected */
 503:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   if(__HAL_GPIO_EXTI_GET_IT(GPIO_Pin) != RESET)
 504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   {
 505:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     __HAL_GPIO_EXTI_CLEAR_IT(GPIO_Pin);
 506:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     HAL_GPIO_EXTI_Callback(GPIO_Pin);
 507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   }
 508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** }
 509:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** /**
 511:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @brief  EXTI line detection callbacks.
 512:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @param  GPIO_Pin: Specifies the pins connected EXTI line
 513:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   * @retval None
 514:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   */
 515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** __weak void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
 516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** {
 765              		.loc 1 516 0
 766              		.cfi_startproc
 767              		@ args = 0, pretend = 0, frame = 0
 768              		@ frame_needed = 0, uses_anonymous_args = 0
 769              		@ link register save eliminated.
 770              	.LVL80:
 517:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   /* Prevent unused argument(s) compilation warning */
 518:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   UNUSED(GPIO_Pin);
 519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   
 520:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   /* NOTE: This function Should not be modified, when the callback is needed,
 521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****            the HAL_GPIO_EXTI_Callback could be implemented in the user file
 522:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****    */
 523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** }
 771              		.loc 1 523 0
 772 0000 7047     		bx	lr
 773              		.cfi_endproc
 774              	.LFE145:
 776              		.section	.text.HAL_GPIO_EXTI_IRQHandler,"ax",%progbits
 777              		.align	1
 778              		.global	HAL_GPIO_EXTI_IRQHandler
 779              		.syntax unified
 780              		.thumb
 781              		.thumb_func
 782              		.fpu fpv5-d16
 784              	HAL_GPIO_EXTI_IRQHandler:
 785              	.LFB144:
 501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   /* EXTI line interrupt detected */
 786              		.loc 1 501 0
 787              		.cfi_startproc
 788              		@ args = 0, pretend = 0, frame = 0
 789              		@ frame_needed = 0, uses_anonymous_args = 0
 790              	.LVL81:
 791 0000 08B5     		push	{r3, lr}
 792              		.cfi_def_cfa_offset 8
 793              		.cfi_offset 3, -8
 794              		.cfi_offset 14, -4
 503:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   {
 795              		.loc 1 503 0
 796 0002 054B     		ldr	r3, .L74
 797 0004 5B69     		ldr	r3, [r3, #20]
 798 0006 0342     		tst	r3, r0
 799 0008 00D1     		bne	.L73
 800              	.LVL82:
 801              	.L70:
 508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 802              		.loc 1 508 0
 803 000a 08BD     		pop	{r3, pc}
 804              	.LVL83:
 805              	.L73:
 505:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****     HAL_GPIO_EXTI_Callback(GPIO_Pin);
 806              		.loc 1 505 0
 807 000c 024B     		ldr	r3, .L74
 808 000e 5861     		str	r0, [r3, #20]
 506:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c ****   }
 809              		.loc 1 506 0
 810 0010 FFF7FEFF 		bl	HAL_GPIO_EXTI_Callback
 811              	.LVL84:
 508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_gpio.c **** 
 812              		.loc 1 508 0
 813 0014 F9E7     		b	.L70
 814              	.L75:
 815 0016 00BF     		.align	2
 816              	.L74:
 817 0018 003C0140 		.word	1073822720
 818              		.cfi_endproc
 819              	.LFE144:
 821              		.text
 822              	.Letext0:
 823              		.file 2 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 824              		.file 3 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 825              		.file 4 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h"
 826              		.file 5 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/system_stm
 827              		.file 6 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f769x
 828              		.file 7 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 829              		.file 8 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 830              		.file 9 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 831              		.file 10 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 832              		.file 11 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f7xx
 833              		.file 12 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_def.
 834              		.file 13 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_gpio
DEFINED SYMBOLS
                            *ABS*:0000000000000000 stm32f7xx_hal_gpio.c
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccK2EABw.s:17     .text.HAL_GPIO_Init:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccK2EABw.s:24     .text.HAL_GPIO_Init:0000000000000000 HAL_GPIO_Init
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccK2EABw.s:374    .text.HAL_GPIO_Init:00000000000001d0 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccK2EABw.s:382    .text.HAL_GPIO_DeInit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccK2EABw.s:389    .text.HAL_GPIO_DeInit:0000000000000000 HAL_GPIO_DeInit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccK2EABw.s:597    .text.HAL_GPIO_DeInit:0000000000000130 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccK2EABw.s:604    .text.HAL_GPIO_ReadPin:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccK2EABw.s:611    .text.HAL_GPIO_ReadPin:0000000000000000 HAL_GPIO_ReadPin
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccK2EABw.s:638    .text.HAL_GPIO_WritePin:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccK2EABw.s:645    .text.HAL_GPIO_WritePin:0000000000000000 HAL_GPIO_WritePin
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccK2EABw.s:670    .text.HAL_GPIO_TogglePin:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccK2EABw.s:677    .text.HAL_GPIO_TogglePin:0000000000000000 HAL_GPIO_TogglePin
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccK2EABw.s:696    .text.HAL_GPIO_LockPin:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccK2EABw.s:703    .text.HAL_GPIO_LockPin:0000000000000000 HAL_GPIO_LockPin
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccK2EABw.s:756    .text.HAL_GPIO_EXTI_Callback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccK2EABw.s:763    .text.HAL_GPIO_EXTI_Callback:0000000000000000 HAL_GPIO_EXTI_Callback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccK2EABw.s:777    .text.HAL_GPIO_EXTI_IRQHandler:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccK2EABw.s:784    .text.HAL_GPIO_EXTI_IRQHandler:0000000000000000 HAL_GPIO_EXTI_IRQHandler
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccK2EABw.s:817    .text.HAL_GPIO_EXTI_IRQHandler:0000000000000018 $d
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

NO UNDEFINED SYMBOLS

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
  12              		.file	"stm32f7xx_hal_adc_ex.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.ADC_MultiModeDMAError,"ax",%progbits
  17              		.align	1
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv5-d16
  23              	ADC_MultiModeDMAError:
  24              	.LFB152:
  25              		.file 1 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_e
   1:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /**
   2:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   ******************************************************************************
   3:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @file    stm32f7xx_hal_adc_ex.c
   4:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @author  MCD Application Team
   5:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @version V1.2.2
   6:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @date    14-April-2017
   7:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @brief   This file provides firmware functions to manage the following 
   8:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *          functionalities of the ADC extension peripheral:
   9:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *           + Extended features functions
  10:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         
  11:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   @verbatim
  12:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   ==============================================================================
  13:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                     ##### How to use this driver #####
  14:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   ==============================================================================
  15:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     [..]
  16:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     (#)Initialize the ADC low level resources by implementing the HAL_ADC_MspInit():
  17:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (##) Enable the ADC interface clock using __HAL_RCC_ADC_CLK_ENABLE()
  18:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (##) ADC pins configuration
  19:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****              (+++) Enable the clock for the ADC GPIOs using the following function:
  20:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                    __HAL_RCC_GPIOx_CLK_ENABLE()  
  21:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****              (+++) Configure these ADC pins in analog mode using HAL_GPIO_Init() 
  22:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (##) In case of using interrupts (e.g. HAL_ADC_Start_IT())
  23:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****              (+++) Configure the ADC interrupt priority using HAL_NVIC_SetPriority()
  24:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****              (+++) Enable the ADC IRQ handler using HAL_NVIC_EnableIRQ()
  25:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****              (+++) In ADC IRQ handler, call HAL_ADC_IRQHandler()
  26:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       (##) In case of using DMA to control data transfer (e.g. HAL_ADC_Start_DMA())
  27:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****              (+++) Enable the DMAx interface clock using __HAL_RCC_DMAx_CLK_ENABLE()
  28:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****              (+++) Configure and enable two DMA streams stream for managing data
  29:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                  transfer from peripheral to memory (output stream)
  30:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****              (+++) Associate the initialized DMA handle to the ADC DMA handle
  31:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                  using  __HAL_LINKDMA()
  32:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****              (+++) Configure the priority and enable the NVIC for the transfer complete
  33:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                  interrupt on the two DMA Streams. The output stream should have higher
  34:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                  priority than the input stream.                  
  35:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      (#) Configure the ADC Prescaler, conversion resolution and data alignment 
  36:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****          using the HAL_ADC_Init() function. 
  37:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
  38:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      (#) Configure the ADC Injected channels group features, use HAL_ADC_Init()
  39:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****          and HAL_ADC_ConfigChannel() functions.
  40:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****          
  41:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      (#) Three operation modes are available within this driver :     
  42:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
  43:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      *** Polling mode IO operation ***
  44:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      =================================
  45:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      [..]    
  46:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (+) Start the ADC peripheral using HAL_ADCEx_InjectedStart() 
  47:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (+) Wait for end of conversion using HAL_ADCEx_InjectedPollForConversion(), at this stage
  48:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****            user can specify the value of timeout according to his end application      
  49:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (+) To read the ADC converted values, use the HAL_ADCEx_InjectedGetValue() function.
  50:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (+) Stop the ADC peripheral using HAL_ADCEx_InjectedStop()
  51:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
  52:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      *** Interrupt mode IO operation ***    
  53:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      ===================================
  54:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      [..]    
  55:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (+) Start the ADC peripheral using HAL_ADCEx_InjectedStart_IT() 
  56:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (+) Use HAL_ADC_IRQHandler() called under ADC_IRQHandler() Interrupt subroutine
  57:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (+) At ADC end of conversion HAL_ADCEx_InjectedConvCpltCallback() function is executed and u
  58:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****             add his own code by customization of function pointer HAL_ADCEx_InjectedConvCpltCallbac
  59:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (+) In case of ADC Error, HAL_ADCEx_InjectedErrorCallback() function is executed and user ca
  60:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****             add his own code by customization of function pointer HAL_ADCEx_InjectedErrorCallback
  61:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (+) Stop the ADC peripheral using HAL_ADCEx_InjectedStop_IT()
  62:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        
  63:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****             
  64:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      *** DMA mode IO operation ***    
  65:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      ==============================
  66:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      [..]    
  67:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (+) Start the ADC peripheral using HAL_ADCEx_InjectedStart_DMA(), at this stage the user spe
  68:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****            of data to be transferred at each end of conversion 
  69:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (+) At The end of data transfer ba HAL_ADCEx_InjectedConvCpltCallback() function is executed
  70:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****             add his own code by customization of function pointer HAL_ADCEx_InjectedConvCpltCallbac
  71:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (+) In case of transfer Error, HAL_ADCEx_InjectedErrorCallback() function is executed and us
  72:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****             add his own code by customization of function pointer HAL_ADCEx_InjectedErrorCallback
  73:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         (+) Stop the ADC peripheral using HAL_ADCEx_InjectedStop_DMA()
  74:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         
  75:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      *** Multi mode ADCs Regular channels configuration ***
  76:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      ======================================================
  77:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      [..]        
  78:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (+) Select the Multi mode ADC regular channels features (dual or triple mode)  
  79:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****           and configure the DMA mode using HAL_ADCEx_MultiModeConfigChannel() functions. 
  80:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (+) Start the ADC peripheral using HAL_ADCEx_MultiModeStart_DMA(), at this stage the user sp
  81:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****            of data to be transferred at each end of conversion           
  82:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (+) Read the ADCs converted values using the HAL_ADCEx_MultiModeGetValue() function.
  83:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
  84:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
  85:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     @endverbatim
  86:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   ******************************************************************************
  87:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @attention
  88:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *
  89:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * <h2><center>&copy; COPYRIGHT(c) 2017 STMicroelectronics</center></h2>
  90:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *
  91:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * Redistribution and use in source and binary forms, with or without modification,
  92:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * are permitted provided that the following conditions are met:
  93:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *   1. Redistributions of source code must retain the above copyright notice,
  94:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *      this list of conditions and the following disclaimer.
  95:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
  96:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *      this list of conditions and the following disclaimer in the documentation
  97:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *      and/or other materials provided with the distribution.
  98:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
  99:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *      may be used to endorse or promote products derived from this software
 100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *      without specific prior written permission.
 101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *
 102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *
 113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   ******************************************************************************
 114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */ 
 115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /* Includes ------------------------------------------------------------------*/
 117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** #include "stm32f7xx_hal.h"
 118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /** @addtogroup STM32F7xx_HAL_Driver
 120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @{
 121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
 122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /** @defgroup ADCEx ADCEx
 124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @brief ADC Extended driver modules
 125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @{
 126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */ 
 127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** #ifdef HAL_ADC_MODULE_ENABLED
 129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /* Private typedef -----------------------------------------------------------*/
 131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /* Private define ------------------------------------------------------------*/ 
 132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /* Private macro -------------------------------------------------------------*/
 133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /* Private variables ---------------------------------------------------------*/
 134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /** @addtogroup ADCEx_Private_Functions
 135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @{
 136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
 137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /* Private function prototypes -----------------------------------------------*/
 138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** static void ADC_MultiModeDMAConvCplt(DMA_HandleTypeDef *hdma);
 139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** static void ADC_MultiModeDMAError(DMA_HandleTypeDef *hdma);
 140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** static void ADC_MultiModeDMAHalfConvCplt(DMA_HandleTypeDef *hdma); 
 141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /**
 142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @}
 143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
 144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /* Exported functions --------------------------------------------------------*/
 146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /** @defgroup ADCEx_Exported_Functions ADC Exported Functions
 147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @{
 148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
 149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /** @defgroup ADCEx_Exported_Functions_Group1  Extended features functions 
 151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *  @brief    Extended features functions  
 152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *
 153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** @verbatim   
 154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****  ===============================================================================
 155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                  ##### Extended features functions #####
 156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****  ===============================================================================  
 157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     [..]  This section provides functions allowing to:
 158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       (+) Start conversion of injected channel.
 159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       (+) Stop conversion of injected channel.
 160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       (+) Start multimode and enable DMA transfer.
 161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       (+) Stop multimode and disable DMA transfer.
 162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       (+) Get result of injected channel conversion.
 163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       (+) Get result of multimode conversion.
 164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       (+) Configure injected channels.
 165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       (+) Configure multimode.
 166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                
 167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** @endverbatim
 168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @{
 169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
 170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /**
 172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @brief  Enables the selected ADC software start conversion of the injected channels.
 173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         the configuration information for the specified ADC.
 175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @retval HAL status
 176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
 177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** HAL_StatusTypeDef HAL_ADCEx_InjectedStart(ADC_HandleTypeDef* hadc)
 178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** {
 179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __IO uint32_t counter = 0;
 180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   uint32_t tmp1 = 0, tmp2 = 0;
 181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Process locked */
 183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __HAL_LOCK(hadc);
 184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Enable the ADC peripheral */
 186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Check if ADC peripheral is disabled in order to enable it and wait during 
 188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      Tstab time the ADC's stabilization */
 189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   if((hadc->Instance->CR2 & ADC_CR2_ADON) != ADC_CR2_ADON)
 190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {  
 191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Enable the Peripheral */
 192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     __HAL_ADC_ENABLE(hadc);
 193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Delay for ADC stabilization time */
 195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Compute number of CPU cycles to wait for */
 196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     counter = (ADC_STAB_DELAY_US * (SystemCoreClock / 1000000));
 197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     while(counter != 0)
 198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       counter--;
 200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Start conversion if ADC is effectively enabled */
 204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   if(HAL_IS_BIT_SET(hadc->Instance->CR2, ADC_CR2_ADON))
 205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Set ADC state                                                          */
 207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* - Clear state bitfield related to injected group conversion results    */
 208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* - Set state bitfield related to injected operation                     */
 209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     ADC_STATE_CLR_SET(hadc->State,
 210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_INJ_EOC,
 211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                       HAL_ADC_STATE_INJ_BUSY);
 212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Check if a regular conversion is ongoing */
 214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Note: On this device, there is no ADC error code fields related to     */
 215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /*       conversions on group injected only. In case of conversion on     */
 216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /*       going on group regular, no error code is reset.                  */
 217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_REG_BUSY))
 218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       /* Reset ADC all error code fields */
 220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       ADC_CLEAR_ERRORCODE(hadc);
 221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 223:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Process unlocked */
 224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Unlock before starting ADC conversions: in case of potential           */
 225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* interruption, to let the process to ADC IRQ Handler.                   */
 226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     __HAL_UNLOCK(hadc);
 227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Clear injected group conversion flag */
 229:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* (To ensure of no unknown state from potential previous ADC operations) */
 230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_JEOC);
 231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Check if Multimode enabled */
 233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     if(HAL_IS_BIT_CLR(ADC->CCR, ADC_CCR_MULTI))
 234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       tmp1 = HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_JEXTEN);
 236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       tmp2 = HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO);
 237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       if(tmp1 && tmp2)
 238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       {
 239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         /* Enable the selected ADC software conversion for injected group */
 240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         hadc->Instance->CR2 |= ADC_CR2_JSWSTART;
 241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       }
 242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     else
 244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       tmp1 = HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_JEXTEN);
 246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       tmp2 = HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO);
 247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       if((hadc->Instance == ADC1) && tmp1 && tmp2)  
 248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       {
 249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         /* Enable the selected ADC software conversion for injected group */
 250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         hadc->Instance->CR2 |= ADC_CR2_JSWSTART;
 251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       }
 252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Return function status */
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   return HAL_OK;
 257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /**
 260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @brief  Enables the interrupt and starts ADC conversion of injected channels.
 261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         the configuration information for the specified ADC.
 263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @retval HAL status.
 265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
 266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** HAL_StatusTypeDef HAL_ADCEx_InjectedStart_IT(ADC_HandleTypeDef* hadc)
 267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** {
 268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __IO uint32_t counter = 0;
 269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   uint32_t tmp1 = 0, tmp2 = 0;
 270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Process locked */
 272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __HAL_LOCK(hadc);
 273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Enable the ADC peripheral */
 275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Check if ADC peripheral is disabled in order to enable it and wait during 
 277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      Tstab time the ADC's stabilization */
 278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   if((hadc->Instance->CR2 & ADC_CR2_ADON) != ADC_CR2_ADON)
 279:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {  
 280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Enable the Peripheral */
 281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     __HAL_ADC_ENABLE(hadc);
 282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 283:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Delay for ADC stabilization time */
 284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Compute number of CPU cycles to wait for */
 285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     counter = (ADC_STAB_DELAY_US * (SystemCoreClock / 1000000));
 286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     while(counter != 0)
 287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       counter--;
 289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 292:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Start conversion if ADC is effectively enabled */
 293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   if(HAL_IS_BIT_SET(hadc->Instance->CR2, ADC_CR2_ADON))
 294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Set ADC state                                                          */
 296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* - Clear state bitfield related to injected group conversion results    */
 297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* - Set state bitfield related to injected operation                     */
 298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     ADC_STATE_CLR_SET(hadc->State,
 299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_INJ_EOC,
 300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                       HAL_ADC_STATE_INJ_BUSY);
 301:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 302:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Check if a regular conversion is ongoing */
 303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Note: On this device, there is no ADC error code fields related to     */
 304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /*       conversions on group injected only. In case of conversion on     */
 305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /*       going on group regular, no error code is reset.                  */
 306:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_REG_BUSY))
 307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       /* Reset ADC all error code fields */
 309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       ADC_CLEAR_ERRORCODE(hadc);
 310:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 312:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Process unlocked */
 313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Unlock before starting ADC conversions: in case of potential           */
 314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* interruption, to let the process to ADC IRQ Handler.                   */
 315:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     __HAL_UNLOCK(hadc);
 316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 317:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Clear injected group conversion flag */
 318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* (To ensure of no unknown state from potential previous ADC operations) */
 319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_JEOC);
 320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 321:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Enable end of conversion interrupt for injected channels */
 322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     __HAL_ADC_ENABLE_IT(hadc, ADC_IT_JEOC);
 323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 324:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Check if Multimode enabled */
 325:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     if(HAL_IS_BIT_CLR(ADC->CCR, ADC_CCR_MULTI))
 326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       tmp1 = HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_JEXTEN);
 328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       tmp2 = HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO);
 329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       if(tmp1 && tmp2)
 330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       {
 331:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         /* Enable the selected ADC software conversion for injected group */
 332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         hadc->Instance->CR2 |= ADC_CR2_JSWSTART;
 333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       }
 334:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     else
 336:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       tmp1 = HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_JEXTEN);
 338:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       tmp2 = HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO);
 339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       if((hadc->Instance == ADC1) && tmp1 && tmp2)  
 340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       {
 341:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         /* Enable the selected ADC software conversion for injected group */
 342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         hadc->Instance->CR2 |= ADC_CR2_JSWSTART;
 343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       }
 344:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 347:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Return function status */
 348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   return HAL_OK;
 349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /**
 352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @brief  Stop conversion of injected channels. Disable ADC peripheral if
 353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         no regular conversion is on going.
 354:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @note   If ADC must be disabled and if conversion is on going on 
 355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         regular group, function HAL_ADC_Stop must be used to stop both
 356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         injected and regular groups, and disable the ADC.
 357:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @note   If injected group mode auto-injection is enabled,
 358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         function HAL_ADC_Stop must be used.
 359:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @note   In case of auto-injection mode, HAL_ADC_Stop must be used.
 360:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  hadc: ADC handle
 361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @retval None
 362:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
 363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** HAL_StatusTypeDef HAL_ADCEx_InjectedStop(ADC_HandleTypeDef* hadc)
 364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** {
 365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Check the parameters */
 368:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Process locked */
 371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __HAL_LOCK(hadc);
 372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Stop potential conversion and disable ADC peripheral                     */
 374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Conditioned to:                                                          */
 375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* - No conversion on the other group (regular group) is intended to        */
 376:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /*   continue (injected and regular groups stop conversion and ADC disable  */
 377:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /*   are common)                                                            */
 378:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* - In case of auto-injection mode, HAL_ADC_Stop must be used.             */
 379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   if(((hadc->State & HAL_ADC_STATE_REG_BUSY) == RESET)  &&
 380:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO)   )
 381:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Stop potential conversion on going, on regular and injected groups */
 383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Disable ADC peripheral */
 384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     __HAL_ADC_DISABLE(hadc);
 385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Check if ADC is effectively disabled */
 387:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     if(HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_ADON))
 388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       /* Set ADC state */
 390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       ADC_STATE_CLR_SET(hadc->State,
 391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                         HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 392:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                         HAL_ADC_STATE_READY);
 393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 395:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   else
 396:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 397:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Update ADC state machine to error */
 398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
 399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       
 400:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     tmp_hal_status = HAL_ERROR;
 401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 402:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 403:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Process unlocked */
 404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __HAL_UNLOCK(hadc);
 405:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 406:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Return function status */
 407:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   return tmp_hal_status;
 408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /**
 411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @brief  Poll for injected conversion complete
 412:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 413:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         the configuration information for the specified ADC.
 414:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  Timeout: Timeout value in millisecond.  
 415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @retval HAL status
 416:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
 417:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** HAL_StatusTypeDef HAL_ADCEx_InjectedPollForConversion(ADC_HandleTypeDef* hadc, uint32_t Timeout)
 418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** {
 419:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   uint32_t tickstart = 0;
 420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Get tick */ 
 422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   tickstart = HAL_GetTick();
 423:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 424:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Check End of conversion flag */
 425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   while(!(__HAL_ADC_GET_FLAG(hadc, ADC_FLAG_JEOC)))
 426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 427:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Check for the Timeout */
 428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     if(Timeout != HAL_MAX_DELAY)
 429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 430:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
 431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       {
 432:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         hadc->State= HAL_ADC_STATE_TIMEOUT;
 433:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         /* Process unlocked */
 434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         __HAL_UNLOCK(hadc);
 435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         return HAL_TIMEOUT;
 436:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       }
 437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 439:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Clear injected group conversion flag */
 441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_JSTRT | ADC_FLAG_JEOC);
 442:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Update ADC state machine */
 444:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   SET_BIT(hadc->State, HAL_ADC_STATE_INJ_EOC);
 445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Determine whether any further conversion upcoming on group injected      */
 447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* by external trigger, continuous mode or scan sequence on going.          */
 448:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Note: On STM32F7, there is no independent flag of end of sequence.       */
 449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /*       The test of scan sequence on going is done either with scan        */
 450:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /*       sequence disabled or with end of conversion flag set to            */
 451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /*       of end of sequence.                                                */
 452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   if(ADC_IS_SOFTWARE_START_INJECTED(hadc)                    &&
 453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      (HAL_IS_BIT_CLR(hadc->Instance->JSQR, ADC_JSQR_JL)  ||
 454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)    ) &&
 455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      (HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO) &&
 456:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       (ADC_IS_SOFTWARE_START_REGULAR(hadc)       &&
 457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       (hadc->Init.ContinuousConvMode == DISABLE)   )       )   )
 458:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Set ADC state */
 460:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     CLEAR_BIT(hadc->State, HAL_ADC_STATE_INJ_BUSY);
 461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_REG_BUSY))
 463:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     { 
 464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       SET_BIT(hadc->State, HAL_ADC_STATE_READY);
 465:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 468:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Return ADC state */
 469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   return HAL_OK;
 470:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }      
 471:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 472:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /**
 473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @brief  Stop conversion of injected channels, disable interruption of 
 474:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         end-of-conversion. Disable ADC peripheral if no regular conversion
 475:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         is on going.
 476:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @note   If ADC must be disabled and if conversion is on going on 
 477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         regular group, function HAL_ADC_Stop must be used to stop both
 478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         injected and regular groups, and disable the ADC.
 479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @note   If injected group mode auto-injection is enabled,
 480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         function HAL_ADC_Stop must be used.
 481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  hadc: ADC handle
 482:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @retval None
 483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
 484:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** HAL_StatusTypeDef HAL_ADCEx_InjectedStop_IT(ADC_HandleTypeDef* hadc)
 485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** {
 486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 488:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Check the parameters */
 489:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Process locked */
 492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __HAL_LOCK(hadc);
 493:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 494:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Stop potential conversion and disable ADC peripheral                     */
 495:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Conditioned to:                                                          */
 496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* - No conversion on the other group (regular group) is intended to        */
 497:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /*   continue (injected and regular groups stop conversion and ADC disable  */
 498:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /*   are common)                                                            */
 499:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* - In case of auto-injection mode, HAL_ADC_Stop must be used.             */ 
 500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   if(((hadc->State & HAL_ADC_STATE_REG_BUSY) == RESET)  &&
 501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO)   )
 502:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 503:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Stop potential conversion on going, on regular and injected groups */
 504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Disable ADC peripheral */
 505:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     __HAL_ADC_DISABLE(hadc);
 506:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Check if ADC is effectively disabled */
 508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     if(HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_ADON))
 509:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       /* Disable ADC end of conversion interrupt for injected channels */
 511:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       __HAL_ADC_DISABLE_IT(hadc, ADC_IT_JEOC);
 512:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       
 513:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       /* Set ADC state */
 514:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       ADC_STATE_CLR_SET(hadc->State,
 515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                         HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                         HAL_ADC_STATE_READY);
 517:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 518:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   else
 520:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Update ADC state machine to error */
 522:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
 523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       
 524:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     tmp_hal_status = HAL_ERROR;
 525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 526:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 527:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Process unlocked */
 528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __HAL_UNLOCK(hadc);
 529:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 530:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Return function status */
 531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   return tmp_hal_status;
 532:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 533:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 534:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /**
 535:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @brief  Gets the converted value from data register of injected channel.
 536:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 537:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         the configuration information for the specified ADC.
 538:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  InjectedRank: the ADC injected rank.
 539:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *          This parameter can be one of the following values:
 540:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *            @arg ADC_INJECTED_RANK_1: Injected Channel1 selected
 541:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *            @arg ADC_INJECTED_RANK_2: Injected Channel2 selected
 542:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *            @arg ADC_INJECTED_RANK_3: Injected Channel3 selected
 543:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *            @arg ADC_INJECTED_RANK_4: Injected Channel4 selected
 544:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @retval None
 545:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
 546:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** uint32_t HAL_ADCEx_InjectedGetValue(ADC_HandleTypeDef* hadc, uint32_t InjectedRank)
 547:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** {
 548:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __IO uint32_t tmp = 0;
 549:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 550:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Check the parameters */
 551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   assert_param(IS_ADC_INJECTED_RANK(InjectedRank));
 552:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 553:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Clear injected group conversion flag to have similar behaviour as        */
 554:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* regular group: reading data register also clears end of conversion flag. */
 555:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_JEOC);
 556:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 557:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Return the selected ADC converted value */ 
 558:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   switch(InjectedRank)
 559:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {  
 560:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     case ADC_INJECTED_RANK_4:
 561:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 562:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       tmp =  hadc->Instance->JDR4;
 563:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }  
 564:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     break;
 565:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     case ADC_INJECTED_RANK_3: 
 566:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {  
 567:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       tmp =  hadc->Instance->JDR3;
 568:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }  
 569:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     break;
 570:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     case ADC_INJECTED_RANK_2: 
 571:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {  
 572:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       tmp =  hadc->Instance->JDR2;
 573:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 574:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     break;
 575:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     case ADC_INJECTED_RANK_1:
 576:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 577:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       tmp =  hadc->Instance->JDR1;
 578:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 579:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     break;
 580:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     default:
 581:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     break;  
 582:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 583:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   return tmp;
 584:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 585:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 586:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /**
 587:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @brief  Enables ADC DMA request after last transfer (Multi-ADC mode) and enables ADC peripheral
 588:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * 
 589:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @note   Caution: This function must be used only with the ADC master.  
 590:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *
 591:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 592:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         the configuration information for the specified ADC.
 593:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  pData:   Pointer to buffer in which transferred from ADC peripheral to memory will be s
 594:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  Length:  The length of data to be transferred from ADC peripheral to memory.  
 595:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @retval HAL status
 596:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
 597:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** HAL_StatusTypeDef HAL_ADCEx_MultiModeStart_DMA(ADC_HandleTypeDef* hadc, uint32_t* pData, uint32_t L
 598:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** {
 599:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __IO uint32_t counter = 0;
 600:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 601:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Check the parameters */
 602:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   assert_param(IS_FUNCTIONAL_STATE(hadc->Init.ContinuousConvMode));
 603:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   assert_param(IS_ADC_EXT_TRIG_EDGE(hadc->Init.ExternalTrigConvEdge));
 604:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   assert_param(IS_FUNCTIONAL_STATE(hadc->Init.DMAContinuousRequests));
 605:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 606:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Process locked */
 607:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __HAL_LOCK(hadc);
 608:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 609:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Check if ADC peripheral is disabled in order to enable it and wait during 
 610:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      Tstab time the ADC's stabilization */
 611:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   if((hadc->Instance->CR2 & ADC_CR2_ADON) != ADC_CR2_ADON)
 612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {  
 613:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Enable the Peripheral */
 614:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     __HAL_ADC_ENABLE(hadc);
 615:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 616:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Delay for temperature sensor stabilization time */
 617:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Compute number of CPU cycles to wait for */
 618:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     counter = (ADC_STAB_DELAY_US * (SystemCoreClock / 1000000));
 619:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     while(counter != 0)
 620:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 621:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       counter--;
 622:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 623:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 624:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 625:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Start conversion if ADC is effectively enabled */
 626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   if(HAL_IS_BIT_SET(hadc->Instance->CR2, ADC_CR2_ADON))
 627:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 628:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Set ADC state                                                          */
 629:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* - Clear state bitfield related to regular group conversion results     */
 630:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* - Set state bitfield related to regular group operation                */
 631:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     ADC_STATE_CLR_SET(hadc->State,
 632:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC | HAL_ADC_STATE_REG_OVR,
 633:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                       HAL_ADC_STATE_REG_BUSY);
 634:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 635:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* If conversions on group regular are also triggering group injected,    */
 636:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* update ADC state.                                                      */
 637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     if (READ_BIT(hadc->Instance->CR1, ADC_CR1_JAUTO) != RESET)
 638:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 639:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       ADC_STATE_CLR_SET(hadc->State, HAL_ADC_STATE_INJ_EOC, HAL_ADC_STATE_INJ_BUSY);  
 640:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 641:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 642:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* State machine update: Check if an injected conversion is ongoing */
 643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     if (HAL_IS_BIT_SET(hadc->State, HAL_ADC_STATE_INJ_BUSY))
 644:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 645:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       /* Reset ADC error code fields related to conversions on group regular */
 646:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       CLEAR_BIT(hadc->ErrorCode, (HAL_ADC_ERROR_OVR | HAL_ADC_ERROR_DMA));         
 647:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 648:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     else
 649:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 650:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       /* Reset ADC all error code fields */
 651:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       ADC_CLEAR_ERRORCODE(hadc);
 652:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 653:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 654:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Process unlocked */
 655:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Unlock before starting ADC conversions: in case of potential           */
 656:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* interruption, to let the process to ADC IRQ Handler.                   */
 657:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     __HAL_UNLOCK(hadc);
 658:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 659:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Set the DMA transfer complete callback */
 660:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->DMA_Handle->XferCpltCallback = ADC_MultiModeDMAConvCplt;
 661:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 662:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Set the DMA half transfer complete callback */
 663:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->DMA_Handle->XferHalfCpltCallback = ADC_MultiModeDMAHalfConvCplt;
 664:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 665:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Set the DMA error callback */
 666:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->DMA_Handle->XferErrorCallback = ADC_MultiModeDMAError ;
 667:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 668:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Manage ADC and DMA start: ADC overrun interruption, DMA start, ADC     */
 669:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* start (in case of SW start):                                           */
 670:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 671:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Clear regular group conversion flag and overrun flag */
 672:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* (To ensure of no unknown state from potential previous ADC operations) */
 673:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_EOC);
 674:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 675:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Enable ADC overrun interrupt */
 676:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     __HAL_ADC_ENABLE_IT(hadc, ADC_IT_OVR);
 677:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     if (hadc->Init.DMAContinuousRequests != DISABLE)
 679:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 680:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       /* Enable the selected ADC DMA request after last transfer */
 681:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       ADC->CCR |= ADC_CCR_DDS;
 682:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 683:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     else
 684:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 685:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       /* Disable the selected ADC EOC rising on each regular channel conversion */
 686:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       ADC->CCR &= ~ADC_CCR_DDS;
 687:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 688:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 689:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Enable the DMA Stream */
 690:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     HAL_DMA_Start_IT(hadc->DMA_Handle, (uint32_t)&ADC->CDR, (uint32_t)pData, Length);
 691:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 692:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* if no external trigger present enable software conversion of regular channels */
 693:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     if((hadc->Instance->CR2 & ADC_CR2_EXTEN) == RESET) 
 694:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 695:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       /* Enable the selected ADC software conversion for regular group */
 696:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       hadc->Instance->CR2 |= (uint32_t)ADC_CR2_SWSTART;
 697:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 698:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 699:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 700:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Return function status */
 701:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   return HAL_OK;
 702:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 703:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 704:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /**
 705:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @brief  Disables ADC DMA (multi-ADC mode) and disables ADC peripheral    
 706:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 707:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         the configuration information for the specified ADC.
 708:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @retval HAL status
 709:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
 710:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** HAL_StatusTypeDef HAL_ADCEx_MultiModeStop_DMA(ADC_HandleTypeDef* hadc)
 711:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** {
 712:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 713:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 714:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Check the parameters */
 715:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 716:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 717:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Process locked */
 718:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __HAL_LOCK(hadc);
 719:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 720:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Stop potential conversion on going, on regular and injected groups */
 721:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Disable ADC peripheral */
 722:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __HAL_ADC_DISABLE(hadc);
 723:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 724:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Check if ADC is effectively disabled */
 725:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   if(HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_ADON))
 726:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 727:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Disable the selected ADC DMA mode for multimode */
 728:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     ADC->CCR &= ~ADC_CCR_DDS;
 729:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 730:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Disable the DMA channel (in case of DMA in circular mode or stop while */
 731:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* DMA transfer is on going)                                              */
 732:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     tmp_hal_status = HAL_DMA_Abort(hadc->DMA_Handle);
 733:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 734:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Disable ADC overrun interrupt */
 735:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     __HAL_ADC_DISABLE_IT(hadc, ADC_IT_OVR);
 736:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 737:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Set ADC state */
 738:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     ADC_STATE_CLR_SET(hadc->State,
 739:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 740:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                       HAL_ADC_STATE_READY);
 741:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 742:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 743:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Process unlocked */
 744:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __HAL_UNLOCK(hadc);
 745:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 746:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Return function status */
 747:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   return tmp_hal_status;
 748:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 750:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /**
 751:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @brief  Returns the last ADC1, ADC2 and ADC3 regular conversions results 
 752:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         data in the selected multi mode.
 753:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 754:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         the configuration information for the specified ADC.
 755:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @retval The converted data value.
 756:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
 757:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** uint32_t HAL_ADCEx_MultiModeGetValue(ADC_HandleTypeDef* hadc)
 758:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** {
 759:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Return the multi mode conversion value */
 760:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   return ADC->CDR;
 761:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 762:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 763:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /**
 764:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @brief  Injected conversion complete callback in non blocking mode 
 765:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 766:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         the configuration information for the specified ADC.
 767:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @retval None
 768:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
 769:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** __weak void HAL_ADCEx_InjectedConvCpltCallback(ADC_HandleTypeDef* hadc)
 770:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** {
 771:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Prevent unused argument(s) compilation warning */
 772:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   UNUSED(hadc);
 773:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
 774:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****             the HAL_ADC_InjectedConvCpltCallback could be implemented in the user file
 775:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****    */
 776:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 777:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 778:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /**
 779:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @brief  Configures for the selected ADC injected channel its corresponding
 780:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         rank in the sequencer and its sample time.
 781:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 782:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *         the configuration information for the specified ADC.
 783:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  sConfigInjected: ADC configuration structure for injected channel. 
 784:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @retval None
 785:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
 786:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** HAL_StatusTypeDef HAL_ADCEx_InjectedConfigChannel(ADC_HandleTypeDef* hadc, ADC_InjectionConfTypeDef
 787:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** {
 788:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 789:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** #ifdef USE_FULL_ASSERT  
 790:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   uint32_t tmp = 0;
 791:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** #endif /* USE_FULL_ASSERT  */
 792:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 793:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Check the parameters */
 794:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   assert_param(IS_ADC_CHANNEL(sConfigInjected->InjectedChannel));
 795:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   assert_param(IS_ADC_INJECTED_RANK(sConfigInjected->InjectedRank));
 796:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   assert_param(IS_ADC_SAMPLE_TIME(sConfigInjected->InjectedSamplingTime));
 797:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   assert_param(IS_ADC_EXT_INJEC_TRIG(sConfigInjected->ExternalTrigInjecConv));
 798:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   assert_param(IS_ADC_INJECTED_LENGTH(sConfigInjected->InjectedNbrOfConversion));
 799:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   assert_param(IS_FUNCTIONAL_STATE(sConfigInjected->AutoInjectedConv));
 800:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   assert_param(IS_FUNCTIONAL_STATE(sConfigInjected->InjectedDiscontinuousConvMode));
 801:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 802:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** #ifdef USE_FULL_ASSERT
 803:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   tmp = ADC_GET_RESOLUTION(hadc);
 804:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   assert_param(IS_ADC_RANGE(tmp, sConfigInjected->InjectedOffset));
 805:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** #endif /* USE_FULL_ASSERT  */
 806:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 807:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   if(sConfigInjected->ExternalTrigInjecConv != ADC_INJECTED_SOFTWARE_START)
 808:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 809:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     assert_param(IS_ADC_EXT_INJEC_TRIG_EDGE(sConfigInjected->ExternalTrigInjecConvEdge));
 810:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 811:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 812:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Process locked */
 813:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __HAL_LOCK(hadc);
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 815:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* if ADC_Channel_10 ... ADC_Channel_18 is selected */
 816:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   if (sConfigInjected->InjectedChannel > ADC_CHANNEL_9)
 817:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 818:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Clear the old sample time */
 819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->Instance->SMPR1 &= ~ADC_SMPR1(ADC_SMPR1_SMP10, sConfigInjected->InjectedChannel);
 820:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 821:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Set the new sample time */
 822:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->Instance->SMPR1 |= ADC_SMPR1(sConfigInjected->InjectedSamplingTime, sConfigInjected->Inje
 823:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 824:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   else /* ADC_Channel include in ADC_Channel_[0..9] */
 825:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 826:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Clear the old sample time */
 827:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->Instance->SMPR2 &= ~ADC_SMPR2(ADC_SMPR2_SMP0, sConfigInjected->InjectedChannel);
 828:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 829:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Set the new sample time */
 830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->Instance->SMPR2 |= ADC_SMPR2(sConfigInjected->InjectedSamplingTime, sConfigInjected->Inje
 831:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 832:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /*---------------------------- ADCx JSQR Configuration -----------------*/
 834:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   hadc->Instance->JSQR &= ~(ADC_JSQR_JL);
 835:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   hadc->Instance->JSQR |=  ADC_SQR1(sConfigInjected->InjectedNbrOfConversion);
 836:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 837:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Rank configuration */
 838:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 839:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Clear the old SQx bits for the selected rank */
 840:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   hadc->Instance->JSQR &= ~ADC_JSQR(ADC_JSQR_JSQ1, sConfigInjected->InjectedRank,sConfigInjected->I
 841:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****    
 842:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Set the SQx bits for the selected rank */
 843:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   hadc->Instance->JSQR |= ADC_JSQR(sConfigInjected->InjectedChannel, sConfigInjected->InjectedRank,
 844:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 845:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Enable external trigger if trigger selection is different of software  */
 846:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* start.                                                                 */
 847:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Note: This configuration keeps the hardware feature of parameter       */
 848:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /*       ExternalTrigConvEdge "trigger edge none" equivalent to           */
 849:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /*       software start.                                                  */ 
 850:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   if(sConfigInjected->ExternalTrigInjecConv != ADC_INJECTED_SOFTWARE_START)
 851:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {  
 852:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Select external trigger to start conversion */
 853:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->Instance->CR2 &= ~(ADC_CR2_JEXTSEL);
 854:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->Instance->CR2 |=  sConfigInjected->ExternalTrigInjecConv;
 855:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 856:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Select external trigger polarity */
 857:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->Instance->CR2 &= ~(ADC_CR2_JEXTEN);
 858:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->Instance->CR2 |= sConfigInjected->ExternalTrigInjecConvEdge;
 859:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 860:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   else
 861:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 862:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Reset the external trigger */
 863:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->Instance->CR2 &= ~(ADC_CR2_JEXTSEL);
 864:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->Instance->CR2 &= ~(ADC_CR2_JEXTEN);  
 865:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 866:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 867:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   if (sConfigInjected->AutoInjectedConv != DISABLE)
 868:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 869:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Enable the selected ADC automatic injected group conversion */
 870:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->Instance->CR1 |= ADC_CR1_JAUTO;
 871:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 872:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   else
 873:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 874:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Disable the selected ADC automatic injected group conversion */
 875:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->Instance->CR1 &= ~(ADC_CR1_JAUTO);
 876:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 877:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 878:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   if (sConfigInjected->InjectedDiscontinuousConvMode != DISABLE)
 879:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 880:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Enable the selected ADC injected discontinuous mode */
 881:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->Instance->CR1 |= ADC_CR1_JDISCEN;
 882:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 883:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   else
 884:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 885:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Disable the selected ADC injected discontinuous mode */
 886:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->Instance->CR1 &= ~(ADC_CR1_JDISCEN);
 887:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 888:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 889:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   switch(sConfigInjected->InjectedRank)
 890:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 891:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     case 1:
 892:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       /* Set injected channel 1 offset */
 893:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       hadc->Instance->JOFR1 &= ~(ADC_JOFR1_JOFFSET1);
 894:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       hadc->Instance->JOFR1 |= sConfigInjected->InjectedOffset;
 895:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       break;
 896:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     case 2:
 897:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       /* Set injected channel 2 offset */
 898:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       hadc->Instance->JOFR2 &= ~(ADC_JOFR2_JOFFSET2);
 899:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       hadc->Instance->JOFR2 |= sConfigInjected->InjectedOffset;
 900:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       break;
 901:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     case 3:
 902:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       /* Set injected channel 3 offset */
 903:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       hadc->Instance->JOFR3 &= ~(ADC_JOFR3_JOFFSET3);
 904:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       hadc->Instance->JOFR3 |= sConfigInjected->InjectedOffset;
 905:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       break;
 906:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     default:
 907:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       /* Set injected channel 4 offset */
 908:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       hadc->Instance->JOFR4 &= ~(ADC_JOFR4_JOFFSET4);
 909:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       hadc->Instance->JOFR4 |= sConfigInjected->InjectedOffset;
 910:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       break;
 911:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 912:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 913:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* if ADC1 Channel_18 is selected enable VBAT Channel */
 914:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   if ((hadc->Instance == ADC1) && (sConfigInjected->InjectedChannel == ADC_CHANNEL_VBAT))
 915:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 916:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Enable the VBAT channel*/
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     ADC->CCR |= ADC_CCR_VBATE;
 918:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 919:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 920:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* if ADC1 Channel_16 or Channel_17 is selected enable TSVREFE Channel(Temperature sensor and VRE
 921:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   if ((hadc->Instance == ADC1) && ((sConfigInjected->InjectedChannel == ADC_CHANNEL_TEMPSENSOR) || 
 922:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 923:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Enable the TSVREFE channel*/
 924:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     ADC->CCR |= ADC_CCR_TSVREFE;
 925:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 926:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 927:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Process unlocked */
 928:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __HAL_UNLOCK(hadc);
 929:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 930:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Return function status */
 931:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   return HAL_OK;
 932:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 933:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 934:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /**
 935:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @brief  Configures the ADC multi-mode 
 936:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  hadc      : pointer to a ADC_HandleTypeDef structure that contains
 937:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *                     the configuration information for the specified ADC.  
 938:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  multimode : pointer to an ADC_MultiModeTypeDef structure that contains 
 939:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *                     the configuration information for  multimode.
 940:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @retval HAL status
 941:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
 942:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** HAL_StatusTypeDef HAL_ADCEx_MultiModeConfigChannel(ADC_HandleTypeDef* hadc, ADC_MultiModeTypeDef* m
 943:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** {
 944:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Check the parameters */
 945:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   assert_param(IS_ADC_MODE(multimode->Mode));
 946:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   assert_param(IS_ADC_DMA_ACCESS_MODE(multimode->DMAAccessMode));
 947:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   assert_param(IS_ADC_SAMPLING_DELAY(multimode->TwoSamplingDelay));
 948:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 949:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Process locked */
 950:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __HAL_LOCK(hadc);
 951:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 952:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Set ADC mode */
 953:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   ADC->CCR &= ~(ADC_CCR_MULTI);
 954:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   ADC->CCR |= multimode->Mode;
 955:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 956:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Set the ADC DMA access mode */
 957:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   ADC->CCR &= ~(ADC_CCR_DMA);
 958:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   ADC->CCR |= multimode->DMAAccessMode;
 959:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 960:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Set delay between two sampling phases */
 961:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   ADC->CCR &= ~(ADC_CCR_DELAY);
 962:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   ADC->CCR |= multimode->TwoSamplingDelay;
 963:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 964:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Process unlocked */
 965:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __HAL_UNLOCK(hadc);
 966:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 967:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Return function status */
 968:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   return HAL_OK;
 969:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 970:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 971:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /**
 972:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @}
 973:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
 974:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 975:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /**
 976:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @brief  DMA transfer complete callback. 
 977:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
 978:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *                the configuration information for the specified DMA module.
 979:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @retval None
 980:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
 981:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** static void ADC_MultiModeDMAConvCplt(DMA_HandleTypeDef *hdma)   
 982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** {
 983:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Retrieve ADC handle corresponding to current DMA handle */
 984:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   ADC_HandleTypeDef* hadc = ( ADC_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 985:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 986:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Update state machine on conversion status if not in error state */
 987:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL | HAL_ADC_STATE_ERROR_DMA))
 988:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 989:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Update ADC state machine */
 990:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     SET_BIT(hadc->State, HAL_ADC_STATE_REG_EOC);
 991:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 992:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Determine whether any further conversion upcoming on group regular   */
 993:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* by external trigger, continuous mode or scan sequence on going.      */
 994:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Note: On STM32F7, there is no independent flag of end of sequence.   */
 995:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /*       The test of scan sequence on going is done either with scan    */
 996:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /*       sequence disabled or with end of conversion flag set to        */
 997:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /*       of end of sequence.                                            */
 998:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     if(ADC_IS_SOFTWARE_START_REGULAR(hadc)                   &&
 999:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (hadc->Init.ContinuousConvMode == DISABLE)            &&
1000:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (HAL_IS_BIT_CLR(hadc->Instance->SQR1, ADC_SQR1_L) || 
1001:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)  )   )
1002:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
1003:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       /* Disable ADC end of single conversion interrupt on group regular */
1004:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       /* Note: Overrun interrupt was enabled with EOC interrupt in          */
1005:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       /* HAL_ADC_Start_IT(), but is not disabled here because can be used   */
1006:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       /* by overrun IRQ process below.                                      */
1007:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       __HAL_ADC_DISABLE_IT(hadc, ADC_IT_EOC);
1008:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       
1009:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       /* Set ADC state */
1010:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       CLEAR_BIT(hadc->State, HAL_ADC_STATE_REG_BUSY);   
1011:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       
1012:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_INJ_BUSY))
1013:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       {
1014:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         SET_BIT(hadc->State, HAL_ADC_STATE_READY);
1015:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       }
1016:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
1017:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
1018:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Conversion complete callback */
1019:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     HAL_ADC_ConvCpltCallback(hadc);
1020:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
1021:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   else
1022:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
1023:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Call DMA error callback */
1024:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->DMA_Handle->XferErrorCallback(hdma);
1025:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
1026:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
1027:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
1028:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /**
1029:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @brief  DMA half transfer complete callback. 
1030:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
1031:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *                the configuration information for the specified DMA module.
1032:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @retval None
1033:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
1034:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** static void ADC_MultiModeDMAHalfConvCplt(DMA_HandleTypeDef *hdma)   
1035:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** {
1036:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     ADC_HandleTypeDef* hadc = ( ADC_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
1037:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Conversion complete callback */
1038:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     HAL_ADC_ConvHalfCpltCallback(hadc); 
1039:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
1040:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
1041:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** /**
1042:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @brief  DMA error callback 
1043:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
1044:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   *                the configuration information for the specified DMA module.
1045:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   * @retval None
1046:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   */
1047:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** static void ADC_MultiModeDMAError(DMA_HandleTypeDef *hdma)   
1048:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** {
  26              		.loc 1 1048 0
  27              		.cfi_startproc
  28              		@ args = 0, pretend = 0, frame = 0
  29              		@ frame_needed = 0, uses_anonymous_args = 0
  30              	.LVL0:
  31 0000 08B5     		push	{r3, lr}
  32              		.cfi_def_cfa_offset 8
  33              		.cfi_offset 3, -8
  34              		.cfi_offset 14, -4
1049:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     ADC_HandleTypeDef* hadc = ( ADC_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
  35              		.loc 1 1049 0
  36 0002 806B     		ldr	r0, [r0, #56]
  37              	.LVL1:
1050:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->State= HAL_ADC_STATE_ERROR_DMA;
  38              		.loc 1 1050 0
  39 0004 4023     		movs	r3, #64
  40 0006 0364     		str	r3, [r0, #64]
1051:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     /* Set ADC error code to DMA error */
1052:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->ErrorCode |= HAL_ADC_ERROR_DMA;
  41              		.loc 1 1052 0
  42 0008 436C     		ldr	r3, [r0, #68]
  43 000a 43F00403 		orr	r3, r3, #4
  44 000e 4364     		str	r3, [r0, #68]
1053:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     HAL_ADC_ErrorCallback(hadc); 
  45              		.loc 1 1053 0
  46 0010 FFF7FEFF 		bl	HAL_ADC_ErrorCallback
  47              	.LVL2:
1054:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
  48              		.loc 1 1054 0
  49 0014 08BD     		pop	{r3, pc}
  50              		.cfi_endproc
  51              	.LFE152:
  53              		.section	.text.ADC_MultiModeDMAHalfConvCplt,"ax",%progbits
  54              		.align	1
  55              		.syntax unified
  56              		.thumb
  57              		.thumb_func
  58              		.fpu fpv5-d16
  60              	ADC_MultiModeDMAHalfConvCplt:
  61              	.LFB151:
1035:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     ADC_HandleTypeDef* hadc = ( ADC_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
  62              		.loc 1 1035 0
  63              		.cfi_startproc
  64              		@ args = 0, pretend = 0, frame = 0
  65              		@ frame_needed = 0, uses_anonymous_args = 0
  66              	.LVL3:
  67 0000 08B5     		push	{r3, lr}
  68              		.cfi_def_cfa_offset 8
  69              		.cfi_offset 3, -8
  70              		.cfi_offset 14, -4
  71              	.LVL4:
1038:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
  72              		.loc 1 1038 0
  73 0002 806B     		ldr	r0, [r0, #56]
  74              	.LVL5:
  75 0004 FFF7FEFF 		bl	HAL_ADC_ConvHalfCpltCallback
  76              	.LVL6:
1039:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
  77              		.loc 1 1039 0
  78 0008 08BD     		pop	{r3, pc}
  79              		.cfi_endproc
  80              	.LFE151:
  82              		.section	.text.ADC_MultiModeDMAConvCplt,"ax",%progbits
  83              		.align	1
  84              		.syntax unified
  85              		.thumb
  86              		.thumb_func
  87              		.fpu fpv5-d16
  89              	ADC_MultiModeDMAConvCplt:
  90              	.LFB150:
 982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Retrieve ADC handle corresponding to current DMA handle */
  91              		.loc 1 982 0
  92              		.cfi_startproc
  93              		@ args = 0, pretend = 0, frame = 0
  94              		@ frame_needed = 0, uses_anonymous_args = 0
  95              	.LVL7:
  96 0000 08B5     		push	{r3, lr}
  97              		.cfi_def_cfa_offset 8
  98              		.cfi_offset 3, -8
  99              		.cfi_offset 14, -4
 984:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 100              		.loc 1 984 0
 101 0002 836B     		ldr	r3, [r0, #56]
 102              	.LVL8:
 987:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 103              		.loc 1 987 0
 104 0004 1A6C     		ldr	r2, [r3, #64]
 105 0006 12F0500F 		tst	r2, #80
 106 000a 03D0     		beq	.L11
1024:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 107              		.loc 1 1024 0
 108 000c 9B6B     		ldr	r3, [r3, #56]
 109              	.LVL9:
 110 000e DB6C     		ldr	r3, [r3, #76]
 111 0010 9847     		blx	r3
 112              	.LVL10:
 113              	.L5:
1026:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 114              		.loc 1 1026 0
 115 0012 08BD     		pop	{r3, pc}
 116              	.LVL11:
 117              	.L11:
 990:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 118              		.loc 1 990 0
 119 0014 1A6C     		ldr	r2, [r3, #64]
 120 0016 42F40072 		orr	r2, r2, #512
 121 001a 1A64     		str	r2, [r3, #64]
 998:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (hadc->Init.ContinuousConvMode == DISABLE)            &&
 122              		.loc 1 998 0
 123 001c 1A68     		ldr	r2, [r3]
 124 001e 9168     		ldr	r1, [r2, #8]
 125 0020 11F0405F 		tst	r1, #805306368
 126 0024 19D1     		bne	.L7
 999:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (HAL_IS_BIT_CLR(hadc->Instance->SQR1, ADC_SQR1_L) || 
 127              		.loc 1 999 0 discriminator 1
 128 0026 9969     		ldr	r1, [r3, #24]
 998:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (hadc->Init.ContinuousConvMode == DISABLE)            &&
 129              		.loc 1 998 0 discriminator 1
 130 0028 B9B9     		cbnz	r1, .L7
1000:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)  )   )
 131              		.loc 1 1000 0
 132 002a D16A     		ldr	r1, [r2, #44]
 999:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****        (HAL_IS_BIT_CLR(hadc->Instance->SQR1, ADC_SQR1_L) || 
 133              		.loc 1 999 0
 134 002c 11F4700F 		tst	r1, #15728640
 135 0030 03D0     		beq	.L8
1001:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 136              		.loc 1 1001 0
 137 0032 9168     		ldr	r1, [r2, #8]
1000:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)  )   )
 138              		.loc 1 1000 0
 139 0034 11F4806F 		tst	r1, #1024
 140 0038 0FD1     		bne	.L7
 141              	.L8:
1007:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       
 142              		.loc 1 1007 0
 143 003a 5168     		ldr	r1, [r2, #4]
 144 003c 21F02001 		bic	r1, r1, #32
 145 0040 5160     		str	r1, [r2, #4]
1010:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       
 146              		.loc 1 1010 0
 147 0042 1A6C     		ldr	r2, [r3, #64]
 148 0044 22F48072 		bic	r2, r2, #256
 149 0048 1A64     		str	r2, [r3, #64]
1012:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       {
 150              		.loc 1 1012 0
 151 004a 1A6C     		ldr	r2, [r3, #64]
 152 004c 12F4805F 		tst	r2, #4096
 153 0050 03D1     		bne	.L7
1014:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       }
 154              		.loc 1 1014 0
 155 0052 1A6C     		ldr	r2, [r3, #64]
 156 0054 42F00102 		orr	r2, r2, #1
 157 0058 1A64     		str	r2, [r3, #64]
 158              	.L7:
1019:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 159              		.loc 1 1019 0
 160 005a 1846     		mov	r0, r3
 161              	.LVL12:
 162 005c FFF7FEFF 		bl	HAL_ADC_ConvCpltCallback
 163              	.LVL13:
 164 0060 D7E7     		b	.L5
 165              		.cfi_endproc
 166              	.LFE150:
 168              		.section	.text.HAL_ADCEx_InjectedStart,"ax",%progbits
 169              		.align	1
 170              		.global	HAL_ADCEx_InjectedStart
 171              		.syntax unified
 172              		.thumb
 173              		.thumb_func
 174              		.fpu fpv5-d16
 176              	HAL_ADCEx_InjectedStart:
 177              	.LFB138:
 178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __IO uint32_t counter = 0;
 178              		.loc 1 178 0
 179              		.cfi_startproc
 180              		@ args = 0, pretend = 0, frame = 8
 181              		@ frame_needed = 0, uses_anonymous_args = 0
 182              		@ link register save eliminated.
 183              	.LVL14:
 184 0000 82B0     		sub	sp, sp, #8
 185              		.cfi_def_cfa_offset 8
 179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   uint32_t tmp1 = 0, tmp2 = 0;
 186              		.loc 1 179 0
 187 0002 0023     		movs	r3, #0
 188 0004 0193     		str	r3, [sp, #4]
 189              	.LVL15:
 183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 190              		.loc 1 183 0
 191 0006 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 192 000a 012B     		cmp	r3, #1
 193 000c 5AD0     		beq	.L19
 183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 194              		.loc 1 183 0 is_stmt 0 discriminator 2
 195 000e 0123     		movs	r3, #1
 196 0010 80F83C30 		strb	r3, [r0, #60]
 189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {  
 197              		.loc 1 189 0 is_stmt 1 discriminator 2
 198 0014 0368     		ldr	r3, [r0]
 199 0016 9A68     		ldr	r2, [r3, #8]
 200 0018 12F0010F 		tst	r2, #1
 201 001c 13D1     		bne	.L14
 192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 202              		.loc 1 192 0
 203 001e 9A68     		ldr	r2, [r3, #8]
 204 0020 42F00102 		orr	r2, r2, #1
 205 0024 9A60     		str	r2, [r3, #8]
 196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     while(counter != 0)
 206              		.loc 1 196 0
 207 0026 2C4B     		ldr	r3, .L26
 208 0028 1B68     		ldr	r3, [r3]
 209 002a 2C4A     		ldr	r2, .L26+4
 210 002c A2FB0323 		umull	r2, r3, r2, r3
 211 0030 9B0C     		lsrs	r3, r3, #18
 212 0032 03EB4303 		add	r3, r3, r3, lsl #1
 213 0036 0193     		str	r3, [sp, #4]
 197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 214              		.loc 1 197 0
 215 0038 02E0     		b	.L15
 216              	.L16:
 199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 217              		.loc 1 199 0
 218 003a 019B     		ldr	r3, [sp, #4]
 219 003c 013B     		subs	r3, r3, #1
 220 003e 0193     		str	r3, [sp, #4]
 221              	.L15:
 197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 222              		.loc 1 197 0
 223 0040 019B     		ldr	r3, [sp, #4]
 224 0042 002B     		cmp	r3, #0
 225 0044 F9D1     		bne	.L16
 226              	.L14:
 204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 227              		.loc 1 204 0
 228 0046 0268     		ldr	r2, [r0]
 229 0048 9368     		ldr	r3, [r2, #8]
 230 004a 13F0010F 		tst	r3, #1
 231 004e 3BD0     		beq	.L20
 209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_INJ_EOC,
 232              		.loc 1 209 0
 233 0050 016C     		ldr	r1, [r0, #64]
 234 0052 234B     		ldr	r3, .L26+8
 235 0054 0B40     		ands	r3, r3, r1
 236 0056 43F48053 		orr	r3, r3, #4096
 237 005a 0364     		str	r3, [r0, #64]
 217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 238              		.loc 1 217 0
 239 005c 036C     		ldr	r3, [r0, #64]
 240 005e 13F4807F 		tst	r3, #256
 241 0062 01D1     		bne	.L17
 220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 242              		.loc 1 220 0
 243 0064 0023     		movs	r3, #0
 244 0066 4364     		str	r3, [r0, #68]
 245              	.L17:
 226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 246              		.loc 1 226 0
 247 0068 0023     		movs	r3, #0
 248 006a 80F83C30 		strb	r3, [r0, #60]
 230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 249              		.loc 1 230 0
 250 006e 6FF00403 		mvn	r3, #4
 251 0072 1360     		str	r3, [r2]
 233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 252              		.loc 1 233 0
 253 0074 1B4B     		ldr	r3, .L26+12
 254 0076 5B68     		ldr	r3, [r3, #4]
 255 0078 13F01F0F 		tst	r3, #31
 256 007c 0ED1     		bne	.L18
 235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       tmp2 = HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO);
 257              		.loc 1 235 0
 258 007e 0168     		ldr	r1, [r0]
 259 0080 8A68     		ldr	r2, [r1, #8]
 260 0082 02F44012 		and	r2, r2, #3145728
 261              	.LVL16:
 236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       if(tmp1 && tmp2)
 262              		.loc 1 236 0
 263 0086 4B68     		ldr	r3, [r1, #4]
 264 0088 03F48063 		and	r3, r3, #1024
 265              	.LVL17:
 237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       {
 266              		.loc 1 237 0
 267 008c 1343     		orrs	r3, r2, r3
 268              	.LVL18:
 269 008e 1ED1     		bne	.L21
 240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       }
 270              		.loc 1 240 0
 271 0090 8B68     		ldr	r3, [r1, #8]
 272 0092 43F48003 		orr	r3, r3, #4194304
 273 0096 8B60     		str	r3, [r1, #8]
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 274              		.loc 1 256 0
 275 0098 0020     		movs	r0, #0
 276              	.LVL19:
 277 009a 16E0     		b	.L13
 278              	.LVL20:
 279              	.L18:
 245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       tmp2 = HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO);
 280              		.loc 1 245 0
 281 009c 0368     		ldr	r3, [r0]
 282 009e 9968     		ldr	r1, [r3, #8]
 283 00a0 01F44011 		and	r1, r1, #3145728
 284              	.LVL21:
 246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       if((hadc->Instance == ADC1) && tmp1 && tmp2)  
 285              		.loc 1 246 0
 286 00a4 5A68     		ldr	r2, [r3, #4]
 287 00a6 02F48062 		and	r2, r2, #1024
 288              	.LVL22:
 247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       {
 289              		.loc 1 247 0
 290 00aa 0F48     		ldr	r0, .L26+16
 291              	.LVL23:
 292 00ac 8342     		cmp	r3, r0
 293 00ae 01D0     		beq	.L25
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 294              		.loc 1 256 0
 295 00b0 0020     		movs	r0, #0
 296 00b2 0AE0     		b	.L13
 297              	.L25:
 247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       {
 298              		.loc 1 247 0 discriminator 1
 299 00b4 0A43     		orrs	r2, r1, r2
 300              	.LVL24:
 301 00b6 0CD1     		bne	.L23
 250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       }
 302              		.loc 1 250 0
 303 00b8 9A68     		ldr	r2, [r3, #8]
 304 00ba 42F48002 		orr	r2, r2, #4194304
 305 00be 9A60     		str	r2, [r3, #8]
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 306              		.loc 1 256 0
 307 00c0 0020     		movs	r0, #0
 308 00c2 02E0     		b	.L13
 309              	.LVL25:
 310              	.L19:
 183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 311              		.loc 1 183 0
 312 00c4 0220     		movs	r0, #2
 313              	.LVL26:
 314 00c6 00E0     		b	.L13
 315              	.LVL27:
 316              	.L20:
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 317              		.loc 1 256 0
 318 00c8 0020     		movs	r0, #0
 319              	.LVL28:
 320              	.L13:
 257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 321              		.loc 1 257 0
 322 00ca 02B0     		add	sp, sp, #8
 323              		.cfi_remember_state
 324              		.cfi_def_cfa_offset 0
 325              		@ sp needed
 326 00cc 7047     		bx	lr
 327              	.LVL29:
 328              	.L21:
 329              		.cfi_restore_state
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 330              		.loc 1 256 0
 331 00ce 0020     		movs	r0, #0
 332              	.LVL30:
 333 00d0 FBE7     		b	.L13
 334              	.LVL31:
 335              	.L23:
 336 00d2 0020     		movs	r0, #0
 337 00d4 F9E7     		b	.L13
 338              	.L27:
 339 00d6 00BF     		.align	2
 340              	.L26:
 341 00d8 00000000 		.word	SystemCoreClock
 342 00dc 83DE1B43 		.word	1125899907
 343 00e0 FECFFFFF 		.word	-12290
 344 00e4 00230140 		.word	1073816320
 345 00e8 00200140 		.word	1073815552
 346              		.cfi_endproc
 347              	.LFE138:
 349              		.section	.text.HAL_ADCEx_InjectedStart_IT,"ax",%progbits
 350              		.align	1
 351              		.global	HAL_ADCEx_InjectedStart_IT
 352              		.syntax unified
 353              		.thumb
 354              		.thumb_func
 355              		.fpu fpv5-d16
 357              	HAL_ADCEx_InjectedStart_IT:
 358              	.LFB139:
 267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __IO uint32_t counter = 0;
 359              		.loc 1 267 0
 360              		.cfi_startproc
 361              		@ args = 0, pretend = 0, frame = 8
 362              		@ frame_needed = 0, uses_anonymous_args = 0
 363              		@ link register save eliminated.
 364              	.LVL32:
 365 0000 82B0     		sub	sp, sp, #8
 366              		.cfi_def_cfa_offset 8
 268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   uint32_t tmp1 = 0, tmp2 = 0;
 367              		.loc 1 268 0
 368 0002 0023     		movs	r3, #0
 369 0004 0193     		str	r3, [sp, #4]
 370              	.LVL33:
 272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 371              		.loc 1 272 0
 372 0006 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 373 000a 012B     		cmp	r3, #1
 374 000c 5FD0     		beq	.L35
 272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 375              		.loc 1 272 0 is_stmt 0 discriminator 2
 376 000e 0123     		movs	r3, #1
 377 0010 80F83C30 		strb	r3, [r0, #60]
 278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {  
 378              		.loc 1 278 0 is_stmt 1 discriminator 2
 379 0014 0368     		ldr	r3, [r0]
 380 0016 9A68     		ldr	r2, [r3, #8]
 381 0018 12F0010F 		tst	r2, #1
 382 001c 13D1     		bne	.L30
 281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 383              		.loc 1 281 0
 384 001e 9A68     		ldr	r2, [r3, #8]
 385 0020 42F00102 		orr	r2, r2, #1
 386 0024 9A60     		str	r2, [r3, #8]
 285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     while(counter != 0)
 387              		.loc 1 285 0
 388 0026 2E4B     		ldr	r3, .L42
 389 0028 1B68     		ldr	r3, [r3]
 390 002a 2E4A     		ldr	r2, .L42+4
 391 002c A2FB0323 		umull	r2, r3, r2, r3
 392 0030 9B0C     		lsrs	r3, r3, #18
 393 0032 03EB4303 		add	r3, r3, r3, lsl #1
 394 0036 0193     		str	r3, [sp, #4]
 286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 395              		.loc 1 286 0
 396 0038 02E0     		b	.L31
 397              	.L32:
 288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 398              		.loc 1 288 0
 399 003a 019B     		ldr	r3, [sp, #4]
 400 003c 013B     		subs	r3, r3, #1
 401 003e 0193     		str	r3, [sp, #4]
 402              	.L31:
 286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 403              		.loc 1 286 0
 404 0040 019B     		ldr	r3, [sp, #4]
 405 0042 002B     		cmp	r3, #0
 406 0044 F9D1     		bne	.L32
 407              	.L30:
 293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 408              		.loc 1 293 0
 409 0046 0268     		ldr	r2, [r0]
 410 0048 9368     		ldr	r3, [r2, #8]
 411 004a 13F0010F 		tst	r3, #1
 412 004e 40D0     		beq	.L36
 298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_INJ_EOC,
 413              		.loc 1 298 0
 414 0050 016C     		ldr	r1, [r0, #64]
 415 0052 254B     		ldr	r3, .L42+8
 416 0054 0B40     		ands	r3, r3, r1
 417 0056 43F48053 		orr	r3, r3, #4096
 418 005a 0364     		str	r3, [r0, #64]
 306:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 419              		.loc 1 306 0
 420 005c 036C     		ldr	r3, [r0, #64]
 421 005e 13F4807F 		tst	r3, #256
 422 0062 01D1     		bne	.L33
 309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 423              		.loc 1 309 0
 424 0064 0023     		movs	r3, #0
 425 0066 4364     		str	r3, [r0, #68]
 426              	.L33:
 315:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 427              		.loc 1 315 0
 428 0068 0023     		movs	r3, #0
 429 006a 80F83C30 		strb	r3, [r0, #60]
 319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 430              		.loc 1 319 0
 431 006e 6FF00403 		mvn	r3, #4
 432 0072 1360     		str	r3, [r2]
 322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 433              		.loc 1 322 0
 434 0074 0268     		ldr	r2, [r0]
 435 0076 5368     		ldr	r3, [r2, #4]
 436 0078 43F08003 		orr	r3, r3, #128
 437 007c 5360     		str	r3, [r2, #4]
 325:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 438              		.loc 1 325 0
 439 007e 1B4B     		ldr	r3, .L42+12
 440 0080 5B68     		ldr	r3, [r3, #4]
 441 0082 13F01F0F 		tst	r3, #31
 442 0086 0ED1     		bne	.L34
 327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       tmp2 = HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO);
 443              		.loc 1 327 0
 444 0088 0168     		ldr	r1, [r0]
 445 008a 8A68     		ldr	r2, [r1, #8]
 446 008c 02F44012 		and	r2, r2, #3145728
 447              	.LVL34:
 328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       if(tmp1 && tmp2)
 448              		.loc 1 328 0
 449 0090 4B68     		ldr	r3, [r1, #4]
 450 0092 03F48063 		and	r3, r3, #1024
 451              	.LVL35:
 329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       {
 452              		.loc 1 329 0
 453 0096 1343     		orrs	r3, r2, r3
 454              	.LVL36:
 455 0098 1ED1     		bne	.L37
 332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       }
 456              		.loc 1 332 0
 457 009a 8B68     		ldr	r3, [r1, #8]
 458 009c 43F48003 		orr	r3, r3, #4194304
 459 00a0 8B60     		str	r3, [r1, #8]
 348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 460              		.loc 1 348 0
 461 00a2 0020     		movs	r0, #0
 462              	.LVL37:
 463 00a4 16E0     		b	.L29
 464              	.LVL38:
 465              	.L34:
 337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       tmp2 = HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO);
 466              		.loc 1 337 0
 467 00a6 0368     		ldr	r3, [r0]
 468 00a8 9968     		ldr	r1, [r3, #8]
 469 00aa 01F44011 		and	r1, r1, #3145728
 470              	.LVL39:
 338:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       if((hadc->Instance == ADC1) && tmp1 && tmp2)  
 471              		.loc 1 338 0
 472 00ae 5A68     		ldr	r2, [r3, #4]
 473 00b0 02F48062 		and	r2, r2, #1024
 474              	.LVL40:
 339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       {
 475              		.loc 1 339 0
 476 00b4 0E48     		ldr	r0, .L42+16
 477              	.LVL41:
 478 00b6 8342     		cmp	r3, r0
 479 00b8 01D0     		beq	.L41
 348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 480              		.loc 1 348 0
 481 00ba 0020     		movs	r0, #0
 482 00bc 0AE0     		b	.L29
 483              	.L41:
 339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       {
 484              		.loc 1 339 0 discriminator 1
 485 00be 0A43     		orrs	r2, r1, r2
 486              	.LVL42:
 487 00c0 0CD1     		bne	.L39
 342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       }
 488              		.loc 1 342 0
 489 00c2 9A68     		ldr	r2, [r3, #8]
 490 00c4 42F48002 		orr	r2, r2, #4194304
 491 00c8 9A60     		str	r2, [r3, #8]
 348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 492              		.loc 1 348 0
 493 00ca 0020     		movs	r0, #0
 494 00cc 02E0     		b	.L29
 495              	.LVL43:
 496              	.L35:
 272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 497              		.loc 1 272 0
 498 00ce 0220     		movs	r0, #2
 499              	.LVL44:
 500 00d0 00E0     		b	.L29
 501              	.LVL45:
 502              	.L36:
 348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 503              		.loc 1 348 0
 504 00d2 0020     		movs	r0, #0
 505              	.LVL46:
 506              	.L29:
 349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 507              		.loc 1 349 0
 508 00d4 02B0     		add	sp, sp, #8
 509              		.cfi_remember_state
 510              		.cfi_def_cfa_offset 0
 511              		@ sp needed
 512 00d6 7047     		bx	lr
 513              	.LVL47:
 514              	.L37:
 515              		.cfi_restore_state
 348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 516              		.loc 1 348 0
 517 00d8 0020     		movs	r0, #0
 518              	.LVL48:
 519 00da FBE7     		b	.L29
 520              	.LVL49:
 521              	.L39:
 522 00dc 0020     		movs	r0, #0
 523 00de F9E7     		b	.L29
 524              	.L43:
 525              		.align	2
 526              	.L42:
 527 00e0 00000000 		.word	SystemCoreClock
 528 00e4 83DE1B43 		.word	1125899907
 529 00e8 FECFFFFF 		.word	-12290
 530 00ec 00230140 		.word	1073816320
 531 00f0 00200140 		.word	1073815552
 532              		.cfi_endproc
 533              	.LFE139:
 535              		.section	.text.HAL_ADCEx_InjectedStop,"ax",%progbits
 536              		.align	1
 537              		.global	HAL_ADCEx_InjectedStop
 538              		.syntax unified
 539              		.thumb
 540              		.thumb_func
 541              		.fpu fpv5-d16
 543              	HAL_ADCEx_InjectedStop:
 544              	.LFB140:
 364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 545              		.loc 1 364 0
 546              		.cfi_startproc
 547              		@ args = 0, pretend = 0, frame = 0
 548              		@ frame_needed = 0, uses_anonymous_args = 0
 549              		@ link register save eliminated.
 550              	.LVL50:
 551 0000 0346     		mov	r3, r0
 552              	.LVL51:
 371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 553              		.loc 1 371 0
 554 0002 90F83C20 		ldrb	r2, [r0, #60]	@ zero_extendqisi2
 555 0006 012A     		cmp	r2, #1
 556 0008 27D0     		beq	.L48
 371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 557              		.loc 1 371 0 is_stmt 0 discriminator 2
 558 000a 0122     		movs	r2, #1
 559 000c 80F83C20 		strb	r2, [r0, #60]
 379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO)   )
 560              		.loc 1 379 0 is_stmt 1 discriminator 2
 561 0010 026C     		ldr	r2, [r0, #64]
 562 0012 12F4807F 		tst	r2, #256
 563 0016 15D1     		bne	.L46
 380:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 564              		.loc 1 380 0 discriminator 1
 565 0018 0268     		ldr	r2, [r0]
 566 001a 5168     		ldr	r1, [r2, #4]
 379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO)   )
 567              		.loc 1 379 0 discriminator 1
 568 001c 11F4806F 		tst	r1, #1024
 569 0020 10D1     		bne	.L46
 384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 570              		.loc 1 384 0
 571 0022 9168     		ldr	r1, [r2, #8]
 572 0024 21F00101 		bic	r1, r1, #1
 573 0028 9160     		str	r1, [r2, #8]
 387:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 574              		.loc 1 387 0
 575 002a 0268     		ldr	r2, [r0]
 576 002c 9268     		ldr	r2, [r2, #8]
 577 002e 12F0010F 		tst	r2, #1
 578 0032 10D1     		bne	.L49
 390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                         HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 579              		.loc 1 390 0
 580 0034 016C     		ldr	r1, [r0, #64]
 581 0036 0A4A     		ldr	r2, .L50
 582 0038 0A40     		ands	r2, r2, r1
 583 003a 42F00102 		orr	r2, r2, #1
 584 003e 0264     		str	r2, [r0, #64]
 365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 585              		.loc 1 365 0
 586 0040 0020     		movs	r0, #0
 587              	.LVL52:
 588 0042 04E0     		b	.L47
 589              	.LVL53:
 590              	.L46:
 398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       
 591              		.loc 1 398 0
 592 0044 1A6C     		ldr	r2, [r3, #64]
 593 0046 42F02002 		orr	r2, r2, #32
 594 004a 1A64     		str	r2, [r3, #64]
 595              	.LVL54:
 400:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 596              		.loc 1 400 0
 597 004c 0120     		movs	r0, #1
 598              	.LVL55:
 599              	.L47:
 404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 600              		.loc 1 404 0
 601 004e 0022     		movs	r2, #0
 602 0050 83F83C20 		strb	r2, [r3, #60]
 407:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 603              		.loc 1 407 0
 604 0054 7047     		bx	lr
 605              	.LVL56:
 606              	.L49:
 365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 607              		.loc 1 365 0
 608 0056 0020     		movs	r0, #0
 609              	.LVL57:
 610 0058 F9E7     		b	.L47
 611              	.LVL58:
 612              	.L48:
 371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 613              		.loc 1 371 0
 614 005a 0220     		movs	r0, #2
 615              	.LVL59:
 408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 616              		.loc 1 408 0
 617 005c 7047     		bx	lr
 618              	.L51:
 619 005e 00BF     		.align	2
 620              	.L50:
 621 0060 FEEEFFFF 		.word	-4354
 622              		.cfi_endproc
 623              	.LFE140:
 625              		.section	.text.HAL_ADCEx_InjectedPollForConversion,"ax",%progbits
 626              		.align	1
 627              		.global	HAL_ADCEx_InjectedPollForConversion
 628              		.syntax unified
 629              		.thumb
 630              		.thumb_func
 631              		.fpu fpv5-d16
 633              	HAL_ADCEx_InjectedPollForConversion:
 634              	.LFB141:
 418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   uint32_t tickstart = 0;
 635              		.loc 1 418 0
 636              		.cfi_startproc
 637              		@ args = 0, pretend = 0, frame = 0
 638              		@ frame_needed = 0, uses_anonymous_args = 0
 639              	.LVL60:
 640 0000 70B5     		push	{r4, r5, r6, lr}
 641              		.cfi_def_cfa_offset 16
 642              		.cfi_offset 4, -16
 643              		.cfi_offset 5, -12
 644              		.cfi_offset 6, -8
 645              		.cfi_offset 14, -4
 646 0002 0446     		mov	r4, r0
 647 0004 0D46     		mov	r5, r1
 648              	.LVL61:
 422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 649              		.loc 1 422 0
 650 0006 FFF7FEFF 		bl	HAL_GetTick
 651              	.LVL62:
 652 000a 0646     		mov	r6, r0
 653              	.LVL63:
 654              	.L54:
 425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 655              		.loc 1 425 0
 656 000c 2368     		ldr	r3, [r4]
 657 000e 1A68     		ldr	r2, [r3]
 658 0010 12F0040F 		tst	r2, #4
 659 0014 0FD1     		bne	.L66
 428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 660              		.loc 1 428 0
 661 0016 B5F1FF3F 		cmp	r5, #-1
 662 001a F7D0     		beq	.L54
 430:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       {
 663              		.loc 1 430 0
 664 001c 25B1     		cbz	r5, .L55
 430:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       {
 665              		.loc 1 430 0 is_stmt 0 discriminator 1
 666 001e FFF7FEFF 		bl	HAL_GetTick
 667              	.LVL64:
 668 0022 801B     		subs	r0, r0, r6
 669 0024 A842     		cmp	r0, r5
 670 0026 F1D9     		bls	.L54
 671              	.L55:
 432:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         /* Process unlocked */
 672              		.loc 1 432 0 is_stmt 1
 673 0028 0423     		movs	r3, #4
 674 002a 2364     		str	r3, [r4, #64]
 434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****         return HAL_TIMEOUT;
 675              		.loc 1 434 0
 676 002c 0023     		movs	r3, #0
 677 002e 84F83C30 		strb	r3, [r4, #60]
 435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       }
 678              		.loc 1 435 0
 679 0032 0320     		movs	r0, #3
 680 0034 2CE0     		b	.L56
 681              	.L66:
 441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 682              		.loc 1 441 0
 683 0036 6FF00C02 		mvn	r2, #12
 684 003a 1A60     		str	r2, [r3]
 444:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 685              		.loc 1 444 0
 686 003c 236C     		ldr	r3, [r4, #64]
 687 003e 43F40053 		orr	r3, r3, #8192
 688 0042 2364     		str	r3, [r4, #64]
 452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      (HAL_IS_BIT_CLR(hadc->Instance->JSQR, ADC_JSQR_JL)  ||
 689              		.loc 1 452 0
 690 0044 2368     		ldr	r3, [r4]
 691 0046 9A68     		ldr	r2, [r3, #8]
 692 0048 12F4401F 		tst	r2, #3145728
 693 004c 1FD1     		bne	.L59
 453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)    ) &&
 694              		.loc 1 453 0 discriminator 1
 695 004e 9A6B     		ldr	r2, [r3, #56]
 452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      (HAL_IS_BIT_CLR(hadc->Instance->JSQR, ADC_JSQR_JL)  ||
 696              		.loc 1 452 0 discriminator 1
 697 0050 12F4401F 		tst	r2, #3145728
 698 0054 03D0     		beq	.L58
 454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      (HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO) &&
 699              		.loc 1 454 0
 700 0056 9A68     		ldr	r2, [r3, #8]
 453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)    ) &&
 701              		.loc 1 453 0
 702 0058 12F4806F 		tst	r2, #1024
 703 005c 19D1     		bne	.L60
 704              	.L58:
 455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       (ADC_IS_SOFTWARE_START_REGULAR(hadc)       &&
 705              		.loc 1 455 0
 706 005e 5A68     		ldr	r2, [r3, #4]
 454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      (HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO) &&
 707              		.loc 1 454 0
 708 0060 12F4806F 		tst	r2, #1024
 709 0064 17D1     		bne	.L61
 456:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       (hadc->Init.ContinuousConvMode == DISABLE)   )       )   )
 710              		.loc 1 456 0
 711 0066 9B68     		ldr	r3, [r3, #8]
 455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       (ADC_IS_SOFTWARE_START_REGULAR(hadc)       &&
 712              		.loc 1 455 0
 713 0068 13F0405F 		tst	r3, #805306368
 714 006c 15D1     		bne	.L62
 457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 715              		.loc 1 457 0
 716 006e A369     		ldr	r3, [r4, #24]
 456:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       (hadc->Init.ContinuousConvMode == DISABLE)   )       )   )
 717              		.loc 1 456 0
 718 0070 ABB9     		cbnz	r3, .L63
 460:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 719              		.loc 1 460 0
 720 0072 236C     		ldr	r3, [r4, #64]
 721 0074 23F48053 		bic	r3, r3, #4096
 722 0078 2364     		str	r3, [r4, #64]
 462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     { 
 723              		.loc 1 462 0
 724 007a 236C     		ldr	r3, [r4, #64]
 725 007c 13F4807F 		tst	r3, #256
 726 0080 0FD1     		bne	.L64
 464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 727              		.loc 1 464 0
 728 0082 236C     		ldr	r3, [r4, #64]
 729 0084 43F00103 		orr	r3, r3, #1
 730 0088 2364     		str	r3, [r4, #64]
 469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }      
 731              		.loc 1 469 0
 732 008a 0020     		movs	r0, #0
 733 008c 00E0     		b	.L56
 734              	.L59:
 735 008e 0020     		movs	r0, #0
 736              	.L56:
 470:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 737              		.loc 1 470 0
 738 0090 70BD     		pop	{r4, r5, r6, pc}
 739              	.LVL65:
 740              	.L60:
 469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }      
 741              		.loc 1 469 0
 742 0092 0020     		movs	r0, #0
 743 0094 FCE7     		b	.L56
 744              	.L61:
 745 0096 0020     		movs	r0, #0
 746 0098 FAE7     		b	.L56
 747              	.L62:
 748 009a 0020     		movs	r0, #0
 749 009c F8E7     		b	.L56
 750              	.L63:
 751 009e 0020     		movs	r0, #0
 752 00a0 F6E7     		b	.L56
 753              	.L64:
 754 00a2 0020     		movs	r0, #0
 755 00a4 F4E7     		b	.L56
 756              		.cfi_endproc
 757              	.LFE141:
 759              		.section	.text.HAL_ADCEx_InjectedStop_IT,"ax",%progbits
 760              		.align	1
 761              		.global	HAL_ADCEx_InjectedStop_IT
 762              		.syntax unified
 763              		.thumb
 764              		.thumb_func
 765              		.fpu fpv5-d16
 767              	HAL_ADCEx_InjectedStop_IT:
 768              	.LFB142:
 485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 769              		.loc 1 485 0
 770              		.cfi_startproc
 771              		@ args = 0, pretend = 0, frame = 0
 772              		@ frame_needed = 0, uses_anonymous_args = 0
 773              		@ link register save eliminated.
 774              	.LVL66:
 775 0000 0346     		mov	r3, r0
 776              	.LVL67:
 492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 777              		.loc 1 492 0
 778 0002 90F83C20 		ldrb	r2, [r0, #60]	@ zero_extendqisi2
 779 0006 012A     		cmp	r2, #1
 780 0008 2BD0     		beq	.L71
 492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 781              		.loc 1 492 0 is_stmt 0 discriminator 2
 782 000a 0122     		movs	r2, #1
 783 000c 80F83C20 		strb	r2, [r0, #60]
 500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO)   )
 784              		.loc 1 500 0 is_stmt 1 discriminator 2
 785 0010 026C     		ldr	r2, [r0, #64]
 786 0012 12F4807F 		tst	r2, #256
 787 0016 19D1     		bne	.L69
 501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 788              		.loc 1 501 0 discriminator 1
 789 0018 0268     		ldr	r2, [r0]
 790 001a 5168     		ldr	r1, [r2, #4]
 500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****      HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO)   )
 791              		.loc 1 500 0 discriminator 1
 792 001c 11F4806F 		tst	r1, #1024
 793 0020 14D1     		bne	.L69
 505:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 794              		.loc 1 505 0
 795 0022 9168     		ldr	r1, [r2, #8]
 796 0024 21F00101 		bic	r1, r1, #1
 797 0028 9160     		str	r1, [r2, #8]
 508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 798              		.loc 1 508 0
 799 002a 0268     		ldr	r2, [r0]
 800 002c 9168     		ldr	r1, [r2, #8]
 801 002e 11F0010F 		tst	r1, #1
 802 0032 14D1     		bne	.L72
 511:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       
 803              		.loc 1 511 0
 804 0034 5168     		ldr	r1, [r2, #4]
 805 0036 21F08001 		bic	r1, r1, #128
 806 003a 5160     		str	r1, [r2, #4]
 514:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                         HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 807              		.loc 1 514 0
 808 003c 016C     		ldr	r1, [r0, #64]
 809 003e 0A4A     		ldr	r2, .L73
 810 0040 0A40     		ands	r2, r2, r1
 811 0042 42F00102 		orr	r2, r2, #1
 812 0046 0264     		str	r2, [r0, #64]
 486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 813              		.loc 1 486 0
 814 0048 0020     		movs	r0, #0
 815              	.LVL68:
 816 004a 04E0     		b	.L70
 817              	.LVL69:
 818              	.L69:
 522:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       
 819              		.loc 1 522 0
 820 004c 1A6C     		ldr	r2, [r3, #64]
 821 004e 42F02002 		orr	r2, r2, #32
 822 0052 1A64     		str	r2, [r3, #64]
 823              	.LVL70:
 524:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 824              		.loc 1 524 0
 825 0054 0120     		movs	r0, #1
 826              	.LVL71:
 827              	.L70:
 528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 828              		.loc 1 528 0
 829 0056 0022     		movs	r2, #0
 830 0058 83F83C20 		strb	r2, [r3, #60]
 531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 831              		.loc 1 531 0
 832 005c 7047     		bx	lr
 833              	.LVL72:
 834              	.L72:
 486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 835              		.loc 1 486 0
 836 005e 0020     		movs	r0, #0
 837              	.LVL73:
 838 0060 F9E7     		b	.L70
 839              	.LVL74:
 840              	.L71:
 492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 841              		.loc 1 492 0
 842 0062 0220     		movs	r0, #2
 843              	.LVL75:
 532:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 844              		.loc 1 532 0
 845 0064 7047     		bx	lr
 846              	.L74:
 847 0066 00BF     		.align	2
 848              	.L73:
 849 0068 FEEEFFFF 		.word	-4354
 850              		.cfi_endproc
 851              	.LFE142:
 853              		.section	.text.HAL_ADCEx_InjectedGetValue,"ax",%progbits
 854              		.align	1
 855              		.global	HAL_ADCEx_InjectedGetValue
 856              		.syntax unified
 857              		.thumb
 858              		.thumb_func
 859              		.fpu fpv5-d16
 861              	HAL_ADCEx_InjectedGetValue:
 862              	.LFB143:
 547:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __IO uint32_t tmp = 0;
 863              		.loc 1 547 0
 864              		.cfi_startproc
 865              		@ args = 0, pretend = 0, frame = 8
 866              		@ frame_needed = 0, uses_anonymous_args = 0
 867              		@ link register save eliminated.
 868              	.LVL76:
 869 0000 82B0     		sub	sp, sp, #8
 870              		.cfi_def_cfa_offset 8
 548:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 871              		.loc 1 548 0
 872 0002 0023     		movs	r3, #0
 873 0004 0193     		str	r3, [sp, #4]
 555:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 874              		.loc 1 555 0
 875 0006 0368     		ldr	r3, [r0]
 876 0008 6FF00402 		mvn	r2, #4
 877 000c 1A60     		str	r2, [r3]
 558:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {  
 878              		.loc 1 558 0
 879 000e 0139     		subs	r1, r1, #1
 880              	.LVL77:
 881 0010 0329     		cmp	r1, #3
 882 0012 06D8     		bhi	.L76
 883 0014 DFE801F0 		tbb	[pc, r1]
 884              	.L78:
 885 0018 10       		.byte	(.L77-.L78)/2
 886 0019 0C       		.byte	(.L79-.L78)/2
 887 001a 08       		.byte	(.L80-.L78)/2
 888 001b 02       		.byte	(.L81-.L78)/2
 889              		.p2align 1
 890              	.L81:
 562:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }  
 891              		.loc 1 562 0
 892 001c 0368     		ldr	r3, [r0]
 893 001e 9B6C     		ldr	r3, [r3, #72]
 894 0020 0193     		str	r3, [sp, #4]
 895              	.L76:
 583:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 896              		.loc 1 583 0
 897 0022 0198     		ldr	r0, [sp, #4]
 898              	.LVL78:
 584:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 899              		.loc 1 584 0
 900 0024 02B0     		add	sp, sp, #8
 901              		.cfi_remember_state
 902              		.cfi_def_cfa_offset 0
 903              		@ sp needed
 904 0026 7047     		bx	lr
 905              	.LVL79:
 906              	.L80:
 907              		.cfi_restore_state
 567:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }  
 908              		.loc 1 567 0
 909 0028 0368     		ldr	r3, [r0]
 910 002a 5B6C     		ldr	r3, [r3, #68]
 911 002c 0193     		str	r3, [sp, #4]
 569:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     case ADC_INJECTED_RANK_2: 
 912              		.loc 1 569 0
 913 002e F8E7     		b	.L76
 914              	.L79:
 572:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 915              		.loc 1 572 0
 916 0030 0368     		ldr	r3, [r0]
 917 0032 1B6C     		ldr	r3, [r3, #64]
 918 0034 0193     		str	r3, [sp, #4]
 574:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     case ADC_INJECTED_RANK_1:
 919              		.loc 1 574 0
 920 0036 F4E7     		b	.L76
 921              	.L77:
 577:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 922              		.loc 1 577 0
 923 0038 0368     		ldr	r3, [r0]
 924 003a DB6B     		ldr	r3, [r3, #60]
 925 003c 0193     		str	r3, [sp, #4]
 579:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     default:
 926              		.loc 1 579 0
 927 003e F0E7     		b	.L76
 928              		.cfi_endproc
 929              	.LFE143:
 931              		.section	.text.HAL_ADCEx_MultiModeStart_DMA,"ax",%progbits
 932              		.align	1
 933              		.global	HAL_ADCEx_MultiModeStart_DMA
 934              		.syntax unified
 935              		.thumb
 936              		.thumb_func
 937              		.fpu fpv5-d16
 939              	HAL_ADCEx_MultiModeStart_DMA:
 940              	.LFB144:
 598:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   __IO uint32_t counter = 0;
 941              		.loc 1 598 0
 942              		.cfi_startproc
 943              		@ args = 0, pretend = 0, frame = 8
 944              		@ frame_needed = 0, uses_anonymous_args = 0
 945              	.LVL80:
 946 0000 30B5     		push	{r4, r5, lr}
 947              		.cfi_def_cfa_offset 12
 948              		.cfi_offset 4, -12
 949              		.cfi_offset 5, -8
 950              		.cfi_offset 14, -4
 951 0002 83B0     		sub	sp, sp, #12
 952              		.cfi_def_cfa_offset 24
 599:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 953              		.loc 1 599 0
 954 0004 0023     		movs	r3, #0
 955 0006 0193     		str	r3, [sp, #4]
 607:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 956              		.loc 1 607 0
 957 0008 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 958 000c 012B     		cmp	r3, #1
 959 000e 6FD0     		beq	.L93
 607:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 960              		.loc 1 607 0 is_stmt 0 discriminator 2
 961 0010 0123     		movs	r3, #1
 962 0012 80F83C30 		strb	r3, [r0, #60]
 611:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {  
 963              		.loc 1 611 0 is_stmt 1 discriminator 2
 964 0016 0468     		ldr	r4, [r0]
 965 0018 A368     		ldr	r3, [r4, #8]
 966 001a 13F0010F 		tst	r3, #1
 967 001e 13D1     		bne	.L85
 614:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 968              		.loc 1 614 0
 969 0020 A368     		ldr	r3, [r4, #8]
 970 0022 43F00103 		orr	r3, r3, #1
 971 0026 A360     		str	r3, [r4, #8]
 618:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     while(counter != 0)
 972              		.loc 1 618 0
 973 0028 354B     		ldr	r3, .L97
 974 002a 1C68     		ldr	r4, [r3]
 975 002c 354B     		ldr	r3, .L97+4
 976 002e A3FB0434 		umull	r3, r4, r3, r4
 977 0032 A40C     		lsrs	r4, r4, #18
 978 0034 04EB4404 		add	r4, r4, r4, lsl #1
 979 0038 0194     		str	r4, [sp, #4]
 619:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 980              		.loc 1 619 0
 981 003a 02E0     		b	.L86
 982              	.L87:
 621:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 983              		.loc 1 621 0
 984 003c 019C     		ldr	r4, [sp, #4]
 985 003e 013C     		subs	r4, r4, #1
 986 0040 0194     		str	r4, [sp, #4]
 987              	.L86:
 619:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 988              		.loc 1 619 0
 989 0042 019C     		ldr	r4, [sp, #4]
 990 0044 002C     		cmp	r4, #0
 991 0046 F9D1     		bne	.L87
 992              	.L85:
 626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 993              		.loc 1 626 0
 994 0048 0368     		ldr	r3, [r0]
 995 004a 9C68     		ldr	r4, [r3, #8]
 996 004c 14F0010F 		tst	r4, #1
 997 0050 50D0     		beq	.L94
 631:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC | HAL_ADC_STATE_REG_OVR,
 998              		.loc 1 631 0
 999 0052 056C     		ldr	r5, [r0, #64]
 1000 0054 2C4C     		ldr	r4, .L97+8
 1001 0056 2C40     		ands	r4, r4, r5
 1002 0058 44F48074 		orr	r4, r4, #256
 1003 005c 0464     		str	r4, [r0, #64]
 637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 1004              		.loc 1 637 0
 1005 005e 5B68     		ldr	r3, [r3, #4]
 1006 0060 13F4806F 		tst	r3, #1024
 1007 0064 05D0     		beq	.L88
 639:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 1008              		.loc 1 639 0
 1009 0066 036C     		ldr	r3, [r0, #64]
 1010 0068 23F44053 		bic	r3, r3, #12288
 1011 006c 43F48053 		orr	r3, r3, #4096
 1012 0070 0364     		str	r3, [r0, #64]
 1013              	.L88:
 643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 1014              		.loc 1 643 0
 1015 0072 036C     		ldr	r3, [r0, #64]
 1016 0074 13F4805F 		tst	r3, #4096
 1017 0078 31D0     		beq	.L89
 646:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 1018              		.loc 1 646 0
 1019 007a 436C     		ldr	r3, [r0, #68]
 1020 007c 23F00603 		bic	r3, r3, #6
 1021 0080 4364     		str	r3, [r0, #68]
 1022              	.L90:
 657:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 1023              		.loc 1 657 0
 1024 0082 0023     		movs	r3, #0
 1025 0084 80F83C30 		strb	r3, [r0, #60]
 660:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 1026              		.loc 1 660 0
 1027 0088 836B     		ldr	r3, [r0, #56]
 1028 008a 204C     		ldr	r4, .L97+12
 1029 008c DC63     		str	r4, [r3, #60]
 663:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 1030              		.loc 1 663 0
 1031 008e 836B     		ldr	r3, [r0, #56]
 1032 0090 1F4C     		ldr	r4, .L97+16
 1033 0092 1C64     		str	r4, [r3, #64]
 666:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 1034              		.loc 1 666 0
 1035 0094 836B     		ldr	r3, [r0, #56]
 1036 0096 1F4C     		ldr	r4, .L97+20
 1037 0098 DC64     		str	r4, [r3, #76]
 673:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 1038              		.loc 1 673 0
 1039 009a 0368     		ldr	r3, [r0]
 1040 009c 6FF00204 		mvn	r4, #2
 1041 00a0 1C60     		str	r4, [r3]
 676:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 1042              		.loc 1 676 0
 1043 00a2 0468     		ldr	r4, [r0]
 1044 00a4 6368     		ldr	r3, [r4, #4]
 1045 00a6 43F08063 		orr	r3, r3, #67108864
 1046 00aa 6360     		str	r3, [r4, #4]
 678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 1047              		.loc 1 678 0
 1048 00ac 036B     		ldr	r3, [r0, #48]
 1049 00ae CBB1     		cbz	r3, .L91
 681:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 1050              		.loc 1 681 0
 1051 00b0 194C     		ldr	r4, .L97+24
 1052 00b2 6368     		ldr	r3, [r4, #4]
 1053 00b4 43F40053 		orr	r3, r3, #8192
 1054 00b8 6360     		str	r3, [r4, #4]
 1055              	.L92:
 1056 00ba 1346     		mov	r3, r2
 1057 00bc 0A46     		mov	r2, r1
 1058              	.LVL81:
 1059 00be 0446     		mov	r4, r0
 690:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 1060              		.loc 1 690 0
 1061 00c0 1649     		ldr	r1, .L97+28
 1062              	.LVL82:
 1063 00c2 806B     		ldr	r0, [r0, #56]
 1064              	.LVL83:
 1065 00c4 FFF7FEFF 		bl	HAL_DMA_Start_IT
 1066              	.LVL84:
 693:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     {
 1067              		.loc 1 693 0
 1068 00c8 2368     		ldr	r3, [r4]
 1069 00ca 9A68     		ldr	r2, [r3, #8]
 1070 00cc 12F0405F 		tst	r2, #805306368
 1071 00d0 13D1     		bne	.L95
 696:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 1072              		.loc 1 696 0
 1073 00d2 9A68     		ldr	r2, [r3, #8]
 1074 00d4 42F08042 		orr	r2, r2, #1073741824
 1075 00d8 9A60     		str	r2, [r3, #8]
 701:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 1076              		.loc 1 701 0
 1077 00da 0020     		movs	r0, #0
 1078 00dc 0BE0     		b	.L84
 1079              	.LVL85:
 1080              	.L89:
 651:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 1081              		.loc 1 651 0
 1082 00de 0023     		movs	r3, #0
 1083 00e0 4364     		str	r3, [r0, #68]
 1084 00e2 CEE7     		b	.L90
 1085              	.L91:
 686:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     }
 1086              		.loc 1 686 0
 1087 00e4 0C4C     		ldr	r4, .L97+24
 1088 00e6 6368     		ldr	r3, [r4, #4]
 1089 00e8 23F40053 		bic	r3, r3, #8192
 1090 00ec 6360     		str	r3, [r4, #4]
 1091 00ee E4E7     		b	.L92
 1092              	.L93:
 607:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1093              		.loc 1 607 0
 1094 00f0 0220     		movs	r0, #2
 1095              	.LVL86:
 1096 00f2 00E0     		b	.L84
 1097              	.LVL87:
 1098              	.L94:
 701:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 1099              		.loc 1 701 0
 1100 00f4 0020     		movs	r0, #0
 1101              	.LVL88:
 1102              	.L84:
 702:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 1103              		.loc 1 702 0
 1104 00f6 03B0     		add	sp, sp, #12
 1105              		.cfi_remember_state
 1106              		.cfi_def_cfa_offset 12
 1107              		@ sp needed
 1108 00f8 30BD     		pop	{r4, r5, pc}
 1109              	.LVL89:
 1110              	.L95:
 1111              		.cfi_restore_state
 701:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 1112              		.loc 1 701 0
 1113 00fa 0020     		movs	r0, #0
 1114 00fc FBE7     		b	.L84
 1115              	.L98:
 1116 00fe 00BF     		.align	2
 1117              	.L97:
 1118 0100 00000000 		.word	SystemCoreClock
 1119 0104 83DE1B43 		.word	1125899907
 1120 0108 FEF8FFFF 		.word	-1794
 1121 010c 00000000 		.word	ADC_MultiModeDMAConvCplt
 1122 0110 00000000 		.word	ADC_MultiModeDMAHalfConvCplt
 1123 0114 00000000 		.word	ADC_MultiModeDMAError
 1124 0118 00230140 		.word	1073816320
 1125 011c 08230140 		.word	1073816328
 1126              		.cfi_endproc
 1127              	.LFE144:
 1129              		.section	.text.HAL_ADCEx_MultiModeStop_DMA,"ax",%progbits
 1130              		.align	1
 1131              		.global	HAL_ADCEx_MultiModeStop_DMA
 1132              		.syntax unified
 1133              		.thumb
 1134              		.thumb_func
 1135              		.fpu fpv5-d16
 1137              	HAL_ADCEx_MultiModeStop_DMA:
 1138              	.LFB145:
 711:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 1139              		.loc 1 711 0
 1140              		.cfi_startproc
 1141              		@ args = 0, pretend = 0, frame = 0
 1142              		@ frame_needed = 0, uses_anonymous_args = 0
 1143              	.LVL90:
 718:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1144              		.loc 1 718 0
 1145 0000 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 1146 0004 012B     		cmp	r3, #1
 1147 0006 27D0     		beq	.L102
 711:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 1148              		.loc 1 711 0 discriminator 2
 1149 0008 10B5     		push	{r4, lr}
 1150              		.cfi_def_cfa_offset 8
 1151              		.cfi_offset 4, -8
 1152              		.cfi_offset 14, -4
 1153 000a 0446     		mov	r4, r0
 718:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1154              		.loc 1 718 0 discriminator 2
 1155 000c 0123     		movs	r3, #1
 1156 000e 80F83C30 		strb	r3, [r0, #60]
 722:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1157              		.loc 1 722 0 discriminator 2
 1158 0012 0268     		ldr	r2, [r0]
 1159 0014 9368     		ldr	r3, [r2, #8]
 1160 0016 23F00103 		bic	r3, r3, #1
 1161 001a 9360     		str	r3, [r2, #8]
 725:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 1162              		.loc 1 725 0 discriminator 2
 1163 001c 0368     		ldr	r3, [r0]
 1164 001e 9B68     		ldr	r3, [r3, #8]
 1165 0020 13F0010F 		tst	r3, #1
 1166 0024 04D0     		beq	.L108
 712:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1167              		.loc 1 712 0
 1168 0026 0020     		movs	r0, #0
 1169              	.LVL91:
 1170              	.L101:
 744:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1171              		.loc 1 744 0
 1172 0028 0023     		movs	r3, #0
 1173 002a 84F83C30 		strb	r3, [r4, #60]
 748:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 1174              		.loc 1 748 0
 1175 002e 10BD     		pop	{r4, pc}
 1176              	.LVL92:
 1177              	.L108:
 728:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 1178              		.loc 1 728 0
 1179 0030 0A4A     		ldr	r2, .L109
 1180 0032 5368     		ldr	r3, [r2, #4]
 1181 0034 23F40053 		bic	r3, r3, #8192
 1182 0038 5360     		str	r3, [r2, #4]
 732:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 1183              		.loc 1 732 0
 1184 003a 806B     		ldr	r0, [r0, #56]
 1185              	.LVL93:
 1186 003c FFF7FEFF 		bl	HAL_DMA_Abort
 1187              	.LVL94:
 735:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 1188              		.loc 1 735 0
 1189 0040 2268     		ldr	r2, [r4]
 1190 0042 5368     		ldr	r3, [r2, #4]
 1191 0044 23F08063 		bic	r3, r3, #67108864
 1192 0048 5360     		str	r3, [r2, #4]
 738:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 1193              		.loc 1 738 0
 1194 004a 226C     		ldr	r2, [r4, #64]
 1195 004c 044B     		ldr	r3, .L109+4
 1196 004e 1340     		ands	r3, r3, r2
 1197 0050 43F00103 		orr	r3, r3, #1
 1198 0054 2364     		str	r3, [r4, #64]
 1199 0056 E7E7     		b	.L101
 1200              	.LVL95:
 1201              	.L102:
 1202              		.cfi_def_cfa_offset 0
 1203              		.cfi_restore 4
 1204              		.cfi_restore 14
 718:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1205              		.loc 1 718 0
 1206 0058 0220     		movs	r0, #2
 1207              	.LVL96:
 748:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 1208              		.loc 1 748 0
 1209 005a 7047     		bx	lr
 1210              	.L110:
 1211              		.align	2
 1212              	.L109:
 1213 005c 00230140 		.word	1073816320
 1214 0060 FEEEFFFF 		.word	-4354
 1215              		.cfi_endproc
 1216              	.LFE145:
 1218              		.section	.text.HAL_ADCEx_MultiModeGetValue,"ax",%progbits
 1219              		.align	1
 1220              		.global	HAL_ADCEx_MultiModeGetValue
 1221              		.syntax unified
 1222              		.thumb
 1223              		.thumb_func
 1224              		.fpu fpv5-d16
 1226              	HAL_ADCEx_MultiModeGetValue:
 1227              	.LFB146:
 758:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Return the multi mode conversion value */
 1228              		.loc 1 758 0
 1229              		.cfi_startproc
 1230              		@ args = 0, pretend = 0, frame = 0
 1231              		@ frame_needed = 0, uses_anonymous_args = 0
 1232              		@ link register save eliminated.
 1233              	.LVL97:
 760:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 1234              		.loc 1 760 0
 1235 0000 014B     		ldr	r3, .L112
 1236 0002 9868     		ldr	r0, [r3, #8]
 1237              	.LVL98:
 761:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 1238              		.loc 1 761 0
 1239 0004 7047     		bx	lr
 1240              	.L113:
 1241 0006 00BF     		.align	2
 1242              	.L112:
 1243 0008 00230140 		.word	1073816320
 1244              		.cfi_endproc
 1245              	.LFE146:
 1247              		.section	.text.HAL_ADCEx_InjectedConvCpltCallback,"ax",%progbits
 1248              		.align	1
 1249              		.weak	HAL_ADCEx_InjectedConvCpltCallback
 1250              		.syntax unified
 1251              		.thumb
 1252              		.thumb_func
 1253              		.fpu fpv5-d16
 1255              	HAL_ADCEx_InjectedConvCpltCallback:
 1256              	.LFB147:
 770:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Prevent unused argument(s) compilation warning */
 1257              		.loc 1 770 0
 1258              		.cfi_startproc
 1259              		@ args = 0, pretend = 0, frame = 0
 1260              		@ frame_needed = 0, uses_anonymous_args = 0
 1261              		@ link register save eliminated.
 1262              	.LVL99:
 776:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 1263              		.loc 1 776 0
 1264 0000 7047     		bx	lr
 1265              		.cfi_endproc
 1266              	.LFE147:
 1268              		.section	.text.HAL_ADCEx_InjectedConfigChannel,"ax",%progbits
 1269              		.align	1
 1270              		.global	HAL_ADCEx_InjectedConfigChannel
 1271              		.syntax unified
 1272              		.thumb
 1273              		.thumb_func
 1274              		.fpu fpv5-d16
 1276              	HAL_ADCEx_InjectedConfigChannel:
 1277              	.LFB148:
 787:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1278              		.loc 1 787 0
 1279              		.cfi_startproc
 1280              		@ args = 0, pretend = 0, frame = 0
 1281              		@ frame_needed = 0, uses_anonymous_args = 0
 1282              		@ link register save eliminated.
 1283              	.LVL100:
 813:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1284              		.loc 1 813 0
 1285 0000 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 1286 0004 012B     		cmp	r3, #1
 1287 0006 00F0F380 		beq	.L132
 787:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1288              		.loc 1 787 0 discriminator 2
 1289 000a 30B4     		push	{r4, r5}
 1290              		.cfi_def_cfa_offset 8
 1291              		.cfi_offset 4, -8
 1292              		.cfi_offset 5, -4
 813:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1293              		.loc 1 813 0 discriminator 2
 1294 000c 0123     		movs	r3, #1
 1295 000e 80F83C30 		strb	r3, [r0, #60]
 816:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 1296              		.loc 1 816 0 discriminator 2
 1297 0012 0B68     		ldr	r3, [r1]
 1298 0014 092B     		cmp	r3, #9
 1299 0016 7BD9     		bls	.L117
 819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 1300              		.loc 1 819 0
 1301 0018 0568     		ldr	r5, [r0]
 1302 001a EA68     		ldr	r2, [r5, #12]
 1303 001c 9BB2     		uxth	r3, r3
 1304 001e 03EB4303 		add	r3, r3, r3, lsl #1
 1305 0022 1E3B     		subs	r3, r3, #30
 1306 0024 0724     		movs	r4, #7
 1307 0026 04FA03F3 		lsl	r3, r4, r3
 1308 002a 22EA0303 		bic	r3, r2, r3
 1309 002e EB60     		str	r3, [r5, #12]
 822:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 1310              		.loc 1 822 0
 1311 0030 0568     		ldr	r5, [r0]
 1312 0032 EA68     		ldr	r2, [r5, #12]
 1313 0034 8C68     		ldr	r4, [r1, #8]
 1314 0036 0B88     		ldrh	r3, [r1]
 1315 0038 03EB4303 		add	r3, r3, r3, lsl #1
 1316 003c 1E3B     		subs	r3, r3, #30
 1317 003e 04FA03F3 		lsl	r3, r4, r3
 1318 0042 1343     		orrs	r3, r3, r2
 1319 0044 EB60     		str	r3, [r5, #12]
 1320              	.L118:
 834:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   hadc->Instance->JSQR |=  ADC_SQR1(sConfigInjected->InjectedNbrOfConversion);
 1321              		.loc 1 834 0
 1322 0046 0268     		ldr	r2, [r0]
 1323 0048 936B     		ldr	r3, [r2, #56]
 1324 004a 23F44013 		bic	r3, r3, #3145728
 1325 004e 9363     		str	r3, [r2, #56]
 835:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1326              		.loc 1 835 0
 1327 0050 0468     		ldr	r4, [r0]
 1328 0052 A36B     		ldr	r3, [r4, #56]
 1329 0054 0A69     		ldr	r2, [r1, #16]
 1330 0056 013A     		subs	r2, r2, #1
 1331 0058 43EA0253 		orr	r3, r3, r2, lsl #20
 1332 005c A363     		str	r3, [r4, #56]
 840:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****    
 1333              		.loc 1 840 0
 1334 005e 0568     		ldr	r5, [r0]
 1335 0060 AA6B     		ldr	r2, [r5, #56]
 1336 0062 4B68     		ldr	r3, [r1, #4]
 1337 0064 0C69     		ldr	r4, [r1, #16]
 1338 0066 1B1B     		subs	r3, r3, r4
 1339 0068 DBB2     		uxtb	r3, r3
 1340 006a 0333     		adds	r3, r3, #3
 1341 006c DBB2     		uxtb	r3, r3
 1342 006e 03EB8303 		add	r3, r3, r3, lsl #2
 1343 0072 1F24     		movs	r4, #31
 1344 0074 04FA03F3 		lsl	r3, r4, r3
 1345 0078 22EA0303 		bic	r3, r2, r3
 1346 007c AB63     		str	r3, [r5, #56]
 843:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 1347              		.loc 1 843 0
 1348 007e 0568     		ldr	r5, [r0]
 1349 0080 AA6B     		ldr	r2, [r5, #56]
 1350 0082 4B68     		ldr	r3, [r1, #4]
 1351 0084 0C69     		ldr	r4, [r1, #16]
 1352 0086 1B1B     		subs	r3, r3, r4
 1353 0088 DBB2     		uxtb	r3, r3
 1354 008a 0333     		adds	r3, r3, #3
 1355 008c DBB2     		uxtb	r3, r3
 1356 008e 03EB8303 		add	r3, r3, r3, lsl #2
 1357 0092 0C88     		ldrh	r4, [r1]
 1358 0094 04FA03F3 		lsl	r3, r4, r3
 1359 0098 1343     		orrs	r3, r3, r2
 1360 009a AB63     		str	r3, [r5, #56]
 850:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {  
 1361              		.loc 1 850 0
 1362 009c CA69     		ldr	r2, [r1, #28]
 1363 009e 554B     		ldr	r3, .L141
 1364 00a0 9A42     		cmp	r2, r3
 1365 00a2 4BD0     		beq	.L119
 853:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->Instance->CR2 |=  sConfigInjected->ExternalTrigInjecConv;
 1366              		.loc 1 853 0
 1367 00a4 0268     		ldr	r2, [r0]
 1368 00a6 9368     		ldr	r3, [r2, #8]
 1369 00a8 23F47023 		bic	r3, r3, #983040
 1370 00ac 9360     		str	r3, [r2, #8]
 854:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 1371              		.loc 1 854 0
 1372 00ae 0268     		ldr	r2, [r0]
 1373 00b0 9368     		ldr	r3, [r2, #8]
 1374 00b2 CC69     		ldr	r4, [r1, #28]
 1375 00b4 2343     		orrs	r3, r3, r4
 1376 00b6 9360     		str	r3, [r2, #8]
 857:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->Instance->CR2 |= sConfigInjected->ExternalTrigInjecConvEdge;
 1377              		.loc 1 857 0
 1378 00b8 0268     		ldr	r2, [r0]
 1379 00ba 9368     		ldr	r3, [r2, #8]
 1380 00bc 23F44013 		bic	r3, r3, #3145728
 1381 00c0 9360     		str	r3, [r2, #8]
 858:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 1382              		.loc 1 858 0
 1383 00c2 0268     		ldr	r2, [r0]
 1384 00c4 9368     		ldr	r3, [r2, #8]
 1385 00c6 0C6A     		ldr	r4, [r1, #32]
 1386 00c8 2343     		orrs	r3, r3, r4
 1387 00ca 9360     		str	r3, [r2, #8]
 1388              	.L120:
 867:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 1389              		.loc 1 867 0
 1390 00cc 8B69     		ldr	r3, [r1, #24]
 1391 00ce 002B     		cmp	r3, #0
 1392 00d0 3FD0     		beq	.L121
 870:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 1393              		.loc 1 870 0
 1394 00d2 0268     		ldr	r2, [r0]
 1395 00d4 5368     		ldr	r3, [r2, #4]
 1396 00d6 43F48063 		orr	r3, r3, #1024
 1397 00da 5360     		str	r3, [r2, #4]
 1398              	.L122:
 878:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 1399              		.loc 1 878 0
 1400 00dc 4B69     		ldr	r3, [r1, #20]
 1401 00de 002B     		cmp	r3, #0
 1402 00e0 3DD0     		beq	.L123
 881:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 1403              		.loc 1 881 0
 1404 00e2 0268     		ldr	r2, [r0]
 1405 00e4 5368     		ldr	r3, [r2, #4]
 1406 00e6 43F48053 		orr	r3, r3, #4096
 1407 00ea 5360     		str	r3, [r2, #4]
 1408              	.L124:
 889:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 1409              		.loc 1 889 0
 1410 00ec 4B68     		ldr	r3, [r1, #4]
 1411 00ee 022B     		cmp	r3, #2
 1412 00f0 53D0     		beq	.L126
 1413 00f2 032B     		cmp	r3, #3
 1414 00f4 5CD0     		beq	.L127
 1415 00f6 012B     		cmp	r3, #1
 1416 00f8 37D0     		beq	.L138
 908:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       hadc->Instance->JOFR4 |= sConfigInjected->InjectedOffset;
 1417              		.loc 1 908 0
 1418 00fa 0268     		ldr	r2, [r0]
 1419 00fc 146A     		ldr	r4, [r2, #32]
 1420 00fe 3E4B     		ldr	r3, .L141+4
 1421 0100 2340     		ands	r3, r3, r4
 1422 0102 1362     		str	r3, [r2, #32]
 909:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       break;
 1423              		.loc 1 909 0
 1424 0104 0268     		ldr	r2, [r0]
 1425 0106 136A     		ldr	r3, [r2, #32]
 1426 0108 CC68     		ldr	r4, [r1, #12]
 1427 010a 2343     		orrs	r3, r3, r4
 1428 010c 1362     		str	r3, [r2, #32]
 910:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 1429              		.loc 1 910 0
 1430 010e 36E0     		b	.L129
 1431              	.L117:
 827:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     
 1432              		.loc 1 827 0
 1433 0110 0568     		ldr	r5, [r0]
 1434 0112 2A69     		ldr	r2, [r5, #16]
 1435 0114 9BB2     		uxth	r3, r3
 1436 0116 03EB4303 		add	r3, r3, r3, lsl #1
 1437 011a 0724     		movs	r4, #7
 1438 011c 04FA03F3 		lsl	r3, r4, r3
 1439 0120 22EA0303 		bic	r3, r2, r3
 1440 0124 2B61     		str	r3, [r5, #16]
 830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 1441              		.loc 1 830 0
 1442 0126 0568     		ldr	r5, [r0]
 1443 0128 2A69     		ldr	r2, [r5, #16]
 1444 012a 8C68     		ldr	r4, [r1, #8]
 1445 012c 0B88     		ldrh	r3, [r1]
 1446 012e 03EB4303 		add	r3, r3, r3, lsl #1
 1447 0132 04FA03F3 		lsl	r3, r4, r3
 1448 0136 1343     		orrs	r3, r3, r2
 1449 0138 2B61     		str	r3, [r5, #16]
 1450 013a 84E7     		b	.L118
 1451              	.L119:
 863:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     hadc->Instance->CR2 &= ~(ADC_CR2_JEXTEN);  
 1452              		.loc 1 863 0
 1453 013c 0268     		ldr	r2, [r0]
 1454 013e 9368     		ldr	r3, [r2, #8]
 1455 0140 23F47023 		bic	r3, r3, #983040
 1456 0144 9360     		str	r3, [r2, #8]
 864:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 1457              		.loc 1 864 0
 1458 0146 0268     		ldr	r2, [r0]
 1459 0148 9368     		ldr	r3, [r2, #8]
 1460 014a 23F44013 		bic	r3, r3, #3145728
 1461 014e 9360     		str	r3, [r2, #8]
 1462 0150 BCE7     		b	.L120
 1463              	.L121:
 875:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 1464              		.loc 1 875 0
 1465 0152 0268     		ldr	r2, [r0]
 1466 0154 5368     		ldr	r3, [r2, #4]
 1467 0156 23F48063 		bic	r3, r3, #1024
 1468 015a 5360     		str	r3, [r2, #4]
 1469 015c BEE7     		b	.L122
 1470              	.L123:
 886:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 1471              		.loc 1 886 0
 1472 015e 0268     		ldr	r2, [r0]
 1473 0160 5368     		ldr	r3, [r2, #4]
 1474 0162 23F48053 		bic	r3, r3, #4096
 1475 0166 5360     		str	r3, [r2, #4]
 1476 0168 C0E7     		b	.L124
 1477              	.L138:
 893:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       hadc->Instance->JOFR1 |= sConfigInjected->InjectedOffset;
 1478              		.loc 1 893 0
 1479 016a 0268     		ldr	r2, [r0]
 1480 016c 5469     		ldr	r4, [r2, #20]
 1481 016e 224B     		ldr	r3, .L141+4
 1482 0170 2340     		ands	r3, r3, r4
 1483 0172 5361     		str	r3, [r2, #20]
 894:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       break;
 1484              		.loc 1 894 0
 1485 0174 0268     		ldr	r2, [r0]
 1486 0176 5369     		ldr	r3, [r2, #20]
 1487 0178 CC68     		ldr	r4, [r1, #12]
 1488 017a 2343     		orrs	r3, r3, r4
 1489 017c 5361     		str	r3, [r2, #20]
 1490              	.L129:
 914:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 1491              		.loc 1 914 0
 1492 017e 0268     		ldr	r2, [r0]
 1493 0180 1E4B     		ldr	r3, .L141+8
 1494 0182 9A42     		cmp	r2, r3
 1495 0184 1FD0     		beq	.L139
 1496              	.L130:
 921:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 1497              		.loc 1 921 0
 1498 0186 0268     		ldr	r2, [r0]
 1499 0188 1C4B     		ldr	r3, .L141+8
 1500 018a 9A42     		cmp	r2, r3
 1501 018c 24D0     		beq	.L140
 1502              	.L131:
 928:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1503              		.loc 1 928 0
 1504 018e 0023     		movs	r3, #0
 1505 0190 80F83C30 		strb	r3, [r0, #60]
 931:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 1506              		.loc 1 931 0
 1507 0194 1846     		mov	r0, r3
 1508              	.LVL101:
 932:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 1509              		.loc 1 932 0
 1510 0196 30BC     		pop	{r4, r5}
 1511              		.cfi_remember_state
 1512              		.cfi_restore 5
 1513              		.cfi_restore 4
 1514              		.cfi_def_cfa_offset 0
 1515 0198 7047     		bx	lr
 1516              	.LVL102:
 1517              	.L126:
 1518              		.cfi_restore_state
 898:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       hadc->Instance->JOFR2 |= sConfigInjected->InjectedOffset;
 1519              		.loc 1 898 0
 1520 019a 0268     		ldr	r2, [r0]
 1521 019c 9469     		ldr	r4, [r2, #24]
 1522 019e 164B     		ldr	r3, .L141+4
 1523 01a0 2340     		ands	r3, r3, r4
 1524 01a2 9361     		str	r3, [r2, #24]
 899:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       break;
 1525              		.loc 1 899 0
 1526 01a4 0268     		ldr	r2, [r0]
 1527 01a6 9369     		ldr	r3, [r2, #24]
 1528 01a8 CC68     		ldr	r4, [r1, #12]
 1529 01aa 2343     		orrs	r3, r3, r4
 1530 01ac 9361     		str	r3, [r2, #24]
 900:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     case 3:
 1531              		.loc 1 900 0
 1532 01ae E6E7     		b	.L129
 1533              	.L127:
 903:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       hadc->Instance->JOFR3 |= sConfigInjected->InjectedOffset;
 1534              		.loc 1 903 0
 1535 01b0 0268     		ldr	r2, [r0]
 1536 01b2 D469     		ldr	r4, [r2, #28]
 1537 01b4 104B     		ldr	r3, .L141+4
 1538 01b6 2340     		ands	r3, r3, r4
 1539 01b8 D361     		str	r3, [r2, #28]
 904:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****       break;
 1540              		.loc 1 904 0
 1541 01ba 0268     		ldr	r2, [r0]
 1542 01bc D369     		ldr	r3, [r2, #28]
 1543 01be CC68     		ldr	r4, [r1, #12]
 1544 01c0 2343     		orrs	r3, r3, r4
 1545 01c2 D361     		str	r3, [r2, #28]
 905:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****     default:
 1546              		.loc 1 905 0
 1547 01c4 DBE7     		b	.L129
 1548              	.L139:
 914:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 1549              		.loc 1 914 0 discriminator 1
 1550 01c6 0B68     		ldr	r3, [r1]
 1551 01c8 122B     		cmp	r3, #18
 1552 01ca DCD1     		bne	.L130
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 1553              		.loc 1 917 0
 1554 01cc 0C4A     		ldr	r2, .L141+12
 1555 01ce 5368     		ldr	r3, [r2, #4]
 1556 01d0 43F48003 		orr	r3, r3, #4194304
 1557 01d4 5360     		str	r3, [r2, #4]
 1558 01d6 D6E7     		b	.L130
 1559              	.L140:
 921:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   {
 1560              		.loc 1 921 0 discriminator 1
 1561 01d8 0B68     		ldr	r3, [r1]
 1562 01da 0A4A     		ldr	r2, .L141+16
 1563 01dc 112B     		cmp	r3, #17
 1564 01de 18BF     		it	ne
 1565 01e0 9342     		cmpne	r3, r2
 1566 01e2 D4D1     		bne	.L131
 924:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   }
 1567              		.loc 1 924 0
 1568 01e4 064A     		ldr	r2, .L141+12
 1569 01e6 5368     		ldr	r3, [r2, #4]
 1570 01e8 43F40003 		orr	r3, r3, #8388608
 1571 01ec 5360     		str	r3, [r2, #4]
 1572 01ee CEE7     		b	.L131
 1573              	.L132:
 1574              		.cfi_def_cfa_offset 0
 1575              		.cfi_restore 4
 1576              		.cfi_restore 5
 813:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1577              		.loc 1 813 0
 1578 01f0 0220     		movs	r0, #2
 1579              	.LVL103:
 932:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 1580              		.loc 1 932 0
 1581 01f2 7047     		bx	lr
 1582              	.L142:
 1583              		.align	2
 1584              	.L141:
 1585 01f4 01000F00 		.word	983041
 1586 01f8 00F0FFFF 		.word	-4096
 1587 01fc 00200140 		.word	1073815552
 1588 0200 00230140 		.word	1073816320
 1589 0204 12000010 		.word	268435474
 1590              		.cfi_endproc
 1591              	.LFE148:
 1593              		.section	.text.HAL_ADCEx_MultiModeConfigChannel,"ax",%progbits
 1594              		.align	1
 1595              		.global	HAL_ADCEx_MultiModeConfigChannel
 1596              		.syntax unified
 1597              		.thumb
 1598              		.thumb_func
 1599              		.fpu fpv5-d16
 1601              	HAL_ADCEx_MultiModeConfigChannel:
 1602              	.LFB149:
 943:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Check the parameters */
 1603              		.loc 1 943 0
 1604              		.cfi_startproc
 1605              		@ args = 0, pretend = 0, frame = 0
 1606              		@ frame_needed = 0, uses_anonymous_args = 0
 1607              		@ link register save eliminated.
 1608              	.LVL104:
 950:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1609              		.loc 1 950 0
 1610 0000 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 1611 0004 012B     		cmp	r3, #1
 1612 0006 23D0     		beq	.L145
 943:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   /* Check the parameters */
 1613              		.loc 1 943 0 discriminator 2
 1614 0008 10B4     		push	{r4}
 1615              		.cfi_def_cfa_offset 4
 1616              		.cfi_offset 4, -4
 950:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1617              		.loc 1 950 0 discriminator 2
 1618 000a 0123     		movs	r3, #1
 1619 000c 80F83C30 		strb	r3, [r0, #60]
 953:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   ADC->CCR |= multimode->Mode;
 1620              		.loc 1 953 0 discriminator 2
 1621 0010 104B     		ldr	r3, .L150
 1622 0012 5A68     		ldr	r2, [r3, #4]
 1623 0014 22F01F02 		bic	r2, r2, #31
 1624 0018 5A60     		str	r2, [r3, #4]
 954:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1625              		.loc 1 954 0 discriminator 2
 1626 001a 5A68     		ldr	r2, [r3, #4]
 1627 001c 0C68     		ldr	r4, [r1]
 1628 001e 2243     		orrs	r2, r2, r4
 1629 0020 5A60     		str	r2, [r3, #4]
 957:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   ADC->CCR |= multimode->DMAAccessMode;
 1630              		.loc 1 957 0 discriminator 2
 1631 0022 5A68     		ldr	r2, [r3, #4]
 1632 0024 22F44042 		bic	r2, r2, #49152
 1633 0028 5A60     		str	r2, [r3, #4]
 958:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1634              		.loc 1 958 0 discriminator 2
 1635 002a 5A68     		ldr	r2, [r3, #4]
 1636 002c 4C68     		ldr	r4, [r1, #4]
 1637 002e 2243     		orrs	r2, r2, r4
 1638 0030 5A60     		str	r2, [r3, #4]
 961:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   ADC->CCR |= multimode->TwoSamplingDelay;
 1639              		.loc 1 961 0 discriminator 2
 1640 0032 5A68     		ldr	r2, [r3, #4]
 1641 0034 22F47062 		bic	r2, r2, #3840
 1642 0038 5A60     		str	r2, [r3, #4]
 962:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1643              		.loc 1 962 0 discriminator 2
 1644 003a 5A68     		ldr	r2, [r3, #4]
 1645 003c 8968     		ldr	r1, [r1, #8]
 1646              	.LVL105:
 1647 003e 0A43     		orrs	r2, r2, r1
 1648 0040 5A60     		str	r2, [r3, #4]
 965:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1649              		.loc 1 965 0 discriminator 2
 1650 0042 0023     		movs	r3, #0
 1651 0044 80F83C30 		strb	r3, [r0, #60]
 968:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** }
 1652              		.loc 1 968 0 discriminator 2
 1653 0048 1846     		mov	r0, r3
 1654              	.LVL106:
 969:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 1655              		.loc 1 969 0 discriminator 2
 1656 004a 5DF8044B 		ldr	r4, [sp], #4
 1657              		.cfi_restore 4
 1658              		.cfi_def_cfa_offset 0
 1659 004e 7047     		bx	lr
 1660              	.LVL107:
 1661              	.L145:
 950:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c ****   
 1662              		.loc 1 950 0
 1663 0050 0220     		movs	r0, #2
 1664              	.LVL108:
 969:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc_ex.c **** 
 1665              		.loc 1 969 0
 1666 0052 7047     		bx	lr
 1667              	.L151:
 1668              		.align	2
 1669              	.L150:
 1670 0054 00230140 		.word	1073816320
 1671              		.cfi_endproc
 1672              	.LFE149:
 1674              		.text
 1675              	.Letext0:
 1676              		.file 2 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 1677              		.file 3 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 1678              		.file 4 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h"
 1679              		.file 5 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/system_stm
 1680              		.file 6 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f769x
 1681              		.file 7 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f7xx.
 1682              		.file 8 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 1683              		.file 9 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 1684              		.file 10 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 1685              		.file 11 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 1686              		.file 12 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_def.
 1687              		.file 13 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_dma.
 1688              		.file 14 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_adc.
 1689              		.file 15 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_adc_
 1690              		.file 16 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal.h"
DEFINED SYMBOLS
                            *ABS*:0000000000000000 stm32f7xx_hal_adc_ex.c
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:17     .text.ADC_MultiModeDMAError:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:23     .text.ADC_MultiModeDMAError:0000000000000000 ADC_MultiModeDMAError
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:54     .text.ADC_MultiModeDMAHalfConvCplt:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:60     .text.ADC_MultiModeDMAHalfConvCplt:0000000000000000 ADC_MultiModeDMAHalfConvCplt
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:83     .text.ADC_MultiModeDMAConvCplt:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:89     .text.ADC_MultiModeDMAConvCplt:0000000000000000 ADC_MultiModeDMAConvCplt
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:169    .text.HAL_ADCEx_InjectedStart:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:176    .text.HAL_ADCEx_InjectedStart:0000000000000000 HAL_ADCEx_InjectedStart
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:341    .text.HAL_ADCEx_InjectedStart:00000000000000d8 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:350    .text.HAL_ADCEx_InjectedStart_IT:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:357    .text.HAL_ADCEx_InjectedStart_IT:0000000000000000 HAL_ADCEx_InjectedStart_IT
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:527    .text.HAL_ADCEx_InjectedStart_IT:00000000000000e0 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:536    .text.HAL_ADCEx_InjectedStop:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:543    .text.HAL_ADCEx_InjectedStop:0000000000000000 HAL_ADCEx_InjectedStop
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:621    .text.HAL_ADCEx_InjectedStop:0000000000000060 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:626    .text.HAL_ADCEx_InjectedPollForConversion:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:633    .text.HAL_ADCEx_InjectedPollForConversion:0000000000000000 HAL_ADCEx_InjectedPollForConversion
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:760    .text.HAL_ADCEx_InjectedStop_IT:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:767    .text.HAL_ADCEx_InjectedStop_IT:0000000000000000 HAL_ADCEx_InjectedStop_IT
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:849    .text.HAL_ADCEx_InjectedStop_IT:0000000000000068 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:854    .text.HAL_ADCEx_InjectedGetValue:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:861    .text.HAL_ADCEx_InjectedGetValue:0000000000000000 HAL_ADCEx_InjectedGetValue
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:885    .text.HAL_ADCEx_InjectedGetValue:0000000000000018 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:889    .text.HAL_ADCEx_InjectedGetValue:000000000000001c $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:932    .text.HAL_ADCEx_MultiModeStart_DMA:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:939    .text.HAL_ADCEx_MultiModeStart_DMA:0000000000000000 HAL_ADCEx_MultiModeStart_DMA
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:1118   .text.HAL_ADCEx_MultiModeStart_DMA:0000000000000100 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:1130   .text.HAL_ADCEx_MultiModeStop_DMA:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:1137   .text.HAL_ADCEx_MultiModeStop_DMA:0000000000000000 HAL_ADCEx_MultiModeStop_DMA
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:1213   .text.HAL_ADCEx_MultiModeStop_DMA:000000000000005c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:1219   .text.HAL_ADCEx_MultiModeGetValue:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:1226   .text.HAL_ADCEx_MultiModeGetValue:0000000000000000 HAL_ADCEx_MultiModeGetValue
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:1243   .text.HAL_ADCEx_MultiModeGetValue:0000000000000008 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:1248   .text.HAL_ADCEx_InjectedConvCpltCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:1255   .text.HAL_ADCEx_InjectedConvCpltCallback:0000000000000000 HAL_ADCEx_InjectedConvCpltCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:1269   .text.HAL_ADCEx_InjectedConfigChannel:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:1276   .text.HAL_ADCEx_InjectedConfigChannel:0000000000000000 HAL_ADCEx_InjectedConfigChannel
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:1585   .text.HAL_ADCEx_InjectedConfigChannel:00000000000001f4 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:1594   .text.HAL_ADCEx_MultiModeConfigChannel:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:1601   .text.HAL_ADCEx_MultiModeConfigChannel:0000000000000000 HAL_ADCEx_MultiModeConfigChannel
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccDOpY62.s:1670   .text.HAL_ADCEx_MultiModeConfigChannel:0000000000000054 $d
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
HAL_ADC_ErrorCallback
HAL_ADC_ConvHalfCpltCallback
HAL_ADC_ConvCpltCallback
SystemCoreClock
HAL_GetTick
HAL_DMA_Start_IT
HAL_DMA_Abort

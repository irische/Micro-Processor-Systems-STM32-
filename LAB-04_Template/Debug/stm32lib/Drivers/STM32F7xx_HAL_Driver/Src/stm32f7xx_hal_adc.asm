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
  12              		.file	"stm32f7xx_hal_adc.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.ADC_Init,"ax",%progbits
  17              		.align	1
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv5-d16
  23              	ADC_Init:
  24              	.LFB160:
  25              		.file 1 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c
   1:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
   2:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   ******************************************************************************
   3:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @file    stm32f7xx_hal_adc.c
   4:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @author  MCD Application Team
   5:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @version V1.2.2
   6:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @date    14-April-2017
   7:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief   This file provides firmware functions to manage the following 
   8:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *          functionalities of the Analog to Digital Convertor (ADC) peripheral:
   9:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *           + Initialization and de-initialization functions
  10:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *           + IO operation functions
  11:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *           + State and errors functions
  12:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         
  13:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   @verbatim
  14:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   ==============================================================================
  15:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                     ##### ADC Peripheral features #####
  16:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   ==============================================================================
  17:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   [..] 
  18:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) 12-bit, 10-bit, 8-bit or 6-bit configurable resolution.
  19:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) Interrupt generation at the end of conversion, end of injected conversion,  
  20:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       and in case of analog watchdog or overrun events
  21:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) Single and continuous conversion modes.
  22:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) Scan mode for automatic conversion of channel 0 to channel x.
  23:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) Data alignment with in-built data coherency.
  24:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) Channel-wise programmable sampling time.
  25:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) External trigger option with configurable polarity for both regular and 
  26:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       injected conversion.
  27:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) Dual/Triple mode (on devices with 2 ADCs or more).
  28:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) Configurable DMA data storage in Dual/Triple ADC mode. 
  29:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) Configurable delay between conversions in Dual/Triple interleaved mode.
  30:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) ADC conversion type (refer to the datasheets).
  31:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) ADC supply requirements: 2.4 V to 3.6 V at full speed and down to 1.8 V at 
  32:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       slower speed.
  33:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) ADC input range: VREF(minus) = VIN = VREF(plus).
  34:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) DMA request generation during regular channel conversion.
  35:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
  36:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
  37:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                      ##### How to use this driver #####
  38:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   ==============================================================================
  39:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   [..]
  40:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#)Initialize the ADC low level resources by implementing the HAL_ADC_MspInit():
  41:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (##) Enable the ADC interface clock using __HAL_RCC_ADC_CLK_ENABLE()
  42:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (##) ADC pins configuration
  43:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****              (+++) Enable the clock for the ADC GPIOs using the following function:
  44:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                    __HAL_RCC_GPIOx_CLK_ENABLE()  
  45:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****              (+++) Configure these ADC pins in analog mode using HAL_GPIO_Init() 
  46:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (##) In case of using interrupts (e.g. HAL_ADC_Start_IT())
  47:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****              (+++) Configure the ADC interrupt priority using HAL_NVIC_SetPriority()
  48:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****              (+++) Enable the ADC IRQ handler using HAL_NVIC_EnableIRQ()
  49:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****              (+++) In ADC IRQ handler, call HAL_ADC_IRQHandler()
  50:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (##) In case of using DMA to control data transfer (e.g. HAL_ADC_Start_DMA())
  51:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****              (+++) Enable the DMAx interface clock using __HAL_RCC_DMAx_CLK_ENABLE()
  52:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****              (+++) Configure and enable two DMA streams stream for managing data
  53:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                  transfer from peripheral to memory (output stream)
  54:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****              (+++) Associate the initialized DMA handle to the CRYP DMA handle
  55:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                  using  __HAL_LINKDMA()
  56:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****              (+++) Configure the priority and enable the NVIC for the transfer complete
  57:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                  interrupt on the two DMA Streams. The output stream should have higher
  58:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                  priority than the input stream.
  59:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                        
  60:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     *** Configuration of ADC, groups regular/injected, channels parameters ***
  61:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   ==============================================================================
  62:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   [..]
  63:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) Configure the ADC parameters (resolution, data alignment, ...)
  64:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       and regular group parameters (conversion trigger, sequencer, ...)
  65:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       using function HAL_ADC_Init().
  66:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
  67:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) Configure the channels for regular group parameters (channel number, 
  68:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       channel rank into sequencer, ..., into regular group)
  69:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       using function HAL_ADC_ConfigChannel().
  70:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
  71:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) Optionally, configure the injected group parameters (conversion trigger, 
  72:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       sequencer, ..., of injected group)
  73:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       and the channels for injected group parameters (channel number, 
  74:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       channel rank into sequencer, ..., into injected group)
  75:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       using function HAL_ADCEx_InjectedConfigChannel().
  76:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
  77:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) Optionally, configure the analog watchdog parameters (channels
  78:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       monitored, thresholds, ...) using function HAL_ADC_AnalogWDGConfig().
  79:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
  80:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) Optionally, for devices with several ADC instances: configure the 
  81:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       multimode parameters using function HAL_ADCEx_MultiModeConfigChannel().
  82:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
  83:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                        *** Execution of ADC conversions ***
  84:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   ==============================================================================
  85:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   [..]  
  86:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) ADC driver can be used among three modes: polling, interruption,
  87:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       transfer by DMA.    
  88:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
  89:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      *** Polling mode IO operation ***
  90:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      =================================
  91:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      [..]    
  92:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (+) Start the ADC peripheral using HAL_ADC_Start() 
  93:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (+) Wait for end of conversion using HAL_ADC_PollForConversion(), at this stage
  94:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****            user can specify the value of timeout according to his end application      
  95:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (+) To read the ADC converted values, use the HAL_ADC_GetValue() function.
  96:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (+) Stop the ADC peripheral using HAL_ADC_Stop()
  97:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        
  98:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      *** Interrupt mode IO operation ***    
  99:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      ===================================
 100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      [..]    
 101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (+) Start the ADC peripheral using HAL_ADC_Start_IT() 
 102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (+) Use HAL_ADC_IRQHandler() called under ADC_IRQHandler() Interrupt subroutine
 103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (+) At ADC end of conversion HAL_ADC_ConvCpltCallback() function is executed and user can 
 104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****            add his own code by customization of function pointer HAL_ADC_ConvCpltCallback 
 105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (+) In case of ADC Error, HAL_ADC_ErrorCallback() function is executed and user can 
 106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****            add his own code by customization of function pointer HAL_ADC_ErrorCallback
 107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (+) Stop the ADC peripheral using HAL_ADC_Stop_IT()     
 108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      *** DMA mode IO operation ***    
 110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      ==============================
 111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      [..]    
 112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (+) Start the ADC peripheral using HAL_ADC_Start_DMA(), at this stage the user specify the l
 113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****            of data to be transferred at each end of conversion 
 114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (+) At The end of data transfer by HAL_ADC_ConvCpltCallback() function is executed and user 
 115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****            add his own code by customization of function pointer HAL_ADC_ConvCpltCallback 
 116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (+) In case of transfer Error, HAL_ADC_ErrorCallback() function is executed and user can 
 117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****            add his own code by customization of function pointer HAL_ADC_ErrorCallback
 118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (+) Stop the ADC peripheral using HAL_ADC_Stop_DMA()
 119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                     
 120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      *** ADC HAL driver macros list ***
 121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      ============================================= 
 122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      [..]
 123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        Below the list of most used macros in ADC HAL driver.
 124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        
 125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) __HAL_ADC_ENABLE : Enable the ADC peripheral
 126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) __HAL_ADC_DISABLE : Disable the ADC peripheral
 127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) __HAL_ADC_ENABLE_IT: Enable the ADC end of conversion interrupt
 128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) __HAL_ADC_DISABLE_IT: Disable the ADC end of conversion interrupt
 129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) __HAL_ADC_GET_IT_SOURCE: Check if the specified ADC interrupt source is enabled or disabl
 130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) __HAL_ADC_CLEAR_FLAG: Clear the ADC's pending flags
 131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) __HAL_ADC_GET_FLAG: Get the selected ADC's flag status
 132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) ADC_GET_RESOLUTION: Return resolution bits in CR1 register 
 133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       
 134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      [..] 
 135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (@) You can refer to the ADC HAL driver header file for more useful macros 
 136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       *** Deinitialization of ADC ***
 138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   ==============================================================================
 139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   [..]
 140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) Disable the ADC interface
 141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      (++) ADC clock can be hard reset and disabled at RCC top level.
 142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      (++) Hard reset of ADC peripherals
 143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****           using macro __HAL_RCC_ADC_FORCE_RESET(), __HAL_RCC_ADC_RELEASE_RESET().
 144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      (++) ADC clock disable using the equivalent macro/functions as configuration step.
 145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                (+++) Example:
 146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                    Into HAL_ADC_MspDeInit() (recommended code location) or with
 147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                    other device clock parameters configuration:
 148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                (+++) HAL_RCC_GetOscConfig(&RCC_OscInitStructure);
 149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                (+++) RCC_OscInitStructure.OscillatorType = RCC_OSCILLATORTYPE_HSI;
 150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                (+++) RCC_OscInitStructure.HSIState = RCC_HSI_OFF; (if not used for system clock)
 151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                (+++) HAL_RCC_OscConfig(&RCC_OscInitStructure);
 152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) ADC pins configuration
 154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      (++) Disable the clock for the ADC GPIOs using macro __HAL_RCC_GPIOx_CLK_DISABLE()
 155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) Optionally, in case of usage of ADC with interruptions:
 157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      (++) Disable the NVIC for ADC using function HAL_NVIC_DisableIRQ(ADCx_IRQn)
 158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   (#) Optionally, in case of usage of DMA:
 160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         (++) Deinitialize the DMA using function HAL_DMA_DeInit().
 161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         (++) Disable the NVIC for DMA using function HAL_NVIC_DisableIRQ(DMAx_Channelx_IRQn)   
 162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     @endverbatim
 164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   ******************************************************************************
 165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @attention
 166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *
 167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * <h2><center>&copy; COPYRIGHT(c) 2017 STMicroelectronics</center></h2>
 168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *
 169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * Redistribution and use in source and binary forms, with or without modification,
 170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * are permitted provided that the following conditions are met:
 171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *   1. Redistributions of source code must retain the above copyright notice,
 172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *      this list of conditions and the following disclaimer.
 173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
 174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *      this list of conditions and the following disclaimer in the documentation
 175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *      and/or other materials provided with the distribution.
 176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
 177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *      may be used to endorse or promote products derived from this software
 178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *      without specific prior written permission.
 179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *
 180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *
 191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   ******************************************************************************
 192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */ 
 193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /* Includes ------------------------------------------------------------------*/
 195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** #include "stm32f7xx_hal.h"
 196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /** @addtogroup STM32F7xx_HAL_Driver
 198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @{
 199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
 200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /** @defgroup ADC ADC
 202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief ADC driver modules
 203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @{
 204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */ 
 205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** #ifdef HAL_ADC_MODULE_ENABLED
 207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /* Private typedef -----------------------------------------------------------*/
 209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /* Private define ------------------------------------------------------------*/
 210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /* Private macro -------------------------------------------------------------*/
 211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /* Private variables ---------------------------------------------------------*/
 212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /** @addtogroup ADC_Private_Functions
 213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @{
 214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
 215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /* Private function prototypes -----------------------------------------------*/
 216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** static void ADC_Init(ADC_HandleTypeDef* hadc);
 217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** static void ADC_DMAConvCplt(DMA_HandleTypeDef *hdma);
 218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** static void ADC_DMAError(DMA_HandleTypeDef *hdma);
 219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** static void ADC_DMAHalfConvCplt(DMA_HandleTypeDef *hdma);
 220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
 221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @}
 222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
 223:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /* Exported functions --------------------------------------------------------*/
 225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /** @defgroup ADC_Exported_Functions ADC Exported Functions
 226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @{
 227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
 228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 229:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /** @defgroup ADC_Exported_Functions_Group1 Initialization and de-initialization functions 
 230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****  *  @brief    Initialization and Configuration functions 
 231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****  *
 232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** @verbatim    
 233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****  ===============================================================================
 234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****               ##### Initialization and de-initialization functions #####
 235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****  ===============================================================================
 236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     [..]  This section provides functions allowing to:
 237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) Initialize and configure the ADC. 
 238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) De-initialize the ADC. 
 239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****          
 240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** @endverbatim
 241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @{
 242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
 243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
 245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Initializes the ADCx peripheral according to the specified parameters 
 246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         in the ADC_InitStruct and initializes the ADC MSP.
 247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *           
 248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @note   This function is used to configure the global features of the ADC ( 
 249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         ClockPrescaler, Resolution, Data Alignment and number of conversion), however,
 250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the rest of the configuration parameters are specific to the regular
 251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         channels group (scan mode activation, continuous mode activation,
 252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         External trigger source and edge, DMA continuous request after the  
 253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         last transfer and End of conversion selection).
 254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *             
 255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.  
 257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval HAL status
 258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
 259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_Init(ADC_HandleTypeDef* hadc)
 260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
 261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check ADC handle */
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(hadc == NULL)
 265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     return HAL_ERROR;
 267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check the parameters */
 270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_CLOCKPRESCALER(hadc->Init.ClockPrescaler));
 272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_RESOLUTION(hadc->Init.Resolution));
 273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_SCAN_MODE(hadc->Init.ScanConvMode));
 274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_FUNCTIONAL_STATE(hadc->Init.ContinuousConvMode));
 275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_EXT_TRIG(hadc->Init.ExternalTrigConv));
 276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_DATA_ALIGN(hadc->Init.DataAlign));
 277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_REGULAR_LENGTH(hadc->Init.NbrOfConversion));
 278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_FUNCTIONAL_STATE(hadc->Init.DMAContinuousRequests));
 279:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_EOCSelection(hadc->Init.EOCSelection));
 280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_FUNCTIONAL_STATE(hadc->Init.DiscontinuousConvMode));
 281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(hadc->Init.ExternalTrigConv != ADC_SOFTWARE_START)
 283:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     assert_param(IS_ADC_EXT_TRIG_EDGE(hadc->Init.ExternalTrigConvEdge));
 285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(hadc->State == HAL_ADC_STATE_RESET)
 288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Initialize ADC error code */
 290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     ADC_CLEAR_ERRORCODE(hadc);
 291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 292:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Allocate lock resource and initialize it */
 293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Lock = HAL_UNLOCKED;
 294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Init the low level hardware */
 295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     HAL_ADC_MspInit(hadc);
 296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Configuration of ADC parameters if previous preliminary actions are      */ 
 299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* correctly completed.                                                     */
 300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL))
 301:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 302:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set ADC state */
 303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     ADC_STATE_CLR_SET(hadc->State,
 304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_BUSY_INTERNAL);
 306:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set ADC parameters */
 308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     ADC_Init(hadc);
 309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 310:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set ADC error code to none */
 311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     ADC_CLEAR_ERRORCODE(hadc);
 312:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set the ADC state */
 314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     ADC_STATE_CLR_SET(hadc->State,
 315:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_BUSY_INTERNAL,
 316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_READY);
 317:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   else
 319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     tmp_hal_status = HAL_ERROR;
 321:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Release Lock */
 324:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_UNLOCK(hadc);
 325:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Return function status */
 327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   return tmp_hal_status;
 328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
 331:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Deinitializes the ADCx peripheral registers to their default reset values. 
 332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.  
 334:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval HAL status
 335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
 336:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_DeInit(ADC_HandleTypeDef* hadc)
 337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
 338:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check ADC handle */
 341:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(hadc == NULL)
 342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     return HAL_ERROR;
 344:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check the parameters */
 347:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Set ADC state */
 350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   SET_BIT(hadc->State, HAL_ADC_STATE_BUSY_INTERNAL);
 351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Stop potential conversion on going, on regular and injected groups */
 353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Disable ADC peripheral */
 354:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_ADC_DISABLE(hadc);
 355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Configuration of ADC parameters if previous preliminary actions are      */ 
 357:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* correctly completed.                                                     */
 358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_ADON))
 359:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 360:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* DeInit the low level hardware */
 361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     HAL_ADC_MspDeInit(hadc);
 362:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set ADC error code to none */
 364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     ADC_CLEAR_ERRORCODE(hadc);
 365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set ADC state */
 367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->State = HAL_ADC_STATE_RESET;
 368:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Process unlocked */
 371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_UNLOCK(hadc);
 372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Return function status */
 374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   return tmp_hal_status;
 375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 376:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 377:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
 378:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Initializes the ADC MSP.
 379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 380:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.  
 381:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval None
 382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
 383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** __weak void HAL_ADC_MspInit(ADC_HandleTypeDef* hadc)
 384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
 385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
 386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   UNUSED(hadc);
 387:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
 388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****             the HAL_ADC_MspInit could be implemented in the user file
 389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****    */ 
 390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 392:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
 393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  DeInitializes the ADC MSP.
 394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 395:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.  
 396:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval None
 397:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
 398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** __weak void HAL_ADC_MspDeInit(ADC_HandleTypeDef* hadc)
 399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
 400:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
 401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   UNUSED(hadc);
 402:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
 403:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****             the HAL_ADC_MspDeInit could be implemented in the user file
 404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****    */ 
 405:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 406:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 407:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
 408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @}
 409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
 410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /** @defgroup ADC_Exported_Functions_Group2 IO operation functions
 412:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****  *  @brief    IO operation functions 
 413:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****  *
 414:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** @verbatim   
 415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****  ===============================================================================
 416:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****              ##### IO operation functions #####
 417:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****  ===============================================================================  
 418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     [..]  This section provides functions allowing to:
 419:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) Start conversion of regular channel.
 420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) Stop conversion of regular channel.
 421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) Start conversion of regular channel and enable interrupt.
 422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) Stop conversion of regular channel and disable interrupt.
 423:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) Start conversion of regular channel and enable DMA transfer.
 424:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) Stop conversion of regular channel and disable DMA transfer.
 425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) Handle ADC interrupt request. 
 426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                
 427:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** @endverbatim
 428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @{
 429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
 430:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
 432:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Enables ADC and starts conversion of the regular channels.
 433:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.
 435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval HAL status
 436:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
 437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_Start(ADC_HandleTypeDef* hadc)
 438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
 439:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __IO uint32_t counter = 0;
 440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check the parameters */
 442:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_FUNCTIONAL_STATE(hadc->Init.ContinuousConvMode));
 443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_EXT_TRIG_EDGE(hadc->Init.ExternalTrigConvEdge)); 
 444:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Process locked */
 446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_LOCK(hadc);
 447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 448:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Enable the ADC peripheral */
 449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check if ADC peripheral is disabled in order to enable it and wait during 
 450:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   Tstab time the ADC's stabilization */
 451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if((hadc->Instance->CR2 & ADC_CR2_ADON) != ADC_CR2_ADON)
 452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {  
 453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Enable the Peripheral */
 454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_ADC_ENABLE(hadc);
 455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 456:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Delay for ADC stabilization time */
 457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Compute number of CPU cycles to wait for */
 458:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     counter = (ADC_STAB_DELAY_US * (SystemCoreClock / 1000000));
 459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     while(counter != 0)
 460:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       counter--;
 462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 463:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 465:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Start conversion if ADC is effectively enabled */
 466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(HAL_IS_BIT_SET(hadc->Instance->CR2, ADC_CR2_ADON))
 467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 468:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set ADC state                                                          */
 469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* - Clear state bitfield related to regular group conversion results     */
 470:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* - Set state bitfield related to regular group operation                */
 471:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     ADC_STATE_CLR_SET(hadc->State,
 472:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC | HAL_ADC_STATE_REG_OVR,
 473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_REG_BUSY);
 474:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 475:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* If conversions on group regular are also triggering group injected,    */
 476:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* update ADC state.                                                      */
 477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     if (READ_BIT(hadc->Instance->CR1, ADC_CR1_JAUTO) != RESET)
 478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       ADC_STATE_CLR_SET(hadc->State, HAL_ADC_STATE_INJ_EOC, HAL_ADC_STATE_INJ_BUSY);  
 480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 482:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* State machine update: Check if an injected conversion is ongoing */
 483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     if (HAL_IS_BIT_SET(hadc->State, HAL_ADC_STATE_INJ_BUSY))
 484:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Reset ADC error code fields related to conversions on group regular */
 486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       CLEAR_BIT(hadc->ErrorCode, (HAL_ADC_ERROR_OVR | HAL_ADC_ERROR_DMA));         
 487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 488:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     else
 489:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Reset ADC all error code fields */
 491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       ADC_CLEAR_ERRORCODE(hadc);
 492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 493:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 494:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Process unlocked */
 495:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Unlock before starting ADC conversions: in case of potential           */
 496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* interruption, to let the process to ADC IRQ Handler.                   */
 497:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_UNLOCK(hadc);
 498:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 499:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Clear regular group conversion flag and overrun flag */
 500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* (To ensure of no unknown state from potential previous ADC operations) */
 501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_EOC | ADC_FLAG_OVR);
 502:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 503:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Check if Multimode enabled */
 504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     if(HAL_IS_BIT_CLR(ADC->CCR, ADC_CCR_MULTI))
 505:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 506:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* if no external trigger present enable software conversion of regular channels */
 507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       if((hadc->Instance->CR2 & ADC_CR2_EXTEN) == RESET) 
 508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 509:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         /* Enable the selected ADC software conversion for regular group */
 510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         hadc->Instance->CR2 |= (uint32_t)ADC_CR2_SWSTART;
 511:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 512:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 513:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     else
 514:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* if instance of handle correspond to ADC1 and  no external trigger present enable software 
 516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       if((hadc->Instance == ADC1) && ((hadc->Instance->CR2 & ADC_CR2_EXTEN) == RESET))
 517:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 518:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         /* Enable the selected ADC software conversion for regular group */
 519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****           hadc->Instance->CR2 |= (uint32_t)ADC_CR2_SWSTART;
 520:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 522:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 524:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Return function status */
 525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   return HAL_OK;
 526:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 527:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
 529:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Disables ADC and stop conversion of regular channels.
 530:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * 
 531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @note   Caution: This function will stop also injected channels.  
 532:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *
 533:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 534:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.
 535:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *
 536:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval HAL status.
 537:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
 538:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_Stop(ADC_HandleTypeDef* hadc)
 539:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
 540:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check the parameters */
 541:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 542:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 543:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Process locked */
 544:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_LOCK(hadc);
 545:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 546:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Stop potential conversion on going, on regular and injected groups */
 547:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Disable ADC peripheral */
 548:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_ADC_DISABLE(hadc);
 549:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 550:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check if ADC is effectively disabled */
 551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_ADON))
 552:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 553:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set ADC state */
 554:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     ADC_STATE_CLR_SET(hadc->State,
 555:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 556:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_READY);
 557:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 558:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 559:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Process unlocked */
 560:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_UNLOCK(hadc);
 561:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 562:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Return function status */
 563:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   return HAL_OK;
 564:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 565:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 566:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
 567:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Poll for regular conversion complete
 568:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @note   ADC conversion flags EOS (end of sequence) and EOC (end of
 569:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         conversion) are cleared by this function.
 570:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @note   This function cannot be used in a particular setup: ADC configured 
 571:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         in DMA mode and polling for end of each conversion (ADC init
 572:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         parameter "EOCSelection" set to ADC_EOC_SINGLE_CONV).
 573:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         In this case, DMA resets the flag EOC and polling cannot be
 574:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         performed on each conversion. Nevertheless, polling can still 
 575:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         be performed on the complete sequence.
 576:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 577:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.
 578:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  Timeout: Timeout value in millisecond.  
 579:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval HAL status
 580:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
 581:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_PollForConversion(ADC_HandleTypeDef* hadc, uint32_t Timeout)
 582:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
 583:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   uint32_t tickstart = 0;
 584:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 585:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Verification that ADC configuration is compliant with polling for      */
 586:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* each conversion:                                                       */
 587:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Particular case is ADC configured in DMA mode and ADC sequencer with   */
 588:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* several ranks and polling for end of each conversion.                  */
 589:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* For code simplicity sake, this particular case is generalized to       */
 590:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* ADC configured in DMA mode and polling for end of each conversion.     */
 591:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if (HAL_IS_BIT_SET(hadc->Instance->CR2, ADC_CR2_EOCS) &&
 592:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       HAL_IS_BIT_SET(hadc->Instance->CR2, ADC_CR2_DMA)    )
 593:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 594:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Update ADC state machine to error */
 595:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     SET_BIT(hadc->State, HAL_ADC_STATE_ERROR_CONFIG);
 596:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 597:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Process unlocked */
 598:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_UNLOCK(hadc);
 599:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 600:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     return HAL_ERROR;
 601:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 602:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****  
 603:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Get tick */ 
 604:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   tickstart = HAL_GetTick();
 605:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 606:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check End of conversion flag */
 607:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   while(!(__HAL_ADC_GET_FLAG(hadc, ADC_FLAG_EOC)))
 608:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 609:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Check if timeout is disabled (set to infinite wait) */
 610:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     if(Timeout != HAL_MAX_DELAY)
 611:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       if((Timeout == 0) || ((HAL_GetTick() - tickstart ) > Timeout))
 613:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 614:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         /* Update ADC state machine to timeout */
 615:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         SET_BIT(hadc->State, HAL_ADC_STATE_TIMEOUT);
 616:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         
 617:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         /* Process unlocked */
 618:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         __HAL_UNLOCK(hadc);
 619:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         
 620:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         return HAL_TIMEOUT;
 621:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 622:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 623:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 624:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 625:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Clear regular group conversion flag */
 626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_STRT | ADC_FLAG_EOC);
 627:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 628:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Update ADC state machine */
 629:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   SET_BIT(hadc->State, HAL_ADC_STATE_REG_EOC);
 630:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 631:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Determine whether any further conversion upcoming on group regular       */
 632:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* by external trigger, continuous mode or scan sequence on going.          */
 633:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Note: On STM32F7, there is no independent flag of end of sequence.       */
 634:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /*       The test of scan sequence on going is done either with scan        */
 635:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /*       sequence disabled or with end of conversion flag set to            */
 636:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /*       of end of sequence.                                                */
 637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(ADC_IS_SOFTWARE_START_REGULAR(hadc)                   &&
 638:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      (hadc->Init.ContinuousConvMode == DISABLE)            &&
 639:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      (HAL_IS_BIT_CLR(hadc->Instance->SQR1, ADC_SQR1_L) ||
 640:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)  )   )
 641:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 642:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set ADC state */
 643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     CLEAR_BIT(hadc->State, HAL_ADC_STATE_REG_BUSY);   
 644:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 645:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_INJ_BUSY))
 646:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     { 
 647:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       SET_BIT(hadc->State, HAL_ADC_STATE_READY);
 648:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 649:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 650:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 651:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Return ADC state */
 652:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   return HAL_OK;
 653:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 654:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 655:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
 656:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Poll for conversion event
 657:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 658:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.
 659:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  EventType: the ADC event type.
 660:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *          This parameter can be one of the following values:
 661:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *            @arg ADC_AWD_EVENT: ADC Analog watch Dog event.
 662:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *            @arg ADC_OVR_EVENT: ADC Overrun event.
 663:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  Timeout: Timeout value in millisecond.   
 664:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval HAL status
 665:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
 666:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_PollForEvent(ADC_HandleTypeDef* hadc, uint32_t EventType, uint32_t Timeou
 667:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
 668:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   uint32_t tickstart = 0;
 669:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 670:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check the parameters */
 671:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 672:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_EVENT_TYPE(EventType));
 673:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 674:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Get tick */
 675:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   tickstart = HAL_GetTick();
 676:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 677:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check selected event flag */
 678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   while(!(__HAL_ADC_GET_FLAG(hadc,EventType)))
 679:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 680:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Check for the Timeout */
 681:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     if(Timeout != HAL_MAX_DELAY)
 682:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 683:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       if((Timeout == 0) || ((HAL_GetTick() - tickstart ) > Timeout))
 684:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 685:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         /* Update ADC state machine to timeout */
 686:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         SET_BIT(hadc->State, HAL_ADC_STATE_TIMEOUT);
 687:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         
 688:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         /* Process unlocked */
 689:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         __HAL_UNLOCK(hadc);
 690:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         
 691:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         return HAL_TIMEOUT;
 692:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 693:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 694:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 695:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 696:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Analog watchdog (level out of window) event */
 697:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(EventType == ADC_AWD_EVENT)
 698:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 699:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set ADC state */
 700:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     SET_BIT(hadc->State, HAL_ADC_STATE_AWD1);
 701:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       
 702:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Clear ADC analog watchdog flag */
 703:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_AWD);
 704:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 705:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Overrun event */
 706:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   else
 707:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 708:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set ADC state */
 709:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     SET_BIT(hadc->State, HAL_ADC_STATE_REG_OVR);
 710:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set ADC error code to overrun */
 711:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     SET_BIT(hadc->ErrorCode, HAL_ADC_ERROR_OVR);
 712:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 713:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Clear ADC overrun flag */
 714:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_OVR);
 715:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 716:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 717:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Return ADC state */
 718:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   return HAL_OK;
 719:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 720:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 721:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 722:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
 723:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Enables the interrupt and starts ADC conversion of regular channels.
 724:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 725:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.
 726:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval HAL status.
 727:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
 728:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_Start_IT(ADC_HandleTypeDef* hadc)
 729:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
 730:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __IO uint32_t counter = 0;
 731:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 732:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check the parameters */
 733:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_FUNCTIONAL_STATE(hadc->Init.ContinuousConvMode));
 734:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_EXT_TRIG_EDGE(hadc->Init.ExternalTrigConvEdge)); 
 735:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 736:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Process locked */
 737:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_LOCK(hadc);
 738:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 739:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Enable the ADC peripheral */
 740:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check if ADC peripheral is disabled in order to enable it and wait during 
 741:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      Tstab time the ADC's stabilization */
 742:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if((hadc->Instance->CR2 & ADC_CR2_ADON) != ADC_CR2_ADON)
 743:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {  
 744:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Enable the Peripheral */
 745:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_ADC_ENABLE(hadc);
 746:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 747:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Delay for ADC stabilization time */
 748:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Compute number of CPU cycles to wait for */
 749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     counter = (ADC_STAB_DELAY_US * (SystemCoreClock / 1000000));
 750:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     while(counter != 0)
 751:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 752:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       counter--;
 753:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 754:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 755:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 756:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Start conversion if ADC is effectively enabled */
 757:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(HAL_IS_BIT_SET(hadc->Instance->CR2, ADC_CR2_ADON))
 758:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 759:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set ADC state                                                          */
 760:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* - Clear state bitfield related to regular group conversion results     */
 761:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* - Set state bitfield related to regular group operation                */
 762:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     ADC_STATE_CLR_SET(hadc->State,
 763:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC | HAL_ADC_STATE_REG_OVR,
 764:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_REG_BUSY);
 765:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 766:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* If conversions on group regular are also triggering group injected,    */
 767:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* update ADC state.                                                      */
 768:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     if (READ_BIT(hadc->Instance->CR1, ADC_CR1_JAUTO) != RESET)
 769:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 770:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       ADC_STATE_CLR_SET(hadc->State, HAL_ADC_STATE_INJ_EOC, HAL_ADC_STATE_INJ_BUSY);  
 771:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 772:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 773:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* State machine update: Check if an injected conversion is ongoing */
 774:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     if (HAL_IS_BIT_SET(hadc->State, HAL_ADC_STATE_INJ_BUSY))
 775:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 776:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Reset ADC error code fields related to conversions on group regular */
 777:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       CLEAR_BIT(hadc->ErrorCode, (HAL_ADC_ERROR_OVR | HAL_ADC_ERROR_DMA));         
 778:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 779:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     else
 780:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 781:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Reset ADC all error code fields */
 782:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       ADC_CLEAR_ERRORCODE(hadc);
 783:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 784:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 785:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Process unlocked */
 786:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Unlock before starting ADC conversions: in case of potential           */
 787:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* interruption, to let the process to ADC IRQ Handler.                   */
 788:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_UNLOCK(hadc);
 789:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 790:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Clear regular group conversion flag and overrun flag */
 791:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* (To ensure of no unknown state from potential previous ADC operations) */
 792:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_EOC | ADC_FLAG_OVR);
 793:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 794:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Enable end of conversion interrupt for regular group */
 795:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_ADC_ENABLE_IT(hadc, (ADC_IT_EOC | ADC_IT_OVR));
 796:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 797:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Check if Multimode enabled */
 798:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     if(HAL_IS_BIT_CLR(ADC->CCR, ADC_CCR_MULTI))
 799:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 800:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* if no external trigger present enable software conversion of regular channels */
 801:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       if((hadc->Instance->CR2 & ADC_CR2_EXTEN) == RESET) 
 802:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 803:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         /* Enable the selected ADC software conversion for regular group */
 804:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         hadc->Instance->CR2 |= (uint32_t)ADC_CR2_SWSTART;
 805:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 806:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 807:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     else
 808:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 809:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* if instance of handle correspond to ADC1 and  no external trigger present enable software 
 810:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       if((hadc->Instance == ADC1) && ((hadc->Instance->CR2 & ADC_CR2_EXTEN) == RESET))
 811:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 812:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         /* Enable the selected ADC software conversion for regular group */
 813:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****           hadc->Instance->CR2 |= (uint32_t)ADC_CR2_SWSTART;
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 815:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 816:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 817:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 818:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Return function status */
 819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   return HAL_OK;
 820:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 821:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 822:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
 823:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Disables the interrupt and stop ADC conversion of regular channels.
 824:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * 
 825:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @note   Caution: This function will stop also injected channels.  
 826:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *
 827:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 828:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.
 829:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval HAL status.
 830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
 831:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_Stop_IT(ADC_HandleTypeDef* hadc)
 832:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
 833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check the parameters */
 834:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
 835:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 836:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Process locked */
 837:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_LOCK(hadc);
 838:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 839:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Stop potential conversion on going, on regular and injected groups */
 840:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Disable ADC peripheral */
 841:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_ADC_DISABLE(hadc);
 842:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 843:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check if ADC is effectively disabled */
 844:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_ADON))
 845:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 846:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   	/* Disable ADC end of conversion interrupt for regular group */
 847:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_ADC_DISABLE_IT(hadc, (ADC_IT_EOC | ADC_IT_OVR));
 848:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 849:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set ADC state */
 850:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     ADC_STATE_CLR_SET(hadc->State,
 851:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 852:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_READY);
 853:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 854:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 855:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Process unlocked */
 856:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_UNLOCK(hadc);
 857:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 858:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Return function status */
 859:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   return HAL_OK;
 860:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 861:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 862:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
 863:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Handles ADC interrupt request  
 864:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
 865:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.
 866:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval None
 867:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
 868:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** void HAL_ADC_IRQHandler(ADC_HandleTypeDef* hadc)
 869:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
 870:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   uint32_t tmp1 = 0, tmp2 = 0;
 871:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 872:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check the parameters */
 873:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_FUNCTIONAL_STATE(hadc->Init.ContinuousConvMode));
 874:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_REGULAR_LENGTH(hadc->Init.NbrOfConversion));
 875:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_EOCSelection(hadc->Init.EOCSelection));
 876:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 877:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   tmp1 = __HAL_ADC_GET_FLAG(hadc, ADC_FLAG_EOC);
 878:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   tmp2 = __HAL_ADC_GET_IT_SOURCE(hadc, ADC_IT_EOC);
 879:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check End of conversion flag for regular channels */
 880:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(tmp1 && tmp2)
 881:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 882:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Update state machine on conversion status if not in error state */
 883:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL))
 884:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 885:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Set ADC state */
 886:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       SET_BIT(hadc->State, HAL_ADC_STATE_REG_EOC); 
 887:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 888:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 889:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Determine whether any further conversion upcoming on group regular   */
 890:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* by external trigger, continuous mode or scan sequence on going.      */
 891:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Note: On STM32F7, there is no independent flag of end of sequence.   */
 892:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /*       The test of scan sequence on going is done either with scan    */
 893:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /*       sequence disabled or with end of conversion flag set to        */
 894:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /*       of end of sequence.                                            */
 895:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     if(ADC_IS_SOFTWARE_START_REGULAR(hadc)                   &&
 896:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (hadc->Init.ContinuousConvMode == DISABLE)            &&
 897:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (HAL_IS_BIT_CLR(hadc->Instance->SQR1, ADC_SQR1_L) || 
 898:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)  )   )
 899:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 900:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Disable ADC end of single conversion interrupt on group regular */
 901:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Note: Overrun interrupt was enabled with EOC interrupt in          */
 902:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* HAL_ADC_Start_IT(), but is not disabled here because can be used   */
 903:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* by overrun IRQ process below.                                      */
 904:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       __HAL_ADC_DISABLE_IT(hadc, ADC_IT_EOC);
 905:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       
 906:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Set ADC state */
 907:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       CLEAR_BIT(hadc->State, HAL_ADC_STATE_REG_BUSY);
 908:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       
 909:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_INJ_BUSY))
 910:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 911:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         SET_BIT(hadc->State, HAL_ADC_STATE_READY);
 912:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 913:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 914:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 915:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Conversion complete callback */ 
 916:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     HAL_ADC_ConvCpltCallback(hadc);
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 918:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Clear regular group conversion flag */
 919:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_STRT | ADC_FLAG_EOC);
 920:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 921:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 922:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   tmp1 = __HAL_ADC_GET_FLAG(hadc, ADC_FLAG_JEOC);
 923:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   tmp2 = __HAL_ADC_GET_IT_SOURCE(hadc, ADC_IT_JEOC);                               
 924:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check End of conversion flag for injected channels */
 925:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(tmp1 && tmp2)
 926:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 927:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Update state machine on conversion status if not in error state */
 928:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL))
 929:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 930:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Set ADC state */
 931:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       SET_BIT(hadc->State, HAL_ADC_STATE_INJ_EOC);
 932:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 933:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 934:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Determine whether any further conversion upcoming on group injected  */
 935:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* by external trigger, scan sequence on going or by automatic injected */
 936:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* conversion from group regular (same conditions as group regular      */
 937:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* interruption disabling above).                                       */
 938:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     if(ADC_IS_SOFTWARE_START_INJECTED(hadc)                    &&
 939:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (HAL_IS_BIT_CLR(hadc->Instance->JSQR, ADC_JSQR_JL) ||
 940:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)) &&
 941:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO) &&
 942:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (ADC_IS_SOFTWARE_START_REGULAR(hadc) &&
 943:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (hadc->Init.ContinuousConvMode == DISABLE))))
 944:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 945:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Disable ADC end of single conversion interrupt on group injected */
 946:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       __HAL_ADC_DISABLE_IT(hadc, ADC_IT_JEOC);
 947:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       
 948:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Set ADC state */
 949:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       CLEAR_BIT(hadc->State, HAL_ADC_STATE_INJ_BUSY);   
 950:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 951:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_REG_BUSY))
 952:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       { 
 953:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         SET_BIT(hadc->State, HAL_ADC_STATE_READY);
 954:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 955:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 956:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 957:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Conversion complete callback */ 
 958:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     HAL_ADCEx_InjectedConvCpltCallback(hadc);
 959:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 960:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Clear injected group conversion flag */
 961:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_ADC_CLEAR_FLAG(hadc, (ADC_FLAG_JSTRT | ADC_FLAG_JEOC));
 962:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 963:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 964:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   tmp1 = __HAL_ADC_GET_FLAG(hadc, ADC_FLAG_AWD);
 965:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   tmp2 = __HAL_ADC_GET_IT_SOURCE(hadc, ADC_IT_AWD);                          
 966:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check Analog watchdog flag */
 967:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(tmp1 && tmp2)
 968:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 969:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     if(__HAL_ADC_GET_FLAG(hadc, ADC_FLAG_AWD))
 970:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 971:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Set ADC state */
 972:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       SET_BIT(hadc->State, HAL_ADC_STATE_AWD1);
 973:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       
 974:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Level out of window callback */ 
 975:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       HAL_ADC_LevelOutOfWindowCallback(hadc);
 976:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       
 977:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Clear the ADC analog watchdog flag */
 978:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_AWD);
 979:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 980:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 981:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   tmp1 = __HAL_ADC_GET_FLAG(hadc, ADC_FLAG_OVR);
 983:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   tmp2 = __HAL_ADC_GET_IT_SOURCE(hadc, ADC_IT_OVR);
 984:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check Overrun flag */
 985:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(tmp1 && tmp2)
 986:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 987:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Note: On STM32F7, ADC overrun can be set through other parameters    */
 988:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /*       refer to description of parameter "EOCSelection" for more      */
 989:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /*       details.                                                       */
 990:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 991:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set ADC error code to overrun */
 992:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     SET_BIT(hadc->ErrorCode, HAL_ADC_ERROR_OVR);
 993:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 994:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Clear ADC overrun flag */
 995:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_OVR);
 996:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 997:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Error callback */ 
 998:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     HAL_ADC_ErrorCallback(hadc);
 999:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1000:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Clear the Overrun flag */
1001:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_OVR);
1002:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
1003:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
1004:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1005:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
1006:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Enables ADC DMA request after last transfer (Single-ADC mode) and enables ADC periphera
1007:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
1008:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.
1009:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  pData: The destination Buffer address.
1010:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  Length: The length of data to be transferred from ADC peripheral to memory.
1011:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval HAL status
1012:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1013:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_Start_DMA(ADC_HandleTypeDef* hadc, uint32_t* pData, uint32_t Length)
1014:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
1015:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __IO uint32_t counter = 0;
1016:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1017:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check the parameters */
1018:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_FUNCTIONAL_STATE(hadc->Init.ContinuousConvMode));
1019:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_EXT_TRIG_EDGE(hadc->Init.ExternalTrigConvEdge)); 
1020:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1021:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Process locked */
1022:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_LOCK(hadc);
1023:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1024:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Enable the ADC peripheral */
1025:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check if ADC peripheral is disabled in order to enable it and wait during 
1026:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      Tstab time the ADC's stabilization */
1027:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if((hadc->Instance->CR2 & ADC_CR2_ADON) != ADC_CR2_ADON)
1028:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {  
1029:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Enable the Peripheral */
1030:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_ADC_ENABLE(hadc);
1031:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1032:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Delay for ADC stabilization time */
1033:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Compute number of CPU cycles to wait for */
1034:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     counter = (ADC_STAB_DELAY_US * (SystemCoreClock / 1000000));
1035:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     while(counter != 0)
1036:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
1037:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       counter--;
1038:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
1039:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
1040:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1041:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Start conversion if ADC is effectively enabled */
1042:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(HAL_IS_BIT_SET(hadc->Instance->CR2, ADC_CR2_ADON))
1043:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
1044:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set ADC state                                                          */
1045:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* - Clear state bitfield related to regular group conversion results     */
1046:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* - Set state bitfield related to regular group operation                */
1047:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     ADC_STATE_CLR_SET(hadc->State,
1048:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC | HAL_ADC_STATE_REG_OVR,
1049:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_REG_BUSY);
1050:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1051:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* If conversions on group regular are also triggering group injected,    */
1052:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* update ADC state.                                                      */
1053:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     if (READ_BIT(hadc->Instance->CR1, ADC_CR1_JAUTO) != RESET)
1054:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
1055:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       ADC_STATE_CLR_SET(hadc->State, HAL_ADC_STATE_INJ_EOC, HAL_ADC_STATE_INJ_BUSY);  
1056:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
1057:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1058:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* State machine update: Check if an injected conversion is ongoing */
1059:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     if (HAL_IS_BIT_SET(hadc->State, HAL_ADC_STATE_INJ_BUSY))
1060:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
1061:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Reset ADC error code fields related to conversions on group regular */
1062:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       CLEAR_BIT(hadc->ErrorCode, (HAL_ADC_ERROR_OVR | HAL_ADC_ERROR_DMA));         
1063:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
1064:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     else
1065:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
1066:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Reset ADC all error code fields */
1067:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       ADC_CLEAR_ERRORCODE(hadc);
1068:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
1069:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1070:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Process unlocked */
1071:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Unlock before starting ADC conversions: in case of potential           */
1072:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* interruption, to let the process to ADC IRQ Handler.                   */
1073:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_UNLOCK(hadc);   
1074:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1075:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set the DMA transfer complete callback */
1076:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->DMA_Handle->XferCpltCallback = ADC_DMAConvCplt;
1077:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1078:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set the DMA half transfer complete callback */
1079:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->DMA_Handle->XferHalfCpltCallback = ADC_DMAHalfConvCplt;
1080:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1081:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set the DMA error callback */
1082:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->DMA_Handle->XferErrorCallback = ADC_DMAError;
1083:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1084:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1085:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Manage ADC and DMA start: ADC overrun interruption, DMA start, ADC     */
1086:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* start (in case of SW start):                                           */
1087:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1088:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Clear regular group conversion flag and overrun flag */
1089:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* (To ensure of no unknown state from potential previous ADC operations) */
1090:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_ADC_CLEAR_FLAG(hadc, ADC_FLAG_EOC | ADC_FLAG_OVR);
1091:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1092:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Enable ADC overrun interrupt */
1093:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_ADC_ENABLE_IT(hadc, ADC_IT_OVR);
1094:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1095:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Enable ADC DMA mode */
1096:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->CR2 |= ADC_CR2_DMA;
1097:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1098:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Start the DMA channel */
1099:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     HAL_DMA_Start_IT(hadc->DMA_Handle, (uint32_t)&hadc->Instance->DR, (uint32_t)pData, Length);
1100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Check if Multimode enabled */
1102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     if(HAL_IS_BIT_CLR(ADC->CCR, ADC_CCR_MULTI))
1103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
1104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* if no external trigger present enable software conversion of regular channels */
1105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       if((hadc->Instance->CR2 & ADC_CR2_EXTEN) == RESET) 
1106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
1107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         /* Enable the selected ADC software conversion for regular group */
1108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         hadc->Instance->CR2 |= (uint32_t)ADC_CR2_SWSTART;
1109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
1110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
1111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     else
1112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
1113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* if instance of handle correspond to ADC1 and  no external trigger present enable software 
1114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       if((hadc->Instance == ADC1) && ((hadc->Instance->CR2 & ADC_CR2_EXTEN) == RESET))
1115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
1116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         /* Enable the selected ADC software conversion for regular group */
1117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****           hadc->Instance->CR2 |= (uint32_t)ADC_CR2_SWSTART;
1118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
1119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
1120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
1121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Return function status */
1123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   return HAL_OK;
1124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
1125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
1127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Disables ADC DMA (Single-ADC mode) and disables ADC peripheral    
1128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
1129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.
1130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval HAL status
1131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_Stop_DMA(ADC_HandleTypeDef* hadc)
1133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
1134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
1135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check the parameters */
1137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_ALL_INSTANCE(hadc->Instance));
1138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Process locked */
1140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_LOCK(hadc);
1141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Stop potential conversion on going, on regular and injected groups */
1143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Disable ADC peripheral */
1144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_ADC_DISABLE(hadc);
1145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check if ADC is effectively disabled */
1147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_ADON))
1148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
1149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Disable the selected ADC DMA mode */
1150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->CR2 &= ~ADC_CR2_DMA;
1151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Disable the DMA channel (in case of DMA in circular mode or stop while */
1153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* DMA transfer is on going)                                              */
1154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     tmp_hal_status = HAL_DMA_Abort(hadc->DMA_Handle);
1155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Disable ADC overrun interrupt */
1157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_ADC_DISABLE_IT(hadc, ADC_IT_OVR);
1158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set ADC state */
1160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     ADC_STATE_CLR_SET(hadc->State,
1161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
1162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_READY);
1163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
1164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Process unlocked */
1166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_UNLOCK(hadc);
1167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Return function status */
1169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   return tmp_hal_status;
1170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
1171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
1173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Gets the converted value from data register of regular channel.
1174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
1175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.
1176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval Converted value
1177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** uint32_t HAL_ADC_GetValue(ADC_HandleTypeDef* hadc)
1179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {       
1180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Return the selected ADC converted value */ 
1181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   return hadc->Instance->DR;
1182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
1183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
1185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Regular conversion complete callback in non blocking mode 
1186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
1187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.
1188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval None
1189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** __weak void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc)
1191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
1192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
1193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   UNUSED(hadc);
1194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
1195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****             the HAL_ADC_ConvCpltCallback could be implemented in the user file
1196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****    */
1197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
1198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
1200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Regular conversion half DMA transfer callback in non blocking mode 
1201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
1202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.
1203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval None
1204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** __weak void HAL_ADC_ConvHalfCpltCallback(ADC_HandleTypeDef* hadc)
1206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
1207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
1208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   UNUSED(hadc);
1209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
1210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****             the HAL_ADC_ConvHalfCpltCallback could be implemented in the user file
1211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****    */
1212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
1213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
1215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Analog watchdog callback in non blocking mode 
1216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
1217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.
1218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval None
1219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** __weak void HAL_ADC_LevelOutOfWindowCallback(ADC_HandleTypeDef* hadc)
1221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
1222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
1223:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   UNUSED(hadc);
1224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
1225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****             the HAL_ADC_LevelOoutOfWindowCallback could be implemented in the user file
1226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****    */
1227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
1228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1229:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
1230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Error ADC callback.
1231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @note   In case of error due to overrun when using ADC with DMA transfer 
1232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         (HAL ADC handle paramater "ErrorCode" to state "HAL_ADC_ERROR_OVR"):
1233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         - Reinitialize the DMA using function "HAL_ADC_Stop_DMA()".
1234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         - If needed, restart a new ADC conversion using function
1235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *           "HAL_ADC_Start_DMA()"
1236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *           (this function is also clearing overrun flag)
1237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
1238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.
1239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval None
1240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** __weak void HAL_ADC_ErrorCallback(ADC_HandleTypeDef *hadc)
1242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
1243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
1244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   UNUSED(hadc);
1245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
1246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****             the HAL_ADC_ErrorCallback could be implemented in the user file
1247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****    */
1248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
1249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
1251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @}
1252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /** @defgroup ADC_Exported_Functions_Group3 Peripheral Control functions
1255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****  *  @brief   	Peripheral Control functions 
1256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****  *
1257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** @verbatim   
1258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****  ===============================================================================
1259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****              ##### Peripheral Control functions #####
1260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****  ===============================================================================  
1261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     [..]  This section provides functions allowing to:
1262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) Configure regular channels. 
1263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) Configure injected channels.
1264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) Configure multimode.
1265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) Configure the analog watch dog.
1266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       
1267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** @endverbatim
1268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @{
1269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /**
1272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Configures for the selected ADC regular channel its corresponding
1273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         rank in the sequencer and its sample time.
1274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
1275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.
1276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  sConfig: ADC configuration structure. 
1277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval HAL status
1278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1279:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_ConfigChannel(ADC_HandleTypeDef* hadc, ADC_ChannelConfTypeDef* sConfig)
1280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
1281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __IO uint32_t counter = 0;
1282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1283:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check the parameters */
1284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_CHANNEL(sConfig->Channel));
1285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_REGULAR_RANK(sConfig->Rank));
1286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_SAMPLE_TIME(sConfig->SamplingTime));
1287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Process locked */
1289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_LOCK(hadc);
1290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 			
1291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 	/* if ADC_Channel_10 ... ADC_Channel_18 is selected */
1292:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 	if (sConfig->Channel > ADC_CHANNEL_9)
1293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 	{
1294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 		/* Clear the old sample time */
1295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 		hadc->Instance->SMPR1 &= ~ADC_SMPR1(ADC_SMPR1_SMP10, sConfig->Channel);
1296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 		if (sConfig->Channel == ADC_CHANNEL_TEMPSENSOR)
1298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 		{
1299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 			/* Set the new sample time */
1300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 			hadc->Instance->SMPR1 |= ADC_SMPR1(sConfig->SamplingTime, ADC_CHANNEL_18);
1301:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 		}
1302:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 	  else
1303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 	  {	
1304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 		  /* Set the new sample time */
1305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 		  hadc->Instance->SMPR1 |= ADC_SMPR1(sConfig->SamplingTime, sConfig->Channel);
1306:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 	  }
1307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
1308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   else /* ADC_Channel include in ADC_Channel_[0..9] */
1309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
1310:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Clear the old sample time */
1311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->SMPR2 &= ~ADC_SMPR2(ADC_SMPR2_SMP0, sConfig->Channel);
1312:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set the new sample time */
1314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->SMPR2 |= ADC_SMPR2(sConfig->SamplingTime, sConfig->Channel);
1315:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
1316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1317:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* For Rank 1 to 6 */
1318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if (sConfig->Rank < 7)
1319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
1320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Clear the old SQx bits for the selected rank */
1321:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->SQR3 &= ~ADC_SQR3_RK(ADC_SQR3_SQ1, sConfig->Rank);
1322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set the SQx bits for the selected rank */
1324:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->SQR3 |= ADC_SQR3_RK(sConfig->Channel, sConfig->Rank);
1325:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
1326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* For Rank 7 to 12 */
1327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   else if (sConfig->Rank < 13)
1328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
1329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Clear the old SQx bits for the selected rank */
1330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->SQR2 &= ~ADC_SQR2_RK(ADC_SQR2_SQ7, sConfig->Rank);
1331:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set the SQx bits for the selected rank */
1333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->SQR2 |= ADC_SQR2_RK(sConfig->Channel, sConfig->Rank);
1334:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
1335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* For Rank 13 to 16 */
1336:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   else
1337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
1338:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Clear the old SQx bits for the selected rank */
1339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->SQR1 &= ~ADC_SQR1_RK(ADC_SQR1_SQ13, sConfig->Rank);
1340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1341:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set the SQx bits for the selected rank */
1342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->SQR1 |= ADC_SQR1_RK(sConfig->Channel, sConfig->Rank);
1343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
1344:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* if ADC1 Channel_18 is selected enable VBAT Channel */
1346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if ((hadc->Instance == ADC1) && (sConfig->Channel == ADC_CHANNEL_VBAT))
1347:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
1348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Enable the VBAT channel*/
1349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     ADC->CCR |= ADC_CCR_VBATE;
1350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
1351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* if ADC1 Channel_18 or Channel_17 is selected enable TSVREFE Channel(Temperature sensor and VRE
1353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if ((hadc->Instance == ADC1) && ((sConfig->Channel == ADC_CHANNEL_TEMPSENSOR) || (sConfig->Channe
1354:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
1355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Enable the TSVREFE channel*/
1356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     ADC->CCR |= ADC_CCR_TSVREFE;
1357:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     if(sConfig->Channel == ADC_CHANNEL_TEMPSENSOR)
1359:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
1360:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Delay for temperature sensor stabilization time */
1361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Compute number of CPU cycles to wait for */
1362:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       counter = (ADC_TEMPSENSOR_DELAY_US * (SystemCoreClock / 1000000));
1363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       while(counter != 0)
1364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
1365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         counter--;
1366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
1367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
1368:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
1369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Process unlocked */
1371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_UNLOCK(hadc);
1372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Return function status */
1374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   return HAL_OK;
1375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
1376:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1377:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
1378:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Configures the analog watchdog.
1379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @note   Analog watchdog thresholds can be modified while ADC conversion
1380:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         is on going.
1381:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         In this case, some constraints must be taken into account:
1382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the programmed threshold values are effective from the next
1383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         ADC EOC (end of unitary conversion).
1384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         Considering that registers write delay may happen due to
1385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         bus activity, this might cause an uncertainty on the
1386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         effective timing of the new programmed threshold values.
1387:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
1388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.
1389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  AnalogWDGConfig : pointer to an ADC_AnalogWDGConfTypeDef structure 
1390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         that contains the configuration information of ADC analog watchdog.
1391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval HAL status	  
1392:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** HAL_StatusTypeDef HAL_ADC_AnalogWDGConfig(ADC_HandleTypeDef* hadc, ADC_AnalogWDGConfTypeDef* Analog
1394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
1395:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** #ifdef USE_FULL_ASSERT  
1396:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   uint32_t tmp = 0;
1397:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** #endif /* USE_FULL_ASSERT  */  
1398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check the parameters */
1400:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_ANALOG_WATCHDOG(AnalogWDGConfig->WatchdogMode));
1401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_CHANNEL(AnalogWDGConfig->Channel));
1402:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_FUNCTIONAL_STATE(AnalogWDGConfig->ITMode));
1403:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** #ifdef USE_FULL_ASSERT  
1405:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   tmp = ADC_GET_RESOLUTION(hadc);
1406:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_RANGE(tmp, AnalogWDGConfig->HighThreshold));
1407:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   assert_param(IS_ADC_RANGE(tmp, AnalogWDGConfig->LowThreshold));
1408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** #endif /* USE_FULL_ASSERT  */
1409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Process locked */
1411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_LOCK(hadc);
1412:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1413:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(AnalogWDGConfig->ITMode == ENABLE)
1414:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
1415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Enable the ADC Analog watchdog interrupt */
1416:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_ADC_ENABLE_IT(hadc, ADC_IT_AWD);
1417:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
1418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   else
1419:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
1420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Disable the ADC Analog watchdog interrupt */
1421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     __HAL_ADC_DISABLE_IT(hadc, ADC_IT_AWD);
1422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
1423:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1424:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Clear AWDEN, JAWDEN and AWDSGL bits */
1425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->CR1 &=  ~(ADC_CR1_AWDSGL | ADC_CR1_JAWDEN | ADC_CR1_AWDEN);
1426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1427:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Set the analog watchdog enable mode */
1428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->CR1 |= AnalogWDGConfig->WatchdogMode;
1429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1430:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Set the high threshold */
1431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->HTR = AnalogWDGConfig->HighThreshold;
1432:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1433:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Set the low threshold */
1434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->LTR = AnalogWDGConfig->LowThreshold;
1435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1436:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Clear the Analog watchdog channel select bits */
1437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->CR1 &= ~ADC_CR1_AWDCH;
1438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1439:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Set the Analog watchdog channel */
1440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->CR1 |= (uint32_t)((uint16_t)(AnalogWDGConfig->Channel));
1441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1442:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Process unlocked */
1443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __HAL_UNLOCK(hadc);
1444:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Return function status */
1446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   return HAL_OK;
1447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
1448:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
1450:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @}
1451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /** @defgroup ADC_Exported_Functions_Group4 ADC Peripheral State functions
1454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****  *  @brief   ADC Peripheral State functions 
1455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****  *
1456:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** @verbatim   
1457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****  ===============================================================================
1458:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****             ##### Peripheral State and errors functions #####
1459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****  ===============================================================================  
1460:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     [..]
1461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     This subsection provides functions allowing to
1462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) Check the ADC state
1463:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       (+) Check the ADC Error
1464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****          
1465:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** @endverbatim
1466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @{
1467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1468:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
1470:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  return the ADC state
1471:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
1472:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.
1473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval HAL state
1474:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1475:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** uint32_t HAL_ADC_GetState(ADC_HandleTypeDef* hadc)
1476:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
1477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Return ADC state */
1478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   return hadc->State;
1479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
1480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
1482:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Return the ADC error code
1483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
1484:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.
1485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval ADC Error Code
1486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** uint32_t HAL_ADC_GetError(ADC_HandleTypeDef *hadc)
1488:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
1489:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   return hadc->ErrorCode;
1490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
1491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
1493:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @}
1494:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1495:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
1497:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @}
1498:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1499:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /* Private functions ---------------------------------------------------------*/
1501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1502:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /** @defgroup ADC_Private_Functions ADC Private Functions
1503:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @{
1504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1505:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1506:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
1507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  Initializes the ADCx peripheral according to the specified parameters 
1508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         in the ADC_InitStruct without initializing the ADC MSP.       
1509:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hadc: pointer to a ADC_HandleTypeDef structure that contains
1510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *         the configuration information for the specified ADC.  
1511:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval None
1512:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1513:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** static void ADC_Init(ADC_HandleTypeDef* hadc)
1514:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
  26              		.loc 1 1514 0
  27              		.cfi_startproc
  28              		@ args = 0, pretend = 0, frame = 0
  29              		@ frame_needed = 0, uses_anonymous_args = 0
  30              		@ link register save eliminated.
  31              	.LVL0:
1515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Set ADC parameters */
1516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Set the ADC clock prescaler */
1517:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   ADC->CCR &= ~(ADC_CCR_ADCPRE);
  32              		.loc 1 1517 0
  33 0000 4C4B     		ldr	r3, .L7
  34 0002 5A68     		ldr	r2, [r3, #4]
  35 0004 22F44032 		bic	r2, r2, #196608
  36 0008 5A60     		str	r2, [r3, #4]
1518:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   ADC->CCR |=  hadc->Init.ClockPrescaler;
  37              		.loc 1 1518 0
  38 000a 5A68     		ldr	r2, [r3, #4]
  39 000c 4168     		ldr	r1, [r0, #4]
  40 000e 0A43     		orrs	r2, r2, r1
  41 0010 5A60     		str	r2, [r3, #4]
1519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1520:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Set ADC scan mode */
1521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->CR1 &= ~(ADC_CR1_SCAN);
  42              		.loc 1 1521 0
  43 0012 0268     		ldr	r2, [r0]
  44 0014 5368     		ldr	r3, [r2, #4]
  45 0016 23F48073 		bic	r3, r3, #256
  46 001a 5360     		str	r3, [r2, #4]
1522:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->CR1 |=  ADC_CR1_SCANCONV(hadc->Init.ScanConvMode);
  47              		.loc 1 1522 0
  48 001c 0268     		ldr	r2, [r0]
  49 001e 5368     		ldr	r3, [r2, #4]
  50 0020 0169     		ldr	r1, [r0, #16]
  51 0022 43EA0123 		orr	r3, r3, r1, lsl #8
  52 0026 5360     		str	r3, [r2, #4]
1523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1524:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Set ADC resolution */
1525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->CR1 &= ~(ADC_CR1_RES);
  53              		.loc 1 1525 0
  54 0028 0268     		ldr	r2, [r0]
  55 002a 5368     		ldr	r3, [r2, #4]
  56 002c 23F04073 		bic	r3, r3, #50331648
  57 0030 5360     		str	r3, [r2, #4]
1526:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->CR1 |=  hadc->Init.Resolution;
  58              		.loc 1 1526 0
  59 0032 0268     		ldr	r2, [r0]
  60 0034 5368     		ldr	r3, [r2, #4]
  61 0036 8168     		ldr	r1, [r0, #8]
  62 0038 0B43     		orrs	r3, r3, r1
  63 003a 5360     		str	r3, [r2, #4]
1527:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Set ADC data alignment */
1529:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->CR2 &= ~(ADC_CR2_ALIGN);
  64              		.loc 1 1529 0
  65 003c 0268     		ldr	r2, [r0]
  66 003e 9368     		ldr	r3, [r2, #8]
  67 0040 23F40063 		bic	r3, r3, #2048
  68 0044 9360     		str	r3, [r2, #8]
1530:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->CR2 |= hadc->Init.DataAlign;
  69              		.loc 1 1530 0
  70 0046 0268     		ldr	r2, [r0]
  71 0048 9368     		ldr	r3, [r2, #8]
  72 004a C168     		ldr	r1, [r0, #12]
  73 004c 0B43     		orrs	r3, r3, r1
  74 004e 9360     		str	r3, [r2, #8]
1531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1532:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Enable external trigger if trigger selection is different of software  */
1533:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* start.                                                                 */
1534:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Note: This configuration keeps the hardware feature of parameter       */
1535:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /*       ExternalTrigConvEdge "trigger edge none" equivalent to           */
1536:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /*       software start.                                                  */
1537:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(hadc->Init.ExternalTrigConv != ADC_SOFTWARE_START)
  75              		.loc 1 1537 0
  76 0050 826A     		ldr	r2, [r0, #40]
  77 0052 394B     		ldr	r3, .L7+4
  78 0054 9A42     		cmp	r2, r3
  79 0056 49D0     		beq	.L2
1538:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
1539:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Select external trigger to start conversion */
1540:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->CR2 &= ~(ADC_CR2_EXTSEL);
  80              		.loc 1 1540 0
  81 0058 0268     		ldr	r2, [r0]
  82 005a 9368     		ldr	r3, [r2, #8]
  83 005c 23F07063 		bic	r3, r3, #251658240
  84 0060 9360     		str	r3, [r2, #8]
1541:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->CR2 |= hadc->Init.ExternalTrigConv;
  85              		.loc 1 1541 0
  86 0062 0268     		ldr	r2, [r0]
  87 0064 9368     		ldr	r3, [r2, #8]
  88 0066 816A     		ldr	r1, [r0, #40]
  89 0068 0B43     		orrs	r3, r3, r1
  90 006a 9360     		str	r3, [r2, #8]
1542:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1543:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Select external trigger polarity */
1544:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->CR2 &= ~(ADC_CR2_EXTEN);
  91              		.loc 1 1544 0
  92 006c 0268     		ldr	r2, [r0]
  93 006e 9368     		ldr	r3, [r2, #8]
  94 0070 23F04053 		bic	r3, r3, #805306368
  95 0074 9360     		str	r3, [r2, #8]
1545:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->CR2 |= hadc->Init.ExternalTrigConvEdge;
  96              		.loc 1 1545 0
  97 0076 0268     		ldr	r2, [r0]
  98 0078 9368     		ldr	r3, [r2, #8]
  99 007a C16A     		ldr	r1, [r0, #44]
 100 007c 0B43     		orrs	r3, r3, r1
 101 007e 9360     		str	r3, [r2, #8]
 102              	.L3:
1546:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
1547:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   else
1548:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
1549:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Reset the external trigger */
1550:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->CR2 &= ~(ADC_CR2_EXTSEL);
1551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->CR2 &= ~(ADC_CR2_EXTEN);
1552:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
1553:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1554:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Enable or disable ADC continuous conversion mode */
1555:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->CR2 &= ~(ADC_CR2_CONT);
 103              		.loc 1 1555 0
 104 0080 0268     		ldr	r2, [r0]
 105 0082 9368     		ldr	r3, [r2, #8]
 106 0084 23F00203 		bic	r3, r3, #2
 107 0088 9360     		str	r3, [r2, #8]
1556:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->CR2 |= ADC_CR2_CONTINUOUS(hadc->Init.ContinuousConvMode);
 108              		.loc 1 1556 0
 109 008a 0268     		ldr	r2, [r0]
 110 008c 9368     		ldr	r3, [r2, #8]
 111 008e 8169     		ldr	r1, [r0, #24]
 112 0090 43EA4103 		orr	r3, r3, r1, lsl #1
 113 0094 9360     		str	r3, [r2, #8]
1557:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1558:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if(hadc->Init.DiscontinuousConvMode != DISABLE)
 114              		.loc 1 1558 0
 115 0096 036A     		ldr	r3, [r0, #32]
 116 0098 002B     		cmp	r3, #0
 117 009a 32D1     		bne	.L6
1559:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
1560:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     assert_param(IS_ADC_REGULAR_DISC_NUMBER(hadc->Init.NbrOfDiscConversion));
1561:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1562:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Enable the selected ADC regular discontinuous mode */
1563:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->CR1 |= (uint32_t)ADC_CR1_DISCEN;
1564:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1565:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set the number of channels to be converted in discontinuous mode */
1566:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->CR1 &= ~(ADC_CR1_DISCNUM);
1567:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->CR1 |=  ADC_CR1_DISCONTINUOUS(hadc->Init.NbrOfDiscConversion);
1568:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
1569:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   else
1570:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
1571:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Disable the selected ADC regular discontinuous mode */
1572:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->CR1 &= ~(ADC_CR1_DISCEN);
 118              		.loc 1 1572 0
 119 009c 0268     		ldr	r2, [r0]
 120 009e 5368     		ldr	r3, [r2, #4]
 121 00a0 23F40063 		bic	r3, r3, #2048
 122 00a4 5360     		str	r3, [r2, #4]
 123              	.L5:
1573:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
1574:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1575:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Set ADC number of conversion */
1576:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->SQR1 &= ~(ADC_SQR1_L);
 124              		.loc 1 1576 0
 125 00a6 0268     		ldr	r2, [r0]
 126 00a8 D36A     		ldr	r3, [r2, #44]
 127 00aa 23F47003 		bic	r3, r3, #15728640
 128 00ae D362     		str	r3, [r2, #44]
1577:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->SQR1 |=  ADC_SQR1(hadc->Init.NbrOfConversion);
 129              		.loc 1 1577 0
 130 00b0 0168     		ldr	r1, [r0]
 131 00b2 CB6A     		ldr	r3, [r1, #44]
 132 00b4 C269     		ldr	r2, [r0, #28]
 133 00b6 013A     		subs	r2, r2, #1
 134 00b8 43EA0253 		orr	r3, r3, r2, lsl #20
 135 00bc CB62     		str	r3, [r1, #44]
1578:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1579:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Enable or disable ADC DMA continuous request */
1580:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->CR2 &= ~(ADC_CR2_DDS);
 136              		.loc 1 1580 0
 137 00be 0268     		ldr	r2, [r0]
 138 00c0 9368     		ldr	r3, [r2, #8]
 139 00c2 23F40073 		bic	r3, r3, #512
 140 00c6 9360     		str	r3, [r2, #8]
1581:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->CR2 |= ADC_CR2_DMAContReq(hadc->Init.DMAContinuousRequests);
 141              		.loc 1 1581 0
 142 00c8 0268     		ldr	r2, [r0]
 143 00ca 9368     		ldr	r3, [r2, #8]
 144 00cc 016B     		ldr	r1, [r0, #48]
 145 00ce 43EA4123 		orr	r3, r3, r1, lsl #9
 146 00d2 9360     		str	r3, [r2, #8]
1582:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1583:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Enable or disable ADC end of conversion selection */
1584:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->CR2 &= ~(ADC_CR2_EOCS);
 147              		.loc 1 1584 0
 148 00d4 0268     		ldr	r2, [r0]
 149 00d6 9368     		ldr	r3, [r2, #8]
 150 00d8 23F48063 		bic	r3, r3, #1024
 151 00dc 9360     		str	r3, [r2, #8]
1585:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->Instance->CR2 |= ADC_CR2_EOCSelection(hadc->Init.EOCSelection);
 152              		.loc 1 1585 0
 153 00de 0268     		ldr	r2, [r0]
 154 00e0 9368     		ldr	r3, [r2, #8]
 155 00e2 4169     		ldr	r1, [r0, #20]
 156 00e4 43EA8123 		orr	r3, r3, r1, lsl #10
 157 00e8 9360     		str	r3, [r2, #8]
1586:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 158              		.loc 1 1586 0
 159 00ea 7047     		bx	lr
 160              	.L2:
1550:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->CR2 &= ~(ADC_CR2_EXTEN);
 161              		.loc 1 1550 0
 162 00ec 0268     		ldr	r2, [r0]
 163 00ee 9368     		ldr	r3, [r2, #8]
 164 00f0 23F07063 		bic	r3, r3, #251658240
 165 00f4 9360     		str	r3, [r2, #8]
1551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 166              		.loc 1 1551 0
 167 00f6 0268     		ldr	r2, [r0]
 168 00f8 9368     		ldr	r3, [r2, #8]
 169 00fa 23F04053 		bic	r3, r3, #805306368
 170 00fe 9360     		str	r3, [r2, #8]
 171 0100 BEE7     		b	.L3
 172              	.L6:
1563:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 173              		.loc 1 1563 0
 174 0102 0268     		ldr	r2, [r0]
 175 0104 5368     		ldr	r3, [r2, #4]
 176 0106 43F40063 		orr	r3, r3, #2048
 177 010a 5360     		str	r3, [r2, #4]
1566:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->Instance->CR1 |=  ADC_CR1_DISCONTINUOUS(hadc->Init.NbrOfDiscConversion);
 178              		.loc 1 1566 0
 179 010c 0268     		ldr	r2, [r0]
 180 010e 5368     		ldr	r3, [r2, #4]
 181 0110 23F46043 		bic	r3, r3, #57344
 182 0114 5360     		str	r3, [r2, #4]
1567:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 183              		.loc 1 1567 0
 184 0116 436A     		ldr	r3, [r0, #36]
 185 0118 013B     		subs	r3, r3, #1
 186              	.LVL1:
 187              	.LBB4:
 188              	.LBB5:
 189              		.file 2 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h"
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
 190              		.loc 2 531 0
 191 011a 4FF46042 		mov	r2, #57344
 192              		.syntax unified
 193              	@ 531 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/cmsis_gcc.h" 1
 194 011e 92FAA2F2 		rbit r2, r2
 195              	@ 0 "" 2
 196              	.LVL2:
 197              		.thumb
 198              		.syntax unified
 199              	.LBE5:
 200              	.LBE4:
1567:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 201              		.loc 1 1567 0
 202 0122 B2FA82F2 		clz	r2, r2
 203 0126 9340     		lsls	r3, r3, r2
 204 0128 0168     		ldr	r1, [r0]
 205 012a 4A68     		ldr	r2, [r1, #4]
 206 012c 1343     		orrs	r3, r3, r2
 207 012e 4B60     		str	r3, [r1, #4]
 208 0130 B9E7     		b	.L5
 209              	.L8:
 210 0132 00BF     		.align	2
 211              	.L7:
 212 0134 00230140 		.word	1073816320
 213 0138 0100000F 		.word	251658241
 214              		.cfi_endproc
 215              	.LFE160:
 217              		.section	.text.HAL_ADC_MspInit,"ax",%progbits
 218              		.align	1
 219              		.weak	HAL_ADC_MspInit
 220              		.syntax unified
 221              		.thumb
 222              		.thumb_func
 223              		.fpu fpv5-d16
 225              	HAL_ADC_MspInit:
 226              	.LFB140:
 384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
 227              		.loc 1 384 0
 228              		.cfi_startproc
 229              		@ args = 0, pretend = 0, frame = 0
 230              		@ frame_needed = 0, uses_anonymous_args = 0
 231              		@ link register save eliminated.
 232              	.LVL3:
 390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 233              		.loc 1 390 0
 234 0000 7047     		bx	lr
 235              		.cfi_endproc
 236              	.LFE140:
 238              		.section	.text.HAL_ADC_Init,"ax",%progbits
 239              		.align	1
 240              		.global	HAL_ADC_Init
 241              		.syntax unified
 242              		.thumb
 243              		.thumb_func
 244              		.fpu fpv5-d16
 246              	HAL_ADC_Init:
 247              	.LFB138:
 260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 248              		.loc 1 260 0
 249              		.cfi_startproc
 250              		@ args = 0, pretend = 0, frame = 0
 251              		@ frame_needed = 0, uses_anonymous_args = 0
 252              	.LVL4:
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 253              		.loc 1 264 0
 254 0000 20B3     		cbz	r0, .L14
 260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 255              		.loc 1 260 0
 256 0002 10B5     		push	{r4, lr}
 257              		.cfi_def_cfa_offset 8
 258              		.cfi_offset 4, -8
 259              		.cfi_offset 14, -4
 260 0004 0446     		mov	r4, r0
 287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 261              		.loc 1 287 0
 262 0006 036C     		ldr	r3, [r0, #64]
 263 0008 43B1     		cbz	r3, .L20
 264              	.LVL5:
 265              	.L12:
 300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 266              		.loc 1 300 0
 267 000a 236C     		ldr	r3, [r4, #64]
 268 000c 13F0100F 		tst	r3, #16
 269 0010 0AD0     		beq	.L21
 320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 270              		.loc 1 320 0
 271 0012 0120     		movs	r0, #1
 272              	.L13:
 273              	.LVL6:
 324:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 274              		.loc 1 324 0
 275 0014 0023     		movs	r3, #0
 276 0016 84F83C30 		strb	r3, [r4, #60]
 328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 277              		.loc 1 328 0
 278 001a 10BD     		pop	{r4, pc}
 279              	.LVL7:
 280              	.L20:
 290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 281              		.loc 1 290 0
 282 001c 4364     		str	r3, [r0, #68]
 293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Init the low level hardware */
 283              		.loc 1 293 0
 284 001e 80F83C30 		strb	r3, [r0, #60]
 295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 285              		.loc 1 295 0
 286 0022 FFF7FEFF 		bl	HAL_ADC_MspInit
 287              	.LVL8:
 288 0026 F0E7     		b	.L12
 289              	.L21:
 303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 290              		.loc 1 303 0
 291 0028 226C     		ldr	r2, [r4, #64]
 292 002a 094B     		ldr	r3, .L22
 293 002c 1340     		ands	r3, r3, r2
 294 002e 43F00203 		orr	r3, r3, #2
 295 0032 2364     		str	r3, [r4, #64]
 308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 296              		.loc 1 308 0
 297 0034 2046     		mov	r0, r4
 298 0036 FFF7FEFF 		bl	ADC_Init
 299              	.LVL9:
 311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 300              		.loc 1 311 0
 301 003a 0020     		movs	r0, #0
 302 003c 6064     		str	r0, [r4, #68]
 314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_BUSY_INTERNAL,
 303              		.loc 1 314 0
 304 003e 236C     		ldr	r3, [r4, #64]
 305 0040 23F00303 		bic	r3, r3, #3
 306 0044 43F00103 		orr	r3, r3, #1
 307 0048 2364     		str	r3, [r4, #64]
 308 004a E3E7     		b	.L13
 309              	.LVL10:
 310              	.L14:
 311              		.cfi_def_cfa_offset 0
 312              		.cfi_restore 4
 313              		.cfi_restore 14
 266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 314              		.loc 1 266 0
 315 004c 0120     		movs	r0, #1
 316              	.LVL11:
 328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 317              		.loc 1 328 0
 318 004e 7047     		bx	lr
 319              	.L23:
 320              		.align	2
 321              	.L22:
 322 0050 FDEEFFFF 		.word	-4355
 323              		.cfi_endproc
 324              	.LFE138:
 326              		.section	.text.HAL_ADC_MspDeInit,"ax",%progbits
 327              		.align	1
 328              		.weak	HAL_ADC_MspDeInit
 329              		.syntax unified
 330              		.thumb
 331              		.thumb_func
 332              		.fpu fpv5-d16
 334              	HAL_ADC_MspDeInit:
 335              	.LFB141:
 399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
 336              		.loc 1 399 0
 337              		.cfi_startproc
 338              		@ args = 0, pretend = 0, frame = 0
 339              		@ frame_needed = 0, uses_anonymous_args = 0
 340              		@ link register save eliminated.
 341              	.LVL12:
 405:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 342              		.loc 1 405 0
 343 0000 7047     		bx	lr
 344              		.cfi_endproc
 345              	.LFE141:
 347              		.section	.text.HAL_ADC_DeInit,"ax",%progbits
 348              		.align	1
 349              		.global	HAL_ADC_DeInit
 350              		.syntax unified
 351              		.thumb
 352              		.thumb_func
 353              		.fpu fpv5-d16
 355              	HAL_ADC_DeInit:
 356              	.LFB139:
 337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 357              		.loc 1 337 0
 358              		.cfi_startproc
 359              		@ args = 0, pretend = 0, frame = 0
 360              		@ frame_needed = 0, uses_anonymous_args = 0
 361              	.LVL13:
 341:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 362              		.loc 1 341 0
 363 0000 C8B1     		cbz	r0, .L28
 337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 364              		.loc 1 337 0
 365 0002 10B5     		push	{r4, lr}
 366              		.cfi_def_cfa_offset 8
 367              		.cfi_offset 4, -8
 368              		.cfi_offset 14, -4
 369 0004 0446     		mov	r4, r0
 350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 370              		.loc 1 350 0
 371 0006 036C     		ldr	r3, [r0, #64]
 372 0008 43F00203 		orr	r3, r3, #2
 373 000c 0364     		str	r3, [r0, #64]
 354:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 374              		.loc 1 354 0
 375 000e 0268     		ldr	r2, [r0]
 376 0010 9368     		ldr	r3, [r2, #8]
 377 0012 23F00103 		bic	r3, r3, #1
 378 0016 9360     		str	r3, [r2, #8]
 358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 379              		.loc 1 358 0
 380 0018 0368     		ldr	r3, [r0]
 381 001a 9B68     		ldr	r3, [r3, #8]
 382 001c 13F0010F 		tst	r3, #1
 383 0020 03D0     		beq	.L33
 384              	.LVL14:
 385              	.L27:
 371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 386              		.loc 1 371 0
 387 0022 0020     		movs	r0, #0
 388 0024 84F83C00 		strb	r0, [r4, #60]
 375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 389              		.loc 1 375 0
 390 0028 10BD     		pop	{r4, pc}
 391              	.LVL15:
 392              	.L33:
 361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 393              		.loc 1 361 0
 394 002a FFF7FEFF 		bl	HAL_ADC_MspDeInit
 395              	.LVL16:
 364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 396              		.loc 1 364 0
 397 002e 0023     		movs	r3, #0
 398 0030 6364     		str	r3, [r4, #68]
 367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 399              		.loc 1 367 0
 400 0032 2364     		str	r3, [r4, #64]
 401 0034 F5E7     		b	.L27
 402              	.LVL17:
 403              	.L28:
 404              		.cfi_def_cfa_offset 0
 405              		.cfi_restore 4
 406              		.cfi_restore 14
 343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 407              		.loc 1 343 0
 408 0036 0120     		movs	r0, #1
 409              	.LVL18:
 375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 410              		.loc 1 375 0
 411 0038 7047     		bx	lr
 412              		.cfi_endproc
 413              	.LFE139:
 415              		.section	.text.HAL_ADC_Start,"ax",%progbits
 416              		.align	1
 417              		.global	HAL_ADC_Start
 418              		.syntax unified
 419              		.thumb
 420              		.thumb_func
 421              		.fpu fpv5-d16
 423              	HAL_ADC_Start:
 424              	.LFB142:
 438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __IO uint32_t counter = 0;
 425              		.loc 1 438 0
 426              		.cfi_startproc
 427              		@ args = 0, pretend = 0, frame = 8
 428              		@ frame_needed = 0, uses_anonymous_args = 0
 429              		@ link register save eliminated.
 430              	.LVL19:
 431 0000 82B0     		sub	sp, sp, #8
 432              		.cfi_def_cfa_offset 8
 439:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 433              		.loc 1 439 0
 434 0002 0023     		movs	r3, #0
 435 0004 0193     		str	r3, [sp, #4]
 446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 436              		.loc 1 446 0
 437 0006 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 438 000a 012B     		cmp	r3, #1
 439 000c 61D0     		beq	.L43
 446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 440              		.loc 1 446 0 is_stmt 0 discriminator 2
 441 000e 0123     		movs	r3, #1
 442 0010 80F83C30 		strb	r3, [r0, #60]
 451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {  
 443              		.loc 1 451 0 is_stmt 1 discriminator 2
 444 0014 0368     		ldr	r3, [r0]
 445 0016 9A68     		ldr	r2, [r3, #8]
 446 0018 12F0010F 		tst	r2, #1
 447 001c 13D1     		bne	.L36
 454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 448              		.loc 1 454 0
 449 001e 9A68     		ldr	r2, [r3, #8]
 450 0020 42F00102 		orr	r2, r2, #1
 451 0024 9A60     		str	r2, [r3, #8]
 458:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     while(counter != 0)
 452              		.loc 1 458 0
 453 0026 2F4B     		ldr	r3, .L50
 454 0028 1B68     		ldr	r3, [r3]
 455 002a 2F4A     		ldr	r2, .L50+4
 456 002c A2FB0323 		umull	r2, r3, r2, r3
 457 0030 9B0C     		lsrs	r3, r3, #18
 458 0032 03EB4303 		add	r3, r3, r3, lsl #1
 459 0036 0193     		str	r3, [sp, #4]
 459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 460              		.loc 1 459 0
 461 0038 02E0     		b	.L37
 462              	.L38:
 461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 463              		.loc 1 461 0
 464 003a 019B     		ldr	r3, [sp, #4]
 465 003c 013B     		subs	r3, r3, #1
 466 003e 0193     		str	r3, [sp, #4]
 467              	.L37:
 459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 468              		.loc 1 459 0
 469 0040 019B     		ldr	r3, [sp, #4]
 470 0042 002B     		cmp	r3, #0
 471 0044 F9D1     		bne	.L38
 472              	.L36:
 466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 473              		.loc 1 466 0
 474 0046 0268     		ldr	r2, [r0]
 475 0048 9368     		ldr	r3, [r2, #8]
 476 004a 13F0010F 		tst	r3, #1
 477 004e 42D0     		beq	.L44
 471:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC | HAL_ADC_STATE_REG_OVR,
 478              		.loc 1 471 0
 479 0050 016C     		ldr	r1, [r0, #64]
 480 0052 264B     		ldr	r3, .L50+8
 481 0054 0B40     		ands	r3, r3, r1
 482 0056 43F48073 		orr	r3, r3, #256
 483 005a 0364     		str	r3, [r0, #64]
 477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 484              		.loc 1 477 0
 485 005c 5368     		ldr	r3, [r2, #4]
 486 005e 13F4806F 		tst	r3, #1024
 487 0062 05D0     		beq	.L39
 479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 488              		.loc 1 479 0
 489 0064 036C     		ldr	r3, [r0, #64]
 490 0066 23F44053 		bic	r3, r3, #12288
 491 006a 43F48053 		orr	r3, r3, #4096
 492 006e 0364     		str	r3, [r0, #64]
 493              	.L39:
 483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 494              		.loc 1 483 0
 495 0070 036C     		ldr	r3, [r0, #64]
 496 0072 13F4805F 		tst	r3, #4096
 497 0076 19D0     		beq	.L40
 486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 498              		.loc 1 486 0
 499 0078 436C     		ldr	r3, [r0, #68]
 500 007a 23F00603 		bic	r3, r3, #6
 501 007e 4364     		str	r3, [r0, #68]
 502              	.L41:
 497:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 503              		.loc 1 497 0
 504 0080 0023     		movs	r3, #0
 505 0082 80F83C30 		strb	r3, [r0, #60]
 501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 506              		.loc 1 501 0
 507 0086 6FF02203 		mvn	r3, #34
 508 008a 1360     		str	r3, [r2]
 504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 509              		.loc 1 504 0
 510 008c 184B     		ldr	r3, .L50+12
 511 008e 5B68     		ldr	r3, [r3, #4]
 512 0090 13F01F0F 		tst	r3, #31
 513 0094 0DD1     		bne	.L42
 507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 514              		.loc 1 507 0
 515 0096 0368     		ldr	r3, [r0]
 516 0098 9A68     		ldr	r2, [r3, #8]
 517 009a 12F0405F 		tst	r2, #805306368
 518 009e 1DD1     		bne	.L45
 510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 519              		.loc 1 510 0
 520 00a0 9A68     		ldr	r2, [r3, #8]
 521 00a2 42F08042 		orr	r2, r2, #1073741824
 522 00a6 9A60     		str	r2, [r3, #8]
 525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 523              		.loc 1 525 0
 524 00a8 0020     		movs	r0, #0
 525              	.LVL20:
 526 00aa 15E0     		b	.L35
 527              	.LVL21:
 528              	.L40:
 491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 529              		.loc 1 491 0
 530 00ac 0023     		movs	r3, #0
 531 00ae 4364     		str	r3, [r0, #68]
 532 00b0 E6E7     		b	.L41
 533              	.L42:
 516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 534              		.loc 1 516 0
 535 00b2 0368     		ldr	r3, [r0]
 536 00b4 0F4A     		ldr	r2, .L50+16
 537 00b6 9342     		cmp	r3, r2
 538 00b8 01D0     		beq	.L49
 525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 539              		.loc 1 525 0
 540 00ba 0020     		movs	r0, #0
 541              	.LVL22:
 542 00bc 0CE0     		b	.L35
 543              	.LVL23:
 544              	.L49:
 516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 545              		.loc 1 516 0 discriminator 1
 546 00be 9A68     		ldr	r2, [r3, #8]
 547 00c0 12F0405F 		tst	r2, #805306368
 548 00c4 0CD1     		bne	.L47
 519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 549              		.loc 1 519 0
 550 00c6 9A68     		ldr	r2, [r3, #8]
 551 00c8 42F08042 		orr	r2, r2, #1073741824
 552 00cc 9A60     		str	r2, [r3, #8]
 525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 553              		.loc 1 525 0
 554 00ce 0020     		movs	r0, #0
 555              	.LVL24:
 556 00d0 02E0     		b	.L35
 557              	.LVL25:
 558              	.L43:
 446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 559              		.loc 1 446 0
 560 00d2 0220     		movs	r0, #2
 561              	.LVL26:
 562 00d4 00E0     		b	.L35
 563              	.LVL27:
 564              	.L44:
 525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 565              		.loc 1 525 0
 566 00d6 0020     		movs	r0, #0
 567              	.LVL28:
 568              	.L35:
 526:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 569              		.loc 1 526 0
 570 00d8 02B0     		add	sp, sp, #8
 571              		.cfi_remember_state
 572              		.cfi_def_cfa_offset 0
 573              		@ sp needed
 574 00da 7047     		bx	lr
 575              	.LVL29:
 576              	.L45:
 577              		.cfi_restore_state
 525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 578              		.loc 1 525 0
 579 00dc 0020     		movs	r0, #0
 580              	.LVL30:
 581 00de FBE7     		b	.L35
 582              	.LVL31:
 583              	.L47:
 584 00e0 0020     		movs	r0, #0
 585              	.LVL32:
 586 00e2 F9E7     		b	.L35
 587              	.L51:
 588              		.align	2
 589              	.L50:
 590 00e4 00000000 		.word	SystemCoreClock
 591 00e8 83DE1B43 		.word	1125899907
 592 00ec FEF8FFFF 		.word	-1794
 593 00f0 00230140 		.word	1073816320
 594 00f4 00200140 		.word	1073815552
 595              		.cfi_endproc
 596              	.LFE142:
 598              		.section	.text.HAL_ADC_Stop,"ax",%progbits
 599              		.align	1
 600              		.global	HAL_ADC_Stop
 601              		.syntax unified
 602              		.thumb
 603              		.thumb_func
 604              		.fpu fpv5-d16
 606              	HAL_ADC_Stop:
 607              	.LFB143:
 539:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check the parameters */
 608              		.loc 1 539 0
 609              		.cfi_startproc
 610              		@ args = 0, pretend = 0, frame = 0
 611              		@ frame_needed = 0, uses_anonymous_args = 0
 612              		@ link register save eliminated.
 613              	.LVL33:
 544:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 614              		.loc 1 544 0
 615 0000 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 616 0004 012B     		cmp	r3, #1
 617 0006 17D0     		beq	.L55
 544:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 618              		.loc 1 544 0 is_stmt 0 discriminator 2
 619 0008 0123     		movs	r3, #1
 620 000a 80F83C30 		strb	r3, [r0, #60]
 548:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 621              		.loc 1 548 0 is_stmt 1 discriminator 2
 622 000e 0268     		ldr	r2, [r0]
 623 0010 9368     		ldr	r3, [r2, #8]
 624 0012 23F00103 		bic	r3, r3, #1
 625 0016 9360     		str	r3, [r2, #8]
 551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 626              		.loc 1 551 0 discriminator 2
 627 0018 0368     		ldr	r3, [r0]
 628 001a 9B68     		ldr	r3, [r3, #8]
 629 001c 13F0010F 		tst	r3, #1
 630 0020 05D1     		bne	.L54
 554:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 631              		.loc 1 554 0
 632 0022 026C     		ldr	r2, [r0, #64]
 633 0024 054B     		ldr	r3, .L56
 634 0026 1340     		ands	r3, r3, r2
 635 0028 43F00103 		orr	r3, r3, #1
 636 002c 0364     		str	r3, [r0, #64]
 637              	.L54:
 560:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 638              		.loc 1 560 0
 639 002e 0023     		movs	r3, #0
 640 0030 80F83C30 		strb	r3, [r0, #60]
 563:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 641              		.loc 1 563 0
 642 0034 1846     		mov	r0, r3
 643              	.LVL34:
 644 0036 7047     		bx	lr
 645              	.LVL35:
 646              	.L55:
 544:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 647              		.loc 1 544 0
 648 0038 0220     		movs	r0, #2
 649              	.LVL36:
 564:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 650              		.loc 1 564 0
 651 003a 7047     		bx	lr
 652              	.L57:
 653              		.align	2
 654              	.L56:
 655 003c FEEEFFFF 		.word	-4354
 656              		.cfi_endproc
 657              	.LFE143:
 659              		.section	.text.HAL_ADC_PollForConversion,"ax",%progbits
 660              		.align	1
 661              		.global	HAL_ADC_PollForConversion
 662              		.syntax unified
 663              		.thumb
 664              		.thumb_func
 665              		.fpu fpv5-d16
 667              	HAL_ADC_PollForConversion:
 668              	.LFB144:
 582:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   uint32_t tickstart = 0;
 669              		.loc 1 582 0
 670              		.cfi_startproc
 671              		@ args = 0, pretend = 0, frame = 0
 672              		@ frame_needed = 0, uses_anonymous_args = 0
 673              	.LVL37:
 591:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       HAL_IS_BIT_SET(hadc->Instance->CR2, ADC_CR2_DMA)    )
 674              		.loc 1 591 0
 675 0000 0368     		ldr	r3, [r0]
 676 0002 9A68     		ldr	r2, [r3, #8]
 677 0004 12F4806F 		tst	r2, #1024
 678 0008 03D0     		beq	.L59
 592:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 679              		.loc 1 592 0 discriminator 1
 680 000a 9B68     		ldr	r3, [r3, #8]
 591:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       HAL_IS_BIT_SET(hadc->Instance->CR2, ADC_CR2_DMA)    )
 681              		.loc 1 591 0 discriminator 1
 682 000c 13F4807F 		tst	r3, #256
 683 0010 1CD1     		bne	.L73
 684              	.L59:
 582:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   uint32_t tickstart = 0;
 685              		.loc 1 582 0
 686 0012 70B5     		push	{r4, r5, r6, lr}
 687              		.cfi_def_cfa_offset 16
 688              		.cfi_offset 4, -16
 689              		.cfi_offset 5, -12
 690              		.cfi_offset 6, -8
 691              		.cfi_offset 14, -4
 692 0014 0D46     		mov	r5, r1
 693 0016 0446     		mov	r4, r0
 604:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 694              		.loc 1 604 0
 695 0018 FFF7FEFF 		bl	HAL_GetTick
 696              	.LVL38:
 697 001c 0646     		mov	r6, r0
 698              	.LVL39:
 699              	.L62:
 607:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 700              		.loc 1 607 0
 701 001e 2368     		ldr	r3, [r4]
 702 0020 1A68     		ldr	r2, [r3]
 703 0022 12F0020F 		tst	r2, #2
 704 0026 1AD1     		bne	.L74
 610:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 705              		.loc 1 610 0
 706 0028 B5F1FF3F 		cmp	r5, #-1
 707 002c F7D0     		beq	.L62
 612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 708              		.loc 1 612 0
 709 002e 25B1     		cbz	r5, .L63
 612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 710              		.loc 1 612 0 is_stmt 0 discriminator 1
 711 0030 FFF7FEFF 		bl	HAL_GetTick
 712              	.LVL40:
 713 0034 801B     		subs	r0, r0, r6
 714 0036 A842     		cmp	r0, r5
 715 0038 F1D9     		bls	.L62
 716              	.L63:
 615:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         
 717              		.loc 1 615 0 is_stmt 1
 718 003a 236C     		ldr	r3, [r4, #64]
 719 003c 43F00403 		orr	r3, r3, #4
 720 0040 2364     		str	r3, [r4, #64]
 618:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         
 721              		.loc 1 618 0
 722 0042 0023     		movs	r3, #0
 723 0044 84F83C30 		strb	r3, [r4, #60]
 620:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 724              		.loc 1 620 0
 725 0048 0320     		movs	r0, #3
 726 004a 2DE0     		b	.L60
 727              	.LVL41:
 728              	.L73:
 729              		.cfi_def_cfa_offset 0
 730              		.cfi_restore 4
 731              		.cfi_restore 5
 732              		.cfi_restore 6
 733              		.cfi_restore 14
 595:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 734              		.loc 1 595 0
 735 004c 036C     		ldr	r3, [r0, #64]
 736 004e 43F02003 		orr	r3, r3, #32
 737 0052 0364     		str	r3, [r0, #64]
 598:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 738              		.loc 1 598 0
 739 0054 0023     		movs	r3, #0
 740 0056 80F83C30 		strb	r3, [r0, #60]
 600:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 741              		.loc 1 600 0
 742 005a 0120     		movs	r0, #1
 743              	.LVL42:
 653:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 744              		.loc 1 653 0
 745 005c 7047     		bx	lr
 746              	.LVL43:
 747              	.L74:
 748              		.cfi_def_cfa_offset 16
 749              		.cfi_offset 4, -16
 750              		.cfi_offset 5, -12
 751              		.cfi_offset 6, -8
 752              		.cfi_offset 14, -4
 626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 753              		.loc 1 626 0
 754 005e 6FF01202 		mvn	r2, #18
 755 0062 1A60     		str	r2, [r3]
 629:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 756              		.loc 1 629 0
 757 0064 236C     		ldr	r3, [r4, #64]
 758 0066 43F40073 		orr	r3, r3, #512
 759 006a 2364     		str	r3, [r4, #64]
 637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      (hadc->Init.ContinuousConvMode == DISABLE)            &&
 760              		.loc 1 637 0
 761 006c 2368     		ldr	r3, [r4]
 762 006e 9A68     		ldr	r2, [r3, #8]
 763 0070 12F0405F 		tst	r2, #805306368
 764 0074 17D1     		bne	.L66
 638:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      (HAL_IS_BIT_CLR(hadc->Instance->SQR1, ADC_SQR1_L) ||
 765              		.loc 1 638 0 discriminator 1
 766 0076 A269     		ldr	r2, [r4, #24]
 637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      (hadc->Init.ContinuousConvMode == DISABLE)            &&
 767              		.loc 1 637 0 discriminator 1
 768 0078 BAB9     		cbnz	r2, .L67
 639:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)  )   )
 769              		.loc 1 639 0
 770 007a DA6A     		ldr	r2, [r3, #44]
 638:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****      (HAL_IS_BIT_CLR(hadc->Instance->SQR1, ADC_SQR1_L) ||
 771              		.loc 1 638 0
 772 007c 12F4700F 		tst	r2, #15728640
 773 0080 03D0     		beq	.L65
 640:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 774              		.loc 1 640 0
 775 0082 9B68     		ldr	r3, [r3, #8]
 639:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)  )   )
 776              		.loc 1 639 0
 777 0084 13F4806F 		tst	r3, #1024
 778 0088 11D1     		bne	.L68
 779              	.L65:
 643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 780              		.loc 1 643 0
 781 008a 236C     		ldr	r3, [r4, #64]
 782 008c 23F48073 		bic	r3, r3, #256
 783 0090 2364     		str	r3, [r4, #64]
 645:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     { 
 784              		.loc 1 645 0
 785 0092 236C     		ldr	r3, [r4, #64]
 786 0094 13F4805F 		tst	r3, #4096
 787 0098 0BD1     		bne	.L69
 647:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 788              		.loc 1 647 0
 789 009a 236C     		ldr	r3, [r4, #64]
 790 009c 43F00103 		orr	r3, r3, #1
 791 00a0 2364     		str	r3, [r4, #64]
 652:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 792              		.loc 1 652 0
 793 00a2 0020     		movs	r0, #0
 794 00a4 00E0     		b	.L60
 795              	.L66:
 796 00a6 0020     		movs	r0, #0
 797              	.L60:
 653:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 798              		.loc 1 653 0
 799 00a8 70BD     		pop	{r4, r5, r6, pc}
 800              	.LVL44:
 801              	.L67:
 652:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 802              		.loc 1 652 0
 803 00aa 0020     		movs	r0, #0
 804 00ac FCE7     		b	.L60
 805              	.L68:
 806 00ae 0020     		movs	r0, #0
 807 00b0 FAE7     		b	.L60
 808              	.L69:
 809 00b2 0020     		movs	r0, #0
 810 00b4 F8E7     		b	.L60
 811              		.cfi_endproc
 812              	.LFE144:
 814              		.section	.text.HAL_ADC_PollForEvent,"ax",%progbits
 815              		.align	1
 816              		.global	HAL_ADC_PollForEvent
 817              		.syntax unified
 818              		.thumb
 819              		.thumb_func
 820              		.fpu fpv5-d16
 822              	HAL_ADC_PollForEvent:
 823              	.LFB145:
 667:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   uint32_t tickstart = 0;
 824              		.loc 1 667 0
 825              		.cfi_startproc
 826              		@ args = 0, pretend = 0, frame = 0
 827              		@ frame_needed = 0, uses_anonymous_args = 0
 828              	.LVL45:
 829 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 830              		.cfi_def_cfa_offset 24
 831              		.cfi_offset 3, -24
 832              		.cfi_offset 4, -20
 833              		.cfi_offset 5, -16
 834              		.cfi_offset 6, -12
 835              		.cfi_offset 7, -8
 836              		.cfi_offset 14, -4
 837 0002 0446     		mov	r4, r0
 838 0004 0D46     		mov	r5, r1
 839 0006 1646     		mov	r6, r2
 840              	.LVL46:
 675:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 841              		.loc 1 675 0
 842 0008 FFF7FEFF 		bl	HAL_GetTick
 843              	.LVL47:
 844 000c 0746     		mov	r7, r0
 845              	.LVL48:
 846              	.L77:
 678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 847              		.loc 1 678 0
 848 000e 2368     		ldr	r3, [r4]
 849 0010 1A68     		ldr	r2, [r3]
 850 0012 35EA0202 		bics	r2, r5, r2
 851 0016 11D0     		beq	.L83
 681:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 852              		.loc 1 681 0
 853 0018 B6F1FF3F 		cmp	r6, #-1
 854 001c F7D0     		beq	.L77
 683:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 855              		.loc 1 683 0
 856 001e 26B1     		cbz	r6, .L78
 683:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 857              		.loc 1 683 0 is_stmt 0 discriminator 1
 858 0020 FFF7FEFF 		bl	HAL_GetTick
 859              	.LVL49:
 860 0024 C01B     		subs	r0, r0, r7
 861 0026 B042     		cmp	r0, r6
 862 0028 F1D9     		bls	.L77
 863              	.L78:
 686:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         
 864              		.loc 1 686 0 is_stmt 1
 865 002a 236C     		ldr	r3, [r4, #64]
 866 002c 43F00403 		orr	r3, r3, #4
 867 0030 2364     		str	r3, [r4, #64]
 689:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         
 868              		.loc 1 689 0
 869 0032 0023     		movs	r3, #0
 870 0034 84F83C30 		strb	r3, [r4, #60]
 691:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 871              		.loc 1 691 0
 872 0038 0320     		movs	r0, #3
 873 003a 0DE0     		b	.L79
 874              	.L83:
 697:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 875              		.loc 1 697 0
 876 003c 012D     		cmp	r5, #1
 877 003e 0CD0     		beq	.L84
 709:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Set ADC error code to overrun */
 878              		.loc 1 709 0
 879 0040 226C     		ldr	r2, [r4, #64]
 880 0042 42F48062 		orr	r2, r2, #1024
 881 0046 2264     		str	r2, [r4, #64]
 711:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 882              		.loc 1 711 0
 883 0048 626C     		ldr	r2, [r4, #68]
 884 004a 42F00202 		orr	r2, r2, #2
 885 004e 6264     		str	r2, [r4, #68]
 714:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 886              		.loc 1 714 0
 887 0050 6FF02002 		mvn	r2, #32
 888 0054 1A60     		str	r2, [r3]
 718:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 889              		.loc 1 718 0
 890 0056 0020     		movs	r0, #0
 891              	.L79:
 719:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 892              		.loc 1 719 0
 893 0058 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 894              	.LVL50:
 895              	.L84:
 700:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       
 896              		.loc 1 700 0
 897 005a 226C     		ldr	r2, [r4, #64]
 898 005c 42F48032 		orr	r2, r2, #65536
 899 0060 2264     		str	r2, [r4, #64]
 703:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 900              		.loc 1 703 0
 901 0062 6FF00102 		mvn	r2, #1
 902 0066 1A60     		str	r2, [r3]
 718:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 903              		.loc 1 718 0
 904 0068 0020     		movs	r0, #0
 905 006a F5E7     		b	.L79
 906              		.cfi_endproc
 907              	.LFE145:
 909              		.section	.text.HAL_ADC_Start_IT,"ax",%progbits
 910              		.align	1
 911              		.global	HAL_ADC_Start_IT
 912              		.syntax unified
 913              		.thumb
 914              		.thumb_func
 915              		.fpu fpv5-d16
 917              	HAL_ADC_Start_IT:
 918              	.LFB146:
 729:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __IO uint32_t counter = 0;
 919              		.loc 1 729 0
 920              		.cfi_startproc
 921              		@ args = 0, pretend = 0, frame = 8
 922              		@ frame_needed = 0, uses_anonymous_args = 0
 923              		@ link register save eliminated.
 924              	.LVL51:
 925 0000 82B0     		sub	sp, sp, #8
 926              		.cfi_def_cfa_offset 8
 730:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 927              		.loc 1 730 0
 928 0002 0023     		movs	r3, #0
 929 0004 0193     		str	r3, [sp, #4]
 737:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 930              		.loc 1 737 0
 931 0006 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 932 000a 012B     		cmp	r3, #1
 933 000c 66D0     		beq	.L94
 737:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 934              		.loc 1 737 0 is_stmt 0 discriminator 2
 935 000e 0123     		movs	r3, #1
 936 0010 80F83C30 		strb	r3, [r0, #60]
 742:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {  
 937              		.loc 1 742 0 is_stmt 1 discriminator 2
 938 0014 0368     		ldr	r3, [r0]
 939 0016 9A68     		ldr	r2, [r3, #8]
 940 0018 12F0010F 		tst	r2, #1
 941 001c 13D1     		bne	.L87
 745:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 942              		.loc 1 745 0
 943 001e 9A68     		ldr	r2, [r3, #8]
 944 0020 42F00102 		orr	r2, r2, #1
 945 0024 9A60     		str	r2, [r3, #8]
 749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     while(counter != 0)
 946              		.loc 1 749 0
 947 0026 324B     		ldr	r3, .L101
 948 0028 1B68     		ldr	r3, [r3]
 949 002a 324A     		ldr	r2, .L101+4
 950 002c A2FB0323 		umull	r2, r3, r2, r3
 951 0030 9B0C     		lsrs	r3, r3, #18
 952 0032 03EB4303 		add	r3, r3, r3, lsl #1
 953 0036 0193     		str	r3, [sp, #4]
 750:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 954              		.loc 1 750 0
 955 0038 02E0     		b	.L88
 956              	.L89:
 752:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 957              		.loc 1 752 0
 958 003a 019B     		ldr	r3, [sp, #4]
 959 003c 013B     		subs	r3, r3, #1
 960 003e 0193     		str	r3, [sp, #4]
 961              	.L88:
 750:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 962              		.loc 1 750 0
 963 0040 019B     		ldr	r3, [sp, #4]
 964 0042 002B     		cmp	r3, #0
 965 0044 F9D1     		bne	.L89
 966              	.L87:
 757:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 967              		.loc 1 757 0
 968 0046 0268     		ldr	r2, [r0]
 969 0048 9368     		ldr	r3, [r2, #8]
 970 004a 13F0010F 		tst	r3, #1
 971 004e 47D0     		beq	.L95
 762:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC | HAL_ADC_STATE_REG_OVR,
 972              		.loc 1 762 0
 973 0050 016C     		ldr	r1, [r0, #64]
 974 0052 294B     		ldr	r3, .L101+8
 975 0054 0B40     		ands	r3, r3, r1
 976 0056 43F48073 		orr	r3, r3, #256
 977 005a 0364     		str	r3, [r0, #64]
 768:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 978              		.loc 1 768 0
 979 005c 5368     		ldr	r3, [r2, #4]
 980 005e 13F4806F 		tst	r3, #1024
 981 0062 05D0     		beq	.L90
 770:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 982              		.loc 1 770 0
 983 0064 036C     		ldr	r3, [r0, #64]
 984 0066 23F44053 		bic	r3, r3, #12288
 985 006a 43F48053 		orr	r3, r3, #4096
 986 006e 0364     		str	r3, [r0, #64]
 987              	.L90:
 774:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 988              		.loc 1 774 0
 989 0070 036C     		ldr	r3, [r0, #64]
 990 0072 13F4805F 		tst	r3, #4096
 991 0076 1ED0     		beq	.L91
 777:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 992              		.loc 1 777 0
 993 0078 436C     		ldr	r3, [r0, #68]
 994 007a 23F00603 		bic	r3, r3, #6
 995 007e 4364     		str	r3, [r0, #68]
 996              	.L92:
 788:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 997              		.loc 1 788 0
 998 0080 0023     		movs	r3, #0
 999 0082 80F83C30 		strb	r3, [r0, #60]
 792:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 1000              		.loc 1 792 0
 1001 0086 6FF02203 		mvn	r3, #34
 1002 008a 1360     		str	r3, [r2]
 795:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 1003              		.loc 1 795 0
 1004 008c 0268     		ldr	r2, [r0]
 1005 008e 5168     		ldr	r1, [r2, #4]
 1006 0090 1A4B     		ldr	r3, .L101+12
 1007 0092 0B43     		orrs	r3, r3, r1
 1008 0094 5360     		str	r3, [r2, #4]
 798:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 1009              		.loc 1 798 0
 1010 0096 1A4B     		ldr	r3, .L101+16
 1011 0098 5B68     		ldr	r3, [r3, #4]
 1012 009a 13F01F0F 		tst	r3, #31
 1013 009e 0DD1     		bne	.L93
 801:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 1014              		.loc 1 801 0
 1015 00a0 0368     		ldr	r3, [r0]
 1016 00a2 9A68     		ldr	r2, [r3, #8]
 1017 00a4 12F0405F 		tst	r2, #805306368
 1018 00a8 1DD1     		bne	.L96
 804:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 1019              		.loc 1 804 0
 1020 00aa 9A68     		ldr	r2, [r3, #8]
 1021 00ac 42F08042 		orr	r2, r2, #1073741824
 1022 00b0 9A60     		str	r2, [r3, #8]
 819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 1023              		.loc 1 819 0
 1024 00b2 0020     		movs	r0, #0
 1025              	.LVL52:
 1026 00b4 15E0     		b	.L86
 1027              	.LVL53:
 1028              	.L91:
 782:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 1029              		.loc 1 782 0
 1030 00b6 0023     		movs	r3, #0
 1031 00b8 4364     		str	r3, [r0, #68]
 1032 00ba E1E7     		b	.L92
 1033              	.L93:
 810:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 1034              		.loc 1 810 0
 1035 00bc 0368     		ldr	r3, [r0]
 1036 00be 114A     		ldr	r2, .L101+20
 1037 00c0 9342     		cmp	r3, r2
 1038 00c2 01D0     		beq	.L100
 819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 1039              		.loc 1 819 0
 1040 00c4 0020     		movs	r0, #0
 1041              	.LVL54:
 1042 00c6 0CE0     		b	.L86
 1043              	.LVL55:
 1044              	.L100:
 810:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 1045              		.loc 1 810 0 discriminator 1
 1046 00c8 9A68     		ldr	r2, [r3, #8]
 1047 00ca 12F0405F 		tst	r2, #805306368
 1048 00ce 0CD1     		bne	.L98
 813:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 1049              		.loc 1 813 0
 1050 00d0 9A68     		ldr	r2, [r3, #8]
 1051 00d2 42F08042 		orr	r2, r2, #1073741824
 1052 00d6 9A60     		str	r2, [r3, #8]
 819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 1053              		.loc 1 819 0
 1054 00d8 0020     		movs	r0, #0
 1055              	.LVL56:
 1056 00da 02E0     		b	.L86
 1057              	.LVL57:
 1058              	.L94:
 737:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 1059              		.loc 1 737 0
 1060 00dc 0220     		movs	r0, #2
 1061              	.LVL58:
 1062 00de 00E0     		b	.L86
 1063              	.LVL59:
 1064              	.L95:
 819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 1065              		.loc 1 819 0
 1066 00e0 0020     		movs	r0, #0
 1067              	.LVL60:
 1068              	.L86:
 820:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 1069              		.loc 1 820 0
 1070 00e2 02B0     		add	sp, sp, #8
 1071              		.cfi_remember_state
 1072              		.cfi_def_cfa_offset 0
 1073              		@ sp needed
 1074 00e4 7047     		bx	lr
 1075              	.LVL61:
 1076              	.L96:
 1077              		.cfi_restore_state
 819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 1078              		.loc 1 819 0
 1079 00e6 0020     		movs	r0, #0
 1080              	.LVL62:
 1081 00e8 FBE7     		b	.L86
 1082              	.LVL63:
 1083              	.L98:
 1084 00ea 0020     		movs	r0, #0
 1085              	.LVL64:
 1086 00ec F9E7     		b	.L86
 1087              	.L102:
 1088 00ee 00BF     		.align	2
 1089              	.L101:
 1090 00f0 00000000 		.word	SystemCoreClock
 1091 00f4 83DE1B43 		.word	1125899907
 1092 00f8 FEF8FFFF 		.word	-1794
 1093 00fc 20000004 		.word	67108896
 1094 0100 00230140 		.word	1073816320
 1095 0104 00200140 		.word	1073815552
 1096              		.cfi_endproc
 1097              	.LFE146:
 1099              		.section	.text.HAL_ADC_Stop_IT,"ax",%progbits
 1100              		.align	1
 1101              		.global	HAL_ADC_Stop_IT
 1102              		.syntax unified
 1103              		.thumb
 1104              		.thumb_func
 1105              		.fpu fpv5-d16
 1107              	HAL_ADC_Stop_IT:
 1108              	.LFB147:
 832:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check the parameters */
 1109              		.loc 1 832 0
 1110              		.cfi_startproc
 1111              		@ args = 0, pretend = 0, frame = 0
 1112              		@ frame_needed = 0, uses_anonymous_args = 0
 1113              		@ link register save eliminated.
 1114              	.LVL65:
 837:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 1115              		.loc 1 837 0
 1116 0000 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 1117 0004 012B     		cmp	r3, #1
 1118 0006 1BD0     		beq	.L106
 837:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 1119              		.loc 1 837 0 is_stmt 0 discriminator 2
 1120 0008 0123     		movs	r3, #1
 1121 000a 80F83C30 		strb	r3, [r0, #60]
 841:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 1122              		.loc 1 841 0 is_stmt 1 discriminator 2
 1123 000e 0268     		ldr	r2, [r0]
 1124 0010 9368     		ldr	r3, [r2, #8]
 1125 0012 23F00103 		bic	r3, r3, #1
 1126 0016 9360     		str	r3, [r2, #8]
 844:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 1127              		.loc 1 844 0 discriminator 2
 1128 0018 0368     		ldr	r3, [r0]
 1129 001a 9A68     		ldr	r2, [r3, #8]
 1130 001c 12F0010F 		tst	r2, #1
 1131 0020 09D1     		bne	.L105
 847:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 1132              		.loc 1 847 0
 1133 0022 5968     		ldr	r1, [r3, #4]
 1134 0024 074A     		ldr	r2, .L107
 1135 0026 0A40     		ands	r2, r2, r1
 1136 0028 5A60     		str	r2, [r3, #4]
 850:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 1137              		.loc 1 850 0
 1138 002a 026C     		ldr	r2, [r0, #64]
 1139 002c 064B     		ldr	r3, .L107+4
 1140 002e 1340     		ands	r3, r3, r2
 1141 0030 43F00103 		orr	r3, r3, #1
 1142 0034 0364     		str	r3, [r0, #64]
 1143              	.L105:
 856:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 1144              		.loc 1 856 0
 1145 0036 0023     		movs	r3, #0
 1146 0038 80F83C30 		strb	r3, [r0, #60]
 859:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 1147              		.loc 1 859 0
 1148 003c 1846     		mov	r0, r3
 1149              	.LVL66:
 1150 003e 7047     		bx	lr
 1151              	.LVL67:
 1152              	.L106:
 837:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 1153              		.loc 1 837 0
 1154 0040 0220     		movs	r0, #2
 1155              	.LVL68:
 860:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 1156              		.loc 1 860 0
 1157 0042 7047     		bx	lr
 1158              	.L108:
 1159              		.align	2
 1160              	.L107:
 1161 0044 DFFFFFFB 		.word	-67108897
 1162 0048 FEEEFFFF 		.word	-4354
 1163              		.cfi_endproc
 1164              	.LFE147:
 1166              		.section	.text.HAL_ADC_Start_DMA,"ax",%progbits
 1167              		.align	1
 1168              		.global	HAL_ADC_Start_DMA
 1169              		.syntax unified
 1170              		.thumb
 1171              		.thumb_func
 1172              		.fpu fpv5-d16
 1174              	HAL_ADC_Start_DMA:
 1175              	.LFB149:
1014:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __IO uint32_t counter = 0;
 1176              		.loc 1 1014 0
 1177              		.cfi_startproc
 1178              		@ args = 0, pretend = 0, frame = 8
 1179              		@ frame_needed = 0, uses_anonymous_args = 0
 1180              	.LVL69:
 1181 0000 30B5     		push	{r4, r5, lr}
 1182              		.cfi_def_cfa_offset 12
 1183              		.cfi_offset 4, -12
 1184              		.cfi_offset 5, -8
 1185              		.cfi_offset 14, -4
 1186 0002 83B0     		sub	sp, sp, #12
 1187              		.cfi_def_cfa_offset 24
1015:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 1188              		.loc 1 1015 0
 1189 0004 0023     		movs	r3, #0
 1190 0006 0193     		str	r3, [sp, #4]
1022:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 1191              		.loc 1 1022 0
 1192 0008 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 1193 000c 012B     		cmp	r3, #1
 1194 000e 7ED0     		beq	.L118
1022:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 1195              		.loc 1 1022 0 is_stmt 0 discriminator 2
 1196 0010 0123     		movs	r3, #1
 1197 0012 80F83C30 		strb	r3, [r0, #60]
1027:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {  
 1198              		.loc 1 1027 0 is_stmt 1 discriminator 2
 1199 0016 0468     		ldr	r4, [r0]
 1200 0018 A368     		ldr	r3, [r4, #8]
 1201 001a 13F0010F 		tst	r3, #1
 1202 001e 13D1     		bne	.L111
1030:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 1203              		.loc 1 1030 0
 1204 0020 A368     		ldr	r3, [r4, #8]
 1205 0022 43F00103 		orr	r3, r3, #1
 1206 0026 A360     		str	r3, [r4, #8]
1034:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     while(counter != 0)
 1207              		.loc 1 1034 0
 1208 0028 3D4B     		ldr	r3, .L125
 1209 002a 1C68     		ldr	r4, [r3]
 1210 002c 3D4B     		ldr	r3, .L125+4
 1211 002e A3FB0434 		umull	r3, r4, r3, r4
 1212 0032 A40C     		lsrs	r4, r4, #18
 1213 0034 04EB4404 		add	r4, r4, r4, lsl #1
 1214 0038 0194     		str	r4, [sp, #4]
1035:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 1215              		.loc 1 1035 0
 1216 003a 02E0     		b	.L112
 1217              	.L113:
1037:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 1218              		.loc 1 1037 0
 1219 003c 019C     		ldr	r4, [sp, #4]
 1220 003e 013C     		subs	r4, r4, #1
 1221 0040 0194     		str	r4, [sp, #4]
 1222              	.L112:
1035:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 1223              		.loc 1 1035 0
 1224 0042 019C     		ldr	r4, [sp, #4]
 1225 0044 002C     		cmp	r4, #0
 1226 0046 F9D1     		bne	.L113
 1227              	.L111:
1042:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 1228              		.loc 1 1042 0
 1229 0048 0368     		ldr	r3, [r0]
 1230 004a 9C68     		ldr	r4, [r3, #8]
 1231 004c 14F0010F 		tst	r4, #1
 1232 0050 5FD0     		beq	.L119
1047:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_READY | HAL_ADC_STATE_REG_EOC | HAL_ADC_STATE_REG_OVR,
 1233              		.loc 1 1047 0
 1234 0052 056C     		ldr	r5, [r0, #64]
 1235 0054 344C     		ldr	r4, .L125+8
 1236 0056 2C40     		ands	r4, r4, r5
 1237 0058 44F48074 		orr	r4, r4, #256
 1238 005c 0464     		str	r4, [r0, #64]
1053:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 1239              		.loc 1 1053 0
 1240 005e 5B68     		ldr	r3, [r3, #4]
 1241 0060 13F4806F 		tst	r3, #1024
 1242 0064 05D0     		beq	.L114
1055:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 1243              		.loc 1 1055 0
 1244 0066 036C     		ldr	r3, [r0, #64]
 1245 0068 23F44053 		bic	r3, r3, #12288
 1246 006c 43F48053 		orr	r3, r3, #4096
 1247 0070 0364     		str	r3, [r0, #64]
 1248              	.L114:
1059:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 1249              		.loc 1 1059 0
 1250 0072 036C     		ldr	r3, [r0, #64]
 1251 0074 13F4805F 		tst	r3, #4096
 1252 0078 36D0     		beq	.L115
1062:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 1253              		.loc 1 1062 0
 1254 007a 436C     		ldr	r3, [r0, #68]
 1255 007c 23F00603 		bic	r3, r3, #6
 1256 0080 4364     		str	r3, [r0, #68]
 1257              	.L116:
 1258 0082 1346     		mov	r3, r2
 1259 0084 0446     		mov	r4, r0
1073:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 1260              		.loc 1 1073 0
 1261 0086 0022     		movs	r2, #0
 1262              	.LVL70:
 1263 0088 80F83C20 		strb	r2, [r0, #60]
1076:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 1264              		.loc 1 1076 0
 1265 008c 826B     		ldr	r2, [r0, #56]
 1266 008e 2748     		ldr	r0, .L125+12
 1267              	.LVL71:
 1268 0090 D063     		str	r0, [r2, #60]
1079:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 1269              		.loc 1 1079 0
 1270 0092 A26B     		ldr	r2, [r4, #56]
 1271 0094 2648     		ldr	r0, .L125+16
 1272 0096 1064     		str	r0, [r2, #64]
1082:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 1273              		.loc 1 1082 0
 1274 0098 A26B     		ldr	r2, [r4, #56]
 1275 009a 2648     		ldr	r0, .L125+20
 1276 009c D064     		str	r0, [r2, #76]
1090:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 1277              		.loc 1 1090 0
 1278 009e 2268     		ldr	r2, [r4]
 1279 00a0 6FF02200 		mvn	r0, #34
 1280 00a4 1060     		str	r0, [r2]
1093:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 1281              		.loc 1 1093 0
 1282 00a6 2568     		ldr	r5, [r4]
 1283 00a8 6868     		ldr	r0, [r5, #4]
 1284 00aa 40F08060 		orr	r0, r0, #67108864
 1285 00ae 6860     		str	r0, [r5, #4]
1096:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 1286              		.loc 1 1096 0
 1287 00b0 2568     		ldr	r5, [r4]
 1288 00b2 A868     		ldr	r0, [r5, #8]
 1289 00b4 40F48070 		orr	r0, r0, #256
 1290 00b8 A860     		str	r0, [r5, #8]
1099:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 1291              		.loc 1 1099 0
 1292 00ba 2068     		ldr	r0, [r4]
 1293 00bc 0A46     		mov	r2, r1
 1294 00be 00F14C01 		add	r1, r0, #76
 1295              	.LVL72:
 1296 00c2 A06B     		ldr	r0, [r4, #56]
 1297 00c4 FFF7FEFF 		bl	HAL_DMA_Start_IT
 1298              	.LVL73:
1102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 1299              		.loc 1 1102 0
 1300 00c8 1B4B     		ldr	r3, .L125+24
 1301 00ca 5B68     		ldr	r3, [r3, #4]
 1302 00cc 13F01F0F 		tst	r3, #31
 1303 00d0 0DD1     		bne	.L117
1105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 1304              		.loc 1 1105 0
 1305 00d2 2368     		ldr	r3, [r4]
 1306 00d4 9A68     		ldr	r2, [r3, #8]
 1307 00d6 12F0405F 		tst	r2, #805306368
 1308 00da 1DD1     		bne	.L120
1108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 1309              		.loc 1 1108 0
 1310 00dc 9A68     		ldr	r2, [r3, #8]
 1311 00de 42F08042 		orr	r2, r2, #1073741824
 1312 00e2 9A60     		str	r2, [r3, #8]
1123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 1313              		.loc 1 1123 0
 1314 00e4 0020     		movs	r0, #0
 1315 00e6 15E0     		b	.L110
 1316              	.LVL74:
 1317              	.L115:
1067:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 1318              		.loc 1 1067 0
 1319 00e8 0023     		movs	r3, #0
 1320 00ea 4364     		str	r3, [r0, #68]
 1321 00ec C9E7     		b	.L116
 1322              	.LVL75:
 1323              	.L117:
1114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 1324              		.loc 1 1114 0
 1325 00ee 2368     		ldr	r3, [r4]
 1326 00f0 124A     		ldr	r2, .L125+28
 1327 00f2 9342     		cmp	r3, r2
 1328 00f4 01D0     		beq	.L124
1123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 1329              		.loc 1 1123 0
 1330 00f6 0020     		movs	r0, #0
 1331 00f8 0CE0     		b	.L110
 1332              	.L124:
1114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 1333              		.loc 1 1114 0 discriminator 1
 1334 00fa 9A68     		ldr	r2, [r3, #8]
 1335 00fc 12F0405F 		tst	r2, #805306368
 1336 0100 0CD1     		bne	.L122
1117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 1337              		.loc 1 1117 0
 1338 0102 9A68     		ldr	r2, [r3, #8]
 1339 0104 42F08042 		orr	r2, r2, #1073741824
 1340 0108 9A60     		str	r2, [r3, #8]
1123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 1341              		.loc 1 1123 0
 1342 010a 0020     		movs	r0, #0
 1343 010c 02E0     		b	.L110
 1344              	.LVL76:
 1345              	.L118:
1022:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 1346              		.loc 1 1022 0
 1347 010e 0220     		movs	r0, #2
 1348              	.LVL77:
 1349 0110 00E0     		b	.L110
 1350              	.LVL78:
 1351              	.L119:
1123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 1352              		.loc 1 1123 0
 1353 0112 0020     		movs	r0, #0
 1354              	.LVL79:
 1355              	.L110:
1124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 1356              		.loc 1 1124 0
 1357 0114 03B0     		add	sp, sp, #12
 1358              		.cfi_remember_state
 1359              		.cfi_def_cfa_offset 12
 1360              		@ sp needed
 1361 0116 30BD     		pop	{r4, r5, pc}
 1362              	.LVL80:
 1363              	.L120:
 1364              		.cfi_restore_state
1123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 1365              		.loc 1 1123 0
 1366 0118 0020     		movs	r0, #0
 1367 011a FBE7     		b	.L110
 1368              	.L122:
 1369 011c 0020     		movs	r0, #0
 1370 011e F9E7     		b	.L110
 1371              	.L126:
 1372              		.align	2
 1373              	.L125:
 1374 0120 00000000 		.word	SystemCoreClock
 1375 0124 83DE1B43 		.word	1125899907
 1376 0128 FEF8FFFF 		.word	-1794
 1377 012c 00000000 		.word	ADC_DMAConvCplt
 1378 0130 00000000 		.word	ADC_DMAHalfConvCplt
 1379 0134 00000000 		.word	ADC_DMAError
 1380 0138 00230140 		.word	1073816320
 1381 013c 00200140 		.word	1073815552
 1382              		.cfi_endproc
 1383              	.LFE149:
 1385              		.section	.text.HAL_ADC_Stop_DMA,"ax",%progbits
 1386              		.align	1
 1387              		.global	HAL_ADC_Stop_DMA
 1388              		.syntax unified
 1389              		.thumb
 1390              		.thumb_func
 1391              		.fpu fpv5-d16
 1393              	HAL_ADC_Stop_DMA:
 1394              	.LFB150:
1133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 1395              		.loc 1 1133 0
 1396              		.cfi_startproc
 1397              		@ args = 0, pretend = 0, frame = 0
 1398              		@ frame_needed = 0, uses_anonymous_args = 0
 1399              	.LVL81:
1140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 1400              		.loc 1 1140 0
 1401 0000 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 1402 0004 012B     		cmp	r3, #1
 1403 0006 26D0     		beq	.L130
1133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   HAL_StatusTypeDef tmp_hal_status = HAL_OK;
 1404              		.loc 1 1133 0 discriminator 2
 1405 0008 10B5     		push	{r4, lr}
 1406              		.cfi_def_cfa_offset 8
 1407              		.cfi_offset 4, -8
 1408              		.cfi_offset 14, -4
 1409 000a 0446     		mov	r4, r0
1140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 1410              		.loc 1 1140 0 discriminator 2
 1411 000c 0123     		movs	r3, #1
 1412 000e 80F83C30 		strb	r3, [r0, #60]
1144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 1413              		.loc 1 1144 0 discriminator 2
 1414 0012 0268     		ldr	r2, [r0]
 1415 0014 9368     		ldr	r3, [r2, #8]
 1416 0016 23F00103 		bic	r3, r3, #1
 1417 001a 9360     		str	r3, [r2, #8]
1147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 1418              		.loc 1 1147 0 discriminator 2
 1419 001c 0368     		ldr	r3, [r0]
 1420 001e 9A68     		ldr	r2, [r3, #8]
 1421 0020 12F0010F 		tst	r2, #1
 1422 0024 04D0     		beq	.L136
1134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 1423              		.loc 1 1134 0
 1424 0026 0020     		movs	r0, #0
 1425              	.LVL82:
 1426              	.L129:
1166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 1427              		.loc 1 1166 0
 1428 0028 0023     		movs	r3, #0
 1429 002a 84F83C30 		strb	r3, [r4, #60]
1170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 1430              		.loc 1 1170 0
 1431 002e 10BD     		pop	{r4, pc}
 1432              	.LVL83:
 1433              	.L136:
1150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 1434              		.loc 1 1150 0
 1435 0030 9A68     		ldr	r2, [r3, #8]
 1436 0032 22F48072 		bic	r2, r2, #256
 1437 0036 9A60     		str	r2, [r3, #8]
1154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 1438              		.loc 1 1154 0
 1439 0038 806B     		ldr	r0, [r0, #56]
 1440              	.LVL84:
 1441 003a FFF7FEFF 		bl	HAL_DMA_Abort
 1442              	.LVL85:
1157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 1443              		.loc 1 1157 0
 1444 003e 2268     		ldr	r2, [r4]
 1445 0040 5368     		ldr	r3, [r2, #4]
 1446 0042 23F08063 		bic	r3, r3, #67108864
 1447 0046 5360     		str	r3, [r2, #4]
1160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****                       HAL_ADC_STATE_REG_BUSY | HAL_ADC_STATE_INJ_BUSY,
 1448              		.loc 1 1160 0
 1449 0048 226C     		ldr	r2, [r4, #64]
 1450 004a 044B     		ldr	r3, .L137
 1451 004c 1340     		ands	r3, r3, r2
 1452 004e 43F00103 		orr	r3, r3, #1
 1453 0052 2364     		str	r3, [r4, #64]
 1454 0054 E8E7     		b	.L129
 1455              	.LVL86:
 1456              	.L130:
 1457              		.cfi_def_cfa_offset 0
 1458              		.cfi_restore 4
 1459              		.cfi_restore 14
1140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 1460              		.loc 1 1140 0
 1461 0056 0220     		movs	r0, #2
 1462              	.LVL87:
1170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 1463              		.loc 1 1170 0
 1464 0058 7047     		bx	lr
 1465              	.L138:
 1466 005a 00BF     		.align	2
 1467              	.L137:
 1468 005c FEEEFFFF 		.word	-4354
 1469              		.cfi_endproc
 1470              	.LFE150:
 1472              		.section	.text.HAL_ADC_GetValue,"ax",%progbits
 1473              		.align	1
 1474              		.global	HAL_ADC_GetValue
 1475              		.syntax unified
 1476              		.thumb
 1477              		.thumb_func
 1478              		.fpu fpv5-d16
 1480              	HAL_ADC_GetValue:
 1481              	.LFB151:
1179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Return the selected ADC converted value */ 
 1482              		.loc 1 1179 0
 1483              		.cfi_startproc
 1484              		@ args = 0, pretend = 0, frame = 0
 1485              		@ frame_needed = 0, uses_anonymous_args = 0
 1486              		@ link register save eliminated.
 1487              	.LVL88:
1181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 1488              		.loc 1 1181 0
 1489 0000 0368     		ldr	r3, [r0]
 1490 0002 D86C     		ldr	r0, [r3, #76]
 1491              	.LVL89:
1182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 1492              		.loc 1 1182 0
 1493 0004 7047     		bx	lr
 1494              		.cfi_endproc
 1495              	.LFE151:
 1497              		.section	.text.HAL_ADC_ConvCpltCallback,"ax",%progbits
 1498              		.align	1
 1499              		.weak	HAL_ADC_ConvCpltCallback
 1500              		.syntax unified
 1501              		.thumb
 1502              		.thumb_func
 1503              		.fpu fpv5-d16
 1505              	HAL_ADC_ConvCpltCallback:
 1506              	.LFB152:
1191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
 1507              		.loc 1 1191 0
 1508              		.cfi_startproc
 1509              		@ args = 0, pretend = 0, frame = 0
 1510              		@ frame_needed = 0, uses_anonymous_args = 0
 1511              		@ link register save eliminated.
 1512              	.LVL90:
1197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 1513              		.loc 1 1197 0
 1514 0000 7047     		bx	lr
 1515              		.cfi_endproc
 1516              	.LFE152:
 1518              		.section	.text.ADC_DMAConvCplt,"ax",%progbits
 1519              		.align	1
 1520              		.syntax unified
 1521              		.thumb
 1522              		.thumb_func
 1523              		.fpu fpv5-d16
 1525              	ADC_DMAConvCplt:
 1526              	.LFB161:
1587:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1588:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
1589:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  DMA transfer complete callback. 
1590:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
1591:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *                the configuration information for the specified DMA module.
1592:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval None
1593:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1594:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** static void ADC_DMAConvCplt(DMA_HandleTypeDef *hdma)   
1595:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
 1527              		.loc 1 1595 0
 1528              		.cfi_startproc
 1529              		@ args = 0, pretend = 0, frame = 0
 1530              		@ frame_needed = 0, uses_anonymous_args = 0
 1531              	.LVL91:
 1532 0000 08B5     		push	{r3, lr}
 1533              		.cfi_def_cfa_offset 8
 1534              		.cfi_offset 3, -8
 1535              		.cfi_offset 14, -4
1596:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Retrieve ADC handle corresponding to current DMA handle */
1597:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   ADC_HandleTypeDef* hadc = ( ADC_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 1536              		.loc 1 1597 0
 1537 0002 836B     		ldr	r3, [r0, #56]
 1538              	.LVL92:
1598:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
1599:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Update state machine on conversion status if not in error state */
1600:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_ERROR_INTERNAL | HAL_ADC_STATE_ERROR_DMA))
 1539              		.loc 1 1600 0
 1540 0004 1A6C     		ldr	r2, [r3, #64]
 1541 0006 12F0500F 		tst	r2, #80
 1542 000a 03D0     		beq	.L147
1601:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
1602:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Update ADC state machine */
1603:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     SET_BIT(hadc->State, HAL_ADC_STATE_REG_EOC);
1604:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1605:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Determine whether any further conversion upcoming on group regular   */
1606:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* by external trigger, continuous mode or scan sequence on going.      */
1607:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Note: On STM32F7, there is no independent flag of end of sequence.   */
1608:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /*       The test of scan sequence on going is done either with scan    */
1609:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /*       sequence disabled or with end of conversion flag set to        */
1610:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /*       of end of sequence.                                            */
1611:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     if(ADC_IS_SOFTWARE_START_REGULAR(hadc)                   &&
1612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (hadc->Init.ContinuousConvMode == DISABLE)            &&
1613:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (HAL_IS_BIT_CLR(hadc->Instance->SQR1, ADC_SQR1_L) || 
1614:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)  )   )
1615:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
1616:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Disable ADC end of single conversion interrupt on group regular */
1617:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Note: Overrun interrupt was enabled with EOC interrupt in          */
1618:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* HAL_ADC_Start_IT(), but is not disabled here because can be used   */
1619:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* by overrun IRQ process below.                                      */
1620:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       __HAL_ADC_DISABLE_IT(hadc, ADC_IT_EOC);
1621:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       
1622:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       /* Set ADC state */
1623:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       CLEAR_BIT(hadc->State, HAL_ADC_STATE_REG_BUSY);   
1624:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       
1625:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       if (HAL_IS_BIT_CLR(hadc->State, HAL_ADC_STATE_INJ_BUSY))
1626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
1627:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         SET_BIT(hadc->State, HAL_ADC_STATE_READY);
1628:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
1629:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
1630:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
1631:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Conversion complete callback */
1632:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     HAL_ADC_ConvCpltCallback(hadc);
1633:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
1634:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   else
1635:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
1636:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     /* Call DMA error callback */
1637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     hadc->DMA_Handle->XferErrorCallback(hdma);
 1543              		.loc 1 1637 0
 1544 000c 9B6B     		ldr	r3, [r3, #56]
 1545              	.LVL93:
 1546 000e DB6C     		ldr	r3, [r3, #76]
 1547 0010 9847     		blx	r3
 1548              	.LVL94:
 1549              	.L141:
1638:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
1639:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 1550              		.loc 1 1639 0
 1551 0012 08BD     		pop	{r3, pc}
 1552              	.LVL95:
 1553              	.L147:
1603:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 1554              		.loc 1 1603 0
 1555 0014 1A6C     		ldr	r2, [r3, #64]
 1556 0016 42F40072 		orr	r2, r2, #512
 1557 001a 1A64     		str	r2, [r3, #64]
1611:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (hadc->Init.ContinuousConvMode == DISABLE)            &&
 1558              		.loc 1 1611 0
 1559 001c 1A68     		ldr	r2, [r3]
 1560 001e 9168     		ldr	r1, [r2, #8]
 1561 0020 11F0405F 		tst	r1, #805306368
 1562 0024 19D1     		bne	.L143
1612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (HAL_IS_BIT_CLR(hadc->Instance->SQR1, ADC_SQR1_L) || 
 1563              		.loc 1 1612 0 discriminator 1
 1564 0026 9969     		ldr	r1, [r3, #24]
1611:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (hadc->Init.ContinuousConvMode == DISABLE)            &&
 1565              		.loc 1 1611 0 discriminator 1
 1566 0028 B9B9     		cbnz	r1, .L143
1613:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)  )   )
 1567              		.loc 1 1613 0
 1568 002a D16A     		ldr	r1, [r2, #44]
1612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (HAL_IS_BIT_CLR(hadc->Instance->SQR1, ADC_SQR1_L) || 
 1569              		.loc 1 1612 0
 1570 002c 11F4700F 		tst	r1, #15728640
 1571 0030 03D0     		beq	.L144
1614:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 1572              		.loc 1 1614 0
 1573 0032 9168     		ldr	r1, [r2, #8]
1613:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)  )   )
 1574              		.loc 1 1613 0
 1575 0034 11F4806F 		tst	r1, #1024
 1576 0038 0FD1     		bne	.L143
 1577              	.L144:
1620:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       
 1578              		.loc 1 1620 0
 1579 003a 5168     		ldr	r1, [r2, #4]
 1580 003c 21F02001 		bic	r1, r1, #32
 1581 0040 5160     		str	r1, [r2, #4]
1623:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       
 1582              		.loc 1 1623 0
 1583 0042 1A6C     		ldr	r2, [r3, #64]
 1584 0044 22F48072 		bic	r2, r2, #256
 1585 0048 1A64     		str	r2, [r3, #64]
1625:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 1586              		.loc 1 1625 0
 1587 004a 1A6C     		ldr	r2, [r3, #64]
 1588 004c 12F4805F 		tst	r2, #4096
 1589 0050 03D1     		bne	.L143
1627:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 1590              		.loc 1 1627 0
 1591 0052 1A6C     		ldr	r2, [r3, #64]
 1592 0054 42F00102 		orr	r2, r2, #1
 1593 0058 1A64     		str	r2, [r3, #64]
 1594              	.L143:
1632:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 1595              		.loc 1 1632 0
 1596 005a 1846     		mov	r0, r3
 1597              	.LVL96:
 1598 005c FFF7FEFF 		bl	HAL_ADC_ConvCpltCallback
 1599              	.LVL97:
 1600 0060 D7E7     		b	.L141
 1601              		.cfi_endproc
 1602              	.LFE161:
 1604              		.section	.text.HAL_ADC_ConvHalfCpltCallback,"ax",%progbits
 1605              		.align	1
 1606              		.weak	HAL_ADC_ConvHalfCpltCallback
 1607              		.syntax unified
 1608              		.thumb
 1609              		.thumb_func
 1610              		.fpu fpv5-d16
 1612              	HAL_ADC_ConvHalfCpltCallback:
 1613              	.LFB153:
1206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
 1614              		.loc 1 1206 0
 1615              		.cfi_startproc
 1616              		@ args = 0, pretend = 0, frame = 0
 1617              		@ frame_needed = 0, uses_anonymous_args = 0
 1618              		@ link register save eliminated.
 1619              	.LVL98:
1212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 1620              		.loc 1 1212 0
 1621 0000 7047     		bx	lr
 1622              		.cfi_endproc
 1623              	.LFE153:
 1625              		.section	.text.ADC_DMAHalfConvCplt,"ax",%progbits
 1626              		.align	1
 1627              		.syntax unified
 1628              		.thumb
 1629              		.thumb_func
 1630              		.fpu fpv5-d16
 1632              	ADC_DMAHalfConvCplt:
 1633              	.LFB162:
1640:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1641:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
1642:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  DMA half transfer complete callback. 
1643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
1644:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *                the configuration information for the specified DMA module.
1645:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval None
1646:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1647:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** static void ADC_DMAHalfConvCplt(DMA_HandleTypeDef *hdma)   
1648:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
 1634              		.loc 1 1648 0
 1635              		.cfi_startproc
 1636              		@ args = 0, pretend = 0, frame = 0
 1637              		@ frame_needed = 0, uses_anonymous_args = 0
 1638              	.LVL99:
 1639 0000 08B5     		push	{r3, lr}
 1640              		.cfi_def_cfa_offset 8
 1641              		.cfi_offset 3, -8
 1642              		.cfi_offset 14, -4
 1643              	.LVL100:
1649:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   ADC_HandleTypeDef* hadc = ( ADC_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
1650:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Conversion complete callback */
1651:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   HAL_ADC_ConvHalfCpltCallback(hadc); 
 1644              		.loc 1 1651 0
 1645 0002 806B     		ldr	r0, [r0, #56]
 1646              	.LVL101:
 1647 0004 FFF7FEFF 		bl	HAL_ADC_ConvHalfCpltCallback
 1648              	.LVL102:
1652:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 1649              		.loc 1 1652 0
 1650 0008 08BD     		pop	{r3, pc}
 1651              		.cfi_endproc
 1652              	.LFE162:
 1654              		.section	.text.HAL_ADC_LevelOutOfWindowCallback,"ax",%progbits
 1655              		.align	1
 1656              		.weak	HAL_ADC_LevelOutOfWindowCallback
 1657              		.syntax unified
 1658              		.thumb
 1659              		.thumb_func
 1660              		.fpu fpv5-d16
 1662              	HAL_ADC_LevelOutOfWindowCallback:
 1663              	.LFB154:
1221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
 1664              		.loc 1 1221 0
 1665              		.cfi_startproc
 1666              		@ args = 0, pretend = 0, frame = 0
 1667              		@ frame_needed = 0, uses_anonymous_args = 0
 1668              		@ link register save eliminated.
 1669              	.LVL103:
1227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 1670              		.loc 1 1227 0
 1671 0000 7047     		bx	lr
 1672              		.cfi_endproc
 1673              	.LFE154:
 1675              		.section	.text.HAL_ADC_ErrorCallback,"ax",%progbits
 1676              		.align	1
 1677              		.weak	HAL_ADC_ErrorCallback
 1678              		.syntax unified
 1679              		.thumb
 1680              		.thumb_func
 1681              		.fpu fpv5-d16
 1683              	HAL_ADC_ErrorCallback:
 1684              	.LFB155:
1242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Prevent unused argument(s) compilation warning */
 1685              		.loc 1 1242 0
 1686              		.cfi_startproc
 1687              		@ args = 0, pretend = 0, frame = 0
 1688              		@ frame_needed = 0, uses_anonymous_args = 0
 1689              		@ link register save eliminated.
 1690              	.LVL104:
1248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 1691              		.loc 1 1248 0
 1692 0000 7047     		bx	lr
 1693              		.cfi_endproc
 1694              	.LFE155:
 1696              		.section	.text.HAL_ADC_IRQHandler,"ax",%progbits
 1697              		.align	1
 1698              		.global	HAL_ADC_IRQHandler
 1699              		.syntax unified
 1700              		.thumb
 1701              		.thumb_func
 1702              		.fpu fpv5-d16
 1704              	HAL_ADC_IRQHandler:
 1705              	.LFB148:
 869:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   uint32_t tmp1 = 0, tmp2 = 0;
 1706              		.loc 1 869 0
 1707              		.cfi_startproc
 1708              		@ args = 0, pretend = 0, frame = 0
 1709              		@ frame_needed = 0, uses_anonymous_args = 0
 1710              	.LVL105:
 1711 0000 38B5     		push	{r3, r4, r5, lr}
 1712              		.cfi_def_cfa_offset 16
 1713              		.cfi_offset 3, -16
 1714              		.cfi_offset 4, -12
 1715              		.cfi_offset 5, -8
 1716              		.cfi_offset 14, -4
 1717 0002 0446     		mov	r4, r0
 1718              	.LVL106:
 877:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   tmp2 = __HAL_ADC_GET_IT_SOURCE(hadc, ADC_IT_EOC);
 1719              		.loc 1 877 0
 1720 0004 0168     		ldr	r1, [r0]
 1721 0006 0A68     		ldr	r2, [r1]
 1722 0008 C2F34002 		ubfx	r2, r2, #1, #1
 1723              	.LVL107:
 878:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check End of conversion flag for regular channels */
 1724              		.loc 1 878 0
 1725 000c 4B68     		ldr	r3, [r1, #4]
 1726 000e C3F34013 		ubfx	r3, r3, #5, #1
 1727              	.LVL108:
 880:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 1728              		.loc 1 880 0
 1729 0012 1A42     		tst	r2, r3
 1730 0014 2CD0     		beq	.L154
 883:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 1731              		.loc 1 883 0
 1732 0016 036C     		ldr	r3, [r0, #64]
 1733              	.LVL109:
 1734 0018 13F0100F 		tst	r3, #16
 1735 001c 03D1     		bne	.L155
 886:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 1736              		.loc 1 886 0
 1737 001e 036C     		ldr	r3, [r0, #64]
 1738 0020 43F40073 		orr	r3, r3, #512
 1739 0024 0364     		str	r3, [r0, #64]
 1740              	.L155:
 895:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (hadc->Init.ContinuousConvMode == DISABLE)            &&
 1741              		.loc 1 895 0
 1742 0026 8B68     		ldr	r3, [r1, #8]
 1743 0028 13F0405F 		tst	r3, #805306368
 1744 002c 19D1     		bne	.L156
 896:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (HAL_IS_BIT_CLR(hadc->Instance->SQR1, ADC_SQR1_L) || 
 1745              		.loc 1 896 0 discriminator 1
 1746 002e A369     		ldr	r3, [r4, #24]
 895:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (hadc->Init.ContinuousConvMode == DISABLE)            &&
 1747              		.loc 1 895 0 discriminator 1
 1748 0030 BBB9     		cbnz	r3, .L156
 897:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)  )   )
 1749              		.loc 1 897 0
 1750 0032 CB6A     		ldr	r3, [r1, #44]
 896:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (HAL_IS_BIT_CLR(hadc->Instance->SQR1, ADC_SQR1_L) || 
 1751              		.loc 1 896 0
 1752 0034 13F4700F 		tst	r3, #15728640
 1753 0038 03D0     		beq	.L157
 898:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 1754              		.loc 1 898 0
 1755 003a 8B68     		ldr	r3, [r1, #8]
 897:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)  )   )
 1756              		.loc 1 897 0
 1757 003c 13F4806F 		tst	r3, #1024
 1758 0040 0FD1     		bne	.L156
 1759              	.L157:
 904:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       
 1760              		.loc 1 904 0
 1761 0042 4B68     		ldr	r3, [r1, #4]
 1762 0044 23F02003 		bic	r3, r3, #32
 1763 0048 4B60     		str	r3, [r1, #4]
 907:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       
 1764              		.loc 1 907 0
 1765 004a 236C     		ldr	r3, [r4, #64]
 1766 004c 23F48073 		bic	r3, r3, #256
 1767 0050 2364     		str	r3, [r4, #64]
 909:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 1768              		.loc 1 909 0
 1769 0052 236C     		ldr	r3, [r4, #64]
 1770 0054 13F4805F 		tst	r3, #4096
 1771 0058 03D1     		bne	.L156
 911:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 1772              		.loc 1 911 0
 1773 005a 236C     		ldr	r3, [r4, #64]
 1774 005c 43F00103 		orr	r3, r3, #1
 1775 0060 2364     		str	r3, [r4, #64]
 1776              	.L156:
 916:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 1777              		.loc 1 916 0
 1778 0062 2046     		mov	r0, r4
 1779              	.LVL110:
 1780 0064 FFF7FEFF 		bl	HAL_ADC_ConvCpltCallback
 1781              	.LVL111:
 919:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 1782              		.loc 1 919 0
 1783 0068 2368     		ldr	r3, [r4]
 1784 006a 6FF01202 		mvn	r2, #18
 1785 006e 1A60     		str	r2, [r3]
 1786              	.L154:
 922:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   tmp2 = __HAL_ADC_GET_IT_SOURCE(hadc, ADC_IT_JEOC);                               
 1787              		.loc 1 922 0
 1788 0070 2368     		ldr	r3, [r4]
 1789 0072 1968     		ldr	r1, [r3]
 1790 0074 C1F38001 		ubfx	r1, r1, #2, #1
 1791              	.LVL112:
 923:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check End of conversion flag for injected channels */
 1792              		.loc 1 923 0
 1793 0078 5A68     		ldr	r2, [r3, #4]
 1794 007a C2F3C012 		ubfx	r2, r2, #7, #1
 1795              	.LVL113:
 925:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 1796              		.loc 1 925 0
 1797 007e 1142     		tst	r1, r2
 1798 0080 34D0     		beq	.L158
 928:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 1799              		.loc 1 928 0
 1800 0082 226C     		ldr	r2, [r4, #64]
 1801              	.LVL114:
 1802 0084 12F0100F 		tst	r2, #16
 1803 0088 03D1     		bne	.L159
 931:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 1804              		.loc 1 931 0
 1805 008a 226C     		ldr	r2, [r4, #64]
 1806 008c 42F40052 		orr	r2, r2, #8192
 1807 0090 2264     		str	r2, [r4, #64]
 1808              	.L159:
 938:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (HAL_IS_BIT_CLR(hadc->Instance->JSQR, ADC_JSQR_JL) ||
 1809              		.loc 1 938 0
 1810 0092 9A68     		ldr	r2, [r3, #8]
 1811 0094 12F4401F 		tst	r2, #3145728
 1812 0098 21D1     		bne	.L160
 939:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)) &&
 1813              		.loc 1 939 0 discriminator 1
 1814 009a 9A6B     		ldr	r2, [r3, #56]
 938:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (HAL_IS_BIT_CLR(hadc->Instance->JSQR, ADC_JSQR_JL) ||
 1815              		.loc 1 938 0 discriminator 1
 1816 009c 12F4401F 		tst	r2, #3145728
 1817 00a0 03D0     		beq	.L161
 940:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO) &&
 1818              		.loc 1 940 0
 1819 00a2 9A68     		ldr	r2, [r3, #8]
 939:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****         HAL_IS_BIT_CLR(hadc->Instance->CR2, ADC_CR2_EOCS)) &&
 1820              		.loc 1 939 0
 1821 00a4 12F4806F 		tst	r2, #1024
 1822 00a8 19D1     		bne	.L160
 1823              	.L161:
 941:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (ADC_IS_SOFTWARE_START_REGULAR(hadc) &&
 1824              		.loc 1 941 0
 1825 00aa 5A68     		ldr	r2, [r3, #4]
 940:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (HAL_IS_BIT_CLR(hadc->Instance->CR1, ADC_CR1_JAUTO) &&
 1826              		.loc 1 940 0
 1827 00ac 12F4806F 		tst	r2, #1024
 1828 00b0 15D1     		bne	.L160
 942:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (hadc->Init.ContinuousConvMode == DISABLE))))
 1829              		.loc 1 942 0
 1830 00b2 9A68     		ldr	r2, [r3, #8]
 941:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (ADC_IS_SOFTWARE_START_REGULAR(hadc) &&
 1831              		.loc 1 941 0
 1832 00b4 12F0405F 		tst	r2, #805306368
 1833 00b8 11D1     		bne	.L160
 943:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 1834              		.loc 1 943 0
 1835 00ba A269     		ldr	r2, [r4, #24]
 942:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****        (hadc->Init.ContinuousConvMode == DISABLE))))
 1836              		.loc 1 942 0
 1837 00bc 7AB9     		cbnz	r2, .L160
 946:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       
 1838              		.loc 1 946 0
 1839 00be 5A68     		ldr	r2, [r3, #4]
 1840 00c0 22F08002 		bic	r2, r2, #128
 1841 00c4 5A60     		str	r2, [r3, #4]
 949:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 1842              		.loc 1 949 0
 1843 00c6 236C     		ldr	r3, [r4, #64]
 1844 00c8 23F48053 		bic	r3, r3, #4096
 1845 00cc 2364     		str	r3, [r4, #64]
 951:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       { 
 1846              		.loc 1 951 0
 1847 00ce 236C     		ldr	r3, [r4, #64]
 1848 00d0 13F4807F 		tst	r3, #256
 1849 00d4 03D1     		bne	.L160
 953:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 1850              		.loc 1 953 0
 1851 00d6 236C     		ldr	r3, [r4, #64]
 1852 00d8 43F00103 		orr	r3, r3, #1
 1853 00dc 2364     		str	r3, [r4, #64]
 1854              	.L160:
 958:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 1855              		.loc 1 958 0
 1856 00de 2046     		mov	r0, r4
 1857 00e0 FFF7FEFF 		bl	HAL_ADCEx_InjectedConvCpltCallback
 1858              	.LVL115:
 961:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 1859              		.loc 1 961 0
 1860 00e4 2368     		ldr	r3, [r4]
 1861 00e6 6FF00C02 		mvn	r2, #12
 1862 00ea 1A60     		str	r2, [r3]
 1863              	.L158:
 964:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   tmp2 = __HAL_ADC_GET_IT_SOURCE(hadc, ADC_IT_AWD);                          
 1864              		.loc 1 964 0
 1865 00ec 2268     		ldr	r2, [r4]
 1866 00ee 1168     		ldr	r1, [r2]
 1867              	.LVL116:
 965:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check Analog watchdog flag */
 1868              		.loc 1 965 0
 1869 00f0 5368     		ldr	r3, [r2, #4]
 1870 00f2 C3F38013 		ubfx	r3, r3, #6, #1
 1871              	.LVL117:
 967:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 1872              		.loc 1 967 0
 1873 00f6 1942     		tst	r1, r3
 1874 00f8 03D0     		beq	.L162
 969:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 1875              		.loc 1 969 0
 1876 00fa 1368     		ldr	r3, [r2]
 1877              	.LVL118:
 1878 00fc 13F0010F 		tst	r3, #1
 1879 0100 09D1     		bne	.L165
 1880              	.LVL119:
 1881              	.L162:
 982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   tmp2 = __HAL_ADC_GET_IT_SOURCE(hadc, ADC_IT_OVR);
 1882              		.loc 1 982 0
 1883 0102 2168     		ldr	r1, [r4]
 1884 0104 0A68     		ldr	r2, [r1]
 1885 0106 C2F34012 		ubfx	r2, r2, #5, #1
 1886              	.LVL120:
 983:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Check Overrun flag */
 1887              		.loc 1 983 0
 1888 010a 4B68     		ldr	r3, [r1, #4]
 1889 010c C3F38063 		ubfx	r3, r3, #26, #1
 1890              	.LVL121:
 985:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 1891              		.loc 1 985 0
 1892 0110 1A42     		tst	r2, r3
 1893 0112 0CD1     		bne	.L166
 1894              	.LVL122:
 1895              	.L153:
1003:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 1896              		.loc 1 1003 0
 1897 0114 38BD     		pop	{r3, r4, r5, pc}
 1898              	.LVL123:
 1899              	.L165:
 972:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       
 1900              		.loc 1 972 0
 1901 0116 236C     		ldr	r3, [r4, #64]
 1902 0118 43F48033 		orr	r3, r3, #65536
 1903 011c 2364     		str	r3, [r4, #64]
 975:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       
 1904              		.loc 1 975 0
 1905 011e 2046     		mov	r0, r4
 1906 0120 FFF7FEFF 		bl	HAL_ADC_LevelOutOfWindowCallback
 1907              	.LVL124:
 978:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     }
 1908              		.loc 1 978 0
 1909 0124 2368     		ldr	r3, [r4]
 1910 0126 6FF00102 		mvn	r2, #1
 1911 012a 1A60     		str	r2, [r3]
 1912 012c E9E7     		b	.L162
 1913              	.LVL125:
 1914              	.L166:
 992:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 1915              		.loc 1 992 0
 1916 012e 636C     		ldr	r3, [r4, #68]
 1917              	.LVL126:
 1918 0130 43F00203 		orr	r3, r3, #2
 1919 0134 6364     		str	r3, [r4, #68]
 995:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 1920              		.loc 1 995 0
 1921 0136 6FF02005 		mvn	r5, #32
 1922 013a 0D60     		str	r5, [r1]
 998:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 1923              		.loc 1 998 0
 1924 013c 2046     		mov	r0, r4
 1925 013e FFF7FEFF 		bl	HAL_ADC_ErrorCallback
 1926              	.LVL127:
1001:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 1927              		.loc 1 1001 0
 1928 0142 2368     		ldr	r3, [r4]
 1929 0144 1D60     		str	r5, [r3]
1003:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 1930              		.loc 1 1003 0
 1931 0146 E5E7     		b	.L153
 1932              		.cfi_endproc
 1933              	.LFE148:
 1935              		.section	.text.ADC_DMAError,"ax",%progbits
 1936              		.align	1
 1937              		.syntax unified
 1938              		.thumb
 1939              		.thumb_func
 1940              		.fpu fpv5-d16
 1942              	ADC_DMAError:
 1943              	.LFB163:
1653:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
1654:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** /**
1655:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @brief  DMA error callback 
1656:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @param  hdma: pointer to a DMA_HandleTypeDef structure that contains
1657:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   *                the configuration information for the specified DMA module.
1658:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   * @retval None
1659:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   */
1660:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** static void ADC_DMAError(DMA_HandleTypeDef *hdma)   
1661:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** {
 1944              		.loc 1 1661 0
 1945              		.cfi_startproc
 1946              		@ args = 0, pretend = 0, frame = 0
 1947              		@ frame_needed = 0, uses_anonymous_args = 0
 1948              	.LVL128:
 1949 0000 08B5     		push	{r3, lr}
 1950              		.cfi_def_cfa_offset 8
 1951              		.cfi_offset 3, -8
 1952              		.cfi_offset 14, -4
1662:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   ADC_HandleTypeDef* hadc = ( ADC_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 1953              		.loc 1 1662 0
 1954 0002 806B     		ldr	r0, [r0, #56]
 1955              	.LVL129:
1663:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->State= HAL_ADC_STATE_ERROR_DMA;
 1956              		.loc 1 1663 0
 1957 0004 4023     		movs	r3, #64
 1958 0006 0364     		str	r3, [r0, #64]
1664:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Set ADC error code to DMA error */
1665:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   hadc->ErrorCode |= HAL_ADC_ERROR_DMA;
 1959              		.loc 1 1665 0
 1960 0008 436C     		ldr	r3, [r0, #68]
 1961 000a 43F00403 		orr	r3, r3, #4
 1962 000e 4364     		str	r3, [r0, #68]
1666:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   HAL_ADC_ErrorCallback(hadc); 
 1963              		.loc 1 1666 0
 1964 0010 FFF7FEFF 		bl	HAL_ADC_ErrorCallback
 1965              	.LVL130:
1667:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 1966              		.loc 1 1667 0
 1967 0014 08BD     		pop	{r3, pc}
 1968              		.cfi_endproc
 1969              	.LFE163:
 1971              		.section	.text.HAL_ADC_ConfigChannel,"ax",%progbits
 1972              		.align	1
 1973              		.global	HAL_ADC_ConfigChannel
 1974              		.syntax unified
 1975              		.thumb
 1976              		.thumb_func
 1977              		.fpu fpv5-d16
 1979              	HAL_ADC_ConfigChannel:
 1980              	.LFB156:
1280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   __IO uint32_t counter = 0;
 1981              		.loc 1 1280 0
 1982              		.cfi_startproc
 1983              		@ args = 0, pretend = 0, frame = 8
 1984              		@ frame_needed = 0, uses_anonymous_args = 0
 1985              		@ link register save eliminated.
 1986              	.LVL131:
 1987 0000 30B4     		push	{r4, r5}
 1988              		.cfi_def_cfa_offset 8
 1989              		.cfi_offset 4, -8
 1990              		.cfi_offset 5, -4
 1991 0002 82B0     		sub	sp, sp, #8
 1992              		.cfi_def_cfa_offset 16
1281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 1993              		.loc 1 1281 0
 1994 0004 0023     		movs	r3, #0
 1995 0006 0193     		str	r3, [sp, #4]
1289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 			
 1996              		.loc 1 1289 0
 1997 0008 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 1998 000c 012B     		cmp	r3, #1
 1999 000e 00F0C080 		beq	.L181
1289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 			
 2000              		.loc 1 1289 0 is_stmt 0 discriminator 2
 2001 0012 0123     		movs	r3, #1
 2002 0014 80F83C30 		strb	r3, [r0, #60]
1292:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 	{
 2003              		.loc 1 1292 0 is_stmt 1 discriminator 2
 2004 0018 0B68     		ldr	r3, [r1]
 2005 001a 092B     		cmp	r3, #9
 2006 001c 22D9     		bls	.L171
1295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 2007              		.loc 1 1295 0
 2008 001e 0568     		ldr	r5, [r0]
 2009 0020 EA68     		ldr	r2, [r5, #12]
 2010 0022 9BB2     		uxth	r3, r3
 2011 0024 03EB4303 		add	r3, r3, r3, lsl #1
 2012 0028 1E3B     		subs	r3, r3, #30
 2013 002a 0724     		movs	r4, #7
 2014 002c 04FA03F3 		lsl	r3, r4, r3
 2015 0030 22EA0303 		bic	r3, r2, r3
 2016 0034 EB60     		str	r3, [r5, #12]
1297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 		{
 2017              		.loc 1 1297 0
 2018 0036 0B68     		ldr	r3, [r1]
 2019 0038 574A     		ldr	r2, .L186
 2020 003a 9342     		cmp	r3, r2
 2021 003c 0BD0     		beq	.L183
1305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 	  }
 2022              		.loc 1 1305 0
 2023 003e 0568     		ldr	r5, [r0]
 2024 0040 EA68     		ldr	r2, [r5, #12]
 2025 0042 8C68     		ldr	r4, [r1, #8]
 2026 0044 9BB2     		uxth	r3, r3
 2027 0046 03EB4303 		add	r3, r3, r3, lsl #1
 2028 004a 1E3B     		subs	r3, r3, #30
 2029 004c 04FA03F3 		lsl	r3, r4, r3
 2030 0050 1343     		orrs	r3, r3, r2
 2031 0052 EB60     		str	r3, [r5, #12]
 2032 0054 1BE0     		b	.L173
 2033              	.L183:
1300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 		}
 2034              		.loc 1 1300 0
 2035 0056 0268     		ldr	r2, [r0]
 2036 0058 D368     		ldr	r3, [r2, #12]
 2037 005a 8C68     		ldr	r4, [r1, #8]
 2038 005c 43EA0463 		orr	r3, r3, r4, lsl #24
 2039 0060 D360     		str	r3, [r2, #12]
 2040 0062 14E0     		b	.L173
 2041              	.L171:
1311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 2042              		.loc 1 1311 0
 2043 0064 0568     		ldr	r5, [r0]
 2044 0066 2A69     		ldr	r2, [r5, #16]
 2045 0068 9BB2     		uxth	r3, r3
 2046 006a 03EB4303 		add	r3, r3, r3, lsl #1
 2047 006e 0724     		movs	r4, #7
 2048 0070 04FA03F3 		lsl	r3, r4, r3
 2049 0074 22EA0303 		bic	r3, r2, r3
 2050 0078 2B61     		str	r3, [r5, #16]
1314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 2051              		.loc 1 1314 0
 2052 007a 0568     		ldr	r5, [r0]
 2053 007c 2A69     		ldr	r2, [r5, #16]
 2054 007e 8C68     		ldr	r4, [r1, #8]
 2055 0080 0B88     		ldrh	r3, [r1]
 2056 0082 03EB4303 		add	r3, r3, r3, lsl #1
 2057 0086 04FA03F3 		lsl	r3, r4, r3
 2058 008a 1343     		orrs	r3, r3, r2
 2059 008c 2B61     		str	r3, [r5, #16]
 2060              	.L173:
1318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 2061              		.loc 1 1318 0
 2062 008e 4B68     		ldr	r3, [r1, #4]
 2063 0090 062B     		cmp	r3, #6
 2064 0092 24D8     		bhi	.L174
1321:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 2065              		.loc 1 1321 0
 2066 0094 0568     		ldr	r5, [r0]
 2067 0096 6A6B     		ldr	r2, [r5, #52]
 2068 0098 03EB8303 		add	r3, r3, r3, lsl #2
 2069 009c 053B     		subs	r3, r3, #5
 2070 009e 1F24     		movs	r4, #31
 2071 00a0 04FA03F3 		lsl	r3, r4, r3
 2072 00a4 22EA0303 		bic	r3, r2, r3
 2073 00a8 6B63     		str	r3, [r5, #52]
1324:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 2074              		.loc 1 1324 0
 2075 00aa 0568     		ldr	r5, [r0]
 2076 00ac 6A6B     		ldr	r2, [r5, #52]
 2077 00ae 4B68     		ldr	r3, [r1, #4]
 2078 00b0 03EB8303 		add	r3, r3, r3, lsl #2
 2079 00b4 053B     		subs	r3, r3, #5
 2080 00b6 0C88     		ldrh	r4, [r1]
 2081 00b8 04FA03F3 		lsl	r3, r4, r3
 2082 00bc 1343     		orrs	r3, r3, r2
 2083 00be 6B63     		str	r3, [r5, #52]
 2084              	.L175:
1346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 2085              		.loc 1 1346 0
 2086 00c0 0268     		ldr	r2, [r0]
 2087 00c2 364B     		ldr	r3, .L186+4
 2088 00c4 9A42     		cmp	r2, r3
 2089 00c6 3AD0     		beq	.L184
 2090              	.L177:
1353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 2091              		.loc 1 1353 0
 2092 00c8 0268     		ldr	r2, [r0]
 2093 00ca 344B     		ldr	r3, .L186+4
 2094 00cc 9A42     		cmp	r2, r3
 2095 00ce 3FD0     		beq	.L185
 2096              	.L178:
1371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 2097              		.loc 1 1371 0
 2098 00d0 0023     		movs	r3, #0
 2099 00d2 80F83C30 		strb	r3, [r0, #60]
1374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 2100              		.loc 1 1374 0
 2101 00d6 1846     		mov	r0, r3
 2102              	.LVL132:
 2103              	.L170:
1375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 2104              		.loc 1 1375 0
 2105 00d8 02B0     		add	sp, sp, #8
 2106              		.cfi_remember_state
 2107              		.cfi_def_cfa_offset 8
 2108              		@ sp needed
 2109 00da 30BC     		pop	{r4, r5}
 2110              		.cfi_restore 5
 2111              		.cfi_restore 4
 2112              		.cfi_def_cfa_offset 0
 2113 00dc 7047     		bx	lr
 2114              	.LVL133:
 2115              	.L174:
 2116              		.cfi_restore_state
1327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 2117              		.loc 1 1327 0
 2118 00de 0C2B     		cmp	r3, #12
 2119 00e0 16D8     		bhi	.L176
1330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 2120              		.loc 1 1330 0
 2121 00e2 0568     		ldr	r5, [r0]
 2122 00e4 2A6B     		ldr	r2, [r5, #48]
 2123 00e6 03EB8303 		add	r3, r3, r3, lsl #2
 2124 00ea 233B     		subs	r3, r3, #35
 2125 00ec 1F24     		movs	r4, #31
 2126 00ee 04FA03F3 		lsl	r3, r4, r3
 2127 00f2 22EA0303 		bic	r3, r2, r3
 2128 00f6 2B63     		str	r3, [r5, #48]
1333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 2129              		.loc 1 1333 0
 2130 00f8 0568     		ldr	r5, [r0]
 2131 00fa 2A6B     		ldr	r2, [r5, #48]
 2132 00fc 4B68     		ldr	r3, [r1, #4]
 2133 00fe 03EB8303 		add	r3, r3, r3, lsl #2
 2134 0102 233B     		subs	r3, r3, #35
 2135 0104 0C88     		ldrh	r4, [r1]
 2136 0106 04FA03F3 		lsl	r3, r4, r3
 2137 010a 1343     		orrs	r3, r3, r2
 2138 010c 2B63     		str	r3, [r5, #48]
 2139 010e D7E7     		b	.L175
 2140              	.L176:
1339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     
 2141              		.loc 1 1339 0
 2142 0110 0568     		ldr	r5, [r0]
 2143 0112 EA6A     		ldr	r2, [r5, #44]
 2144 0114 03EB8303 		add	r3, r3, r3, lsl #2
 2145 0118 413B     		subs	r3, r3, #65
 2146 011a 1F24     		movs	r4, #31
 2147 011c 04FA03F3 		lsl	r3, r4, r3
 2148 0120 22EA0303 		bic	r3, r2, r3
 2149 0124 EB62     		str	r3, [r5, #44]
1342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 2150              		.loc 1 1342 0
 2151 0126 0568     		ldr	r5, [r0]
 2152 0128 EA6A     		ldr	r2, [r5, #44]
 2153 012a 4B68     		ldr	r3, [r1, #4]
 2154 012c 03EB8303 		add	r3, r3, r3, lsl #2
 2155 0130 413B     		subs	r3, r3, #65
 2156 0132 0C88     		ldrh	r4, [r1]
 2157 0134 04FA03F3 		lsl	r3, r4, r3
 2158 0138 1343     		orrs	r3, r3, r2
 2159 013a EB62     		str	r3, [r5, #44]
 2160 013c C0E7     		b	.L175
 2161              	.L184:
1346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 2162              		.loc 1 1346 0 discriminator 1
 2163 013e 0B68     		ldr	r3, [r1]
 2164 0140 122B     		cmp	r3, #18
 2165 0142 C1D1     		bne	.L177
1349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 2166              		.loc 1 1349 0
 2167 0144 164A     		ldr	r2, .L186+8
 2168 0146 5368     		ldr	r3, [r2, #4]
 2169 0148 43F48003 		orr	r3, r3, #4194304
 2170 014c 5360     		str	r3, [r2, #4]
 2171 014e BBE7     		b	.L177
 2172              	.L185:
1353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 2173              		.loc 1 1353 0 discriminator 1
 2174 0150 0B68     		ldr	r3, [r1]
 2175 0152 114A     		ldr	r2, .L186
 2176 0154 112B     		cmp	r3, #17
 2177 0156 18BF     		it	ne
 2178 0158 9342     		cmpne	r3, r2
 2179 015a B9D1     		bne	.L178
1356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 2180              		.loc 1 1356 0
 2181 015c 104A     		ldr	r2, .L186+8
 2182 015e 5368     		ldr	r3, [r2, #4]
 2183 0160 43F40003 		orr	r3, r3, #8388608
 2184 0164 5360     		str	r3, [r2, #4]
1358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****     {
 2185              		.loc 1 1358 0
 2186 0166 0A68     		ldr	r2, [r1]
 2187 0168 0B4B     		ldr	r3, .L186
 2188 016a 9A42     		cmp	r2, r3
 2189 016c B0D1     		bne	.L178
1362:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       while(counter != 0)
 2190              		.loc 1 1362 0
 2191 016e 0D4B     		ldr	r3, .L186+12
 2192 0170 1B68     		ldr	r3, [r3]
 2193 0172 0D4A     		ldr	r2, .L186+16
 2194 0174 A2FB0323 		umull	r2, r3, r2, r3
 2195 0178 9B0C     		lsrs	r3, r3, #18
 2196 017a 03EB8303 		add	r3, r3, r3, lsl #2
 2197 017e 5A00     		lsls	r2, r3, #1
 2198 0180 0192     		str	r2, [sp, #4]
1363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 2199              		.loc 1 1363 0
 2200 0182 02E0     		b	.L179
 2201              	.L180:
1365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       }
 2202              		.loc 1 1365 0
 2203 0184 019B     		ldr	r3, [sp, #4]
 2204 0186 013B     		subs	r3, r3, #1
 2205 0188 0193     		str	r3, [sp, #4]
 2206              	.L179:
1363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****       {
 2207              		.loc 1 1363 0
 2208 018a 019B     		ldr	r3, [sp, #4]
 2209 018c 002B     		cmp	r3, #0
 2210 018e F9D1     		bne	.L180
 2211 0190 9EE7     		b	.L178
 2212              	.L181:
1289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 			
 2213              		.loc 1 1289 0
 2214 0192 0220     		movs	r0, #2
 2215              	.LVL134:
 2216 0194 A0E7     		b	.L170
 2217              	.L187:
 2218 0196 00BF     		.align	2
 2219              	.L186:
 2220 0198 12000010 		.word	268435474
 2221 019c 00200140 		.word	1073815552
 2222 01a0 00230140 		.word	1073816320
 2223 01a4 00000000 		.word	SystemCoreClock
 2224 01a8 83DE1B43 		.word	1125899907
 2225              		.cfi_endproc
 2226              	.LFE156:
 2228              		.section	.text.HAL_ADC_AnalogWDGConfig,"ax",%progbits
 2229              		.align	1
 2230              		.global	HAL_ADC_AnalogWDGConfig
 2231              		.syntax unified
 2232              		.thumb
 2233              		.thumb_func
 2234              		.fpu fpv5-d16
 2236              	HAL_ADC_AnalogWDGConfig:
 2237              	.LFB157:
1394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** #ifdef USE_FULL_ASSERT  
 2238              		.loc 1 1394 0
 2239              		.cfi_startproc
 2240              		@ args = 0, pretend = 0, frame = 0
 2241              		@ frame_needed = 0, uses_anonymous_args = 0
 2242              		@ link register save eliminated.
 2243              	.LVL135:
1411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 2244              		.loc 1 1411 0
 2245 0000 90F83C30 		ldrb	r3, [r0, #60]	@ zero_extendqisi2
 2246 0004 012B     		cmp	r3, #1
 2247 0006 32D0     		beq	.L192
1394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** #ifdef USE_FULL_ASSERT  
 2248              		.loc 1 1394 0 discriminator 2
 2249 0008 10B4     		push	{r4}
 2250              		.cfi_def_cfa_offset 4
 2251              		.cfi_offset 4, -4
1411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 2252              		.loc 1 1411 0 discriminator 2
 2253 000a 0123     		movs	r3, #1
 2254 000c 80F83C30 		strb	r3, [r0, #60]
1413:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   {
 2255              		.loc 1 1413 0 discriminator 2
 2256 0010 0B69     		ldr	r3, [r1, #16]
 2257 0012 012B     		cmp	r3, #1
 2258 0014 25D0     		beq	.L197
1421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 2259              		.loc 1 1421 0
 2260 0016 0268     		ldr	r2, [r0]
 2261 0018 5368     		ldr	r3, [r2, #4]
 2262 001a 23F04003 		bic	r3, r3, #64
 2263 001e 5360     		str	r3, [r2, #4]
 2264              	.L191:
1425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 2265              		.loc 1 1425 0
 2266 0020 0268     		ldr	r2, [r0]
 2267 0022 5468     		ldr	r4, [r2, #4]
 2268 0024 134B     		ldr	r3, .L198
 2269 0026 2340     		ands	r3, r3, r4
 2270 0028 5360     		str	r3, [r2, #4]
1428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 2271              		.loc 1 1428 0
 2272 002a 0268     		ldr	r2, [r0]
 2273 002c 5368     		ldr	r3, [r2, #4]
 2274 002e 0C68     		ldr	r4, [r1]
 2275 0030 2343     		orrs	r3, r3, r4
 2276 0032 5360     		str	r3, [r2, #4]
1431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 2277              		.loc 1 1431 0
 2278 0034 0368     		ldr	r3, [r0]
 2279 0036 4A68     		ldr	r2, [r1, #4]
 2280 0038 5A62     		str	r2, [r3, #36]
1434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 2281              		.loc 1 1434 0
 2282 003a 0368     		ldr	r3, [r0]
 2283 003c 8A68     		ldr	r2, [r1, #8]
 2284 003e 9A62     		str	r2, [r3, #40]
1437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 2285              		.loc 1 1437 0
 2286 0040 0268     		ldr	r2, [r0]
 2287 0042 5368     		ldr	r3, [r2, #4]
 2288 0044 23F01F03 		bic	r3, r3, #31
 2289 0048 5360     		str	r3, [r2, #4]
1440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 2290              		.loc 1 1440 0
 2291 004a 0268     		ldr	r2, [r0]
 2292 004c 5468     		ldr	r4, [r2, #4]
 2293 004e 8B89     		ldrh	r3, [r1, #12]
 2294 0050 2343     		orrs	r3, r3, r4
 2295 0052 5360     		str	r3, [r2, #4]
1443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 2296              		.loc 1 1443 0
 2297 0054 0023     		movs	r3, #0
 2298 0056 80F83C30 		strb	r3, [r0, #60]
1446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 2299              		.loc 1 1446 0
 2300 005a 1846     		mov	r0, r3
 2301              	.LVL136:
1447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 2302              		.loc 1 1447 0
 2303 005c 5DF8044B 		ldr	r4, [sp], #4
 2304              		.cfi_remember_state
 2305              		.cfi_restore 4
 2306              		.cfi_def_cfa_offset 0
 2307 0060 7047     		bx	lr
 2308              	.LVL137:
 2309              	.L197:
 2310              		.cfi_restore_state
1416:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   }
 2311              		.loc 1 1416 0
 2312 0062 0268     		ldr	r2, [r0]
 2313 0064 5368     		ldr	r3, [r2, #4]
 2314 0066 43F04003 		orr	r3, r3, #64
 2315 006a 5360     		str	r3, [r2, #4]
 2316 006c D8E7     		b	.L191
 2317              	.L192:
 2318              		.cfi_def_cfa_offset 0
 2319              		.cfi_restore 4
1411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   
 2320              		.loc 1 1411 0
 2321 006e 0220     		movs	r0, #2
 2322              	.LVL138:
1447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 2323              		.loc 1 1447 0
 2324 0070 7047     		bx	lr
 2325              	.L199:
 2326 0072 00BF     		.align	2
 2327              	.L198:
 2328 0074 FFFD3FFF 		.word	-12583425
 2329              		.cfi_endproc
 2330              	.LFE157:
 2332              		.section	.text.HAL_ADC_GetState,"ax",%progbits
 2333              		.align	1
 2334              		.global	HAL_ADC_GetState
 2335              		.syntax unified
 2336              		.thumb
 2337              		.thumb_func
 2338              		.fpu fpv5-d16
 2340              	HAL_ADC_GetState:
 2341              	.LFB158:
1476:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   /* Return ADC state */
 2342              		.loc 1 1476 0
 2343              		.cfi_startproc
 2344              		@ args = 0, pretend = 0, frame = 0
 2345              		@ frame_needed = 0, uses_anonymous_args = 0
 2346              		@ link register save eliminated.
 2347              	.LVL139:
1478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 2348              		.loc 1 1478 0
 2349 0000 006C     		ldr	r0, [r0, #64]
 2350              	.LVL140:
1479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 2351              		.loc 1 1479 0
 2352 0002 7047     		bx	lr
 2353              		.cfi_endproc
 2354              	.LFE158:
 2356              		.section	.text.HAL_ADC_GetError,"ax",%progbits
 2357              		.align	1
 2358              		.global	HAL_ADC_GetError
 2359              		.syntax unified
 2360              		.thumb
 2361              		.thumb_func
 2362              		.fpu fpv5-d16
 2364              	HAL_ADC_GetError:
 2365              	.LFB159:
1488:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c ****   return hadc->ErrorCode;
 2366              		.loc 1 1488 0
 2367              		.cfi_startproc
 2368              		@ args = 0, pretend = 0, frame = 0
 2369              		@ frame_needed = 0, uses_anonymous_args = 0
 2370              		@ link register save eliminated.
 2371              	.LVL141:
1489:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** }
 2372              		.loc 1 1489 0
 2373 0000 406C     		ldr	r0, [r0, #68]
 2374              	.LVL142:
1490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_adc.c **** 
 2375              		.loc 1 1490 0
 2376 0002 7047     		bx	lr
 2377              		.cfi_endproc
 2378              	.LFE159:
 2380              		.text
 2381              	.Letext0:
 2382              		.file 3 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 2383              		.file 4 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 2384              		.file 5 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h"
 2385              		.file 6 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/system_stm
 2386              		.file 7 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f769x
 2387              		.file 8 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f7xx.
 2388              		.file 9 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 2389              		.file 10 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 2390              		.file 11 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 2391              		.file 12 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 2392              		.file 13 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_def.
 2393              		.file 14 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_dma.
 2394              		.file 15 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_adc.
 2395              		.file 16 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_adc_
 2396              		.file 17 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal.h"
DEFINED SYMBOLS
                            *ABS*:0000000000000000 stm32f7xx_hal_adc.c
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:17     .text.ADC_Init:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:23     .text.ADC_Init:0000000000000000 ADC_Init
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:212    .text.ADC_Init:0000000000000134 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:218    .text.HAL_ADC_MspInit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:225    .text.HAL_ADC_MspInit:0000000000000000 HAL_ADC_MspInit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:239    .text.HAL_ADC_Init:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:246    .text.HAL_ADC_Init:0000000000000000 HAL_ADC_Init
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:322    .text.HAL_ADC_Init:0000000000000050 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:327    .text.HAL_ADC_MspDeInit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:334    .text.HAL_ADC_MspDeInit:0000000000000000 HAL_ADC_MspDeInit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:348    .text.HAL_ADC_DeInit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:355    .text.HAL_ADC_DeInit:0000000000000000 HAL_ADC_DeInit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:416    .text.HAL_ADC_Start:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:423    .text.HAL_ADC_Start:0000000000000000 HAL_ADC_Start
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:590    .text.HAL_ADC_Start:00000000000000e4 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:599    .text.HAL_ADC_Stop:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:606    .text.HAL_ADC_Stop:0000000000000000 HAL_ADC_Stop
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:655    .text.HAL_ADC_Stop:000000000000003c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:660    .text.HAL_ADC_PollForConversion:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:667    .text.HAL_ADC_PollForConversion:0000000000000000 HAL_ADC_PollForConversion
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:815    .text.HAL_ADC_PollForEvent:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:822    .text.HAL_ADC_PollForEvent:0000000000000000 HAL_ADC_PollForEvent
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:910    .text.HAL_ADC_Start_IT:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:917    .text.HAL_ADC_Start_IT:0000000000000000 HAL_ADC_Start_IT
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1090   .text.HAL_ADC_Start_IT:00000000000000f0 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1100   .text.HAL_ADC_Stop_IT:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1107   .text.HAL_ADC_Stop_IT:0000000000000000 HAL_ADC_Stop_IT
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1161   .text.HAL_ADC_Stop_IT:0000000000000044 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1167   .text.HAL_ADC_Start_DMA:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1174   .text.HAL_ADC_Start_DMA:0000000000000000 HAL_ADC_Start_DMA
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1374   .text.HAL_ADC_Start_DMA:0000000000000120 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1525   .text.ADC_DMAConvCplt:0000000000000000 ADC_DMAConvCplt
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1632   .text.ADC_DMAHalfConvCplt:0000000000000000 ADC_DMAHalfConvCplt
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1942   .text.ADC_DMAError:0000000000000000 ADC_DMAError
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1386   .text.HAL_ADC_Stop_DMA:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1393   .text.HAL_ADC_Stop_DMA:0000000000000000 HAL_ADC_Stop_DMA
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1468   .text.HAL_ADC_Stop_DMA:000000000000005c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1473   .text.HAL_ADC_GetValue:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1480   .text.HAL_ADC_GetValue:0000000000000000 HAL_ADC_GetValue
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1498   .text.HAL_ADC_ConvCpltCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1505   .text.HAL_ADC_ConvCpltCallback:0000000000000000 HAL_ADC_ConvCpltCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1519   .text.ADC_DMAConvCplt:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1605   .text.HAL_ADC_ConvHalfCpltCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1612   .text.HAL_ADC_ConvHalfCpltCallback:0000000000000000 HAL_ADC_ConvHalfCpltCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1626   .text.ADC_DMAHalfConvCplt:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1655   .text.HAL_ADC_LevelOutOfWindowCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1662   .text.HAL_ADC_LevelOutOfWindowCallback:0000000000000000 HAL_ADC_LevelOutOfWindowCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1676   .text.HAL_ADC_ErrorCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1683   .text.HAL_ADC_ErrorCallback:0000000000000000 HAL_ADC_ErrorCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1697   .text.HAL_ADC_IRQHandler:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1704   .text.HAL_ADC_IRQHandler:0000000000000000 HAL_ADC_IRQHandler
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1936   .text.ADC_DMAError:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1972   .text.HAL_ADC_ConfigChannel:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:1979   .text.HAL_ADC_ConfigChannel:0000000000000000 HAL_ADC_ConfigChannel
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:2220   .text.HAL_ADC_ConfigChannel:0000000000000198 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:2229   .text.HAL_ADC_AnalogWDGConfig:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:2236   .text.HAL_ADC_AnalogWDGConfig:0000000000000000 HAL_ADC_AnalogWDGConfig
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:2328   .text.HAL_ADC_AnalogWDGConfig:0000000000000074 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:2333   .text.HAL_ADC_GetState:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:2340   .text.HAL_ADC_GetState:0000000000000000 HAL_ADC_GetState
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:2357   .text.HAL_ADC_GetError:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccMSk4dh.s:2364   .text.HAL_ADC_GetError:0000000000000000 HAL_ADC_GetError
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
HAL_DMA_Start_IT
HAL_DMA_Abort
HAL_ADCEx_InjectedConvCpltCallback

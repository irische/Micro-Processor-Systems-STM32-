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
  12              		.file	"stm32f7xx_hal_uart.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.UART_Transmit_IT,"ax",%progbits
  17              		.align	1
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv5-d16
  23              	UART_Transmit_IT:
  24              	.LFB168:
  25              		.file 1 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.
   1:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
   2:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   ******************************************************************************
   3:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @file    stm32f7xx_hal_uart.c
   4:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @author  MCD Application Team
   5:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @version V1.2.2
   6:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @date    14-April-2017
   7:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief   UART HAL module driver.
   8:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *          This file provides firmware functions to manage the following
   9:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *          functionalities of the Universal Asynchronous Receiver Transmitter (UART) peripheral:
  10:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *           + Initialization and de-initialization functions
  11:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *           + IO operation functions
  12:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *           + Peripheral Control functions
  13:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *           + Peripheral State and Errors functions
  14:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *
  15:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   @verbatim
  16:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   ==============================================================================
  17:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****                         ##### How to use this driver #####
  18:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   ==============================================================================
  19:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   [..]
  20:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     The UART HAL driver can be used as follows:
  21:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
  22:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     (#) Declare a UART_HandleTypeDef handle structure.
  23:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
  24:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     (#) Initialize the UART low level resources by implementing the HAL_UART_MspInit() API:
  25:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (##) Enable the USARTx interface clock.
  26:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (##) UART pins configuration:
  27:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             (+++) Enable the clock for the UART GPIOs.
  28:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             (+++) Configure these UART pins as alternate function pull-up.
  29:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (##) NVIC configuration if you need to use interrupt process (HAL_UART_Transmit_IT()
  30:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****              and HAL_UART_Receive_IT() APIs):
  31:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             (+++) Configure the USARTx interrupt priority.
  32:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             (+++) Enable the NVIC USART IRQ handle.
  33:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (##) DMA Configuration if you need to use DMA process (HAL_UART_Transmit_DMA()
  34:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****              and HAL_UART_Receive_DMA() APIs):
  35:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             (+++) Declare a DMA handle structure for the Tx/Rx stream.
  36:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             (+++) Enable the DMAx interface clock.
  37:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             (+++) Configure the declared DMA handle structure with the required
  38:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****                   Tx/Rx parameters.
  39:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             (+++) Configure the DMA Tx/Rx Stream.
  40:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             (+++) Associate the initialized DMA handle to the UART DMA Tx/Rx handle.
  41:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             (+++) Configure the priority and enable the NVIC for the transfer complete
  42:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****                   interrupt on the DMA Tx/Rx Stream.
  43:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
  44:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     (#) Program the Baud Rate, Word Length, Stop Bit, Parity, Hardware
  45:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         flow control and Mode(Receiver/Transmitter) in the Init structure.
  46:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
  47:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     (#) For the UART asynchronous mode, initialize the UART registers by calling
  48:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         the HAL_UART_Init() API.
  49:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
  50:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     (#) For the UART Half duplex mode, initialize the UART registers by calling
  51:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         the HAL_HalfDuplex_Init() API.
  52:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
  53:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     (#) For the LIN mode, initialize the UART registers by calling the HAL_LIN_Init() API.
  54:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
  55:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     (#) For the Multi-Processor mode, initialize the UART registers by calling
  56:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         the HAL_MultiProcessor_Init() API.
  57:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
  58:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      [..]
  59:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (@) The specific UART interrupts (Transmission complete interrupt,
  60:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             RXNE interrupt and Error Interrupts) will be managed using the macros
  61:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             __HAL_UART_ENABLE_IT() and __HAL_UART_DISABLE_IT() inside the transmit
  62:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             and receive process.
  63:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
  64:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      [..]
  65:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (@) These APIs (HAL_UART_Init() and HAL_HalfDuplex_Init()) configure also the
  66:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             low level Hardware GPIO, CLOCK, CORTEX...etc) by calling the customized
  67:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             HAL_UART_MspInit() API.
  68:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
  69:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      [..]
  70:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         Three operation modes are available within this driver :
  71:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
  72:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      *** Polling mode IO operation ***
  73:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      =================================
  74:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      [..]
  75:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (+) Send an amount of data in blocking mode using HAL_UART_Transmit()
  76:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (+) Receive an amount of data in blocking mode using HAL_UART_Receive()
  77:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
  78:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      *** Interrupt mode IO operation ***
  79:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      ===================================
  80:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      [..]
  81:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (+) Send an amount of data in non blocking mode using HAL_UART_Transmit_IT()
  82:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (+) At transmission end of transfer HAL_UART_TxCpltCallback is executed and user can
  83:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             add his own code by customization of function pointer HAL_UART_TxCpltCallback
  84:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (+) Receive an amount of data in non blocking mode using HAL_UART_Receive_IT()
  85:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (+) At reception end of transfer HAL_UART_RxCpltCallback is executed and user can
  86:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             add his own code by customization of function pointer HAL_UART_RxCpltCallback
  87:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (+) In case of transfer Error, HAL_UART_ErrorCallback() function is executed and user can
  88:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             add his own code by customization of function pointer HAL_UART_ErrorCallback
  89:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
  90:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      *** DMA mode IO operation ***
  91:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      ==============================
  92:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      [..]
  93:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (+) Send an amount of data in non blocking mode (DMA) using HAL_UART_Transmit_DMA()
  94:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (+) At transmission end of half transfer HAL_UART_TxHalfCpltCallback is executed and user ca
  95:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             add his own code by customization of function pointer HAL_UART_TxHalfCpltCallback
  96:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (+) At transmission end of transfer HAL_UART_TxCpltCallback is executed and user can
  97:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             add his own code by customization of function pointer HAL_UART_TxCpltCallback
  98:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (+) Receive an amount of data in non blocking mode (DMA) using HAL_UART_Receive_DMA()
  99:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (+) At reception end of half transfer HAL_UART_RxHalfCpltCallback is executed and user can
 100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             add his own code by customization of function pointer HAL_UART_RxHalfCpltCallback
 101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (+) At reception end of transfer HAL_UART_RxCpltCallback is executed and user can
 102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             add his own code by customization of function pointer HAL_UART_RxCpltCallback
 103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (+) In case of transfer Error, HAL_UART_ErrorCallback() function is executed and user can
 104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             add his own code by customization of function pointer HAL_UART_ErrorCallback
 105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (+) Pause the DMA Transfer using HAL_UART_DMAPause()
 106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (+) Resume the DMA Transfer using HAL_UART_DMAResume()
 107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (+) Stop the DMA Transfer using HAL_UART_DMAStop()
 108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      *** UART HAL driver macros list ***
 110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      =============================================
 111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      [..]
 112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        Below the list of most used macros in UART HAL driver.
 113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (+) __HAL_UART_ENABLE: Enable the UART peripheral
 115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (+) __HAL_UART_DISABLE: Disable the UART peripheral
 116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (+) __HAL_UART_GET_FLAG : Check whether the specified UART flag is set or not
 117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (+) __HAL_UART_CLEAR_IT : Clears the specified UART ISR flag
 118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (+) __HAL_UART_ENABLE_IT: Enable the specified UART interrupt
 119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (+) __HAL_UART_DISABLE_IT: Disable the specified UART interrupt
 120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (+) __HAL_UART_GET_IT_SOURCE: Check whether the specified UART interrupt has occurred or not
 121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      [..]
 123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (@) You can refer to the UART HAL driver header file for more useful macros
 124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   @endverbatim
 126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   ******************************************************************************
 127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @attention
 128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *
 129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * <h2><center>&copy; COPYRIGHT(c) 2017 STMicroelectronics</center></h2>
 130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *
 131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * Redistribution and use in source and binary forms, with or without modification,
 132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * are permitted provided that the following conditions are met:
 133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *   1. Redistributions of source code must retain the above copyright notice,
 134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *      this list of conditions and the following disclaimer.
 135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
 136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *      this list of conditions and the following disclaimer in the documentation
 137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *      and/or other materials provided with the distribution.
 138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
 139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *      may be used to endorse or promote products derived from this software
 140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *      without specific prior written permission.
 141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *
 142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *
 153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   ******************************************************************************
 154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /* Includes ------------------------------------------------------------------*/
 157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** #include "stm32f7xx_hal.h"
 158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /** @addtogroup STM32F7xx_HAL_Driver
 160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @{
 161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /** @defgroup UART UART
 164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief HAL UART module driver
 165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @{
 166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** #ifdef HAL_UART_MODULE_ENABLED
 169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /* Private typedef -----------------------------------------------------------*/
 171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /* Private define ------------------------------------------------------------*/
 172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /** @defgroup UART_Private_Constants UART Private Constants
 173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @{
 174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** #define UART_CR1_FIELDS  ((uint32_t)(USART_CR1_M | USART_CR1_PCE | USART_CR1_PS | \
 176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****                                      USART_CR1_TE | USART_CR1_RE | USART_CR1_OVER8))
 177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
 178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @}
 179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /* Private macro -------------------------------------------------------------*/
 181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /* Private variables ---------------------------------------------------------*/
 182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /* Private function prototypes -----------------------------------------------*/
 183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /** @addtogroup UART_Private_Functions
 184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @{
 185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static void UART_EndTxTransfer(UART_HandleTypeDef *huart);
 187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static void UART_EndRxTransfer(UART_HandleTypeDef *huart);
 188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static void UART_DMATransmitCplt(DMA_HandleTypeDef *hdma);
 189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static void UART_DMAReceiveCplt(DMA_HandleTypeDef *hdma);
 190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static void UART_DMARxHalfCplt(DMA_HandleTypeDef *hdma);
 191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static void UART_DMATxHalfCplt(DMA_HandleTypeDef *hdma);
 192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static void UART_DMAError(DMA_HandleTypeDef *hdma);
 193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static void UART_DMAAbortOnError(DMA_HandleTypeDef *hdma);
 194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static HAL_StatusTypeDef UART_Transmit_IT(UART_HandleTypeDef *huart);
 195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static HAL_StatusTypeDef UART_EndTransmit_IT(UART_HandleTypeDef *huart);
 196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static HAL_StatusTypeDef UART_Receive_IT(UART_HandleTypeDef *huart);
 197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
 198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @}
 199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /* Exported functions --------------------------------------------------------*/
 202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /** @defgroup UART_Exported_Functions UART Exported Functions
 204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @{
 205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /** @defgroup UART_Exported_Functions_Group1 Initialization and de-initialization functions
 208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *  @brief    Initialization and Configuration functions
 209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *
 210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** @verbatim
 211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** ===============================================================================
 212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             ##### Initialization and Configuration functions #####
 213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****  ===============================================================================
 214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     [..]
 215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     This subsection provides a set of functions allowing to initialize the USARTx or the UARTy
 216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     in asynchronous mode.
 217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (+) For the asynchronous mode only these parameters can be configured:
 218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (++) Baud Rate
 219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (++) Word Length
 220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (++) Stop Bit
 221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (++) Parity: If the parity is enabled, then the MSB bit of the data written
 222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****              in the data register is transmitted but is changed by the parity bit.
 223:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****              Depending on the frame length defined by the M bit (8-bits or 9-bits),
 224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****              please refer to Reference manual for possible UART frame formats.
 225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (++) Hardware flow control
 226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (++) Receiver/transmitter modes
 227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (++) Over Sampling Method
 228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     [..]
 229:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     The HAL_UART_Init(), HAL_HalfDuplex_Init(), HAL_LIN_Init() and HAL_MultiProcessor_Init() APIs
 230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     follow respectively the UART asynchronous, UART Half duplex, LIN and Multi-Processor
 231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     configuration procedures (details for the procedures are available in reference manual (RM0329)
 232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** @endverbatim
 234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @{
 235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
 238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Initializes the UART mode according to the specified
 239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *         parameters in the UART_InitTypeDef and creates the associated handle .
 240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: uart handle
 241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
 242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_Init(UART_HandleTypeDef *huart)
 244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the UART handle allocation */
 246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart == NULL)
 247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_ERROR;
 249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart->Init.HwFlowCtl != UART_HWCONTROL_NONE)
 252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Check the parameters */
 254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     assert_param(IS_UART_HWFLOW_INSTANCE(huart->Instance));
 255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   else
 257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Check the parameters */
 259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     assert_param(IS_UART_INSTANCE(huart->Instance));
 260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart->gState == HAL_UART_STATE_RESET)
 263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Allocate lock resource and initialize it */
 265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->Lock = HAL_UNLOCKED;
 266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Init the low level hardware : GPIO, CLOCK */
 268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     HAL_UART_MspInit(huart);
 269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Disable the Peripheral */
 274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UART_DISABLE(huart);
 275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Set the UART Communication parameters */
 277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if (UART_SetConfig(huart) == HAL_ERROR)
 278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 279:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_ERROR;
 280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if (huart->AdvancedInit.AdvFeatureInit != UART_ADVFEATURE_NO_INIT)
 283:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     UART_AdvFeatureConfig(huart);
 285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* In asynchronous mode, the following bits must be kept cleared:
 288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   - LINEN and CLKEN bits in the USART_CR2 register,
 289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   - SCEN, HDSEL and IREN  bits in the USART_CR3 register.*/
 290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR2, (USART_CR2_LINEN | USART_CR2_CLKEN));
 291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_SCEN | USART_CR3_HDSEL | USART_CR3_IREN));
 292:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Enable the Peripheral */
 294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UART_ENABLE(huart);
 295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* TEACK and/or REACK to check before moving huart->gState and huart->RxState to Ready */
 297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return (UART_CheckIdleState(huart));
 298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
 301:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Initializes the half-duplex mode according to the specified
 302:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *         parameters in the UART_InitTypeDef and creates the associated handle .
 303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: UART handle
 304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
 305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 306:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_HalfDuplex_Init(UART_HandleTypeDef *huart)
 307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the UART handle allocation */
 309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart == NULL)
 310:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_ERROR;
 312:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart->gState == HAL_UART_STATE_RESET)
 315:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Allocate lock resource and initialize it */
 317:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->Lock = HAL_UNLOCKED;
 318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Init the low level hardware : GPIO, CLOCK */
 320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     HAL_UART_MspInit(huart);
 321:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 324:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 325:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Disable the Peripheral */
 326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UART_DISABLE(huart);
 327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Set the UART Communication parameters */
 329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if (UART_SetConfig(huart) == HAL_ERROR)
 330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 331:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_ERROR;
 332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 334:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if (huart->AdvancedInit.AdvFeatureInit != UART_ADVFEATURE_NO_INIT)
 335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 336:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     UART_AdvFeatureConfig(huart);
 337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 338:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* In half-duplex mode, the following bits must be kept cleared:
 340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   - LINEN and CLKEN bits in the USART_CR2 register,
 341:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   - SCEN and IREN bits in the USART_CR3 register.*/
 342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR2, (USART_CR2_LINEN | USART_CR2_CLKEN));
 343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_IREN | USART_CR3_SCEN));
 344:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Enable the Half-Duplex mode by setting the HDSEL bit in the CR3 register */
 346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   SET_BIT(huart->Instance->CR3, USART_CR3_HDSEL);
 347:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Enable the Peripheral */
 349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UART_ENABLE(huart);
 350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* TEACK and/or REACK to check before moving huart->gState and huart->RxState to Ready */
 352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return (UART_CheckIdleState(huart));
 353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 354:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
 357:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Initialize the LIN mode according to the specified
 358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *        parameters in the UART_InitTypeDef and creates the associated handle .
 359:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: UART handle.
 360:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param BreakDetectLength: specifies the LIN break detection length.
 361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *        This parameter can be one of the following values:
 362:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *          @arg @ref UART_LINBREAKDETECTLENGTH_10B 10-bit break detection
 363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *          @arg @ref UART_LINBREAKDETECTLENGTH_11B 11-bit break detection
 364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
 365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_LIN_Init(UART_HandleTypeDef *huart, uint32_t BreakDetectLength)
 367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 368:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the UART handle allocation */
 369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart == NULL)
 370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_ERROR;
 372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the parameters */
 375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   assert_param(IS_UART_INSTANCE(huart->Instance));
 376:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   assert_param(IS_UART_LIN_BREAK_DETECT_LENGTH(BreakDetectLength));
 377:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   assert_param(IS_LIN_WORD_LENGTH(huart->Init.WordLength));
 378:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart->gState == HAL_UART_STATE_RESET)
 380:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 381:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Allocate lock resource and initialize it */
 382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->Lock = HAL_UNLOCKED;
 383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Init the low level hardware : GPIO, CLOCK */
 385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     HAL_UART_MspInit(huart);
 386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 387:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Disable the Peripheral */
 391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UART_DISABLE(huart);
 392:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Set the UART Communication parameters */
 394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if (UART_SetConfig(huart) == HAL_ERROR)
 395:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 396:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_ERROR;
 397:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if (huart->AdvancedInit.AdvFeatureInit != UART_ADVFEATURE_NO_INIT)
 400:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     UART_AdvFeatureConfig(huart);
 402:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 403:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* In LIN mode, the following bits must be kept cleared:
 405:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   - LINEN and CLKEN bits in the USART_CR2 register,
 406:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   - SCEN and IREN bits in the USART_CR3 register.*/
 407:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR2, USART_CR2_CLKEN);
 408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_HDSEL | USART_CR3_IREN | USART_CR3_SCEN));
 409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Enable the LIN mode by setting the LINEN bit in the CR2 register */
 411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   SET_BIT(huart->Instance->CR2, USART_CR2_LINEN);
 412:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 413:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Set the USART LIN Break detection length. */
 414:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   MODIFY_REG(huart->Instance->CR2, USART_CR2_LBDL, BreakDetectLength);
 415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 416:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Enable the Peripheral */
 417:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UART_ENABLE(huart);
 418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 419:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* TEACK and/or REACK to check before moving huart->gState and huart->RxState to Ready */
 420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return (UART_CheckIdleState(huart));
 421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 423:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 424:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
 425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Initialize the multiprocessor mode according to the specified
 426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *        parameters in the UART_InitTypeDef and initialize the associated handle.
 427:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: UART handle.
 428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param Address: UART node address (4-, 6-, 7- or 8-bit long).
 429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param WakeUpMethod: specifies the UART wakeup method.
 430:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *        This parameter can be one of the following values:
 431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *          @arg @ref UART_WAKEUPMETHOD_IDLELINE WakeUp by an idle line detection
 432:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *          @arg @ref UART_WAKEUPMETHOD_ADDRESSMARK WakeUp by an address mark
 433:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @note  If the user resorts to idle line detection wake up, the Address parameter
 434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *        is useless and ignored by the initialization function.
 435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @note  If the user resorts to address mark wake up, the address length detection
 436:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *        is configured by default to 4 bits only. For the UART to be able to
 437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *        manage 6-, 7- or 8-bit long addresses detection
 438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
 439:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_MultiProcessor_Init(UART_HandleTypeDef *huart, uint8_t Address, uint32_t Wake
 441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 442:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the UART handle allocation */
 443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart == NULL)
 444:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_ERROR;
 446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 448:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the wake up method parameter */
 449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   assert_param(IS_UART_WAKEUPMETHOD(WakeUpMethod));
 450:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart->gState == HAL_UART_STATE_RESET)
 452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Allocate lock resource and initialize it */
 454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->Lock = HAL_UNLOCKED;
 455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 456:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Init the low level hardware : GPIO, CLOCK */
 457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     HAL_UART_MspInit(huart);
 458:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 460:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Disable the Peripheral */
 463:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UART_DISABLE(huart);
 464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 465:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Set the UART Communication parameters */
 466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if (UART_SetConfig(huart) == HAL_ERROR)
 467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 468:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_ERROR;
 469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 470:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 471:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if (huart->AdvancedInit.AdvFeatureInit != UART_ADVFEATURE_NO_INIT)
 472:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     UART_AdvFeatureConfig(huart);
 474:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 475:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 476:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* In multiprocessor mode, the following bits must be kept cleared:
 477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   - LINEN and CLKEN bits in the USART_CR2 register,
 478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   - SCEN, HDSEL and IREN  bits in the USART_CR3 register. */
 479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR2, (USART_CR2_LINEN | USART_CR2_CLKEN));
 480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_SCEN | USART_CR3_HDSEL | USART_CR3_IREN));
 481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 482:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if (WakeUpMethod == UART_WAKEUPMETHOD_ADDRESSMARK)
 483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 484:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* If address mark wake up method is chosen, set the USART address node */
 485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_ADD, ((uint32_t)Address << UART_CR2_ADDRESS_LSB_POS)
 486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 488:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Set the wake up method by setting the WAKE bit in the CR1 register */
 489:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   MODIFY_REG(huart->Instance->CR1, USART_CR1_WAKE, WakeUpMethod);
 490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Enable the Peripheral */
 492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UART_ENABLE(huart);
 493:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 494:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* TEACK and/or REACK to check before moving huart->gState and huart->RxState to Ready */
 495:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return (UART_CheckIdleState(huart));
 496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 497:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 498:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 499:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
 500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Initialize the RS485 Driver enable feature according to the specified
 501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *         parameters in the UART_InitTypeDef and creates the associated handle.
 502:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: UART handle.
 503:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param Polarity: select the driver enable polarity.
 504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *        This parameter can be one of the following values:
 505:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *          @arg @ref UART_DE_POLARITY_HIGH DE signal is active high
 506:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *          @arg @ref UART_DE_POLARITY_LOW  DE signal is active low
 507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param AssertionTime: Driver Enable assertion time:
 508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *                         5-bit value defining the time between the activation of the DE (Driver 
 509:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *                         signal and the beginning of the start bit. It is expressed in sample ti
 510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *                         units (1/8 or 1/16 bit time, depending on the oversampling rate)
 511:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param DeassertionTime: Driver Enable deassertion time:
 512:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *                         5-bit value defining the time between the end of the last stop bit, in 
 513:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *                         transmitted message, and the de-activation of the DE (Driver Enable) si
 514:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *                         It is expressed in sample time units (1/8 or 1/16 bit time, depending o
 515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *                         oversampling rate).
 516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
 517:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 518:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_RS485Ex_Init(UART_HandleTypeDef *huart, uint32_t Polarity, uint32_t Assertion
 519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 520:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t temp = 0x0;
 521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 522:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the UART handle allocation */
 523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart == NULL)
 524:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_ERROR;
 526:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 527:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the Driver Enable UART instance */
 528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   assert_param(IS_UART_DRIVER_ENABLE_INSTANCE(huart->Instance));
 529:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 530:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the Driver Enable polarity */
 531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   assert_param(IS_UART_DE_POLARITY(Polarity));
 532:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 533:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the Driver Enable assertion time */
 534:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   assert_param(IS_UART_ASSERTIONTIME(AssertionTime));
 535:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 536:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the Driver Enable deassertion time */
 537:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   assert_param(IS_UART_DEASSERTIONTIME(DeassertionTime));
 538:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 539:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart->gState == HAL_UART_STATE_RESET)
 540:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 541:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Allocate lock resource and initialize it */
 542:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->Lock = HAL_UNLOCKED;
 543:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 544:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Init the low level hardware : GPIO, CLOCK, CORTEX */
 545:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     HAL_UART_MspInit(huart);
 546:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 547:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 548:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 549:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 550:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Disable the Peripheral */
 551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UART_DISABLE(huart);
 552:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 553:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Set the UART Communication parameters */
 554:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if (UART_SetConfig(huart) == HAL_ERROR)
 555:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 556:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_ERROR;
 557:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 558:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 559:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart->AdvancedInit.AdvFeatureInit != UART_ADVFEATURE_NO_INIT)
 560:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 561:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     UART_AdvFeatureConfig(huart);
 562:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 563:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 564:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Enable the Driver Enable mode by setting the DEM bit in the CR3 register */
 565:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   SET_BIT(huart->Instance->CR3, USART_CR3_DEM);
 566:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 567:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Set the Driver Enable polarity */
 568:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   MODIFY_REG(huart->Instance->CR3, USART_CR3_DEP, Polarity);
 569:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 570:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Set the Driver Enable assertion and deassertion times */
 571:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   temp = (AssertionTime << UART_CR1_DEAT_ADDRESS_LSB_POS);
 572:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   temp |= (DeassertionTime << UART_CR1_DEDT_ADDRESS_LSB_POS);
 573:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   MODIFY_REG(huart->Instance->CR1, (USART_CR1_DEDT|USART_CR1_DEAT), temp);
 574:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 575:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Enable the Peripheral */
 576:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UART_ENABLE(huart);
 577:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 578:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* TEACK and/or REACK to check before moving huart->gState and huart->RxState to Ready */
 579:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return (UART_CheckIdleState(huart));
 580:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 581:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 582:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
 583:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief DeInitializes the UART peripheral
 584:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: uart handle
 585:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
 586:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 587:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_DeInit(UART_HandleTypeDef *huart)
 588:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 589:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the UART handle allocation */
 590:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart == NULL)
 591:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 592:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_ERROR;
 593:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 594:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 595:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the parameters */
 596:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   assert_param(IS_UART_INSTANCE(huart->Instance));
 597:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 598:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 599:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 600:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Disable the Peripheral */
 601:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UART_DISABLE(huart);
 602:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 603:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->Instance->CR1 = 0x0U;
 604:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->Instance->CR2 = 0x0U;
 605:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->Instance->CR3 = 0x0U;
 606:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 607:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* DeInit the low level hardware */
 608:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   HAL_UART_MspDeInit(huart);
 609:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 610:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->ErrorCode = HAL_UART_ERROR_NONE;
 611:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState    = HAL_UART_STATE_RESET;
 612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->RxState   = HAL_UART_STATE_RESET;
 613:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 614:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Process Unlock */
 615:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UNLOCK(huart);
 616:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 617:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return HAL_OK;
 618:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 619:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 620:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
 621:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief UART MSP Init
 622:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: uart handle
 623:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval None
 624:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 625:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** __weak void HAL_UART_MspInit(UART_HandleTypeDef *huart)
 626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 627:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
 628:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UNUSED(huart);
 629:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 630:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* NOTE : This function should not be modified, when the callback is needed,
 631:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             the HAL_UART_MspInit can be implemented in the user file
 632:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****    */
 633:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 634:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 635:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
 636:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief UART MSP DeInit
 637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: uart handle
 638:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval None
 639:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 640:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** __weak void HAL_UART_MspDeInit(UART_HandleTypeDef *huart)
 641:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 642:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
 643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UNUSED(huart);
 644:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 645:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* NOTE : This function should not be modified, when the callback is needed,
 646:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             the HAL_UART_MspDeInit can be implemented in the user file
 647:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****    */
 648:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 649:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 650:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
 651:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @}
 652:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 653:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 654:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /** @defgroup UART_Exported_Functions_Group2 IO operation functions
 655:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief UART Transmit/Receive functions
 656:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *
 657:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** @verbatim
 658:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****  ===============================================================================
 659:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****                       ##### IO operation functions #####
 660:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****  ===============================================================================
 661:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     This subsection provides a set of functions allowing to manage the UART asynchronous
 662:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     and Half duplex data transfers.
 663:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 664:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     (#) There are two mode of transfer:
 665:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (+) Blocking mode: The communication is performed in polling mode.
 666:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****            The HAL status of all data processing is returned by the same function
 667:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****            after finishing transfer.
 668:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (+) Non-Blocking mode: The communication is performed using Interrupts
 669:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****            or DMA, These API's return the HAL status.
 670:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****            The end of the data processing will be indicated through the
 671:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****            dedicated UART IRQ when using Interrupt mode or the DMA IRQ when
 672:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****            using DMA mode.
 673:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****            The HAL_UART_TxCpltCallback(), HAL_UART_RxCpltCallback() user callbacks
 674:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****            will be executed respectively at the end of the transmit or Receive process
 675:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****            The HAL_UART_ErrorCallback()user callback will be executed when a communication error is
 676:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 677:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     (#) Blocking mode API's are :
 678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (+) HAL_UART_Transmit()
 679:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (+) HAL_UART_Receive()
 680:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 681:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     (#) Non-Blocking mode API's with Interrupt are :
 682:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (+) HAL_UART_Transmit_IT()
 683:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (+) HAL_UART_Receive_IT()
 684:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (+) HAL_UART_IRQHandler()
 685:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (+) UART_Transmit_IT()
 686:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (+) UART_Receive_IT()
 687:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 688:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     (#) Non-Blocking mode API's with DMA are :
 689:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (+) HAL_UART_Transmit_DMA()
 690:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (+) HAL_UART_Receive_DMA()
 691:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (+) HAL_UART_DMAPause()
 692:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (+) HAL_UART_DMAResume()
 693:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (+) HAL_UART_DMAStop()
 694:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 695:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     (#) A set of Transfer Complete Callbacks are provided in Non_Blocking mode:
 696:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (+) HAL_UART_TxHalfCpltCallback()
 697:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (+) HAL_UART_TxCpltCallback()
 698:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (+) HAL_UART_RxHalfCpltCallback()
 699:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (+) HAL_UART_RxCpltCallback()
 700:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         (+) HAL_UART_ErrorCallback()
 701:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 702:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 703:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     -@- In the Half duplex communication, it is forbidden to run the transmit
 704:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         and receive process in parallel, the UART state HAL_UART_STATE_BUSY_TX_RX can't be useful.
 705:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 706:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** @endverbatim
 707:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @{
 708:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 709:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 710:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
 711:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Send an amount of data in blocking mode.
 712:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: UART handle.
 713:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param pData: Pointer to data buffer.
 714:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param Size: Amount of data to be sent.
 715:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param Timeout: Timeout duration.
 716:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
 717:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 718:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_Transmit(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint3
 719:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 720:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t* tmp;
 721:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t tickstart = 0U;
 722:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 723:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check that a Tx process is not already ongoing */
 724:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart->gState == HAL_UART_STATE_READY)
 725:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 726:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if((pData == NULL ) || (Size == 0U))
 727:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 728:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       return  HAL_ERROR;
 729:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 730:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 731:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Process Locked */
 732:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     __HAL_LOCK(huart);
 733:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 734:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->ErrorCode = HAL_UART_ERROR_NONE;
 735:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_BUSY_TX;
 736:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 737:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Init tickstart for timeout managment*/
 738:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     tickstart = HAL_GetTick();
 739:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 740:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->TxXferSize = Size;
 741:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->TxXferCount = Size;
 742:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     while(huart->TxXferCount > 0U)
 743:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 744:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       huart->TxXferCount--;
 745:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       if(UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TXE, RESET, tickstart, Timeout) != HAL_OK)
 746:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
 747:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         return HAL_TIMEOUT;
 748:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
 749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE
 750:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
 751:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         tmp = (uint16_t*) pData;
 752:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         huart->Instance->TDR = (*tmp & (uint16_t)0x01FFU);
 753:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         pData += 2;
 754:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
 755:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       else
 756:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
 757:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         huart->Instance->TDR = (*pData++ & (uint8_t)0xFFU);
 758:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
 759:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 760:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if(UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TC, RESET, tickstart, Timeout) != HAL_OK)
 761:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 762:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       return HAL_TIMEOUT;
 763:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 764:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 765:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* At end of Tx process, restore huart->gState to Ready */
 766:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_READY;
 767:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 768:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Process Unlocked */
 769:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     __HAL_UNLOCK(huart);
 770:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 771:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_OK;
 772:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 773:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   else
 774:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 775:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_BUSY;
 776:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 777:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 778:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 779:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
 780:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Receive an amount of data in blocking mode.
 781:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: UART handle.
 782:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param pData: pointer to data buffer.
 783:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param Size: amount of data to be received.
 784:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param Timeout: Timeout duration.
 785:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
 786:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 787:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_Receive(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32
 788:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 789:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t* tmp;
 790:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t uhMask;
 791:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t tickstart = 0U;
 792:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 793:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check that a Rx process is not already ongoing */
 794:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart->RxState == HAL_UART_STATE_READY)
 795:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 796:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if((pData == NULL ) || (Size == 0U))
 797:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 798:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       return  HAL_ERROR;
 799:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 800:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 801:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Process Locked */
 802:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     __HAL_LOCK(huart);
 803:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 804:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->ErrorCode = HAL_UART_ERROR_NONE;
 805:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_BUSY_RX;
 806:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 807:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Init tickstart for timeout managment*/
 808:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     tickstart = HAL_GetTick();
 809:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 810:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->RxXferSize = Size;
 811:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->RxXferCount = Size;
 812:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 813:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Computation of UART mask to apply to RDR register */
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     UART_MASK_COMPUTATION(huart);
 815:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     uhMask = huart->Mask;
 816:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 817:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* as long as data have to be received */
 818:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     while(huart->RxXferCount > 0U)
 819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 820:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       huart->RxXferCount--;
 821:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       if(UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_RXNE, RESET, tickstart, Timeout) != HAL_OK)
 822:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
 823:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         return HAL_TIMEOUT;
 824:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
 825:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE
 826:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
 827:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         tmp = (uint16_t*) pData ;
 828:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         *tmp = (uint16_t)(huart->Instance->RDR & uhMask);
 829:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         pData +=2U;
 830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
 831:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       else
 832:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
 833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         *pData++ = (uint8_t)(huart->Instance->RDR & (uint8_t)uhMask);
 834:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
 835:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 836:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 837:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* At end of Rx process, restore huart->RxState to Ready */
 838:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_READY;
 839:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 840:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Process Unlocked */
 841:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     __HAL_UNLOCK(huart);
 842:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 843:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_OK;
 844:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 845:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   else
 846:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 847:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_BUSY;
 848:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 849:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 850:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 851:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
 852:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Send an amount of data in interrupt mode.
 853:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: UART handle.
 854:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param pData: pointer to data buffer.
 855:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param Size: amount of data to be sent.
 856:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
 857:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 858:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_Transmit_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size)
 859:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 860:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check that a Tx process is not already ongoing */
 861:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart->gState == HAL_UART_STATE_READY)
 862:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 863:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if((pData == NULL ) || (Size == 0U))
 864:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 865:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       return HAL_ERROR;
 866:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 867:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 868:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Process Locked */
 869:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     __HAL_LOCK(huart);
 870:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 871:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->pTxBuffPtr = pData;
 872:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->TxXferSize = Size;
 873:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->TxXferCount = Size;
 874:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 875:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->ErrorCode = HAL_UART_ERROR_NONE;
 876:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_BUSY_TX;
 877:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 878:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Process Unlocked */
 879:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     __HAL_UNLOCK(huart);
 880:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 881:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Enable the UART Transmit Data Register Empty Interrupt */
 882:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     SET_BIT(huart->Instance->CR1, USART_CR1_TXEIE);
 883:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 884:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_OK;
 885:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 886:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   else
 887:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 888:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_BUSY;
 889:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 890:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 891:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 892:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
 893:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Receive an amount of data in interrupt mode.
 894:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: UART handle.
 895:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param pData: pointer to data buffer.
 896:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param Size: amount of data to be received.
 897:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
 898:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 899:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_Receive_IT(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size)
 900:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 901:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check that a Rx process is not already ongoing */
 902:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart->RxState == HAL_UART_STATE_READY)
 903:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 904:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if((pData == NULL ) || (Size == 0U))
 905:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 906:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       return HAL_ERROR;
 907:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 908:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 909:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Process Locked */
 910:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     __HAL_LOCK(huart);
 911:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 912:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->pRxBuffPtr = pData;
 913:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->RxXferSize = Size;
 914:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->RxXferCount = Size;
 915:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 916:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Computation of UART mask to apply to RDR register */
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     UART_MASK_COMPUTATION(huart);
 918:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 919:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->ErrorCode = HAL_UART_ERROR_NONE;
 920:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_BUSY_RX;
 921:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 922:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Process Unlocked */
 923:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     __HAL_UNLOCK(huart);
 924:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 925:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Enable the UART Error Interrupt: (Frame error, noise error, overrun error) */
 926:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     SET_BIT(huart->Instance->CR3, USART_CR3_EIE);
 927:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 928:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Enable the UART Parity Error and Data Register not empty Interrupts */
 929:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     SET_BIT(huart->Instance->CR1, USART_CR1_PEIE | USART_CR1_RXNEIE);
 930:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 931:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_OK;
 932:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 933:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   else
 934:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 935:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_BUSY;
 936:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 937:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 938:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 939:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
 940:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Send an amount of data in DMA mode.
 941:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: UART handle.
 942:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param pData: pointer to data buffer.
 943:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param Size: amount of data to be sent.
 944:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
 945:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
 946:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_Transmit_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size)
 947:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 948:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t *tmp;
 949:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 950:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check that a Tx process is not already ongoing */
 951:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart->gState == HAL_UART_STATE_READY)
 952:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 953:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if((pData == NULL ) || (Size == 0U))
 954:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 955:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       return HAL_ERROR;
 956:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 957:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 958:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Process Locked */
 959:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     __HAL_LOCK(huart);
 960:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 961:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->pTxBuffPtr = pData;
 962:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->TxXferSize = Size;
 963:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->TxXferCount = Size;
 964:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 965:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->ErrorCode = HAL_UART_ERROR_NONE;
 966:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_BUSY_TX;
 967:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 968:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Set the UART DMA transfer complete callback */
 969:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->hdmatx->XferCpltCallback = UART_DMATransmitCplt;
 970:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 971:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Set the UART DMA Half transfer complete callback */
 972:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->hdmatx->XferHalfCpltCallback = UART_DMATxHalfCplt;
 973:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 974:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Set the DMA error callback */
 975:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->hdmatx->XferErrorCallback = UART_DMAError;
 976:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 977:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Set the DMA abort callback */
 978:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->hdmatx->XferAbortCallback = NULL;
 979:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 980:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Enable the UART transmit DMA channel */
 981:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     tmp = (uint32_t*)&pData;
 982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     HAL_DMA_Start_IT(huart->hdmatx, *(uint32_t*)tmp, (uint32_t)&huart->Instance->TDR, Size);
 983:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 984:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Clear the TC flag in the SR register by writing 0 to it */
 985:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     __HAL_UART_CLEAR_IT(huart, UART_FLAG_TC);
 986:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 987:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Process Unlocked */
 988:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     __HAL_UNLOCK(huart);
 989:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 990:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Enable the DMA transfer for transmit request by setting the DMAT bit
 991:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        in the UART CR3 register */
 992:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     SET_BIT(huart->Instance->CR3, USART_CR3_DMAT);
 993:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 994:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_OK;
 995:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 996:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   else
 997:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 998:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_BUSY;
 999:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1000:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1001:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1002:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1003:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Receive an amount of data in DMA mode.
1004:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: UART handle.
1005:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param pData: pointer to data buffer.
1006:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param Size: amount of data to be received.
1007:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @note   When the UART parity is enabled (PCE = 1), the received data contain
1008:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *         the parity bit (MSB position).
1009:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
1010:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1011:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_Receive_DMA(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size)
1012:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1013:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t *tmp;
1014:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1015:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check that a Rx process is not already ongoing */
1016:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart->RxState == HAL_UART_STATE_READY)
1017:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1018:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if((pData == NULL ) || (Size == 0U))
1019:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
1020:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       return HAL_ERROR;
1021:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
1022:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1023:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Process Locked */
1024:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     __HAL_LOCK(huart);
1025:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1026:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->pRxBuffPtr = pData;
1027:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->RxXferSize = Size;
1028:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1029:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->ErrorCode = HAL_UART_ERROR_NONE;
1030:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_BUSY_RX;
1031:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1032:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Set the UART DMA transfer complete callback */
1033:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->hdmarx->XferCpltCallback = UART_DMAReceiveCplt;
1034:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1035:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Set the UART DMA Half transfer complete callback */
1036:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->hdmarx->XferHalfCpltCallback = UART_DMARxHalfCplt;
1037:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1038:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Set the DMA error callback */
1039:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->hdmarx->XferErrorCallback = UART_DMAError;
1040:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1041:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Set the DMA abort callback */
1042:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->hdmarx->XferAbortCallback = NULL;
1043:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1044:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Enable the DMA channel */
1045:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     tmp = (uint32_t*)&pData;
1046:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     HAL_DMA_Start_IT(huart->hdmarx, (uint32_t)&huart->Instance->RDR, *(uint32_t*)tmp, Size);
1047:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1048:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Process Unlocked */
1049:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     __HAL_UNLOCK(huart);
1050:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1051:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Enable the UART Parity Error Interrupt */
1052:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     SET_BIT(huart->Instance->CR1, USART_CR1_PEIE);
1053:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1054:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Enable the UART Error Interrupt: (Frame error, noise error, overrun error) */
1055:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     SET_BIT(huart->Instance->CR3, USART_CR3_EIE);
1056:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1057:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Enable the DMA transfer for the receiver request by setting the DMAR bit
1058:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     in the UART CR3 register */
1059:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     SET_BIT(huart->Instance->CR3, USART_CR3_DMAR);
1060:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1061:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_OK;
1062:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1063:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   else
1064:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1065:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_BUSY;
1066:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1067:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1068:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1069:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1070:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Pause the DMA Transfer.
1071:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: UART handle.
1072:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
1073:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1074:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_DMAPause(UART_HandleTypeDef *huart)
1075:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1076:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Process Locked */
1077:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_LOCK(huart);
1078:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1079:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if ((huart->gState == HAL_UART_STATE_BUSY_TX) &&
1080:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAT)))
1081:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1082:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Disable the UART DMA Tx request */
1083:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAT);
1084:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1085:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if ((huart->RxState == HAL_UART_STATE_BUSY_RX) &&
1086:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR)))
1087:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1088:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Disable PE and ERR (Frame error, noise error, overrun error) interrupts */
1089:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR1, USART_CR1_PEIE);
1090:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
1091:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1092:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Disable the UART DMA Rx request */
1093:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAR);
1094:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1095:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1096:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Process Unlocked */
1097:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UNLOCK(huart);
1098:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1099:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return HAL_OK;
1100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Resume the DMA Transfer.
1104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: UART handle.
1105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
1106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_DMAResume(UART_HandleTypeDef *huart)
1108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Process Locked */
1110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_LOCK(huart);
1111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart->gState == HAL_UART_STATE_BUSY_TX)
1113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Enable the UART DMA Tx request */
1115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     SET_BIT(huart->Instance->CR3, USART_CR3_DMAT);
1116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart->RxState == HAL_UART_STATE_BUSY_RX)
1118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Clear the Overrun flag before resuming the Rx transfer*/
1120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     __HAL_UART_CLEAR_IT(huart, UART_CLEAR_OREF);
1121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Reenable PE and ERR (Frame error, noise error, overrun error) interrupts */
1123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     SET_BIT(huart->Instance->CR1, USART_CR1_PEIE);
1124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     SET_BIT(huart->Instance->CR3, USART_CR3_EIE);
1125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Enable the UART DMA Rx request */
1127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     SET_BIT(huart->Instance->CR3, USART_CR3_DMAR);
1128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* If the UART peripheral is still not enabled, enable it */
1131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if ((huart->Instance->CR1 & USART_CR1_UE) == 0U)
1132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Enable UART peripheral */
1134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     __HAL_UART_ENABLE(huart);
1135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return HAL_OK;
1138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Stop the DMA Transfer.
1142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: UART handle.
1143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
1144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_UART_DMAStop(UART_HandleTypeDef *huart)
1146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* The Lock is not implemented on this API to allow the user application
1148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      to call the HAL UART API under callbacks HAL_UART_TxCpltCallback() / HAL_UART_RxCpltCallback()
1149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      HAL_UART_TxHalfCpltCallback / HAL_UART_RxHalfCpltCallback:
1150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      indeed, when HAL_DMA_Abort() API is called, the DMA TX/RX Transfer or Half Transfer complete
1151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      interrupt is generated if the DMA transfer interruption occurs at the middle or at the end of
1152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      the stream and the corresponding call back is executed. */
1153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Stop UART DMA Tx request if ongoing */
1155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if ((huart->gState == HAL_UART_STATE_BUSY_TX) &&
1156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAT)))
1157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAT);
1159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Abort the UART DMA Tx channel */
1161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if(huart->hdmatx != NULL)
1162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
1163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       HAL_DMA_Abort(huart->hdmatx);
1164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
1165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     UART_EndTxTransfer(huart);
1167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Stop UART DMA Rx request if ongoing */
1170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if ((huart->RxState == HAL_UART_STATE_BUSY_RX) &&
1171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR)))
1172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAR);
1174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Abort the UART DMA Rx channel */
1176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if(huart->hdmarx != NULL)
1177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
1178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       HAL_DMA_Abort(huart->hdmarx);
1179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
1180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     UART_EndRxTransfer(huart);
1182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return HAL_OK;
1185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief This function handles UART interrupt request.
1189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: uart handle
1190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval None
1191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** void HAL_UART_IRQHandler(UART_HandleTypeDef *huart)
1193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t isrflags   = READ_REG(huart->Instance->ISR);
1195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t cr1its     = READ_REG(huart->Instance->CR1);
1196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t cr3its     = READ_REG(huart->Instance->CR3);
1197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t errorflags;
1198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* If no error occurs */
1200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   errorflags = (isrflags & (uint32_t)(USART_ISR_PE | USART_ISR_FE | USART_ISR_ORE | USART_ISR_NE));
1201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if (errorflags == RESET)
1202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* UART in mode Receiver ---------------------------------------------------*/
1204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if(((isrflags & USART_ISR_RXNE) != RESET) && ((cr1its & USART_CR1_RXNEIE) != RESET))
1205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
1206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       UART_Receive_IT(huart);
1207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       return;
1208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
1209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* If some errors occur */
1212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(   (errorflags != RESET)
1213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      && (   ((cr3its & USART_CR3_EIE) != RESET)
1214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****          || ((cr1its & (USART_CR1_RXNEIE | USART_CR1_PEIE)) != RESET)) )
1215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* UART parity error interrupt occurred -------------------------------------*/
1218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if(((isrflags & USART_ISR_PE) != RESET) && ((cr1its & USART_CR1_PEIE) != RESET))
1219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
1220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       __HAL_UART_CLEAR_IT(huart, UART_CLEAR_PEF);
1221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       huart->ErrorCode |= HAL_UART_ERROR_PE;
1223:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
1224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* UART frame error interrupt occurred --------------------------------------*/
1226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if(((isrflags & USART_ISR_FE) != RESET) && ((cr3its & USART_CR3_EIE) != RESET))
1227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
1228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       __HAL_UART_CLEAR_IT(huart, UART_CLEAR_FEF);
1229:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       huart->ErrorCode |= HAL_UART_ERROR_FE;
1231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
1232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* UART noise error interrupt occurred --------------------------------------*/
1234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if(((isrflags & USART_ISR_NE) != RESET) && ((cr3its & USART_CR3_EIE) != RESET))
1235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
1236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       __HAL_UART_CLEAR_IT(huart, UART_CLEAR_NEF);
1237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       huart->ErrorCode |= HAL_UART_ERROR_NE;
1239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
1240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     
1241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* UART Over-Run interrupt occurred -----------------------------------------*/
1242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if(((isrflags & USART_ISR_ORE) != RESET) &&
1243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (((cr1its & USART_CR1_RXNEIE) != RESET) || ((cr3its & USART_CR3_EIE) != RESET)))
1244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
1245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       __HAL_UART_CLEAR_IT(huart, UART_CLEAR_OREF);
1246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       huart->ErrorCode |= HAL_UART_ERROR_ORE;
1248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
1249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Call UART Error Call back function if need be --------------------------*/
1251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if(huart->ErrorCode != HAL_UART_ERROR_NONE)
1252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
1253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       /* UART in mode Receiver ---------------------------------------------------*/
1254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       if(((isrflags & USART_ISR_RXNE) != RESET) && ((cr1its & USART_CR1_RXNEIE) != RESET))
1255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
1256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         UART_Receive_IT(huart);
1257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
1258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       /* If Overrun error occurs, or if any error occurs in DMA mode reception,
1260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****          consider error as blocking */
1261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       if (((huart->ErrorCode & HAL_UART_ERROR_ORE) != RESET) ||
1262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****           (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR)))
1263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
1264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         /* Blocking error : transfer is aborted
1265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****            Set the UART state ready to be able to start again the process,
1266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****            Disable Rx Interrupts, and disable Rx DMA request, if ongoing */
1267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         UART_EndRxTransfer(huart);
1268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         /* Disable the UART DMA Rx request if enabled */
1270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         if (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR))
1271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         {
1272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****           CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAR);
1273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****           /* Abort the UART DMA Rx channel */
1275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****           if(huart->hdmarx != NULL)
1276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****           {
1277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             /* Set the UART DMA Abort callback :
1278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             will lead to call HAL_UART_ErrorCallback() at end of DMA abort procedure */
1279:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             huart->hdmarx->XferAbortCallback = UART_DMAAbortOnError;
1280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             /* Abort DMA RX */
1282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             if(HAL_DMA_Abort_IT(huart->hdmarx) != HAL_OK)
1283:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             {
1284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****               /* Call Directly huart->hdmarx->XferAbortCallback function in case of error */
1285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****               huart->hdmarx->XferAbortCallback(huart->hdmarx);
1286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             }
1287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****           }
1288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****           else
1289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****           {
1290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             /* Call user error callback */
1291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             HAL_UART_ErrorCallback(huart);
1292:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****           }
1293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         }
1294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         else
1295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         {
1296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****           /* Call user error callback */
1297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****           HAL_UART_ErrorCallback(huart);
1298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         }
1299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
1300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       else
1301:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
1302:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         /* Non Blocking error : transfer could go on.
1303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****            Error is notified to user through user error callback */
1304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         HAL_UART_ErrorCallback(huart);
1305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         huart->ErrorCode = HAL_UART_ERROR_NONE;
1306:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
1307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
1308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return;
1309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1310:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   } /* End if some error occurs */
1311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1312:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* UART in mode Transmitter ------------------------------------------------*/
1313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(((isrflags & USART_ISR_TXE) != RESET) && ((cr1its & USART_CR1_TXEIE) != RESET))
1314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1315:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     UART_Transmit_IT(huart);
1316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return;
1317:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* UART in mode Transmitter (transmission end) -----------------------------*/
1320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(((isrflags & USART_ISR_TC) != RESET) && ((cr1its & USART_CR1_TCIE) != RESET))
1321:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     UART_EndTransmit_IT(huart);
1323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return;
1324:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1325:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief  This function handles UART Communication Timeout.
1330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param  huart UART handle
1331:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param  Flag specifies the UART flag to check.
1332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param  Status The new Flag status (SET or RESET).
1333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param  Tickstart Tick start value
1334:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param  Timeout Timeout duration
1335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
1336:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef UART_WaitOnFlagUntilTimeout(UART_HandleTypeDef *huart, uint32_t Flag, FlagStatus 
1338:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Wait until flag is set */
1340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   while((__HAL_UART_GET_FLAG(huart, Flag) ? SET : RESET) == Status)
1341:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Check for the Timeout */
1343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if(Timeout != HAL_MAX_DELAY)
1344:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
1345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       if((Timeout == 0U)||((HAL_GetTick()-Tickstart) >=  Timeout))
1346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
1347:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         /* Disable TXE, RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts for t
1348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE | USART_CR1_PEIE | USART_CR1_TXEIE));
1349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
1350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         huart->gState = HAL_UART_STATE_READY;
1352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         huart->RxState = HAL_UART_STATE_READY;
1353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1354:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         /* Process Unlocked */
1355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         __HAL_UNLOCK(huart);
1356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         return HAL_TIMEOUT;
1357:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
1358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
1359:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1360:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return HAL_OK;
1361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1362:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief DMA UART transmit process complete callback
1365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param hdma: DMA handle
1366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval None
1367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1368:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static void UART_DMATransmitCplt(DMA_HandleTypeDef *hdma)
1369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UART_HandleTypeDef* huart = ( UART_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
1371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* DMA Normal mode*/
1373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if((hdma->Instance->CR & DMA_SxCR_CIRC) == 0U)
1374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->TxXferCount = 0U;
1376:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1377:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Disable the DMA transfer for transmit request by setting the DMAT bit
1378:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        in the UART CR3 register */
1379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAT);
1380:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1381:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Enable the UART Transmit Complete Interrupt */
1382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     SET_BIT(huart->Instance->CR1, USART_CR1_TCIE);
1383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* DMA Circular mode */
1385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   else
1386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1387:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     HAL_UART_TxCpltCallback(huart);
1388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1392:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief DMA UART transmit process half complete callback
1393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param hdma : DMA handle
1394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval None
1395:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1396:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static void UART_DMATxHalfCplt(DMA_HandleTypeDef *hdma)
1397:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UART_HandleTypeDef* huart = (UART_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
1399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1400:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   HAL_UART_TxHalfCpltCallback(huart);
1401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1402:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1403:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief DMA UART receive process complete callback
1405:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param hdma: DMA handle
1406:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval None
1407:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static void UART_DMAReceiveCplt(DMA_HandleTypeDef *hdma)
1409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UART_HandleTypeDef* huart = ( UART_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
1411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1412:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* DMA Normal mode */
1413:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if((hdma->Instance->CR & DMA_SxCR_CIRC) == 0U)
1414:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->RxXferCount = 0U;
1416:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1417:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Disable PE and ERR (Frame error, noise error, overrun error) interrupts */
1418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR1, USART_CR1_PEIE);
1419:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
1420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Disable the DMA transfer for the receiver request by setting the DMAR bit
1422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     in the UART CR3 register */
1423:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_DMAR);
1424:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 	/* At end of Rx process, restore huart->RxState to Ready */
1426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_READY;
1427:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   HAL_UART_RxCpltCallback(huart);
1429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1430:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1432:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief DMA UART receive process half complete callback
1433:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param hdma : DMA handle
1434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval None
1435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1436:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static void UART_DMARxHalfCplt(DMA_HandleTypeDef *hdma)
1437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UART_HandleTypeDef* huart = (UART_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
1439:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   HAL_UART_RxHalfCpltCallback(huart);
1441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1442:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1444:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief DMA UART communication error callback
1445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param hdma: DMA handle
1446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval None
1447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1448:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static void UART_DMAError(DMA_HandleTypeDef *hdma)
1449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1450:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UART_HandleTypeDef* huart = ( UART_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
1451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->RxXferCount = 0U;
1452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->TxXferCount = 0U;
1453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Stop UART DMA Tx request if ongoing */
1454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if (  (huart->gState == HAL_UART_STATE_BUSY_TX)
1455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       &&(HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAT)) )
1456:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     UART_EndTxTransfer(huart);
1458:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1460:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Stop UART DMA Rx request if ongoing */
1461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if (  (huart->RxState == HAL_UART_STATE_BUSY_RX)
1462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       &&(HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR)) )
1463:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     UART_EndRxTransfer(huart);
1465:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   SET_BIT(huart->ErrorCode, HAL_UART_ERROR_DMA);
1467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   HAL_UART_ErrorCallback(huart);
1468:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1470:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1471:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief DMA UART communication abort callback, when call by HAL services on Error
1472:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *        (To be called at end of DMA Abort procedure following error occurrence).
1473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param hdma: DMA handle.
1474:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval None
1475:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1476:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static void UART_DMAAbortOnError(DMA_HandleTypeDef *hdma)
1477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UART_HandleTypeDef* huart = (UART_HandleTypeDef*)(hdma->Parent);
1479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->RxXferCount = 0U;
1480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->TxXferCount = 0U;
1481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1482:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   HAL_UART_ErrorCallback(huart);
1483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1484:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Tx Transfer completed callbacks
1487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: uart handle
1488:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval None
1489:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****  __weak void HAL_UART_TxCpltCallback(UART_HandleTypeDef *huart)
1491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
1493:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UNUSED(huart);
1494:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1495:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* NOTE : This function should not be modified, when the callback is needed,
1496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             the HAL_UART_TxCpltCallback can be implemented in the user file
1497:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****    */
1498:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1499:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief  Tx Half Transfer completed callbacks.
1502:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param  huart: UART handle
1503:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval None
1504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1505:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****  __weak void HAL_UART_TxHalfCpltCallback(UART_HandleTypeDef *huart)
1506:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
1508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UNUSED(huart);
1509:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* NOTE: This function should not be modified, when the callback is needed,
1511:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****            the HAL_UART_TxHalfCpltCallback can be implemented in the user file
1512:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****    */
1513:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1514:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Rx Transfer completed callbacks
1517:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: uart handle
1518:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval None
1519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1520:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** __weak void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
1521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1522:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
1523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UNUSED(huart);
1524:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* NOTE : This function should not be modified, when the callback is needed,
1526:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             the HAL_UART_RxCpltCallback can be implemented in the user file
1527:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****    */
1528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1529:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1530:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief  Rx Half Transfer completed callbacks.
1532:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param  huart: UART handle
1533:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval None
1534:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1535:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** __weak void HAL_UART_RxHalfCpltCallback(UART_HandleTypeDef *huart)
1536:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1537:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
1538:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UNUSED(huart);
1539:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1540:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* NOTE: This function should not be modified, when the callback is needed,
1541:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****            the HAL_UART_RxHalfCpltCallback can be implemented in the user file
1542:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****    */
1543:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1544:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1545:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1546:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief UART error callbacks
1547:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: uart handle
1548:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval None
1549:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1550:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****  __weak void HAL_UART_ErrorCallback(UART_HandleTypeDef *huart)
1551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1552:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
1553:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UNUSED(huart);
1554:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1555:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* NOTE : This function should not be modified, when the callback is needed,
1556:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             the HAL_UART_ErrorCallback can be implemented in the user file
1557:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****    */
1558:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1559:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1560:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1561:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Send an amount of data in interrupt mode
1562:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *         Function called under interruption only, once
1563:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *         interruptions have been enabled by HAL_UART_Transmit_IT()
1564:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param  huart: UART handle
1565:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
1566:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1567:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static HAL_StatusTypeDef UART_Transmit_IT(UART_HandleTypeDef *huart)
1568:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
  26              		.loc 1 1568 0
  27              		.cfi_startproc
  28              		@ args = 0, pretend = 0, frame = 0
  29              		@ frame_needed = 0, uses_anonymous_args = 0
  30              		@ link register save eliminated.
  31              	.LVL0:
1569:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t* tmp;
1570:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1571:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check that a Tx process is ongoing */
1572:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if (huart->gState == HAL_UART_STATE_BUSY_TX)
  32              		.loc 1 1572 0
  33 0000 90F86930 		ldrb	r3, [r0, #105]	@ zero_extendqisi2
  34 0004 DBB2     		uxtb	r3, r3
  35 0006 212B     		cmp	r3, #33
  36 0008 2ED1     		bne	.L6
1573:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1574:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1575:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if(huart->TxXferCount == 0U)
  37              		.loc 1 1575 0
  38 000a B0F85230 		ldrh	r3, [r0, #82]
  39 000e 9BB2     		uxth	r3, r3
  40 0010 8BB1     		cbz	r3, .L7
1576:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
1577:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       /* Disable the UART Transmit Data Register Empty Interrupt */
1578:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       CLEAR_BIT(huart->Instance->CR1, USART_CR1_TXEIE);
1579:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1580:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       /* Enable the UART Transmit Complete Interrupt */
1581:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       SET_BIT(huart->Instance->CR1, USART_CR1_TCIE);
1582:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1583:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       return HAL_OK;
1584:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
1585:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     else
1586:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
1587:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE
  41              		.loc 1 1587 0
  42 0012 8368     		ldr	r3, [r0, #8]
  43 0014 B3F5805F 		cmp	r3, #4096
  44 0018 19D0     		beq	.L8
  45              	.L4:
1588:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
1589:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         tmp = (uint16_t*) huart->pTxBuffPtr;
1590:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         huart->Instance->TDR = (*tmp & (uint16_t)0x01FFU);
1591:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         huart->pTxBuffPtr += 2U;
1592:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
1593:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       else
1594:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
1595:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         huart->Instance->TDR = (uint8_t)(*huart->pTxBuffPtr++ & (uint8_t)0xFFU);
  46              		.loc 1 1595 0
  47 001a C36C     		ldr	r3, [r0, #76]
  48 001c 5A1C     		adds	r2, r3, #1
  49 001e C264     		str	r2, [r0, #76]
  50 0020 1A78     		ldrb	r2, [r3]	@ zero_extendqisi2
  51 0022 0368     		ldr	r3, [r0]
  52 0024 9A62     		str	r2, [r3, #40]
  53              	.L5:
1596:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
1597:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1598:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       huart->TxXferCount--;
  54              		.loc 1 1598 0
  55 0026 B0F85230 		ldrh	r3, [r0, #82]
  56 002a 013B     		subs	r3, r3, #1
  57 002c 9BB2     		uxth	r3, r3
  58 002e A0F85230 		strh	r3, [r0, #82]	@ movhi
1599:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1600:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       return HAL_OK;
  59              		.loc 1 1600 0
  60 0032 0020     		movs	r0, #0
  61              	.LVL1:
  62 0034 7047     		bx	lr
  63              	.LVL2:
  64              	.L7:
1578:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
  65              		.loc 1 1578 0
  66 0036 0268     		ldr	r2, [r0]
  67 0038 1368     		ldr	r3, [r2]
  68 003a 23F08003 		bic	r3, r3, #128
  69 003e 1360     		str	r3, [r2]
1581:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
  70              		.loc 1 1581 0
  71 0040 0268     		ldr	r2, [r0]
  72 0042 1368     		ldr	r3, [r2]
  73 0044 43F04003 		orr	r3, r3, #64
  74 0048 1360     		str	r3, [r2]
1583:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
  75              		.loc 1 1583 0
  76 004a 0020     		movs	r0, #0
  77              	.LVL3:
  78 004c 7047     		bx	lr
  79              	.LVL4:
  80              	.L8:
1587:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
  81              		.loc 1 1587 0 discriminator 1
  82 004e 0369     		ldr	r3, [r0, #16]
  83 0050 002B     		cmp	r3, #0
  84 0052 E2D1     		bne	.L4
1589:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         huart->Instance->TDR = (*tmp & (uint16_t)0x01FFU);
  85              		.loc 1 1589 0
  86 0054 C36C     		ldr	r3, [r0, #76]
  87              	.LVL5:
1590:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         huart->pTxBuffPtr += 2U;
  88              		.loc 1 1590 0
  89 0056 1B88     		ldrh	r3, [r3]
  90              	.LVL6:
  91 0058 0268     		ldr	r2, [r0]
  92 005a C3F30803 		ubfx	r3, r3, #0, #9
  93 005e 9362     		str	r3, [r2, #40]
  94              	.LVL7:
1591:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
  95              		.loc 1 1591 0
  96 0060 C36C     		ldr	r3, [r0, #76]
  97 0062 0233     		adds	r3, r3, #2
  98 0064 C364     		str	r3, [r0, #76]
  99 0066 DEE7     		b	.L5
 100              	.L6:
1601:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
1602:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1603:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   else
1604:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1605:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_BUSY;
 101              		.loc 1 1605 0
 102 0068 0220     		movs	r0, #2
 103              	.LVL8:
1606:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1607:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 104              		.loc 1 1607 0
 105 006a 7047     		bx	lr
 106              		.cfi_endproc
 107              	.LFE168:
 109              		.section	.text.UART_EndTxTransfer,"ax",%progbits
 110              		.align	1
 111              		.syntax unified
 112              		.thumb
 113              		.thumb_func
 114              		.fpu fpv5-d16
 116              	UART_EndTxTransfer:
 117              	.LFB171:
1608:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1609:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1610:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief  Wrap up transmission in non-blocking mode.
1611:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param  huart: pointer to a UART_HandleTypeDef structure that contains
1612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *                the configuration information for the specified UART module.
1613:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
1614:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1615:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static HAL_StatusTypeDef UART_EndTransmit_IT(UART_HandleTypeDef *huart)
1616:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1617:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Disable the UART Transmit Complete Interrupt */
1618:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR1, USART_CR1_TCIE);
1619:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1620:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Tx process is ended, restore huart->gState to Ready */
1621:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_READY;
1622:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1623:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   HAL_UART_TxCpltCallback(huart);
1624:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1625:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return HAL_OK;
1626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1627:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1628:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1629:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Receive an amount of data in interrupt mode
1630:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *         Function called under interruption only, once
1631:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *         interruptions have been enabled by HAL_UART_Receive_IT()
1632:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param  huart: UART handle
1633:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
1634:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1635:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static HAL_StatusTypeDef UART_Receive_IT(UART_HandleTypeDef *huart)
1636:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t* tmp;
1638:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t uhMask = huart->Mask;
1639:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1640:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check that a Rx process is ongoing */
1641:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart->RxState == HAL_UART_STATE_BUSY_RX)
1642:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1644:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if ((huart->Init.WordLength == UART_WORDLENGTH_9B) && (huart->Init.Parity == UART_PARITY_NONE))
1645:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
1646:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       tmp = (uint16_t*) huart->pRxBuffPtr ;
1647:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       *tmp = (uint16_t)(huart->Instance->RDR & uhMask);
1648:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       huart->pRxBuffPtr +=2;
1649:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
1650:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     else
1651:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
1652:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       *huart->pRxBuffPtr++ = (uint8_t)(huart->Instance->RDR & (uint8_t)uhMask);
1653:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
1654:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1655:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if(--huart->RxXferCount == 0)
1656:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
1657:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       /* Disable the UART Parity Error Interrupt and RXNE interrupt*/
1658:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE | USART_CR1_PEIE));
1659:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1660:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       /* Disable the UART Error Interrupt: (Frame error, noise error, overrun error) */
1661:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
1662:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1663:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       /* Rx process is completed, restore huart->RxState to Ready */
1664:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       huart->RxState = HAL_UART_STATE_READY;
1665:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1666:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       HAL_UART_RxCpltCallback(huart);
1667:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1668:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       return HAL_OK;
1669:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
1670:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1671:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_OK;
1672:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1673:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   else
1674:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1675:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Clear RXNE interrupt flag */
1676:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     __HAL_UART_SEND_REQ(huart, UART_RXDATA_FLUSH_REQUEST);
1677:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_BUSY;
1679:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1680:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1681:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1682:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1683:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief  End ongoing Tx transfer on UART peripheral (following error detection or Transmit compl
1684:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param  huart: UART handle.
1685:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval None
1686:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1687:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static void UART_EndTxTransfer(UART_HandleTypeDef *huart)
1688:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 118              		.loc 1 1688 0
 119              		.cfi_startproc
 120              		@ args = 0, pretend = 0, frame = 0
 121              		@ frame_needed = 0, uses_anonymous_args = 0
 122              		@ link register save eliminated.
 123              	.LVL9:
1689:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Disable TXEIE and TCIE interrupts */
1690:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR1, (USART_CR1_TXEIE | USART_CR1_TCIE));
 124              		.loc 1 1690 0
 125 0000 0268     		ldr	r2, [r0]
 126 0002 1368     		ldr	r3, [r2]
 127 0004 23F0C003 		bic	r3, r3, #192
 128 0008 1360     		str	r3, [r2]
1691:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1692:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* At end of Tx process, restore huart->gState to Ready */
1693:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_READY;
 129              		.loc 1 1693 0
 130 000a 2023     		movs	r3, #32
 131 000c 80F86930 		strb	r3, [r0, #105]
1694:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 132              		.loc 1 1694 0
 133 0010 7047     		bx	lr
 134              		.cfi_endproc
 135              	.LFE171:
 137              		.section	.text.UART_EndRxTransfer,"ax",%progbits
 138              		.align	1
 139              		.syntax unified
 140              		.thumb
 141              		.thumb_func
 142              		.fpu fpv5-d16
 144              	UART_EndRxTransfer:
 145              	.LFB172:
1695:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1696:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1697:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1698:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief  End ongoing Rx transfer on UART peripheral (following error detection or Reception comp
1699:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param  huart: UART handle.
1700:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval None
1701:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1702:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** static void UART_EndRxTransfer(UART_HandleTypeDef *huart)
1703:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 146              		.loc 1 1703 0
 147              		.cfi_startproc
 148              		@ args = 0, pretend = 0, frame = 0
 149              		@ frame_needed = 0, uses_anonymous_args = 0
 150              		@ link register save eliminated.
 151              	.LVL10:
1704:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Disable RXNE, PE and ERR (Frame error, noise error, overrun error) interrupts */
1705:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR1, (USART_CR1_RXNEIE | USART_CR1_PEIE));
 152              		.loc 1 1705 0
 153 0000 0268     		ldr	r2, [r0]
 154 0002 1368     		ldr	r3, [r2]
 155 0004 23F49073 		bic	r3, r3, #288
 156 0008 1360     		str	r3, [r2]
1706:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
 157              		.loc 1 1706 0
 158 000a 0268     		ldr	r2, [r0]
 159 000c 9368     		ldr	r3, [r2, #8]
 160 000e 23F00103 		bic	r3, r3, #1
 161 0012 9360     		str	r3, [r2, #8]
1707:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1708:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* At end of Rx process, restore huart->RxState to Ready */
1709:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->RxState = HAL_UART_STATE_READY;
 162              		.loc 1 1709 0
 163 0014 2023     		movs	r3, #32
 164 0016 80F86A30 		strb	r3, [r0, #106]
1710:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 165              		.loc 1 1710 0
 166 001a 7047     		bx	lr
 167              		.cfi_endproc
 168              	.LFE172:
 170              		.section	.text.HAL_UART_MspInit,"ax",%progbits
 171              		.align	1
 172              		.weak	HAL_UART_MspInit
 173              		.syntax unified
 174              		.thumb
 175              		.thumb_func
 176              		.fpu fpv5-d16
 178              	HAL_UART_MspInit:
 179              	.LFB144:
 626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
 180              		.loc 1 626 0
 181              		.cfi_startproc
 182              		@ args = 0, pretend = 0, frame = 0
 183              		@ frame_needed = 0, uses_anonymous_args = 0
 184              		@ link register save eliminated.
 185              	.LVL11:
 633:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 186              		.loc 1 633 0
 187 0000 7047     		bx	lr
 188              		.cfi_endproc
 189              	.LFE144:
 191              		.section	.text.HAL_UART_MspDeInit,"ax",%progbits
 192              		.align	1
 193              		.weak	HAL_UART_MspDeInit
 194              		.syntax unified
 195              		.thumb
 196              		.thumb_func
 197              		.fpu fpv5-d16
 199              	HAL_UART_MspDeInit:
 200              	.LFB145:
 641:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
 201              		.loc 1 641 0
 202              		.cfi_startproc
 203              		@ args = 0, pretend = 0, frame = 0
 204              		@ frame_needed = 0, uses_anonymous_args = 0
 205              		@ link register save eliminated.
 206              	.LVL12:
 648:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 207              		.loc 1 648 0
 208 0000 7047     		bx	lr
 209              		.cfi_endproc
 210              	.LFE145:
 212              		.section	.text.HAL_UART_DeInit,"ax",%progbits
 213              		.align	1
 214              		.global	HAL_UART_DeInit
 215              		.syntax unified
 216              		.thumb
 217              		.thumb_func
 218              		.fpu fpv5-d16
 220              	HAL_UART_DeInit:
 221              	.LFB143:
 588:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the UART handle allocation */
 222              		.loc 1 588 0
 223              		.cfi_startproc
 224              		@ args = 0, pretend = 0, frame = 0
 225              		@ frame_needed = 0, uses_anonymous_args = 0
 226              	.LVL13:
 590:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 227              		.loc 1 590 0
 228 0000 D8B1     		cbz	r0, .L15
 588:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the UART handle allocation */
 229              		.loc 1 588 0
 230 0002 38B5     		push	{r3, r4, r5, lr}
 231              		.cfi_def_cfa_offset 16
 232              		.cfi_offset 3, -16
 233              		.cfi_offset 4, -12
 234              		.cfi_offset 5, -8
 235              		.cfi_offset 14, -4
 236 0004 0446     		mov	r4, r0
 598:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 237              		.loc 1 598 0
 238 0006 2423     		movs	r3, #36
 239 0008 80F86930 		strb	r3, [r0, #105]
 601:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 240              		.loc 1 601 0
 241 000c 0268     		ldr	r2, [r0]
 242 000e 1368     		ldr	r3, [r2]
 243 0010 23F00103 		bic	r3, r3, #1
 244 0014 1360     		str	r3, [r2]
 603:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->Instance->CR2 = 0x0U;
 245              		.loc 1 603 0
 246 0016 0368     		ldr	r3, [r0]
 247 0018 0025     		movs	r5, #0
 248 001a 1D60     		str	r5, [r3]
 604:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->Instance->CR3 = 0x0U;
 249              		.loc 1 604 0
 250 001c 0368     		ldr	r3, [r0]
 251 001e 5D60     		str	r5, [r3, #4]
 605:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 252              		.loc 1 605 0
 253 0020 0368     		ldr	r3, [r0]
 254 0022 9D60     		str	r5, [r3, #8]
 608:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 255              		.loc 1 608 0
 256 0024 FFF7FEFF 		bl	HAL_UART_MspDeInit
 257              	.LVL14:
 610:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState    = HAL_UART_STATE_RESET;
 258              		.loc 1 610 0
 259 0028 E566     		str	r5, [r4, #108]
 611:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->RxState   = HAL_UART_STATE_RESET;
 260              		.loc 1 611 0
 261 002a 84F86950 		strb	r5, [r4, #105]
 612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 262              		.loc 1 612 0
 263 002e 84F86A50 		strb	r5, [r4, #106]
 615:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 264              		.loc 1 615 0
 265 0032 84F86850 		strb	r5, [r4, #104]
 617:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 266              		.loc 1 617 0
 267 0036 2846     		mov	r0, r5
 618:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 268              		.loc 1 618 0
 269 0038 38BD     		pop	{r3, r4, r5, pc}
 270              	.LVL15:
 271              	.L15:
 272              		.cfi_def_cfa_offset 0
 273              		.cfi_restore 3
 274              		.cfi_restore 4
 275              		.cfi_restore 5
 276              		.cfi_restore 14
 592:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 277              		.loc 1 592 0
 278 003a 0120     		movs	r0, #1
 279              	.LVL16:
 618:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 280              		.loc 1 618 0
 281 003c 7047     		bx	lr
 282              		.cfi_endproc
 283              	.LFE143:
 285              		.section	.text.HAL_UART_Transmit_IT,"ax",%progbits
 286              		.align	1
 287              		.global	HAL_UART_Transmit_IT
 288              		.syntax unified
 289              		.thumb
 290              		.thumb_func
 291              		.fpu fpv5-d16
 293              	HAL_UART_Transmit_IT:
 294              	.LFB148:
 859:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check that a Tx process is not already ongoing */
 295              		.loc 1 859 0
 296              		.cfi_startproc
 297              		@ args = 0, pretend = 0, frame = 0
 298              		@ frame_needed = 0, uses_anonymous_args = 0
 299              		@ link register save eliminated.
 300              	.LVL17:
 861:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 301              		.loc 1 861 0
 302 0000 90F86930 		ldrb	r3, [r0, #105]	@ zero_extendqisi2
 303 0004 DBB2     		uxtb	r3, r3
 304 0006 202B     		cmp	r3, #32
 305 0008 1DD1     		bne	.L22
 863:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 306              		.loc 1 863 0
 307 000a B2FA82F3 		clz	r3, r2
 308 000e 5B09     		lsrs	r3, r3, #5
 309 0010 0029     		cmp	r1, #0
 310 0012 08BF     		it	eq
 311 0014 0123     		moveq	r3, #1
 312 0016 C3B9     		cbnz	r3, .L23
 869:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 313              		.loc 1 869 0
 314 0018 90F86830 		ldrb	r3, [r0, #104]	@ zero_extendqisi2
 315 001c 012B     		cmp	r3, #1
 316 001e 16D0     		beq	.L24
 871:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->TxXferSize = Size;
 317              		.loc 1 871 0 discriminator 2
 318 0020 C164     		str	r1, [r0, #76]
 872:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->TxXferCount = Size;
 319              		.loc 1 872 0 discriminator 2
 320 0022 A0F85020 		strh	r2, [r0, #80]	@ movhi
 873:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 321              		.loc 1 873 0 discriminator 2
 322 0026 A0F85220 		strh	r2, [r0, #82]	@ movhi
 875:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_BUSY_TX;
 323              		.loc 1 875 0 discriminator 2
 324 002a 0023     		movs	r3, #0
 325 002c C366     		str	r3, [r0, #108]
 876:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 326              		.loc 1 876 0 discriminator 2
 327 002e 2122     		movs	r2, #33
 328              	.LVL18:
 329 0030 80F86920 		strb	r2, [r0, #105]
 879:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 330              		.loc 1 879 0 discriminator 2
 331 0034 80F86830 		strb	r3, [r0, #104]
 882:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 332              		.loc 1 882 0 discriminator 2
 333 0038 0168     		ldr	r1, [r0]
 334              	.LVL19:
 335 003a 0A68     		ldr	r2, [r1]
 336 003c 42F08002 		orr	r2, r2, #128
 337 0040 0A60     		str	r2, [r1]
 338              	.LVL20:
 884:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 339              		.loc 1 884 0 discriminator 2
 340 0042 1846     		mov	r0, r3
 341              	.LVL21:
 342 0044 7047     		bx	lr
 343              	.LVL22:
 344              	.L22:
 888:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 345              		.loc 1 888 0
 346 0046 0220     		movs	r0, #2
 347              	.LVL23:
 348 0048 7047     		bx	lr
 349              	.LVL24:
 350              	.L23:
 865:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 351              		.loc 1 865 0
 352 004a 0120     		movs	r0, #1
 353              	.LVL25:
 354 004c 7047     		bx	lr
 355              	.LVL26:
 356              	.L24:
 869:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 357              		.loc 1 869 0
 358 004e 0220     		movs	r0, #2
 359              	.LVL27:
 890:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 360              		.loc 1 890 0
 361 0050 7047     		bx	lr
 362              		.cfi_endproc
 363              	.LFE148:
 365              		.section	.text.HAL_UART_Receive_IT,"ax",%progbits
 366              		.align	1
 367              		.global	HAL_UART_Receive_IT
 368              		.syntax unified
 369              		.thumb
 370              		.thumb_func
 371              		.fpu fpv5-d16
 373              	HAL_UART_Receive_IT:
 374              	.LFB149:
 900:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check that a Rx process is not already ongoing */
 375              		.loc 1 900 0
 376              		.cfi_startproc
 377              		@ args = 0, pretend = 0, frame = 0
 378              		@ frame_needed = 0, uses_anonymous_args = 0
 379              		@ link register save eliminated.
 380              	.LVL28:
 902:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 381              		.loc 1 902 0
 382 0000 90F86A30 		ldrb	r3, [r0, #106]	@ zero_extendqisi2
 383 0004 DBB2     		uxtb	r3, r3
 384 0006 202B     		cmp	r3, #32
 385 0008 4DD1     		bne	.L33
 904:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 386              		.loc 1 904 0
 387 000a B2FA82F3 		clz	r3, r2
 388 000e 5B09     		lsrs	r3, r3, #5
 389 0010 0029     		cmp	r1, #0
 390 0012 08BF     		it	eq
 391 0014 0123     		moveq	r3, #1
 392 0016 002B     		cmp	r3, #0
 393 0018 47D1     		bne	.L34
 910:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 394              		.loc 1 910 0
 395 001a 90F86830 		ldrb	r3, [r0, #104]	@ zero_extendqisi2
 396 001e 012B     		cmp	r3, #1
 397 0020 45D0     		beq	.L35
 910:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 398              		.loc 1 910 0 is_stmt 0 discriminator 2
 399 0022 0123     		movs	r3, #1
 400 0024 80F86830 		strb	r3, [r0, #104]
 912:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->RxXferSize = Size;
 401              		.loc 1 912 0 is_stmt 1 discriminator 2
 402 0028 4165     		str	r1, [r0, #84]
 913:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->RxXferCount = Size;
 403              		.loc 1 913 0 discriminator 2
 404 002a A0F85820 		strh	r2, [r0, #88]	@ movhi
 914:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 405              		.loc 1 914 0 discriminator 2
 406 002e A0F85A20 		strh	r2, [r0, #90]	@ movhi
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 407              		.loc 1 917 0 discriminator 2
 408 0032 8368     		ldr	r3, [r0, #8]
 409 0034 B3F5805F 		cmp	r3, #4096
 410 0038 06D0     		beq	.L36
 411 003a A3B9     		cbnz	r3, .L30
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 412              		.loc 1 917 0 is_stmt 0 discriminator 5
 413 003c 0369     		ldr	r3, [r0, #16]
 414 003e 73B9     		cbnz	r3, .L31
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 415              		.loc 1 917 0 discriminator 7
 416 0040 FF23     		movs	r3, #255
 417 0042 A0F85C30 		strh	r3, [r0, #92]	@ movhi
 418 0046 11E0     		b	.L29
 419              	.L36:
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 420              		.loc 1 917 0 discriminator 1
 421 0048 0369     		ldr	r3, [r0, #16]
 422 004a 23B9     		cbnz	r3, .L28
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 423              		.loc 1 917 0 discriminator 3
 424 004c 40F2FF13 		movw	r3, #511
 425 0050 A0F85C30 		strh	r3, [r0, #92]	@ movhi
 426 0054 0AE0     		b	.L29
 427              	.L28:
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 428              		.loc 1 917 0 discriminator 4
 429 0056 FF23     		movs	r3, #255
 430 0058 A0F85C30 		strh	r3, [r0, #92]	@ movhi
 431 005c 06E0     		b	.L29
 432              	.L31:
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 433              		.loc 1 917 0 discriminator 8
 434 005e 7F23     		movs	r3, #127
 435 0060 A0F85C30 		strh	r3, [r0, #92]	@ movhi
 436 0064 02E0     		b	.L29
 437              	.L30:
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 438              		.loc 1 917 0 discriminator 6
 439 0066 B3F1805F 		cmp	r3, #268435456
 440 006a 12D0     		beq	.L37
 441              	.L29:
 919:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_BUSY_RX;
 442              		.loc 1 919 0 is_stmt 1
 443 006c 0023     		movs	r3, #0
 444 006e C366     		str	r3, [r0, #108]
 920:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 445              		.loc 1 920 0
 446 0070 2222     		movs	r2, #34
 447              	.LVL29:
 448 0072 80F86A20 		strb	r2, [r0, #106]
 923:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 449              		.loc 1 923 0
 450 0076 80F86830 		strb	r3, [r0, #104]
 926:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 451              		.loc 1 926 0
 452 007a 0168     		ldr	r1, [r0]
 453              	.LVL30:
 454 007c 8A68     		ldr	r2, [r1, #8]
 455 007e 42F00102 		orr	r2, r2, #1
 456 0082 8A60     		str	r2, [r1, #8]
 457              	.LVL31:
 929:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 458              		.loc 1 929 0
 459 0084 0168     		ldr	r1, [r0]
 460 0086 0A68     		ldr	r2, [r1]
 461 0088 42F49072 		orr	r2, r2, #288
 462 008c 0A60     		str	r2, [r1]
 931:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 463              		.loc 1 931 0
 464 008e 1846     		mov	r0, r3
 465              	.LVL32:
 466 0090 7047     		bx	lr
 467              	.LVL33:
 468              	.L37:
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 469              		.loc 1 917 0 discriminator 9
 470 0092 0369     		ldr	r3, [r0, #16]
 471 0094 1BB9     		cbnz	r3, .L32
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 472              		.loc 1 917 0 is_stmt 0 discriminator 10
 473 0096 7F23     		movs	r3, #127
 474 0098 A0F85C30 		strh	r3, [r0, #92]	@ movhi
 475 009c E6E7     		b	.L29
 476              	.L32:
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 477              		.loc 1 917 0 discriminator 11
 478 009e 3F23     		movs	r3, #63
 479 00a0 A0F85C30 		strh	r3, [r0, #92]	@ movhi
 480 00a4 E2E7     		b	.L29
 481              	.L33:
 935:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 482              		.loc 1 935 0 is_stmt 1
 483 00a6 0220     		movs	r0, #2
 484              	.LVL34:
 485 00a8 7047     		bx	lr
 486              	.LVL35:
 487              	.L34:
 906:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 488              		.loc 1 906 0
 489 00aa 0120     		movs	r0, #1
 490              	.LVL36:
 491 00ac 7047     		bx	lr
 492              	.LVL37:
 493              	.L35:
 910:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 494              		.loc 1 910 0
 495 00ae 0220     		movs	r0, #2
 496              	.LVL38:
 937:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 497              		.loc 1 937 0
 498 00b0 7047     		bx	lr
 499              		.cfi_endproc
 500              	.LFE149:
 502              		.section	.text.HAL_UART_Transmit_DMA,"ax",%progbits
 503              		.align	1
 504              		.global	HAL_UART_Transmit_DMA
 505              		.syntax unified
 506              		.thumb
 507              		.thumb_func
 508              		.fpu fpv5-d16
 510              	HAL_UART_Transmit_DMA:
 511              	.LFB150:
 947:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t *tmp;
 512              		.loc 1 947 0
 513              		.cfi_startproc
 514              		@ args = 0, pretend = 0, frame = 0
 515              		@ frame_needed = 0, uses_anonymous_args = 0
 516              	.LVL39:
 517 0000 38B5     		push	{r3, r4, r5, lr}
 518              		.cfi_def_cfa_offset 16
 519              		.cfi_offset 3, -16
 520              		.cfi_offset 4, -12
 521              		.cfi_offset 5, -8
 522              		.cfi_offset 14, -4
 951:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 523              		.loc 1 951 0
 524 0002 90F86950 		ldrb	r5, [r0, #105]	@ zero_extendqisi2
 525 0006 EDB2     		uxtb	r5, r5
 526 0008 202D     		cmp	r5, #32
 527 000a 35D1     		bne	.L40
 953:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 528              		.loc 1 953 0
 529 000c B2FA82F5 		clz	r5, r2
 530 0010 6D09     		lsrs	r5, r5, #5
 531 0012 0029     		cmp	r1, #0
 532 0014 08BF     		it	eq
 533 0016 0125     		moveq	r5, #1
 534 0018 002D     		cmp	r5, #0
 535 001a 2FD1     		bne	.L41
 959:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 536              		.loc 1 959 0
 537 001c 90F86830 		ldrb	r3, [r0, #104]	@ zero_extendqisi2
 538 0020 012B     		cmp	r3, #1
 539 0022 2DD0     		beq	.L42
 540 0024 1346     		mov	r3, r2
 541 0026 0446     		mov	r4, r0
 959:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 542              		.loc 1 959 0 is_stmt 0 discriminator 2
 543 0028 0122     		movs	r2, #1
 544              	.LVL40:
 545 002a 80F86820 		strb	r2, [r0, #104]
 961:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->TxXferSize = Size;
 546              		.loc 1 961 0 is_stmt 1 discriminator 2
 547 002e C164     		str	r1, [r0, #76]
 962:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->TxXferCount = Size;
 548              		.loc 1 962 0 discriminator 2
 549 0030 A0F85030 		strh	r3, [r0, #80]	@ movhi
 963:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 550              		.loc 1 963 0 discriminator 2
 551 0034 A0F85230 		strh	r3, [r0, #82]	@ movhi
 965:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_BUSY_TX;
 552              		.loc 1 965 0 discriminator 2
 553 0038 C566     		str	r5, [r0, #108]
 966:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 554              		.loc 1 966 0 discriminator 2
 555 003a 2122     		movs	r2, #33
 556 003c 80F86920 		strb	r2, [r0, #105]
 969:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 557              		.loc 1 969 0 discriminator 2
 558 0040 026E     		ldr	r2, [r0, #96]
 559 0042 1048     		ldr	r0, .L44
 560              	.LVL41:
 561 0044 D063     		str	r0, [r2, #60]
 972:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 562              		.loc 1 972 0 discriminator 2
 563 0046 226E     		ldr	r2, [r4, #96]
 564 0048 0F48     		ldr	r0, .L44+4
 565 004a 1064     		str	r0, [r2, #64]
 975:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 566              		.loc 1 975 0 discriminator 2
 567 004c 226E     		ldr	r2, [r4, #96]
 568 004e 0F48     		ldr	r0, .L44+8
 569 0050 D064     		str	r0, [r2, #76]
 978:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 570              		.loc 1 978 0 discriminator 2
 571 0052 226E     		ldr	r2, [r4, #96]
 572 0054 1565     		str	r5, [r2, #80]
 573              	.LVL42:
 982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 574              		.loc 1 982 0 discriminator 2
 575 0056 2268     		ldr	r2, [r4]
 576 0058 2832     		adds	r2, r2, #40
 577 005a 206E     		ldr	r0, [r4, #96]
 578 005c FFF7FEFF 		bl	HAL_DMA_Start_IT
 579              	.LVL43:
 985:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 580              		.loc 1 985 0 discriminator 2
 581 0060 2368     		ldr	r3, [r4]
 582 0062 4022     		movs	r2, #64
 583 0064 1A62     		str	r2, [r3, #32]
 988:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 584              		.loc 1 988 0 discriminator 2
 585 0066 84F86850 		strb	r5, [r4, #104]
 992:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 586              		.loc 1 992 0 discriminator 2
 587 006a 2268     		ldr	r2, [r4]
 588 006c 9368     		ldr	r3, [r2, #8]
 589 006e 43F08003 		orr	r3, r3, #128
 590 0072 9360     		str	r3, [r2, #8]
 994:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 591              		.loc 1 994 0 discriminator 2
 592 0074 2846     		mov	r0, r5
 593 0076 00E0     		b	.L39
 594              	.LVL44:
 595              	.L40:
 998:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 596              		.loc 1 998 0
 597 0078 0220     		movs	r0, #2
 598              	.LVL45:
 599              	.L39:
1000:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 600              		.loc 1 1000 0
 601 007a 38BD     		pop	{r3, r4, r5, pc}
 602              	.LVL46:
 603              	.L41:
 955:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 604              		.loc 1 955 0
 605 007c 0120     		movs	r0, #1
 606              	.LVL47:
 607 007e FCE7     		b	.L39
 608              	.LVL48:
 609              	.L42:
 959:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 610              		.loc 1 959 0
 611 0080 0220     		movs	r0, #2
 612              	.LVL49:
 613 0082 FAE7     		b	.L39
 614              	.L45:
 615              		.align	2
 616              	.L44:
 617 0084 00000000 		.word	UART_DMATransmitCplt
 618 0088 00000000 		.word	UART_DMATxHalfCplt
 619 008c 00000000 		.word	UART_DMAError
 620              		.cfi_endproc
 621              	.LFE150:
 623              		.section	.text.HAL_UART_Receive_DMA,"ax",%progbits
 624              		.align	1
 625              		.global	HAL_UART_Receive_DMA
 626              		.syntax unified
 627              		.thumb
 628              		.thumb_func
 629              		.fpu fpv5-d16
 631              	HAL_UART_Receive_DMA:
 632              	.LFB151:
1012:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t *tmp;
 633              		.loc 1 1012 0
 634              		.cfi_startproc
 635              		@ args = 0, pretend = 0, frame = 0
 636              		@ frame_needed = 0, uses_anonymous_args = 0
 637              	.LVL50:
 638 0000 38B5     		push	{r3, r4, r5, lr}
 639              		.cfi_def_cfa_offset 16
 640              		.cfi_offset 3, -16
 641              		.cfi_offset 4, -12
 642              		.cfi_offset 5, -8
 643              		.cfi_offset 14, -4
1016:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 644              		.loc 1 1016 0
 645 0002 90F86A50 		ldrb	r5, [r0, #106]	@ zero_extendqisi2
 646 0006 EDB2     		uxtb	r5, r5
 647 0008 202D     		cmp	r5, #32
 648 000a 3BD1     		bne	.L48
1018:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 649              		.loc 1 1018 0
 650 000c B2FA82F5 		clz	r5, r2
 651 0010 6D09     		lsrs	r5, r5, #5
 652 0012 0029     		cmp	r1, #0
 653 0014 08BF     		it	eq
 654 0016 0125     		moveq	r5, #1
 655 0018 002D     		cmp	r5, #0
 656 001a 35D1     		bne	.L49
1024:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 657              		.loc 1 1024 0
 658 001c 90F86830 		ldrb	r3, [r0, #104]	@ zero_extendqisi2
 659 0020 012B     		cmp	r3, #1
 660 0022 33D0     		beq	.L50
 661 0024 1346     		mov	r3, r2
 662 0026 0A46     		mov	r2, r1
 663              	.LVL51:
 664 0028 0446     		mov	r4, r0
1024:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 665              		.loc 1 1024 0 is_stmt 0 discriminator 2
 666 002a 0121     		movs	r1, #1
 667              	.LVL52:
 668 002c 80F86810 		strb	r1, [r0, #104]
1026:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->RxXferSize = Size;
 669              		.loc 1 1026 0 is_stmt 1 discriminator 2
 670 0030 4265     		str	r2, [r0, #84]
1027:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 671              		.loc 1 1027 0 discriminator 2
 672 0032 A0F85830 		strh	r3, [r0, #88]	@ movhi
1029:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_BUSY_RX;
 673              		.loc 1 1029 0 discriminator 2
 674 0036 C566     		str	r5, [r0, #108]
1030:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 675              		.loc 1 1030 0 discriminator 2
 676 0038 2221     		movs	r1, #34
 677 003a 80F86A10 		strb	r1, [r0, #106]
1033:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 678              		.loc 1 1033 0 discriminator 2
 679 003e 416E     		ldr	r1, [r0, #100]
 680 0040 1348     		ldr	r0, .L52
 681              	.LVL53:
 682 0042 C863     		str	r0, [r1, #60]
1036:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 683              		.loc 1 1036 0 discriminator 2
 684 0044 616E     		ldr	r1, [r4, #100]
 685 0046 1348     		ldr	r0, .L52+4
 686 0048 0864     		str	r0, [r1, #64]
1039:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 687              		.loc 1 1039 0 discriminator 2
 688 004a 616E     		ldr	r1, [r4, #100]
 689 004c 1248     		ldr	r0, .L52+8
 690 004e C864     		str	r0, [r1, #76]
1042:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 691              		.loc 1 1042 0 discriminator 2
 692 0050 616E     		ldr	r1, [r4, #100]
 693 0052 0D65     		str	r5, [r1, #80]
 694              	.LVL54:
1046:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 695              		.loc 1 1046 0 discriminator 2
 696 0054 2168     		ldr	r1, [r4]
 697 0056 2431     		adds	r1, r1, #36
 698 0058 606E     		ldr	r0, [r4, #100]
 699 005a FFF7FEFF 		bl	HAL_DMA_Start_IT
 700              	.LVL55:
1049:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 701              		.loc 1 1049 0 discriminator 2
 702 005e 84F86850 		strb	r5, [r4, #104]
1052:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 703              		.loc 1 1052 0 discriminator 2
 704 0062 2268     		ldr	r2, [r4]
 705 0064 1368     		ldr	r3, [r2]
 706 0066 43F48073 		orr	r3, r3, #256
 707 006a 1360     		str	r3, [r2]
1055:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 708              		.loc 1 1055 0 discriminator 2
 709 006c 2268     		ldr	r2, [r4]
 710 006e 9368     		ldr	r3, [r2, #8]
 711 0070 43F00103 		orr	r3, r3, #1
 712 0074 9360     		str	r3, [r2, #8]
1059:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 713              		.loc 1 1059 0 discriminator 2
 714 0076 2268     		ldr	r2, [r4]
 715 0078 9368     		ldr	r3, [r2, #8]
 716 007a 43F04003 		orr	r3, r3, #64
 717 007e 9360     		str	r3, [r2, #8]
1061:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 718              		.loc 1 1061 0 discriminator 2
 719 0080 2846     		mov	r0, r5
 720 0082 00E0     		b	.L47
 721              	.LVL56:
 722              	.L48:
1065:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 723              		.loc 1 1065 0
 724 0084 0220     		movs	r0, #2
 725              	.LVL57:
 726              	.L47:
1067:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 727              		.loc 1 1067 0
 728 0086 38BD     		pop	{r3, r4, r5, pc}
 729              	.LVL58:
 730              	.L49:
1020:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 731              		.loc 1 1020 0
 732 0088 0120     		movs	r0, #1
 733              	.LVL59:
 734 008a FCE7     		b	.L47
 735              	.LVL60:
 736              	.L50:
1024:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 737              		.loc 1 1024 0
 738 008c 0220     		movs	r0, #2
 739              	.LVL61:
 740 008e FAE7     		b	.L47
 741              	.L53:
 742              		.align	2
 743              	.L52:
 744 0090 00000000 		.word	UART_DMAReceiveCplt
 745 0094 00000000 		.word	UART_DMARxHalfCplt
 746 0098 00000000 		.word	UART_DMAError
 747              		.cfi_endproc
 748              	.LFE151:
 750              		.section	.text.HAL_UART_DMAPause,"ax",%progbits
 751              		.align	1
 752              		.global	HAL_UART_DMAPause
 753              		.syntax unified
 754              		.thumb
 755              		.thumb_func
 756              		.fpu fpv5-d16
 758              	HAL_UART_DMAPause:
 759              	.LFB152:
1075:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Process Locked */
 760              		.loc 1 1075 0
 761              		.cfi_startproc
 762              		@ args = 0, pretend = 0, frame = 0
 763              		@ frame_needed = 0, uses_anonymous_args = 0
 764              		@ link register save eliminated.
 765              	.LVL62:
1077:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 766              		.loc 1 1077 0
 767 0000 90F86830 		ldrb	r3, [r0, #104]	@ zero_extendqisi2
 768 0004 012B     		cmp	r3, #1
 769 0006 2FD0     		beq	.L58
1077:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 770              		.loc 1 1077 0 is_stmt 0 discriminator 2
 771 0008 0123     		movs	r3, #1
 772 000a 80F86830 		strb	r3, [r0, #104]
1079:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAT)))
 773              		.loc 1 1079 0 is_stmt 1 discriminator 2
 774 000e 90F86930 		ldrb	r3, [r0, #105]	@ zero_extendqisi2
 775 0012 DBB2     		uxtb	r3, r3
 776 0014 212B     		cmp	r3, #33
 777 0016 09D0     		beq	.L59
 778              	.L56:
1085:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR)))
 779              		.loc 1 1085 0
 780 0018 90F86A30 		ldrb	r3, [r0, #106]	@ zero_extendqisi2
 781 001c DBB2     		uxtb	r3, r3
 782 001e 222B     		cmp	r3, #34
 783 0020 0ED0     		beq	.L60
 784              	.L57:
1097:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 785              		.loc 1 1097 0
 786 0022 0023     		movs	r3, #0
 787 0024 80F86830 		strb	r3, [r0, #104]
1099:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 788              		.loc 1 1099 0
 789 0028 1846     		mov	r0, r3
 790              	.LVL63:
 791 002a 7047     		bx	lr
 792              	.LVL64:
 793              	.L59:
1080:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 794              		.loc 1 1080 0 discriminator 1
 795 002c 0368     		ldr	r3, [r0]
 796 002e 9A68     		ldr	r2, [r3, #8]
1079:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAT)))
 797              		.loc 1 1079 0 discriminator 1
 798 0030 12F0800F 		tst	r2, #128
 799 0034 F0D0     		beq	.L56
1083:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 800              		.loc 1 1083 0
 801 0036 9A68     		ldr	r2, [r3, #8]
 802 0038 22F08002 		bic	r2, r2, #128
 803 003c 9A60     		str	r2, [r3, #8]
 804 003e EBE7     		b	.L56
 805              	.L60:
1086:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 806              		.loc 1 1086 0 discriminator 1
 807 0040 0368     		ldr	r3, [r0]
 808 0042 9A68     		ldr	r2, [r3, #8]
1085:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR)))
 809              		.loc 1 1085 0 discriminator 1
 810 0044 12F0400F 		tst	r2, #64
 811 0048 EBD0     		beq	.L57
1089:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
 812              		.loc 1 1089 0
 813 004a 1A68     		ldr	r2, [r3]
 814 004c 22F48072 		bic	r2, r2, #256
 815 0050 1A60     		str	r2, [r3]
1090:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 816              		.loc 1 1090 0
 817 0052 0268     		ldr	r2, [r0]
 818 0054 9368     		ldr	r3, [r2, #8]
 819 0056 23F00103 		bic	r3, r3, #1
 820 005a 9360     		str	r3, [r2, #8]
1093:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 821              		.loc 1 1093 0
 822 005c 0268     		ldr	r2, [r0]
 823 005e 9368     		ldr	r3, [r2, #8]
 824 0060 23F04003 		bic	r3, r3, #64
 825 0064 9360     		str	r3, [r2, #8]
 826 0066 DCE7     		b	.L57
 827              	.L58:
1077:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 828              		.loc 1 1077 0
 829 0068 0220     		movs	r0, #2
 830              	.LVL65:
1100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 831              		.loc 1 1100 0
 832 006a 7047     		bx	lr
 833              		.cfi_endproc
 834              	.LFE152:
 836              		.section	.text.HAL_UART_DMAResume,"ax",%progbits
 837              		.align	1
 838              		.global	HAL_UART_DMAResume
 839              		.syntax unified
 840              		.thumb
 841              		.thumb_func
 842              		.fpu fpv5-d16
 844              	HAL_UART_DMAResume:
 845              	.LFB153:
1108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Process Locked */
 846              		.loc 1 1108 0
 847              		.cfi_startproc
 848              		@ args = 0, pretend = 0, frame = 0
 849              		@ frame_needed = 0, uses_anonymous_args = 0
 850              		@ link register save eliminated.
 851              	.LVL66:
1110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 852              		.loc 1 1110 0
 853 0000 90F86830 		ldrb	r3, [r0, #104]	@ zero_extendqisi2
 854 0004 012B     		cmp	r3, #1
 855 0006 30D0     		beq	.L65
1110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 856              		.loc 1 1110 0 is_stmt 0 discriminator 2
 857 0008 0123     		movs	r3, #1
 858 000a 80F86830 		strb	r3, [r0, #104]
1112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 859              		.loc 1 1112 0 is_stmt 1 discriminator 2
 860 000e 90F86930 		ldrb	r3, [r0, #105]	@ zero_extendqisi2
 861 0012 DBB2     		uxtb	r3, r3
 862 0014 212B     		cmp	r3, #33
 863 0016 0FD0     		beq	.L67
 864              	.L63:
1117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 865              		.loc 1 1117 0
 866 0018 90F86A30 		ldrb	r3, [r0, #106]	@ zero_extendqisi2
 867 001c DBB2     		uxtb	r3, r3
 868 001e 222B     		cmp	r3, #34
 869 0020 10D0     		beq	.L68
 870              	.L64:
1131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 871              		.loc 1 1131 0
 872 0022 0368     		ldr	r3, [r0]
 873 0024 1A68     		ldr	r2, [r3]
 874 0026 12F0010F 		tst	r2, #1
 875 002a 20D1     		bne	.L66
1134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 876              		.loc 1 1134 0
 877 002c 1A68     		ldr	r2, [r3]
 878 002e 42F00102 		orr	r2, r2, #1
 879 0032 1A60     		str	r2, [r3]
1137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 880              		.loc 1 1137 0
 881 0034 0020     		movs	r0, #0
 882              	.LVL67:
 883 0036 7047     		bx	lr
 884              	.LVL68:
 885              	.L67:
1115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 886              		.loc 1 1115 0
 887 0038 0268     		ldr	r2, [r0]
 888 003a 9368     		ldr	r3, [r2, #8]
 889 003c 43F08003 		orr	r3, r3, #128
 890 0040 9360     		str	r3, [r2, #8]
 891 0042 E9E7     		b	.L63
 892              	.L68:
1120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 893              		.loc 1 1120 0
 894 0044 0368     		ldr	r3, [r0]
 895 0046 0822     		movs	r2, #8
 896 0048 1A62     		str	r2, [r3, #32]
1123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     SET_BIT(huart->Instance->CR3, USART_CR3_EIE);
 897              		.loc 1 1123 0
 898 004a 0268     		ldr	r2, [r0]
 899 004c 1368     		ldr	r3, [r2]
 900 004e 43F48073 		orr	r3, r3, #256
 901 0052 1360     		str	r3, [r2]
1124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 902              		.loc 1 1124 0
 903 0054 0268     		ldr	r2, [r0]
 904 0056 9368     		ldr	r3, [r2, #8]
 905 0058 43F00103 		orr	r3, r3, #1
 906 005c 9360     		str	r3, [r2, #8]
1127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 907              		.loc 1 1127 0
 908 005e 0268     		ldr	r2, [r0]
 909 0060 9368     		ldr	r3, [r2, #8]
 910 0062 43F04003 		orr	r3, r3, #64
 911 0066 9360     		str	r3, [r2, #8]
 912 0068 DBE7     		b	.L64
 913              	.L65:
1110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 914              		.loc 1 1110 0
 915 006a 0220     		movs	r0, #2
 916              	.LVL69:
 917 006c 7047     		bx	lr
 918              	.LVL70:
 919              	.L66:
1137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 920              		.loc 1 1137 0
 921 006e 0020     		movs	r0, #0
 922              	.LVL71:
1138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 923              		.loc 1 1138 0
 924 0070 7047     		bx	lr
 925              		.cfi_endproc
 926              	.LFE153:
 928              		.section	.text.HAL_UART_DMAStop,"ax",%progbits
 929              		.align	1
 930              		.global	HAL_UART_DMAStop
 931              		.syntax unified
 932              		.thumb
 933              		.thumb_func
 934              		.fpu fpv5-d16
 936              	HAL_UART_DMAStop:
 937              	.LFB154:
1146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* The Lock is not implemented on this API to allow the user application
 938              		.loc 1 1146 0
 939              		.cfi_startproc
 940              		@ args = 0, pretend = 0, frame = 0
 941              		@ frame_needed = 0, uses_anonymous_args = 0
 942              	.LVL72:
 943 0000 10B5     		push	{r4, lr}
 944              		.cfi_def_cfa_offset 8
 945              		.cfi_offset 4, -8
 946              		.cfi_offset 14, -4
 947 0002 0446     		mov	r4, r0
1155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAT)))
 948              		.loc 1 1155 0
 949 0004 90F86930 		ldrb	r3, [r0, #105]	@ zero_extendqisi2
 950 0008 DBB2     		uxtb	r3, r3
 951 000a 212B     		cmp	r3, #33
 952 000c 06D0     		beq	.L75
 953              	.LVL73:
 954              	.L70:
1170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR)))
 955              		.loc 1 1170 0
 956 000e 94F86A30 		ldrb	r3, [r4, #106]	@ zero_extendqisi2
 957 0012 DBB2     		uxtb	r3, r3
 958 0014 222B     		cmp	r3, #34
 959 0016 12D0     		beq	.L76
 960              	.L72:
1185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 961              		.loc 1 1185 0
 962 0018 0020     		movs	r0, #0
 963 001a 10BD     		pop	{r4, pc}
 964              	.LVL74:
 965              	.L75:
1156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 966              		.loc 1 1156 0 discriminator 1
 967 001c 0368     		ldr	r3, [r0]
 968 001e 9A68     		ldr	r2, [r3, #8]
1155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAT)))
 969              		.loc 1 1155 0 discriminator 1
 970 0020 12F0800F 		tst	r2, #128
 971 0024 F3D0     		beq	.L70
1158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 972              		.loc 1 1158 0
 973 0026 9A68     		ldr	r2, [r3, #8]
 974 0028 22F08002 		bic	r2, r2, #128
 975 002c 9A60     		str	r2, [r3, #8]
1161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 976              		.loc 1 1161 0
 977 002e 006E     		ldr	r0, [r0, #96]
 978              	.LVL75:
 979 0030 08B1     		cbz	r0, .L71
1163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 980              		.loc 1 1163 0
 981 0032 FFF7FEFF 		bl	HAL_DMA_Abort
 982              	.LVL76:
 983              	.L71:
1166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 984              		.loc 1 1166 0
 985 0036 2046     		mov	r0, r4
 986 0038 FFF7FEFF 		bl	UART_EndTxTransfer
 987              	.LVL77:
 988 003c E7E7     		b	.L70
 989              	.L76:
1171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 990              		.loc 1 1171 0 discriminator 1
 991 003e 2368     		ldr	r3, [r4]
 992 0040 9A68     		ldr	r2, [r3, #8]
1170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR)))
 993              		.loc 1 1170 0 discriminator 1
 994 0042 12F0400F 		tst	r2, #64
 995 0046 E7D0     		beq	.L72
1173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 996              		.loc 1 1173 0
 997 0048 9A68     		ldr	r2, [r3, #8]
 998 004a 22F04002 		bic	r2, r2, #64
 999 004e 9A60     		str	r2, [r3, #8]
1176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 1000              		.loc 1 1176 0
 1001 0050 606E     		ldr	r0, [r4, #100]
 1002 0052 08B1     		cbz	r0, .L73
1178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 1003              		.loc 1 1178 0
 1004 0054 FFF7FEFF 		bl	HAL_DMA_Abort
 1005              	.LVL78:
 1006              	.L73:
1181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 1007              		.loc 1 1181 0
 1008 0058 2046     		mov	r0, r4
 1009 005a FFF7FEFF 		bl	UART_EndRxTransfer
 1010              	.LVL79:
 1011 005e DBE7     		b	.L72
 1012              		.cfi_endproc
 1013              	.LFE154:
 1015              		.section	.text.UART_WaitOnFlagUntilTimeout,"ax",%progbits
 1016              		.align	1
 1017              		.global	UART_WaitOnFlagUntilTimeout
 1018              		.syntax unified
 1019              		.thumb
 1020              		.thumb_func
 1021              		.fpu fpv5-d16
 1023              	UART_WaitOnFlagUntilTimeout:
 1024              	.LFB156:
1338:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Wait until flag is set */
 1025              		.loc 1 1338 0
 1026              		.cfi_startproc
 1027              		@ args = 4, pretend = 0, frame = 0
 1028              		@ frame_needed = 0, uses_anonymous_args = 0
 1029              	.LVL80:
 1030 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1031              		.cfi_def_cfa_offset 24
 1032              		.cfi_offset 4, -24
 1033              		.cfi_offset 5, -20
 1034              		.cfi_offset 6, -16
 1035              		.cfi_offset 7, -12
 1036              		.cfi_offset 8, -8
 1037              		.cfi_offset 14, -4
 1038 0004 0546     		mov	r5, r0
 1039 0006 0F46     		mov	r7, r1
 1040 0008 1646     		mov	r6, r2
 1041 000a 9846     		mov	r8, r3
 1042 000c 069C     		ldr	r4, [sp, #24]
 1043              	.LVL81:
 1044              	.L79:
1340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 1045              		.loc 1 1340 0
 1046 000e 2B68     		ldr	r3, [r5]
 1047 0010 DB69     		ldr	r3, [r3, #28]
 1048 0012 37EA0303 		bics	r3, r7, r3
 1049 0016 0CBF     		ite	eq
 1050 0018 0123     		moveq	r3, #1
 1051 001a 0023     		movne	r3, #0
 1052 001c B342     		cmp	r3, r6
 1053 001e 1DD1     		bne	.L84
1343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 1054              		.loc 1 1343 0
 1055 0020 B4F1FF3F 		cmp	r4, #-1
 1056 0024 F3D0     		beq	.L79
1345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
 1057              		.loc 1 1345 0
 1058 0026 2CB1     		cbz	r4, .L80
1345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
 1059              		.loc 1 1345 0 is_stmt 0 discriminator 1
 1060 0028 FFF7FEFF 		bl	HAL_GetTick
 1061              	.LVL82:
 1062 002c A0EB0800 		sub	r0, r0, r8
 1063 0030 A042     		cmp	r0, r4
 1064 0032 ECD3     		bcc	.L79
 1065              	.L80:
1348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
 1066              		.loc 1 1348 0 is_stmt 1
 1067 0034 2A68     		ldr	r2, [r5]
 1068 0036 1368     		ldr	r3, [r2]
 1069 0038 23F4D073 		bic	r3, r3, #416
 1070 003c 1360     		str	r3, [r2]
1349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1071              		.loc 1 1349 0
 1072 003e 2A68     		ldr	r2, [r5]
 1073 0040 9368     		ldr	r3, [r2, #8]
 1074 0042 23F00103 		bic	r3, r3, #1
 1075 0046 9360     		str	r3, [r2, #8]
1351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         huart->RxState = HAL_UART_STATE_READY;
 1076              		.loc 1 1351 0
 1077 0048 2023     		movs	r3, #32
 1078 004a 85F86930 		strb	r3, [r5, #105]
1352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1079              		.loc 1 1352 0
 1080 004e 85F86A30 		strb	r3, [r5, #106]
1355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         return HAL_TIMEOUT;
 1081              		.loc 1 1355 0
 1082 0052 0023     		movs	r3, #0
 1083 0054 85F86830 		strb	r3, [r5, #104]
1356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
 1084              		.loc 1 1356 0
 1085 0058 0320     		movs	r0, #3
 1086 005a 00E0     		b	.L81
 1087              	.L84:
1360:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 1088              		.loc 1 1360 0
 1089 005c 0020     		movs	r0, #0
 1090              	.L81:
1361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1091              		.loc 1 1361 0
 1092 005e BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1093              		.cfi_endproc
 1094              	.LFE156:
 1096              		.section	.text.HAL_UART_Transmit,"ax",%progbits
 1097              		.align	1
 1098              		.global	HAL_UART_Transmit
 1099              		.syntax unified
 1100              		.thumb
 1101              		.thumb_func
 1102              		.fpu fpv5-d16
 1104              	HAL_UART_Transmit:
 1105              	.LFB146:
 719:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t* tmp;
 1106              		.loc 1 719 0
 1107              		.cfi_startproc
 1108              		@ args = 0, pretend = 0, frame = 0
 1109              		@ frame_needed = 0, uses_anonymous_args = 0
 1110              	.LVL83:
 1111 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1112              		.cfi_def_cfa_offset 24
 1113              		.cfi_offset 4, -24
 1114              		.cfi_offset 5, -20
 1115              		.cfi_offset 6, -16
 1116              		.cfi_offset 7, -12
 1117              		.cfi_offset 8, -8
 1118              		.cfi_offset 14, -4
 1119 0004 82B0     		sub	sp, sp, #8
 1120              		.cfi_def_cfa_offset 32
 1121 0006 1E46     		mov	r6, r3
 1122              	.LVL84:
 724:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 1123              		.loc 1 724 0
 1124 0008 90F86930 		ldrb	r3, [r0, #105]	@ zero_extendqisi2
 1125              	.LVL85:
 1126 000c DBB2     		uxtb	r3, r3
 1127 000e 202B     		cmp	r3, #32
 1128 0010 52D1     		bne	.L91
 1129 0012 0446     		mov	r4, r0
 1130 0014 0D46     		mov	r5, r1
 1131 0016 9046     		mov	r8, r2
 726:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 1132              		.loc 1 726 0
 1133 0018 B2FA82F3 		clz	r3, r2
 1134 001c 5B09     		lsrs	r3, r3, #5
 1135 001e 0029     		cmp	r1, #0
 1136 0020 08BF     		it	eq
 1137 0022 0123     		moveq	r3, #1
 1138 0024 002B     		cmp	r3, #0
 1139 0026 4CD1     		bne	.L92
 732:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1140              		.loc 1 732 0
 1141 0028 90F86830 		ldrb	r3, [r0, #104]	@ zero_extendqisi2
 1142 002c 012B     		cmp	r3, #1
 1143 002e 4AD0     		beq	.L93
 732:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1144              		.loc 1 732 0 is_stmt 0 discriminator 2
 1145 0030 0123     		movs	r3, #1
 1146 0032 80F86830 		strb	r3, [r0, #104]
 734:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->gState = HAL_UART_STATE_BUSY_TX;
 1147              		.loc 1 734 0 is_stmt 1 discriminator 2
 1148 0036 0023     		movs	r3, #0
 1149 0038 C366     		str	r3, [r0, #108]
 735:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1150              		.loc 1 735 0 discriminator 2
 1151 003a 2123     		movs	r3, #33
 1152 003c 80F86930 		strb	r3, [r0, #105]
 738:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1153              		.loc 1 738 0 discriminator 2
 1154 0040 FFF7FEFF 		bl	HAL_GetTick
 1155              	.LVL86:
 1156 0044 0746     		mov	r7, r0
 1157              	.LVL87:
 740:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->TxXferCount = Size;
 1158              		.loc 1 740 0 discriminator 2
 1159 0046 A4F85080 		strh	r8, [r4, #80]	@ movhi
 741:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     while(huart->TxXferCount > 0U)
 1160              		.loc 1 741 0 discriminator 2
 1161 004a A4F85280 		strh	r8, [r4, #82]	@ movhi
 742:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 1162              		.loc 1 742 0 discriminator 2
 1163 004e 03E0     		b	.L87
 1164              	.LVL88:
 1165              	.L88:
 757:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
 1166              		.loc 1 757 0
 1167 0050 2A78     		ldrb	r2, [r5]	@ zero_extendqisi2
 1168 0052 2368     		ldr	r3, [r4]
 1169 0054 9A62     		str	r2, [r3, #40]
 1170 0056 0135     		adds	r5, r5, #1
 1171              	.LVL89:
 1172              	.L87:
 742:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 1173              		.loc 1 742 0
 1174 0058 B4F85230 		ldrh	r3, [r4, #82]
 1175 005c 9BB2     		uxth	r3, r3
 1176 005e DBB1     		cbz	r3, .L97
 744:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       if(UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_TXE, RESET, tickstart, Timeout) != HAL_OK)
 1177              		.loc 1 744 0
 1178 0060 B4F85230 		ldrh	r3, [r4, #82]
 1179 0064 013B     		subs	r3, r3, #1
 1180 0066 9BB2     		uxth	r3, r3
 1181 0068 A4F85230 		strh	r3, [r4, #82]	@ movhi
 745:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
 1182              		.loc 1 745 0
 1183 006c 0096     		str	r6, [sp]
 1184 006e 3B46     		mov	r3, r7
 1185 0070 0022     		movs	r2, #0
 1186 0072 8021     		movs	r1, #128
 1187 0074 2046     		mov	r0, r4
 1188 0076 FFF7FEFF 		bl	UART_WaitOnFlagUntilTimeout
 1189              	.LVL90:
 1190 007a 30BB     		cbnz	r0, .L94
 749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
 1191              		.loc 1 749 0
 1192 007c A368     		ldr	r3, [r4, #8]
 1193 007e B3F5805F 		cmp	r3, #4096
 1194 0082 E5D1     		bne	.L88
 749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
 1195              		.loc 1 749 0 is_stmt 0 discriminator 1
 1196 0084 2369     		ldr	r3, [r4, #16]
 1197 0086 002B     		cmp	r3, #0
 1198 0088 E2D1     		bne	.L88
 1199              	.LVL91:
 752:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         pData += 2;
 1200              		.loc 1 752 0 is_stmt 1
 1201 008a 35F8023B 		ldrh	r3, [r5], #2
 1202              	.LVL92:
 1203 008e 2268     		ldr	r2, [r4]
 1204 0090 C3F30803 		ubfx	r3, r3, #0, #9
 1205 0094 9362     		str	r3, [r2, #40]
 1206              	.LVL93:
 753:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
 1207              		.loc 1 753 0
 1208 0096 DFE7     		b	.L87
 1209              	.LVL94:
 1210              	.L97:
 760:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 1211              		.loc 1 760 0
 1212 0098 0096     		str	r6, [sp]
 1213 009a 3B46     		mov	r3, r7
 1214 009c 0022     		movs	r2, #0
 1215 009e 4021     		movs	r1, #64
 1216 00a0 2046     		mov	r0, r4
 1217 00a2 FFF7FEFF 		bl	UART_WaitOnFlagUntilTimeout
 1218              	.LVL95:
 1219 00a6 0346     		mov	r3, r0
 1220 00a8 88B9     		cbnz	r0, .L95
 766:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1221              		.loc 1 766 0
 1222 00aa 2022     		movs	r2, #32
 1223 00ac 84F86920 		strb	r2, [r4, #105]
 769:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1224              		.loc 1 769 0
 1225 00b0 0022     		movs	r2, #0
 1226 00b2 84F86820 		strb	r2, [r4, #104]
 771:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 1227              		.loc 1 771 0
 1228 00b6 00E0     		b	.L86
 1229              	.LVL96:
 1230              	.L91:
 775:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 1231              		.loc 1 775 0
 1232 00b8 0223     		movs	r3, #2
 1233              	.LVL97:
 1234              	.L86:
 777:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1235              		.loc 1 777 0
 1236 00ba 1846     		mov	r0, r3
 1237 00bc 02B0     		add	sp, sp, #8
 1238              		.cfi_remember_state
 1239              		.cfi_def_cfa_offset 24
 1240              		@ sp needed
 1241 00be BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1242              	.LVL98:
 1243              	.L92:
 1244              		.cfi_restore_state
 728:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 1245              		.loc 1 728 0
 1246 00c2 0123     		movs	r3, #1
 1247 00c4 F9E7     		b	.L86
 1248              	.L93:
 732:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1249              		.loc 1 732 0
 1250 00c6 0223     		movs	r3, #2
 1251 00c8 F7E7     		b	.L86
 1252              	.LVL99:
 1253              	.L94:
 747:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
 1254              		.loc 1 747 0
 1255 00ca 0323     		movs	r3, #3
 1256 00cc F5E7     		b	.L86
 1257              	.L95:
 762:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 1258              		.loc 1 762 0
 1259 00ce 0323     		movs	r3, #3
 1260 00d0 F3E7     		b	.L86
 1261              		.cfi_endproc
 1262              	.LFE146:
 1264              		.section	.text.HAL_UART_Receive,"ax",%progbits
 1265              		.align	1
 1266              		.global	HAL_UART_Receive
 1267              		.syntax unified
 1268              		.thumb
 1269              		.thumb_func
 1270              		.fpu fpv5-d16
 1272              	HAL_UART_Receive:
 1273              	.LFB147:
 788:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t* tmp;
 1274              		.loc 1 788 0
 1275              		.cfi_startproc
 1276              		@ args = 0, pretend = 0, frame = 0
 1277              		@ frame_needed = 0, uses_anonymous_args = 0
 1278              	.LVL100:
 1279 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 1280              		.cfi_def_cfa_offset 24
 1281              		.cfi_offset 4, -24
 1282              		.cfi_offset 5, -20
 1283              		.cfi_offset 6, -16
 1284              		.cfi_offset 7, -12
 1285              		.cfi_offset 8, -8
 1286              		.cfi_offset 14, -4
 1287 0004 82B0     		sub	sp, sp, #8
 1288              		.cfi_def_cfa_offset 32
 1289 0006 1E46     		mov	r6, r3
 1290              	.LVL101:
 794:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 1291              		.loc 1 794 0
 1292 0008 90F86A30 		ldrb	r3, [r0, #106]	@ zero_extendqisi2
 1293              	.LVL102:
 1294 000c DBB2     		uxtb	r3, r3
 1295 000e 202B     		cmp	r3, #32
 1296 0010 75D1     		bne	.L110
 1297 0012 0446     		mov	r4, r0
 1298 0014 0D46     		mov	r5, r1
 1299 0016 9046     		mov	r8, r2
 796:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 1300              		.loc 1 796 0
 1301 0018 B2FA82F3 		clz	r3, r2
 1302 001c 5B09     		lsrs	r3, r3, #5
 1303 001e 0029     		cmp	r1, #0
 1304 0020 08BF     		it	eq
 1305 0022 0123     		moveq	r3, #1
 1306 0024 002B     		cmp	r3, #0
 1307 0026 6ED1     		bne	.L111
 802:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1308              		.loc 1 802 0
 1309 0028 90F86830 		ldrb	r3, [r0, #104]	@ zero_extendqisi2
 1310 002c 012B     		cmp	r3, #1
 1311 002e 6CD0     		beq	.L112
 802:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1312              		.loc 1 802 0 is_stmt 0 discriminator 2
 1313 0030 0123     		movs	r3, #1
 1314 0032 80F86830 		strb	r3, [r0, #104]
 804:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->RxState = HAL_UART_STATE_BUSY_RX;
 1315              		.loc 1 804 0 is_stmt 1 discriminator 2
 1316 0036 0023     		movs	r3, #0
 1317 0038 C366     		str	r3, [r0, #108]
 805:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1318              		.loc 1 805 0 discriminator 2
 1319 003a 2223     		movs	r3, #34
 1320 003c 80F86A30 		strb	r3, [r0, #106]
 808:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1321              		.loc 1 808 0 discriminator 2
 1322 0040 FFF7FEFF 		bl	HAL_GetTick
 1323              	.LVL103:
 1324 0044 0746     		mov	r7, r0
 1325              	.LVL104:
 810:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->RxXferCount = Size;
 1326              		.loc 1 810 0 discriminator 2
 1327 0046 A4F85880 		strh	r8, [r4, #88]	@ movhi
 811:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1328              		.loc 1 811 0 discriminator 2
 1329 004a A4F85A80 		strh	r8, [r4, #90]	@ movhi
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     uhMask = huart->Mask;
 1330              		.loc 1 814 0 discriminator 2
 1331 004e A368     		ldr	r3, [r4, #8]
 1332 0050 B3F5805F 		cmp	r3, #4096
 1333 0054 06D0     		beq	.L115
 1334 0056 A3B9     		cbnz	r3, .L103
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     uhMask = huart->Mask;
 1335              		.loc 1 814 0 is_stmt 0 discriminator 5
 1336 0058 2369     		ldr	r3, [r4, #16]
 1337 005a 73B9     		cbnz	r3, .L104
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     uhMask = huart->Mask;
 1338              		.loc 1 814 0 discriminator 7
 1339 005c FF23     		movs	r3, #255
 1340 005e A4F85C30 		strh	r3, [r4, #92]	@ movhi
 1341 0062 11E0     		b	.L102
 1342              	.L115:
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     uhMask = huart->Mask;
 1343              		.loc 1 814 0 discriminator 1
 1344 0064 2369     		ldr	r3, [r4, #16]
 1345 0066 23B9     		cbnz	r3, .L101
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     uhMask = huart->Mask;
 1346              		.loc 1 814 0 discriminator 3
 1347 0068 40F2FF13 		movw	r3, #511
 1348 006c A4F85C30 		strh	r3, [r4, #92]	@ movhi
 1349 0070 0AE0     		b	.L102
 1350              	.L101:
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     uhMask = huart->Mask;
 1351              		.loc 1 814 0 discriminator 4
 1352 0072 FF23     		movs	r3, #255
 1353 0074 A4F85C30 		strh	r3, [r4, #92]	@ movhi
 1354 0078 06E0     		b	.L102
 1355              	.L104:
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     uhMask = huart->Mask;
 1356              		.loc 1 814 0 discriminator 8
 1357 007a 7F23     		movs	r3, #127
 1358 007c A4F85C30 		strh	r3, [r4, #92]	@ movhi
 1359 0080 02E0     		b	.L102
 1360              	.L103:
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     uhMask = huart->Mask;
 1361              		.loc 1 814 0 discriminator 6
 1362 0082 B3F1805F 		cmp	r3, #268435456
 1363 0086 02D0     		beq	.L116
 1364              	.L102:
 815:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1365              		.loc 1 815 0 is_stmt 1
 1366 0088 B4F85C80 		ldrh	r8, [r4, #92]
 1367              	.LVL105:
 818:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 1368              		.loc 1 818 0
 1369 008c 10E0     		b	.L106
 1370              	.LVL106:
 1371              	.L116:
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     uhMask = huart->Mask;
 1372              		.loc 1 814 0 discriminator 9
 1373 008e 2369     		ldr	r3, [r4, #16]
 1374 0090 1BB9     		cbnz	r3, .L105
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     uhMask = huart->Mask;
 1375              		.loc 1 814 0 is_stmt 0 discriminator 10
 1376 0092 7F23     		movs	r3, #127
 1377 0094 A4F85C30 		strh	r3, [r4, #92]	@ movhi
 1378 0098 F6E7     		b	.L102
 1379              	.L105:
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     uhMask = huart->Mask;
 1380              		.loc 1 814 0 discriminator 11
 1381 009a 3F23     		movs	r3, #63
 1382 009c A4F85C30 		strh	r3, [r4, #92]	@ movhi
 1383 00a0 F2E7     		b	.L102
 1384              	.LVL107:
 1385              	.L107:
 833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
 1386              		.loc 1 833 0 is_stmt 1
 1387 00a2 2368     		ldr	r3, [r4]
 1388 00a4 5A6A     		ldr	r2, [r3, #36]
 1389 00a6 5FFA88F3 		uxtb	r3, r8
 1390              	.LVL108:
 1391 00aa 1340     		ands	r3, r3, r2
 1392 00ac 2B70     		strb	r3, [r5]
 1393 00ae 0135     		adds	r5, r5, #1
 1394              	.LVL109:
 1395              	.L106:
 818:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 1396              		.loc 1 818 0
 1397 00b0 B4F85A30 		ldrh	r3, [r4, #90]
 1398 00b4 9BB2     		uxth	r3, r3
 1399 00b6 DBB1     		cbz	r3, .L117
 820:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       if(UART_WaitOnFlagUntilTimeout(huart, UART_FLAG_RXNE, RESET, tickstart, Timeout) != HAL_OK)
 1400              		.loc 1 820 0
 1401 00b8 B4F85A30 		ldrh	r3, [r4, #90]
 1402 00bc 013B     		subs	r3, r3, #1
 1403 00be 9BB2     		uxth	r3, r3
 1404 00c0 A4F85A30 		strh	r3, [r4, #90]	@ movhi
 821:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
 1405              		.loc 1 821 0
 1406 00c4 0096     		str	r6, [sp]
 1407 00c6 3B46     		mov	r3, r7
 1408 00c8 0022     		movs	r2, #0
 1409 00ca 2021     		movs	r1, #32
 1410 00cc 2046     		mov	r0, r4
 1411 00ce FFF7FEFF 		bl	UART_WaitOnFlagUntilTimeout
 1412              	.LVL110:
 1413 00d2 E0B9     		cbnz	r0, .L113
 825:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
 1414              		.loc 1 825 0
 1415 00d4 A368     		ldr	r3, [r4, #8]
 1416 00d6 B3F5805F 		cmp	r3, #4096
 1417 00da E2D1     		bne	.L107
 825:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
 1418              		.loc 1 825 0 is_stmt 0 discriminator 1
 1419 00dc 2369     		ldr	r3, [r4, #16]
 1420 00de 002B     		cmp	r3, #0
 1421 00e0 DFD1     		bne	.L107
 1422              	.LVL111:
 828:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         pData +=2U;
 1423              		.loc 1 828 0 is_stmt 1
 1424 00e2 2368     		ldr	r3, [r4]
 1425 00e4 5B6A     		ldr	r3, [r3, #36]
 1426 00e6 08EA0303 		and	r3, r8, r3
 1427 00ea 25F8023B 		strh	r3, [r5], #2	@ movhi
 1428              	.LVL112:
 829:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
 1429              		.loc 1 829 0
 1430 00ee DFE7     		b	.L106
 1431              	.LVL113:
 1432              	.L117:
 838:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1433              		.loc 1 838 0
 1434 00f0 2023     		movs	r3, #32
 1435 00f2 84F86A30 		strb	r3, [r4, #106]
 841:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1436              		.loc 1 841 0
 1437 00f6 0020     		movs	r0, #0
 1438 00f8 84F86800 		strb	r0, [r4, #104]
 843:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 1439              		.loc 1 843 0
 1440 00fc 00E0     		b	.L99
 1441              	.LVL114:
 1442              	.L110:
 847:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 1443              		.loc 1 847 0
 1444 00fe 0220     		movs	r0, #2
 1445              	.LVL115:
 1446              	.L99:
 849:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1447              		.loc 1 849 0
 1448 0100 02B0     		add	sp, sp, #8
 1449              		.cfi_remember_state
 1450              		.cfi_def_cfa_offset 24
 1451              		@ sp needed
 1452 0102 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 1453              	.LVL116:
 1454              	.L111:
 1455              		.cfi_restore_state
 798:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 1456              		.loc 1 798 0
 1457 0106 0120     		movs	r0, #1
 1458              	.LVL117:
 1459 0108 FAE7     		b	.L99
 1460              	.LVL118:
 1461              	.L112:
 802:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1462              		.loc 1 802 0
 1463 010a 0220     		movs	r0, #2
 1464              	.LVL119:
 1465 010c F8E7     		b	.L99
 1466              	.LVL120:
 1467              	.L113:
 823:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
 1468              		.loc 1 823 0
 1469 010e 0320     		movs	r0, #3
 1470 0110 F6E7     		b	.L99
 1471              		.cfi_endproc
 1472              	.LFE147:
 1474              		.section	.text.HAL_UART_TxCpltCallback,"ax",%progbits
 1475              		.align	1
 1476              		.weak	HAL_UART_TxCpltCallback
 1477              		.syntax unified
 1478              		.thumb
 1479              		.thumb_func
 1480              		.fpu fpv5-d16
 1482              	HAL_UART_TxCpltCallback:
 1483              	.LFB163:
1491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
 1484              		.loc 1 1491 0
 1485              		.cfi_startproc
 1486              		@ args = 0, pretend = 0, frame = 0
 1487              		@ frame_needed = 0, uses_anonymous_args = 0
 1488              		@ link register save eliminated.
 1489              	.LVL121:
1498:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1490              		.loc 1 1498 0
 1491 0000 7047     		bx	lr
 1492              		.cfi_endproc
 1493              	.LFE163:
 1495              		.section	.text.UART_DMATransmitCplt,"ax",%progbits
 1496              		.align	1
 1497              		.syntax unified
 1498              		.thumb
 1499              		.thumb_func
 1500              		.fpu fpv5-d16
 1502              	UART_DMATransmitCplt:
 1503              	.LFB157:
1369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UART_HandleTypeDef* huart = ( UART_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 1504              		.loc 1 1369 0
 1505              		.cfi_startproc
 1506              		@ args = 0, pretend = 0, frame = 0
 1507              		@ frame_needed = 0, uses_anonymous_args = 0
 1508              	.LVL122:
 1509 0000 08B5     		push	{r3, lr}
 1510              		.cfi_def_cfa_offset 8
 1511              		.cfi_offset 3, -8
 1512              		.cfi_offset 14, -4
1370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1513              		.loc 1 1370 0
 1514 0002 836B     		ldr	r3, [r0, #56]
 1515              	.LVL123:
1373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 1516              		.loc 1 1373 0
 1517 0004 0268     		ldr	r2, [r0]
 1518 0006 1268     		ldr	r2, [r2]
 1519 0008 12F4807F 		tst	r2, #256
 1520 000c 0DD1     		bne	.L120
1375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1521              		.loc 1 1375 0
 1522 000e 0022     		movs	r2, #0
 1523 0010 A3F85220 		strh	r2, [r3, #82]	@ movhi
1379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1524              		.loc 1 1379 0
 1525 0014 1968     		ldr	r1, [r3]
 1526 0016 8A68     		ldr	r2, [r1, #8]
 1527 0018 22F08002 		bic	r2, r2, #128
 1528 001c 8A60     		str	r2, [r1, #8]
1382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 1529              		.loc 1 1382 0
 1530 001e 1A68     		ldr	r2, [r3]
 1531 0020 1368     		ldr	r3, [r2]
 1532              	.LVL124:
 1533 0022 43F04003 		orr	r3, r3, #64
 1534 0026 1360     		str	r3, [r2]
 1535              	.LVL125:
 1536              	.L119:
1389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1537              		.loc 1 1389 0
 1538 0028 08BD     		pop	{r3, pc}
 1539              	.LVL126:
 1540              	.L120:
1387:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 1541              		.loc 1 1387 0
 1542 002a 1846     		mov	r0, r3
 1543              	.LVL127:
 1544 002c FFF7FEFF 		bl	HAL_UART_TxCpltCallback
 1545              	.LVL128:
1389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1546              		.loc 1 1389 0
 1547 0030 FAE7     		b	.L119
 1548              		.cfi_endproc
 1549              	.LFE157:
 1551              		.section	.text.UART_EndTransmit_IT,"ax",%progbits
 1552              		.align	1
 1553              		.syntax unified
 1554              		.thumb
 1555              		.thumb_func
 1556              		.fpu fpv5-d16
 1558              	UART_EndTransmit_IT:
 1559              	.LFB169:
1616:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Disable the UART Transmit Complete Interrupt */
 1560              		.loc 1 1616 0
 1561              		.cfi_startproc
 1562              		@ args = 0, pretend = 0, frame = 0
 1563              		@ frame_needed = 0, uses_anonymous_args = 0
 1564              	.LVL129:
 1565 0000 08B5     		push	{r3, lr}
 1566              		.cfi_def_cfa_offset 8
 1567              		.cfi_offset 3, -8
 1568              		.cfi_offset 14, -4
1618:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1569              		.loc 1 1618 0
 1570 0002 0168     		ldr	r1, [r0]
 1571 0004 0B68     		ldr	r3, [r1]
 1572 0006 23F04003 		bic	r3, r3, #64
 1573 000a 0B60     		str	r3, [r1]
1621:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1574              		.loc 1 1621 0
 1575 000c 2023     		movs	r3, #32
 1576 000e 80F86930 		strb	r3, [r0, #105]
1623:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1577              		.loc 1 1623 0
 1578 0012 FFF7FEFF 		bl	HAL_UART_TxCpltCallback
 1579              	.LVL130:
1626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1580              		.loc 1 1626 0
 1581 0016 0020     		movs	r0, #0
 1582 0018 08BD     		pop	{r3, pc}
 1583              		.cfi_endproc
 1584              	.LFE169:
 1586              		.section	.text.HAL_UART_TxHalfCpltCallback,"ax",%progbits
 1587              		.align	1
 1588              		.weak	HAL_UART_TxHalfCpltCallback
 1589              		.syntax unified
 1590              		.thumb
 1591              		.thumb_func
 1592              		.fpu fpv5-d16
 1594              	HAL_UART_TxHalfCpltCallback:
 1595              	.LFB164:
1506:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
 1596              		.loc 1 1506 0
 1597              		.cfi_startproc
 1598              		@ args = 0, pretend = 0, frame = 0
 1599              		@ frame_needed = 0, uses_anonymous_args = 0
 1600              		@ link register save eliminated.
 1601              	.LVL131:
1513:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1602              		.loc 1 1513 0
 1603 0000 7047     		bx	lr
 1604              		.cfi_endproc
 1605              	.LFE164:
 1607              		.section	.text.UART_DMATxHalfCplt,"ax",%progbits
 1608              		.align	1
 1609              		.syntax unified
 1610              		.thumb
 1611              		.thumb_func
 1612              		.fpu fpv5-d16
 1614              	UART_DMATxHalfCplt:
 1615              	.LFB158:
1397:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UART_HandleTypeDef* huart = (UART_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
 1616              		.loc 1 1397 0
 1617              		.cfi_startproc
 1618              		@ args = 0, pretend = 0, frame = 0
 1619              		@ frame_needed = 0, uses_anonymous_args = 0
 1620              	.LVL132:
 1621 0000 08B5     		push	{r3, lr}
 1622              		.cfi_def_cfa_offset 8
 1623              		.cfi_offset 3, -8
 1624              		.cfi_offset 14, -4
 1625              	.LVL133:
1400:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 1626              		.loc 1 1400 0
 1627 0002 806B     		ldr	r0, [r0, #56]
 1628              	.LVL134:
 1629 0004 FFF7FEFF 		bl	HAL_UART_TxHalfCpltCallback
 1630              	.LVL135:
1401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1631              		.loc 1 1401 0
 1632 0008 08BD     		pop	{r3, pc}
 1633              		.cfi_endproc
 1634              	.LFE158:
 1636              		.section	.text.HAL_UART_RxCpltCallback,"ax",%progbits
 1637              		.align	1
 1638              		.weak	HAL_UART_RxCpltCallback
 1639              		.syntax unified
 1640              		.thumb
 1641              		.thumb_func
 1642              		.fpu fpv5-d16
 1644              	HAL_UART_RxCpltCallback:
 1645              	.LFB165:
1521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
 1646              		.loc 1 1521 0
 1647              		.cfi_startproc
 1648              		@ args = 0, pretend = 0, frame = 0
 1649              		@ frame_needed = 0, uses_anonymous_args = 0
 1650              		@ link register save eliminated.
 1651              	.LVL136:
1528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1652              		.loc 1 1528 0
 1653 0000 7047     		bx	lr
 1654              		.cfi_endproc
 1655              	.LFE165:
 1657              		.section	.text.UART_DMAReceiveCplt,"ax",%progbits
 1658              		.align	1
 1659              		.syntax unified
 1660              		.thumb
 1661              		.thumb_func
 1662              		.fpu fpv5-d16
 1664              	UART_DMAReceiveCplt:
 1665              	.LFB159:
1409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UART_HandleTypeDef* huart = ( UART_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 1666              		.loc 1 1409 0
 1667              		.cfi_startproc
 1668              		@ args = 0, pretend = 0, frame = 0
 1669              		@ frame_needed = 0, uses_anonymous_args = 0
 1670              	.LVL137:
 1671 0000 08B5     		push	{r3, lr}
 1672              		.cfi_def_cfa_offset 8
 1673              		.cfi_offset 3, -8
 1674              		.cfi_offset 14, -4
1410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1675              		.loc 1 1410 0
 1676 0002 836B     		ldr	r3, [r0, #56]
 1677              	.LVL138:
1413:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 1678              		.loc 1 1413 0
 1679 0004 0268     		ldr	r2, [r0]
 1680 0006 1268     		ldr	r2, [r2]
 1681 0008 12F4807F 		tst	r2, #256
 1682 000c 14D1     		bne	.L130
1415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1683              		.loc 1 1415 0
 1684 000e 0022     		movs	r2, #0
 1685 0010 A3F85A20 		strh	r2, [r3, #90]	@ movhi
1418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     CLEAR_BIT(huart->Instance->CR3, USART_CR3_EIE);
 1686              		.loc 1 1418 0
 1687 0014 1968     		ldr	r1, [r3]
 1688 0016 0A68     		ldr	r2, [r1]
 1689 0018 22F48072 		bic	r2, r2, #256
 1690 001c 0A60     		str	r2, [r1]
1419:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1691              		.loc 1 1419 0
 1692 001e 1968     		ldr	r1, [r3]
 1693 0020 8A68     		ldr	r2, [r1, #8]
 1694 0022 22F00102 		bic	r2, r2, #1
 1695 0026 8A60     		str	r2, [r1, #8]
1423:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1696              		.loc 1 1423 0
 1697 0028 1968     		ldr	r1, [r3]
 1698 002a 8A68     		ldr	r2, [r1, #8]
 1699 002c 22F04002 		bic	r2, r2, #64
 1700 0030 8A60     		str	r2, [r1, #8]
1426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 1701              		.loc 1 1426 0
 1702 0032 2022     		movs	r2, #32
 1703 0034 83F86A20 		strb	r2, [r3, #106]
 1704              	.L130:
1428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 1705              		.loc 1 1428 0
 1706 0038 1846     		mov	r0, r3
 1707              	.LVL139:
 1708 003a FFF7FEFF 		bl	HAL_UART_RxCpltCallback
 1709              	.LVL140:
1429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1710              		.loc 1 1429 0
 1711 003e 08BD     		pop	{r3, pc}
 1712              		.cfi_endproc
 1713              	.LFE159:
 1715              		.section	.text.UART_Receive_IT,"ax",%progbits
 1716              		.align	1
 1717              		.syntax unified
 1718              		.thumb
 1719              		.thumb_func
 1720              		.fpu fpv5-d16
 1722              	UART_Receive_IT:
 1723              	.LFB170:
1636:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t* tmp;
 1724              		.loc 1 1636 0
 1725              		.cfi_startproc
 1726              		@ args = 0, pretend = 0, frame = 0
 1727              		@ frame_needed = 0, uses_anonymous_args = 0
 1728              	.LVL141:
1638:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1729              		.loc 1 1638 0
 1730 0000 B0F85C20 		ldrh	r2, [r0, #92]
 1731              	.LVL142:
1641:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 1732              		.loc 1 1641 0
 1733 0004 90F86A30 		ldrb	r3, [r0, #106]	@ zero_extendqisi2
 1734 0008 DBB2     		uxtb	r3, r3
 1735 000a 222B     		cmp	r3, #34
 1736 000c 32D1     		bne	.L133
1636:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t* tmp;
 1737              		.loc 1 1636 0
 1738 000e 10B5     		push	{r4, lr}
 1739              		.cfi_def_cfa_offset 8
 1740              		.cfi_offset 4, -8
 1741              		.cfi_offset 14, -4
1644:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 1742              		.loc 1 1644 0
 1743 0010 8368     		ldr	r3, [r0, #8]
 1744 0012 B3F5805F 		cmp	r3, #4096
 1745 0016 10D0     		beq	.L142
 1746              	.L134:
1652:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 1747              		.loc 1 1652 0
 1748 0018 0368     		ldr	r3, [r0]
 1749 001a 596A     		ldr	r1, [r3, #36]
 1750 001c D2B2     		uxtb	r2, r2
 1751              	.LVL143:
 1752 001e 436D     		ldr	r3, [r0, #84]
 1753 0020 5C1C     		adds	r4, r3, #1
 1754 0022 4465     		str	r4, [r0, #84]
 1755 0024 0A40     		ands	r2, r2, r1
 1756 0026 1A70     		strb	r2, [r3]
 1757              	.LVL144:
 1758              	.L135:
1655:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 1759              		.loc 1 1655 0
 1760 0028 B0F85A30 		ldrh	r3, [r0, #90]
 1761 002c 013B     		subs	r3, r3, #1
 1762 002e 9BB2     		uxth	r3, r3
 1763 0030 A0F85A30 		strh	r3, [r0, #90]	@ movhi
 1764 0034 6BB1     		cbz	r3, .L143
1671:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 1765              		.loc 1 1671 0
 1766 0036 0020     		movs	r0, #0
 1767              	.LVL145:
 1768              	.L136:
1680:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1769              		.loc 1 1680 0
 1770 0038 10BD     		pop	{r4, pc}
 1771              	.LVL146:
 1772              	.L142:
1644:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 1773              		.loc 1 1644 0 discriminator 1
 1774 003a 0369     		ldr	r3, [r0, #16]
 1775 003c 002B     		cmp	r3, #0
 1776 003e EBD1     		bne	.L134
1646:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       *tmp = (uint16_t)(huart->Instance->RDR & uhMask);
 1777              		.loc 1 1646 0
 1778 0040 436D     		ldr	r3, [r0, #84]
 1779              	.LVL147:
1647:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       huart->pRxBuffPtr +=2;
 1780              		.loc 1 1647 0
 1781 0042 0168     		ldr	r1, [r0]
 1782 0044 496A     		ldr	r1, [r1, #36]
 1783 0046 0A40     		ands	r2, r2, r1
 1784              	.LVL148:
 1785 0048 1A80     		strh	r2, [r3]	@ movhi
 1786              	.LVL149:
1648:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 1787              		.loc 1 1648 0
 1788 004a 436D     		ldr	r3, [r0, #84]
 1789              	.LVL150:
 1790 004c 0233     		adds	r3, r3, #2
 1791 004e 4365     		str	r3, [r0, #84]
 1792 0050 EAE7     		b	.L135
 1793              	.L143:
1658:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1794              		.loc 1 1658 0
 1795 0052 0268     		ldr	r2, [r0]
 1796 0054 1368     		ldr	r3, [r2]
 1797 0056 23F49073 		bic	r3, r3, #288
 1798 005a 1360     		str	r3, [r2]
1661:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1799              		.loc 1 1661 0
 1800 005c 0268     		ldr	r2, [r0]
 1801 005e 9368     		ldr	r3, [r2, #8]
 1802 0060 23F00103 		bic	r3, r3, #1
 1803 0064 9360     		str	r3, [r2, #8]
1664:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1804              		.loc 1 1664 0
 1805 0066 2023     		movs	r3, #32
 1806 0068 80F86A30 		strb	r3, [r0, #106]
1666:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1807              		.loc 1 1666 0
 1808 006c FFF7FEFF 		bl	HAL_UART_RxCpltCallback
 1809              	.LVL151:
1668:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 1810              		.loc 1 1668 0
 1811 0070 0020     		movs	r0, #0
 1812 0072 E1E7     		b	.L136
 1813              	.LVL152:
 1814              	.L133:
 1815              		.cfi_def_cfa_offset 0
 1816              		.cfi_restore 4
 1817              		.cfi_restore 14
1676:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1818              		.loc 1 1676 0
 1819 0074 0268     		ldr	r2, [r0]
 1820              	.LVL153:
 1821 0076 9369     		ldr	r3, [r2, #24]
 1822 0078 43F00803 		orr	r3, r3, #8
 1823 007c 9361     		str	r3, [r2, #24]
 1824              	.LVL154:
1678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 1825              		.loc 1 1678 0
 1826 007e 0220     		movs	r0, #2
 1827              	.LVL155:
1680:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1828              		.loc 1 1680 0
 1829 0080 7047     		bx	lr
 1830              		.cfi_endproc
 1831              	.LFE170:
 1833              		.section	.text.HAL_UART_RxHalfCpltCallback,"ax",%progbits
 1834              		.align	1
 1835              		.weak	HAL_UART_RxHalfCpltCallback
 1836              		.syntax unified
 1837              		.thumb
 1838              		.thumb_func
 1839              		.fpu fpv5-d16
 1841              	HAL_UART_RxHalfCpltCallback:
 1842              	.LFB166:
1536:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
 1843              		.loc 1 1536 0
 1844              		.cfi_startproc
 1845              		@ args = 0, pretend = 0, frame = 0
 1846              		@ frame_needed = 0, uses_anonymous_args = 0
 1847              		@ link register save eliminated.
 1848              	.LVL156:
1543:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1849              		.loc 1 1543 0
 1850 0000 7047     		bx	lr
 1851              		.cfi_endproc
 1852              	.LFE166:
 1854              		.section	.text.UART_DMARxHalfCplt,"ax",%progbits
 1855              		.align	1
 1856              		.syntax unified
 1857              		.thumb
 1858              		.thumb_func
 1859              		.fpu fpv5-d16
 1861              	UART_DMARxHalfCplt:
 1862              	.LFB160:
1437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UART_HandleTypeDef* huart = (UART_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
 1863              		.loc 1 1437 0
 1864              		.cfi_startproc
 1865              		@ args = 0, pretend = 0, frame = 0
 1866              		@ frame_needed = 0, uses_anonymous_args = 0
 1867              	.LVL157:
 1868 0000 08B5     		push	{r3, lr}
 1869              		.cfi_def_cfa_offset 8
 1870              		.cfi_offset 3, -8
 1871              		.cfi_offset 14, -4
 1872              	.LVL158:
1440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 1873              		.loc 1 1440 0
 1874 0002 806B     		ldr	r0, [r0, #56]
 1875              	.LVL159:
 1876 0004 FFF7FEFF 		bl	HAL_UART_RxHalfCpltCallback
 1877              	.LVL160:
1441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1878              		.loc 1 1441 0
 1879 0008 08BD     		pop	{r3, pc}
 1880              		.cfi_endproc
 1881              	.LFE160:
 1883              		.section	.text.HAL_UART_ErrorCallback,"ax",%progbits
 1884              		.align	1
 1885              		.weak	HAL_UART_ErrorCallback
 1886              		.syntax unified
 1887              		.thumb
 1888              		.thumb_func
 1889              		.fpu fpv5-d16
 1891              	HAL_UART_ErrorCallback:
 1892              	.LFB167:
1551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Prevent unused argument(s) compilation warning */
 1893              		.loc 1 1551 0
 1894              		.cfi_startproc
 1895              		@ args = 0, pretend = 0, frame = 0
 1896              		@ frame_needed = 0, uses_anonymous_args = 0
 1897              		@ link register save eliminated.
 1898              	.LVL161:
1558:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1899              		.loc 1 1558 0
 1900 0000 7047     		bx	lr
 1901              		.cfi_endproc
 1902              	.LFE167:
 1904              		.section	.text.UART_DMAError,"ax",%progbits
 1905              		.align	1
 1906              		.syntax unified
 1907              		.thumb
 1908              		.thumb_func
 1909              		.fpu fpv5-d16
 1911              	UART_DMAError:
 1912              	.LFB161:
1449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UART_HandleTypeDef* huart = ( UART_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 1913              		.loc 1 1449 0
 1914              		.cfi_startproc
 1915              		@ args = 0, pretend = 0, frame = 0
 1916              		@ frame_needed = 0, uses_anonymous_args = 0
 1917              	.LVL162:
 1918 0000 10B5     		push	{r4, lr}
 1919              		.cfi_def_cfa_offset 8
 1920              		.cfi_offset 4, -8
 1921              		.cfi_offset 14, -4
1450:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->RxXferCount = 0U;
 1922              		.loc 1 1450 0
 1923 0002 846B     		ldr	r4, [r0, #56]
 1924              	.LVL163:
1451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->TxXferCount = 0U;
 1925              		.loc 1 1451 0
 1926 0004 0023     		movs	r3, #0
 1927 0006 A4F85A30 		strh	r3, [r4, #90]	@ movhi
1452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Stop UART DMA Tx request if ongoing */
 1928              		.loc 1 1452 0
 1929 000a A4F85230 		strh	r3, [r4, #82]	@ movhi
1454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       &&(HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAT)) )
 1930              		.loc 1 1454 0
 1931 000e 94F86930 		ldrb	r3, [r4, #105]	@ zero_extendqisi2
 1932 0012 DBB2     		uxtb	r3, r3
 1933 0014 212B     		cmp	r3, #33
 1934 0016 0CD0     		beq	.L152
 1935              	.LVL164:
 1936              	.L149:
1461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       &&(HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR)) )
 1937              		.loc 1 1461 0
 1938 0018 94F86A30 		ldrb	r3, [r4, #106]	@ zero_extendqisi2
 1939 001c DBB2     		uxtb	r3, r3
 1940 001e 222B     		cmp	r3, #34
 1941 0020 10D0     		beq	.L153
 1942              	.L150:
1466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   HAL_UART_ErrorCallback(huart);
 1943              		.loc 1 1466 0
 1944 0022 E36E     		ldr	r3, [r4, #108]
 1945 0024 43F01003 		orr	r3, r3, #16
 1946 0028 E366     		str	r3, [r4, #108]
1467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 1947              		.loc 1 1467 0
 1948 002a 2046     		mov	r0, r4
 1949 002c FFF7FEFF 		bl	HAL_UART_ErrorCallback
 1950              	.LVL165:
1468:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 1951              		.loc 1 1468 0
 1952 0030 10BD     		pop	{r4, pc}
 1953              	.LVL166:
 1954              	.L152:
1455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 1955              		.loc 1 1455 0
 1956 0032 2368     		ldr	r3, [r4]
 1957 0034 9B68     		ldr	r3, [r3, #8]
 1958 0036 13F0800F 		tst	r3, #128
 1959 003a EDD0     		beq	.L149
1457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 1960              		.loc 1 1457 0
 1961 003c 2046     		mov	r0, r4
 1962              	.LVL167:
 1963 003e FFF7FEFF 		bl	UART_EndTxTransfer
 1964              	.LVL168:
 1965 0042 E9E7     		b	.L149
 1966              	.L153:
1462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 1967              		.loc 1 1462 0
 1968 0044 2368     		ldr	r3, [r4]
 1969 0046 9B68     		ldr	r3, [r3, #8]
 1970 0048 13F0400F 		tst	r3, #64
 1971 004c E9D0     		beq	.L150
1464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 1972              		.loc 1 1464 0
 1973 004e 2046     		mov	r0, r4
 1974 0050 FFF7FEFF 		bl	UART_EndRxTransfer
 1975              	.LVL169:
 1976 0054 E5E7     		b	.L150
 1977              		.cfi_endproc
 1978              	.LFE161:
 1980              		.section	.text.HAL_UART_IRQHandler,"ax",%progbits
 1981              		.align	1
 1982              		.global	HAL_UART_IRQHandler
 1983              		.syntax unified
 1984              		.thumb
 1985              		.thumb_func
 1986              		.fpu fpv5-d16
 1988              	HAL_UART_IRQHandler:
 1989              	.LFB155:
1193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t isrflags   = READ_REG(huart->Instance->ISR);
 1990              		.loc 1 1193 0
 1991              		.cfi_startproc
 1992              		@ args = 0, pretend = 0, frame = 0
 1993              		@ frame_needed = 0, uses_anonymous_args = 0
 1994              	.LVL170:
 1995 0000 38B5     		push	{r3, r4, r5, lr}
 1996              		.cfi_def_cfa_offset 16
 1997              		.cfi_offset 3, -16
 1998              		.cfi_offset 4, -12
 1999              		.cfi_offset 5, -8
 2000              		.cfi_offset 14, -4
 2001 0002 0446     		mov	r4, r0
1194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t cr1its     = READ_REG(huart->Instance->CR1);
 2002              		.loc 1 1194 0
 2003 0004 0268     		ldr	r2, [r0]
 2004 0006 D369     		ldr	r3, [r2, #28]
 2005              	.LVL171:
1195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t cr3its     = READ_REG(huart->Instance->CR3);
 2006              		.loc 1 1195 0
 2007 0008 1068     		ldr	r0, [r2]
 2008              	.LVL172:
1196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t errorflags;
 2009              		.loc 1 1196 0
 2010 000a 9168     		ldr	r1, [r2, #8]
 2011              	.LVL173:
1201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 2012              		.loc 1 1201 0
 2013 000c 13F00F05 		ands	r5, r3, #15
 2014              	.LVL174:
 2015 0010 05D1     		bne	.L155
1204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 2016              		.loc 1 1204 0
 2017 0012 13F0200F 		tst	r3, #32
 2018 0016 02D0     		beq	.L155
1204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 2019              		.loc 1 1204 0 is_stmt 0 discriminator 1
 2020 0018 10F0200F 		tst	r0, #32
 2021 001c 5FD1     		bne	.L171
 2022              	.L155:
1212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      && (   ((cr3its & USART_CR3_EIE) != RESET)
 2023              		.loc 1 1212 0 is_stmt 1
 2024 001e 002D     		cmp	r5, #0
 2025 0020 73D0     		beq	.L157
1213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****          || ((cr1its & (USART_CR1_RXNEIE | USART_CR1_PEIE)) != RESET)) )
 2026              		.loc 1 1213 0
 2027 0022 11F00101 		ands	r1, r1, #1
 2028              	.LVL175:
 2029 0026 02D1     		bne	.L158
1214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 2030              		.loc 1 1214 0
 2031 0028 10F4907F 		tst	r0, #288
 2032 002c 6DD0     		beq	.L157
 2033              	.L158:
1218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 2034              		.loc 1 1218 0
 2035 002e 13F0010F 		tst	r3, #1
 2036 0032 07D0     		beq	.L159
1218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 2037              		.loc 1 1218 0 is_stmt 0 discriminator 1
 2038 0034 10F4807F 		tst	r0, #256
 2039 0038 04D0     		beq	.L159
1220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2040              		.loc 1 1220 0 is_stmt 1
 2041 003a 0125     		movs	r5, #1
 2042              	.LVL176:
 2043 003c 1562     		str	r5, [r2, #32]
1222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 2044              		.loc 1 1222 0
 2045 003e E26E     		ldr	r2, [r4, #108]
 2046 0040 2A43     		orrs	r2, r2, r5
 2047 0042 E266     		str	r2, [r4, #108]
 2048              	.L159:
1226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 2049              		.loc 1 1226 0
 2050 0044 13F0020F 		tst	r3, #2
 2051 0048 07D0     		beq	.L160
1226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 2052              		.loc 1 1226 0 is_stmt 0 discriminator 1
 2053 004a 31B1     		cbz	r1, .L160
1228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2054              		.loc 1 1228 0 is_stmt 1
 2055 004c 2268     		ldr	r2, [r4]
 2056 004e 0225     		movs	r5, #2
 2057 0050 1562     		str	r5, [r2, #32]
1230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 2058              		.loc 1 1230 0
 2059 0052 E26E     		ldr	r2, [r4, #108]
 2060 0054 42F00402 		orr	r2, r2, #4
 2061 0058 E266     		str	r2, [r4, #108]
 2062              	.L160:
1234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 2063              		.loc 1 1234 0
 2064 005a 13F0040F 		tst	r3, #4
 2065 005e 07D0     		beq	.L161
1234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 2066              		.loc 1 1234 0 is_stmt 0 discriminator 1
 2067 0060 31B1     		cbz	r1, .L161
1236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2068              		.loc 1 1236 0 is_stmt 1
 2069 0062 2268     		ldr	r2, [r4]
 2070 0064 0425     		movs	r5, #4
 2071 0066 1562     		str	r5, [r2, #32]
1238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 2072              		.loc 1 1238 0
 2073 0068 E26E     		ldr	r2, [r4, #108]
 2074 006a 42F00202 		orr	r2, r2, #2
 2075 006e E266     		str	r2, [r4, #108]
 2076              	.L161:
1242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (((cr1its & USART_CR1_RXNEIE) != RESET) || ((cr3its & USART_CR3_EIE) != RESET)))
 2077              		.loc 1 1242 0
 2078 0070 13F0080F 		tst	r3, #8
 2079 0074 09D0     		beq	.L162
1242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****        (((cr1its & USART_CR1_RXNEIE) != RESET) || ((cr3its & USART_CR3_EIE) != RESET)))
 2080              		.loc 1 1242 0 is_stmt 0 discriminator 1
 2081 0076 10F0200F 		tst	r0, #32
 2082 007a 00D1     		bne	.L163
1243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 2083              		.loc 1 1243 0 is_stmt 1
 2084 007c 29B1     		cbz	r1, .L162
 2085              	.L163:
1245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2086              		.loc 1 1245 0
 2087 007e 2268     		ldr	r2, [r4]
 2088 0080 0821     		movs	r1, #8
 2089 0082 1162     		str	r1, [r2, #32]
1247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 2090              		.loc 1 1247 0
 2091 0084 E26E     		ldr	r2, [r4, #108]
 2092 0086 0A43     		orrs	r2, r2, r1
 2093 0088 E266     		str	r2, [r4, #108]
 2094              	.L162:
1251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 2095              		.loc 1 1251 0
 2096 008a E26E     		ldr	r2, [r4, #108]
 2097 008c 002A     		cmp	r2, #0
 2098 008e 48D0     		beq	.L154
1254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
 2099              		.loc 1 1254 0
 2100 0090 13F0200F 		tst	r3, #32
 2101 0094 02D0     		beq	.L164
1254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
 2102              		.loc 1 1254 0 is_stmt 0 discriminator 1
 2103 0096 10F0200F 		tst	r0, #32
 2104 009a 24D1     		bne	.L172
 2105              	.LVL177:
 2106              	.L164:
1261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****           (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR)))
 2107              		.loc 1 1261 0 is_stmt 1
 2108 009c E36E     		ldr	r3, [r4, #108]
 2109 009e 13F0080F 		tst	r3, #8
 2110 00a2 04D1     		bne	.L165
1262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       {
 2111              		.loc 1 1262 0 discriminator 1
 2112 00a4 2368     		ldr	r3, [r4]
 2113 00a6 9B68     		ldr	r3, [r3, #8]
1261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****           (HAL_IS_BIT_SET(huart->Instance->CR3, USART_CR3_DMAR)))
 2114              		.loc 1 1261 0 discriminator 1
 2115 00a8 13F0400F 		tst	r3, #64
 2116 00ac 27D0     		beq	.L166
 2117              	.L165:
1267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2118              		.loc 1 1267 0
 2119 00ae 2046     		mov	r0, r4
 2120 00b0 FFF7FEFF 		bl	UART_EndRxTransfer
 2121              	.LVL178:
1270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         {
 2122              		.loc 1 1270 0
 2123 00b4 2368     		ldr	r3, [r4]
 2124 00b6 9A68     		ldr	r2, [r3, #8]
 2125 00b8 12F0400F 		tst	r2, #64
 2126 00bc 1BD0     		beq	.L167
1272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2127              		.loc 1 1272 0
 2128 00be 9A68     		ldr	r2, [r3, #8]
 2129 00c0 22F04002 		bic	r2, r2, #64
 2130 00c4 9A60     		str	r2, [r3, #8]
1275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****           {
 2131              		.loc 1 1275 0
 2132 00c6 636E     		ldr	r3, [r4, #100]
 2133 00c8 8BB1     		cbz	r3, .L168
1279:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2134              		.loc 1 1279 0
 2135 00ca 1A4A     		ldr	r2, .L175
 2136 00cc 1A65     		str	r2, [r3, #80]
1282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             {
 2137              		.loc 1 1282 0
 2138 00ce 606E     		ldr	r0, [r4, #100]
 2139 00d0 FFF7FEFF 		bl	HAL_DMA_Abort_IT
 2140              	.LVL179:
 2141 00d4 28B3     		cbz	r0, .L154
1285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****             }
 2142              		.loc 1 1285 0
 2143 00d6 606E     		ldr	r0, [r4, #100]
 2144 00d8 036D     		ldr	r3, [r0, #80]
 2145 00da 9847     		blx	r3
 2146              	.LVL180:
 2147 00dc 21E0     		b	.L154
 2148              	.LVL181:
 2149              	.L171:
1206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       return;
 2150              		.loc 1 1206 0
 2151 00de 2046     		mov	r0, r4
 2152              	.LVL182:
 2153 00e0 FFF7FEFF 		bl	UART_Receive_IT
 2154              	.LVL183:
1207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 2155              		.loc 1 1207 0
 2156 00e4 1DE0     		b	.L154
 2157              	.LVL184:
 2158              	.L172:
1256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
 2159              		.loc 1 1256 0
 2160 00e6 2046     		mov	r0, r4
 2161              	.LVL185:
 2162 00e8 FFF7FEFF 		bl	UART_Receive_IT
 2163              	.LVL186:
 2164 00ec D6E7     		b	.L164
 2165              	.L168:
1291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****           }
 2166              		.loc 1 1291 0
 2167 00ee 2046     		mov	r0, r4
 2168 00f0 FFF7FEFF 		bl	HAL_UART_ErrorCallback
 2169              	.LVL187:
 2170 00f4 15E0     		b	.L154
 2171              	.L167:
1297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         }
 2172              		.loc 1 1297 0
 2173 00f6 2046     		mov	r0, r4
 2174 00f8 FFF7FEFF 		bl	HAL_UART_ErrorCallback
 2175              	.LVL188:
 2176 00fc 11E0     		b	.L154
 2177              	.L166:
1304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         huart->ErrorCode = HAL_UART_ERROR_NONE;
 2178              		.loc 1 1304 0
 2179 00fe 2046     		mov	r0, r4
 2180 0100 FFF7FEFF 		bl	HAL_UART_ErrorCallback
 2181              	.LVL189:
1305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       }
 2182              		.loc 1 1305 0
 2183 0104 0023     		movs	r3, #0
 2184 0106 E366     		str	r3, [r4, #108]
 2185 0108 0BE0     		b	.L154
 2186              	.LVL190:
 2187              	.L157:
1313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 2188              		.loc 1 1313 0
 2189 010a 13F0800F 		tst	r3, #128
 2190 010e 02D0     		beq	.L169
1313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 2191              		.loc 1 1313 0 is_stmt 0 discriminator 1
 2192 0110 10F0800F 		tst	r0, #128
 2193 0114 06D1     		bne	.L173
 2194              	.L169:
1320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 2195              		.loc 1 1320 0 is_stmt 1
 2196 0116 13F0400F 		tst	r3, #64
 2197 011a 02D0     		beq	.L154
1320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 2198              		.loc 1 1320 0 is_stmt 0 discriminator 1
 2199 011c 10F0400F 		tst	r0, #64
 2200 0120 04D1     		bne	.L174
 2201              	.LVL191:
 2202              	.L154:
1326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2203              		.loc 1 1326 0 is_stmt 1
 2204 0122 38BD     		pop	{r3, r4, r5, pc}
 2205              	.LVL192:
 2206              	.L173:
1315:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return;
 2207              		.loc 1 1315 0
 2208 0124 2046     		mov	r0, r4
 2209              	.LVL193:
 2210 0126 FFF7FEFF 		bl	UART_Transmit_IT
 2211              	.LVL194:
1316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 2212              		.loc 1 1316 0
 2213 012a FAE7     		b	.L154
 2214              	.LVL195:
 2215              	.L174:
1322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return;
 2216              		.loc 1 1322 0
 2217 012c 2046     		mov	r0, r4
 2218              	.LVL196:
 2219 012e FFF7FEFF 		bl	UART_EndTransmit_IT
 2220              	.LVL197:
1323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 2221              		.loc 1 1323 0
 2222 0132 F6E7     		b	.L154
 2223              	.L176:
 2224              		.align	2
 2225              	.L175:
 2226 0134 00000000 		.word	UART_DMAAbortOnError
 2227              		.cfi_endproc
 2228              	.LFE155:
 2230              		.section	.text.UART_DMAAbortOnError,"ax",%progbits
 2231              		.align	1
 2232              		.syntax unified
 2233              		.thumb
 2234              		.thumb_func
 2235              		.fpu fpv5-d16
 2237              	UART_DMAAbortOnError:
 2238              	.LFB162:
1477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UART_HandleTypeDef* huart = (UART_HandleTypeDef*)(hdma->Parent);
 2239              		.loc 1 1477 0
 2240              		.cfi_startproc
 2241              		@ args = 0, pretend = 0, frame = 0
 2242              		@ frame_needed = 0, uses_anonymous_args = 0
 2243              	.LVL198:
 2244 0000 08B5     		push	{r3, lr}
 2245              		.cfi_def_cfa_offset 8
 2246              		.cfi_offset 3, -8
 2247              		.cfi_offset 14, -4
1478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->RxXferCount = 0U;
 2248              		.loc 1 1478 0
 2249 0002 806B     		ldr	r0, [r0, #56]
 2250              	.LVL199:
1479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->TxXferCount = 0U;
 2251              		.loc 1 1479 0
 2252 0004 0023     		movs	r3, #0
 2253 0006 A0F85A30 		strh	r3, [r0, #90]	@ movhi
1480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2254              		.loc 1 1480 0
 2255 000a A0F85230 		strh	r3, [r0, #82]	@ movhi
1482:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 2256              		.loc 1 1482 0
 2257 000e FFF7FEFF 		bl	HAL_UART_ErrorCallback
 2258              	.LVL200:
1483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2259              		.loc 1 1483 0
 2260 0012 08BD     		pop	{r3, pc}
 2261              		.cfi_endproc
 2262              	.LFE162:
 2264              		.section	.text.HAL_MultiProcessor_EnterMuteMode,"ax",%progbits
 2265              		.align	1
 2266              		.global	HAL_MultiProcessor_EnterMuteMode
 2267              		.syntax unified
 2268              		.thumb
 2269              		.thumb_func
 2270              		.fpu fpv5-d16
 2272              	HAL_MultiProcessor_EnterMuteMode:
 2273              	.LFB175:
1711:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1712:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1713:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @}
1714:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1715:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1716:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /** @defgroup UART_Exported_Functions_Group3 Peripheral Control functions
1717:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *  @brief   UART control functions
1718:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *
1719:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** @verbatim
1720:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****  ===============================================================================
1721:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****                       ##### Peripheral Control functions #####
1722:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****  ===============================================================================
1723:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     [..]
1724:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     This subsection provides a set of functions allowing to control the UART.
1725:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      (+) HAL_UART_GetState() API is helpful to check in run-time the state of the UART peripheral.
1726:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      (+) HAL_MultiProcessor_EnableMuteMode() API enables mute mode
1727:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      (+) HAL_MultiProcessor_DisableMuteMode() API disables mute mode
1728:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      (+) HAL_MultiProcessor_EnterMuteMode() API enters mute mode
1729:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      (+) HAL_MultiProcessor_EnableMuteMode() API enables mute mode
1730:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      (+) UART_SetConfig() API configures the UART peripheral
1731:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      (+) UART_AdvFeatureConfig() API optionally configures the UART advanced features
1732:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      (+) UART_CheckIdleState() API ensures that TEACK and/or REACK are set after initialization
1733:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      (+) HAL_HalfDuplex_EnableTransmitter() API disables receiver and enables transmitter
1734:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      (+) HAL_HalfDuplex_EnableReceiver() API disables transmitter and enables receiver
1735:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****      (+) HAL_LIN_SendBreak() API transmits the break characters
1736:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 	 (+) HAL_MultiProcessorEx_AddressLength_Set() API optionally sets the UART node address
1737:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****          detection length to more than 4 bits for multiprocessor address mark wake up.
1738:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** @endverbatim
1739:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @{
1740:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1741:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1742:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1743:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Enable UART in mute mode (doesn't mean UART enters mute mode;
1744:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * to enter mute mode, HAL_MultiProcessor_EnterMuteMode() API must be called)
1745:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: UART handle
1746:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
1747:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1748:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_MultiProcessor_EnableMuteMode(UART_HandleTypeDef *huart)
1749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1750:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Process Locked */
1751:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_LOCK(huart);
1752:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1753:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
1754:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1755:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Enable USART mute mode by setting the MME bit in the CR1 register */
1756:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   SET_BIT(huart->Instance->CR1, USART_CR1_MME);
1757:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1758:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_READY;
1759:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1760:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return (UART_CheckIdleState(huart));
1761:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1762:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1763:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1764:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Disable UART mute mode (doesn't mean it actually wakes up the software,
1765:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * as it may not have been in mute mode at this very moment).
1766:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: uart handle
1767:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
1768:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1769:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_MultiProcessor_DisableMuteMode(UART_HandleTypeDef *huart)
1770:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
1771:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Process Locked */
1772:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_LOCK(huart);
1773:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1774:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
1775:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1776:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****    /* Disable USART mute mode by clearing the MME bit in the CR1 register */
1777:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR1, USART_CR1_MME);
1778:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1779:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_READY;
1780:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1781:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return (UART_CheckIdleState(huart));
1782:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
1783:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1784:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1785:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Enter UART mute mode (means UART actually enters mute mode).
1786:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * To exit from mute mode, HAL_MultiProcessor_DisableMuteMode() API must be called.
1787:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: uart handle
1788:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
1789:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1790:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** void HAL_MultiProcessor_EnterMuteMode(UART_HandleTypeDef *huart)
1791:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 2274              		.loc 1 1791 0
 2275              		.cfi_startproc
 2276              		@ args = 0, pretend = 0, frame = 0
 2277              		@ frame_needed = 0, uses_anonymous_args = 0
 2278              		@ link register save eliminated.
 2279              	.LVL201:
1792:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UART_SEND_REQ(huart, UART_MUTE_MODE_REQUEST);
 2280              		.loc 1 1792 0
 2281 0000 0268     		ldr	r2, [r0]
 2282 0002 9369     		ldr	r3, [r2, #24]
 2283 0004 43F00403 		orr	r3, r3, #4
 2284 0008 9361     		str	r3, [r2, #24]
1793:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 2285              		.loc 1 1793 0
 2286 000a 7047     		bx	lr
 2287              		.cfi_endproc
 2288              	.LFE175:
 2290              		.section	.text.HAL_UART_GetState,"ax",%progbits
 2291              		.align	1
 2292              		.global	HAL_UART_GetState
 2293              		.syntax unified
 2294              		.thumb
 2295              		.thumb_func
 2296              		.fpu fpv5-d16
 2298              	HAL_UART_GetState:
 2299              	.LFB176:
1794:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1795:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1796:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1797:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1798:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief return the UART state
1799:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: uart handle
1800:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL state
1801:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1802:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_UART_StateTypeDef HAL_UART_GetState(UART_HandleTypeDef *huart)
1803:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 2300              		.loc 1 1803 0
 2301              		.cfi_startproc
 2302              		@ args = 0, pretend = 0, frame = 0
 2303              		@ frame_needed = 0, uses_anonymous_args = 0
 2304              		@ link register save eliminated.
 2305              	.LVL202:
1804:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t temp1= 0x00U, temp2 = 0x00U;
1805:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   temp1 = huart->gState;
 2306              		.loc 1 1805 0
 2307 0000 90F86930 		ldrb	r3, [r0, #105]	@ zero_extendqisi2
 2308              	.LVL203:
1806:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   temp2 = huart->RxState;
 2309              		.loc 1 1806 0
 2310 0004 90F86A00 		ldrb	r0, [r0, #106]	@ zero_extendqisi2
 2311              	.LVL204:
1807:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1808:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return (HAL_UART_StateTypeDef)(temp1 | temp2);
1809:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 2312              		.loc 1 1809 0
 2313 0008 1843     		orrs	r0, r0, r3
 2314              	.LVL205:
 2315 000a 7047     		bx	lr
 2316              		.cfi_endproc
 2317              	.LFE176:
 2319              		.section	.text.HAL_UART_GetError,"ax",%progbits
 2320              		.align	1
 2321              		.global	HAL_UART_GetError
 2322              		.syntax unified
 2323              		.thumb
 2324              		.thumb_func
 2325              		.fpu fpv5-d16
 2327              	HAL_UART_GetError:
 2328              	.LFB177:
1810:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1811:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1812:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** * @brief  Return the UART error code
1813:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** * @param  huart : pointer to a UART_HandleTypeDef structure that contains
1814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *              the configuration information for the specified UART.
1815:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** * @retval UART Error Code
1816:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** */
1817:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** uint32_t HAL_UART_GetError(UART_HandleTypeDef *huart)
1818:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 2329              		.loc 1 1818 0
 2330              		.cfi_startproc
 2331              		@ args = 0, pretend = 0, frame = 0
 2332              		@ frame_needed = 0, uses_anonymous_args = 0
 2333              		@ link register save eliminated.
 2334              	.LVL206:
1819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return huart->ErrorCode;
 2335              		.loc 1 1819 0
 2336 0000 C06E     		ldr	r0, [r0, #108]
 2337              	.LVL207:
1820:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 2338              		.loc 1 1820 0
 2339 0002 7047     		bx	lr
 2340              		.cfi_endproc
 2341              	.LFE177:
 2343              		.section	.text.UART_SetConfig,"ax",%progbits
 2344              		.align	1
 2345              		.global	UART_SetConfig
 2346              		.syntax unified
 2347              		.thumb
 2348              		.thumb_func
 2349              		.fpu fpv5-d16
 2351              	UART_SetConfig:
 2352              	.LFB178:
1821:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1822:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1823:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Configure the UART peripheral
1824:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: uart handle
1825:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval None
1826:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1827:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef UART_SetConfig(UART_HandleTypeDef *huart)
1828:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 2353              		.loc 1 1828 0
 2354              		.cfi_startproc
 2355              		@ args = 0, pretend = 0, frame = 0
 2356              		@ frame_needed = 0, uses_anonymous_args = 0
 2357              	.LVL208:
 2358 0000 10B5     		push	{r4, lr}
 2359              		.cfi_def_cfa_offset 8
 2360              		.cfi_offset 4, -8
 2361              		.cfi_offset 14, -4
 2362 0002 0446     		mov	r4, r0
 2363              	.LVL209:
1829:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t tmpreg                     = 0x00000000U;
1830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UART_ClockSourceTypeDef clocksource = UART_CLOCKSOURCE_UNDEFINED;
1831:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t brrtemp                    = 0x0000U;
1832:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t usartdiv                   = 0x0000U;
1833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   HAL_StatusTypeDef ret               = HAL_OK;
1834:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1835:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the parameters */
1836:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   assert_param(IS_UART_BAUDRATE(huart->Init.BaudRate));
1837:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   assert_param(IS_UART_WORD_LENGTH(huart->Init.WordLength));
1838:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   assert_param(IS_UART_STOPBITS(huart->Init.StopBits));
1839:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   assert_param(IS_UART_PARITY(huart->Init.Parity));
1840:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   assert_param(IS_UART_MODE(huart->Init.Mode));
1841:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   assert_param(IS_UART_HARDWARE_FLOW_CONTROL(huart->Init.HwFlowCtl));
1842:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   assert_param(IS_UART_ONE_BIT_SAMPLE(huart->Init.OneBitSampling));
1843:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1844:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1845:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /*-------------------------- USART CR1 Configuration -----------------------*/
1846:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Clear M, PCE, PS, TE, RE and OVER8 bits and configure
1847:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****    *  the UART Word Length, Parity, Mode and oversampling:
1848:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****    *  set the M bits according to huart->Init.WordLength value
1849:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****    *  set PCE and PS bits according to huart->Init.Parity value
1850:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****    *  set TE and RE bits according to huart->Init.Mode value
1851:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****    *  set OVER8 bit according to huart->Init.OverSampling value */
1852:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   tmpreg = (uint32_t)huart->Init.WordLength | huart->Init.Parity | huart->Init.Mode | huart->Init.O
 2364              		.loc 1 1852 0
 2365 0004 8368     		ldr	r3, [r0, #8]
 2366 0006 0269     		ldr	r2, [r0, #16]
 2367 0008 1343     		orrs	r3, r3, r2
 2368 000a 4269     		ldr	r2, [r0, #20]
 2369 000c 1343     		orrs	r3, r3, r2
 2370 000e C269     		ldr	r2, [r0, #28]
 2371 0010 1343     		orrs	r3, r3, r2
 2372              	.LVL210:
1853:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   MODIFY_REG(huart->Instance->CR1, UART_CR1_FIELDS, tmpreg);
 2373              		.loc 1 1853 0
 2374 0012 0168     		ldr	r1, [r0]
 2375 0014 0868     		ldr	r0, [r1]
 2376              	.LVL211:
 2377 0016 9D4A     		ldr	r2, .L273
 2378 0018 0240     		ands	r2, r2, r0
 2379 001a 1343     		orrs	r3, r3, r2
 2380              	.LVL212:
 2381 001c 0B60     		str	r3, [r1]
 2382              	.LVL213:
1854:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1855:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /*-------------------------- USART CR2 Configuration -----------------------*/
1856:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Configure the UART Stop Bits: Set STOP[13:12] bits according
1857:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****    * to huart->Init.StopBits value */
1858:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   MODIFY_REG(huart->Instance->CR2, USART_CR2_STOP, huart->Init.StopBits);
 2383              		.loc 1 1858 0
 2384 001e 2268     		ldr	r2, [r4]
 2385 0020 5368     		ldr	r3, [r2, #4]
 2386 0022 23F44053 		bic	r3, r3, #12288
 2387 0026 E168     		ldr	r1, [r4, #12]
 2388 0028 0B43     		orrs	r3, r3, r1
 2389 002a 5360     		str	r3, [r2, #4]
1859:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1860:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /*-------------------------- USART CR3 Configuration -----------------------*/
1861:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Configure
1862:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****    * - UART HardWare Flow Control: set CTSE and RTSE bits according
1863:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****    *   to huart->Init.HwFlowCtl value
1864:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****    * - one-bit sampling method versus three samples' majority rule according
1865:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****    *   to huart->Init.OneBitSampling */
1866:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   tmpreg = (uint32_t)huart->Init.HwFlowCtl | huart->Init.OneBitSampling ;
 2390              		.loc 1 1866 0
 2391 002c A369     		ldr	r3, [r4, #24]
 2392 002e 226A     		ldr	r2, [r4, #32]
 2393 0030 1A43     		orrs	r2, r2, r3
 2394              	.LVL214:
1867:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   MODIFY_REG(huart->Instance->CR3, (USART_CR3_RTSE | USART_CR3_CTSE | USART_CR3_ONEBIT), tmpreg);
 2395              		.loc 1 1867 0
 2396 0032 2168     		ldr	r1, [r4]
 2397 0034 8B68     		ldr	r3, [r1, #8]
 2398 0036 23F43063 		bic	r3, r3, #2816
 2399 003a 1343     		orrs	r3, r3, r2
 2400 003c 8B60     		str	r3, [r1, #8]
1868:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1869:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /*-------------------------- USART BRR Configuration -----------------------*/
1870:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   UART_GETCLOCKSOURCE(huart, clocksource);
 2401              		.loc 1 1870 0
 2402 003e 2368     		ldr	r3, [r4]
 2403 0040 934A     		ldr	r2, .L273+4
 2404              	.LVL215:
 2405 0042 9342     		cmp	r3, r2
 2406 0044 19D0     		beq	.L258
 2407              		.loc 1 1870 0 is_stmt 0 discriminator 2
 2408 0046 934A     		ldr	r2, .L273+8
 2409 0048 9342     		cmp	r3, r2
 2410 004a 2AD0     		beq	.L259
 2411              		.loc 1 1870 0 discriminator 14
 2412 004c 924A     		ldr	r2, .L273+12
 2413 004e 9342     		cmp	r3, r2
 2414 0050 40D0     		beq	.L260
 2415              		.loc 1 1870 0 discriminator 26
 2416 0052 924A     		ldr	r2, .L273+16
 2417 0054 9342     		cmp	r3, r2
 2418 0056 55D0     		beq	.L261
 2419              		.loc 1 1870 0 discriminator 38
 2420 0058 914A     		ldr	r2, .L273+20
 2421 005a 9342     		cmp	r3, r2
 2422 005c 6AD0     		beq	.L262
 2423              		.loc 1 1870 0 discriminator 50
 2424 005e 914A     		ldr	r2, .L273+24
 2425 0060 9342     		cmp	r3, r2
 2426 0062 00F08280 		beq	.L263
 2427              		.loc 1 1870 0 discriminator 62
 2428 0066 904A     		ldr	r2, .L273+28
 2429 0068 9342     		cmp	r3, r2
 2430 006a 00F09980 		beq	.L264
 2431              		.loc 1 1870 0 discriminator 74
 2432 006e 8F4A     		ldr	r2, .L273+32
 2433 0070 9342     		cmp	r3, r2
 2434 0072 00F0B080 		beq	.L265
1830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t brrtemp                    = 0x0000U;
 2435              		.loc 1 1830 0 is_stmt 1
 2436 0076 1022     		movs	r2, #16
 2437 0078 C9E0     		b	.L185
 2438              	.L258:
 2439              		.loc 1 1870 0 discriminator 1
 2440 007a 02F59432 		add	r2, r2, #75776
 2441 007e D2F89020 		ldr	r2, [r2, #144]
 2442 0082 02F00302 		and	r2, r2, #3
 2443 0086 032A     		cmp	r2, #3
 2444 0088 03D8     		bhi	.L184
 2445 008a DFE802F0 		tbb	[pc, r2]
 2446              	.L186:
 2447 008e BF       		.byte	(.L246-.L186)/2
 2448 008f 06       		.byte	(.L187-.L186)/2
 2449 0090 04       		.byte	(.L188-.L186)/2
 2450 0091 08       		.byte	(.L189-.L186)/2
 2451              		.p2align 1
 2452              	.L184:
1830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t brrtemp                    = 0x0000U;
 2453              		.loc 1 1830 0
 2454 0092 1022     		movs	r2, #16
 2455 0094 BBE0     		b	.L185
 2456              	.L188:
 2457              	.LVL216:
 2458              		.loc 1 1870 0 discriminator 6
 2459 0096 0222     		movs	r2, #2
 2460 0098 B9E0     		b	.L185
 2461              	.LVL217:
 2462              	.L187:
 2463              		.loc 1 1870 0 is_stmt 0 discriminator 5
 2464 009a 0422     		movs	r2, #4
 2465 009c B7E0     		b	.L185
 2466              	.LVL218:
 2467              	.L189:
 2468              		.loc 1 1870 0 discriminator 7
 2469 009e 0822     		movs	r2, #8
 2470 00a0 B5E0     		b	.L185
 2471              	.LVL219:
 2472              	.L259:
 2473              		.loc 1 1870 0 discriminator 13
 2474 00a2 02F5FA32 		add	r2, r2, #128000
 2475 00a6 D2F89020 		ldr	r2, [r2, #144]
 2476 00aa 02F00C02 		and	r2, r2, #12
 2477 00ae 0C2A     		cmp	r2, #12
 2478 00b0 08D8     		bhi	.L191
 2479 00b2 DFE802F0 		tbb	[pc, r2]
 2480              	.L192:
 2481 00b6 BA       		.byte	(.L247-.L192)/2
 2482 00b7 07       		.byte	(.L191-.L192)/2
 2483 00b8 07       		.byte	(.L191-.L192)/2
 2484 00b9 07       		.byte	(.L191-.L192)/2
 2485 00ba 0B       		.byte	(.L193-.L192)/2
 2486 00bb 07       		.byte	(.L191-.L192)/2
 2487 00bc 07       		.byte	(.L191-.L192)/2
 2488 00bd 07       		.byte	(.L191-.L192)/2
 2489 00be 09       		.byte	(.L194-.L192)/2
 2490 00bf 07       		.byte	(.L191-.L192)/2
 2491 00c0 07       		.byte	(.L191-.L192)/2
 2492 00c1 07       		.byte	(.L191-.L192)/2
 2493 00c2 0D       		.byte	(.L195-.L192)/2
 2494 00c3 00       		.p2align 1
 2495              	.L191:
1830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t brrtemp                    = 0x0000U;
 2496              		.loc 1 1830 0 is_stmt 1
 2497 00c4 1022     		movs	r2, #16
 2498 00c6 A2E0     		b	.L185
 2499              	.L194:
 2500              	.LVL220:
 2501              		.loc 1 1870 0 discriminator 18
 2502 00c8 0222     		movs	r2, #2
 2503 00ca A0E0     		b	.L185
 2504              	.LVL221:
 2505              	.L193:
 2506              		.loc 1 1870 0 is_stmt 0 discriminator 17
 2507 00cc 0422     		movs	r2, #4
 2508 00ce 9EE0     		b	.L185
 2509              	.LVL222:
 2510              	.L195:
 2511              		.loc 1 1870 0 discriminator 19
 2512 00d0 0822     		movs	r2, #8
 2513 00d2 9CE0     		b	.L185
 2514              	.LVL223:
 2515              	.L260:
 2516              		.loc 1 1870 0 discriminator 25
 2517 00d4 02F5F832 		add	r2, r2, #126976
 2518 00d8 D2F89020 		ldr	r2, [r2, #144]
 2519 00dc 02F03002 		and	r2, r2, #48
 2520 00e0 102A     		cmp	r2, #16
 2521 00e2 0DD0     		beq	.L198
 2522 00e4 05D9     		bls	.L266
 2523 00e6 202A     		cmp	r2, #32
 2524 00e8 08D0     		beq	.L200
 2525 00ea 302A     		cmp	r2, #48
 2526 00ec 04D1     		bne	.L197
 2527              	.LVL224:
 2528              		.loc 1 1870 0 discriminator 31
 2529 00ee 0822     		movs	r2, #8
 2530 00f0 8DE0     		b	.L185
 2531              	.LVL225:
 2532              	.L266:
 2533              		.loc 1 1870 0 discriminator 25
 2534 00f2 0AB9     		cbnz	r2, .L197
 2535              		.loc 1 1870 0
 2536 00f4 0022     		movs	r2, #0
 2537 00f6 8AE0     		b	.L185
 2538              	.L197:
1830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t brrtemp                    = 0x0000U;
 2539              		.loc 1 1830 0 is_stmt 1
 2540 00f8 1022     		movs	r2, #16
 2541 00fa 88E0     		b	.L185
 2542              	.L200:
 2543              	.LVL226:
 2544              		.loc 1 1870 0 discriminator 30
 2545 00fc 0222     		movs	r2, #2
 2546 00fe 86E0     		b	.L185
 2547              	.LVL227:
 2548              	.L198:
 2549              		.loc 1 1870 0 is_stmt 0 discriminator 29
 2550 0100 0422     		movs	r2, #4
 2551 0102 84E0     		b	.L185
 2552              	.LVL228:
 2553              	.L261:
 2554              		.loc 1 1870 0 discriminator 37
 2555 0104 02F5F632 		add	r2, r2, #125952
 2556 0108 D2F89020 		ldr	r2, [r2, #144]
 2557 010c 02F0C002 		and	r2, r2, #192
 2558 0110 402A     		cmp	r2, #64
 2559 0112 0DD0     		beq	.L204
 2560 0114 05D9     		bls	.L267
 2561 0116 802A     		cmp	r2, #128
 2562 0118 08D0     		beq	.L206
 2563 011a C02A     		cmp	r2, #192
 2564 011c 04D1     		bne	.L203
 2565              	.LVL229:
 2566              		.loc 1 1870 0 discriminator 43
 2567 011e 0822     		movs	r2, #8
 2568 0120 75E0     		b	.L185
 2569              	.LVL230:
 2570              	.L267:
 2571              		.loc 1 1870 0 discriminator 37
 2572 0122 0AB9     		cbnz	r2, .L203
 2573              		.loc 1 1870 0
 2574 0124 0022     		movs	r2, #0
 2575 0126 72E0     		b	.L185
 2576              	.L203:
1830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t brrtemp                    = 0x0000U;
 2577              		.loc 1 1830 0 is_stmt 1
 2578 0128 1022     		movs	r2, #16
 2579 012a 70E0     		b	.L185
 2580              	.L206:
 2581              	.LVL231:
 2582              		.loc 1 1870 0 discriminator 42
 2583 012c 0222     		movs	r2, #2
 2584 012e 6EE0     		b	.L185
 2585              	.LVL232:
 2586              	.L204:
 2587              		.loc 1 1870 0 is_stmt 0 discriminator 41
 2588 0130 0422     		movs	r2, #4
 2589 0132 6CE0     		b	.L185
 2590              	.LVL233:
 2591              	.L262:
 2592              		.loc 1 1870 0 discriminator 49
 2593 0134 02F5F432 		add	r2, r2, #124928
 2594 0138 D2F89020 		ldr	r2, [r2, #144]
 2595 013c 02F44072 		and	r2, r2, #768
 2596 0140 B2F5807F 		cmp	r2, #256
 2597 0144 0FD0     		beq	.L210
 2598 0146 07D9     		bls	.L268
 2599 0148 B2F5007F 		cmp	r2, #512
 2600 014c 09D0     		beq	.L212
 2601 014e B2F5407F 		cmp	r2, #768
 2602 0152 04D1     		bne	.L209
 2603              	.LVL234:
 2604              		.loc 1 1870 0 discriminator 55
 2605 0154 0822     		movs	r2, #8
 2606 0156 5AE0     		b	.L185
 2607              	.LVL235:
 2608              	.L268:
 2609              		.loc 1 1870 0 discriminator 49
 2610 0158 0AB9     		cbnz	r2, .L209
 2611              		.loc 1 1870 0
 2612 015a 0022     		movs	r2, #0
 2613 015c 57E0     		b	.L185
 2614              	.L209:
1830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t brrtemp                    = 0x0000U;
 2615              		.loc 1 1830 0 is_stmt 1
 2616 015e 1022     		movs	r2, #16
 2617 0160 55E0     		b	.L185
 2618              	.L212:
 2619              	.LVL236:
 2620              		.loc 1 1870 0 discriminator 54
 2621 0162 0222     		movs	r2, #2
 2622 0164 53E0     		b	.L185
 2623              	.LVL237:
 2624              	.L210:
 2625              		.loc 1 1870 0 is_stmt 0 discriminator 53
 2626 0166 0422     		movs	r2, #4
 2627 0168 51E0     		b	.L185
 2628              	.LVL238:
 2629              	.L263:
 2630              		.loc 1 1870 0 discriminator 61
 2631 016a 02F59232 		add	r2, r2, #74752
 2632 016e D2F89020 		ldr	r2, [r2, #144]
 2633 0172 02F44062 		and	r2, r2, #3072
 2634 0176 B2F5806F 		cmp	r2, #1024
 2635 017a 0FD0     		beq	.L216
 2636 017c 07D9     		bls	.L269
 2637 017e B2F5006F 		cmp	r2, #2048
 2638 0182 09D0     		beq	.L218
 2639 0184 B2F5406F 		cmp	r2, #3072
 2640 0188 04D1     		bne	.L215
 2641              	.LVL239:
 2642              		.loc 1 1870 0 discriminator 67
 2643 018a 0822     		movs	r2, #8
 2644 018c 3FE0     		b	.L185
 2645              	.LVL240:
 2646              	.L269:
 2647              		.loc 1 1870 0 discriminator 61
 2648 018e 0AB9     		cbnz	r2, .L215
 2649              		.loc 1 1870 0
 2650 0190 0122     		movs	r2, #1
 2651 0192 3CE0     		b	.L185
 2652              	.L215:
1830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t brrtemp                    = 0x0000U;
 2653              		.loc 1 1830 0 is_stmt 1
 2654 0194 1022     		movs	r2, #16
 2655 0196 3AE0     		b	.L185
 2656              	.L218:
 2657              	.LVL241:
 2658              		.loc 1 1870 0 discriminator 66
 2659 0198 0222     		movs	r2, #2
 2660 019a 38E0     		b	.L185
 2661              	.LVL242:
 2662              	.L216:
 2663              		.loc 1 1870 0 is_stmt 0 discriminator 65
 2664 019c 0422     		movs	r2, #4
 2665 019e 36E0     		b	.L185
 2666              	.LVL243:
 2667              	.L264:
 2668              		.loc 1 1870 0 discriminator 73
 2669 01a0 02F5E032 		add	r2, r2, #114688
 2670 01a4 D2F89020 		ldr	r2, [r2, #144]
 2671 01a8 02F44052 		and	r2, r2, #12288
 2672 01ac B2F5805F 		cmp	r2, #4096
 2673 01b0 0FD0     		beq	.L222
 2674 01b2 07D9     		bls	.L270
 2675 01b4 B2F5005F 		cmp	r2, #8192
 2676 01b8 09D0     		beq	.L224
 2677 01ba B2F5405F 		cmp	r2, #12288
 2678 01be 04D1     		bne	.L221
 2679              	.LVL244:
 2680              		.loc 1 1870 0 discriminator 79
 2681 01c0 0822     		movs	r2, #8
 2682 01c2 24E0     		b	.L185
 2683              	.LVL245:
 2684              	.L270:
 2685              		.loc 1 1870 0 discriminator 73
 2686 01c4 0AB9     		cbnz	r2, .L221
 2687              		.loc 1 1870 0
 2688 01c6 0022     		movs	r2, #0
 2689 01c8 21E0     		b	.L185
 2690              	.L221:
1830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t brrtemp                    = 0x0000U;
 2691              		.loc 1 1830 0 is_stmt 1
 2692 01ca 1022     		movs	r2, #16
 2693 01cc 1FE0     		b	.L185
 2694              	.L224:
 2695              	.LVL246:
 2696              		.loc 1 1870 0 discriminator 78
 2697 01ce 0222     		movs	r2, #2
 2698 01d0 1DE0     		b	.L185
 2699              	.LVL247:
 2700              	.L222:
 2701              		.loc 1 1870 0 is_stmt 0 discriminator 77
 2702 01d2 0422     		movs	r2, #4
 2703 01d4 1BE0     		b	.L185
 2704              	.LVL248:
 2705              	.L265:
 2706              		.loc 1 1870 0 discriminator 85
 2707 01d6 02F5DE32 		add	r2, r2, #113664
 2708 01da D2F89020 		ldr	r2, [r2, #144]
 2709 01de 02F44042 		and	r2, r2, #49152
 2710 01e2 B2F5804F 		cmp	r2, #16384
 2711 01e6 0FD0     		beq	.L227
 2712 01e8 07D9     		bls	.L271
 2713 01ea B2F5004F 		cmp	r2, #32768
 2714 01ee 09D0     		beq	.L229
 2715 01f0 B2F5404F 		cmp	r2, #49152
 2716 01f4 04D1     		bne	.L226
 2717              	.LVL249:
 2718              		.loc 1 1870 0 discriminator 90
 2719 01f6 0822     		movs	r2, #8
 2720 01f8 09E0     		b	.L185
 2721              	.LVL250:
 2722              	.L271:
 2723              		.loc 1 1870 0 discriminator 85
 2724 01fa 0AB9     		cbnz	r2, .L226
 2725              		.loc 1 1870 0
 2726 01fc 0022     		movs	r2, #0
 2727 01fe 06E0     		b	.L185
 2728              	.L226:
1830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint16_t brrtemp                    = 0x0000U;
 2729              		.loc 1 1830 0 is_stmt 1
 2730 0200 1022     		movs	r2, #16
 2731 0202 04E0     		b	.L185
 2732              	.L229:
 2733              	.LVL251:
 2734              		.loc 1 1870 0 discriminator 89
 2735 0204 0222     		movs	r2, #2
 2736 0206 02E0     		b	.L185
 2737              	.LVL252:
 2738              	.L227:
 2739              		.loc 1 1870 0 is_stmt 0 discriminator 88
 2740 0208 0422     		movs	r2, #4
 2741 020a 00E0     		b	.L185
 2742              	.LVL253:
 2743              	.L246:
 2744              		.loc 1 1870 0
 2745 020c 0122     		movs	r2, #1
 2746              	.LVL254:
 2747              	.L185:
1871:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1872:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check UART Over Sampling to set Baud Rate Register */
1873:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if (huart->Init.OverSampling == UART_OVERSAMPLING_8)
 2748              		.loc 1 1873 0 is_stmt 1
 2749 020e E169     		ldr	r1, [r4, #28]
 2750 0210 B1F5004F 		cmp	r1, #32768
 2751 0214 0BD0     		beq	.L272
1874:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1875:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     switch (clocksource)
1876:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
1877:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     case UART_CLOCKSOURCE_PCLK1:
1878:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING8(HAL_RCC_GetPCLK1Freq(), huart->Init.BaudRate));
1879:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
1880:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     case UART_CLOCKSOURCE_PCLK2:
1881:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING8(HAL_RCC_GetPCLK2Freq(), huart->Init.BaudRate));
1882:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
1883:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     case UART_CLOCKSOURCE_HSI:
1884:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING8(HSI_VALUE, huart->Init.BaudRate));
1885:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
1886:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     case UART_CLOCKSOURCE_SYSCLK:
1887:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING8(HAL_RCC_GetSysClockFreq(), huart->Init.BaudRate));
1888:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
1889:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     case UART_CLOCKSOURCE_LSE:
1890:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         usartdiv = (uint16_t)(UART_DIV_SAMPLING8(LSE_VALUE, huart->Init.BaudRate));
1891:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
1892:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       case UART_CLOCKSOURCE_UNDEFINED:
1893:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     default:
1894:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         ret = HAL_ERROR;
1895:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
1896:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
1897:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1898:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     brrtemp = usartdiv & 0xFFF0U;
1899:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     brrtemp |= (uint16_t)((usartdiv & (uint16_t)0x000FU) >> 1U);
1900:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->Instance->BRR = brrtemp;
1901:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1902:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   else
1903:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1904:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     switch (clocksource)
 2752              		.loc 1 1904 0
 2753 0216 082A     		cmp	r2, #8
 2754 0218 00F29B80 		bhi	.L256
 2755 021c DFE802F0 		tbb	[pc, r2]
 2756              	.L241:
 2757 0220 61       		.byte	(.L240-.L241)/2
 2758 0221 6D       		.byte	(.L242-.L241)/2
 2759 0222 79       		.byte	(.L243-.L241)/2
 2760 0223 99       		.byte	(.L256-.L241)/2
 2761 0224 83       		.byte	(.L244-.L241)/2
 2762 0225 99       		.byte	(.L256-.L241)/2
 2763 0226 99       		.byte	(.L256-.L241)/2
 2764 0227 99       		.byte	(.L256-.L241)/2
 2765 0228 8F       		.byte	(.L245-.L241)/2
 2766              	.LVL255:
 2767 0229 00       		.p2align 1
 2768              	.L247:
1870:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2769              		.loc 1 1870 0
 2770 022a 0022     		movs	r2, #0
 2771 022c EFE7     		b	.L185
 2772              	.LVL256:
 2773              	.L272:
1875:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 2774              		.loc 1 1875 0
 2775 022e 082A     		cmp	r2, #8
 2776 0230 54D8     		bhi	.L255
 2777 0232 DFE802F0 		tbb	[pc, r2]
 2778              	.L234:
 2779 0236 05       		.byte	(.L233-.L234)/2
 2780 0237 17       		.byte	(.L235-.L234)/2
 2781 0238 22       		.byte	(.L236-.L234)/2
 2782 0239 53       		.byte	(.L255-.L234)/2
 2783 023a 3F       		.byte	(.L237-.L234)/2
 2784 023b 53       		.byte	(.L255-.L234)/2
 2785 023c 53       		.byte	(.L255-.L234)/2
 2786 023d 53       		.byte	(.L255-.L234)/2
 2787 023e 4A       		.byte	(.L238-.L234)/2
 2788 023f 00       		.p2align 1
 2789              	.L233:
1878:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
 2790              		.loc 1 1878 0
 2791 0240 FFF7FEFF 		bl	HAL_RCC_GetPCLK1Freq
 2792              	.LVL257:
 2793 0244 6268     		ldr	r2, [r4, #4]
 2794 0246 5308     		lsrs	r3, r2, #1
 2795 0248 03EB4003 		add	r3, r3, r0, lsl #1
 2796 024c B3FBF2F3 		udiv	r3, r3, r2
 2797 0250 9BB2     		uxth	r3, r3
 2798              	.LVL258:
1833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2799              		.loc 1 1833 0
 2800 0252 0020     		movs	r0, #0
 2801              	.LVL259:
 2802              	.L232:
1898:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     brrtemp |= (uint16_t)((usartdiv & (uint16_t)0x000FU) >> 1U);
 2803              		.loc 1 1898 0
 2804 0254 23F00F02 		bic	r2, r3, #15
 2805              	.LVL260:
1899:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     huart->Instance->BRR = brrtemp;
 2806              		.loc 1 1899 0
 2807 0258 C3F34203 		ubfx	r3, r3, #1, #3
 2808              	.LVL261:
 2809 025c 1343     		orrs	r3, r3, r2
 2810              	.LVL262:
1900:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 2811              		.loc 1 1900 0
 2812 025e 2268     		ldr	r2, [r4]
 2813 0260 D360     		str	r3, [r2, #12]
 2814              	.LVL263:
 2815              	.L239:
1905:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
1906:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     case UART_CLOCKSOURCE_PCLK1:
1907:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         huart->Instance->BRR = (uint16_t)(UART_DIV_SAMPLING16(HAL_RCC_GetPCLK1Freq(), huart->Init.B
1908:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
1909:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     case UART_CLOCKSOURCE_PCLK2:
1910:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         huart->Instance->BRR = (uint16_t)(UART_DIV_SAMPLING16(HAL_RCC_GetPCLK2Freq(), huart->Init.B
1911:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
1912:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     case UART_CLOCKSOURCE_HSI:
1913:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         huart->Instance->BRR = (uint16_t)(UART_DIV_SAMPLING16(HSI_VALUE, huart->Init.BaudRate));
1914:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
1915:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     case UART_CLOCKSOURCE_SYSCLK:
1916:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         huart->Instance->BRR = (uint16_t)(UART_DIV_SAMPLING16(HAL_RCC_GetSysClockFreq(), huart->Ini
1917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
1918:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     case UART_CLOCKSOURCE_LSE:
1919:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         huart->Instance->BRR = (uint16_t)(UART_DIV_SAMPLING16(LSE_VALUE, huart->Init.BaudRate));
1920:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
1921:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       case UART_CLOCKSOURCE_UNDEFINED:
1922:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     default:
1923:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****         ret = HAL_ERROR;
1924:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
1925:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
1926:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1927:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1928:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return ret;
1929:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1930:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 2816              		.loc 1 1930 0
 2817 0262 10BD     		pop	{r4, pc}
 2818              	.LVL264:
 2819              	.L235:
1881:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
 2820              		.loc 1 1881 0
 2821 0264 FFF7FEFF 		bl	HAL_RCC_GetPCLK2Freq
 2822              	.LVL265:
 2823 0268 6268     		ldr	r2, [r4, #4]
 2824 026a 5308     		lsrs	r3, r2, #1
 2825 026c 03EB4003 		add	r3, r3, r0, lsl #1
 2826 0270 B3FBF2F3 		udiv	r3, r3, r2
 2827 0274 9BB2     		uxth	r3, r3
 2828              	.LVL266:
1833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2829              		.loc 1 1833 0
 2830 0276 0020     		movs	r0, #0
1882:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     case UART_CLOCKSOURCE_HSI:
 2831              		.loc 1 1882 0
 2832 0278 ECE7     		b	.L232
 2833              	.LVL267:
 2834              	.L236:
1884:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
 2835              		.loc 1 1884 0
 2836 027a 6268     		ldr	r2, [r4, #4]
 2837              	.LVL268:
 2838 027c 0C4B     		ldr	r3, .L273+36
 2839 027e 03EB5203 		add	r3, r3, r2, lsr #1
 2840 0282 B3FBF2F3 		udiv	r3, r3, r2
 2841 0286 9BB2     		uxth	r3, r3
 2842              	.LVL269:
1833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2843              		.loc 1 1833 0
 2844 0288 0020     		movs	r0, #0
1885:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     case UART_CLOCKSOURCE_SYSCLK:
 2845              		.loc 1 1885 0
 2846 028a E3E7     		b	.L232
 2847              	.L274:
 2848              		.align	2
 2849              	.L273:
 2850 028c F369FFEF 		.word	-268473869
 2851 0290 00100140 		.word	1073811456
 2852 0294 00440040 		.word	1073759232
 2853 0298 00480040 		.word	1073760256
 2854 029c 004C0040 		.word	1073761280
 2855 02a0 00500040 		.word	1073762304
 2856 02a4 00140140 		.word	1073812480
 2857 02a8 00780040 		.word	1073772544
 2858 02ac 007C0040 		.word	1073773568
 2859 02b0 0048E801 		.word	32000000
 2860              	.LVL270:
 2861              	.L237:
1887:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
 2862              		.loc 1 1887 0
 2863 02b4 FFF7FEFF 		bl	HAL_RCC_GetSysClockFreq
 2864              	.LVL271:
 2865 02b8 6268     		ldr	r2, [r4, #4]
 2866 02ba 5308     		lsrs	r3, r2, #1
 2867 02bc 03EB4003 		add	r3, r3, r0, lsl #1
 2868 02c0 B3FBF2F3 		udiv	r3, r3, r2
 2869 02c4 9BB2     		uxth	r3, r3
 2870              	.LVL272:
1833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2871              		.loc 1 1833 0
 2872 02c6 0020     		movs	r0, #0
1888:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     case UART_CLOCKSOURCE_LSE:
 2873              		.loc 1 1888 0
 2874 02c8 C4E7     		b	.L232
 2875              	.LVL273:
 2876              	.L238:
1890:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
 2877              		.loc 1 1890 0
 2878 02ca 6268     		ldr	r2, [r4, #4]
 2879              	.LVL274:
 2880 02cc 5308     		lsrs	r3, r2, #1
 2881 02ce 03F58033 		add	r3, r3, #65536
 2882 02d2 B3FBF2F3 		udiv	r3, r3, r2
 2883 02d6 9BB2     		uxth	r3, r3
 2884              	.LVL275:
1833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2885              		.loc 1 1833 0
 2886 02d8 0020     		movs	r0, #0
1891:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       case UART_CLOCKSOURCE_UNDEFINED:
 2887              		.loc 1 1891 0
 2888 02da BBE7     		b	.L232
 2889              	.LVL276:
 2890              	.L255:
1894:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
 2891              		.loc 1 1894 0
 2892 02dc 0120     		movs	r0, #1
1832:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   HAL_StatusTypeDef ret               = HAL_OK;
 2893              		.loc 1 1832 0
 2894 02de 0023     		movs	r3, #0
 2895 02e0 B8E7     		b	.L232
 2896              	.L240:
1907:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
 2897              		.loc 1 1907 0
 2898 02e2 FFF7FEFF 		bl	HAL_RCC_GetPCLK1Freq
 2899              	.LVL277:
 2900 02e6 6368     		ldr	r3, [r4, #4]
 2901 02e8 00EB5300 		add	r0, r0, r3, lsr #1
 2902 02ec B0FBF3F0 		udiv	r0, r0, r3
 2903 02f0 2368     		ldr	r3, [r4]
 2904 02f2 80B2     		uxth	r0, r0
 2905 02f4 D860     		str	r0, [r3, #12]
1833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2906              		.loc 1 1833 0
 2907 02f6 0020     		movs	r0, #0
1908:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     case UART_CLOCKSOURCE_PCLK2:
 2908              		.loc 1 1908 0
 2909 02f8 B3E7     		b	.L239
 2910              	.LVL278:
 2911              	.L242:
1910:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
 2912              		.loc 1 1910 0
 2913 02fa FFF7FEFF 		bl	HAL_RCC_GetPCLK2Freq
 2914              	.LVL279:
 2915 02fe 6368     		ldr	r3, [r4, #4]
 2916 0300 00EB5300 		add	r0, r0, r3, lsr #1
 2917 0304 B0FBF3F0 		udiv	r0, r0, r3
 2918 0308 2368     		ldr	r3, [r4]
 2919 030a 80B2     		uxth	r0, r0
 2920 030c D860     		str	r0, [r3, #12]
1833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2921              		.loc 1 1833 0
 2922 030e 0020     		movs	r0, #0
1911:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     case UART_CLOCKSOURCE_HSI:
 2923              		.loc 1 1911 0
 2924 0310 A7E7     		b	.L239
 2925              	.LVL280:
 2926              	.L243:
1913:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
 2927              		.loc 1 1913 0
 2928 0312 6168     		ldr	r1, [r4, #4]
 2929 0314 104A     		ldr	r2, .L275
 2930              	.LVL281:
 2931 0316 02EB5102 		add	r2, r2, r1, lsr #1
 2932 031a B2FBF1F2 		udiv	r2, r2, r1
 2933 031e 92B2     		uxth	r2, r2
 2934 0320 DA60     		str	r2, [r3, #12]
1833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2935              		.loc 1 1833 0
 2936 0322 0020     		movs	r0, #0
1914:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     case UART_CLOCKSOURCE_SYSCLK:
 2937              		.loc 1 1914 0
 2938 0324 9DE7     		b	.L239
 2939              	.LVL282:
 2940              	.L244:
1916:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
 2941              		.loc 1 1916 0
 2942 0326 FFF7FEFF 		bl	HAL_RCC_GetSysClockFreq
 2943              	.LVL283:
 2944 032a 6368     		ldr	r3, [r4, #4]
 2945 032c 00EB5300 		add	r0, r0, r3, lsr #1
 2946 0330 B0FBF3F0 		udiv	r0, r0, r3
 2947 0334 2368     		ldr	r3, [r4]
 2948 0336 80B2     		uxth	r0, r0
 2949 0338 D860     		str	r0, [r3, #12]
1833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2950              		.loc 1 1833 0
 2951 033a 0020     		movs	r0, #0
1917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     case UART_CLOCKSOURCE_LSE:
 2952              		.loc 1 1917 0
 2953 033c 91E7     		b	.L239
 2954              	.LVL284:
 2955              	.L245:
1919:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
 2956              		.loc 1 1919 0
 2957 033e 6168     		ldr	r1, [r4, #4]
 2958 0340 4A08     		lsrs	r2, r1, #1
 2959              	.LVL285:
 2960 0342 02F50042 		add	r2, r2, #32768
 2961 0346 B2FBF1F2 		udiv	r2, r2, r1
 2962 034a 92B2     		uxth	r2, r2
 2963 034c DA60     		str	r2, [r3, #12]
1833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 2964              		.loc 1 1833 0
 2965 034e 0020     		movs	r0, #0
1920:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       case UART_CLOCKSOURCE_UNDEFINED:
 2966              		.loc 1 1920 0
 2967 0350 87E7     		b	.L239
 2968              	.LVL286:
 2969              	.L256:
1923:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       break;
 2970              		.loc 1 1923 0
 2971 0352 0120     		movs	r0, #1
 2972 0354 85E7     		b	.L239
 2973              	.L276:
 2974 0356 00BF     		.align	2
 2975              	.L275:
 2976 0358 0024F400 		.word	16000000
 2977              		.cfi_endproc
 2978              	.LFE178:
 2980              		.section	.text.UART_AdvFeatureConfig,"ax",%progbits
 2981              		.align	1
 2982              		.global	UART_AdvFeatureConfig
 2983              		.syntax unified
 2984              		.thumb
 2985              		.thumb_func
 2986              		.fpu fpv5-d16
 2988              	UART_AdvFeatureConfig:
 2989              	.LFB179:
1931:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1932:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1933:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
1934:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Configure the UART peripheral advanced features
1935:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: uart handle
1936:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval None
1937:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
1938:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** void UART_AdvFeatureConfig(UART_HandleTypeDef *huart)
1939:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 2990              		.loc 1 1939 0
 2991              		.cfi_startproc
 2992              		@ args = 0, pretend = 0, frame = 0
 2993              		@ frame_needed = 0, uses_anonymous_args = 0
 2994              		@ link register save eliminated.
 2995              	.LVL287:
1940:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check whether the set of advanced features to configure is properly set */
1941:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   assert_param(IS_UART_ADVFEATURE_INIT(huart->AdvancedInit.AdvFeatureInit));
1942:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1943:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* if required, configure TX pin active level inversion */
1944:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_TXINVERT_INIT))
 2996              		.loc 1 1944 0
 2997 0000 436A     		ldr	r3, [r0, #36]
 2998 0002 13F0010F 		tst	r3, #1
 2999 0006 06D0     		beq	.L278
1945:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1946:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     assert_param(IS_UART_ADVFEATURE_TXINV(huart->AdvancedInit.TxPinLevelInvert));
1947:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_TXINV, huart->AdvancedInit.TxPinLevelInvert);
 3000              		.loc 1 1947 0
 3001 0008 0268     		ldr	r2, [r0]
 3002 000a 5368     		ldr	r3, [r2, #4]
 3003 000c 23F40033 		bic	r3, r3, #131072
 3004 0010 816A     		ldr	r1, [r0, #40]
 3005 0012 0B43     		orrs	r3, r3, r1
 3006 0014 5360     		str	r3, [r2, #4]
 3007              	.L278:
1948:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1949:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1950:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* if required, configure RX pin active level inversion */
1951:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_RXINVERT_INIT))
 3008              		.loc 1 1951 0
 3009 0016 436A     		ldr	r3, [r0, #36]
 3010 0018 13F0020F 		tst	r3, #2
 3011 001c 06D0     		beq	.L279
1952:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1953:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     assert_param(IS_UART_ADVFEATURE_RXINV(huart->AdvancedInit.RxPinLevelInvert));
1954:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_RXINV, huart->AdvancedInit.RxPinLevelInvert);
 3012              		.loc 1 1954 0
 3013 001e 0268     		ldr	r2, [r0]
 3014 0020 5368     		ldr	r3, [r2, #4]
 3015 0022 23F48033 		bic	r3, r3, #65536
 3016 0026 C16A     		ldr	r1, [r0, #44]
 3017 0028 0B43     		orrs	r3, r3, r1
 3018 002a 5360     		str	r3, [r2, #4]
 3019              	.L279:
1955:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1956:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1957:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* if required, configure data inversion */
1958:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_DATAINVERT_INIT))
 3020              		.loc 1 1958 0
 3021 002c 436A     		ldr	r3, [r0, #36]
 3022 002e 13F0040F 		tst	r3, #4
 3023 0032 06D0     		beq	.L280
1959:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1960:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     assert_param(IS_UART_ADVFEATURE_DATAINV(huart->AdvancedInit.DataInvert));
1961:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_DATAINV, huart->AdvancedInit.DataInvert);
 3024              		.loc 1 1961 0
 3025 0034 0268     		ldr	r2, [r0]
 3026 0036 5368     		ldr	r3, [r2, #4]
 3027 0038 23F48023 		bic	r3, r3, #262144
 3028 003c 016B     		ldr	r1, [r0, #48]
 3029 003e 0B43     		orrs	r3, r3, r1
 3030 0040 5360     		str	r3, [r2, #4]
 3031              	.L280:
1962:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1963:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1964:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* if required, configure RX/TX pins swap */
1965:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_SWAP_INIT))
 3032              		.loc 1 1965 0
 3033 0042 436A     		ldr	r3, [r0, #36]
 3034 0044 13F0080F 		tst	r3, #8
 3035 0048 06D0     		beq	.L281
1966:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1967:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     assert_param(IS_UART_ADVFEATURE_SWAP(huart->AdvancedInit.Swap));
1968:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_SWAP, huart->AdvancedInit.Swap);
 3036              		.loc 1 1968 0
 3037 004a 0268     		ldr	r2, [r0]
 3038 004c 5368     		ldr	r3, [r2, #4]
 3039 004e 23F40043 		bic	r3, r3, #32768
 3040 0052 416B     		ldr	r1, [r0, #52]
 3041 0054 0B43     		orrs	r3, r3, r1
 3042 0056 5360     		str	r3, [r2, #4]
 3043              	.L281:
1969:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1970:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1971:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* if required, configure RX overrun detection disabling */
1972:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_RXOVERRUNDISABLE_INIT))
 3044              		.loc 1 1972 0
 3045 0058 436A     		ldr	r3, [r0, #36]
 3046 005a 13F0100F 		tst	r3, #16
 3047 005e 06D0     		beq	.L282
1973:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1974:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     assert_param(IS_UART_OVERRUN(huart->AdvancedInit.OverrunDisable));
1975:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR3, USART_CR3_OVRDIS, huart->AdvancedInit.OverrunDisable);
 3048              		.loc 1 1975 0
 3049 0060 0268     		ldr	r2, [r0]
 3050 0062 9368     		ldr	r3, [r2, #8]
 3051 0064 23F48053 		bic	r3, r3, #4096
 3052 0068 816B     		ldr	r1, [r0, #56]
 3053 006a 0B43     		orrs	r3, r3, r1
 3054 006c 9360     		str	r3, [r2, #8]
 3055              	.L282:
1976:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1977:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1978:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* if required, configure DMA disabling on reception error */
1979:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_DMADISABLEONERROR_INIT))
 3056              		.loc 1 1979 0
 3057 006e 436A     		ldr	r3, [r0, #36]
 3058 0070 13F0200F 		tst	r3, #32
 3059 0074 06D0     		beq	.L283
1980:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1981:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     assert_param(IS_UART_ADVFEATURE_DMAONRXERROR(huart->AdvancedInit.DMADisableonRxError));
1982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR3, USART_CR3_DDRE, huart->AdvancedInit.DMADisableonRxError);
 3060              		.loc 1 1982 0
 3061 0076 0268     		ldr	r2, [r0]
 3062 0078 9368     		ldr	r3, [r2, #8]
 3063 007a 23F40053 		bic	r3, r3, #8192
 3064 007e C16B     		ldr	r1, [r0, #60]
 3065 0080 0B43     		orrs	r3, r3, r1
 3066 0082 9360     		str	r3, [r2, #8]
 3067              	.L283:
1983:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1984:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1985:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* if required, configure auto Baud rate detection scheme */
1986:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_AUTOBAUDRATE_INIT))
 3068              		.loc 1 1986 0
 3069 0084 436A     		ldr	r3, [r0, #36]
 3070 0086 13F0400F 		tst	r3, #64
 3071 008a 0AD0     		beq	.L284
1987:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
1988:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     assert_param(IS_UART_ADVFEATURE_AUTOBAUDRATE(huart->AdvancedInit.AutoBaudRateEnable));
1989:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_ABREN, huart->AdvancedInit.AutoBaudRateEnable);
 3072              		.loc 1 1989 0
 3073 008c 0268     		ldr	r2, [r0]
 3074 008e 5368     		ldr	r3, [r2, #4]
 3075 0090 23F48013 		bic	r3, r3, #1048576
 3076 0094 016C     		ldr	r1, [r0, #64]
 3077 0096 0B43     		orrs	r3, r3, r1
 3078 0098 5360     		str	r3, [r2, #4]
1990:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* set auto Baudrate detection parameters if detection is enabled */
1991:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if(huart->AdvancedInit.AutoBaudRateEnable == UART_ADVFEATURE_AUTOBAUDRATE_ENABLE)
 3079              		.loc 1 1991 0
 3080 009a 036C     		ldr	r3, [r0, #64]
 3081 009c B3F5801F 		cmp	r3, #1048576
 3082 00a0 0BD0     		beq	.L286
 3083              	.L284:
1992:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
1993:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       assert_param(IS_UART_ADVFEATURE_AUTOBAUDRATEMODE(huart->AdvancedInit.AutoBaudRateMode));
1994:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       MODIFY_REG(huart->Instance->CR2, USART_CR2_ABRMODE, huart->AdvancedInit.AutoBaudRateMode);
1995:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
1996:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
1997:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
1998:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* if required, configure MSB first on communication line */
1999:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(HAL_IS_BIT_SET(huart->AdvancedInit.AdvFeatureInit, UART_ADVFEATURE_MSBFIRST_INIT))
 3084              		.loc 1 1999 0
 3085 00a2 436A     		ldr	r3, [r0, #36]
 3086 00a4 13F0800F 		tst	r3, #128
 3087 00a8 06D0     		beq	.L277
2000:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
2001:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     assert_param(IS_UART_ADVFEATURE_MSBFIRST(huart->AdvancedInit.MSBFirst));
2002:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     MODIFY_REG(huart->Instance->CR2, USART_CR2_MSBFIRST, huart->AdvancedInit.MSBFirst);
 3088              		.loc 1 2002 0
 3089 00aa 0268     		ldr	r2, [r0]
 3090 00ac 5368     		ldr	r3, [r2, #4]
 3091 00ae 23F40023 		bic	r3, r3, #524288
 3092 00b2 816C     		ldr	r1, [r0, #72]
 3093 00b4 0B43     		orrs	r3, r3, r1
 3094 00b6 5360     		str	r3, [r2, #4]
 3095              	.L277:
2003:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
2004:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 3096              		.loc 1 2004 0
 3097 00b8 7047     		bx	lr
 3098              	.L286:
1994:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 3099              		.loc 1 1994 0
 3100 00ba 0268     		ldr	r2, [r0]
 3101 00bc 5368     		ldr	r3, [r2, #4]
 3102 00be 23F4C003 		bic	r3, r3, #6291456
 3103 00c2 416C     		ldr	r1, [r0, #68]
 3104 00c4 0B43     		orrs	r3, r3, r1
 3105 00c6 5360     		str	r3, [r2, #4]
 3106 00c8 EBE7     		b	.L284
 3107              		.cfi_endproc
 3108              	.LFE179:
 3110              		.section	.text.UART_CheckIdleState,"ax",%progbits
 3111              		.align	1
 3112              		.global	UART_CheckIdleState
 3113              		.syntax unified
 3114              		.thumb
 3115              		.thumb_func
 3116              		.fpu fpv5-d16
 3118              	UART_CheckIdleState:
 3119              	.LFB180:
2005:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2006:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2007:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2008:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
2009:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief Check the UART Idle State
2010:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: uart handle
2011:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
2012:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
2013:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef UART_CheckIdleState(UART_HandleTypeDef *huart)
2014:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 3120              		.loc 1 2014 0
 3121              		.cfi_startproc
 3122              		@ args = 0, pretend = 0, frame = 0
 3123              		@ frame_needed = 0, uses_anonymous_args = 0
 3124              	.LVL288:
 3125 0000 10B5     		push	{r4, lr}
 3126              		.cfi_def_cfa_offset 8
 3127              		.cfi_offset 4, -8
 3128              		.cfi_offset 14, -4
 3129 0002 82B0     		sub	sp, sp, #8
 3130              		.cfi_def_cfa_offset 16
 3131 0004 0446     		mov	r4, r0
 3132              	.LVL289:
2015:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t tickstart = 0U;
2016:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2017:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Initialize the UART ErrorCode */
2018:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->ErrorCode = HAL_UART_ERROR_NONE;
 3133              		.loc 1 2018 0
 3134 0006 0023     		movs	r3, #0
 3135 0008 C366     		str	r3, [r0, #108]
2019:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2020:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Init tickstart for timeout managment*/
2021:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   tickstart = HAL_GetTick();
 3136              		.loc 1 2021 0
 3137 000a FFF7FEFF 		bl	HAL_GetTick
 3138              	.LVL290:
2022:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2023:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check if the Transmitter is enabled */
2024:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if((huart->Instance->CR1 & USART_CR1_TE) == USART_CR1_TE)
 3139              		.loc 1 2024 0
 3140 000e 2268     		ldr	r2, [r4]
 3141 0010 1268     		ldr	r2, [r2]
 3142 0012 12F0080F 		tst	r2, #8
 3143 0016 09D1     		bne	.L292
 3144              	.LVL291:
 3145              	.L288:
2025:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
2026:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     /* Wait until TEACK flag is set */
2027:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     if(UART_WaitOnFlagUntilTimeout(huart, USART_ISR_TEACK, RESET, tickstart, HAL_UART_TIMEOUT_VALUE
2028:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
2029:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       /* Timeout Occurred */
2030:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****       return HAL_TIMEOUT;
2031:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
2032:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
2033:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2034:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Initialize the UART State */
2035:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState= HAL_UART_STATE_READY;
 3146              		.loc 1 2035 0
 3147 0018 2023     		movs	r3, #32
 3148 001a 84F86930 		strb	r3, [r4, #105]
2036:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->RxState= HAL_UART_STATE_READY;
 3149              		.loc 1 2036 0
 3150 001e 84F86A30 		strb	r3, [r4, #106]
2037:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2038:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Process Unlocked */
2039:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UNLOCK(huart);
 3151              		.loc 1 2039 0
 3152 0022 0020     		movs	r0, #0
 3153 0024 84F86800 		strb	r0, [r4, #104]
 3154              	.L289:
2040:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2041:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return HAL_OK;
2042:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 3155              		.loc 1 2042 0
 3156 0028 02B0     		add	sp, sp, #8
 3157              		.cfi_remember_state
 3158              		.cfi_def_cfa_offset 8
 3159              		@ sp needed
 3160 002a 10BD     		pop	{r4, pc}
 3161              	.LVL292:
 3162              	.L292:
 3163              		.cfi_restore_state
2027:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     {
 3164              		.loc 1 2027 0
 3165 002c 6FF07E43 		mvn	r3, #-33554432
 3166 0030 0093     		str	r3, [sp]
 3167 0032 0346     		mov	r3, r0
 3168 0034 0022     		movs	r2, #0
 3169 0036 4FF40011 		mov	r1, #2097152
 3170 003a 2046     		mov	r0, r4
 3171              	.LVL293:
 3172 003c FFF7FEFF 		bl	UART_WaitOnFlagUntilTimeout
 3173              	.LVL294:
 3174 0040 0028     		cmp	r0, #0
 3175 0042 E9D0     		beq	.L288
2030:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     }
 3176              		.loc 1 2030 0
 3177 0044 0320     		movs	r0, #3
 3178 0046 EFE7     		b	.L289
 3179              		.cfi_endproc
 3180              	.LFE180:
 3182              		.section	.text.HAL_UART_Init,"ax",%progbits
 3183              		.align	1
 3184              		.global	HAL_UART_Init
 3185              		.syntax unified
 3186              		.thumb
 3187              		.thumb_func
 3188              		.fpu fpv5-d16
 3190              	HAL_UART_Init:
 3191              	.LFB138:
 244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the UART handle allocation */
 3192              		.loc 1 244 0
 3193              		.cfi_startproc
 3194              		@ args = 0, pretend = 0, frame = 0
 3195              		@ frame_needed = 0, uses_anonymous_args = 0
 3196              	.LVL295:
 246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3197              		.loc 1 246 0
 3198 0000 78B3     		cbz	r0, .L297
 244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the UART handle allocation */
 3199              		.loc 1 244 0
 3200 0002 10B5     		push	{r4, lr}
 3201              		.cfi_def_cfa_offset 8
 3202              		.cfi_offset 4, -8
 3203              		.cfi_offset 14, -4
 3204 0004 0446     		mov	r4, r0
 262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3205              		.loc 1 262 0
 3206 0006 90F86930 		ldrb	r3, [r0, #105]	@ zero_extendqisi2
 3207 000a 0BB3     		cbz	r3, .L302
 3208              	.LVL296:
 3209              	.L295:
 271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3210              		.loc 1 271 0
 3211 000c 2423     		movs	r3, #36
 3212 000e 84F86930 		strb	r3, [r4, #105]
 274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3213              		.loc 1 274 0
 3214 0012 2268     		ldr	r2, [r4]
 3215 0014 1368     		ldr	r3, [r2]
 3216 0016 23F00103 		bic	r3, r3, #1
 3217 001a 1360     		str	r3, [r2]
 277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3218              		.loc 1 277 0
 3219 001c 2046     		mov	r0, r4
 3220 001e FFF7FEFF 		bl	UART_SetConfig
 3221              	.LVL297:
 3222 0022 0128     		cmp	r0, #1
 3223 0024 13D0     		beq	.L294
 282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3224              		.loc 1 282 0
 3225 0026 636A     		ldr	r3, [r4, #36]
 3226 0028 BBB9     		cbnz	r3, .L303
 3227              	.L296:
 290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_SCEN | USART_CR3_HDSEL | USART_CR3_IREN));
 3228              		.loc 1 290 0
 3229 002a 2268     		ldr	r2, [r4]
 3230 002c 5368     		ldr	r3, [r2, #4]
 3231 002e 23F49043 		bic	r3, r3, #18432
 3232 0032 5360     		str	r3, [r2, #4]
 291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3233              		.loc 1 291 0
 3234 0034 2268     		ldr	r2, [r4]
 3235 0036 9368     		ldr	r3, [r2, #8]
 3236 0038 23F02A03 		bic	r3, r3, #42
 3237 003c 9360     		str	r3, [r2, #8]
 294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3238              		.loc 1 294 0
 3239 003e 2268     		ldr	r2, [r4]
 3240 0040 1368     		ldr	r3, [r2]
 3241 0042 43F00103 		orr	r3, r3, #1
 3242 0046 1360     		str	r3, [r2]
 297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 3243              		.loc 1 297 0
 3244 0048 2046     		mov	r0, r4
 3245 004a FFF7FEFF 		bl	UART_CheckIdleState
 3246              	.LVL298:
 3247              	.L294:
 298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3248              		.loc 1 298 0
 3249 004e 10BD     		pop	{r4, pc}
 3250              	.LVL299:
 3251              	.L302:
 265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3252              		.loc 1 265 0
 3253 0050 80F86830 		strb	r3, [r0, #104]
 268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 3254              		.loc 1 268 0
 3255 0054 FFF7FEFF 		bl	HAL_UART_MspInit
 3256              	.LVL300:
 3257 0058 D8E7     		b	.L295
 3258              	.L303:
 284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 3259              		.loc 1 284 0
 3260 005a 2046     		mov	r0, r4
 3261 005c FFF7FEFF 		bl	UART_AdvFeatureConfig
 3262              	.LVL301:
 3263 0060 E3E7     		b	.L296
 3264              	.LVL302:
 3265              	.L297:
 3266              		.cfi_def_cfa_offset 0
 3267              		.cfi_restore 4
 3268              		.cfi_restore 14
 248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 3269              		.loc 1 248 0
 3270 0062 0120     		movs	r0, #1
 3271              	.LVL303:
 298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3272              		.loc 1 298 0
 3273 0064 7047     		bx	lr
 3274              		.cfi_endproc
 3275              	.LFE138:
 3277              		.section	.text.HAL_HalfDuplex_Init,"ax",%progbits
 3278              		.align	1
 3279              		.global	HAL_HalfDuplex_Init
 3280              		.syntax unified
 3281              		.thumb
 3282              		.thumb_func
 3283              		.fpu fpv5-d16
 3285              	HAL_HalfDuplex_Init:
 3286              	.LFB139:
 307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the UART handle allocation */
 3287              		.loc 1 307 0
 3288              		.cfi_startproc
 3289              		@ args = 0, pretend = 0, frame = 0
 3290              		@ frame_needed = 0, uses_anonymous_args = 0
 3291              	.LVL304:
 309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3292              		.loc 1 309 0
 3293 0000 0028     		cmp	r0, #0
 3294 0002 34D0     		beq	.L308
 307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the UART handle allocation */
 3295              		.loc 1 307 0
 3296 0004 10B5     		push	{r4, lr}
 3297              		.cfi_def_cfa_offset 8
 3298              		.cfi_offset 4, -8
 3299              		.cfi_offset 14, -4
 3300 0006 0446     		mov	r4, r0
 314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3301              		.loc 1 314 0
 3302 0008 90F86930 		ldrb	r3, [r0, #105]	@ zero_extendqisi2
 3303 000c 33B3     		cbz	r3, .L313
 3304              	.LVL305:
 3305              	.L306:
 323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3306              		.loc 1 323 0
 3307 000e 2423     		movs	r3, #36
 3308 0010 84F86930 		strb	r3, [r4, #105]
 326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3309              		.loc 1 326 0
 3310 0014 2268     		ldr	r2, [r4]
 3311 0016 1368     		ldr	r3, [r2]
 3312 0018 23F00103 		bic	r3, r3, #1
 3313 001c 1360     		str	r3, [r2]
 329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3314              		.loc 1 329 0
 3315 001e 2046     		mov	r0, r4
 3316 0020 FFF7FEFF 		bl	UART_SetConfig
 3317              	.LVL306:
 3318 0024 0128     		cmp	r0, #1
 3319 0026 18D0     		beq	.L305
 334:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3320              		.loc 1 334 0
 3321 0028 636A     		ldr	r3, [r4, #36]
 3322 002a E3B9     		cbnz	r3, .L314
 3323              	.L307:
 342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_IREN | USART_CR3_SCEN));
 3324              		.loc 1 342 0
 3325 002c 2268     		ldr	r2, [r4]
 3326 002e 5368     		ldr	r3, [r2, #4]
 3327 0030 23F49043 		bic	r3, r3, #18432
 3328 0034 5360     		str	r3, [r2, #4]
 343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3329              		.loc 1 343 0
 3330 0036 2268     		ldr	r2, [r4]
 3331 0038 9368     		ldr	r3, [r2, #8]
 3332 003a 23F02203 		bic	r3, r3, #34
 3333 003e 9360     		str	r3, [r2, #8]
 346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3334              		.loc 1 346 0
 3335 0040 2268     		ldr	r2, [r4]
 3336 0042 9368     		ldr	r3, [r2, #8]
 3337 0044 43F00803 		orr	r3, r3, #8
 3338 0048 9360     		str	r3, [r2, #8]
 349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3339              		.loc 1 349 0
 3340 004a 2268     		ldr	r2, [r4]
 3341 004c 1368     		ldr	r3, [r2]
 3342 004e 43F00103 		orr	r3, r3, #1
 3343 0052 1360     		str	r3, [r2]
 352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 3344              		.loc 1 352 0
 3345 0054 2046     		mov	r0, r4
 3346 0056 FFF7FEFF 		bl	UART_CheckIdleState
 3347              	.LVL307:
 3348              	.L305:
 353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3349              		.loc 1 353 0
 3350 005a 10BD     		pop	{r4, pc}
 3351              	.LVL308:
 3352              	.L313:
 317:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3353              		.loc 1 317 0
 3354 005c 80F86830 		strb	r3, [r0, #104]
 320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 3355              		.loc 1 320 0
 3356 0060 FFF7FEFF 		bl	HAL_UART_MspInit
 3357              	.LVL309:
 3358 0064 D3E7     		b	.L306
 3359              	.L314:
 336:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 3360              		.loc 1 336 0
 3361 0066 2046     		mov	r0, r4
 3362 0068 FFF7FEFF 		bl	UART_AdvFeatureConfig
 3363              	.LVL310:
 3364 006c DEE7     		b	.L307
 3365              	.LVL311:
 3366              	.L308:
 3367              		.cfi_def_cfa_offset 0
 3368              		.cfi_restore 4
 3369              		.cfi_restore 14
 311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 3370              		.loc 1 311 0
 3371 006e 0120     		movs	r0, #1
 3372              	.LVL312:
 353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3373              		.loc 1 353 0
 3374 0070 7047     		bx	lr
 3375              		.cfi_endproc
 3376              	.LFE139:
 3378              		.section	.text.HAL_LIN_Init,"ax",%progbits
 3379              		.align	1
 3380              		.global	HAL_LIN_Init
 3381              		.syntax unified
 3382              		.thumb
 3383              		.thumb_func
 3384              		.fpu fpv5-d16
 3386              	HAL_LIN_Init:
 3387              	.LFB140:
 367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the UART handle allocation */
 3388              		.loc 1 367 0
 3389              		.cfi_startproc
 3390              		@ args = 0, pretend = 0, frame = 0
 3391              		@ frame_needed = 0, uses_anonymous_args = 0
 3392              	.LVL313:
 369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3393              		.loc 1 369 0
 3394 0000 0028     		cmp	r0, #0
 3395 0002 3BD0     		beq	.L319
 367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the UART handle allocation */
 3396              		.loc 1 367 0
 3397 0004 38B5     		push	{r3, r4, r5, lr}
 3398              		.cfi_def_cfa_offset 16
 3399              		.cfi_offset 3, -16
 3400              		.cfi_offset 4, -12
 3401              		.cfi_offset 5, -8
 3402              		.cfi_offset 14, -4
 3403 0006 0446     		mov	r4, r0
 3404 0008 0D46     		mov	r5, r1
 379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3405              		.loc 1 379 0
 3406 000a 90F86930 		ldrb	r3, [r0, #105]	@ zero_extendqisi2
 3407 000e 63B3     		cbz	r3, .L324
 3408              	.LVL314:
 3409              	.L317:
 388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3410              		.loc 1 388 0
 3411 0010 2423     		movs	r3, #36
 3412 0012 84F86930 		strb	r3, [r4, #105]
 391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3413              		.loc 1 391 0
 3414 0016 2268     		ldr	r2, [r4]
 3415 0018 1368     		ldr	r3, [r2]
 3416 001a 23F00103 		bic	r3, r3, #1
 3417 001e 1360     		str	r3, [r2]
 394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3418              		.loc 1 394 0
 3419 0020 2046     		mov	r0, r4
 3420 0022 FFF7FEFF 		bl	UART_SetConfig
 3421              	.LVL315:
 3422 0026 0128     		cmp	r0, #1
 3423 0028 1ED0     		beq	.L316
 399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3424              		.loc 1 399 0
 3425 002a 636A     		ldr	r3, [r4, #36]
 3426 002c 13BB     		cbnz	r3, .L325
 3427              	.L318:
 407:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_HDSEL | USART_CR3_IREN | USART_CR3_SCEN));
 3428              		.loc 1 407 0
 3429 002e 2268     		ldr	r2, [r4]
 3430 0030 5368     		ldr	r3, [r2, #4]
 3431 0032 23F40063 		bic	r3, r3, #2048
 3432 0036 5360     		str	r3, [r2, #4]
 408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3433              		.loc 1 408 0
 3434 0038 2268     		ldr	r2, [r4]
 3435 003a 9368     		ldr	r3, [r2, #8]
 3436 003c 23F02A03 		bic	r3, r3, #42
 3437 0040 9360     		str	r3, [r2, #8]
 411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3438              		.loc 1 411 0
 3439 0042 2268     		ldr	r2, [r4]
 3440 0044 5368     		ldr	r3, [r2, #4]
 3441 0046 43F48043 		orr	r3, r3, #16384
 3442 004a 5360     		str	r3, [r2, #4]
 414:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3443              		.loc 1 414 0
 3444 004c 2268     		ldr	r2, [r4]
 3445 004e 5368     		ldr	r3, [r2, #4]
 3446 0050 23F02003 		bic	r3, r3, #32
 3447 0054 2B43     		orrs	r3, r3, r5
 3448 0056 5360     		str	r3, [r2, #4]
 417:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3449              		.loc 1 417 0
 3450 0058 2268     		ldr	r2, [r4]
 3451 005a 1368     		ldr	r3, [r2]
 3452 005c 43F00103 		orr	r3, r3, #1
 3453 0060 1360     		str	r3, [r2]
 420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 3454              		.loc 1 420 0
 3455 0062 2046     		mov	r0, r4
 3456 0064 FFF7FEFF 		bl	UART_CheckIdleState
 3457              	.LVL316:
 3458              	.L316:
 421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3459              		.loc 1 421 0
 3460 0068 38BD     		pop	{r3, r4, r5, pc}
 3461              	.LVL317:
 3462              	.L324:
 382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3463              		.loc 1 382 0
 3464 006a 80F86830 		strb	r3, [r0, #104]
 385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 3465              		.loc 1 385 0
 3466 006e FFF7FEFF 		bl	HAL_UART_MspInit
 3467              	.LVL318:
 3468 0072 CDE7     		b	.L317
 3469              	.L325:
 401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 3470              		.loc 1 401 0
 3471 0074 2046     		mov	r0, r4
 3472 0076 FFF7FEFF 		bl	UART_AdvFeatureConfig
 3473              	.LVL319:
 3474 007a D8E7     		b	.L318
 3475              	.LVL320:
 3476              	.L319:
 3477              		.cfi_def_cfa_offset 0
 3478              		.cfi_restore 3
 3479              		.cfi_restore 4
 3480              		.cfi_restore 5
 3481              		.cfi_restore 14
 371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 3482              		.loc 1 371 0
 3483 007c 0120     		movs	r0, #1
 3484              	.LVL321:
 421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3485              		.loc 1 421 0
 3486 007e 7047     		bx	lr
 3487              		.cfi_endproc
 3488              	.LFE140:
 3490              		.section	.text.HAL_MultiProcessor_Init,"ax",%progbits
 3491              		.align	1
 3492              		.global	HAL_MultiProcessor_Init
 3493              		.syntax unified
 3494              		.thumb
 3495              		.thumb_func
 3496              		.fpu fpv5-d16
 3498              	HAL_MultiProcessor_Init:
 3499              	.LFB141:
 441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the UART handle allocation */
 3500              		.loc 1 441 0
 3501              		.cfi_startproc
 3502              		@ args = 0, pretend = 0, frame = 0
 3503              		@ frame_needed = 0, uses_anonymous_args = 0
 3504              	.LVL322:
 443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3505              		.loc 1 443 0
 3506 0000 0028     		cmp	r0, #0
 3507 0002 42D0     		beq	.L331
 441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the UART handle allocation */
 3508              		.loc 1 441 0
 3509 0004 70B5     		push	{r4, r5, r6, lr}
 3510              		.cfi_def_cfa_offset 16
 3511              		.cfi_offset 4, -16
 3512              		.cfi_offset 5, -12
 3513              		.cfi_offset 6, -8
 3514              		.cfi_offset 14, -4
 3515 0006 0446     		mov	r4, r0
 3516 0008 1546     		mov	r5, r2
 3517 000a 0E46     		mov	r6, r1
 451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3518              		.loc 1 451 0
 3519 000c 90F86930 		ldrb	r3, [r0, #105]	@ zero_extendqisi2
 3520 0010 53B3     		cbz	r3, .L336
 3521              	.LVL323:
 3522              	.L328:
 460:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3523              		.loc 1 460 0
 3524 0012 2423     		movs	r3, #36
 3525 0014 84F86930 		strb	r3, [r4, #105]
 463:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3526              		.loc 1 463 0
 3527 0018 2268     		ldr	r2, [r4]
 3528 001a 1368     		ldr	r3, [r2]
 3529 001c 23F00103 		bic	r3, r3, #1
 3530 0020 1360     		str	r3, [r2]
 466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3531              		.loc 1 466 0
 3532 0022 2046     		mov	r0, r4
 3533 0024 FFF7FEFF 		bl	UART_SetConfig
 3534              	.LVL324:
 3535 0028 0128     		cmp	r0, #1
 3536 002a 1CD0     		beq	.L327
 471:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3537              		.loc 1 471 0
 3538 002c 636A     		ldr	r3, [r4, #36]
 3539 002e 03BB     		cbnz	r3, .L337
 3540              	.L329:
 479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR3, (USART_CR3_SCEN | USART_CR3_HDSEL | USART_CR3_IREN));
 3541              		.loc 1 479 0
 3542 0030 2268     		ldr	r2, [r4]
 3543 0032 5368     		ldr	r3, [r2, #4]
 3544 0034 23F49043 		bic	r3, r3, #18432
 3545 0038 5360     		str	r3, [r2, #4]
 480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3546              		.loc 1 480 0
 3547 003a 2268     		ldr	r2, [r4]
 3548 003c 9368     		ldr	r3, [r2, #8]
 3549 003e 23F02A03 		bic	r3, r3, #42
 3550 0042 9360     		str	r3, [r2, #8]
 482:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3551              		.loc 1 482 0
 3552 0044 B5F5006F 		cmp	r5, #2048
 3553 0048 17D0     		beq	.L338
 3554              	.L330:
 489:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3555              		.loc 1 489 0
 3556 004a 2368     		ldr	r3, [r4]
 3557 004c 1A68     		ldr	r2, [r3]
 3558 004e 22F40062 		bic	r2, r2, #2048
 3559 0052 1543     		orrs	r5, r5, r2
 3560              	.LVL325:
 3561 0054 1D60     		str	r5, [r3]
 492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3562              		.loc 1 492 0
 3563 0056 2268     		ldr	r2, [r4]
 3564 0058 1368     		ldr	r3, [r2]
 3565 005a 43F00103 		orr	r3, r3, #1
 3566 005e 1360     		str	r3, [r2]
 495:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 3567              		.loc 1 495 0
 3568 0060 2046     		mov	r0, r4
 3569 0062 FFF7FEFF 		bl	UART_CheckIdleState
 3570              	.LVL326:
 3571              	.L327:
 496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3572              		.loc 1 496 0
 3573 0066 70BD     		pop	{r4, r5, r6, pc}
 3574              	.LVL327:
 3575              	.L336:
 454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3576              		.loc 1 454 0
 3577 0068 80F86830 		strb	r3, [r0, #104]
 457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 3578              		.loc 1 457 0
 3579 006c FFF7FEFF 		bl	HAL_UART_MspInit
 3580              	.LVL328:
 3581 0070 CFE7     		b	.L328
 3582              	.L337:
 473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 3583              		.loc 1 473 0
 3584 0072 2046     		mov	r0, r4
 3585 0074 FFF7FEFF 		bl	UART_AdvFeatureConfig
 3586              	.LVL329:
 3587 0078 DAE7     		b	.L329
 3588              	.L338:
 485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 3589              		.loc 1 485 0
 3590 007a 2368     		ldr	r3, [r4]
 3591 007c 5968     		ldr	r1, [r3, #4]
 3592 007e 21F07F41 		bic	r1, r1, #-16777216
 3593 0082 41EA0666 		orr	r6, r1, r6, lsl #24
 3594 0086 5E60     		str	r6, [r3, #4]
 3595 0088 DFE7     		b	.L330
 3596              	.LVL330:
 3597              	.L331:
 3598              		.cfi_def_cfa_offset 0
 3599              		.cfi_restore 4
 3600              		.cfi_restore 5
 3601              		.cfi_restore 6
 3602              		.cfi_restore 14
 445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 3603              		.loc 1 445 0
 3604 008a 0120     		movs	r0, #1
 3605              	.LVL331:
 496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3606              		.loc 1 496 0
 3607 008c 7047     		bx	lr
 3608              		.cfi_endproc
 3609              	.LFE141:
 3611              		.section	.text.HAL_RS485Ex_Init,"ax",%progbits
 3612              		.align	1
 3613              		.global	HAL_RS485Ex_Init
 3614              		.syntax unified
 3615              		.thumb
 3616              		.thumb_func
 3617              		.fpu fpv5-d16
 3619              	HAL_RS485Ex_Init:
 3620              	.LFB142:
 519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t temp = 0x0;
 3621              		.loc 1 519 0
 3622              		.cfi_startproc
 3623              		@ args = 0, pretend = 0, frame = 0
 3624              		@ frame_needed = 0, uses_anonymous_args = 0
 3625              	.LVL332:
 523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3626              		.loc 1 523 0
 3627 0000 0028     		cmp	r0, #0
 3628 0002 3CD0     		beq	.L343
 519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   uint32_t temp = 0x0;
 3629              		.loc 1 519 0
 3630 0004 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 3631              		.cfi_def_cfa_offset 24
 3632              		.cfi_offset 3, -24
 3633              		.cfi_offset 4, -20
 3634              		.cfi_offset 5, -16
 3635              		.cfi_offset 6, -12
 3636              		.cfi_offset 7, -8
 3637              		.cfi_offset 14, -4
 3638 0006 0446     		mov	r4, r0
 3639 0008 1D46     		mov	r5, r3
 3640 000a 1646     		mov	r6, r2
 3641 000c 0F46     		mov	r7, r1
 539:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3642              		.loc 1 539 0
 3643 000e 90F86930 		ldrb	r3, [r0, #105]	@ zero_extendqisi2
 3644              	.LVL333:
 3645 0012 5BB3     		cbz	r3, .L348
 3646              	.LVL334:
 3647              	.L341:
 548:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3648              		.loc 1 548 0
 3649 0014 2423     		movs	r3, #36
 3650 0016 84F86930 		strb	r3, [r4, #105]
 551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3651              		.loc 1 551 0
 3652 001a 2268     		ldr	r2, [r4]
 3653 001c 1368     		ldr	r3, [r2]
 3654 001e 23F00103 		bic	r3, r3, #1
 3655 0022 1360     		str	r3, [r2]
 554:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3656              		.loc 1 554 0
 3657 0024 2046     		mov	r0, r4
 3658 0026 FFF7FEFF 		bl	UART_SetConfig
 3659              	.LVL335:
 3660 002a 0128     		cmp	r0, #1
 3661 002c 1DD0     		beq	.L340
 559:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
 3662              		.loc 1 559 0
 3663 002e 636A     		ldr	r3, [r4, #36]
 3664 0030 0BBB     		cbnz	r3, .L349
 3665              	.L342:
 565:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3666              		.loc 1 565 0
 3667 0032 2268     		ldr	r2, [r4]
 3668 0034 9368     		ldr	r3, [r2, #8]
 3669 0036 43F48043 		orr	r3, r3, #16384
 3670 003a 9360     		str	r3, [r2, #8]
 568:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3671              		.loc 1 568 0
 3672 003c 2268     		ldr	r2, [r4]
 3673 003e 9368     		ldr	r3, [r2, #8]
 3674 0040 23F40043 		bic	r3, r3, #32768
 3675 0044 3B43     		orrs	r3, r3, r7
 3676 0046 9360     		str	r3, [r2, #8]
 3677              	.LVL336:
 572:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   MODIFY_REG(huart->Instance->CR1, (USART_CR1_DEDT|USART_CR1_DEAT), temp);
 3678              		.loc 1 572 0
 3679 0048 2D04     		lsls	r5, r5, #16
 3680              	.LVL337:
 3681 004a 45EA4652 		orr	r2, r5, r6, lsl #21
 3682              	.LVL338:
 573:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3683              		.loc 1 573 0
 3684 004e 2368     		ldr	r3, [r4]
 3685 0050 1968     		ldr	r1, [r3]
 3686 0052 0C4D     		ldr	r5, .L350
 3687 0054 0D40     		ands	r5, r5, r1
 3688 0056 2A43     		orrs	r2, r2, r5
 3689              	.LVL339:
 3690 0058 1A60     		str	r2, [r3]
 576:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3691              		.loc 1 576 0
 3692 005a 2268     		ldr	r2, [r4]
 3693 005c 1368     		ldr	r3, [r2]
 3694 005e 43F00103 		orr	r3, r3, #1
 3695 0062 1360     		str	r3, [r2]
 579:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 3696              		.loc 1 579 0
 3697 0064 2046     		mov	r0, r4
 3698 0066 FFF7FEFF 		bl	UART_CheckIdleState
 3699              	.LVL340:
 3700              	.L340:
 580:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3701              		.loc 1 580 0
 3702 006a F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 3703              	.LVL341:
 3704              	.L348:
 542:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3705              		.loc 1 542 0
 3706 006c 80F86830 		strb	r3, [r0, #104]
 545:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 3707              		.loc 1 545 0
 3708 0070 FFF7FEFF 		bl	HAL_UART_MspInit
 3709              	.LVL342:
 3710 0074 CEE7     		b	.L341
 3711              	.L349:
 561:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 3712              		.loc 1 561 0
 3713 0076 2046     		mov	r0, r4
 3714 0078 FFF7FEFF 		bl	UART_AdvFeatureConfig
 3715              	.LVL343:
 3716 007c D9E7     		b	.L342
 3717              	.LVL344:
 3718              	.L343:
 3719              		.cfi_def_cfa_offset 0
 3720              		.cfi_restore 3
 3721              		.cfi_restore 4
 3722              		.cfi_restore 5
 3723              		.cfi_restore 6
 3724              		.cfi_restore 7
 3725              		.cfi_restore 14
 525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 3726              		.loc 1 525 0
 3727 007e 0120     		movs	r0, #1
 3728              	.LVL345:
 580:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3729              		.loc 1 580 0
 3730 0080 7047     		bx	lr
 3731              	.L351:
 3732 0082 00BF     		.align	2
 3733              	.L350:
 3734 0084 FFFF00FC 		.word	-67043329
 3735              		.cfi_endproc
 3736              	.LFE142:
 3738              		.section	.text.HAL_MultiProcessor_EnableMuteMode,"ax",%progbits
 3739              		.align	1
 3740              		.global	HAL_MultiProcessor_EnableMuteMode
 3741              		.syntax unified
 3742              		.thumb
 3743              		.thumb_func
 3744              		.fpu fpv5-d16
 3746              	HAL_MultiProcessor_EnableMuteMode:
 3747              	.LFB173:
1749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Process Locked */
 3748              		.loc 1 1749 0
 3749              		.cfi_startproc
 3750              		@ args = 0, pretend = 0, frame = 0
 3751              		@ frame_needed = 0, uses_anonymous_args = 0
 3752              	.LVL346:
 3753 0000 08B5     		push	{r3, lr}
 3754              		.cfi_def_cfa_offset 8
 3755              		.cfi_offset 3, -8
 3756              		.cfi_offset 14, -4
1751:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3757              		.loc 1 1751 0
 3758 0002 90F86830 		ldrb	r3, [r0, #104]	@ zero_extendqisi2
 3759 0006 012B     		cmp	r3, #1
 3760 0008 10D0     		beq	.L354
1751:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3761              		.loc 1 1751 0 is_stmt 0 discriminator 2
 3762 000a 0123     		movs	r3, #1
 3763 000c 80F86830 		strb	r3, [r0, #104]
1753:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3764              		.loc 1 1753 0 is_stmt 1 discriminator 2
 3765 0010 2423     		movs	r3, #36
 3766 0012 80F86930 		strb	r3, [r0, #105]
1756:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3767              		.loc 1 1756 0 discriminator 2
 3768 0016 0268     		ldr	r2, [r0]
 3769 0018 1368     		ldr	r3, [r2]
 3770 001a 43F40053 		orr	r3, r3, #8192
 3771 001e 1360     		str	r3, [r2]
1758:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3772              		.loc 1 1758 0 discriminator 2
 3773 0020 2023     		movs	r3, #32
 3774 0022 80F86930 		strb	r3, [r0, #105]
1760:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 3775              		.loc 1 1760 0 discriminator 2
 3776 0026 FFF7FEFF 		bl	UART_CheckIdleState
 3777              	.LVL347:
 3778              	.L353:
1761:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3779              		.loc 1 1761 0
 3780 002a 08BD     		pop	{r3, pc}
 3781              	.LVL348:
 3782              	.L354:
1751:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3783              		.loc 1 1751 0
 3784 002c 0220     		movs	r0, #2
 3785              	.LVL349:
 3786 002e FCE7     		b	.L353
 3787              		.cfi_endproc
 3788              	.LFE173:
 3790              		.section	.text.HAL_MultiProcessor_DisableMuteMode,"ax",%progbits
 3791              		.align	1
 3792              		.global	HAL_MultiProcessor_DisableMuteMode
 3793              		.syntax unified
 3794              		.thumb
 3795              		.thumb_func
 3796              		.fpu fpv5-d16
 3798              	HAL_MultiProcessor_DisableMuteMode:
 3799              	.LFB174:
1770:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Process Locked */
 3800              		.loc 1 1770 0
 3801              		.cfi_startproc
 3802              		@ args = 0, pretend = 0, frame = 0
 3803              		@ frame_needed = 0, uses_anonymous_args = 0
 3804              	.LVL350:
 3805 0000 08B5     		push	{r3, lr}
 3806              		.cfi_def_cfa_offset 8
 3807              		.cfi_offset 3, -8
 3808              		.cfi_offset 14, -4
1772:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3809              		.loc 1 1772 0
 3810 0002 90F86830 		ldrb	r3, [r0, #104]	@ zero_extendqisi2
 3811 0006 012B     		cmp	r3, #1
 3812 0008 10D0     		beq	.L358
1772:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3813              		.loc 1 1772 0 is_stmt 0 discriminator 2
 3814 000a 0123     		movs	r3, #1
 3815 000c 80F86830 		strb	r3, [r0, #104]
1774:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3816              		.loc 1 1774 0 is_stmt 1 discriminator 2
 3817 0010 2423     		movs	r3, #36
 3818 0012 80F86930 		strb	r3, [r0, #105]
1777:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3819              		.loc 1 1777 0 discriminator 2
 3820 0016 0268     		ldr	r2, [r0]
 3821 0018 1368     		ldr	r3, [r2]
 3822 001a 23F40053 		bic	r3, r3, #8192
 3823 001e 1360     		str	r3, [r2]
1779:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3824              		.loc 1 1779 0 discriminator 2
 3825 0020 2023     		movs	r3, #32
 3826 0022 80F86930 		strb	r3, [r0, #105]
1781:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 3827              		.loc 1 1781 0 discriminator 2
 3828 0026 FFF7FEFF 		bl	UART_CheckIdleState
 3829              	.LVL351:
 3830              	.L357:
1782:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3831              		.loc 1 1782 0
 3832 002a 08BD     		pop	{r3, pc}
 3833              	.LVL352:
 3834              	.L358:
1772:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3835              		.loc 1 1772 0
 3836 002c 0220     		movs	r0, #2
 3837              	.LVL353:
 3838 002e FCE7     		b	.L357
 3839              		.cfi_endproc
 3840              	.LFE174:
 3842              		.section	.text.HAL_HalfDuplex_EnableTransmitter,"ax",%progbits
 3843              		.align	1
 3844              		.global	HAL_HalfDuplex_EnableTransmitter
 3845              		.syntax unified
 3846              		.thumb
 3847              		.thumb_func
 3848              		.fpu fpv5-d16
 3850              	HAL_HalfDuplex_EnableTransmitter:
 3851              	.LFB181:
2043:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2044:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
2045:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief  Enables the UART transmitter and disables the UART receiver.
2046:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param  huart: UART handle
2047:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
2048:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval None
2049:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
2050:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_HalfDuplex_EnableTransmitter(UART_HandleTypeDef *huart)
2051:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 3852              		.loc 1 2051 0
 3853              		.cfi_startproc
 3854              		@ args = 0, pretend = 0, frame = 0
 3855              		@ frame_needed = 0, uses_anonymous_args = 0
 3856              		@ link register save eliminated.
 3857              	.LVL354:
2052:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Process Locked */
2053:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_LOCK(huart);
 3858              		.loc 1 2053 0
 3859 0000 90F86830 		ldrb	r3, [r0, #104]	@ zero_extendqisi2
 3860 0004 012B     		cmp	r3, #1
 3861 0006 17D0     		beq	.L362
 3862              		.loc 1 2053 0 is_stmt 0 discriminator 2
 3863 0008 0123     		movs	r3, #1
 3864 000a 80F86830 		strb	r3, [r0, #104]
2054:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 3865              		.loc 1 2054 0 is_stmt 1 discriminator 2
 3866 000e 2423     		movs	r3, #36
 3867 0010 80F86930 		strb	r3, [r0, #105]
2055:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2056:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Clear TE and RE bits */
2057:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR1, (USART_CR1_TE | USART_CR1_RE));
 3868              		.loc 1 2057 0 discriminator 2
 3869 0014 0268     		ldr	r2, [r0]
 3870 0016 1368     		ldr	r3, [r2]
 3871 0018 23F00C03 		bic	r3, r3, #12
 3872 001c 1360     		str	r3, [r2]
2058:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Enable the USART's transmit interface by setting the TE bit in the USART CR1 register */
2059:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   SET_BIT(huart->Instance->CR1, USART_CR1_TE);
 3873              		.loc 1 2059 0 discriminator 2
 3874 001e 0268     		ldr	r2, [r0]
 3875 0020 1368     		ldr	r3, [r2]
 3876 0022 43F00803 		orr	r3, r3, #8
 3877 0026 1360     		str	r3, [r2]
2060:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2061:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState= HAL_UART_STATE_READY;
 3878              		.loc 1 2061 0 discriminator 2
 3879 0028 2023     		movs	r3, #32
 3880 002a 80F86930 		strb	r3, [r0, #105]
2062:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Process Unlocked */
2063:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UNLOCK(huart);
 3881              		.loc 1 2063 0 discriminator 2
 3882 002e 0023     		movs	r3, #0
 3883 0030 80F86830 		strb	r3, [r0, #104]
2064:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2065:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return HAL_OK;
 3884              		.loc 1 2065 0 discriminator 2
 3885 0034 1846     		mov	r0, r3
 3886              	.LVL355:
 3887 0036 7047     		bx	lr
 3888              	.LVL356:
 3889              	.L362:
2053:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 3890              		.loc 1 2053 0
 3891 0038 0220     		movs	r0, #2
 3892              	.LVL357:
2066:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 3893              		.loc 1 2066 0
 3894 003a 7047     		bx	lr
 3895              		.cfi_endproc
 3896              	.LFE181:
 3898              		.section	.text.HAL_HalfDuplex_EnableReceiver,"ax",%progbits
 3899              		.align	1
 3900              		.global	HAL_HalfDuplex_EnableReceiver
 3901              		.syntax unified
 3902              		.thumb
 3903              		.thumb_func
 3904              		.fpu fpv5-d16
 3906              	HAL_HalfDuplex_EnableReceiver:
 3907              	.LFB182:
2067:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2068:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
2069:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief  Enables the UART receiver and disables the UART transmitter.
2070:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param  huart: UART handle
2071:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
2072:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
2073:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_HalfDuplex_EnableReceiver(UART_HandleTypeDef *huart)
2074:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 3908              		.loc 1 2074 0
 3909              		.cfi_startproc
 3910              		@ args = 0, pretend = 0, frame = 0
 3911              		@ frame_needed = 0, uses_anonymous_args = 0
 3912              		@ link register save eliminated.
 3913              	.LVL358:
2075:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Process Locked */
2076:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_LOCK(huart);
 3914              		.loc 1 2076 0
 3915 0000 90F86830 		ldrb	r3, [r0, #104]	@ zero_extendqisi2
 3916 0004 012B     		cmp	r3, #1
 3917 0006 17D0     		beq	.L365
 3918              		.loc 1 2076 0 is_stmt 0 discriminator 2
 3919 0008 0123     		movs	r3, #1
 3920 000a 80F86830 		strb	r3, [r0, #104]
2077:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 3921              		.loc 1 2077 0 is_stmt 1 discriminator 2
 3922 000e 2423     		movs	r3, #36
 3923 0010 80F86930 		strb	r3, [r0, #105]
2078:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2079:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Clear TE and RE bits */
2080:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   CLEAR_BIT(huart->Instance->CR1, (USART_CR1_TE | USART_CR1_RE));
 3924              		.loc 1 2080 0 discriminator 2
 3925 0014 0268     		ldr	r2, [r0]
 3926 0016 1368     		ldr	r3, [r2]
 3927 0018 23F00C03 		bic	r3, r3, #12
 3928 001c 1360     		str	r3, [r2]
2081:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Enable the USART's receive interface by setting the RE bit in the USART CR1 register */
2082:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   SET_BIT(huart->Instance->CR1, USART_CR1_RE);
 3929              		.loc 1 2082 0 discriminator 2
 3930 001e 0268     		ldr	r2, [r0]
 3931 0020 1368     		ldr	r3, [r2]
 3932 0022 43F00403 		orr	r3, r3, #4
 3933 0026 1360     		str	r3, [r2]
2083:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2084:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_READY;
 3934              		.loc 1 2084 0 discriminator 2
 3935 0028 2023     		movs	r3, #32
 3936 002a 80F86930 		strb	r3, [r0, #105]
2085:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Process Unlocked */
2086:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UNLOCK(huart);
 3937              		.loc 1 2086 0 discriminator 2
 3938 002e 0023     		movs	r3, #0
 3939 0030 80F86830 		strb	r3, [r0, #104]
2087:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2088:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return HAL_OK;
 3940              		.loc 1 2088 0 discriminator 2
 3941 0034 1846     		mov	r0, r3
 3942              	.LVL359:
 3943 0036 7047     		bx	lr
 3944              	.LVL360:
 3945              	.L365:
2076:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 3946              		.loc 1 2076 0
 3947 0038 0220     		movs	r0, #2
 3948              	.LVL361:
2089:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 3949              		.loc 1 2089 0
 3950 003a 7047     		bx	lr
 3951              		.cfi_endproc
 3952              	.LFE182:
 3954              		.section	.text.HAL_LIN_SendBreak,"ax",%progbits
 3955              		.align	1
 3956              		.global	HAL_LIN_SendBreak
 3957              		.syntax unified
 3958              		.thumb
 3959              		.thumb_func
 3960              		.fpu fpv5-d16
 3962              	HAL_LIN_SendBreak:
 3963              	.LFB183:
2090:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2091:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2092:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
2093:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief  Transmits break characters.
2094:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param  huart: UART handle
2095:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
2096:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
2097:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_LIN_SendBreak(UART_HandleTypeDef *huart)
2098:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 3964              		.loc 1 2098 0
 3965              		.cfi_startproc
 3966              		@ args = 0, pretend = 0, frame = 0
 3967              		@ frame_needed = 0, uses_anonymous_args = 0
 3968              		@ link register save eliminated.
 3969              	.LVL362:
2099:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the parameters */
2100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   assert_param(IS_UART_INSTANCE(huart->Instance));
2101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Process Locked */
2103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_LOCK(huart);
 3970              		.loc 1 2103 0
 3971 0000 90F86830 		ldrb	r3, [r0, #104]	@ zero_extendqisi2
 3972 0004 012B     		cmp	r3, #1
 3973 0006 12D0     		beq	.L368
 3974              		.loc 1 2103 0 is_stmt 0 discriminator 2
 3975 0008 0123     		movs	r3, #1
 3976 000a 80F86830 		strb	r3, [r0, #104]
2104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 3977              		.loc 1 2105 0 is_stmt 1 discriminator 2
 3978 000e 2423     		movs	r3, #36
 3979 0010 80F86930 		strb	r3, [r0, #105]
2106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Send break characters */
2108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   SET_BIT(huart->Instance->RQR, UART_SENDBREAK_REQUEST);
 3980              		.loc 1 2108 0 discriminator 2
 3981 0014 0268     		ldr	r2, [r0]
 3982 0016 9369     		ldr	r3, [r2, #24]
 3983 0018 43F00203 		orr	r3, r3, #2
 3984 001c 9361     		str	r3, [r2, #24]
2109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_READY;
 3985              		.loc 1 2110 0 discriminator 2
 3986 001e 2023     		movs	r3, #32
 3987 0020 80F86930 		strb	r3, [r0, #105]
2111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Process Unlocked */
2113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UNLOCK(huart);
 3988              		.loc 1 2113 0 discriminator 2
 3989 0024 0023     		movs	r3, #0
 3990 0026 80F86830 		strb	r3, [r0, #104]
2114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return HAL_OK;
 3991              		.loc 1 2115 0 discriminator 2
 3992 002a 1846     		mov	r0, r3
 3993              	.LVL363:
 3994 002c 7047     		bx	lr
 3995              	.LVL364:
 3996              	.L368:
2103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
 3997              		.loc 1 2103 0
 3998 002e 0220     		movs	r0, #2
 3999              	.LVL365:
2116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 4000              		.loc 1 2116 0
 4001 0030 7047     		bx	lr
 4002              		.cfi_endproc
 4003              	.LFE183:
 4005              		.section	.text.HAL_MultiProcessorEx_AddressLength_Set,"ax",%progbits
 4006              		.align	1
 4007              		.global	HAL_MultiProcessorEx_AddressLength_Set
 4008              		.syntax unified
 4009              		.thumb
 4010              		.thumb_func
 4011              		.fpu fpv5-d16
 4013              	HAL_MultiProcessorEx_AddressLength_Set:
 4014              	.LFB184:
2117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** /**
2119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @brief By default in multiprocessor mode, when the wake up method is set
2120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *        to address mark, the UART handles only 4-bit long addresses detection;
2121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *        this API allows to enable longer addresses detection (6-, 7- or 8-bit
2122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *        long).
2123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @note  Addresses detection lengths are: 6-bit address detection in 7-bit data mode,
2124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *        7-bit address detection in 8-bit data mode, 8-bit address detection in 9-bit data mode.
2125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param huart: UART handle.
2126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @param AddressLength: this parameter can be one of the following values:
2127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *          @arg @ref UART_ADDRESS_DETECT_4B 4-bit long address
2128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   *          @arg @ref UART_ADDRESS_DETECT_7B 6-, 7- or 8-bit long address
2129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   * @retval HAL status
2130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   */
2131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** HAL_StatusTypeDef HAL_MultiProcessorEx_AddressLength_Set(UART_HandleTypeDef *huart, uint32_t Addres
2132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** {
 4015              		.loc 1 2132 0
 4016              		.cfi_startproc
 4017              		@ args = 0, pretend = 0, frame = 0
 4018              		@ frame_needed = 0, uses_anonymous_args = 0
 4019              	.LVL366:
2133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the UART handle allocation */
2134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   if(huart == NULL)
 4020              		.loc 1 2134 0
 4021 0000 B0B1     		cbz	r0, .L371
2132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the UART handle allocation */
 4022              		.loc 1 2132 0
 4023 0002 08B5     		push	{r3, lr}
 4024              		.cfi_def_cfa_offset 8
 4025              		.cfi_offset 3, -8
 4026              		.cfi_offset 14, -4
2135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   {
2136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****     return HAL_ERROR;
2137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
2138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Check the address length parameter */
2140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   assert_param(IS_UART_ADDRESSLENGTH_DETECT(AddressLength));
2141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   huart->gState = HAL_UART_STATE_BUSY;
 4027              		.loc 1 2142 0
 4028 0004 2423     		movs	r3, #36
 4029 0006 80F86930 		strb	r3, [r0, #105]
2143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Disable the Peripheral */
2145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UART_DISABLE(huart);
 4030              		.loc 1 2145 0
 4031 000a 0268     		ldr	r2, [r0]
 4032 000c 1368     		ldr	r3, [r2]
 4033 000e 23F00103 		bic	r3, r3, #1
 4034 0012 1360     		str	r3, [r2]
2146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Set the address length */
2148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   MODIFY_REG(huart->Instance->CR2, USART_CR2_ADDM7, AddressLength);
 4035              		.loc 1 2148 0
 4036 0014 0268     		ldr	r2, [r0]
 4037 0016 5368     		ldr	r3, [r2, #4]
 4038 0018 23F01003 		bic	r3, r3, #16
 4039 001c 1943     		orrs	r1, r1, r3
 4040              	.LVL367:
 4041 001e 5160     		str	r1, [r2, #4]
2149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* Enable the Peripheral */
2151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   __HAL_UART_ENABLE(huart);
 4042              		.loc 1 2151 0
 4043 0020 0268     		ldr	r2, [r0]
 4044 0022 1368     		ldr	r3, [r2]
 4045 0024 43F00103 		orr	r3, r3, #1
 4046 0028 1360     		str	r3, [r2]
2152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** 
2153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   /* TEACK and/or REACK to check before moving huart->gState to Ready */
2154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   return (UART_CheckIdleState(huart));
 4047              		.loc 1 2154 0
 4048 002a FFF7FEFF 		bl	UART_CheckIdleState
 4049              	.LVL368:
2155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c **** }
 4050              		.loc 1 2155 0
 4051 002e 08BD     		pop	{r3, pc}
 4052              	.LVL369:
 4053              	.L371:
 4054              		.cfi_def_cfa_offset 0
 4055              		.cfi_restore 3
 4056              		.cfi_restore 14
2136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_uart.c ****   }
 4057              		.loc 1 2136 0
 4058 0030 0120     		movs	r0, #1
 4059              	.LVL370:
 4060              		.loc 1 2155 0
 4061 0032 7047     		bx	lr
 4062              		.cfi_endproc
 4063              	.LFE184:
 4065              		.text
 4066              	.Letext0:
 4067              		.file 2 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 4068              		.file 3 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 4069              		.file 4 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h"
 4070              		.file 5 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/system_stm
 4071              		.file 6 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f769x
 4072              		.file 7 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f7xx.
 4073              		.file 8 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 4074              		.file 9 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 4075              		.file 10 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 4076              		.file 11 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 4077              		.file 12 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_def.
 4078              		.file 13 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_dma.
 4079              		.file 14 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_uart
 4080              		.file 15 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal.h"
 4081              		.file 16 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_rcc.
DEFINED SYMBOLS
                            *ABS*:0000000000000000 stm32f7xx_hal_uart.c
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:17     .text.UART_Transmit_IT:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:23     .text.UART_Transmit_IT:0000000000000000 UART_Transmit_IT
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:110    .text.UART_EndTxTransfer:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:116    .text.UART_EndTxTransfer:0000000000000000 UART_EndTxTransfer
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:138    .text.UART_EndRxTransfer:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:144    .text.UART_EndRxTransfer:0000000000000000 UART_EndRxTransfer
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:171    .text.HAL_UART_MspInit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:178    .text.HAL_UART_MspInit:0000000000000000 HAL_UART_MspInit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:192    .text.HAL_UART_MspDeInit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:199    .text.HAL_UART_MspDeInit:0000000000000000 HAL_UART_MspDeInit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:213    .text.HAL_UART_DeInit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:220    .text.HAL_UART_DeInit:0000000000000000 HAL_UART_DeInit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:286    .text.HAL_UART_Transmit_IT:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:293    .text.HAL_UART_Transmit_IT:0000000000000000 HAL_UART_Transmit_IT
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:366    .text.HAL_UART_Receive_IT:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:373    .text.HAL_UART_Receive_IT:0000000000000000 HAL_UART_Receive_IT
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:503    .text.HAL_UART_Transmit_DMA:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:510    .text.HAL_UART_Transmit_DMA:0000000000000000 HAL_UART_Transmit_DMA
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:617    .text.HAL_UART_Transmit_DMA:0000000000000084 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1502   .text.UART_DMATransmitCplt:0000000000000000 UART_DMATransmitCplt
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1614   .text.UART_DMATxHalfCplt:0000000000000000 UART_DMATxHalfCplt
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1911   .text.UART_DMAError:0000000000000000 UART_DMAError
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:624    .text.HAL_UART_Receive_DMA:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:631    .text.HAL_UART_Receive_DMA:0000000000000000 HAL_UART_Receive_DMA
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:744    .text.HAL_UART_Receive_DMA:0000000000000090 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1664   .text.UART_DMAReceiveCplt:0000000000000000 UART_DMAReceiveCplt
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1861   .text.UART_DMARxHalfCplt:0000000000000000 UART_DMARxHalfCplt
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:751    .text.HAL_UART_DMAPause:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:758    .text.HAL_UART_DMAPause:0000000000000000 HAL_UART_DMAPause
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:837    .text.HAL_UART_DMAResume:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:844    .text.HAL_UART_DMAResume:0000000000000000 HAL_UART_DMAResume
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:929    .text.HAL_UART_DMAStop:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:936    .text.HAL_UART_DMAStop:0000000000000000 HAL_UART_DMAStop
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1016   .text.UART_WaitOnFlagUntilTimeout:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1023   .text.UART_WaitOnFlagUntilTimeout:0000000000000000 UART_WaitOnFlagUntilTimeout
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1097   .text.HAL_UART_Transmit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1104   .text.HAL_UART_Transmit:0000000000000000 HAL_UART_Transmit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1265   .text.HAL_UART_Receive:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1272   .text.HAL_UART_Receive:0000000000000000 HAL_UART_Receive
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1475   .text.HAL_UART_TxCpltCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1482   .text.HAL_UART_TxCpltCallback:0000000000000000 HAL_UART_TxCpltCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1496   .text.UART_DMATransmitCplt:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1552   .text.UART_EndTransmit_IT:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1558   .text.UART_EndTransmit_IT:0000000000000000 UART_EndTransmit_IT
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1587   .text.HAL_UART_TxHalfCpltCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1594   .text.HAL_UART_TxHalfCpltCallback:0000000000000000 HAL_UART_TxHalfCpltCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1608   .text.UART_DMATxHalfCplt:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1637   .text.HAL_UART_RxCpltCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1644   .text.HAL_UART_RxCpltCallback:0000000000000000 HAL_UART_RxCpltCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1658   .text.UART_DMAReceiveCplt:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1716   .text.UART_Receive_IT:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1722   .text.UART_Receive_IT:0000000000000000 UART_Receive_IT
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1834   .text.HAL_UART_RxHalfCpltCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1841   .text.HAL_UART_RxHalfCpltCallback:0000000000000000 HAL_UART_RxHalfCpltCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1855   .text.UART_DMARxHalfCplt:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1884   .text.HAL_UART_ErrorCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1891   .text.HAL_UART_ErrorCallback:0000000000000000 HAL_UART_ErrorCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1905   .text.UART_DMAError:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1981   .text.HAL_UART_IRQHandler:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:1988   .text.HAL_UART_IRQHandler:0000000000000000 HAL_UART_IRQHandler
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2226   .text.HAL_UART_IRQHandler:0000000000000134 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2237   .text.UART_DMAAbortOnError:0000000000000000 UART_DMAAbortOnError
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2231   .text.UART_DMAAbortOnError:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2265   .text.HAL_MultiProcessor_EnterMuteMode:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2272   .text.HAL_MultiProcessor_EnterMuteMode:0000000000000000 HAL_MultiProcessor_EnterMuteMode
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2291   .text.HAL_UART_GetState:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2298   .text.HAL_UART_GetState:0000000000000000 HAL_UART_GetState
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2320   .text.HAL_UART_GetError:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2327   .text.HAL_UART_GetError:0000000000000000 HAL_UART_GetError
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2344   .text.UART_SetConfig:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2351   .text.UART_SetConfig:0000000000000000 UART_SetConfig
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2447   .text.UART_SetConfig:000000000000008e $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2451   .text.UART_SetConfig:0000000000000092 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2481   .text.UART_SetConfig:00000000000000b6 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2757   .text.UART_SetConfig:0000000000000220 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2779   .text.UART_SetConfig:0000000000000236 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2850   .text.UART_SetConfig:000000000000028c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2863   .text.UART_SetConfig:00000000000002b4 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2976   .text.UART_SetConfig:0000000000000358 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2981   .text.UART_AdvFeatureConfig:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2988   .text.UART_AdvFeatureConfig:0000000000000000 UART_AdvFeatureConfig
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3111   .text.UART_CheckIdleState:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3118   .text.UART_CheckIdleState:0000000000000000 UART_CheckIdleState
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3183   .text.HAL_UART_Init:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3190   .text.HAL_UART_Init:0000000000000000 HAL_UART_Init
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3278   .text.HAL_HalfDuplex_Init:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3285   .text.HAL_HalfDuplex_Init:0000000000000000 HAL_HalfDuplex_Init
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3379   .text.HAL_LIN_Init:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3386   .text.HAL_LIN_Init:0000000000000000 HAL_LIN_Init
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3491   .text.HAL_MultiProcessor_Init:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3498   .text.HAL_MultiProcessor_Init:0000000000000000 HAL_MultiProcessor_Init
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3612   .text.HAL_RS485Ex_Init:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3619   .text.HAL_RS485Ex_Init:0000000000000000 HAL_RS485Ex_Init
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3734   .text.HAL_RS485Ex_Init:0000000000000084 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3739   .text.HAL_MultiProcessor_EnableMuteMode:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3746   .text.HAL_MultiProcessor_EnableMuteMode:0000000000000000 HAL_MultiProcessor_EnableMuteMode
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3791   .text.HAL_MultiProcessor_DisableMuteMode:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3798   .text.HAL_MultiProcessor_DisableMuteMode:0000000000000000 HAL_MultiProcessor_DisableMuteMode
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3843   .text.HAL_HalfDuplex_EnableTransmitter:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3850   .text.HAL_HalfDuplex_EnableTransmitter:0000000000000000 HAL_HalfDuplex_EnableTransmitter
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3899   .text.HAL_HalfDuplex_EnableReceiver:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3906   .text.HAL_HalfDuplex_EnableReceiver:0000000000000000 HAL_HalfDuplex_EnableReceiver
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3955   .text.HAL_LIN_SendBreak:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:3962   .text.HAL_LIN_SendBreak:0000000000000000 HAL_LIN_SendBreak
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:4006   .text.HAL_MultiProcessorEx_AddressLength_Set:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:4013   .text.HAL_MultiProcessorEx_AddressLength_Set:0000000000000000 HAL_MultiProcessorEx_AddressLength_Set
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2494   .text.UART_SetConfig:00000000000000c3 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2494   .text.UART_SetConfig:00000000000000c4 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2767   .text.UART_SetConfig:0000000000000229 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2767   .text.UART_SetConfig:000000000000022a $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2788   .text.UART_SetConfig:000000000000023f $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cciifsWS.s:2788   .text.UART_SetConfig:0000000000000240 $t
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
HAL_DMA_Start_IT
HAL_DMA_Abort
HAL_GetTick
HAL_DMA_Abort_IT
HAL_RCC_GetPCLK1Freq
HAL_RCC_GetPCLK2Freq
HAL_RCC_GetSysClockFreq

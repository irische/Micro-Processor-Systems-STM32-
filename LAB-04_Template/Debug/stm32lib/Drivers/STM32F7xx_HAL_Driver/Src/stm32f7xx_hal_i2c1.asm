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
  12              		.file	"stm32f7xx_hal_i2c1.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.I2C_TransferConfig,"ax",%progbits
  17              		.align	1
  18              		.syntax unified
  19              		.thumb
  20              		.thumb_func
  21              		.fpu fpv5-d16
  23              	I2C_TransferConfig:
  24              	.LFB190:
  25              		.file 1 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.
   1:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
   2:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   ******************************************************************************
   3:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @file    stm32f7xx_hal_i2c.c
   4:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @author  MCD Application Team
   5:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @version V1.0.3
   6:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @date    13-November-2015
   7:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief   I2C HAL module driver.
   8:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *          This file provides firmware functions to manage the following 
   9:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *          functionalities of the Inter Integrated Circuit (I2C) peripheral:
  10:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *           + Initialization and de-initialization functions
  11:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *           + IO operation functions
  12:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *           + Peripheral State and Errors functions
  13:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *         
  14:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   @verbatim
  15:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   ==============================================================================
  16:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****                         ##### How to use this driver #####
  17:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   ==============================================================================
  18:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     [..]
  19:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     The I2C HAL driver can be used as follows:
  20:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
  21:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     (#) Declare a I2C_HandleTypeDef handle structure, for example:
  22:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         I2C_HandleTypeDef  hi2c; 
  23:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
  24:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     (#)Initialize the I2C low level resources by implement the HAL_I2C_MspInit ()API:
  25:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (##) Enable the I2Cx interface clock
  26:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (##) I2C pins configuration
  27:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             (+++) Enable the clock for the I2C GPIOs
  28:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             (+++) Configure I2C pins as alternate function open-drain
  29:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (##) NVIC configuration if you need to use interrupt process
  30:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             (+++) Configure the I2Cx interrupt priority
  31:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             (+++) Enable the NVIC I2C IRQ Channel
  32:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (##) DMA Configuration if you need to use DMA process
  33:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             (+++) Declare a DMA_HandleTypeDef handle structure for the transmit or receive stream
  34:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             (+++) Enable the DMAx interface clock using
  35:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             (+++) Configure the DMA handle parameters
  36:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             (+++) Configure the DMA Tx or Rx Stream
  37:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             (+++) Associate the initialized DMA handle to the hi2c DMA Tx or Rx handle
  38:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             (+++) Configure the priority and enable the NVIC for the transfer complete interrupt on
  39:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
  40:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     (#) Configure the Communication Clock Timing, Own Address1, Master Addressing mode, Dual Addres
  41:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         Own Address2, Own Address2 Mask, General call and Nostretch mode in the hi2c Init structure
  42:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
  43:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     (#) Initialize the I2C registers by calling the HAL_I2C_Init(), configures also the low level H
  44:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (GPIO, CLOCK, NVIC...etc) by calling the customed HAL_I2C_MspInit(&hi2c) API.
  45:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
  46:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     (#) To check if target device is ready for communication, use the function HAL_I2C_IsDeviceRead
  47:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
  48:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     (#) For I2C IO and IO MEM operations, three operation modes are available within this driver :
  49:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
  50:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     *** Polling mode IO operation ***
  51:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     =================================
  52:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     [..]
  53:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Transmit in master mode an amount of data in blocking mode using HAL_I2C_Master_Transmit(
  54:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Receive in master mode an amount of data in blocking mode using HAL_I2C_Master_Receive()
  55:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Transmit in slave mode an amount of data in blocking mode using HAL_I2C_Slave_Transmit()
  56:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Receive in slave mode an amount of data in blocking mode using HAL_I2C_Slave_Receive()
  57:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
  58:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     *** Polling mode IO MEM operation ***
  59:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     =====================================
  60:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     [..]
  61:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Write an amount of data in blocking mode to a specific memory address using HAL_I2C_Mem_W
  62:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Read an amount of data in blocking mode from a specific memory address using HAL_I2C_Mem_
  63:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
  64:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
  65:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     *** Interrupt mode IO operation ***
  66:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     ===================================
  67:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     [..]
  68:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Transmit in master mode an amount of data in non blocking mode using HAL_I2C_Master_Trans
  69:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) At transmission end of transfer, HAL_I2C_MasterTxCpltCallback is executed and user can
  70:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****            add his own code by customization of function pointer HAL_I2C_MasterTxCpltCallback
  71:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Receive in master mode an amount of data in non blocking mode using HAL_I2C_Master_Receiv
  72:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) At reception end of transfer, HAL_I2C_MasterRxCpltCallback is executed and user can
  73:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****            add his own code by customization of function pointer HAL_I2C_MasterRxCpltCallback
  74:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Transmit in slave mode an amount of data in non blocking mode using HAL_I2C_Slave_Transmi
  75:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) At transmission end of transfer, HAL_I2C_SlaveTxCpltCallback is executed and user can
  76:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****            add his own code by customization of function pointer HAL_I2C_SlaveTxCpltCallback
  77:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Receive in slave mode an amount of data in non blocking mode using HAL_I2C_Slave_Receive_
  78:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) At reception end of transfer, HAL_I2C_SlaveRxCpltCallback is executed and user can
  79:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****            add his own code by customization of function pointer HAL_I2C_SlaveRxCpltCallback
  80:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) In case of transfer Error, HAL_I2C_ErrorCallback() function is executed and user can
  81:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****            add his own code by customization of function pointer HAL_I2C_ErrorCallback
  82:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
  83:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     *** Interrupt mode IO MEM operation ***
  84:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     =======================================
  85:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     [..]
  86:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Write an amount of data in no-blocking mode with Interrupt to a specific memory address u
  87:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           HAL_I2C_Mem_Write_IT()
  88:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) At Memory end of write transfer, HAL_I2C_MemTxCpltCallback is executed and user can
  89:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****            add his own code by customization of function pointer HAL_I2C_MemTxCpltCallback
  90:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Read an amount of data in no-blocking mode with Interrupt from a specific memory address 
  91:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           HAL_I2C_Mem_Read_IT()
  92:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) At Memory end of read transfer, HAL_I2C_MemRxCpltCallback is executed and user can
  93:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****            add his own code by customization of function pointer HAL_I2C_MemRxCpltCallback
  94:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) In case of transfer Error, HAL_I2C_ErrorCallback() function is executed and user can
  95:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****            add his own code by customization of function pointer HAL_I2C_ErrorCallback
  96:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
  97:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     *** DMA mode IO operation ***
  98:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     ==============================
  99:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     [..]
 100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Transmit in master mode an amount of data in non blocking mode (DMA) using
 101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           HAL_I2C_Master_Transmit_DMA()
 102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) At transmission end of transfer, HAL_I2C_MasterTxCpltCallback is executed and user can
 103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****            add his own code by customization of function pointer HAL_I2C_MasterTxCpltCallback
 104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Receive in master mode an amount of data in non blocking mode (DMA) using
 105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           HAL_I2C_Master_Receive_DMA()
 106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) At reception end of transfer, HAL_I2C_MasterRxCpltCallback is executed and user can
 107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****            add his own code by customization of function pointer HAL_I2C_MasterRxCpltCallback
 108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Transmit in slave mode an amount of data in non blocking mode (DMA) using
 109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           HAL_I2C_Slave_Transmit_DMA()
 110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) At transmission end of transfer, HAL_I2C_SlaveTxCpltCallback is executed and user can
 111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****            add his own code by customization of function pointer HAL_I2C_SlaveTxCpltCallback
 112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Receive in slave mode an amount of data in non blocking mode (DMA) using
 113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           HAL_I2C_Slave_Receive_DMA()
 114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) At reception end of transfer, HAL_I2C_SlaveRxCpltCallback is executed and user can
 115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****            add his own code by customization of function pointer HAL_I2C_SlaveRxCpltCallback
 116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) In case of transfer Error, HAL_I2C_ErrorCallback() function is executed and user can
 117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****            add his own code by customization of function pointer HAL_I2C_ErrorCallback
 118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     *** DMA mode IO MEM operation ***
 120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     =================================
 121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     [..]
 122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Write an amount of data in no-blocking mode with DMA to a specific memory address using
 123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           HAL_I2C_Mem_Write_DMA()
 124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) At Memory end of write transfer HAL_I2C_MemTxCpltCallback is executed and user can
 125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****            add his own code by customization of function pointer HAL_I2C_MemTxCpltCallback
 126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Read an amount of data in no-blocking mode with DMA from a specific memory address using
 127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           HAL_I2C_Mem_Read_DMA()
 128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) At Memory end of read transfer HAL_I2C_MemRxCpltCallback is executed and user can
 129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****            add his own code by customization of function pointer HAL_I2C_MemRxCpltCallback
 130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) In case of transfer Error, HAL_I2C_ErrorCallback() function is executed and user can
 131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****            add his own code by customization of function pointer HAL_I2C_ErrorCallback
 132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****      *** I2C HAL driver macros list ***
 135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****      ==================================
 136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****      [..]
 137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****        Below the list of most used macros in I2C HAL driver.
 138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) __HAL_I2C_ENABLE: Enable the I2C peripheral
 140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) __HAL_I2C_DISABLE: Disable the I2C peripheral
 141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) __HAL_I2C_GET_FLAG : Check whether the specified I2C flag is set or not
 142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) __HAL_I2C_CLEAR_FLAG : Clear the specified I2C pending flag
 143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) __HAL_I2C_ENABLE_IT: Enable the specified I2C interrupt
 144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) __HAL_I2C_DISABLE_IT: Disable the specified I2C interrupt
 145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****      [..]
 147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****        (@) You can refer to the I2C HAL driver header file for more useful macros
 148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   @endverbatim
 150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   ******************************************************************************
 151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @attention
 152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *
 153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * <h2><center>&copy; COPYRIGHT(c) 2015 STMicroelectronics</center></h2>
 154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *
 155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * Redistribution and use in source and binary forms, with or without modification,
 156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * are permitted provided that the following conditions are met:
 157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *   1. Redistributions of source code must retain the above copyright notice,
 158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *      this list of conditions and the following disclaimer.
 159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *   2. Redistributions in binary form must reproduce the above copyright notice,
 160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *      this list of conditions and the following disclaimer in the documentation
 161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *      and/or other materials provided with the distribution.
 162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *   3. Neither the name of STMicroelectronics nor the names of its contributors
 163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *      may be used to endorse or promote products derived from this software
 164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *      without specific prior written permission.
 165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *
 166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *
 177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   ******************************************************************************  
 178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */ 
 179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /* Includes ------------------------------------------------------------------*/
 181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** #include "stm32f7xx_hal.h"
 182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /** @addtogroup STM32F7xx_HAL_Driver
 184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @{
 185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
 186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /** @defgroup I2C I2C HAL module driver
 188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief I2C HAL module driver
 189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @{
 190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
 191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** #ifdef HAL_I2C_MODULE_ENABLED
 193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /* Private typedef -----------------------------------------------------------*/
 195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /* Private constants ---------------------------------------------------------*/
 196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /** @addtogroup I2C_Private_Constants I2C Private Constants
 197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @{
 198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
 199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** #define TIMING_CLEAR_MASK   ((uint32_t)0xF0FFFFFF)  /*<! I2C TIMING clear register Mask */
 200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** #define I2C_TIMEOUT_ADDR    ((uint32_t)10000)       /* 10 s  */
 201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** #define I2C_TIMEOUT_BUSY    ((uint32_t)25)          /* 25 ms */
 202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** #define I2C_TIMEOUT_DIR     ((uint32_t)25)          /* 25 ms */
 203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** #define I2C_TIMEOUT_RXNE    ((uint32_t)25)          /* 25 ms */
 204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** #define I2C_TIMEOUT_STOPF   ((uint32_t)25)          /* 25 ms */
 205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** #define I2C_TIMEOUT_TC      ((uint32_t)25)          /* 25 ms */
 206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** #define I2C_TIMEOUT_TCR     ((uint32_t)25)          /* 25 ms */
 207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** #define I2C_TIMEOUT_TXIS    ((uint32_t)25)          /* 25 ms */
 208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** #define I2C_TIMEOUT_FLAG    ((uint32_t)25)          /* 25 ms */
 209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
 210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @}
 211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */ 
 212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /* Private macro -------------------------------------------------------------*/
 214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /* Private variables ---------------------------------------------------------*/
 215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /* Private function prototypes -----------------------------------------------*/
 216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /** @addtogroup I2C_Private_Functions I2C Private Functions
 217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @{
 218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
 219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static void I2C_DMAMasterTransmitCplt(DMA_HandleTypeDef *hdma);
 220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static void I2C_DMAMasterReceiveCplt(DMA_HandleTypeDef *hdma);
 221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static void I2C_DMASlaveTransmitCplt(DMA_HandleTypeDef *hdma);
 222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static void I2C_DMASlaveReceiveCplt(DMA_HandleTypeDef *hdma);
 223:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static void I2C_DMAMemTransmitCplt(DMA_HandleTypeDef *hdma);
 224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static void I2C_DMAMemReceiveCplt(DMA_HandleTypeDef *hdma);
 225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static void I2C_DMAError(DMA_HandleTypeDef *hdma);
 226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_RequestMemoryWrite(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint1
 228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_RequestMemoryRead(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16
 229:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_WaitOnFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Flag, FlagSta
 230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_WaitOnTXISFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Timeout);
 231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_WaitOnRXNEFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Timeout);
 232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_WaitOnSTOPFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Timeout);
 233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_IsAcknowledgeFailed(I2C_HandleTypeDef *hi2c, uint32_t Timeout);
 234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_MasterTransmit_ISR(I2C_HandleTypeDef *hi2c);
 236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_MasterReceive_ISR(I2C_HandleTypeDef *hi2c);
 237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_SlaveTransmit_ISR(I2C_HandleTypeDef *hi2c);
 239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_SlaveReceive_ISR(I2C_HandleTypeDef *hi2c);
 240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static void I2C_TransferConfig(I2C_HandleTypeDef *hi2c,  uint16_t DevAddress, uint8_t Size, uint32_
 242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
 243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @}
 244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */ 
 245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /* Exported functions --------------------------------------------------------*/
 247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /** @defgroup I2C_Exported_Functions I2C Exported Functions
 249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @{
 250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
 251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /** @defgroup I2C_Exported_Functions_Group1 Initialization and de-initialization functions
 253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  *  @brief    Initialization and Configuration functions 
 254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  *
 255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** @verbatim    
 256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  ===============================================================================
 257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****               ##### Initialization and de-initialization functions #####
 258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  ===============================================================================
 259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     [..]  This subsection provides a set of functions allowing to initialize and 
 260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           de-initialize the I2Cx peripheral:
 261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) User must Implement HAL_I2C_MspInit() function in which he configures 
 263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           all related peripherals resources (CLOCK, GPIO, DMA, IT and NVIC ).
 264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Call the function HAL_I2C_Init() to configure the selected device with 
 266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           the selected configuration:
 267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) Clock Timing
 268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) Own Address 1
 269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) Addressing mode (Master, Slave)
 270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) Dual Addressing mode
 271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) Own Address 2
 272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) Own Address 2 Mask
 273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) General call mode
 274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) Nostretch mode
 275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (+) Call the function HAL_I2C_DeInit() to restore the default configuration 
 277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           of the selected I2Cx peripheral.       
 278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 279:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** @endverbatim
 280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @{
 281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
 282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 283:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
 284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Initializes the I2C according to the specified parameters 
 285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *         in the I2C_InitTypeDef and create the associated handle.
 286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
 287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
 288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
 289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
 290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_Init(I2C_HandleTypeDef *hi2c)
 291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** { 
 292:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check the I2C handle allocation */
 293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c == NULL)
 294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_ERROR;
 296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check the parameters */
 299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   assert_param(IS_I2C_ALL_INSTANCE(hi2c->Instance));
 300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   assert_param(IS_I2C_OWN_ADDRESS1(hi2c->Init.OwnAddress1));
 301:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   assert_param(IS_I2C_ADDRESSING_MODE(hi2c->Init.AddressingMode));
 302:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   assert_param(IS_I2C_DUAL_ADDRESS(hi2c->Init.DualAddressMode));
 303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   assert_param(IS_I2C_OWN_ADDRESS2(hi2c->Init.OwnAddress2));
 304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   assert_param(IS_I2C_OWN_ADDRESS2_MASK(hi2c->Init.OwnAddress2Masks));
 305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   assert_param(IS_I2C_GENERAL_CALL(hi2c->Init.GeneralCallMode));
 306:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   assert_param(IS_I2C_NO_STRETCH(hi2c->Init.NoStretchMode));
 307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_RESET)
 309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 310:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Allocate lock resource and initialize it */
 311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Lock = HAL_UNLOCKED;
 312:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Init the low level hardware : GPIO, CLOCK, CORTEX...etc */
 313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_I2C_MspInit(hi2c);
 314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 315:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->State = HAL_I2C_STATE_BUSY;
 317:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Disable the selected I2C peripheral */
 319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   __HAL_I2C_DISABLE(hi2c);
 320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 321:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /*---------------------------- I2Cx TIMINGR Configuration ------------------*/
 322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Configure I2Cx: Frequency range */
 323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->Instance->TIMINGR = hi2c->Init.Timing & TIMING_CLEAR_MASK;
 324:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 325:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /*---------------------------- I2Cx OAR1 Configuration ---------------------*/
 326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Configure I2Cx: Own Address1 and ack own address1 mode */
 327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->Instance->OAR1 &= ~I2C_OAR1_OA1EN;
 328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->Init.OwnAddress1 != 0)
 329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->Init.AddressingMode == I2C_ADDRESSINGMODE_7BIT)
 331:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->OAR1 = (I2C_OAR1_OA1EN | hi2c->Init.OwnAddress1);
 333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 334:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else /* I2C_ADDRESSINGMODE_10BIT */
 335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 336:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->OAR1 = (I2C_OAR1_OA1EN | I2C_OAR1_OA1MODE | hi2c->Init.OwnAddress1);
 337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 338:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /*---------------------------- I2Cx CR2 Configuration ----------------------*/
 341:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Configure I2Cx: Addressing Master mode */
 342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->Init.AddressingMode == I2C_ADDRESSINGMODE_10BIT)
 343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 344:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR2 = (I2C_CR2_ADD10);
 345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Enable the AUTOEND by default, and enable NACK (should be disable only during Slave process */
 347:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->Instance->CR2 |= (I2C_CR2_AUTOEND | I2C_CR2_NACK);
 348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /*---------------------------- I2Cx OAR2 Configuration ---------------------*/
 350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Configure I2Cx: Dual mode and Own Address2 */
 351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->Instance->OAR2 = (hi2c->Init.DualAddressMode | hi2c->Init.OwnAddress2 | (hi2c->Init.OwnAddr
 352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /*---------------------------- I2Cx CR1 Configuration ----------------------*/
 354:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Configure I2Cx: Generalcall and NoStretch mode */
 355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->Instance->CR1 = (hi2c->Init.GeneralCallMode | hi2c->Init.NoStretchMode);
 356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 357:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Enable the selected I2C peripheral */
 358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   __HAL_I2C_ENABLE(hi2c);
 359:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 360:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
 361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->State = HAL_I2C_STATE_READY;
 362:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   return HAL_OK;
 364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
 365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
 367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  DeInitializes the I2C peripheral. 
 368:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
 369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
 370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
 371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
 372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_DeInit(I2C_HandleTypeDef *hi2c)
 373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
 374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check the I2C handle allocation */
 375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c == NULL)
 376:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 377:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_ERROR;
 378:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 380:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check the parameters */
 381:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   assert_param(IS_I2C_ALL_INSTANCE(hi2c->Instance));
 382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->State = HAL_I2C_STATE_BUSY;
 384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Disable the I2C Peripheral Clock */
 386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   __HAL_I2C_DISABLE(hi2c);
 387:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* DeInit the low level hardware: GPIO, CLOCK, NVIC */
 389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   HAL_I2C_MspDeInit(hi2c);
 390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
 392:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->State = HAL_I2C_STATE_RESET;
 394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 395:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Release Lock */
 396:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   __HAL_UNLOCK(hi2c);
 397:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   return HAL_OK;
 399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
 400:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
 402:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief I2C MSP Init.
 403:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
 404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
 405:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval None
 406:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
 407:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  __weak void HAL_I2C_MspInit(I2C_HandleTypeDef *hi2c)
 408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
 409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Prevent unused argument(s) compilation warning */
 410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   UNUSED(hi2c);
 411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 412:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
 413:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             the HAL_I2C_MspInit could be implemented in the user file
 414:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****    */ 
 415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
 416:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 417:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
 418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief I2C MSP DeInit
 419:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
 420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
 421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval None
 422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
 423:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  __weak void HAL_I2C_MspDeInit(I2C_HandleTypeDef *hi2c)
 424:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
 425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Prevent unused argument(s) compilation warning */
 426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   UNUSED(hi2c);
 427:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
 429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             the HAL_I2C_MspDeInit could be implemented in the user file
 430:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****    */ 
 431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
 432:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 433:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
 434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @}
 435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
 436:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /** @defgroup I2C_Exported_Functions_Group2 Input and Output operation functions
 438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  *  @brief   Data transfers functions 
 439:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  *
 440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** @verbatim   
 441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  ===============================================================================
 442:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****                       ##### IO operation functions #####
 443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  ===============================================================================  
 444:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     [..]
 445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     This subsection provides a set of functions allowing to manage the I2C data 
 446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     transfers.
 447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 448:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     (#) There are two modes of transfer:
 449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****        (++) Blocking mode : The communication is performed in the polling mode. 
 450:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             The status of all data processing is returned by the same function 
 451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             after finishing transfer.  
 452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****        (++) No-Blocking mode : The communication is performed using Interrupts 
 453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             or DMA. These functions return the status of the transfer startup.
 454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             The end of the data processing will be indicated through the 
 455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             dedicated I2C IRQ when using Interrupt mode or the DMA IRQ when 
 456:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             using DMA mode.
 457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 458:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     (#) Blocking mode functions are :
 459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_Master_Transmit()
 460:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_Master_Receive()
 461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_Slave_Transmit()
 462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_Slave_Receive()
 463:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_Mem_Write()
 464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_Mem_Read()
 465:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_IsDeviceReady()
 466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     (#) No-Blocking mode functions with Interrupt are :
 468:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_Master_Transmit_IT()
 469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_Master_Receive_IT()
 470:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_Slave_Transmit_IT()
 471:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_Slave_Receive_IT()
 472:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_Mem_Write_IT()
 473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_Mem_Read_IT()
 474:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 475:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     (#) No-Blocking mode functions with DMA are :
 476:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_Master_Transmit_DMA()
 477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_Master_Receive_DMA()
 478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_Slave_Transmit_DMA()
 479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_Slave_Receive_DMA()
 480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_Mem_Write_DMA()
 481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_Mem_Read_DMA()
 482:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     (#) A set of Transfer Complete Callbacks are provided in non Blocking mode:
 484:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_MemTxCpltCallback()
 485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_MemRxCpltCallback()
 486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_MasterTxCpltCallback()
 487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_MasterRxCpltCallback()
 488:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_SlaveTxCpltCallback()
 489:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_SlaveRxCpltCallback()
 490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         (++) HAL_I2C_ErrorCallback()
 491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** @endverbatim
 493:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @{
 494:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
 495:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
 497:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Transmits in master mode an amount of data in blocking mode.
 498:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
 499:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
 500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  DevAddress: Target device address
 501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  pData: Pointer to data buffer
 502:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Size: Amount of data to be sent
 503:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Timeout: Timeout duration
 504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
 505:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
 506:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_Master_Transmit(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pD
 507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
 508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t sizetmp = 0;
 509:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
 511:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {    
 512:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((pData == NULL ) || (Size == 0)) 
 513:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 514:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return  HAL_ERROR;                                    
 515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 517:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BUSY) == SET)
 518:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_BUSY;
 520:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 522:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Locked */
 523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_LOCK(hi2c);
 524:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_MASTER_BUSY_TX;
 526:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
 527:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send Slave Address */
 529:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set NBYTES to write and reload if size > 255 and generate RESTART */
 530:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Size > 255, need to set RELOAD bit */
 531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
 532:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 533:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,255, I2C_RELOAD_MODE, I2C_GENERATE_START_WRITE);
 534:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       sizetmp = 255;
 535:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 536:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
 537:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 538:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,Size, I2C_AUTOEND_MODE, I2C_GENERATE_START_WRITE);
 539:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       sizetmp = Size;
 540:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 541:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 542:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     do
 543:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 544:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wait until TXIS flag is set */
 545:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(I2C_WaitOnTXISFlagUntilTimeout(hi2c, Timeout) != HAL_OK)
 546:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 547:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
 548:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 549:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_ERROR;
 550:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         else
 552:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 553:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_TIMEOUT;
 554:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 555:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 556:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Write data to TXDR */
 557:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->TXDR = (*pData++);
 558:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       sizetmp--;
 559:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Size--;
 560:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 561:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if((sizetmp == 0)&&(Size!=0))
 562:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 563:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Wait until TCR flag is set */
 564:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_TCR, RESET, Timeout) != HAL_OK)      
 565:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 566:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_TIMEOUT;
 567:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 568:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 569:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(Size > 255)
 570:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 571:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           I2C_TransferConfig(hi2c,DevAddress,255, I2C_RELOAD_MODE, I2C_NO_STARTSTOP);
 572:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           sizetmp = 255;
 573:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 574:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         else
 575:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 576:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           I2C_TransferConfig(hi2c,DevAddress,Size, I2C_AUTOEND_MODE, I2C_NO_STARTSTOP);
 577:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           sizetmp = Size;
 578:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 579:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 580:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 581:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }while(Size > 0);
 582:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 583:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* No need to Check TC flag, with AUTOEND mode the stop is automatically generated */
 584:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until STOPF flag is set */
 585:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, Timeout) != HAL_OK)
 586:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 587:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
 588:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 589:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
 590:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 591:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
 592:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 593:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
 594:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 595:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 596:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 597:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear STOP Flag */
 598:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
 599:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   	
 600:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear Configuration Register 2 */
 601:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     I2C_RESET_CR2(hi2c);
 602:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 603:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_READY; 	  
 604:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 605:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
 606:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c);
 607:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 608:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_OK;
 609:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 610:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
 611:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_BUSY; 
 613:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 614:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
 615:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 616:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
 617:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Receives in master mode an amount of data in blocking mode. 
 618:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
 619:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
 620:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  DevAddress: Target device address
 621:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  pData: Pointer to data buffer
 622:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Size: Amount of data to be sent
 623:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Timeout: Timeout duration
 624:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
 625:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
 626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_Master_Receive(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *pDa
 627:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
 628:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t sizetmp = 0;
 629:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 630:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
 631:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {    
 632:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((pData == NULL ) || (Size == 0)) 
 633:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 634:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return  HAL_ERROR;                                    
 635:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 636:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BUSY) == SET)
 638:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 639:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_BUSY;
 640:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 641:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 642:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Locked */
 643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_LOCK(hi2c);
 644:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 645:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_MASTER_BUSY_RX;
 646:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
 647:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 648:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send Slave Address */
 649:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set NBYTES to write and reload if size > 255 and generate RESTART */
 650:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Size > 255, need to set RELOAD bit */
 651:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
 652:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 653:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,255, I2C_RELOAD_MODE, I2C_GENERATE_START_READ);
 654:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       sizetmp = 255;
 655:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 656:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
 657:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 658:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,Size, I2C_AUTOEND_MODE, I2C_GENERATE_START_READ);
 659:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       sizetmp = Size;
 660:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 661:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 662:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     do
 663:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 664:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wait until RXNE flag is set */
 665:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(I2C_WaitOnRXNEFlagUntilTimeout(hi2c, I2C_FLAG_RXNE) != HAL_OK)      
 666:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 667:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
 668:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 669:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_ERROR;
 670:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 671:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         else
 672:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 673:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_TIMEOUT;
 674:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 675:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 	  }
 676:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 677:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Write data to RXDR */
 678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (*pData++) =hi2c->Instance->RXDR;
 679:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       sizetmp--;
 680:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Size--;
 681:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 682:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if((sizetmp == 0)&&(Size!=0))
 683:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 684:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Wait until TCR flag is set */
 685:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_TCR, RESET, Timeout) != HAL_OK)      
 686:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 687:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_TIMEOUT;
 688:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 689:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 690:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(Size > 255)
 691:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 692:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           I2C_TransferConfig(hi2c,DevAddress,255, I2C_RELOAD_MODE, I2C_NO_STARTSTOP);
 693:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           sizetmp = 255;
 694:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 695:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         else
 696:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 697:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           I2C_TransferConfig(hi2c,DevAddress,Size, I2C_AUTOEND_MODE, I2C_NO_STARTSTOP);
 698:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           sizetmp = Size;
 699:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 700:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 701:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 702:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }while(Size > 0);
 703:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 704:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* No need to Check TC flag, with AUTOEND mode the stop is automatically generated */
 705:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until STOPF flag is set */
 706:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, I2C_TIMEOUT_STOPF) != HAL_OK)
 707:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 708:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
 709:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 710:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
 711:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 712:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
 713:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 714:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
 715:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 716:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 717:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 718:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear STOP Flag */
 719:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
 720:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   	
 721:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear Configuration Register 2 */
 722:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     I2C_RESET_CR2(hi2c);
 723:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 724:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_READY; 	  
 725:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 726:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
 727:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c);
 728:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 729:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_OK;
 730:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 731:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
 732:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 733:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_BUSY; 
 734:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 735:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
 736:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 737:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
 738:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Transmits in slave mode an amount of data in blocking mode. 
 739:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
 740:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
 741:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  pData: Pointer to data buffer
 742:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Size: Amount of data to be sent
 743:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Timeout: Timeout duration
 744:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
 745:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
 746:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_Slave_Transmit(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, ui
 747:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
 748:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
 749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {    
 750:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((pData == NULL ) || (Size == 0)) 
 751:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 752:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return  HAL_ERROR;                                    
 753:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 754:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 755:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Locked */
 756:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_LOCK(hi2c);
 757:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 758:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_SLAVE_BUSY_RX;
 759:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
 760:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 761:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable Address Acknowledge */
 762:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR2 &= ~I2C_CR2_NACK;
 763:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 764:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until ADDR flag is set */
 765:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_ADDR, RESET, Timeout) != HAL_OK)      
 766:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 767:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Disable Address Acknowledge */
 768:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->CR2 |= I2C_CR2_NACK;
 769:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
 770:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 771:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 772:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear ADDR flag */
 773:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c,I2C_FLAG_ADDR);
 774:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 775:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* If 10bit addressing mode is selected */
 776:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->Init.AddressingMode == I2C_ADDRESSINGMODE_10BIT)
 777:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 778:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wait until ADDR flag is set */
 779:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_ADDR, RESET, Timeout) != HAL_OK)      
 780:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 781:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Disable Address Acknowledge */
 782:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->Instance->CR2 |= I2C_CR2_NACK;
 783:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
 784:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 785:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 786:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Clear ADDR flag */
 787:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_I2C_CLEAR_FLAG(hi2c,I2C_FLAG_ADDR);
 788:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 789:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 790:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until DIR flag is set Transmitter mode */
 791:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_DIR, RESET, Timeout) != HAL_OK)      
 792:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 793:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Disable Address Acknowledge */
 794:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->CR2 |= I2C_CR2_NACK;
 795:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
 796:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 797:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 798:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     do
 799:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 800:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wait until TXIS flag is set */
 801:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(I2C_WaitOnTXISFlagUntilTimeout(hi2c, Timeout) != HAL_OK)
 802:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 803:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Disable Address Acknowledge */
 804:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->Instance->CR2 |= I2C_CR2_NACK;
 805:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 806:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
 807:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 808:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_ERROR;
 809:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 810:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         else
 811:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 812:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_TIMEOUT;
 813:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 815:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 816:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Read data from TXDR */
 817:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->TXDR = (*pData++);
 818:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Size--;
 819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }while(Size > 0);
 820:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 821:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until STOP flag is set */
 822:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, I2C_TIMEOUT_STOPF) != HAL_OK)
 823:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 824:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Disable Address Acknowledge */
 825:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->CR2 |= I2C_CR2_NACK;
 826:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 827:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
 828:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 829:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Normal use case for Transmitter mode */
 830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* A NACK is generated to confirm the end of transfer */
 831:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
 832:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
 834:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 835:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
 836:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 837:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 838:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 839:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear STOP flag */
 840:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c,I2C_FLAG_STOPF);
 841:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 842:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until BUSY flag is reset */ 
 843:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BUSY, SET, Timeout) != HAL_OK)      
 844:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 845:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Disable Address Acknowledge */
 846:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->CR2 |= I2C_CR2_NACK;
 847:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
 848:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 849:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 850:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Disable Address Acknowledge */
 851:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR2 |= I2C_CR2_NACK;
 852:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 853:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_READY;
 854:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 855:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
 856:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c);
 857:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 858:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_OK;
 859:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 860:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
 861:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 862:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_BUSY; 
 863:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 864:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
 865:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 866:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
 867:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Receive in slave mode an amount of data in blocking mode 
 868:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
 869:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
 870:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  pData: Pointer to data buffer
 871:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Size: Amount of data to be sent
 872:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Timeout: Timeout duration
 873:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
 874:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
 875:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_Slave_Receive(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size, uin
 876:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
 877:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
 878:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {  
 879:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((pData == NULL ) || (Size == 0)) 
 880:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 881:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return  HAL_ERROR;                                    
 882:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 883:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 884:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Locked */
 885:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_LOCK(hi2c);
 886:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 887:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_SLAVE_BUSY_RX;
 888:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
 889:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 890:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable Address Acknowledge */
 891:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR2 &= ~I2C_CR2_NACK;
 892:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 893:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until ADDR flag is set */
 894:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_ADDR, RESET, Timeout) != HAL_OK)      
 895:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 896:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Disable Address Acknowledge */
 897:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->CR2 |= I2C_CR2_NACK;
 898:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
 899:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 900:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 901:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear ADDR flag */
 902:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c,I2C_FLAG_ADDR);
 903:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 904:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until DIR flag is reset Receiver mode */
 905:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_DIR, SET, Timeout) != HAL_OK)      
 906:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 907:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Disable Address Acknowledge */
 908:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->CR2 |= I2C_CR2_NACK;
 909:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
 910:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 911:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 912:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     while(Size > 0)
 913:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 914:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wait until RXNE flag is set */
 915:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(I2C_WaitOnRXNEFlagUntilTimeout(hi2c, Timeout) != HAL_OK)      
 916:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Disable Address Acknowledge */
 918:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->Instance->CR2 |= I2C_CR2_NACK;
 919:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 920:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Store Last receive data if any */
 921:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_RXNE) == SET)
 922:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 923:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           /* Read data from RXDR */
 924:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           (*pData++) = hi2c->Instance->RXDR;
 925:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 926:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 927:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(hi2c->ErrorCode == HAL_I2C_ERROR_TIMEOUT)
 928:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 929:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_TIMEOUT;
 930:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 931:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         else
 932:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 933:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_ERROR;
 934:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 935:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 936:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 937:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Read data from RXDR */
 938:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (*pData++) = hi2c->Instance->RXDR;
 939:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Size--;
 940:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 941:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 942:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until STOP flag is set */
 943:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, I2C_TIMEOUT_STOPF) != HAL_OK)
 944:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 945:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Disable Address Acknowledge */
 946:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->CR2 |= I2C_CR2_NACK;
 947:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 948:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
 949:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 950:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
 951:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 952:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
 953:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 954:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
 955:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 956:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 957:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 958:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear STOP flag */
 959:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c,I2C_FLAG_STOPF);
 960:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 961:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until BUSY flag is reset */ 
 962:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BUSY, SET, Timeout) != HAL_OK)      
 963:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 964:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Disable Address Acknowledge */
 965:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->CR2 |= I2C_CR2_NACK;
 966:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
 967:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 968:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 969:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 970:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Disable Address Acknowledge */
 971:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR2 |= I2C_CR2_NACK;
 972:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 973:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_READY;
 974:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 975:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
 976:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c);
 977:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 978:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_OK;
 979:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 980:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
 981:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_BUSY; 
 983:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   } 
 984:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
 985:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 986:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
 987:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Transmit in master mode an amount of data in no-blocking mode with Interrupt
 988:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
 989:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
 990:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  DevAddress: Target device address
 991:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  pData: Pointer to data buffer
 992:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Size: Amount of data to be sent
 993:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
 994:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
 995:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_Master_Transmit_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t 
 996:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {   
 997:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
 998:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 999:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((pData == NULL) || (Size == 0)) 
1000:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1001:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return  HAL_ERROR;                                    
1002:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1003:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1004:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BUSY) == SET)
1005:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1006:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_BUSY;
1007:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1008:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1009:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Locked */
1010:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_LOCK(hi2c);
1011:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1012:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_MASTER_BUSY_TX;
1013:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
1014:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1015:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->pBuffPtr = pData;
1016:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
1017:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
1018:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1019:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferSize = 255;
1020:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1021:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
1022:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1023:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferSize = Size;
1024:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1025:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1026:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send Slave Address */
1027:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set NBYTES to write and reload if size > 255 and generate RESTART */
1028:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if( (hi2c->XferSize == 255) && (hi2c->XferSize < hi2c->XferCount) )
1029:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1030:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_RELOAD_MODE, I2C_GENERATE_START_WRITE)
1031:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1032:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
1033:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1034:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_AUTOEND_MODE, I2C_GENERATE_START_WRITE
1035:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1036:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1037:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
1038:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c); 
1039:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1040:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Note : The I2C interrupts must be enabled after unlocking current process 
1041:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     to avoid the risk of I2C interrupt handle execution before current
1042:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     process unlock */
1043:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1044:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1045:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable ERR, TC, STOP, NACK, TXI interrupt */
1046:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* possible to enable all of these */
1047:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* I2C_IT_ERRI | I2C_IT_TCI| I2C_IT_STOPI| I2C_IT_NACKI | I2C_IT_ADDRI | I2C_IT_RXI | I2C_IT_TX
1048:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_ENABLE_IT(hi2c,I2C_IT_ERRI | I2C_IT_TCI| I2C_IT_STOPI| I2C_IT_NACKI | I2C_IT_TXI );
1049:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1050:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_OK;
1051:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
1052:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
1053:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1054:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_BUSY;
1055:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   } 
1056:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
1057:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
1058:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
1059:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Receive in master mode an amount of data in no-blocking mode with Interrupt
1060:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
1061:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
1062:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  DevAddress: Target device address
1063:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  pData: Pointer to data buffer
1064:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Size: Amount of data to be sent
1065:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
1066:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
1067:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_Master_Receive_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t *
1068:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
1069:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
1070:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1071:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((pData == NULL) || (Size == 0)) 
1072:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1073:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return  HAL_ERROR;                                    
1074:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1075:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1076:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BUSY) == SET)
1077:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1078:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_BUSY;
1079:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1080:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1081:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Locked */
1082:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_LOCK(hi2c);
1083:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1084:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_MASTER_BUSY_RX;
1085:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
1086:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1087:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->pBuffPtr = pData;
1088:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
1089:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
1090:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1091:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferSize = 255;
1092:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1093:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
1094:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1095:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferSize = Size;
1096:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1097:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1098:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send Slave Address */
1099:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set NBYTES to write and reload if size > 255 and generate RESTART */
1100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if( (hi2c->XferSize == 255) && (hi2c->XferSize < hi2c->XferCount) )
1101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_RELOAD_MODE, I2C_GENERATE_START_READ);
1103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
1105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_AUTOEND_MODE, I2C_GENERATE_START_READ)
1107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
1110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c); 
1111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Note : The I2C interrupts must be enabled after unlocking current process 
1113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     to avoid the risk of I2C interrupt handle execution before current
1114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     process unlock */
1115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable ERR, TC, STOP, NACK, RXI interrupt */
1117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* possible to enable all of these */
1118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* I2C_IT_ERRI | I2C_IT_TCI| I2C_IT_STOPI| I2C_IT_NACKI | I2C_IT_ADDRI | I2C_IT_RXI | I2C_IT_TX
1119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_ENABLE_IT(hi2c,I2C_IT_ERRI | I2C_IT_TCI | I2C_IT_STOPI | I2C_IT_NACKI | I2C_IT_RXI );
1120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_OK;
1122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
1123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
1124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_BUSY; 
1126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   } 
1127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
1128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
1129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
1130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Transmit in slave mode an amount of data in no-blocking mode with Interrupt 
1131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
1132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
1133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  pData: Pointer to data buffer
1134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Size: Amount of data to be sent
1135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
1136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
1137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_Slave_Transmit_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size)
1138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
1139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
1140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((pData == NULL) || (Size == 0)) 
1142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return  HAL_ERROR;                                    
1144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Locked */
1147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_LOCK(hi2c);
1148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_SLAVE_BUSY_TX;
1150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
1151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable Address Acknowledge */
1153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR2 &= ~I2C_CR2_NACK;
1154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->pBuffPtr = pData;
1156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferSize = Size;
1157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
1158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
1160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c); 
1161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Note : The I2C interrupts must be enabled after unlocking current process 
1163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     to avoid the risk of I2C interrupt handle execution before current
1164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     process unlock */
1165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable ERR, TC, STOP, NACK, TXI interrupt */
1167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* possible to enable all of these */
1168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* I2C_IT_ERRI | I2C_IT_TCI| I2C_IT_STOPI| I2C_IT_NACKI | I2C_IT_ADDRI | I2C_IT_RXI | I2C_IT_TX
1169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_ENABLE_IT(hi2c,I2C_IT_ERRI | I2C_IT_TCI| I2C_IT_STOPI | I2C_IT_NACKI | I2C_IT_ADDRI |
1170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_OK;
1172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
1173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
1174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_BUSY; 
1176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   } 
1177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
1178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
1179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
1180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Receive in slave mode an amount of data in no-blocking mode with Interrupt 
1181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
1182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
1183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  pData: Pointer to data buffer
1184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Size: Amount of data to be sent
1185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
1186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
1187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_Slave_Receive_IT(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size)
1188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
1189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
1190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((pData == NULL) || (Size == 0)) 
1192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return  HAL_ERROR;                                    
1194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Locked */
1197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_LOCK(hi2c);
1198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_SLAVE_BUSY_RX;
1200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
1201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable Address Acknowledge */
1203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR2 &= ~I2C_CR2_NACK;
1204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->pBuffPtr = pData;
1206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferSize = Size;
1207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
1208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
1210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c); 
1211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Note : The I2C interrupts must be enabled after unlocking current process 
1213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     to avoid the risk of I2C interrupt handle execution before current
1214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     process unlock */
1215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable ERR, TC, STOP, NACK, RXI interrupt */
1217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* possible to enable all of these */
1218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* I2C_IT_ERRI | I2C_IT_TCI| I2C_IT_STOPI| I2C_IT_NACKI | I2C_IT_ADDRI | I2C_IT_RXI | I2C_IT_TX
1219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_ENABLE_IT(hi2c,I2C_IT_ERRI | I2C_IT_TCI | I2C_IT_STOPI | I2C_IT_NACKI | I2C_IT_ADDRI 
1220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_OK;
1222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
1223:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
1224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_BUSY; 
1226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
1227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
1228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
1229:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
1230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Transmit in master mode an amount of data in no-blocking mode with DMA
1231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
1232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
1233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  DevAddress: Target device address
1234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  pData: Pointer to data buffer
1235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Size: Amount of data to be sent
1236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
1237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
1238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_Master_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t
1239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
1240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
1241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((pData == NULL) || (Size == 0)) 
1243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return  HAL_ERROR;                                    
1245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }     
1246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BUSY) == SET)
1248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_BUSY;
1250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Locked */
1253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_LOCK(hi2c);
1254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_MASTER_BUSY_TX;
1256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
1257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->pBuffPtr = pData;
1259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
1260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
1261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferSize = 255;
1263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
1265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferSize = Size;
1267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set the I2C DMA transfer complete callback */
1270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->hdmatx->XferCpltCallback = I2C_DMAMasterTransmitCplt;
1271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set the DMA error callback */
1273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->hdmatx->XferErrorCallback = I2C_DMAError;
1274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable the DMA channel */
1276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_DMA_Start_IT(hi2c->hdmatx, (uint32_t)pData, (uint32_t)&hi2c->Instance->TXDR, hi2c->XferSize
1277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send Slave Address */
1279:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set NBYTES to write and reload if size > 255 and generate RESTART */
1280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if( (hi2c->XferSize == 255) && (hi2c->XferSize < hi2c->XferCount) )
1281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_RELOAD_MODE, I2C_GENERATE_START_WRITE)
1283:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
1285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_AUTOEND_MODE, I2C_GENERATE_START_WRITE
1287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }  
1288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until TXIS flag is set */
1290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnTXISFlagUntilTimeout(hi2c, I2C_TIMEOUT_TXIS) != HAL_OK)
1291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1292:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Disable Address Acknowledge */
1293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->CR2 |= I2C_CR2_NACK;
1294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
1295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Abort DMA */
1296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_DMA_Abort(hi2c->hdmatx);
1297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
1298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
1299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
1301:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1302:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
1303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
1305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1306:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable DMA Request */
1309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR1 |= I2C_CR1_TXDMAEN;   
1310:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
1312:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c);
1313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_OK;
1315:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
1316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
1317:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_BUSY;
1319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
1320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
1321:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
1322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
1323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Receive in master mode an amount of data in no-blocking mode with DMA 
1324:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
1325:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
1326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  DevAddress: Target device address
1327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  pData: Pointer to data buffer
1328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Size: Amount of data to be sent
1329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
1330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
1331:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_Master_Receive_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint8_t 
1332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
1333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
1334:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((pData == NULL) || (Size == 0)) 
1336:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return  HAL_ERROR;                                    
1338:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }  
1339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BUSY) == SET)
1341:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_BUSY;
1343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1344:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Locked */
1346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_LOCK(hi2c);
1347:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_MASTER_BUSY_RX;
1349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
1350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->pBuffPtr = pData;
1352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
1353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
1354:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferSize = 255;
1356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1357:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
1358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1359:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferSize = Size;
1360:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1362:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set the I2C DMA transfer complete callback */
1363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->hdmarx->XferCpltCallback = I2C_DMAMasterReceiveCplt;
1364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set the DMA error callback */
1366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->hdmarx->XferErrorCallback = I2C_DMAError;
1367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1368:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable the DMA channel */
1369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_DMA_Start_IT(hi2c->hdmarx, (uint32_t)&hi2c->Instance->RXDR, (uint32_t)pData, hi2c->XferSize
1370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send Slave Address */
1372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set NBYTES to write and reload if size > 255 and generate RESTART */
1373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if( (hi2c->XferSize == 255) && (hi2c->XferSize < hi2c->XferCount) )
1374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_RELOAD_MODE, I2C_GENERATE_START_READ);
1376:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1377:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
1378:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_AUTOEND_MODE, I2C_GENERATE_START_READ)
1380:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1381:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until RXNE flag is set */
1383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnRXNEFlagUntilTimeout(hi2c, I2C_FLAG_RXNE) != HAL_OK)      
1384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Abort DMA */
1386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_DMA_Abort(hi2c->hdmarx);
1387:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
1388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
1389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
1391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1392:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
1393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
1395:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1396:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 	}
1397:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable DMA Request */
1399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR1 |= I2C_CR1_RXDMAEN;   
1400:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
1402:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c);
1403:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_OK;
1405:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
1406:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
1407:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_BUSY;
1409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
1410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
1411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
1412:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
1413:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Transmit in slave mode an amount of data in no-blocking mode with DMA 
1414:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
1415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
1416:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  pData: Pointer to data buffer
1417:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Size: Amount of data to be sent
1418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
1419:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
1420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_Slave_Transmit_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size
1421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
1422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
1423:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1424:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((pData == NULL) || (Size == 0)) 
1425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return  HAL_ERROR;                                    
1427:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }   
1428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Locked */
1429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_LOCK(hi2c); 
1430:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_SLAVE_BUSY_TX;
1432:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
1433:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->pBuffPtr = pData;
1435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
1436:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferSize = Size;
1437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set the I2C DMA transfer complete callback */
1439:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->hdmatx->XferCpltCallback = I2C_DMASlaveTransmitCplt;
1440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set the DMA error callback */
1442:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->hdmatx->XferErrorCallback = I2C_DMAError;
1443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1444:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable the DMA channel */
1445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_DMA_Start_IT(hi2c->hdmatx, (uint32_t)pData, (uint32_t)&hi2c->Instance->TXDR, hi2c->XferSize
1446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable Address Acknowledge */
1448:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR2 &= ~I2C_CR2_NACK;
1449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1450:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until ADDR flag is set */
1451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_ADDR, RESET, I2C_TIMEOUT_ADDR) != HAL_OK)      
1452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Disable Address Acknowledge */
1454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->CR2 |= I2C_CR2_NACK;
1455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
1456:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1458:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear ADDR flag */
1459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c,I2C_FLAG_ADDR);
1460:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* If 10bits addressing mode is selected */
1462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->Init.AddressingMode == I2C_ADDRESSINGMODE_10BIT)
1463:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wait until ADDR flag is set */
1465:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_ADDR, RESET, I2C_TIMEOUT_ADDR) != HAL_OK)      
1466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Disable Address Acknowledge */
1468:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->Instance->CR2 |= I2C_CR2_NACK;
1469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
1470:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1471:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
1472:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Clear ADDR flag */
1473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_I2C_CLEAR_FLAG(hi2c,I2C_FLAG_ADDR);
1474:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1475:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1476:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until DIR flag is set Transmitter mode */
1477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_DIR, RESET, I2C_TIMEOUT_BUSY) != HAL_OK)      
1478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Disable Address Acknowledge */
1480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->CR2 |= I2C_CR2_NACK;
1481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
1482:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1484:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable DMA Request */
1485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR1 |= I2C_CR1_TXDMAEN; 
1486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
1488:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c);
1489:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_OK;
1491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
1492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
1493:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1494:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_BUSY;
1495:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
1496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
1497:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
1498:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
1499:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Receive in slave mode an amount of data in no-blocking mode with DMA 
1500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
1501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
1502:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  pData: Pointer to data buffer
1503:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Size: Amount of data to be sent
1504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
1505:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
1506:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_Slave_Receive_DMA(I2C_HandleTypeDef *hi2c, uint8_t *pData, uint16_t Size)
1507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
1508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
1509:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((pData == NULL) || (Size == 0)) 
1511:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1512:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return  HAL_ERROR;                                    
1513:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }   
1514:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Locked */
1515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_LOCK(hi2c);
1516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1517:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_SLAVE_BUSY_RX;
1518:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
1519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1520:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->pBuffPtr = pData;
1521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferSize = Size;
1522:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
1523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1524:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set the I2C DMA transfer complete callback */
1525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->hdmarx->XferCpltCallback = I2C_DMASlaveReceiveCplt;
1526:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1527:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set the DMA error callback */
1528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->hdmarx->XferErrorCallback = I2C_DMAError;
1529:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1530:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable the DMA channel */
1531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_DMA_Start_IT(hi2c->hdmarx, (uint32_t)&hi2c->Instance->RXDR, (uint32_t)pData, Size);
1532:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1533:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable Address Acknowledge */
1534:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR2 &= ~I2C_CR2_NACK;
1535:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1536:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until ADDR flag is set */
1537:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_ADDR, RESET, I2C_TIMEOUT_ADDR) != HAL_OK)      
1538:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1539:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Disable Address Acknowledge */
1540:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->CR2 |= I2C_CR2_NACK;
1541:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
1542:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1543:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1544:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear ADDR flag */
1545:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c,I2C_FLAG_ADDR);
1546:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1547:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until DIR flag is set Receiver mode */
1548:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_DIR, SET, I2C_TIMEOUT_DIR) != HAL_OK)      
1549:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1550:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Disable Address Acknowledge */
1551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->CR2 |= I2C_CR2_NACK;
1552:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
1553:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1554:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1555:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable DMA Request */
1556:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR1 |= I2C_CR1_RXDMAEN;  
1557:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1558:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
1559:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c);
1560:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1561:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_OK;
1562:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
1563:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
1564:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1565:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_BUSY;
1566:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
1567:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
1568:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
1569:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Write an amount of data in blocking mode to a specific memory address
1570:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
1571:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
1572:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  DevAddress: Target device address
1573:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  MemAddress: Internal memory address
1574:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  MemAddSize: Size of internal memory address
1575:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  pData: Pointer to data buffer
1576:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Size: Amount of data to be sent
1577:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Timeout: Timeout duration
1578:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
1579:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
1580:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_Mem_Write(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddre
1581:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
1582:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t Sizetmp = 0;
1583:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
1584:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check the parameters */
1585:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   assert_param(IS_I2C_MEMADD_SIZE(MemAddSize));
1586:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
1587:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
1588:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   { 
1589:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((pData == NULL) || (Size == 0)) 
1590:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1591:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return  HAL_ERROR;                                    
1592:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1593:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1594:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BUSY) == SET)
1595:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1596:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_BUSY;
1597:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1598:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1599:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Locked */
1600:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_LOCK(hi2c);
1601:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1602:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_MEM_BUSY_TX;
1603:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
1604:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1605:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send Slave Address and Memory Address */
1606:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_RequestMemoryWrite(hi2c, DevAddress, MemAddress, MemAddSize, Timeout) != HAL_OK)
1607:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1608:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
1609:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1610:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Process Unlocked */
1611:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_UNLOCK(hi2c);
1612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
1613:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1614:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
1615:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1616:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Process Unlocked */
1617:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_UNLOCK(hi2c);
1618:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
1619:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1620:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1621:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1622:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set NBYTES to write and reload if size > 255 */
1623:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Size > 255, need to set RELOAD bit */
1624:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
1625:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,255, I2C_RELOAD_MODE, I2C_NO_STARTSTOP);
1627:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Sizetmp = 255;
1628:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1629:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
1630:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1631:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,Size, I2C_AUTOEND_MODE, I2C_NO_STARTSTOP);
1632:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Sizetmp = Size;
1633:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1634:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1635:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     do
1636:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wait until TXIS flag is set */
1638:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(I2C_WaitOnTXISFlagUntilTimeout(hi2c, Timeout) != HAL_OK)
1639:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1640:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
1641:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
1642:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_ERROR;
1643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
1644:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         else
1645:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
1646:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_TIMEOUT;
1647:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
1648:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1649:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
1650:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Write data to DR */
1651:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->TXDR = (*pData++);
1652:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Sizetmp--;
1653:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Size--;
1654:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
1655:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if((Sizetmp == 0)&&(Size!=0))
1656:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1657:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Wait until TCR flag is set */
1658:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_TCR, RESET, Timeout) != HAL_OK)      
1659:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
1660:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_TIMEOUT;
1661:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
1662:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
1663:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
1664:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(Size > 255)
1665:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
1666:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           I2C_TransferConfig(hi2c,DevAddress,255, I2C_RELOAD_MODE, I2C_NO_STARTSTOP);
1667:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           Sizetmp = 255;
1668:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
1669:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         else
1670:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
1671:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           I2C_TransferConfig(hi2c,DevAddress,Size, I2C_AUTOEND_MODE, I2C_NO_STARTSTOP);
1672:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           Sizetmp = Size;
1673:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
1674:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1675:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
1676:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }while(Size > 0);
1677:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* No need to Check TC flag, with AUTOEND mode the stop is automatically generated */
1679:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until STOPF flag is reset */ 
1680:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, I2C_TIMEOUT_STOPF) != HAL_OK)
1681:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1682:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
1683:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1684:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
1685:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1686:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
1687:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1688:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
1689:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1690:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1691:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1692:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear STOP Flag */
1693:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
1694:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   	
1695:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear Configuration Register 2 */
1696:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     I2C_RESET_CR2(hi2c);
1697:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1698:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_READY; 	  
1699:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1700:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
1701:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c);
1702:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1703:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_OK;
1704:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
1705:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
1706:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1707:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_BUSY;
1708:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
1709:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
1710:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
1711:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
1712:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Read an amount of data in blocking mode from a specific memory address
1713:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
1714:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
1715:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  DevAddress: Target device address
1716:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  MemAddress: Internal memory address
1717:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  MemAddSize: Size of internal memory address
1718:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  pData: Pointer to data buffer
1719:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Size: Amount of data to be sent
1720:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Timeout: Timeout duration
1721:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
1722:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
1723:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_Mem_Read(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAddres
1724:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
1725:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t Sizetmp = 0;
1726:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
1727:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check the parameters */
1728:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   assert_param(IS_I2C_MEMADD_SIZE(MemAddSize));
1729:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
1730:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
1731:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {    
1732:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((pData == NULL) || (Size == 0)) 
1733:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1734:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return  HAL_ERROR;                                    
1735:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1736:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1737:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BUSY) == SET)
1738:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1739:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_BUSY;
1740:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1741:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1742:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Locked */
1743:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_LOCK(hi2c);
1744:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1745:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_MEM_BUSY_RX;
1746:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
1747:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1748:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send Slave Address and Memory Address */
1749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_RequestMemoryRead(hi2c, DevAddress, MemAddress, MemAddSize, Timeout) != HAL_OK)
1750:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1751:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
1752:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1753:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Process Unlocked */
1754:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_UNLOCK(hi2c);
1755:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
1756:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1757:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
1758:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1759:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Process Unlocked */
1760:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_UNLOCK(hi2c);
1761:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
1762:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1763:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1764:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1765:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send Slave Address */
1766:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set NBYTES to write and reload if size > 255 and generate RESTART */
1767:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Size > 255, need to set RELOAD bit */
1768:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
1769:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1770:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,255, I2C_RELOAD_MODE, I2C_GENERATE_START_READ);
1771:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Sizetmp = 255;
1772:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1773:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
1774:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1775:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,Size, I2C_AUTOEND_MODE, I2C_GENERATE_START_READ);
1776:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Sizetmp = Size;
1777:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1778:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1779:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     do
1780:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {  
1781:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wait until RXNE flag is set */
1782:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_RXNE, RESET, Timeout) != HAL_OK)      
1783:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1784:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
1785:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1786:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
1787:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Read data from RXDR */
1788:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       (*pData++) = hi2c->Instance->RXDR;
1789:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
1790:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Decrement the Size counter */
1791:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Sizetmp--;
1792:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Size--;   
1793:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
1794:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if((Sizetmp == 0)&&(Size!=0))
1795:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1796:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Wait until TCR flag is set */
1797:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_TCR, RESET, Timeout) != HAL_OK)      
1798:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
1799:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_TIMEOUT;
1800:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
1801:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
1802:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(Size > 255)
1803:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
1804:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           I2C_TransferConfig(hi2c,DevAddress,255, I2C_RELOAD_MODE, I2C_NO_STARTSTOP);
1805:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           Sizetmp = 255;
1806:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
1807:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         else
1808:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
1809:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           I2C_TransferConfig(hi2c,DevAddress,Size, I2C_AUTOEND_MODE, I2C_NO_STARTSTOP);
1810:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           Sizetmp = Size;
1811:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
1812:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1813:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
1814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }while(Size > 0);
1815:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1816:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* No need to Check TC flag, with AUTOEND mode the stop is automatically generated */
1817:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until STOPF flag is reset */ 
1818:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, I2C_TIMEOUT_STOPF) != HAL_OK)
1819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1820:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
1821:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1822:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
1823:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1824:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
1825:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1826:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
1827:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1828:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1829:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear STOP Flag */
1831:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
1832:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   	
1833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear Configuration Register 2 */
1834:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     I2C_RESET_CR2(hi2c);
1835:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1836:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_READY;
1837:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1838:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
1839:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c);
1840:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1841:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_OK;
1842:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
1843:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
1844:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1845:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_BUSY;
1846:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
1847:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
1848:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
1849:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Write an amount of data in no-blocking mode with Interrupt to a specific memory address
1850:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
1851:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
1852:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  DevAddress: Target device address
1853:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  MemAddress: Internal memory address
1854:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  MemAddSize: Size of internal memory address
1855:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  pData: Pointer to data buffer
1856:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Size: Amount of data to be sent
1857:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
1858:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
1859:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_Mem_Write_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAd
1860:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
1861:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check the parameters */
1862:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   assert_param(IS_I2C_MEMADD_SIZE(MemAddSize));
1863:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
1864:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
1865:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1866:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((pData == NULL) || (Size == 0)) 
1867:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1868:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return  HAL_ERROR;                                    
1869:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1870:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1871:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BUSY) == SET)
1872:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1873:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_BUSY;
1874:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1875:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1876:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Locked */
1877:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_LOCK(hi2c);
1878:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1879:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_MEM_BUSY_TX;
1880:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
1881:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1882:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->pBuffPtr = pData;
1883:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
1884:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
1885:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1886:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferSize = 255;
1887:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1888:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
1889:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1890:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferSize = Size;
1891:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1892:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1893:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send Slave Address and Memory Address */
1894:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_RequestMemoryWrite(hi2c, DevAddress, MemAddress, MemAddSize, I2C_TIMEOUT_FLAG) != HAL_OK
1895:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1896:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
1897:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1898:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Process Unlocked */
1899:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_UNLOCK(hi2c);
1900:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
1901:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1902:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
1903:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1904:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Process Unlocked */
1905:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_UNLOCK(hi2c);
1906:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
1907:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1908:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1909:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1910:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set NBYTES to write and reload if size > 255 */
1911:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Size > 255, need to set RELOAD bit */
1912:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if( (hi2c->XferSize == 255) && (hi2c->XferSize < hi2c->XferCount) )
1913:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1914:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_RELOAD_MODE, I2C_NO_STARTSTOP);
1915:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1916:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
1917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1918:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_AUTOEND_MODE, I2C_NO_STARTSTOP);
1919:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }  
1920:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1921:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
1922:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c); 
1923:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1924:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Note : The I2C interrupts must be enabled after unlocking current process 
1925:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     to avoid the risk of I2C interrupt handle execution before current
1926:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     process unlock */
1927:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1928:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable ERR, TC, STOP, NACK, TXI interrupt */
1929:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* possible to enable all of these */
1930:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* I2C_IT_ERRI | I2C_IT_TCI| I2C_IT_STOPI| I2C_IT_NACKI | I2C_IT_ADDRI | I2C_IT_RXI | I2C_IT_TX
1931:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_ENABLE_IT(hi2c,I2C_IT_ERRI | I2C_IT_TCI| I2C_IT_STOPI| I2C_IT_NACKI | I2C_IT_TXI );
1932:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1933:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_OK;
1934:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
1935:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
1936:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1937:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_BUSY;
1938:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
1939:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
1940:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
1941:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
1942:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Read an amount of data in no-blocking mode with Interrupt from a specific memory addres
1943:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
1944:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
1945:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  DevAddress: Target device address
1946:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  MemAddress: Internal memory address
1947:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  MemAddSize: Size of internal memory address
1948:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  pData: Pointer to data buffer
1949:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Size: Amount of data to be sent
1950:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
1951:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
1952:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_Mem_Read_IT(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAdd
1953:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
1954:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check the parameters */
1955:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   assert_param(IS_I2C_MEMADD_SIZE(MemAddSize));
1956:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
1957:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
1958:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
1959:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((pData == NULL) || (Size == 0)) 
1960:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1961:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return  HAL_ERROR;                                    
1962:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1963:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1964:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BUSY) == SET)
1965:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1966:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_BUSY;
1967:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1968:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1969:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Locked */
1970:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_LOCK(hi2c);
1971:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1972:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_MEM_BUSY_RX;
1973:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1974:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->pBuffPtr = pData;
1975:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
1976:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
1977:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1978:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferSize = 255;
1979:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1980:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
1981:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferSize = Size;
1983:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
1984:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
1985:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send Slave Address and Memory Address */
1986:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_RequestMemoryRead(hi2c, DevAddress, MemAddress, MemAddSize, I2C_TIMEOUT_FLAG) != HAL_OK)
1987:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
1988:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
1989:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1990:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Process Unlocked */
1991:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_UNLOCK(hi2c);
1992:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
1993:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
1994:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
1995:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
1996:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Process Unlocked */
1997:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_UNLOCK(hi2c);
1998:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
1999:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
2000:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2001:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2002:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set NBYTES to write and reload if size > 255 and generate RESTART */
2003:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Size > 255, need to set RELOAD bit */
2004:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if( (hi2c->XferSize == 255) && (hi2c->XferSize < hi2c->XferCount) )
2005:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2006:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_RELOAD_MODE, I2C_GENERATE_START_READ);
2007:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2008:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
2009:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2010:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_AUTOEND_MODE, I2C_GENERATE_START_READ)
2011:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2012:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2013:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
2014:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c); 
2015:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2016:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Note : The I2C interrupts must be enabled after unlocking current process 
2017:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     to avoid the risk of I2C interrupt handle execution before current
2018:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     process unlock */
2019:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2020:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable ERR, TC, STOP, NACK, RXI interrupt */
2021:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* possible to enable all of these */
2022:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* I2C_IT_ERRI | I2C_IT_TCI| I2C_IT_STOPI| I2C_IT_NACKI | I2C_IT_ADDRI | I2C_IT_RXI | I2C_IT_TX
2023:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_ENABLE_IT(hi2c, I2C_IT_ERRI | I2C_IT_TCI| I2C_IT_STOPI| I2C_IT_NACKI | I2C_IT_RXI );
2024:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2025:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_OK;
2026:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2027:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
2028:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2029:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_BUSY; 
2030:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }   
2031:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
2032:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2033:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Write an amount of data in no-blocking mode with DMA to a specific memory address
2034:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
2035:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
2036:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  DevAddress: Target device address
2037:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  MemAddress: Internal memory address
2038:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  MemAddSize: Size of internal memory address
2039:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  pData: Pointer to data buffer
2040:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Size: Amount of data to be sent
2041:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
2042:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2043:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_Mem_Write_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemA
2044:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
2045:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check the parameters */
2046:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   assert_param(IS_I2C_MEMADD_SIZE(MemAddSize));
2047:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2048:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
2049:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2050:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((pData == NULL) || (Size == 0)) 
2051:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2052:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return  HAL_ERROR;                                    
2053:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2054:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2055:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BUSY) == SET)
2056:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2057:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_BUSY;
2058:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2059:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2060:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Locked */
2061:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_LOCK(hi2c);
2062:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2063:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_MEM_BUSY_TX;
2064:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
2065:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2066:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->pBuffPtr = pData;
2067:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
2068:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
2069:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2070:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferSize = 255;
2071:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2072:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
2073:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2074:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferSize = Size;
2075:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2076:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2077:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set the I2C DMA transfer complete callback */
2078:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->hdmatx->XferCpltCallback = I2C_DMAMemTransmitCplt;
2079:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2080:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set the DMA error callback */
2081:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->hdmatx->XferErrorCallback = I2C_DMAError;
2082:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2083:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable the DMA channel */
2084:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_DMA_Start_IT(hi2c->hdmatx, (uint32_t)pData, (uint32_t)&hi2c->Instance->TXDR, hi2c->XferSize
2085:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2086:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send Slave Address and Memory Address */
2087:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_RequestMemoryWrite(hi2c, DevAddress, MemAddress, MemAddSize, I2C_TIMEOUT_FLAG) != HAL_OK
2088:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2089:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
2090:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
2091:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Process Unlocked */
2092:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_UNLOCK(hi2c);
2093:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
2094:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
2095:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
2096:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
2097:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Process Unlocked */
2098:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_UNLOCK(hi2c);
2099:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
2100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
2101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send Slave Address */
2104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set NBYTES to write and reload if size > 255 */
2105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if( (hi2c->XferSize == 255) && (hi2c->XferSize < hi2c->XferCount) )
2106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_RELOAD_MODE, I2C_NO_STARTSTOP);
2108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
2110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_AUTOEND_MODE, I2C_NO_STARTSTOP);
2112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until TXIS flag is set */
2115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnTXISFlagUntilTimeout(hi2c, I2C_TIMEOUT_TXIS) != HAL_OK)
2116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
2118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
2119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
2120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
2121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
2122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
2123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
2124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
2125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable DMA Request */
2128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR1 |= I2C_CR1_TXDMAEN;  
2129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
2131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c);
2132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_OK;
2134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
2136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_BUSY;
2138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
2140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Reads an amount of data in no-blocking mode with DMA from a specific memory address.
2143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
2144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
2145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  DevAddress: Target device address
2146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  MemAddress: Internal memory address
2147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  MemAddSize: Size of internal memory address
2148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  pData: Pointer to data buffer
2149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Size: Amount of data to be read
2150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
2151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_Mem_Read_DMA(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16_t MemAd
2153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
2154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check the parameters */
2155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   assert_param(IS_I2C_MEMADD_SIZE(MemAddSize));
2156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
2158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((pData == NULL) || (Size == 0)) 
2160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return  HAL_ERROR;                                    
2162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BUSY) == SET)
2165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_BUSY;
2167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Locked */
2170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_LOCK(hi2c);
2171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_MEM_BUSY_RX;
2173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->pBuffPtr = pData;
2175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
2176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
2177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferSize = 255;
2179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
2181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferSize = Size;
2183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set the I2C DMA transfer complete callback */
2186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->hdmarx->XferCpltCallback = I2C_DMAMemReceiveCplt;
2187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set the DMA error callback */
2189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->hdmarx->XferErrorCallback = I2C_DMAError;
2190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable the DMA channel */
2192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_DMA_Start_IT(hi2c->hdmarx, (uint32_t)&hi2c->Instance->RXDR, (uint32_t)pData, hi2c->XferSize
2193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send Slave Address and Memory Address */
2195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_RequestMemoryRead(hi2c, DevAddress, MemAddress, MemAddSize, I2C_TIMEOUT_FLAG) != HAL_OK)
2196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
2198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
2199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Process Unlocked */
2200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_UNLOCK(hi2c);
2201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
2202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
2203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
2204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
2205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Process Unlocked */
2206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_UNLOCK(hi2c);
2207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
2208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
2209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Set NBYTES to write and reload if size > 255 and generate RESTART */
2212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if( (hi2c->XferSize == 255) && (hi2c->XferSize < hi2c->XferCount) )
2213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_RELOAD_MODE, I2C_GENERATE_START_READ);
2215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
2217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_AUTOEND_MODE, I2C_GENERATE_START_READ)
2219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until RXNE flag is set */
2222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_RXNE, RESET, I2C_TIMEOUT_RXNE) != HAL_OK)      
2223:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
2225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Enable DMA Request */
2228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR1 |= I2C_CR1_RXDMAEN;  
2229:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
2231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c);
2232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_OK;
2234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
2236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_BUSY;
2238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
2240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Checks if target device is ready for communication. 
2243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @note   This function is used with Memory devices
2244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
2245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
2246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  DevAddress: Target device address
2247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Trials: Number of trials
2248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Timeout: Timeout duration
2249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
2250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_StatusTypeDef HAL_I2C_IsDeviceReady(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint32_t Tria
2252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {  
2253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t tickstart = 0;
2254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   __IO uint32_t I2C_Trials = 0;
2256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
2258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BUSY) == SET)
2260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_BUSY;
2262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Locked */
2265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_LOCK(hi2c);
2266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_BUSY;
2268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
2269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     do
2271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Generate Start */
2273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->CR2 = I2C_GENERATE_START(hi2c->Init.AddressingMode,DevAddress);
2274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
2275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* No need to Check TC flag, with AUTOEND mode the stop is automatically generated */
2276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wait until STOPF flag is set or a NACK flag is set*/
2277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       tickstart = HAL_GetTick();
2278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       while((__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_STOPF) == RESET) && (__HAL_I2C_GET_FLAG(hi2c, I2C_FL
2279:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
2280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       	if(Timeout != HAL_MAX_DELAY)
2281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       	{
2282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
2283:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           {
2284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             /* Device is ready */
2285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             hi2c->State = HAL_I2C_STATE_READY;
2286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             /* Process Unlocked */
2287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             __HAL_UNLOCK(hi2c);         
2288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             return HAL_TIMEOUT;
2289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           }
2290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         } 
2291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
2292:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
2293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Check if the NACKF flag has not been set */
2294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if (__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_AF) == RESET)
2295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
2296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Wait until STOPF flag is reset */ 
2297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_STOPF, RESET, Timeout) != HAL_OK)
2298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
2299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_TIMEOUT;
2300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
2301:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
2302:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Clear STOP Flag */
2303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
2304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
2305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Device is ready */
2306:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->State = HAL_I2C_STATE_READY;
2307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
2308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Process Unlocked */
2309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_UNLOCK(hi2c);
2310:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
2311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_OK;
2312:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
2313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
2314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
2315:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Wait until STOPF flag is reset */ 
2316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_STOPF, RESET, Timeout) != HAL_OK)
2317:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
2318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_TIMEOUT;
2319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
2320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
2321:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Clear NACK Flag */
2322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_AF);
2323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
2324:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Clear STOP Flag, auto generated with autoend*/
2325:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
2326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
2327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
2328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Check if the maximum allowed number of trials has been reached */
2329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if (I2C_Trials++ == Trials)
2330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
2331:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Generate Stop */
2332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->Instance->CR2 |= I2C_CR2_STOP;
2333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
2334:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Wait until STOPF flag is reset */ 
2335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_STOPF, RESET, Timeout) != HAL_OK)
2336:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
2337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_TIMEOUT;
2338:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
2339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
2340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Clear STOP Flag */
2341:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
2342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }      
2343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }while(I2C_Trials < Trials);
2344:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_READY;
2346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2347:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
2348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c);
2349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_TIMEOUT;
2351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
2353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2354:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_BUSY;
2355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
2357:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @}
2359:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2360:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /** @defgroup IRQ_Handler_and_Callbacks IRQ Handler and Callbacks
2362:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  * @{
2363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  */   
2364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  This function handles I2C event interrupt request.
2367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
2368:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
2369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval None
2370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** void HAL_I2C_EV_IRQHandler(I2C_HandleTypeDef *hi2c)
2372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
2373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* I2C in mode Transmitter ---------------------------------------------------*/
2374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if (((__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_TXIS) == SET) || (__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_TCR) 
2375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {     
2376:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Slave mode selected */
2377:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if (hi2c->State == HAL_I2C_STATE_SLAVE_BUSY_TX)
2378:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_SlaveTransmit_ISR(hi2c);
2380:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2381:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if (((__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_TXIS) == SET) || (__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_TCR) 
2384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {     
2385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Master mode selected */
2386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if ((hi2c->State == HAL_I2C_STATE_MASTER_BUSY_TX) || (hi2c->State == HAL_I2C_STATE_MEM_BUSY_TX)
2387:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_MasterTransmit_ISR(hi2c);
2389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2392:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* I2C in mode Receiver ----------------------------------------------------*/
2393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if (((__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_RXNE) == SET) || (__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_TCR) 
2394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2395:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Slave mode selected */
2396:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if (hi2c->State == HAL_I2C_STATE_SLAVE_BUSY_RX)
2397:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_SlaveReceive_ISR(hi2c);
2399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2400:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   } 
2401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if (((__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_RXNE) == SET) || (__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_TCR) 
2402:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2403:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Master mode selected */
2404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if ((hi2c->State == HAL_I2C_STATE_MASTER_BUSY_RX) || (hi2c->State == HAL_I2C_STATE_MEM_BUSY_RX)
2405:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2406:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_MasterReceive_ISR(hi2c);
2407:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   } 
2409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
2410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2412:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  This function handles I2C error interrupt request.
2413:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
2414:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
2415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval None
2416:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2417:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** void HAL_I2C_ER_IRQHandler(I2C_HandleTypeDef *hi2c)
2418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
2419:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* I2C Bus error interrupt occurred ------------------------------------*/
2420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if((__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_BERR) == SET) && (__HAL_I2C_GET_IT_SOURCE(hi2c, I2C_IT_ERRI
2421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   { 
2422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode |= HAL_I2C_ERROR_BERR;
2423:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2424:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear BERR flag */
2425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_BERR);
2426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2427:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* I2C Over-Run/Under-Run interrupt occurred ----------------------------------------*/
2429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if((__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_OVR) == SET) && (__HAL_I2C_GET_IT_SOURCE(hi2c, I2C_IT_ERRI)
2430:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   { 
2431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode |= HAL_I2C_ERROR_OVR;
2432:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2433:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear OVR flag */
2434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_OVR);
2435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2436:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* I2C Arbitration Loss error interrupt occurred -------------------------------------*/
2438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if((__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_ARLO) == SET) && (__HAL_I2C_GET_IT_SOURCE(hi2c, I2C_IT_ERRI
2439:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   { 
2440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode |= HAL_I2C_ERROR_ARLO;
2441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2442:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear ARLO flag */
2443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_ARLO);
2444:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Call the Error Callback in case of Error detected */
2447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->ErrorCode != HAL_I2C_ERROR_NONE)
2448:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_READY;
2450:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_I2C_ErrorCallback(hi2c);
2452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
2454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2456:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Master Tx Transfer completed callbacks.
2457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
2458:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
2459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval None
2460:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  __weak void HAL_I2C_MasterTxCpltCallback(I2C_HandleTypeDef *hi2c)
2462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
2463:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Prevent unused argument(s) compilation warning */
2464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   UNUSED(hi2c);
2465:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
2467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             the HAL_I2C_TxCpltCallback could be implemented in the user file
2468:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****    */ 
2469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
2470:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2471:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2472:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Master Rx Transfer completed callbacks.
2473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
2474:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
2475:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval None
2476:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** __weak void HAL_I2C_MasterRxCpltCallback(I2C_HandleTypeDef *hi2c)
2478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
2479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Prevent unused argument(s) compilation warning */
2480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   UNUSED(hi2c);
2481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2482:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
2483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             the HAL_I2C_TxCpltCallback could be implemented in the user file
2484:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****    */
2485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
2486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /** @brief  Slave Tx Transfer completed callbacks.
2488:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
2489:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
2490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval None
2491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  __weak void HAL_I2C_SlaveTxCpltCallback(I2C_HandleTypeDef *hi2c)
2493:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
2494:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Prevent unused argument(s) compilation warning */
2495:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   UNUSED(hi2c);
2496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2497:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
2498:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             the HAL_I2C_TxCpltCallback could be implemented in the user file
2499:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****    */ 
2500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
2501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2502:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2503:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Slave Rx Transfer completed callbacks.
2504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
2505:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
2506:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval None
2507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** __weak void HAL_I2C_SlaveRxCpltCallback(I2C_HandleTypeDef *hi2c)
2509:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
2510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Prevent unused argument(s) compilation warning */
2511:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   UNUSED(hi2c);
2512:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2513:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
2514:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             the HAL_I2C_TxCpltCallback could be implemented in the user file
2515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****    */
2516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
2517:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2518:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Memory Tx Transfer completed callbacks.
2520:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
2521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
2522:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval None
2523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2524:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  __weak void HAL_I2C_MemTxCpltCallback(I2C_HandleTypeDef *hi2c)
2525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
2526:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Prevent unused argument(s) compilation warning */
2527:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   UNUSED(hi2c);
2528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2529:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
2530:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             the HAL_I2C_TxCpltCallback could be implemented in the user file
2531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****    */ 
2532:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
2533:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2534:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2535:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Memory Rx Transfer completed callbacks.
2536:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
2537:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
2538:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval None
2539:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2540:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** __weak void HAL_I2C_MemRxCpltCallback(I2C_HandleTypeDef *hi2c)
2541:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
2542:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Prevent unused argument(s) compilation warning */
2543:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   UNUSED(hi2c);
2544:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2545:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
2546:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             the HAL_I2C_TxCpltCallback could be implemented in the user file
2547:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****    */
2548:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
2549:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2550:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  I2C error callbacks.
2552:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
2553:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
2554:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval None
2555:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2556:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  __weak void HAL_I2C_ErrorCallback(I2C_HandleTypeDef *hi2c)
2557:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
2558:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Prevent unused argument(s) compilation warning */
2559:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   UNUSED(hi2c);
2560:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2561:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* NOTE : This function Should not be modified, when the callback is needed,
2562:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             the HAL_I2C_ErrorCallback could be implemented in the user file
2563:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****    */ 
2564:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
2565:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2566:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2567:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @}
2568:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2569:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2570:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /** @defgroup I2C_Exported_Functions_Group3 Peripheral State and Errors functions
2571:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  *  @brief   Peripheral State and Errors functions
2572:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  *
2573:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** @verbatim   
2574:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  ===============================================================================
2575:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             ##### Peripheral State and Errors functions #####
2576:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****  ===============================================================================  
2577:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     [..]
2578:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     This subsection permit to get in run-time the status of the peripheral 
2579:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     and the data flow.
2580:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2581:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** @endverbatim
2582:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @{
2583:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2584:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2585:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2586:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Returns the I2C state.
2587:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
2588:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
2589:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL state
2590:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2591:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** HAL_I2C_StateTypeDef HAL_I2C_GetState(I2C_HandleTypeDef *hi2c)
2592:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
2593:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   return hi2c->State;
2594:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
2595:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2596:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2597:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Return the I2C error code
2598:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
2599:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *              the configuration information for the specified I2C.
2600:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** * @retval I2C Error Code
2601:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** */
2602:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** uint32_t HAL_I2C_GetError(I2C_HandleTypeDef *hi2c)
2603:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
2604:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   return hi2c->ErrorCode;
2605:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
2606:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2607:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2608:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @}
2609:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */  
2610:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2611:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @}
2613:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2614:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2615:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /** @addtogroup I2C_Private_Functions
2616:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @{
2617:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2618:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2619:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2620:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Handle Interrupt Flags Master Transmit Mode
2621:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
2622:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
2623:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
2624:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2625:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_MasterTransmit_ISR(I2C_HandleTypeDef *hi2c) 
2626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
2627:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint16_t DevAddress;
2628:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2629:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Process Locked */
2630:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   __HAL_LOCK(hi2c); 
2631:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2632:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_TXIS) == SET)
2633:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2634:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Write data to TXDR */
2635:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->TXDR = (*hi2c->pBuffPtr++);
2636:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferSize--;
2637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount--;	
2638:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2639:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_TCR) == SET)
2640:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2641:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((hi2c->XferSize == 0)&&(hi2c->XferCount!=0))
2642:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       DevAddress = (hi2c->Instance->CR2 & I2C_CR2_SADD);
2644:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
2645:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->XferCount > 255)
2646:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {    
2647:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         I2C_TransferConfig(hi2c,DevAddress,255, I2C_RELOAD_MODE, I2C_NO_STARTSTOP);
2648:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferSize = 255;
2649:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
2650:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
2651:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
2652:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         I2C_TransferConfig(hi2c,DevAddress,hi2c->XferCount, I2C_AUTOEND_MODE, I2C_NO_STARTSTOP);
2653:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferSize = hi2c->XferCount;
2654:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
2655:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2656:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
2657:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2658:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Process Unlocked */
2659:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_UNLOCK(hi2c);
2660:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
2661:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wrong size Status regarding TCR flag event */
2662:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->ErrorCode |= HAL_I2C_ERROR_SIZE;
2663:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
2664:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2665:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2666:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_TC) == SET)
2667:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2668:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->XferCount == 0)
2669:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2670:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Generate Stop */
2671:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->CR2 |= I2C_CR2_STOP;
2672:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2673:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
2674:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2675:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Process Unlocked */
2676:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_UNLOCK(hi2c);
2677:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
2678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wrong size Status regarding TCR flag event */
2679:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->ErrorCode |= HAL_I2C_ERROR_SIZE;
2680:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
2681:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2682:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2683:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_STOPF) == SET)
2684:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2685:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_AF) == SET)
2686:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2687:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Clear NACK Flag */
2688:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_AF);
2689:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
2690:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
2691:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2692:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2693:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Disable ERR, TC, STOP, NACK, TXI interrupt */
2694:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_DISABLE_IT(hi2c,I2C_IT_ERRI | I2C_IT_TCI| I2C_IT_STOPI| I2C_IT_NACKI | I2C_IT_TXI );
2695:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2696:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear STOP Flag */
2697:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
2698:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2699:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear Configuration Register 2 */
2700:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     I2C_RESET_CR2(hi2c);
2701:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2702:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Flush TX register if not empty */
2703:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_TXE) == RESET)
2704:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2705:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_TXE);
2706:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2707:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2708:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Call the correct callback to inform upper layer */
2709:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->ErrorCode != HAL_I2C_ERROR_NONE)
2710:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2711:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->State = HAL_I2C_STATE_READY;
2712:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
2713:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Process Unlocked */
2714:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_UNLOCK(hi2c);
2715:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
2716:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
2717:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2718:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
2719:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2720:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->State == HAL_I2C_STATE_MEM_BUSY_TX)
2721:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
2722:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->State = HAL_I2C_STATE_READY;
2723:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
2724:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Process Unlocked */
2725:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_UNLOCK(hi2c);
2726:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
2727:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         HAL_I2C_MemTxCpltCallback(hi2c);
2728:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
2729:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
2730:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
2731:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->State = HAL_I2C_STATE_READY;
2732:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
2733:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Process Unlocked */
2734:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_UNLOCK(hi2c);
2735:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
2736:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         HAL_I2C_MasterTxCpltCallback(hi2c);
2737:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
2738:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2739:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2740:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_AF) == SET)
2741:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2742:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear NACK Flag */
2743:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_AF);
2744:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2745:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
2746:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c);
2747:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2748:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
2749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_I2C_ErrorCallback(hi2c);
2750:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2751:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2752:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Process Unlocked */
2753:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   __HAL_UNLOCK(hi2c);
2754:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2755:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   return HAL_OK;    
2756:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }  
2757:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2758:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2759:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Handle Interrupt Flags Master Receive Mode
2760:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
2761:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
2762:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
2763:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2764:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_MasterReceive_ISR(I2C_HandleTypeDef *hi2c) 
2765:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
2766:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint16_t DevAddress;
2767:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2768:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Process Locked */
2769:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   __HAL_LOCK(hi2c);
2770:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2771:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_RXNE) == SET)
2772:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {  
2773:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Read data from RXDR */
2774:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     (*hi2c->pBuffPtr++) = hi2c->Instance->RXDR;
2775:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferSize--;
2776:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount--;
2777:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2778:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_TCR) == SET)
2779:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2780:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((hi2c->XferSize == 0)&&(hi2c->XferCount!=0))
2781:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {                  
2782:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       DevAddress = (hi2c->Instance->CR2 & I2C_CR2_SADD);
2783:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
2784:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->XferCount > 255)
2785:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
2786:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         I2C_TransferConfig(hi2c,DevAddress,255, I2C_RELOAD_MODE, I2C_NO_STARTSTOP);
2787:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferSize = 255;
2788:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }      
2789:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
2790:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {    
2791:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         I2C_TransferConfig(hi2c,DevAddress,hi2c->XferCount, I2C_AUTOEND_MODE, I2C_NO_STARTSTOP);
2792:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferSize = hi2c->XferCount;
2793:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       } 
2794:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     } 
2795:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
2796:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2797:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Process Unlocked */
2798:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_UNLOCK(hi2c);
2799:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
2800:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wrong size Status regarding TCR flag event */
2801:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->ErrorCode |= HAL_I2C_ERROR_SIZE;
2802:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
2803:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2804:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2805:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_TC) == SET)
2806:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2807:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->XferCount == 0)
2808:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2809:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Generate Stop */
2810:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->CR2 |= I2C_CR2_STOP;
2811:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2812:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
2813:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Process Unlocked */
2815:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_UNLOCK(hi2c);
2816:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
2817:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wrong size Status regarding TCR flag event */
2818:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->ErrorCode |= HAL_I2C_ERROR_SIZE;
2819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
2820:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2821:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2822:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_STOPF) == SET)
2823:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2824:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_AF) == SET)
2825:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2826:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Clear NACK Flag */
2827:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_AF);
2828:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
2829:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
2830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2831:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2832:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Disable ERR, TC, STOP, NACK, TXI interrupt */
2833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_DISABLE_IT(hi2c,I2C_IT_ERRI | I2C_IT_TCI| I2C_IT_STOPI| I2C_IT_NACKI | I2C_IT_RXI );
2834:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2835:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear STOP Flag */
2836:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
2837:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2838:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear Configuration Register 2 */
2839:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     I2C_RESET_CR2(hi2c);
2840:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2841:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Call the correct callback to inform upper layer */
2842:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->ErrorCode != HAL_I2C_ERROR_NONE)
2843:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2844:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->State = HAL_I2C_STATE_READY;
2845:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
2846:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Process Unlocked */
2847:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_UNLOCK(hi2c);
2848:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
2849:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
2850:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2851:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
2852:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2853:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->State == HAL_I2C_STATE_MEM_BUSY_RX)
2854:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
2855:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->State = HAL_I2C_STATE_READY;
2856:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
2857:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Process Unlocked */
2858:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_UNLOCK(hi2c);
2859:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
2860:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         HAL_I2C_MemRxCpltCallback(hi2c);
2861:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
2862:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
2863:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
2864:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->State = HAL_I2C_STATE_READY;
2865:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
2866:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Process Unlocked */
2867:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_UNLOCK(hi2c);
2868:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
2869:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         HAL_I2C_MasterRxCpltCallback(hi2c);
2870:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
2871:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2872:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2873:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_AF) == SET)
2874:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2875:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear NACK Flag */
2876:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_AF);
2877:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2878:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
2879:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c);
2880:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2881:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
2882:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_I2C_ErrorCallback(hi2c);
2883:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2884:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2885:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Process Unlocked */
2886:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   __HAL_UNLOCK(hi2c); 
2887:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2888:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   return HAL_OK; 
2889:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2890:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }  
2891:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2892:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2893:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Handle Interrupt Flags Slave Transmit Mode
2894:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
2895:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
2896:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
2897:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2898:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_SlaveTransmit_ISR(I2C_HandleTypeDef *hi2c) 
2899:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
2900:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Process locked */
2901:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   __HAL_LOCK(hi2c);
2902:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2903:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_AF) != RESET)
2904:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2905:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Check that I2C transfer finished */
2906:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* if yes, normal usecase, a NACK is sent by the MASTER when Transfer is finished */
2907:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Mean XferCount == 0*/
2908:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* So clear Flag NACKF only */
2909:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->XferCount == 0)
2910:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2911:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Clear NACK Flag */
2912:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_AF);
2913:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
2914:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Process Unlocked */
2915:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_UNLOCK(hi2c);
2916:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
2918:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2919:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* if no, error usecase, a Non-Acknowledge of last Data is generated by the MASTER*/
2920:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Clear NACK Flag */
2921:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_AF);
2922:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
2923:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Set ErrorCode corresponding to a Non-Acknowledge */
2924:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
2925:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
2926:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Process Unlocked */
2927:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_UNLOCK(hi2c);
2928:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
2929:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Call the Error callback to prevent upper layer */
2930:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
2931:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2932:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2933:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_ADDR) == SET)
2934:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2935:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear ADDR flag */
2936:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_ADDR);
2937:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2938:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check first if STOPF is set          */
2939:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* to prevent a Write Data in TX buffer */
2940:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* which is stuck in TXDR until next    */
2941:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* communication with Master            */
2942:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_STOPF) == SET)
2943:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2944:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Disable ERRI, TCI, STOPI, NACKI, ADDRI, RXI, TXI interrupt */
2945:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_DISABLE_IT(hi2c,I2C_IT_ERRI | I2C_IT_TCI| I2C_IT_STOPI| I2C_IT_NACKI | I2C_IT_ADDRI |
2946:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2947:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Disable Address Acknowledge */
2948:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR2 |= I2C_CR2_NACK;
2949:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2950:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear STOP Flag */
2951:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
2952:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2953:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_READY;
2954:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2955:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
2956:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c);
2957:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2958:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_I2C_SlaveTxCpltCallback(hi2c);
2959:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2960:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_TXIS) == SET)
2961:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2962:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Write data to TXDR only if XferCount not reach "0" */
2963:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* A TXIS flag can be set, during STOP treatment      */
2964:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->XferCount > 0)
2965:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
2966:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Write data to TXDR */
2967:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->Instance->TXDR = (*hi2c->pBuffPtr++);
2968:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferCount--;
2969:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
2970:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
2971:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2972:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Process Unlocked */
2973:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   __HAL_UNLOCK(hi2c);
2974:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2975:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   return HAL_OK;
2976:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }  
2977:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
2978:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
2979:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Handle Interrupt Flags Slave Receive Mode
2980:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
2981:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
2982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
2983:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
2984:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_SlaveReceive_ISR(I2C_HandleTypeDef *hi2c) 
2985:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
2986:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Process Locked */
2987:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   __HAL_LOCK(hi2c);
2988:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
2989:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_AF) != RESET)
2990:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
2991:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear NACK Flag */
2992:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_AF);
2993:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2994:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
2995:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c);
2996:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
2997:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
2998:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_I2C_ErrorCallback(hi2c);
2999:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3000:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_ADDR) == SET)
3001:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3002:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear ADDR flag */
3003:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_ADDR);
3004:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3005:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_RXNE) == SET)
3006:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3007:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Read data from RXDR */
3008:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     (*hi2c->pBuffPtr++) = hi2c->Instance->RXDR;
3009:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferSize--;
3010:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount--;
3011:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3012:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_STOPF) == SET)
3013:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3014:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Disable ERRI, TCI, STOPI, NACKI, ADDRI, RXI, TXI interrupt */
3015:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_DISABLE_IT(hi2c,I2C_IT_ERRI | I2C_IT_TCI| I2C_IT_STOPI| I2C_IT_NACKI | I2C_IT_ADDRI |
3016:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3017:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Disable Address Acknowledge */
3018:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR2 |= I2C_CR2_NACK;
3019:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3020:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear STOP Flag */
3021:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
3022:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3023:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_READY;
3024:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3025:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
3026:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c);
3027:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3028:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_I2C_SlaveRxCpltCallback(hi2c);
3029:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3030:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3031:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Process Unlocked */
3032:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   __HAL_UNLOCK(hi2c);
3033:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3034:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   return HAL_OK;     
3035:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }  
3036:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
3037:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
3038:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Master sends target device address followed by internal memory address for write reques
3039:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
3040:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
3041:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  DevAddress: Target device address
3042:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  MemAddress: Internal memory address
3043:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  MemAddSize: Size of internal memory address
3044:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Timeout: Timeout duration
3045:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
3046:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
3047:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_RequestMemoryWrite(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint1
3048:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
3049:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   I2C_TransferConfig(hi2c,DevAddress,MemAddSize, I2C_RELOAD_MODE, I2C_GENERATE_START_WRITE);
3050:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3051:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Wait until TXIS flag is set */
3052:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(I2C_WaitOnTXISFlagUntilTimeout(hi2c, Timeout) != HAL_OK)
3053:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3054:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
3055:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3056:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_ERROR;
3057:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3058:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
3059:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3060:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
3061:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3062:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3063:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3064:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* If Memory address size is 8Bit */
3065:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(MemAddSize == I2C_MEMADD_SIZE_8BIT)
3066:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3067:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send Memory Address */
3068:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->TXDR = I2C_MEM_ADD_LSB(MemAddress);    
3069:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }      
3070:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* If Memory address size is 16Bit */
3071:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
3072:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3073:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send MSB of Memory Address */
3074:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->TXDR = I2C_MEM_ADD_MSB(MemAddress); 
3075:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3076:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until TXIS flag is set */
3077:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnTXISFlagUntilTimeout(hi2c, Timeout) != HAL_OK)
3078:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3079:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
3080:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3081:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
3082:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3083:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
3084:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3085:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
3086:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3087:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3088:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3089:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send LSB of Memory Address */
3090:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->TXDR = I2C_MEM_ADD_LSB(MemAddress);  
3091:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3092:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3093:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Wait until TCR flag is set */
3094:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_TCR, RESET, Timeout) != HAL_OK)      
3095:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3096:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_TIMEOUT;
3097:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3098:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3099:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   return HAL_OK;
3100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
3101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
3102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
3103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Master sends target device address followed by internal memory address for read request
3104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
3105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
3106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  DevAddress: Target device address
3107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  MemAddress: Internal memory address
3108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  MemAddSize: Size of internal memory address
3109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Timeout: Timeout duration
3110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
3111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
3112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_RequestMemoryRead(I2C_HandleTypeDef *hi2c, uint16_t DevAddress, uint16
3113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
3114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   I2C_TransferConfig(hi2c,DevAddress,MemAddSize, I2C_SOFTEND_MODE, I2C_GENERATE_START_WRITE);
3115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Wait until TXIS flag is set */
3117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(I2C_WaitOnTXISFlagUntilTimeout(hi2c, Timeout) != HAL_OK)
3118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
3120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_ERROR;
3122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
3124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
3126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* If Memory address size is 8Bit */
3130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(MemAddSize == I2C_MEMADD_SIZE_8BIT)
3131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send Memory Address */
3133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->TXDR = I2C_MEM_ADD_LSB(MemAddress);    
3134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }      
3135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* If Memory address size is 16Bit */
3136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
3137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send MSB of Memory Address */
3139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->TXDR = I2C_MEM_ADD_MSB(MemAddress); 
3140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until TXIS flag is set */
3142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnTXISFlagUntilTimeout(hi2c, Timeout) != HAL_OK)
3143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
3145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
3147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
3149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
3151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Send LSB of Memory Address */
3155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->TXDR = I2C_MEM_ADD_LSB(MemAddress);  
3156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Wait until TC flag is set */
3159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_TC, RESET, Timeout) != HAL_OK)      
3160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_TIMEOUT;
3162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   return HAL_OK;
3165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
3166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
3167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
3168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  DMA I2C master transmit process complete callback.
3169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hdma: DMA handle
3170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval None
3171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
3172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static void I2C_DMAMasterTransmitCplt(DMA_HandleTypeDef *hdma) 
3173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
3174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint16_t DevAddress;
3175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   I2C_HandleTypeDef* hi2c = (I2C_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
3176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check if last DMA request was done with RELOAD */
3178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Set NBYTES to write and reload if size > 255 */
3179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if( (hi2c->XferSize == 255) && (hi2c->XferSize < hi2c->XferCount) )
3180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until TCR flag is set */
3182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_TCR, RESET, I2C_TIMEOUT_TCR) != HAL_OK)      
3183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Disable DMA Request */
3188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR1 &= ~I2C_CR1_TXDMAEN; 
3189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Check if Errors has been detected during transfer */
3191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->ErrorCode != HAL_I2C_ERROR_NONE)
3192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* No need to Check TC flag, with AUTOEND mode the stop is automatically generated */
3194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wait until STOPF flag is reset */ 
3195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, I2C_TIMEOUT_STOPF) != HAL_OK)
3196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
3198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
3199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
3200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
3201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         else
3202:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
3203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3204:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
3205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Clear STOP Flag */
3208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
3209:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Clear Configuration Register 2 */
3211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_RESET_CR2(hi2c);
3212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferCount = 0;
3214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->State = HAL_I2C_STATE_READY;
3216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
3217:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
3219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->pBuffPtr += hi2c->XferSize;
3221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferCount -= hi2c->XferSize;
3222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->XferCount > 255)
3223:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferSize = 255;
3225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3226:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
3227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferSize = hi2c->XferCount;
3229:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3230:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       DevAddress = (hi2c->Instance->CR2 & I2C_CR2_SADD);
3232:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Enable the DMA channel */
3234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_DMA_Start_IT(hi2c->hdmatx, (uint32_t)hi2c->pBuffPtr, (uint32_t)&hi2c->Instance->TXDR, hi2
3235:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3236:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Send Slave Address */
3237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Set NBYTES to write and reload if size > 255 */
3238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if( (hi2c->XferSize == 255) && (hi2c->XferSize < hi2c->XferCount) )
3239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_RELOAD_MODE, I2C_NO_STARTSTOP);
3241:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
3243:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_AUTOEND_MODE, I2C_NO_STARTSTOP);
3245:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }  
3246:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wait until TXIS flag is set */
3248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(I2C_WaitOnTXISFlagUntilTimeout(hi2c, I2C_TIMEOUT_TXIS) != HAL_OK)
3249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3250:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* No need to Check TC flag, with AUTOEND mode the stop is automatically generated */
3251:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Wait until STOPF flag is reset */ 
3252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, I2C_TIMEOUT_STOPF) != HAL_OK)
3253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
3254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
3255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           {
3256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
3257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           }
3258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           else
3259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           {
3260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           }
3262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
3263:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
3264:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Clear STOP Flag */
3265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
3266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
3267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Clear Configuration Register 2 */
3268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         I2C_RESET_CR2(hi2c);
3269:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
3270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferCount = 0;
3271:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
3272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->State = HAL_I2C_STATE_READY;
3273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         HAL_I2C_ErrorCallback(hi2c);
3274:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3275:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
3276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Enable DMA Request */
3278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->Instance->CR1 |= I2C_CR1_TXDMAEN;
3279:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3281:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
3283:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3284:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* No need to Check TC flag, with AUTOEND mode the stop is automatically generated */
3285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until STOPF flag is reset */ 
3286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, I2C_TIMEOUT_STOPF) != HAL_OK)
3287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
3289:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
3291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3292:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
3293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear STOP Flag */
3299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
3300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   	
3301:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear Configuration Register 2 */
3302:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     I2C_RESET_CR2(hi2c);
3303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Disable DMA Request */
3305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR1 &= ~I2C_CR1_TXDMAEN; 
3306:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = 0;
3308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_READY;
3310:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Check if Errors has been detected during transfer */
3312:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->ErrorCode != HAL_I2C_ERROR_NONE)
3313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
3315:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
3317:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_MasterTxCpltCallback(hi2c);
3319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3321:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
3322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
3323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
3324:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  DMA I2C slave transmit process complete callback. 
3325:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hdma: DMA handle
3326:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval None
3327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
3328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static void I2C_DMASlaveTransmitCplt(DMA_HandleTypeDef *hdma) 
3329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
3330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   I2C_HandleTypeDef* hi2c = (I2C_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
3331:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Wait until STOP flag is set */
3333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, I2C_TIMEOUT_STOPF) != HAL_OK)
3334:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
3336:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Normal Use case, a AF is generated by master */
3338:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* to inform slave the end of transfer */
3339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
3340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3341:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
3342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3344:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3347:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Clear STOP flag */
3348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   __HAL_I2C_CLEAR_FLAG(hi2c,I2C_FLAG_STOPF);
3349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Wait until BUSY flag is reset */ 
3351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BUSY, SET, I2C_TIMEOUT_BUSY) != HAL_OK)      
3352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3354:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Disable DMA Request */
3357:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->Instance->CR1 &= ~I2C_CR1_TXDMAEN; 
3358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3359:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->XferCount = 0;
3360:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->State = HAL_I2C_STATE_READY;
3362:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check if Errors has been detected during transfer */
3364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->ErrorCode != HAL_I2C_ERROR_NONE)
3365:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_I2C_ErrorCallback(hi2c);
3367:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3368:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
3369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_I2C_SlaveTxCpltCallback(hi2c);
3371:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
3373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
3374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
3375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief DMA I2C master receive process complete callback 
3376:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hdma: DMA handle
3377:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval None
3378:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
3379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static void I2C_DMAMasterReceiveCplt(DMA_HandleTypeDef *hdma) 
3380:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
3381:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   I2C_HandleTypeDef* hi2c = (I2C_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
3382:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint16_t DevAddress;
3383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3384:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check if last DMA request was done with RELOAD */
3385:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Set NBYTES to write and reload if size > 255 */
3386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if( (hi2c->XferSize == 255) && (hi2c->XferSize < hi2c->XferCount) )
3387:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until TCR flag is set */
3389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_TCR, RESET, I2C_TIMEOUT_TCR) != HAL_OK)      
3390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3392:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Disable DMA Request */
3395:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR1 &= ~I2C_CR1_RXDMAEN; 
3396:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3397:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Check if Errors has been detected during transfer */
3398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->ErrorCode != HAL_I2C_ERROR_NONE)
3399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3400:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* No need to Check TC flag, with AUTOEND mode the stop is automatically generated */
3401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wait until STOPF flag is reset */ 
3402:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, I2C_TIMEOUT_STOPF) != HAL_OK)
3403:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
3405:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
3406:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
3407:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
3408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         else
3409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
3410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3411:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
3412:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3413:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3414:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Clear STOP Flag */
3415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
3416:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3417:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Clear Configuration Register 2 */
3418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_RESET_CR2(hi2c);
3419:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferCount = 0;
3421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->State = HAL_I2C_STATE_READY;
3423:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
3424:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
3426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3427:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->pBuffPtr += hi2c->XferSize;
3428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferCount -= hi2c->XferSize;
3429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->XferCount > 255)
3430:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferSize = 255;
3432:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3433:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
3434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferSize = hi2c->XferCount;
3436:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3437:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       DevAddress = (hi2c->Instance->CR2 & I2C_CR2_SADD);
3439:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Enable the DMA channel */
3441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_DMA_Start_IT(hi2c->hdmarx, (uint32_t)&hi2c->Instance->RXDR, (uint32_t)hi2c->pBuffPtr, hi2
3442:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Send Slave Address */
3444:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Set NBYTES to write and reload if size > 255 */
3445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if( (hi2c->XferSize == 255) && (hi2c->XferSize < hi2c->XferCount) )
3446:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_RELOAD_MODE, I2C_NO_STARTSTOP);
3448:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
3450:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_AUTOEND_MODE, I2C_NO_STARTSTOP);
3452:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }  
3453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wait until RXNE flag is set */
3455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_RXNE, RESET, I2C_TIMEOUT_RXNE) != HAL_OK)      
3456:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3458:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3460:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Check if Errors has been detected during transfer */
3461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode != HAL_I2C_ERROR_NONE)
3462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3463:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* No need to Check TC flag, with AUTOEND mode the stop is automatically generated */
3464:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Wait until STOPF flag is reset */ 
3465:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, I2C_TIMEOUT_STOPF) != HAL_OK)
3466:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
3467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
3468:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           {
3469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
3470:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           }
3471:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           else
3472:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           {
3473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3474:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           }
3475:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
3476:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
3477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Clear STOP Flag */
3478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
3479:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
3480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Clear Configuration Register 2 */
3481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         I2C_RESET_CR2(hi2c);
3482:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
3483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferCount = 0;
3484:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
3485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->State = HAL_I2C_STATE_READY;
3486:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
3487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         HAL_I2C_ErrorCallback(hi2c);
3488:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3489:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
3490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3491:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Enable DMA Request */
3492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->Instance->CR1 |= I2C_CR1_RXDMAEN;
3493:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3494:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3495:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
3497:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3498:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* No need to Check TC flag, with AUTOEND mode the stop is automatically generated */
3499:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until STOPF flag is reset */ 
3500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, I2C_TIMEOUT_STOPF) != HAL_OK)
3501:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3502:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
3503:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
3505:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3506:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
3507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3509:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3511:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3512:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear STOP Flag */
3513:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
3514:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   	
3515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear Configuration Register 2 */
3516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     I2C_RESET_CR2(hi2c);
3517:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3518:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Disable DMA Request */
3519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR1 &= ~I2C_CR1_RXDMAEN; 
3520:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = 0;
3522:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_READY;
3524:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Check if Errors has been detected during transfer */
3526:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->ErrorCode != HAL_I2C_ERROR_NONE)
3527:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
3529:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3530:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
3531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3532:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_MasterRxCpltCallback(hi2c);
3533:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3534:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3535:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
3536:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
3537:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
3538:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  DMA I2C slave receive process complete callback.
3539:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hdma: DMA handle
3540:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval None
3541:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
3542:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static void I2C_DMASlaveReceiveCplt(DMA_HandleTypeDef *hdma) 
3543:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {  
3544:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   I2C_HandleTypeDef* hi2c = (I2C_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
3545:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3546:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Wait until STOPF flag is reset */ 
3547:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, I2C_TIMEOUT_STOPF) != HAL_OK)
3548:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3549:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
3550:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
3552:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3553:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
3554:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3555:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3556:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3557:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3558:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3559:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Clear STOPF flag */
3560:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
3561:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3562:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Wait until BUSY flag is reset */ 
3563:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_BUSY, SET, I2C_TIMEOUT_BUSY) != HAL_OK)      
3564:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3565:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3566:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3567:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3568:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Disable DMA Request */
3569:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->Instance->CR1 &= ~I2C_CR1_RXDMAEN; 
3570:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3571:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Disable Address Acknowledge */
3572:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->Instance->CR2 |= I2C_CR2_NACK;
3573:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3574:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->XferCount = 0;
3575:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3576:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->State = HAL_I2C_STATE_READY;
3577:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3578:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check if Errors has been detected during transfer */
3579:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->ErrorCode != HAL_I2C_ERROR_NONE)
3580:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3581:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_I2C_ErrorCallback(hi2c);
3582:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3583:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
3584:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3585:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_I2C_SlaveRxCpltCallback(hi2c);
3586:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3587:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
3588:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
3589:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
3590:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief DMA I2C Memory Write process complete callback 
3591:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param hdma : DMA handle
3592:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval None
3593:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
3594:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static void I2C_DMAMemTransmitCplt(DMA_HandleTypeDef *hdma)   
3595:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
3596:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint16_t DevAddress;
3597:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   I2C_HandleTypeDef* hi2c = ( I2C_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
3598:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3599:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check if last DMA request was done with RELOAD */
3600:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Set NBYTES to write and reload if size > 255 */
3601:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if( (hi2c->XferSize == 255) && (hi2c->XferSize < hi2c->XferCount) )
3602:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3603:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until TCR flag is set */
3604:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_TCR, RESET, I2C_TIMEOUT_TCR) != HAL_OK)      
3605:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3606:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3607:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3608:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3609:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Disable DMA Request */
3610:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR1 &= ~I2C_CR1_TXDMAEN; 
3611:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Check if Errors has been detected during transfer */
3613:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->ErrorCode != HAL_I2C_ERROR_NONE)
3614:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3615:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* No need to Check TC flag, with AUTOEND mode the stop is automatically generated */
3616:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wait until STOPF flag is reset */ 
3617:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, I2C_TIMEOUT_STOPF) != HAL_OK)
3618:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3619:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
3620:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
3621:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
3622:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
3623:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         else
3624:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
3625:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
3627:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3628:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3629:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Clear STOP Flag */
3630:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
3631:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3632:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Clear Configuration Register 2 */
3633:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_RESET_CR2(hi2c);
3634:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3635:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferCount = 0;
3636:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->State = HAL_I2C_STATE_READY;
3638:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
3639:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3640:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
3641:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3642:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->pBuffPtr += hi2c->XferSize;
3643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferCount -= hi2c->XferSize;
3644:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->XferCount > 255)
3645:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3646:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferSize = 255;
3647:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3648:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
3649:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3650:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferSize = hi2c->XferCount;
3651:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3652:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3653:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       DevAddress = (hi2c->Instance->CR2 & I2C_CR2_SADD);
3654:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3655:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Enable the DMA channel */
3656:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_DMA_Start_IT(hi2c->hdmatx, (uint32_t)hi2c->pBuffPtr, (uint32_t)&hi2c->Instance->TXDR, hi2
3657:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3658:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Send Slave Address */
3659:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Set NBYTES to write and reload if size > 255 */
3660:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if( (hi2c->XferSize == 255) && (hi2c->XferSize < hi2c->XferCount) )
3661:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3662:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_RELOAD_MODE, I2C_NO_STARTSTOP);
3663:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3664:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
3665:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3666:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_AUTOEND_MODE, I2C_NO_STARTSTOP);
3667:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }  
3668:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3669:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wait until TXIS flag is set */
3670:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(I2C_WaitOnTXISFlagUntilTimeout(hi2c, I2C_TIMEOUT_TXIS) != HAL_OK)
3671:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3672:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* No need to Check TC flag, with AUTOEND mode the stop is automatically generated */
3673:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Wait until STOPF flag is reset */ 
3674:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, I2C_TIMEOUT_STOPF) != HAL_OK)
3675:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
3676:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
3677:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           {
3678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
3679:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           }
3680:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           else
3681:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           {
3682:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3683:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           }
3684:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
3685:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
3686:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Clear STOP Flag */
3687:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
3688:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
3689:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Clear Configuration Register 2 */
3690:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         I2C_RESET_CR2(hi2c);
3691:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
3692:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferCount = 0;
3693:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
3694:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->State = HAL_I2C_STATE_READY;
3695:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         HAL_I2C_ErrorCallback(hi2c);
3696:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3697:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
3698:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3699:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Enable DMA Request */
3700:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->Instance->CR1 |= I2C_CR1_TXDMAEN;
3701:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3702:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3703:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3704:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
3705:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3706:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* No need to Check TC flag, with AUTOEND mode the stop is automatically generated */
3707:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until STOPF flag is reset */ 
3708:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, I2C_TIMEOUT_STOPF) != HAL_OK)
3709:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3710:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
3711:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3712:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
3713:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3714:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
3715:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3716:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3717:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3718:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3719:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3720:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear STOP Flag */
3721:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
3722:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   	
3723:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear Configuration Register 2 */
3724:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     I2C_RESET_CR2(hi2c);
3725:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3726:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Disable DMA Request */
3727:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR1 &= ~I2C_CR1_TXDMAEN; 
3728:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3729:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = 0;
3730:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3731:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_READY;
3732:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3733:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Check if Errors has been detected during transfer */
3734:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->ErrorCode != HAL_I2C_ERROR_NONE)
3735:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3736:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
3737:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3738:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
3739:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3740:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_MemTxCpltCallback(hi2c);
3741:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3742:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3743:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
3744:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
3745:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
3746:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  DMA I2C Memory Read process complete callback
3747:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hdma: DMA handle
3748:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval None
3749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
3750:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static void I2C_DMAMemReceiveCplt(DMA_HandleTypeDef *hdma)   
3751:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {  
3752:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   I2C_HandleTypeDef* hi2c = ( I2C_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;  
3753:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint16_t DevAddress;
3754:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3755:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check if last DMA request was done with RELOAD */
3756:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Set NBYTES to write and reload if size > 255 */
3757:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if( (hi2c->XferSize == 255) && (hi2c->XferSize < hi2c->XferCount) )
3758:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3759:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until TCR flag is set */
3760:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_TCR, RESET, I2C_TIMEOUT_TCR) != HAL_OK)      
3761:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3762:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3763:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3764:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3765:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Disable DMA Request */
3766:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR1 &= ~I2C_CR1_RXDMAEN; 
3767:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3768:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Check if Errors has been detected during transfer */
3769:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->ErrorCode != HAL_I2C_ERROR_NONE)
3770:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3771:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* No need to Check TC flag, with AUTOEND mode the stop is automatically generated */
3772:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wait until STOPF flag is reset */ 
3773:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, I2C_TIMEOUT_STOPF) != HAL_OK)
3774:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3775:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
3776:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
3777:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
3778:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
3779:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         else
3780:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
3781:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3782:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
3783:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3784:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3785:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Clear STOP Flag */
3786:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
3787:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3788:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Clear Configuration Register 2 */
3789:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_RESET_CR2(hi2c);
3790:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3791:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferCount = 0;
3792:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3793:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->State = HAL_I2C_STATE_READY;
3794:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
3795:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3796:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
3797:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3798:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->pBuffPtr += hi2c->XferSize;
3799:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferCount -= hi2c->XferSize;
3800:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->XferCount > 255)
3801:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3802:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferSize = 255;
3803:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3804:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
3805:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3806:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferSize = hi2c->XferCount;
3807:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3808:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3809:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       DevAddress = (hi2c->Instance->CR2 & I2C_CR2_SADD);
3810:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3811:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Enable the DMA channel */
3812:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_DMA_Start_IT(hi2c->hdmarx, (uint32_t)&hi2c->Instance->RXDR, (uint32_t)hi2c->pBuffPtr, hi2
3813:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Send Slave Address */
3815:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Set NBYTES to write and reload if size > 255 */
3816:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if( (hi2c->XferSize == 255) && (hi2c->XferSize < hi2c->XferCount) )
3817:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3818:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_RELOAD_MODE, I2C_NO_STARTSTOP);
3819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3820:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
3821:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3822:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         I2C_TransferConfig(hi2c,DevAddress,hi2c->XferSize, I2C_AUTOEND_MODE, I2C_NO_STARTSTOP);
3823:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }  
3824:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3825:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Wait until RXNE flag is set */
3826:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(I2C_WaitOnFlagUntilTimeout(hi2c, I2C_FLAG_RXNE, RESET, I2C_TIMEOUT_RXNE) != HAL_OK)      
3827:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3828:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3829:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3830:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
3831:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Check if Errors has been detected during transfer */
3832:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode != HAL_I2C_ERROR_NONE)
3833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3834:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* No need to Check TC flag, with AUTOEND mode the stop is automatically generated */
3835:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Wait until STOPF flag is reset */ 
3836:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, I2C_TIMEOUT_STOPF) != HAL_OK)
3837:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
3838:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
3839:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           {
3840:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
3841:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           }
3842:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           else
3843:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           {
3844:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3845:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           }
3846:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
3847:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
3848:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Clear STOP Flag */
3849:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
3850:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
3851:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Clear Configuration Register 2 */
3852:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         I2C_RESET_CR2(hi2c);
3853:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
3854:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferCount = 0;
3855:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
3856:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->State = HAL_I2C_STATE_READY;
3857:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         HAL_I2C_ErrorCallback(hi2c);
3858:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3859:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
3860:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3861:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Enable DMA Request */
3862:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->Instance->CR1 |= I2C_CR1_RXDMAEN;
3863:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3864:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3865:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3866:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
3867:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3868:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* No need to Check TC flag, with AUTOEND mode the stop is automatically generated */
3869:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until STOPF flag is reset */ 
3870:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_WaitOnSTOPFlagUntilTimeout(hi2c, I2C_TIMEOUT_STOPF) != HAL_OK)
3871:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3872:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->ErrorCode == HAL_I2C_ERROR_AF)
3873:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3874:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->ErrorCode |= HAL_I2C_ERROR_AF;
3875:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3876:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       else
3877:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3878:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
3879:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3880:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3881:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3882:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear STOP Flag */
3883:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
3884:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   	
3885:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear Configuration Register 2 */
3886:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     I2C_RESET_CR2(hi2c);
3887:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3888:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Disable DMA Request */
3889:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->Instance->CR1 &= ~I2C_CR1_RXDMAEN; 
3890:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3891:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = 0;
3892:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3893:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State = HAL_I2C_STATE_READY;
3894:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3895:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Check if Errors has been detected during transfer */
3896:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(hi2c->ErrorCode != HAL_I2C_ERROR_NONE)
3897:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3898:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
3899:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3900:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     else
3901:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3902:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_MemRxCpltCallback(hi2c);
3903:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3904:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3905:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
3906:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
3907:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
3908:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  DMA I2C communication error callback. 
3909:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param hdma : DMA handle
3910:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval None
3911:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
3912:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static void I2C_DMAError(DMA_HandleTypeDef *hdma)   
3913:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
3914:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   I2C_HandleTypeDef* hi2c = ( I2C_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
3915:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3916:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Disable Acknowledge */
3917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->Instance->CR2 |= I2C_CR2_NACK;
3918:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3919:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->XferCount = 0;
3920:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3921:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->State = HAL_I2C_STATE_READY;
3922:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3923:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->ErrorCode |= HAL_I2C_ERROR_DMA;
3924:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3925:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   HAL_I2C_ErrorCallback(hi2c);
3926:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
3927:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
3928:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
3929:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  This function handles I2C Communication Timeout.
3930:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
3931:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
3932:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Flag: specifies the I2C flag to check.
3933:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Status: The new Flag status (SET or RESET).
3934:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Timeout: Timeout duration
3935:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
3936:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
3937:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_WaitOnFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Flag, FlagSta
3938:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {  
3939:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t tickstart = HAL_GetTick();
3940:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3941:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Wait until flag is set */
3942:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(Status == RESET)
3943:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {    
3944:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     while(__HAL_I2C_GET_FLAG(hi2c, Flag) == RESET)
3945:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3946:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Check for the Timeout */
3947:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(Timeout != HAL_MAX_DELAY)
3948:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3949:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
3950:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
3951:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           hi2c->State= HAL_I2C_STATE_READY;
3952:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           /* Process Unlocked */
3953:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           __HAL_UNLOCK(hi2c);
3954:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_TIMEOUT;
3955:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
3956:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3957:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3958:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3959:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   else
3960:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3961:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     while(__HAL_I2C_GET_FLAG(hi2c, Flag) != RESET)
3962:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3963:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Check for the Timeout */
3964:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(Timeout != HAL_MAX_DELAY)
3965:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
3966:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
3967:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
3968:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           hi2c->State= HAL_I2C_STATE_READY;
3969:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           /* Process Unlocked */
3970:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           __HAL_UNLOCK(hi2c);
3971:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_TIMEOUT;
3972:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
3973:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
3974:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3975:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
3976:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   return HAL_OK;
3977:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
3978:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
3979:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
3980:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  This function handles I2C Communication Timeout for specific usage of TXIS flag.
3981:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
3982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
3983:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Timeout: Timeout duration
3984:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
3985:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
3986:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_WaitOnTXISFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Timeout) 
3987:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {  
3988:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t tickstart = HAL_GetTick();
3989:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
3990:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   while(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_TXIS) == RESET)
3991:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
3992:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Check if a NACK is detected */
3993:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_IsAcknowledgeFailed(hi2c, Timeout) != HAL_OK)
3994:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
3995:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_ERROR;
3996:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
3997:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
3998:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Check for the Timeout */
3999:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Timeout != HAL_MAX_DELAY)
4000:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
4001:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
4002:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
4003:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
4004:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->State= HAL_I2C_STATE_READY;
4005:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
4006:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         /* Process Unlocked */
4007:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         __HAL_UNLOCK(hi2c);
4008:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
4009:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
4010:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
4011:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
4012:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
4013:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   return HAL_OK;      
4014:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
4015:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
4016:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
4017:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  This function handles I2C Communication Timeout for specific usage of STOP flag.
4018:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
4019:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
4020:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Timeout: Timeout duration
4021:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
4022:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
4023:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_WaitOnSTOPFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Timeout)
4024:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {  
4025:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t tickstart = 0x00;
4026:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   tickstart = HAL_GetTick();
4027:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
4028:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   while(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_STOPF) == RESET)
4029:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
4030:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Check if a NACK is detected */
4031:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_IsAcknowledgeFailed(hi2c, Timeout) != HAL_OK)
4032:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
4033:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_ERROR;
4034:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
4035:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
4036:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Check for the Timeout */
4037:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
4038:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
4039:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
4040:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->State= HAL_I2C_STATE_READY;
4041:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
4042:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Process Unlocked */
4043:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_UNLOCK(hi2c);
4044:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
4045:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
4046:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
4047:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
4048:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   return HAL_OK;
4049:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
4050:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
4051:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
4052:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  This function handles I2C Communication Timeout for specific usage of RXNE flag.
4053:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
4054:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
4055:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Timeout: Timeout duration
4056:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
4057:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
4058:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_WaitOnRXNEFlagUntilTimeout(I2C_HandleTypeDef *hi2c, uint32_t Timeout)
4059:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {  
4060:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t tickstart = 0x00;
4061:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   tickstart = HAL_GetTick();
4062:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
4063:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   while(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_RXNE) == RESET)
4064:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
4065:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Check if a NACK is detected */
4066:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(I2C_IsAcknowledgeFailed(hi2c, Timeout) != HAL_OK)
4067:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
4068:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_ERROR;
4069:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
4070:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
4071:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Check if a STOPF is detected */
4072:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_STOPF) == SET)
4073:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
4074:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Clear STOP Flag */
4075:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
4076:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
4077:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Clear Configuration Register 2 */
4078:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       I2C_RESET_CR2(hi2c);
4079:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
4080:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
4081:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->State= HAL_I2C_STATE_READY;
4082:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
4083:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Process Unlocked */
4084:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_UNLOCK(hi2c);
4085:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
4086:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_ERROR;
4087:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
4088:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
4089:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Check for the Timeout */
4090:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
4091:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
4092:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->ErrorCode |= HAL_I2C_ERROR_TIMEOUT;
4093:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->State= HAL_I2C_STATE_READY;
4094:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
4095:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Process Unlocked */
4096:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_UNLOCK(hi2c);
4097:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
4098:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
4099:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
4100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
4101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   return HAL_OK;
4102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
4103:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
4104:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
4105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  This function handles Acknowledge failed detection during an I2C Communication.
4106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c : Pointer to a I2C_HandleTypeDef structure that contains
4107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *                the configuration information for the specified I2C.
4108:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Timeout: Timeout duration
4109:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval HAL status
4110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
4111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static HAL_StatusTypeDef I2C_IsAcknowledgeFailed(I2C_HandleTypeDef *hi2c, uint32_t Timeout)
4112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
4113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t tickstart = 0x00;
4114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   tickstart = HAL_GetTick();
4115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
4116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_AF) == SET)
4117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
4118:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Wait until STOP Flag is reset */
4119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* AutoEnd should be initiate after AF */
4120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     while(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_STOPF) == RESET)
4121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
4122:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       /* Check for the Timeout */
4123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(Timeout != HAL_MAX_DELAY)
4124:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
4125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         if((Timeout == 0)||((HAL_GetTick() - tickstart ) > Timeout))
4126:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
4127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           hi2c->State= HAL_I2C_STATE_READY;
4128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           /* Process Unlocked */
4129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           __HAL_UNLOCK(hi2c);
4130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_TIMEOUT;
4131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
4132:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
4133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
4134:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
4135:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear NACKF Flag */
4136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_AF);
4137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
4138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear STOP Flag */
4139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_STOPF);
4140:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
4141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Flush TX register if not empty */
4142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_TXE) == RESET)
4143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
4144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       __HAL_I2C_CLEAR_FLAG(hi2c, I2C_FLAG_TXE);
4145:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
4146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
4147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Clear Configuration Register 2 */
4148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     I2C_RESET_CR2(hi2c);
4149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
4150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode = HAL_I2C_ERROR_AF;
4151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State= HAL_I2C_STATE_READY;
4152:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
4153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Process Unlocked */
4154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     __HAL_UNLOCK(hi2c);
4155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
4156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     return HAL_ERROR;
4157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
4158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   return HAL_OK;
4159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
4160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
4161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
4162:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @brief  Handles I2Cx communication when starting transfer or during transfer (TC or TCR flag ar
4163:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  hi2c: I2C handle.
4164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  DevAddress: specifies the slave address to be programmed.
4165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Size: specifies the number of bytes to be programmed.
4166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *   This parameter must be a value between 0 and 255.
4167:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Mode: new state of the I2C START condition generation.
4168:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *   This parameter can be one of the following values:
4169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *     @arg I2C_RELOAD_MODE: Enable Reload mode .
4170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *     @arg I2C_AUTOEND_MODE: Enable Automatic end mode.
4171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *     @arg I2C_SOFTEND_MODE: Enable Software end mode.
4172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @param  Request: new state of the I2C START condition generation.
4173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *   This parameter can be one of the following values:
4174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *     @arg I2C_NO_STARTSTOP: Don't Generate stop and start condition.
4175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *     @arg I2C_GENERATE_STOP: Generate stop condition (Size should be set to 0).
4176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *     @arg I2C_GENERATE_START_READ: Generate Restart for read request.
4177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   *     @arg I2C_GENERATE_START_WRITE: Generate Restart for write request.
4178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   * @retval None
4179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   */
4180:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** static void I2C_TransferConfig(I2C_HandleTypeDef *hi2c,  uint16_t DevAddress, uint8_t Size, uint32_
4181:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** {
  26              		.loc 1 4181 0
  27              		.cfi_startproc
  28              		@ args = 4, pretend = 0, frame = 0
  29              		@ frame_needed = 0, uses_anonymous_args = 0
  30              		@ link register save eliminated.
  31              	.LVL0:
  32 0000 10B4     		push	{r4}
  33              		.cfi_def_cfa_offset 4
  34              		.cfi_offset 4, -4
  35              	.LVL1:
4182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t tmpreg = 0;
4183:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
4184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check the parameters */
4185:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   assert_param(IS_I2C_ALL_INSTANCE(hi2c->Instance));
4186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   assert_param(IS_TRANSFER_MODE(Mode));
4187:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   assert_param(IS_TRANSFER_REQUEST(Request));
4188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
4189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Get the CR2 register value */
4190:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   tmpreg = hi2c->Instance->CR2;
  36              		.loc 1 4190 0
  37 0002 0468     		ldr	r4, [r0]
  38 0004 6068     		ldr	r0, [r4, #4]
  39              	.LVL2:
4191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
4192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* clear tmpreg specific bits */
4193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   tmpreg &= (uint32_t)~((uint32_t)(I2C_CR2_SADD | I2C_CR2_NBYTES | I2C_CR2_RELOAD | I2C_CR2_AUTOEND
  40              		.loc 1 4193 0
  41 0006 20F07F70 		bic	r0, r0, #66846720
  42              	.LVL3:
  43 000a 20F45930 		bic	r0, r0, #222208
  44 000e 20F47F70 		bic	r0, r0, #1020
  45 0012 20F00300 		bic	r0, r0, #3
  46              	.LVL4:
4194:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
4195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* update tmpreg */
4196:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   tmpreg |= (uint32_t)(((uint32_t)DevAddress & I2C_CR2_SADD) | (((uint32_t)Size << 16 ) & I2C_CR2_N
  47              		.loc 1 4196 0
  48 0016 C1F30901 		ubfx	r1, r1, #0, #10
  49              	.LVL5:
  50 001a 41EA0241 		orr	r1, r1, r2, lsl #16
  51 001e 1943     		orrs	r1, r1, r3
  52 0020 019B     		ldr	r3, [sp, #4]
  53              	.LVL6:
  54 0022 1943     		orrs	r1, r1, r3
  55 0024 0143     		orrs	r1, r1, r0
  56              	.LVL7:
4197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     (uint32_t)Mode | (uint32_t)Request);
4198:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
4199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* update CR2 register */
4200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->Instance->CR2 = tmpreg;  
  57              		.loc 1 4200 0
  58 0026 6160     		str	r1, [r4, #4]
4201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }  
  59              		.loc 1 4201 0
  60 0028 5DF8044B 		ldr	r4, [sp], #4
  61              		.cfi_restore 4
  62              		.cfi_def_cfa_offset 0
  63              	.LVL8:
  64 002c 7047     		bx	lr
  65              		.cfi_endproc
  66              	.LFE190:
  68              		.section	.text.I2C_IsAcknowledgeFailed,"ax",%progbits
  69              		.align	1
  70              		.syntax unified
  71              		.thumb
  72              		.thumb_func
  73              		.fpu fpv5-d16
  75              	I2C_IsAcknowledgeFailed:
  76              	.LFB189:
4112:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t tickstart = 0x00;
  77              		.loc 1 4112 0
  78              		.cfi_startproc
  79              		@ args = 0, pretend = 0, frame = 0
  80              		@ frame_needed = 0, uses_anonymous_args = 0
  81              	.LVL9:
  82 0000 70B5     		push	{r4, r5, r6, lr}
  83              		.cfi_def_cfa_offset 16
  84              		.cfi_offset 4, -16
  85              		.cfi_offset 5, -12
  86              		.cfi_offset 6, -8
  87              		.cfi_offset 14, -4
  88 0002 0446     		mov	r4, r0
  89 0004 0D46     		mov	r5, r1
  90              	.LVL10:
4114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
  91              		.loc 1 4114 0
  92 0006 FFF7FEFF 		bl	HAL_GetTick
  93              	.LVL11:
  94 000a 0646     		mov	r6, r0
  95              	.LVL12:
4116:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
  96              		.loc 1 4116 0
  97 000c 2368     		ldr	r3, [r4]
  98 000e 9B69     		ldr	r3, [r3, #24]
  99 0010 13F0100F 		tst	r3, #16
 100 0014 15D0     		beq	.L11
 101              	.LVL13:
 102              	.L6:
4120:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 103              		.loc 1 4120 0
 104 0016 2368     		ldr	r3, [r4]
 105 0018 9A69     		ldr	r2, [r3, #24]
 106 001a 12F0200F 		tst	r2, #32
 107 001e 12D1     		bne	.L12
4123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 108              		.loc 1 4123 0
 109 0020 B5F1FF3F 		cmp	r5, #-1
 110 0024 F7D0     		beq	.L6
4125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 111              		.loc 1 4125 0
 112 0026 25B1     		cbz	r5, .L7
4125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 113              		.loc 1 4125 0 is_stmt 0 discriminator 1
 114 0028 FFF7FEFF 		bl	HAL_GetTick
 115              	.LVL14:
 116 002c 801B     		subs	r0, r0, r6
 117 002e A842     		cmp	r0, r5
 118 0030 F1D9     		bls	.L6
 119              	.L7:
4127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           /* Process Unlocked */
 120              		.loc 1 4127 0 is_stmt 1
 121 0032 2023     		movs	r3, #32
 122 0034 84F84130 		strb	r3, [r4, #65]
4129:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_TIMEOUT;
 123              		.loc 1 4129 0
 124 0038 0023     		movs	r3, #0
 125 003a 84F84030 		strb	r3, [r4, #64]
4130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 126              		.loc 1 4130 0
 127 003e 0320     		movs	r0, #3
 128 0040 23E0     		b	.L5
 129              	.LVL15:
 130              	.L11:
4158:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
 131              		.loc 1 4158 0
 132 0042 0020     		movs	r0, #0
 133              	.LVL16:
 134 0044 21E0     		b	.L5
 135              	.L12:
4136:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 136              		.loc 1 4136 0
 137 0046 1022     		movs	r2, #16
 138 0048 DA61     		str	r2, [r3, #28]
4139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 139              		.loc 1 4139 0
 140 004a 2368     		ldr	r3, [r4]
 141 004c 2022     		movs	r2, #32
 142 004e DA61     		str	r2, [r3, #28]
4142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 143              		.loc 1 4142 0
 144 0050 2368     		ldr	r3, [r4]
 145 0052 9A69     		ldr	r2, [r3, #24]
 146 0054 12F0010F 		tst	r2, #1
 147 0058 03D1     		bne	.L9
4144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 148              		.loc 1 4144 0
 149 005a 9A69     		ldr	r2, [r3, #24]
 150 005c 42F00102 		orr	r2, r2, #1
 151 0060 9A61     		str	r2, [r3, #24]
 152              	.L9:
4148:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 153              		.loc 1 4148 0
 154 0062 2268     		ldr	r2, [r4]
 155 0064 5368     		ldr	r3, [r2, #4]
 156 0066 23F0FF73 		bic	r3, r3, #33423360
 157 006a 23F48B33 		bic	r3, r3, #71168
 158 006e 23F4FF73 		bic	r3, r3, #510
 159 0072 23F00103 		bic	r3, r3, #1
 160 0076 5360     		str	r3, [r2, #4]
4150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->State= HAL_I2C_STATE_READY;
 161              		.loc 1 4150 0
 162 0078 0423     		movs	r3, #4
 163 007a 6364     		str	r3, [r4, #68]
4151:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 164              		.loc 1 4151 0
 165 007c 2023     		movs	r3, #32
 166 007e 84F84130 		strb	r3, [r4, #65]
4154:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 167              		.loc 1 4154 0
 168 0082 0023     		movs	r3, #0
 169 0084 84F84030 		strb	r3, [r4, #64]
4156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 170              		.loc 1 4156 0
 171 0088 0120     		movs	r0, #1
 172              	.L5:
4159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 173              		.loc 1 4159 0
 174 008a 70BD     		pop	{r4, r5, r6, pc}
 175              		.cfi_endproc
 176              	.LFE189:
 178              		.section	.text.I2C_WaitOnTXISFlagUntilTimeout,"ax",%progbits
 179              		.align	1
 180              		.syntax unified
 181              		.thumb
 182              		.thumb_func
 183              		.fpu fpv5-d16
 185              	I2C_WaitOnTXISFlagUntilTimeout:
 186              	.LFB186:
3987:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t tickstart = HAL_GetTick();
 187              		.loc 1 3987 0
 188              		.cfi_startproc
 189              		@ args = 0, pretend = 0, frame = 0
 190              		@ frame_needed = 0, uses_anonymous_args = 0
 191              	.LVL17:
 192 0000 70B5     		push	{r4, r5, r6, lr}
 193              		.cfi_def_cfa_offset 16
 194              		.cfi_offset 4, -16
 195              		.cfi_offset 5, -12
 196              		.cfi_offset 6, -8
 197              		.cfi_offset 14, -4
 198 0002 0446     		mov	r4, r0
 199 0004 0D46     		mov	r5, r1
3988:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 200              		.loc 1 3988 0
 201 0006 FFF7FEFF 		bl	HAL_GetTick
 202              	.LVL18:
 203 000a 0646     		mov	r6, r0
 204              	.LVL19:
 205              	.L16:
3990:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 206              		.loc 1 3990 0
 207 000c 2368     		ldr	r3, [r4]
 208 000e 9B69     		ldr	r3, [r3, #24]
 209 0010 13F0020F 		tst	r3, #2
 210 0014 19D1     		bne	.L21
3993:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 211              		.loc 1 3993 0
 212 0016 2946     		mov	r1, r5
 213 0018 2046     		mov	r0, r4
 214 001a FFF7FEFF 		bl	I2C_IsAcknowledgeFailed
 215              	.LVL20:
 216 001e B0B9     		cbnz	r0, .L19
3999:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 217              		.loc 1 3999 0
 218 0020 B5F1FF3F 		cmp	r5, #-1
 219 0024 F2D0     		beq	.L16
4001:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 220              		.loc 1 4001 0
 221 0026 25B1     		cbz	r5, .L17
4001:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 222              		.loc 1 4001 0 is_stmt 0 discriminator 1
 223 0028 FFF7FEFF 		bl	HAL_GetTick
 224              	.LVL21:
 225 002c 801B     		subs	r0, r0, r6
 226 002e A842     		cmp	r0, r5
 227 0030 ECD9     		bls	.L16
 228              	.L17:
4003:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->State= HAL_I2C_STATE_READY;
 229              		.loc 1 4003 0 is_stmt 1
 230 0032 636C     		ldr	r3, [r4, #68]
 231 0034 43F02003 		orr	r3, r3, #32
 232 0038 6364     		str	r3, [r4, #68]
4004:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 233              		.loc 1 4004 0
 234 003a 2023     		movs	r3, #32
 235 003c 84F84130 		strb	r3, [r4, #65]
4007:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 236              		.loc 1 4007 0
 237 0040 0023     		movs	r3, #0
 238 0042 84F84030 		strb	r3, [r4, #64]
4009:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 239              		.loc 1 4009 0
 240 0046 0320     		movs	r0, #3
 241 0048 00E0     		b	.L15
 242              	.L21:
4013:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
 243              		.loc 1 4013 0
 244 004a 0020     		movs	r0, #0
 245              	.L15:
4014:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 246              		.loc 1 4014 0
 247 004c 70BD     		pop	{r4, r5, r6, pc}
 248              	.LVL22:
 249              	.L19:
3995:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 250              		.loc 1 3995 0
 251 004e 0120     		movs	r0, #1
 252 0050 FCE7     		b	.L15
 253              		.cfi_endproc
 254              	.LFE186:
 256              		.section	.text.I2C_WaitOnFlagUntilTimeout,"ax",%progbits
 257              		.align	1
 258              		.syntax unified
 259              		.thumb
 260              		.thumb_func
 261              		.fpu fpv5-d16
 263              	I2C_WaitOnFlagUntilTimeout:
 264              	.LFB185:
3938:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t tickstart = HAL_GetTick();
 265              		.loc 1 3938 0
 266              		.cfi_startproc
 267              		@ args = 0, pretend = 0, frame = 0
 268              		@ frame_needed = 0, uses_anonymous_args = 0
 269              	.LVL23:
 270 0000 2DE9F041 		push	{r4, r5, r6, r7, r8, lr}
 271              		.cfi_def_cfa_offset 24
 272              		.cfi_offset 4, -24
 273              		.cfi_offset 5, -20
 274              		.cfi_offset 6, -16
 275              		.cfi_offset 7, -12
 276              		.cfi_offset 8, -8
 277              		.cfi_offset 14, -4
 278 0004 0546     		mov	r5, r0
 279 0006 0E46     		mov	r6, r1
 280 0008 9046     		mov	r8, r2
 281 000a 1C46     		mov	r4, r3
3939:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 282              		.loc 1 3939 0
 283 000c FFF7FEFF 		bl	HAL_GetTick
 284              	.LVL24:
 285 0010 0746     		mov	r7, r0
 286              	.LVL25:
3942:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {    
 287              		.loc 1 3942 0
 288 0012 B8F1000F 		cmp	r8, #0
 289 0016 15D0     		beq	.L25
 290              	.LVL26:
 291              	.L29:
3961:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 292              		.loc 1 3961 0
 293 0018 2B68     		ldr	r3, [r5]
 294 001a 9B69     		ldr	r3, [r3, #24]
 295 001c 36EA0303 		bics	r3, r6, r3
 296 0020 29D1     		bne	.L33
3964:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 297              		.loc 1 3964 0
 298 0022 B4F1FF3F 		cmp	r4, #-1
 299 0026 F7D0     		beq	.L29
3966:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 300              		.loc 1 3966 0
 301 0028 24B1     		cbz	r4, .L30
3966:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 302              		.loc 1 3966 0 is_stmt 0 discriminator 1
 303 002a FFF7FEFF 		bl	HAL_GetTick
 304              	.LVL27:
 305 002e C01B     		subs	r0, r0, r7
 306 0030 A042     		cmp	r0, r4
 307 0032 F1D9     		bls	.L29
 308              	.L30:
3968:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           /* Process Unlocked */
 309              		.loc 1 3968 0 is_stmt 1
 310 0034 2023     		movs	r3, #32
 311 0036 85F84130 		strb	r3, [r5, #65]
3970:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_TIMEOUT;
 312              		.loc 1 3970 0
 313 003a 0023     		movs	r3, #0
 314 003c 85F84030 		strb	r3, [r5, #64]
3971:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 315              		.loc 1 3971 0
 316 0040 0320     		movs	r0, #3
 317 0042 16E0     		b	.L27
 318              	.L25:
3944:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 319              		.loc 1 3944 0
 320 0044 2B68     		ldr	r3, [r5]
 321 0046 9B69     		ldr	r3, [r3, #24]
 322 0048 36EA0303 		bics	r3, r6, r3
 323 004c 10D0     		beq	.L34
3947:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 324              		.loc 1 3947 0
 325 004e B4F1FF3F 		cmp	r4, #-1
 326 0052 F7D0     		beq	.L25
3949:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 327              		.loc 1 3949 0
 328 0054 24B1     		cbz	r4, .L26
3949:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 329              		.loc 1 3949 0 is_stmt 0 discriminator 1
 330 0056 FFF7FEFF 		bl	HAL_GetTick
 331              	.LVL28:
 332 005a C01B     		subs	r0, r0, r7
 333 005c A042     		cmp	r0, r4
 334 005e F1D9     		bls	.L25
 335              	.L26:
3951:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           /* Process Unlocked */
 336              		.loc 1 3951 0 is_stmt 1
 337 0060 2023     		movs	r3, #32
 338 0062 85F84130 		strb	r3, [r5, #65]
3953:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           return HAL_TIMEOUT;
 339              		.loc 1 3953 0
 340 0066 0023     		movs	r3, #0
 341 0068 85F84030 		strb	r3, [r5, #64]
3954:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 342              		.loc 1 3954 0
 343 006c 0320     		movs	r0, #3
 344 006e 00E0     		b	.L27
 345              	.L34:
3976:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
 346              		.loc 1 3976 0
 347 0070 0020     		movs	r0, #0
 348              	.L27:
3977:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 349              		.loc 1 3977 0
 350 0072 BDE8F081 		pop	{r4, r5, r6, r7, r8, pc}
 351              	.LVL29:
 352              	.L33:
3976:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
 353              		.loc 1 3976 0
 354 0076 0020     		movs	r0, #0
 355 0078 FBE7     		b	.L27
 356              		.cfi_endproc
 357              	.LFE185:
 359              		.section	.text.I2C_RequestMemoryWrite,"ax",%progbits
 360              		.align	1
 361              		.syntax unified
 362              		.thumb
 363              		.thumb_func
 364              		.fpu fpv5-d16
 366              	I2C_RequestMemoryWrite:
 367              	.LFB176:
3048:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   I2C_TransferConfig(hi2c,DevAddress,MemAddSize, I2C_RELOAD_MODE, I2C_GENERATE_START_WRITE);
 368              		.loc 1 3048 0
 369              		.cfi_startproc
 370              		@ args = 4, pretend = 0, frame = 0
 371              		@ frame_needed = 0, uses_anonymous_args = 0
 372              	.LVL30:
 373 0000 70B5     		push	{r4, r5, r6, lr}
 374              		.cfi_def_cfa_offset 16
 375              		.cfi_offset 4, -16
 376              		.cfi_offset 5, -12
 377              		.cfi_offset 6, -8
 378              		.cfi_offset 14, -4
 379 0002 82B0     		sub	sp, sp, #8
 380              		.cfi_def_cfa_offset 24
 381 0004 0446     		mov	r4, r0
 382 0006 1646     		mov	r6, r2
 383 0008 1D46     		mov	r5, r3
3049:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 384              		.loc 1 3049 0
 385 000a 4FF40053 		mov	r3, #8192
 386              	.LVL31:
 387 000e 0093     		str	r3, [sp]
 388 0010 4FF08073 		mov	r3, #16777216
 389 0014 EAB2     		uxtb	r2, r5
 390              	.LVL32:
 391 0016 FFF7FEFF 		bl	I2C_TransferConfig
 392              	.LVL33:
3052:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 393              		.loc 1 3052 0
 394 001a 0699     		ldr	r1, [sp, #24]
 395 001c 2046     		mov	r0, r4
 396 001e FFF7FEFF 		bl	I2C_WaitOnTXISFlagUntilTimeout
 397              	.LVL34:
 398 0022 30B1     		cbz	r0, .L36
3054:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 399              		.loc 1 3054 0
 400 0024 636C     		ldr	r3, [r4, #68]
 401 0026 042B     		cmp	r3, #4
 402 0028 24D1     		bne	.L41
3056:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 403              		.loc 1 3056 0
 404 002a 0123     		movs	r3, #1
 405              	.L37:
3100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 406              		.loc 1 3100 0
 407 002c 1846     		mov	r0, r3
 408 002e 02B0     		add	sp, sp, #8
 409              		.cfi_remember_state
 410              		.cfi_def_cfa_offset 16
 411              		@ sp needed
 412 0030 70BD     		pop	{r4, r5, r6, pc}
 413              	.LVL35:
 414              	.L36:
 415              		.cfi_restore_state
3065:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 416              		.loc 1 3065 0
 417 0032 012D     		cmp	r5, #1
 418 0034 0DD1     		bne	.L38
3068:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }      
 419              		.loc 1 3068 0
 420 0036 2368     		ldr	r3, [r4]
 421 0038 F6B2     		uxtb	r6, r6
 422 003a 9E62     		str	r6, [r3, #40]
 423              	.L39:
3094:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 424              		.loc 1 3094 0
 425 003c 069B     		ldr	r3, [sp, #24]
 426 003e 0022     		movs	r2, #0
 427 0040 8021     		movs	r1, #128
 428 0042 2046     		mov	r0, r4
 429 0044 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 430              	.LVL36:
 431 0048 0346     		mov	r3, r0
 432 004a 0028     		cmp	r0, #0
 433 004c EED0     		beq	.L37
3096:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 434              		.loc 1 3096 0
 435 004e 0323     		movs	r3, #3
 436 0050 ECE7     		b	.L37
 437              	.L38:
3074:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 438              		.loc 1 3074 0
 439 0052 2368     		ldr	r3, [r4]
 440 0054 320A     		lsrs	r2, r6, #8
 441 0056 9A62     		str	r2, [r3, #40]
3077:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 442              		.loc 1 3077 0
 443 0058 0699     		ldr	r1, [sp, #24]
 444 005a 2046     		mov	r0, r4
 445 005c FFF7FEFF 		bl	I2C_WaitOnTXISFlagUntilTimeout
 446              	.LVL37:
 447 0060 20B1     		cbz	r0, .L40
3079:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 448              		.loc 1 3079 0
 449 0062 636C     		ldr	r3, [r4, #68]
 450 0064 042B     		cmp	r3, #4
 451 0066 07D1     		bne	.L42
3081:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 452              		.loc 1 3081 0
 453 0068 0123     		movs	r3, #1
 454 006a DFE7     		b	.L37
 455              	.L40:
3090:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 456              		.loc 1 3090 0
 457 006c 2368     		ldr	r3, [r4]
 458 006e F6B2     		uxtb	r6, r6
 459 0070 9E62     		str	r6, [r3, #40]
 460 0072 E3E7     		b	.L39
 461              	.L41:
3060:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 462              		.loc 1 3060 0
 463 0074 0323     		movs	r3, #3
 464 0076 D9E7     		b	.L37
 465              	.L42:
3085:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 466              		.loc 1 3085 0
 467 0078 0323     		movs	r3, #3
 468 007a D7E7     		b	.L37
 469              		.cfi_endproc
 470              	.LFE176:
 472              		.section	.text.I2C_RequestMemoryRead,"ax",%progbits
 473              		.align	1
 474              		.syntax unified
 475              		.thumb
 476              		.thumb_func
 477              		.fpu fpv5-d16
 479              	I2C_RequestMemoryRead:
 480              	.LFB177:
3113:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   I2C_TransferConfig(hi2c,DevAddress,MemAddSize, I2C_SOFTEND_MODE, I2C_GENERATE_START_WRITE);
 481              		.loc 1 3113 0
 482              		.cfi_startproc
 483              		@ args = 4, pretend = 0, frame = 0
 484              		@ frame_needed = 0, uses_anonymous_args = 0
 485              	.LVL38:
 486 0000 70B5     		push	{r4, r5, r6, lr}
 487              		.cfi_def_cfa_offset 16
 488              		.cfi_offset 4, -16
 489              		.cfi_offset 5, -12
 490              		.cfi_offset 6, -8
 491              		.cfi_offset 14, -4
 492 0002 82B0     		sub	sp, sp, #8
 493              		.cfi_def_cfa_offset 24
 494 0004 0446     		mov	r4, r0
 495 0006 1646     		mov	r6, r2
 496 0008 1D46     		mov	r5, r3
3114:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 497              		.loc 1 3114 0
 498 000a 4FF40053 		mov	r3, #8192
 499              	.LVL39:
 500 000e 0093     		str	r3, [sp]
 501 0010 0023     		movs	r3, #0
 502 0012 EAB2     		uxtb	r2, r5
 503              	.LVL40:
 504 0014 FFF7FEFF 		bl	I2C_TransferConfig
 505              	.LVL41:
3117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 506              		.loc 1 3117 0
 507 0018 0699     		ldr	r1, [sp, #24]
 508 001a 2046     		mov	r0, r4
 509 001c FFF7FEFF 		bl	I2C_WaitOnTXISFlagUntilTimeout
 510              	.LVL42:
 511 0020 30B1     		cbz	r0, .L45
3119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 512              		.loc 1 3119 0
 513 0022 636C     		ldr	r3, [r4, #68]
 514 0024 042B     		cmp	r3, #4
 515 0026 24D1     		bne	.L50
3121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 516              		.loc 1 3121 0
 517 0028 0123     		movs	r3, #1
 518              	.L46:
3165:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 519              		.loc 1 3165 0
 520 002a 1846     		mov	r0, r3
 521 002c 02B0     		add	sp, sp, #8
 522              		.cfi_remember_state
 523              		.cfi_def_cfa_offset 16
 524              		@ sp needed
 525 002e 70BD     		pop	{r4, r5, r6, pc}
 526              	.LVL43:
 527              	.L45:
 528              		.cfi_restore_state
3130:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 529              		.loc 1 3130 0
 530 0030 012D     		cmp	r5, #1
 531 0032 0DD1     		bne	.L47
3133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }      
 532              		.loc 1 3133 0
 533 0034 2368     		ldr	r3, [r4]
 534 0036 F6B2     		uxtb	r6, r6
 535 0038 9E62     		str	r6, [r3, #40]
 536              	.L48:
3159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 537              		.loc 1 3159 0
 538 003a 069B     		ldr	r3, [sp, #24]
 539 003c 0022     		movs	r2, #0
 540 003e 4021     		movs	r1, #64
 541 0040 2046     		mov	r0, r4
 542 0042 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 543              	.LVL44:
 544 0046 0346     		mov	r3, r0
 545 0048 0028     		cmp	r0, #0
 546 004a EED0     		beq	.L46
3161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 547              		.loc 1 3161 0
 548 004c 0323     		movs	r3, #3
 549 004e ECE7     		b	.L46
 550              	.L47:
3139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 551              		.loc 1 3139 0
 552 0050 2368     		ldr	r3, [r4]
 553 0052 320A     		lsrs	r2, r6, #8
 554 0054 9A62     		str	r2, [r3, #40]
3142:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 555              		.loc 1 3142 0
 556 0056 0699     		ldr	r1, [sp, #24]
 557 0058 2046     		mov	r0, r4
 558 005a FFF7FEFF 		bl	I2C_WaitOnTXISFlagUntilTimeout
 559              	.LVL45:
 560 005e 20B1     		cbz	r0, .L49
3144:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 561              		.loc 1 3144 0
 562 0060 636C     		ldr	r3, [r4, #68]
 563 0062 042B     		cmp	r3, #4
 564 0064 07D1     		bne	.L51
3146:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 565              		.loc 1 3146 0
 566 0066 0123     		movs	r3, #1
 567 0068 DFE7     		b	.L46
 568              	.L49:
3155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 569              		.loc 1 3155 0
 570 006a 2368     		ldr	r3, [r4]
 571 006c F6B2     		uxtb	r6, r6
 572 006e 9E62     		str	r6, [r3, #40]
 573 0070 E3E7     		b	.L48
 574              	.L50:
3125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 575              		.loc 1 3125 0
 576 0072 0323     		movs	r3, #3
 577 0074 D9E7     		b	.L46
 578              	.L51:
3150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 579              		.loc 1 3150 0
 580 0076 0323     		movs	r3, #3
 581 0078 D7E7     		b	.L46
 582              		.cfi_endproc
 583              	.LFE177:
 585              		.section	.text.I2C_WaitOnSTOPFlagUntilTimeout,"ax",%progbits
 586              		.align	1
 587              		.syntax unified
 588              		.thumb
 589              		.thumb_func
 590              		.fpu fpv5-d16
 592              	I2C_WaitOnSTOPFlagUntilTimeout:
 593              	.LFB187:
4024:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t tickstart = 0x00;
 594              		.loc 1 4024 0
 595              		.cfi_startproc
 596              		@ args = 0, pretend = 0, frame = 0
 597              		@ frame_needed = 0, uses_anonymous_args = 0
 598              	.LVL46:
 599 0000 70B5     		push	{r4, r5, r6, lr}
 600              		.cfi_def_cfa_offset 16
 601              		.cfi_offset 4, -16
 602              		.cfi_offset 5, -12
 603              		.cfi_offset 6, -8
 604              		.cfi_offset 14, -4
 605 0002 0546     		mov	r5, r0
 606 0004 0C46     		mov	r4, r1
 607              	.LVL47:
4026:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 608              		.loc 1 4026 0
 609 0006 FFF7FEFF 		bl	HAL_GetTick
 610              	.LVL48:
 611 000a 0646     		mov	r6, r0
 612              	.LVL49:
 613              	.L54:
4028:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 614              		.loc 1 4028 0
 615 000c 2B68     		ldr	r3, [r5]
 616 000e 9B69     		ldr	r3, [r3, #24]
 617 0010 13F0200F 		tst	r3, #32
 618 0014 16D1     		bne	.L60
4031:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 619              		.loc 1 4031 0
 620 0016 2146     		mov	r1, r4
 621 0018 2846     		mov	r0, r5
 622 001a FFF7FEFF 		bl	I2C_IsAcknowledgeFailed
 623              	.LVL50:
 624 001e 98B9     		cbnz	r0, .L58
4037:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 625              		.loc 1 4037 0
 626 0020 24B1     		cbz	r4, .L56
4037:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 627              		.loc 1 4037 0 is_stmt 0 discriminator 1
 628 0022 FFF7FEFF 		bl	HAL_GetTick
 629              	.LVL51:
 630 0026 801B     		subs	r0, r0, r6
 631 0028 A042     		cmp	r0, r4
 632 002a EFD9     		bls	.L54
 633              	.L56:
4039:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->State= HAL_I2C_STATE_READY;
 634              		.loc 1 4039 0 is_stmt 1
 635 002c 6B6C     		ldr	r3, [r5, #68]
 636 002e 43F02003 		orr	r3, r3, #32
 637 0032 6B64     		str	r3, [r5, #68]
4040:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 638              		.loc 1 4040 0
 639 0034 2023     		movs	r3, #32
 640 0036 85F84130 		strb	r3, [r5, #65]
4043:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 641              		.loc 1 4043 0
 642 003a 0023     		movs	r3, #0
 643 003c 85F84030 		strb	r3, [r5, #64]
4045:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 644              		.loc 1 4045 0
 645 0040 0320     		movs	r0, #3
 646              	.L55:
4049:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 647              		.loc 1 4049 0
 648 0042 70BD     		pop	{r4, r5, r6, pc}
 649              	.LVL52:
 650              	.L60:
4048:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
 651              		.loc 1 4048 0
 652 0044 0020     		movs	r0, #0
 653 0046 FCE7     		b	.L55
 654              	.L58:
4033:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 655              		.loc 1 4033 0
 656 0048 0120     		movs	r0, #1
 657 004a FAE7     		b	.L55
 658              		.cfi_endproc
 659              	.LFE187:
 661              		.section	.text.I2C_WaitOnRXNEFlagUntilTimeout,"ax",%progbits
 662              		.align	1
 663              		.syntax unified
 664              		.thumb
 665              		.thumb_func
 666              		.fpu fpv5-d16
 668              	I2C_WaitOnRXNEFlagUntilTimeout:
 669              	.LFB188:
4059:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t tickstart = 0x00;
 670              		.loc 1 4059 0
 671              		.cfi_startproc
 672              		@ args = 0, pretend = 0, frame = 0
 673              		@ frame_needed = 0, uses_anonymous_args = 0
 674              	.LVL53:
 675 0000 70B5     		push	{r4, r5, r6, lr}
 676              		.cfi_def_cfa_offset 16
 677              		.cfi_offset 4, -16
 678              		.cfi_offset 5, -12
 679              		.cfi_offset 6, -8
 680              		.cfi_offset 14, -4
 681 0002 0446     		mov	r4, r0
 682 0004 0D46     		mov	r5, r1
 683              	.LVL54:
4061:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 684              		.loc 1 4061 0
 685 0006 FFF7FEFF 		bl	HAL_GetTick
 686              	.LVL55:
 687 000a 0646     		mov	r6, r0
 688              	.LVL56:
 689              	.L62:
4063:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 690              		.loc 1 4063 0
 691 000c 2368     		ldr	r3, [r4]
 692 000e 9B69     		ldr	r3, [r3, #24]
 693 0010 13F0040F 		tst	r3, #4
 694 0014 30D1     		bne	.L69
4066:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 695              		.loc 1 4066 0
 696 0016 2946     		mov	r1, r5
 697 0018 2046     		mov	r0, r4
 698 001a FFF7FEFF 		bl	I2C_IsAcknowledgeFailed
 699              	.LVL57:
 700 001e 68BB     		cbnz	r0, .L67
4072:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 701              		.loc 1 4072 0
 702 0020 2368     		ldr	r3, [r4]
 703 0022 9A69     		ldr	r2, [r3, #24]
 704 0024 12F0200F 		tst	r2, #32
 705 0028 11D1     		bne	.L70
4090:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 706              		.loc 1 4090 0
 707 002a 25B1     		cbz	r5, .L65
4090:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 708              		.loc 1 4090 0 is_stmt 0 discriminator 1
 709 002c FFF7FEFF 		bl	HAL_GetTick
 710              	.LVL58:
 711 0030 801B     		subs	r0, r0, r6
 712 0032 A842     		cmp	r0, r5
 713 0034 EAD9     		bls	.L62
 714              	.L65:
4092:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->State= HAL_I2C_STATE_READY;
 715              		.loc 1 4092 0 is_stmt 1
 716 0036 636C     		ldr	r3, [r4, #68]
 717 0038 43F02003 		orr	r3, r3, #32
 718 003c 6364     		str	r3, [r4, #68]
4093:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 719              		.loc 1 4093 0
 720 003e 2023     		movs	r3, #32
 721 0040 84F84130 		strb	r3, [r4, #65]
4096:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 722              		.loc 1 4096 0
 723 0044 0023     		movs	r3, #0
 724 0046 84F84030 		strb	r3, [r4, #64]
4098:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 725              		.loc 1 4098 0
 726 004a 0320     		movs	r0, #3
 727              	.L63:
4102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 728              		.loc 1 4102 0
 729 004c 70BD     		pop	{r4, r5, r6, pc}
 730              	.LVL59:
 731              	.L70:
4075:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 732              		.loc 1 4075 0
 733 004e 2022     		movs	r2, #32
 734 0050 DA61     		str	r2, [r3, #28]
4078:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 735              		.loc 1 4078 0
 736 0052 2168     		ldr	r1, [r4]
 737 0054 4B68     		ldr	r3, [r1, #4]
 738 0056 23F0FF73 		bic	r3, r3, #33423360
 739 005a 23F48B33 		bic	r3, r3, #71168
 740 005e 23F4FF73 		bic	r3, r3, #510
 741 0062 23F00103 		bic	r3, r3, #1
 742 0066 4B60     		str	r3, [r1, #4]
4080:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->State= HAL_I2C_STATE_READY;
 743              		.loc 1 4080 0
 744 0068 0023     		movs	r3, #0
 745 006a 6364     		str	r3, [r4, #68]
4081:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 746              		.loc 1 4081 0
 747 006c 84F84120 		strb	r2, [r4, #65]
4084:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 748              		.loc 1 4084 0
 749 0070 84F84030 		strb	r3, [r4, #64]
4086:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 750              		.loc 1 4086 0
 751 0074 0120     		movs	r0, #1
 752 0076 E9E7     		b	.L63
 753              	.L69:
4101:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
 754              		.loc 1 4101 0
 755 0078 0020     		movs	r0, #0
 756 007a E7E7     		b	.L63
 757              	.L67:
4068:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 758              		.loc 1 4068 0
 759 007c 0120     		movs	r0, #1
 760 007e E5E7     		b	.L63
 761              		.cfi_endproc
 762              	.LFE188:
 764              		.section	.text.HAL_I2C_MspInit,"ax",%progbits
 765              		.align	1
 766              		.weak	HAL_I2C_MspInit
 767              		.syntax unified
 768              		.thumb
 769              		.thumb_func
 770              		.fpu fpv5-d16
 772              	HAL_I2C_MspInit:
 773              	.LFB140:
 408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Prevent unused argument(s) compilation warning */
 774              		.loc 1 408 0
 775              		.cfi_startproc
 776              		@ args = 0, pretend = 0, frame = 0
 777              		@ frame_needed = 0, uses_anonymous_args = 0
 778              		@ link register save eliminated.
 779              	.LVL60:
 415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 780              		.loc 1 415 0
 781 0000 7047     		bx	lr
 782              		.cfi_endproc
 783              	.LFE140:
 785              		.section	.text.HAL_I2C_Init,"ax",%progbits
 786              		.align	1
 787              		.global	HAL_I2C_Init
 788              		.syntax unified
 789              		.thumb
 790              		.thumb_func
 791              		.fpu fpv5-d16
 793              	HAL_I2C_Init:
 794              	.LFB138:
 291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check the I2C handle allocation */
 795              		.loc 1 291 0
 796              		.cfi_startproc
 797              		@ args = 0, pretend = 0, frame = 0
 798              		@ frame_needed = 0, uses_anonymous_args = 0
 799              	.LVL61:
 293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 800              		.loc 1 293 0
 801 0000 0028     		cmp	r0, #0
 802 0002 4FD0     		beq	.L78
 291:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check the I2C handle allocation */
 803              		.loc 1 291 0
 804 0004 10B5     		push	{r4, lr}
 805              		.cfi_def_cfa_offset 8
 806              		.cfi_offset 4, -8
 807              		.cfi_offset 14, -4
 808 0006 0446     		mov	r4, r0
 308:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 809              		.loc 1 308 0
 810 0008 90F84130 		ldrb	r3, [r0, #65]	@ zero_extendqisi2
 811 000c 002B     		cmp	r3, #0
 812 000e 3AD0     		beq	.L83
 813              	.LVL62:
 814              	.L74:
 316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 815              		.loc 1 316 0
 816 0010 2423     		movs	r3, #36
 817 0012 84F84130 		strb	r3, [r4, #65]
 319:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 818              		.loc 1 319 0
 819 0016 2268     		ldr	r2, [r4]
 820 0018 1368     		ldr	r3, [r2]
 821 001a 23F00103 		bic	r3, r3, #1
 822 001e 1360     		str	r3, [r2]
 323:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 823              		.loc 1 323 0
 824 0020 6368     		ldr	r3, [r4, #4]
 825 0022 2268     		ldr	r2, [r4]
 826 0024 23F07063 		bic	r3, r3, #251658240
 827 0028 1361     		str	r3, [r2, #16]
 327:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->Init.OwnAddress1 != 0)
 828              		.loc 1 327 0
 829 002a 2268     		ldr	r2, [r4]
 830 002c 9368     		ldr	r3, [r2, #8]
 831 002e 23F40043 		bic	r3, r3, #32768
 832 0032 9360     		str	r3, [r2, #8]
 328:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 833              		.loc 1 328 0
 834 0034 A368     		ldr	r3, [r4, #8]
 835 0036 33B1     		cbz	r3, .L75
 330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 836              		.loc 1 330 0
 837 0038 E268     		ldr	r2, [r4, #12]
 838 003a 012A     		cmp	r2, #1
 839 003c 28D0     		beq	.L84
 336:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 840              		.loc 1 336 0
 841 003e 2268     		ldr	r2, [r4]
 842 0040 43F40443 		orr	r3, r3, #33792
 843 0044 9360     		str	r3, [r2, #8]
 844              	.L75:
 342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 845              		.loc 1 342 0
 846 0046 E368     		ldr	r3, [r4, #12]
 847 0048 022B     		cmp	r3, #2
 848 004a 26D0     		beq	.L85
 849              	.L77:
 347:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 850              		.loc 1 347 0
 851 004c 2268     		ldr	r2, [r4]
 852 004e 5168     		ldr	r1, [r2, #4]
 853 0050 154B     		ldr	r3, .L86
 854 0052 0B43     		orrs	r3, r3, r1
 855 0054 5360     		str	r3, [r2, #4]
 351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 856              		.loc 1 351 0
 857 0056 2369     		ldr	r3, [r4, #16]
 858 0058 6269     		ldr	r2, [r4, #20]
 859 005a 1343     		orrs	r3, r3, r2
 860 005c A169     		ldr	r1, [r4, #24]
 861 005e 2268     		ldr	r2, [r4]
 862 0060 43EA0123 		orr	r3, r3, r1, lsl #8
 863 0064 D360     		str	r3, [r2, #12]
 355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 864              		.loc 1 355 0
 865 0066 E369     		ldr	r3, [r4, #28]
 866 0068 216A     		ldr	r1, [r4, #32]
 867 006a 2268     		ldr	r2, [r4]
 868 006c 0B43     		orrs	r3, r3, r1
 869 006e 1360     		str	r3, [r2]
 358:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 870              		.loc 1 358 0
 871 0070 2268     		ldr	r2, [r4]
 872 0072 1368     		ldr	r3, [r2]
 873 0074 43F00103 		orr	r3, r3, #1
 874 0078 1360     		str	r3, [r2]
 360:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   hi2c->State = HAL_I2C_STATE_READY;
 875              		.loc 1 360 0
 876 007a 0020     		movs	r0, #0
 877 007c 6064     		str	r0, [r4, #68]
 361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 878              		.loc 1 361 0
 879 007e 2023     		movs	r3, #32
 880 0080 84F84130 		strb	r3, [r4, #65]
 364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 881              		.loc 1 364 0
 882 0084 10BD     		pop	{r4, pc}
 883              	.LVL63:
 884              	.L83:
 311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     /* Init the low level hardware : GPIO, CLOCK, CORTEX...etc */
 885              		.loc 1 311 0
 886 0086 80F84030 		strb	r3, [r0, #64]
 313:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 887              		.loc 1 313 0
 888 008a FFF7FEFF 		bl	HAL_I2C_MspInit
 889              	.LVL64:
 890 008e BFE7     		b	.L74
 891              	.L84:
 332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 892              		.loc 1 332 0
 893 0090 2268     		ldr	r2, [r4]
 894 0092 43F40043 		orr	r3, r3, #32768
 895 0096 9360     		str	r3, [r2, #8]
 896 0098 D5E7     		b	.L75
 897              	.L85:
 344:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 898              		.loc 1 344 0
 899 009a 2368     		ldr	r3, [r4]
 900 009c 4FF40062 		mov	r2, #2048
 901 00a0 5A60     		str	r2, [r3, #4]
 902 00a2 D3E7     		b	.L77
 903              	.LVL65:
 904              	.L78:
 905              		.cfi_def_cfa_offset 0
 906              		.cfi_restore 4
 907              		.cfi_restore 14
 295:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 908              		.loc 1 295 0
 909 00a4 0120     		movs	r0, #1
 910              	.LVL66:
 364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 911              		.loc 1 364 0
 912 00a6 7047     		bx	lr
 913              	.L87:
 914              		.align	2
 915              	.L86:
 916 00a8 00800002 		.word	33587200
 917              		.cfi_endproc
 918              	.LFE138:
 920              		.section	.text.HAL_I2C_MspDeInit,"ax",%progbits
 921              		.align	1
 922              		.weak	HAL_I2C_MspDeInit
 923              		.syntax unified
 924              		.thumb
 925              		.thumb_func
 926              		.fpu fpv5-d16
 928              	HAL_I2C_MspDeInit:
 929              	.LFB141:
 424:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Prevent unused argument(s) compilation warning */
 930              		.loc 1 424 0
 931              		.cfi_startproc
 932              		@ args = 0, pretend = 0, frame = 0
 933              		@ frame_needed = 0, uses_anonymous_args = 0
 934              		@ link register save eliminated.
 935              	.LVL67:
 431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 936              		.loc 1 431 0
 937 0000 7047     		bx	lr
 938              		.cfi_endproc
 939              	.LFE141:
 941              		.section	.text.HAL_I2C_DeInit,"ax",%progbits
 942              		.align	1
 943              		.global	HAL_I2C_DeInit
 944              		.syntax unified
 945              		.thumb
 946              		.thumb_func
 947              		.fpu fpv5-d16
 949              	HAL_I2C_DeInit:
 950              	.LFB139:
 373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check the I2C handle allocation */
 951              		.loc 1 373 0
 952              		.cfi_startproc
 953              		@ args = 0, pretend = 0, frame = 0
 954              		@ frame_needed = 0, uses_anonymous_args = 0
 955              	.LVL68:
 375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 956              		.loc 1 375 0
 957 0000 90B1     		cbz	r0, .L91
 373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check the I2C handle allocation */
 958              		.loc 1 373 0
 959 0002 10B5     		push	{r4, lr}
 960              		.cfi_def_cfa_offset 8
 961              		.cfi_offset 4, -8
 962              		.cfi_offset 14, -4
 963 0004 0446     		mov	r4, r0
 383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 964              		.loc 1 383 0
 965 0006 2423     		movs	r3, #36
 966 0008 80F84130 		strb	r3, [r0, #65]
 386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 967              		.loc 1 386 0
 968 000c 0268     		ldr	r2, [r0]
 969 000e 1368     		ldr	r3, [r2]
 970 0010 23F00103 		bic	r3, r3, #1
 971 0014 1360     		str	r3, [r2]
 389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 972              		.loc 1 389 0
 973 0016 FFF7FEFF 		bl	HAL_I2C_MspDeInit
 974              	.LVL69:
 391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 975              		.loc 1 391 0
 976 001a 0020     		movs	r0, #0
 977 001c 6064     		str	r0, [r4, #68]
 393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 978              		.loc 1 393 0
 979 001e 84F84100 		strb	r0, [r4, #65]
 396:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 980              		.loc 1 396 0
 981 0022 84F84000 		strb	r0, [r4, #64]
 399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 982              		.loc 1 399 0
 983 0026 10BD     		pop	{r4, pc}
 984              	.LVL70:
 985              	.L91:
 986              		.cfi_def_cfa_offset 0
 987              		.cfi_restore 4
 988              		.cfi_restore 14
 377:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 989              		.loc 1 377 0
 990 0028 0120     		movs	r0, #1
 991              	.LVL71:
 399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 992              		.loc 1 399 0
 993 002a 7047     		bx	lr
 994              		.cfi_endproc
 995              	.LFE139:
 997              		.section	.text.HAL_I2C_Master_Transmit,"ax",%progbits
 998              		.align	1
 999              		.global	HAL_I2C_Master_Transmit
 1000              		.syntax unified
 1001              		.thumb
 1002              		.thumb_func
 1003              		.fpu fpv5-d16
 1005              	HAL_I2C_Master_Transmit:
 1006              	.LFB142:
 507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t sizetmp = 0;
 1007              		.loc 1 507 0
 1008              		.cfi_startproc
 1009              		@ args = 4, pretend = 0, frame = 0
 1010              		@ frame_needed = 0, uses_anonymous_args = 0
 1011              	.LVL72:
 1012 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1013              		.cfi_def_cfa_offset 28
 1014              		.cfi_offset 4, -28
 1015              		.cfi_offset 5, -24
 1016              		.cfi_offset 6, -20
 1017              		.cfi_offset 7, -16
 1018              		.cfi_offset 8, -12
 1019              		.cfi_offset 9, -8
 1020              		.cfi_offset 14, -4
 1021 0004 83B0     		sub	sp, sp, #12
 1022              		.cfi_def_cfa_offset 40
 1023 0006 1C46     		mov	r4, r3
 1024              	.LVL73:
 510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {    
 1025              		.loc 1 510 0
 1026 0008 90F84130 		ldrb	r3, [r0, #65]	@ zero_extendqisi2
 1027              	.LVL74:
 1028 000c DBB2     		uxtb	r3, r3
 1029 000e 202B     		cmp	r3, #32
 1030 0010 40F09080 		bne	.L105
 1031 0014 0546     		mov	r5, r0
 1032 0016 8846     		mov	r8, r1
 1033 0018 1646     		mov	r6, r2
 512:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1034              		.loc 1 512 0
 1035 001a B4FA84F3 		clz	r3, r4
 1036 001e 5B09     		lsrs	r3, r3, #5
 1037 0020 002A     		cmp	r2, #0
 1038 0022 08BF     		it	eq
 1039 0024 0123     		moveq	r3, #1
 1040 0026 002B     		cmp	r3, #0
 1041 0028 40F08980 		bne	.L106
 517:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1042              		.loc 1 517 0
 1043 002c 0368     		ldr	r3, [r0]
 1044 002e 9B69     		ldr	r3, [r3, #24]
 1045 0030 13F4004F 		tst	r3, #32768
 1046 0034 40F08580 		bne	.L107
 523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1047              		.loc 1 523 0
 1048 0038 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 1049 003c 012B     		cmp	r3, #1
 1050 003e 00F08280 		beq	.L108
 523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1051              		.loc 1 523 0 is_stmt 0 discriminator 2
 1052 0042 0123     		movs	r3, #1
 1053 0044 80F84030 		strb	r3, [r0, #64]
 525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
 1054              		.loc 1 525 0 is_stmt 1 discriminator 2
 1055 0048 2123     		movs	r3, #33
 1056 004a 80F84130 		strb	r3, [r0, #65]
 526:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1057              		.loc 1 526 0 discriminator 2
 1058 004e 0023     		movs	r3, #0
 1059 0050 4364     		str	r3, [r0, #68]
 531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1060              		.loc 1 531 0 discriminator 2
 1061 0052 FF2C     		cmp	r4, #255
 1062 0054 09D9     		bls	.L98
 533:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       sizetmp = 255;
 1063              		.loc 1 533 0
 1064 0056 4FF40053 		mov	r3, #8192
 1065 005a 0093     		str	r3, [sp]
 1066 005c 4FF08073 		mov	r3, #16777216
 1067 0060 FF22     		movs	r2, #255
 1068              	.LVL75:
 1069 0062 FFF7FEFF 		bl	I2C_TransferConfig
 1070              	.LVL76:
 534:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 1071              		.loc 1 534 0
 1072 0066 FF27     		movs	r7, #255
 1073 0068 1AE0     		b	.L103
 1074              	.LVL77:
 1075              	.L98:
 538:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       sizetmp = Size;
 1076              		.loc 1 538 0
 1077 006a 4FF40053 		mov	r3, #8192
 1078 006e 0093     		str	r3, [sp]
 1079 0070 4FF00073 		mov	r3, #33554432
 1080 0074 E2B2     		uxtb	r2, r4
 1081              	.LVL78:
 1082 0076 FFF7FEFF 		bl	I2C_TransferConfig
 1083              	.LVL79:
 539:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 1084              		.loc 1 539 0
 1085 007a 2746     		mov	r7, r4
 1086              	.LVL80:
 1087 007c 10E0     		b	.L103
 1088              	.LVL81:
 1089              	.L115:
 547:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 1090              		.loc 1 547 0
 1091 007e 6B6C     		ldr	r3, [r5, #68]
 1092 0080 042B     		cmp	r3, #4
 1093 0082 62D1     		bne	.L109
 549:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 1094              		.loc 1 549 0
 1095 0084 0123     		movs	r3, #1
 1096 0086 56E0     		b	.L97
 1097              	.LVL82:
 1098              	.L102:
 576:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           sizetmp = Size;
 1099              		.loc 1 576 0
 1100 0088 0023     		movs	r3, #0
 1101 008a 0093     		str	r3, [sp]
 1102 008c 4FF00073 		mov	r3, #33554432
 1103 0090 E2B2     		uxtb	r2, r4
 1104 0092 4146     		mov	r1, r8
 1105 0094 2846     		mov	r0, r5
 1106 0096 FFF7FEFF 		bl	I2C_TransferConfig
 1107              	.LVL83:
 577:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 1108              		.loc 1 577 0
 1109 009a 2746     		mov	r7, r4
 1110              	.LVL84:
 1111              	.L101:
 581:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1112              		.loc 1 581 0
 1113 009c 5CB3     		cbz	r4, .L114
 557:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       sizetmp--;
 1114              		.loc 1 557 0
 1115 009e 4E46     		mov	r6, r9
 1116              	.LVL85:
 1117              	.L103:
 545:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 1118              		.loc 1 545 0
 1119 00a0 0A99     		ldr	r1, [sp, #40]
 1120 00a2 2846     		mov	r0, r5
 1121 00a4 FFF7FEFF 		bl	I2C_WaitOnTXISFlagUntilTimeout
 1122              	.LVL86:
 1123 00a8 0028     		cmp	r0, #0
 1124 00aa E8D1     		bne	.L115
 557:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       sizetmp--;
 1125              		.loc 1 557 0
 1126 00ac 06F10109 		add	r9, r6, #1
 1127              	.LVL87:
 1128 00b0 2B68     		ldr	r3, [r5]
 1129 00b2 3278     		ldrb	r2, [r6]	@ zero_extendqisi2
 1130 00b4 9A62     		str	r2, [r3, #40]
 1131              	.LVL88:
 559:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 1132              		.loc 1 559 0
 1133 00b6 013C     		subs	r4, r4, #1
 1134              	.LVL89:
 1135 00b8 A4B2     		uxth	r4, r4
 1136              	.LVL90:
 561:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 1137              		.loc 1 561 0
 1138 00ba 013F     		subs	r7, r7, #1
 1139              	.LVL91:
 1140 00bc 0CBF     		ite	eq
 1141 00be 0123     		moveq	r3, #1
 1142 00c0 0023     		movne	r3, #0
 1143 00c2 002C     		cmp	r4, #0
 1144 00c4 08BF     		it	eq
 1145 00c6 0023     		moveq	r3, #0
 1146 00c8 002B     		cmp	r3, #0
 1147 00ca E7D0     		beq	.L101
 564:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 1148              		.loc 1 564 0
 1149 00cc 0A9B     		ldr	r3, [sp, #40]
 1150 00ce 0022     		movs	r2, #0
 1151 00d0 8021     		movs	r1, #128
 1152 00d2 2846     		mov	r0, r5
 1153 00d4 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 1154              	.LVL92:
 1155 00d8 0028     		cmp	r0, #0
 1156 00da 38D1     		bne	.L110
 569:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 1157              		.loc 1 569 0
 1158 00dc FF2C     		cmp	r4, #255
 1159 00de D3D9     		bls	.L102
 571:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           sizetmp = 255;
 1160              		.loc 1 571 0
 1161 00e0 0023     		movs	r3, #0
 1162 00e2 0093     		str	r3, [sp]
 1163 00e4 4FF08073 		mov	r3, #16777216
 1164 00e8 FF22     		movs	r2, #255
 1165 00ea 4146     		mov	r1, r8
 1166 00ec 2846     		mov	r0, r5
 1167 00ee FFF7FEFF 		bl	I2C_TransferConfig
 1168              	.LVL93:
 572:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 1169              		.loc 1 572 0
 1170 00f2 FF27     		movs	r7, #255
 1171 00f4 D2E7     		b	.L101
 1172              	.LVL94:
 1173              	.L114:
 585:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1174              		.loc 1 585 0
 1175 00f6 0A99     		ldr	r1, [sp, #40]
 1176 00f8 2846     		mov	r0, r5
 1177 00fa FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 1178              	.LVL95:
 1179 00fe 0346     		mov	r3, r0
 1180 0100 20B1     		cbz	r0, .L104
 587:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 1181              		.loc 1 587 0
 1182 0102 6B6C     		ldr	r3, [r5, #68]
 1183 0104 042B     		cmp	r3, #4
 1184 0106 24D1     		bne	.L112
 589:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 1185              		.loc 1 589 0
 1186 0108 0123     		movs	r3, #1
 1187 010a 14E0     		b	.L97
 1188              	.L104:
 598:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   	
 1189              		.loc 1 598 0
 1190 010c 2A68     		ldr	r2, [r5]
 1191 010e 2021     		movs	r1, #32
 1192 0110 D161     		str	r1, [r2, #28]
 601:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1193              		.loc 1 601 0
 1194 0112 2868     		ldr	r0, [r5]
 1195 0114 4268     		ldr	r2, [r0, #4]
 1196 0116 22F0FF72 		bic	r2, r2, #33423360
 1197 011a 22F48B32 		bic	r2, r2, #71168
 1198 011e 22F4FF72 		bic	r2, r2, #510
 1199 0122 22F00102 		bic	r2, r2, #1
 1200 0126 4260     		str	r2, [r0, #4]
 603:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1201              		.loc 1 603 0
 1202 0128 85F84110 		strb	r1, [r5, #65]
 606:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1203              		.loc 1 606 0
 1204 012c 0022     		movs	r2, #0
 1205 012e 85F84020 		strb	r2, [r5, #64]
 608:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 1206              		.loc 1 608 0
 1207 0132 00E0     		b	.L97
 1208              	.LVL96:
 1209              	.L105:
 612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 1210              		.loc 1 612 0
 1211 0134 0223     		movs	r3, #2
 1212              	.LVL97:
 1213              	.L97:
 614:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 1214              		.loc 1 614 0
 1215 0136 1846     		mov	r0, r3
 1216 0138 03B0     		add	sp, sp, #12
 1217              		.cfi_remember_state
 1218              		.cfi_def_cfa_offset 28
 1219              		@ sp needed
 1220 013a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1221              	.LVL98:
 1222              	.L106:
 1223              		.cfi_restore_state
 514:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 1224              		.loc 1 514 0
 1225 013e 0123     		movs	r3, #1
 1226 0140 F9E7     		b	.L97
 1227              	.L107:
 519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 1228              		.loc 1 519 0
 1229 0142 0223     		movs	r3, #2
 1230 0144 F7E7     		b	.L97
 1231              	.L108:
 523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1232              		.loc 1 523 0
 1233 0146 0223     		movs	r3, #2
 1234 0148 F5E7     		b	.L97
 1235              	.LVL99:
 1236              	.L109:
 553:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 1237              		.loc 1 553 0
 1238 014a 0323     		movs	r3, #3
 1239 014c F3E7     		b	.L97
 1240              	.LVL100:
 1241              	.L110:
 566:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 1242              		.loc 1 566 0
 1243 014e 0323     		movs	r3, #3
 1244 0150 F1E7     		b	.L97
 1245              	.L112:
 593:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 1246              		.loc 1 593 0
 1247 0152 0323     		movs	r3, #3
 1248 0154 EFE7     		b	.L97
 1249              		.cfi_endproc
 1250              	.LFE142:
 1252              		.section	.text.HAL_I2C_Master_Receive,"ax",%progbits
 1253              		.align	1
 1254              		.global	HAL_I2C_Master_Receive
 1255              		.syntax unified
 1256              		.thumb
 1257              		.thumb_func
 1258              		.fpu fpv5-d16
 1260              	HAL_I2C_Master_Receive:
 1261              	.LFB143:
 627:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t sizetmp = 0;
 1262              		.loc 1 627 0
 1263              		.cfi_startproc
 1264              		@ args = 4, pretend = 0, frame = 0
 1265              		@ frame_needed = 0, uses_anonymous_args = 0
 1266              	.LVL101:
 1267 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 1268              		.cfi_def_cfa_offset 28
 1269              		.cfi_offset 4, -28
 1270              		.cfi_offset 5, -24
 1271              		.cfi_offset 6, -20
 1272              		.cfi_offset 7, -16
 1273              		.cfi_offset 8, -12
 1274              		.cfi_offset 9, -8
 1275              		.cfi_offset 14, -4
 1276 0004 83B0     		sub	sp, sp, #12
 1277              		.cfi_def_cfa_offset 40
 1278 0006 1C46     		mov	r4, r3
 1279              	.LVL102:
 630:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {    
 1280              		.loc 1 630 0
 1281 0008 90F84130 		ldrb	r3, [r0, #65]	@ zero_extendqisi2
 1282              	.LVL103:
 1283 000c DBB2     		uxtb	r3, r3
 1284 000e 202B     		cmp	r3, #32
 1285 0010 40F09080 		bne	.L125
 1286 0014 0546     		mov	r5, r0
 1287 0016 8846     		mov	r8, r1
 1288 0018 1646     		mov	r6, r2
 632:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1289              		.loc 1 632 0
 1290 001a B4FA84F3 		clz	r3, r4
 1291 001e 5B09     		lsrs	r3, r3, #5
 1292 0020 002A     		cmp	r2, #0
 1293 0022 08BF     		it	eq
 1294 0024 0123     		moveq	r3, #1
 1295 0026 002B     		cmp	r3, #0
 1296 0028 40F08980 		bne	.L126
 637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1297              		.loc 1 637 0
 1298 002c 0368     		ldr	r3, [r0]
 1299 002e 9B69     		ldr	r3, [r3, #24]
 1300 0030 13F4004F 		tst	r3, #32768
 1301 0034 40F08580 		bne	.L127
 643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1302              		.loc 1 643 0
 1303 0038 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 1304 003c 012B     		cmp	r3, #1
 1305 003e 00F08280 		beq	.L128
 643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1306              		.loc 1 643 0 is_stmt 0 discriminator 2
 1307 0042 0123     		movs	r3, #1
 1308 0044 80F84030 		strb	r3, [r0, #64]
 645:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
 1309              		.loc 1 645 0 is_stmt 1 discriminator 2
 1310 0048 2223     		movs	r3, #34
 1311 004a 80F84130 		strb	r3, [r0, #65]
 646:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1312              		.loc 1 646 0 discriminator 2
 1313 004e 0023     		movs	r3, #0
 1314 0050 4364     		str	r3, [r0, #68]
 651:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1315              		.loc 1 651 0 discriminator 2
 1316 0052 FF2C     		cmp	r4, #255
 1317 0054 09D9     		bls	.L118
 653:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       sizetmp = 255;
 1318              		.loc 1 653 0
 1319 0056 4FF41053 		mov	r3, #9216
 1320 005a 0093     		str	r3, [sp]
 1321 005c 4FF08073 		mov	r3, #16777216
 1322 0060 FF22     		movs	r2, #255
 1323              	.LVL104:
 1324 0062 FFF7FEFF 		bl	I2C_TransferConfig
 1325              	.LVL105:
 654:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 1326              		.loc 1 654 0
 1327 0066 FF27     		movs	r7, #255
 1328 0068 1AE0     		b	.L123
 1329              	.LVL106:
 1330              	.L118:
 658:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       sizetmp = Size;
 1331              		.loc 1 658 0
 1332 006a 4FF41053 		mov	r3, #9216
 1333 006e 0093     		str	r3, [sp]
 1334 0070 4FF00073 		mov	r3, #33554432
 1335 0074 E2B2     		uxtb	r2, r4
 1336              	.LVL107:
 1337 0076 FFF7FEFF 		bl	I2C_TransferConfig
 1338              	.LVL108:
 659:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 1339              		.loc 1 659 0
 1340 007a 2746     		mov	r7, r4
 1341              	.LVL109:
 1342 007c 10E0     		b	.L123
 1343              	.LVL110:
 1344              	.L135:
 667:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 1345              		.loc 1 667 0
 1346 007e 6B6C     		ldr	r3, [r5, #68]
 1347 0080 042B     		cmp	r3, #4
 1348 0082 62D1     		bne	.L129
 669:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 1349              		.loc 1 669 0
 1350 0084 0123     		movs	r3, #1
 1351 0086 56E0     		b	.L117
 1352              	.LVL111:
 1353              	.L122:
 697:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           sizetmp = Size;
 1354              		.loc 1 697 0
 1355 0088 0023     		movs	r3, #0
 1356 008a 0093     		str	r3, [sp]
 1357 008c 4FF00073 		mov	r3, #33554432
 1358 0090 E2B2     		uxtb	r2, r4
 1359 0092 4146     		mov	r1, r8
 1360 0094 2846     		mov	r0, r5
 1361 0096 FFF7FEFF 		bl	I2C_TransferConfig
 1362              	.LVL112:
 698:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 1363              		.loc 1 698 0
 1364 009a 2746     		mov	r7, r4
 1365              	.LVL113:
 1366              	.L121:
 702:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1367              		.loc 1 702 0
 1368 009c 5CB3     		cbz	r4, .L134
 678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       sizetmp--;
 1369              		.loc 1 678 0
 1370 009e 4E46     		mov	r6, r9
 1371              	.LVL114:
 1372              	.L123:
 665:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 1373              		.loc 1 665 0
 1374 00a0 0421     		movs	r1, #4
 1375 00a2 2846     		mov	r0, r5
 1376 00a4 FFF7FEFF 		bl	I2C_WaitOnRXNEFlagUntilTimeout
 1377              	.LVL115:
 1378 00a8 0028     		cmp	r0, #0
 1379 00aa E8D1     		bne	.L135
 678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       sizetmp--;
 1380              		.loc 1 678 0
 1381 00ac 2B68     		ldr	r3, [r5]
 1382 00ae 5B6A     		ldr	r3, [r3, #36]
 1383 00b0 06F10109 		add	r9, r6, #1
 1384              	.LVL116:
 1385 00b4 3370     		strb	r3, [r6]
 1386              	.LVL117:
 680:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 1387              		.loc 1 680 0
 1388 00b6 013C     		subs	r4, r4, #1
 1389              	.LVL118:
 1390 00b8 A4B2     		uxth	r4, r4
 1391              	.LVL119:
 682:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 1392              		.loc 1 682 0
 1393 00ba 013F     		subs	r7, r7, #1
 1394              	.LVL120:
 1395 00bc 0CBF     		ite	eq
 1396 00be 0123     		moveq	r3, #1
 1397 00c0 0023     		movne	r3, #0
 1398 00c2 002C     		cmp	r4, #0
 1399 00c4 08BF     		it	eq
 1400 00c6 0023     		moveq	r3, #0
 1401 00c8 002B     		cmp	r3, #0
 1402 00ca E7D0     		beq	.L121
 685:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 1403              		.loc 1 685 0
 1404 00cc 0A9B     		ldr	r3, [sp, #40]
 1405 00ce 0022     		movs	r2, #0
 1406 00d0 8021     		movs	r1, #128
 1407 00d2 2846     		mov	r0, r5
 1408 00d4 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 1409              	.LVL121:
 1410 00d8 0028     		cmp	r0, #0
 1411 00da 38D1     		bne	.L130
 690:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 1412              		.loc 1 690 0
 1413 00dc FF2C     		cmp	r4, #255
 1414 00de D3D9     		bls	.L122
 692:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           sizetmp = 255;
 1415              		.loc 1 692 0
 1416 00e0 0023     		movs	r3, #0
 1417 00e2 0093     		str	r3, [sp]
 1418 00e4 4FF08073 		mov	r3, #16777216
 1419 00e8 FF22     		movs	r2, #255
 1420 00ea 4146     		mov	r1, r8
 1421 00ec 2846     		mov	r0, r5
 1422 00ee FFF7FEFF 		bl	I2C_TransferConfig
 1423              	.LVL122:
 693:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 1424              		.loc 1 693 0
 1425 00f2 FF27     		movs	r7, #255
 1426 00f4 D2E7     		b	.L121
 1427              	.LVL123:
 1428              	.L134:
 706:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1429              		.loc 1 706 0
 1430 00f6 1921     		movs	r1, #25
 1431 00f8 2846     		mov	r0, r5
 1432 00fa FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 1433              	.LVL124:
 1434 00fe 0346     		mov	r3, r0
 1435 0100 20B1     		cbz	r0, .L124
 708:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 1436              		.loc 1 708 0
 1437 0102 6B6C     		ldr	r3, [r5, #68]
 1438 0104 042B     		cmp	r3, #4
 1439 0106 24D1     		bne	.L132
 710:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 1440              		.loc 1 710 0
 1441 0108 0123     		movs	r3, #1
 1442 010a 14E0     		b	.L117
 1443              	.L124:
 719:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   	
 1444              		.loc 1 719 0
 1445 010c 2A68     		ldr	r2, [r5]
 1446 010e 2021     		movs	r1, #32
 1447 0110 D161     		str	r1, [r2, #28]
 722:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1448              		.loc 1 722 0
 1449 0112 2868     		ldr	r0, [r5]
 1450 0114 4268     		ldr	r2, [r0, #4]
 1451 0116 22F0FF72 		bic	r2, r2, #33423360
 1452 011a 22F48B32 		bic	r2, r2, #71168
 1453 011e 22F4FF72 		bic	r2, r2, #510
 1454 0122 22F00102 		bic	r2, r2, #1
 1455 0126 4260     		str	r2, [r0, #4]
 724:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1456              		.loc 1 724 0
 1457 0128 85F84110 		strb	r1, [r5, #65]
 727:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1458              		.loc 1 727 0
 1459 012c 0022     		movs	r2, #0
 1460 012e 85F84020 		strb	r2, [r5, #64]
 729:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 1461              		.loc 1 729 0
 1462 0132 00E0     		b	.L117
 1463              	.LVL125:
 1464              	.L125:
 733:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 1465              		.loc 1 733 0
 1466 0134 0223     		movs	r3, #2
 1467              	.LVL126:
 1468              	.L117:
 735:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 1469              		.loc 1 735 0
 1470 0136 1846     		mov	r0, r3
 1471 0138 03B0     		add	sp, sp, #12
 1472              		.cfi_remember_state
 1473              		.cfi_def_cfa_offset 28
 1474              		@ sp needed
 1475 013a BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 1476              	.LVL127:
 1477              	.L126:
 1478              		.cfi_restore_state
 634:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 1479              		.loc 1 634 0
 1480 013e 0123     		movs	r3, #1
 1481 0140 F9E7     		b	.L117
 1482              	.L127:
 639:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 1483              		.loc 1 639 0
 1484 0142 0223     		movs	r3, #2
 1485 0144 F7E7     		b	.L117
 1486              	.L128:
 643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1487              		.loc 1 643 0
 1488 0146 0223     		movs	r3, #2
 1489 0148 F5E7     		b	.L117
 1490              	.LVL128:
 1491              	.L129:
 673:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 1492              		.loc 1 673 0
 1493 014a 0323     		movs	r3, #3
 1494 014c F3E7     		b	.L117
 1495              	.LVL129:
 1496              	.L130:
 687:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 1497              		.loc 1 687 0
 1498 014e 0323     		movs	r3, #3
 1499 0150 F1E7     		b	.L117
 1500              	.L132:
 714:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 1501              		.loc 1 714 0
 1502 0152 0323     		movs	r3, #3
 1503 0154 EFE7     		b	.L117
 1504              		.cfi_endproc
 1505              	.LFE143:
 1507              		.section	.text.HAL_I2C_Slave_Transmit,"ax",%progbits
 1508              		.align	1
 1509              		.global	HAL_I2C_Slave_Transmit
 1510              		.syntax unified
 1511              		.thumb
 1512              		.thumb_func
 1513              		.fpu fpv5-d16
 1515              	HAL_I2C_Slave_Transmit:
 1516              	.LFB144:
 747:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
 1517              		.loc 1 747 0
 1518              		.cfi_startproc
 1519              		@ args = 0, pretend = 0, frame = 0
 1520              		@ frame_needed = 0, uses_anonymous_args = 0
 1521              	.LVL130:
 1522 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1523              		.cfi_def_cfa_offset 24
 1524              		.cfi_offset 3, -24
 1525              		.cfi_offset 4, -20
 1526              		.cfi_offset 5, -16
 1527              		.cfi_offset 6, -12
 1528              		.cfi_offset 7, -8
 1529              		.cfi_offset 14, -4
 1530 0002 1F46     		mov	r7, r3
 748:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {    
 1531              		.loc 1 748 0
 1532 0004 90F84130 		ldrb	r3, [r0, #65]	@ zero_extendqisi2
 1533              	.LVL131:
 1534 0008 DBB2     		uxtb	r3, r3
 1535 000a 202B     		cmp	r3, #32
 1536 000c 40F09780 		bne	.L145
 1537 0010 0446     		mov	r4, r0
 1538 0012 0E46     		mov	r6, r1
 1539 0014 1546     		mov	r5, r2
 750:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1540              		.loc 1 750 0
 1541 0016 B2FA82F3 		clz	r3, r2
 1542 001a 5B09     		lsrs	r3, r3, #5
 1543 001c 0029     		cmp	r1, #0
 1544 001e 08BF     		it	eq
 1545 0020 0123     		moveq	r3, #1
 1546 0022 002B     		cmp	r3, #0
 1547 0024 40F08E80 		bne	.L146
 756:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1548              		.loc 1 756 0
 1549 0028 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 1550 002c 012B     		cmp	r3, #1
 1551 002e 00F08B80 		beq	.L147
 756:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1552              		.loc 1 756 0 is_stmt 0 discriminator 2
 1553 0032 0123     		movs	r3, #1
 1554 0034 80F84030 		strb	r3, [r0, #64]
 758:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
 1555              		.loc 1 758 0 is_stmt 1 discriminator 2
 1556 0038 2223     		movs	r3, #34
 1557 003a 80F84130 		strb	r3, [r0, #65]
 759:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1558              		.loc 1 759 0 discriminator 2
 1559 003e 0022     		movs	r2, #0
 1560              	.LVL132:
 1561 0040 4264     		str	r2, [r0, #68]
 762:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1562              		.loc 1 762 0 discriminator 2
 1563 0042 0168     		ldr	r1, [r0]
 1564              	.LVL133:
 1565 0044 4B68     		ldr	r3, [r1, #4]
 1566 0046 23F40043 		bic	r3, r3, #32768
 1567 004a 4B60     		str	r3, [r1, #4]
 765:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1568              		.loc 1 765 0 discriminator 2
 1569 004c 3B46     		mov	r3, r7
 1570 004e 0821     		movs	r1, #8
 1571 0050 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 1572              	.LVL134:
 1573 0054 A0B9     		cbnz	r0, .L152
 773:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1574              		.loc 1 773 0
 1575 0056 2368     		ldr	r3, [r4]
 1576 0058 0822     		movs	r2, #8
 1577 005a DA61     		str	r2, [r3, #28]
 776:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1578              		.loc 1 776 0
 1579 005c E368     		ldr	r3, [r4, #12]
 1580 005e 022B     		cmp	r3, #2
 1581 0060 15D0     		beq	.L153
 1582              	.L139:
 791:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1583              		.loc 1 791 0
 1584 0062 3B46     		mov	r3, r7
 1585 0064 0022     		movs	r2, #0
 1586 0066 4FF48031 		mov	r1, #65536
 1587 006a 2046     		mov	r0, r4
 1588 006c FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 1589              	.LVL135:
 1590 0070 00B3     		cbz	r0, .L141
 794:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
 1591              		.loc 1 794 0
 1592 0072 2268     		ldr	r2, [r4]
 1593 0074 5368     		ldr	r3, [r2, #4]
 1594 0076 43F40043 		orr	r3, r3, #32768
 1595 007a 5360     		str	r3, [r2, #4]
 795:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 1596              		.loc 1 795 0
 1597 007c 0323     		movs	r3, #3
 1598 007e 5FE0     		b	.L137
 1599              	.L152:
 768:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
 1600              		.loc 1 768 0
 1601 0080 2268     		ldr	r2, [r4]
 1602 0082 5368     		ldr	r3, [r2, #4]
 1603 0084 43F40043 		orr	r3, r3, #32768
 1604 0088 5360     		str	r3, [r2, #4]
 769:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 1605              		.loc 1 769 0
 1606 008a 0323     		movs	r3, #3
 1607 008c 58E0     		b	.L137
 1608              	.L153:
 779:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 1609              		.loc 1 779 0
 1610 008e 3B46     		mov	r3, r7
 1611 0090 0022     		movs	r2, #0
 1612 0092 0821     		movs	r1, #8
 1613 0094 2046     		mov	r0, r4
 1614 0096 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 1615              	.LVL136:
 1616 009a 18B9     		cbnz	r0, .L154
 787:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 1617              		.loc 1 787 0
 1618 009c 2368     		ldr	r3, [r4]
 1619 009e 0822     		movs	r2, #8
 1620 00a0 DA61     		str	r2, [r3, #28]
 1621 00a2 DEE7     		b	.L139
 1622              	.L154:
 782:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
 1623              		.loc 1 782 0
 1624 00a4 2268     		ldr	r2, [r4]
 1625 00a6 5368     		ldr	r3, [r2, #4]
 1626 00a8 43F40043 		orr	r3, r3, #32768
 1627 00ac 5360     		str	r3, [r2, #4]
 783:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 1628              		.loc 1 783 0
 1629 00ae 0323     		movs	r3, #3
 1630 00b0 46E0     		b	.L137
 1631              	.LVL137:
 1632              	.L149:
 817:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Size--;
 1633              		.loc 1 817 0
 1634 00b2 0E46     		mov	r6, r1
 1635              	.LVL138:
 1636              	.L141:
 801:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 1637              		.loc 1 801 0
 1638 00b4 3946     		mov	r1, r7
 1639 00b6 2046     		mov	r0, r4
 1640 00b8 FFF7FEFF 		bl	I2C_WaitOnTXISFlagUntilTimeout
 1641              	.LVL139:
 1642 00bc 70BB     		cbnz	r0, .L155
 817:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Size--;
 1643              		.loc 1 817 0
 1644 00be 711C     		adds	r1, r6, #1
 1645              	.LVL140:
 1646 00c0 2368     		ldr	r3, [r4]
 1647 00c2 3278     		ldrb	r2, [r6]	@ zero_extendqisi2
 1648 00c4 9A62     		str	r2, [r3, #40]
 818:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }while(Size > 0);
 1649              		.loc 1 818 0
 1650 00c6 013D     		subs	r5, r5, #1
 1651              	.LVL141:
 1652 00c8 ADB2     		uxth	r5, r5
 1653              	.LVL142:
 819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1654              		.loc 1 819 0
 1655 00ca 002D     		cmp	r5, #0
 1656 00cc F1D1     		bne	.L149
 822:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1657              		.loc 1 822 0
 1658 00ce 1921     		movs	r1, #25
 1659              	.LVL143:
 1660 00d0 2046     		mov	r0, r4
 1661 00d2 FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 1662              	.LVL144:
 1663 00d6 48B1     		cbz	r0, .L143
 825:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 1664              		.loc 1 825 0
 1665 00d8 2268     		ldr	r2, [r4]
 1666 00da 5368     		ldr	r3, [r2, #4]
 1667 00dc 43F40043 		orr	r3, r3, #32768
 1668 00e0 5360     		str	r3, [r2, #4]
 827:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 1669              		.loc 1 827 0
 1670 00e2 636C     		ldr	r3, [r4, #68]
 1671 00e4 042B     		cmp	r3, #4
 1672 00e6 33D1     		bne	.L150
 831:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 1673              		.loc 1 831 0
 1674 00e8 0023     		movs	r3, #0
 1675 00ea 6364     		str	r3, [r4, #68]
 1676              	.L143:
 840:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1677              		.loc 1 840 0
 1678 00ec 2368     		ldr	r3, [r4]
 1679 00ee 2022     		movs	r2, #32
 1680 00f0 DA61     		str	r2, [r3, #28]
 843:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1681              		.loc 1 843 0
 1682 00f2 3B46     		mov	r3, r7
 1683 00f4 0122     		movs	r2, #1
 1684 00f6 4FF40041 		mov	r1, #32768
 1685 00fa 2046     		mov	r0, r4
 1686 00fc FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 1687              	.LVL145:
 1688 0100 0346     		mov	r3, r0
 1689 0102 A8B9     		cbnz	r0, .L156
 851:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1690              		.loc 1 851 0
 1691 0104 2168     		ldr	r1, [r4]
 1692 0106 4A68     		ldr	r2, [r1, #4]
 1693 0108 42F40042 		orr	r2, r2, #32768
 1694 010c 4A60     		str	r2, [r1, #4]
 853:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1695              		.loc 1 853 0
 1696 010e 2022     		movs	r2, #32
 1697 0110 84F84120 		strb	r2, [r4, #65]
 856:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1698              		.loc 1 856 0
 1699 0114 0022     		movs	r2, #0
 1700 0116 84F84020 		strb	r2, [r4, #64]
 858:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 1701              		.loc 1 858 0
 1702 011a 11E0     		b	.L137
 1703              	.LVL146:
 1704              	.L155:
 804:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 1705              		.loc 1 804 0
 1706 011c 2268     		ldr	r2, [r4]
 1707 011e 5368     		ldr	r3, [r2, #4]
 1708 0120 43F40043 		orr	r3, r3, #32768
 1709 0124 5360     		str	r3, [r2, #4]
 806:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 1710              		.loc 1 806 0
 1711 0126 636C     		ldr	r3, [r4, #68]
 1712 0128 042B     		cmp	r3, #4
 1713 012a 0FD1     		bne	.L148
 808:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 1714              		.loc 1 808 0
 1715 012c 0123     		movs	r3, #1
 1716 012e 07E0     		b	.L137
 1717              	.LVL147:
 1718              	.L156:
 846:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
 1719              		.loc 1 846 0
 1720 0130 2268     		ldr	r2, [r4]
 1721 0132 5368     		ldr	r3, [r2, #4]
 1722 0134 43F40043 		orr	r3, r3, #32768
 1723 0138 5360     		str	r3, [r2, #4]
 847:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 1724              		.loc 1 847 0
 1725 013a 0323     		movs	r3, #3
 1726 013c 00E0     		b	.L137
 1727              	.LVL148:
 1728              	.L145:
 862:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 1729              		.loc 1 862 0
 1730 013e 0223     		movs	r3, #2
 1731              	.LVL149:
 1732              	.L137:
 864:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 1733              		.loc 1 864 0
 1734 0140 1846     		mov	r0, r3
 1735 0142 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1736              	.LVL150:
 1737              	.L146:
 752:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 1738              		.loc 1 752 0
 1739 0144 0123     		movs	r3, #1
 1740 0146 FBE7     		b	.L137
 1741              	.L147:
 756:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1742              		.loc 1 756 0
 1743 0148 0223     		movs	r3, #2
 1744 014a F9E7     		b	.L137
 1745              	.LVL151:
 1746              	.L148:
 812:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 1747              		.loc 1 812 0
 1748 014c 0323     		movs	r3, #3
 1749 014e F7E7     		b	.L137
 1750              	.LVL152:
 1751              	.L150:
 835:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 1752              		.loc 1 835 0
 1753 0150 0323     		movs	r3, #3
 1754 0152 F5E7     		b	.L137
 1755              		.cfi_endproc
 1756              	.LFE144:
 1758              		.section	.text.HAL_I2C_Slave_Receive,"ax",%progbits
 1759              		.align	1
 1760              		.global	HAL_I2C_Slave_Receive
 1761              		.syntax unified
 1762              		.thumb
 1763              		.thumb_func
 1764              		.fpu fpv5-d16
 1766              	HAL_I2C_Slave_Receive:
 1767              	.LFB145:
 876:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
 1768              		.loc 1 876 0
 1769              		.cfi_startproc
 1770              		@ args = 0, pretend = 0, frame = 0
 1771              		@ frame_needed = 0, uses_anonymous_args = 0
 1772              	.LVL153:
 1773 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 1774              		.cfi_def_cfa_offset 24
 1775              		.cfi_offset 3, -24
 1776              		.cfi_offset 4, -20
 1777              		.cfi_offset 5, -16
 1778              		.cfi_offset 6, -12
 1779              		.cfi_offset 7, -8
 1780              		.cfi_offset 14, -4
 1781 0002 1F46     		mov	r7, r3
 877:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {  
 1782              		.loc 1 877 0
 1783 0004 90F84130 		ldrb	r3, [r0, #65]	@ zero_extendqisi2
 1784              	.LVL154:
 1785 0008 DBB2     		uxtb	r3, r3
 1786 000a 202B     		cmp	r3, #32
 1787 000c 40F08880 		bne	.L166
 1788 0010 0446     		mov	r4, r0
 1789 0012 0E46     		mov	r6, r1
 1790 0014 1546     		mov	r5, r2
 879:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1791              		.loc 1 879 0
 1792 0016 B2FA82F3 		clz	r3, r2
 1793 001a 5B09     		lsrs	r3, r3, #5
 1794 001c 0029     		cmp	r1, #0
 1795 001e 08BF     		it	eq
 1796 0020 0123     		moveq	r3, #1
 1797 0022 002B     		cmp	r3, #0
 1798 0024 7FD1     		bne	.L167
 885:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1799              		.loc 1 885 0
 1800 0026 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 1801 002a 012B     		cmp	r3, #1
 1802 002c 7DD0     		beq	.L168
 885:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1803              		.loc 1 885 0 is_stmt 0 discriminator 2
 1804 002e 0123     		movs	r3, #1
 1805 0030 80F84030 		strb	r3, [r0, #64]
 887:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
 1806              		.loc 1 887 0 is_stmt 1 discriminator 2
 1807 0034 2223     		movs	r3, #34
 1808 0036 80F84130 		strb	r3, [r0, #65]
 888:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1809              		.loc 1 888 0 discriminator 2
 1810 003a 0022     		movs	r2, #0
 1811              	.LVL155:
 1812 003c 4264     		str	r2, [r0, #68]
 891:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1813              		.loc 1 891 0 discriminator 2
 1814 003e 0168     		ldr	r1, [r0]
 1815              	.LVL156:
 1816 0040 4B68     		ldr	r3, [r1, #4]
 1817 0042 23F40043 		bic	r3, r3, #32768
 1818 0046 4B60     		str	r3, [r1, #4]
 894:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1819              		.loc 1 894 0 discriminator 2
 1820 0048 3B46     		mov	r3, r7
 1821 004a 0821     		movs	r1, #8
 1822 004c FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 1823              	.LVL157:
 1824 0050 B8B9     		cbnz	r0, .L172
 902:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1825              		.loc 1 902 0
 1826 0052 2368     		ldr	r3, [r4]
 1827 0054 0822     		movs	r2, #8
 1828 0056 DA61     		str	r2, [r3, #28]
 905:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1829              		.loc 1 905 0
 1830 0058 3B46     		mov	r3, r7
 1831 005a 0122     		movs	r2, #1
 1832 005c 4FF48031 		mov	r1, #65536
 1833 0060 2046     		mov	r0, r4
 1834 0062 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 1835              	.LVL158:
 1836 0066 98B9     		cbnz	r0, .L173
 1837              	.LVL159:
 1838              	.L160:
 912:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1839              		.loc 1 912 0
 1840 0068 65B3     		cbz	r5, .L174
 915:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 1841              		.loc 1 915 0
 1842 006a 3946     		mov	r1, r7
 1843 006c 2046     		mov	r0, r4
 1844 006e FFF7FEFF 		bl	I2C_WaitOnRXNEFlagUntilTimeout
 1845              	.LVL160:
 1846 0072 A0B9     		cbnz	r0, .L175
 938:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Size--;
 1847              		.loc 1 938 0
 1848 0074 2368     		ldr	r3, [r4]
 1849 0076 5B6A     		ldr	r3, [r3, #36]
 1850              	.LVL161:
 1851 0078 3370     		strb	r3, [r6]
 939:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 1852              		.loc 1 939 0
 1853 007a 013D     		subs	r5, r5, #1
 1854              	.LVL162:
 1855 007c ADB2     		uxth	r5, r5
 1856              	.LVL163:
 938:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Size--;
 1857              		.loc 1 938 0
 1858 007e 0136     		adds	r6, r6, #1
 1859              	.LVL164:
 1860 0080 F2E7     		b	.L160
 1861              	.LVL165:
 1862              	.L172:
 897:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
 1863              		.loc 1 897 0
 1864 0082 2268     		ldr	r2, [r4]
 1865 0084 5368     		ldr	r3, [r2, #4]
 1866 0086 43F40043 		orr	r3, r3, #32768
 1867 008a 5360     		str	r3, [r2, #4]
 898:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 1868              		.loc 1 898 0
 1869 008c 0323     		movs	r3, #3
 1870 008e 48E0     		b	.L158
 1871              	.L173:
 908:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
 1872              		.loc 1 908 0
 1873 0090 2268     		ldr	r2, [r4]
 1874 0092 5368     		ldr	r3, [r2, #4]
 1875 0094 43F40043 		orr	r3, r3, #32768
 1876 0098 5360     		str	r3, [r2, #4]
 909:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 1877              		.loc 1 909 0
 1878 009a 0323     		movs	r3, #3
 1879 009c 41E0     		b	.L158
 1880              	.LVL166:
 1881              	.L175:
 918:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 1882              		.loc 1 918 0
 1883 009e 2268     		ldr	r2, [r4]
 1884 00a0 5368     		ldr	r3, [r2, #4]
 1885 00a2 43F40043 		orr	r3, r3, #32768
 1886 00a6 5360     		str	r3, [r2, #4]
 921:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 1887              		.loc 1 921 0
 1888 00a8 2368     		ldr	r3, [r4]
 1889 00aa 9A69     		ldr	r2, [r3, #24]
 1890 00ac 12F0040F 		tst	r2, #4
 1891 00b0 01D0     		beq	.L162
 924:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 1892              		.loc 1 924 0
 1893 00b2 5B6A     		ldr	r3, [r3, #36]
 1894              	.LVL167:
 1895 00b4 3370     		strb	r3, [r6]
 1896              	.LVL168:
 1897              	.L162:
 927:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 1898              		.loc 1 927 0
 1899 00b6 636C     		ldr	r3, [r4, #68]
 1900 00b8 202B     		cmp	r3, #32
 1901 00ba 01D0     		beq	.L176
 933:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 1902              		.loc 1 933 0
 1903 00bc 0123     		movs	r3, #1
 1904 00be 30E0     		b	.L158
 1905              	.L176:
 929:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 1906              		.loc 1 929 0
 1907 00c0 0323     		movs	r3, #3
 1908 00c2 2EE0     		b	.L158
 1909              	.LVL169:
 1910              	.L174:
 943:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1911              		.loc 1 943 0
 1912 00c4 1921     		movs	r1, #25
 1913 00c6 2046     		mov	r0, r4
 1914 00c8 FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 1915              	.LVL170:
 1916 00cc 48B1     		cbz	r0, .L164
 946:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 1917              		.loc 1 946 0
 1918 00ce 2268     		ldr	r2, [r4]
 1919 00d0 5368     		ldr	r3, [r2, #4]
 1920 00d2 43F40043 		orr	r3, r3, #32768
 1921 00d6 5360     		str	r3, [r2, #4]
 948:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 1922              		.loc 1 948 0
 1923 00d8 636C     		ldr	r3, [r4, #68]
 1924 00da 042B     		cmp	r3, #4
 1925 00dc 27D1     		bne	.L170
 950:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 1926              		.loc 1 950 0
 1927 00de 0123     		movs	r3, #1
 1928 00e0 1FE0     		b	.L158
 1929              	.L164:
 959:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1930              		.loc 1 959 0
 1931 00e2 2368     		ldr	r3, [r4]
 1932 00e4 2022     		movs	r2, #32
 1933 00e6 DA61     		str	r2, [r3, #28]
 962:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 1934              		.loc 1 962 0
 1935 00e8 3B46     		mov	r3, r7
 1936 00ea 0122     		movs	r2, #1
 1937 00ec 4FF40041 		mov	r1, #32768
 1938 00f0 2046     		mov	r0, r4
 1939 00f2 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 1940              	.LVL171:
 1941 00f6 0346     		mov	r3, r0
 1942 00f8 58B9     		cbnz	r0, .L177
 971:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1943              		.loc 1 971 0
 1944 00fa 2168     		ldr	r1, [r4]
 1945 00fc 4A68     		ldr	r2, [r1, #4]
 1946 00fe 42F40042 		orr	r2, r2, #32768
 1947 0102 4A60     		str	r2, [r1, #4]
 973:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1948              		.loc 1 973 0
 1949 0104 2022     		movs	r2, #32
 1950 0106 84F84120 		strb	r2, [r4, #65]
 976:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1951              		.loc 1 976 0
 1952 010a 0022     		movs	r2, #0
 1953 010c 84F84020 		strb	r2, [r4, #64]
 978:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 1954              		.loc 1 978 0
 1955 0110 07E0     		b	.L158
 1956              	.L177:
 965:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
 1957              		.loc 1 965 0
 1958 0112 2268     		ldr	r2, [r4]
 1959 0114 5368     		ldr	r3, [r2, #4]
 1960 0116 43F40043 		orr	r3, r3, #32768
 1961 011a 5360     		str	r3, [r2, #4]
 966:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 1962              		.loc 1 966 0
 1963 011c 0323     		movs	r3, #3
 1964 011e 00E0     		b	.L158
 1965              	.LVL172:
 1966              	.L166:
 982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   } 
 1967              		.loc 1 982 0
 1968 0120 0223     		movs	r3, #2
 1969              	.LVL173:
 1970              	.L158:
 984:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 1971              		.loc 1 984 0
 1972 0122 1846     		mov	r0, r3
 1973 0124 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 1974              	.LVL174:
 1975              	.L167:
 881:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 1976              		.loc 1 881 0
 1977 0126 0123     		movs	r3, #1
 1978 0128 FBE7     		b	.L158
 1979              	.L168:
 885:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 1980              		.loc 1 885 0
 1981 012a 0223     		movs	r3, #2
 1982 012c F9E7     		b	.L158
 1983              	.LVL175:
 1984              	.L170:
 954:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 1985              		.loc 1 954 0
 1986 012e 0323     		movs	r3, #3
 1987 0130 F7E7     		b	.L158
 1988              		.cfi_endproc
 1989              	.LFE145:
 1991              		.section	.text.HAL_I2C_Master_Transmit_IT,"ax",%progbits
 1992              		.align	1
 1993              		.global	HAL_I2C_Master_Transmit_IT
 1994              		.syntax unified
 1995              		.thumb
 1996              		.thumb_func
 1997              		.fpu fpv5-d16
 1999              	HAL_I2C_Master_Transmit_IT:
 2000              	.LFB146:
 996:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
 2001              		.loc 1 996 0
 2002              		.cfi_startproc
 2003              		@ args = 0, pretend = 0, frame = 0
 2004              		@ frame_needed = 0, uses_anonymous_args = 0
 2005              	.LVL176:
 2006 0000 10B5     		push	{r4, lr}
 2007              		.cfi_def_cfa_offset 8
 2008              		.cfi_offset 4, -8
 2009              		.cfi_offset 14, -4
 2010 0002 82B0     		sub	sp, sp, #8
 2011              		.cfi_def_cfa_offset 16
 997:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 2012              		.loc 1 997 0
 2013 0004 90F84140 		ldrb	r4, [r0, #65]	@ zero_extendqisi2
 2014 0008 E4B2     		uxtb	r4, r4
 2015 000a 202C     		cmp	r4, #32
 2016 000c 43D1     		bne	.L184
 999:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2017              		.loc 1 999 0
 2018 000e B3FA83F4 		clz	r4, r3
 2019 0012 6409     		lsrs	r4, r4, #5
 2020 0014 002A     		cmp	r2, #0
 2021 0016 08BF     		it	eq
 2022 0018 0124     		moveq	r4, #1
 2023 001a 002C     		cmp	r4, #0
 2024 001c 3ED1     		bne	.L185
1004:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2025              		.loc 1 1004 0
 2026 001e 0468     		ldr	r4, [r0]
 2027 0020 A469     		ldr	r4, [r4, #24]
 2028 0022 14F4004F 		tst	r4, #32768
 2029 0026 3BD1     		bne	.L186
1010:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2030              		.loc 1 1010 0
 2031 0028 90F84040 		ldrb	r4, [r0, #64]	@ zero_extendqisi2
 2032 002c 012C     		cmp	r4, #1
 2033 002e 39D0     		beq	.L187
1010:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2034              		.loc 1 1010 0 is_stmt 0 discriminator 2
 2035 0030 0124     		movs	r4, #1
 2036 0032 80F84040 		strb	r4, [r0, #64]
1012:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
 2037              		.loc 1 1012 0 is_stmt 1 discriminator 2
 2038 0036 2124     		movs	r4, #33
 2039 0038 80F84140 		strb	r4, [r0, #65]
1013:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2040              		.loc 1 1013 0 discriminator 2
 2041 003c 0024     		movs	r4, #0
 2042 003e 4464     		str	r4, [r0, #68]
1015:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
 2043              		.loc 1 1015 0 discriminator 2
 2044 0040 4262     		str	r2, [r0, #36]
1016:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
 2045              		.loc 1 1016 0 discriminator 2
 2046 0042 4385     		strh	r3, [r0, #42]	@ movhi
1017:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2047              		.loc 1 1017 0 discriminator 2
 2048 0044 FF2B     		cmp	r3, #255
 2049 0046 1BD9     		bls	.L180
1019:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2050              		.loc 1 1019 0
 2051 0048 FF23     		movs	r3, #255
 2052              	.LVL177:
 2053 004a 0385     		strh	r3, [r0, #40]	@ movhi
 2054              	.L181:
 2055 004c 0446     		mov	r4, r0
1028:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2056              		.loc 1 1028 0
 2057 004e 028D     		ldrh	r2, [r0, #40]
 2058              	.LVL178:
 2059 0050 FF2A     		cmp	r2, #255
 2060 0052 03D1     		bne	.L182
1028:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2061              		.loc 1 1028 0 is_stmt 0 discriminator 1
 2062 0054 438D     		ldrh	r3, [r0, #42]
 2063 0056 9BB2     		uxth	r3, r3
 2064 0058 9A42     		cmp	r2, r3
 2065 005a 13D3     		bcc	.L189
 2066              	.L182:
1034:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2067              		.loc 1 1034 0 is_stmt 1
 2068 005c 4FF40053 		mov	r3, #8192
 2069 0060 0093     		str	r3, [sp]
 2070              	.LVL179:
 2071 0062 4FF00073 		mov	r3, #33554432
 2072 0066 D2B2     		uxtb	r2, r2
 2073 0068 2046     		mov	r0, r4
 2074              	.LVL180:
 2075 006a FFF7FEFF 		bl	I2C_TransferConfig
 2076              	.LVL181:
 2077              	.L183:
1038:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2078              		.loc 1 1038 0
 2079 006e 0020     		movs	r0, #0
 2080 0070 84F84000 		strb	r0, [r4, #64]
1048:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2081              		.loc 1 1048 0
 2082 0074 2268     		ldr	r2, [r4]
 2083 0076 1368     		ldr	r3, [r2]
 2084 0078 43F0F203 		orr	r3, r3, #242
 2085 007c 1360     		str	r3, [r2]
1050:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 2086              		.loc 1 1050 0
 2087 007e 0BE0     		b	.L179
 2088              	.LVL182:
 2089              	.L180:
1023:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2090              		.loc 1 1023 0
 2091 0080 0385     		strh	r3, [r0, #40]	@ movhi
 2092 0082 E3E7     		b	.L181
 2093              	.LVL183:
 2094              	.L189:
1030:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2095              		.loc 1 1030 0
 2096 0084 4FF40053 		mov	r3, #8192
 2097 0088 0093     		str	r3, [sp]
 2098              	.LVL184:
 2099 008a 4FF08073 		mov	r3, #16777216
 2100 008e D2B2     		uxtb	r2, r2
 2101 0090 FFF7FEFF 		bl	I2C_TransferConfig
 2102              	.LVL185:
 2103 0094 EBE7     		b	.L183
 2104              	.LVL186:
 2105              	.L184:
1054:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   } 
 2106              		.loc 1 1054 0
 2107 0096 0220     		movs	r0, #2
 2108              	.LVL187:
 2109              	.L179:
1056:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 2110              		.loc 1 1056 0
 2111 0098 02B0     		add	sp, sp, #8
 2112              		.cfi_remember_state
 2113              		.cfi_def_cfa_offset 8
 2114              		@ sp needed
 2115 009a 10BD     		pop	{r4, pc}
 2116              	.LVL188:
 2117              	.L185:
 2118              		.cfi_restore_state
1001:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2119              		.loc 1 1001 0
 2120 009c 0120     		movs	r0, #1
 2121              	.LVL189:
 2122 009e FBE7     		b	.L179
 2123              	.LVL190:
 2124              	.L186:
1006:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2125              		.loc 1 1006 0
 2126 00a0 0220     		movs	r0, #2
 2127              	.LVL191:
 2128 00a2 F9E7     		b	.L179
 2129              	.LVL192:
 2130              	.L187:
1010:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2131              		.loc 1 1010 0
 2132 00a4 0220     		movs	r0, #2
 2133              	.LVL193:
 2134 00a6 F7E7     		b	.L179
 2135              		.cfi_endproc
 2136              	.LFE146:
 2138              		.section	.text.HAL_I2C_Master_Receive_IT,"ax",%progbits
 2139              		.align	1
 2140              		.global	HAL_I2C_Master_Receive_IT
 2141              		.syntax unified
 2142              		.thumb
 2143              		.thumb_func
 2144              		.fpu fpv5-d16
 2146              	HAL_I2C_Master_Receive_IT:
 2147              	.LFB147:
1068:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
 2148              		.loc 1 1068 0
 2149              		.cfi_startproc
 2150              		@ args = 0, pretend = 0, frame = 0
 2151              		@ frame_needed = 0, uses_anonymous_args = 0
 2152              	.LVL194:
 2153 0000 10B5     		push	{r4, lr}
 2154              		.cfi_def_cfa_offset 8
 2155              		.cfi_offset 4, -8
 2156              		.cfi_offset 14, -4
 2157 0002 82B0     		sub	sp, sp, #8
 2158              		.cfi_def_cfa_offset 16
1069:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 2159              		.loc 1 1069 0
 2160 0004 90F84140 		ldrb	r4, [r0, #65]	@ zero_extendqisi2
 2161 0008 E4B2     		uxtb	r4, r4
 2162 000a 202C     		cmp	r4, #32
 2163 000c 43D1     		bne	.L196
1071:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2164              		.loc 1 1071 0
 2165 000e B3FA83F4 		clz	r4, r3
 2166 0012 6409     		lsrs	r4, r4, #5
 2167 0014 002A     		cmp	r2, #0
 2168 0016 08BF     		it	eq
 2169 0018 0124     		moveq	r4, #1
 2170 001a 002C     		cmp	r4, #0
 2171 001c 3ED1     		bne	.L197
1076:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2172              		.loc 1 1076 0
 2173 001e 0468     		ldr	r4, [r0]
 2174 0020 A469     		ldr	r4, [r4, #24]
 2175 0022 14F4004F 		tst	r4, #32768
 2176 0026 3BD1     		bne	.L198
1082:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2177              		.loc 1 1082 0
 2178 0028 90F84040 		ldrb	r4, [r0, #64]	@ zero_extendqisi2
 2179 002c 012C     		cmp	r4, #1
 2180 002e 39D0     		beq	.L199
1082:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2181              		.loc 1 1082 0 is_stmt 0 discriminator 2
 2182 0030 0124     		movs	r4, #1
 2183 0032 80F84040 		strb	r4, [r0, #64]
1084:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
 2184              		.loc 1 1084 0 is_stmt 1 discriminator 2
 2185 0036 2224     		movs	r4, #34
 2186 0038 80F84140 		strb	r4, [r0, #65]
1085:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2187              		.loc 1 1085 0 discriminator 2
 2188 003c 0024     		movs	r4, #0
 2189 003e 4464     		str	r4, [r0, #68]
1087:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
 2190              		.loc 1 1087 0 discriminator 2
 2191 0040 4262     		str	r2, [r0, #36]
1088:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
 2192              		.loc 1 1088 0 discriminator 2
 2193 0042 4385     		strh	r3, [r0, #42]	@ movhi
1089:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2194              		.loc 1 1089 0 discriminator 2
 2195 0044 FF2B     		cmp	r3, #255
 2196 0046 1BD9     		bls	.L192
1091:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2197              		.loc 1 1091 0
 2198 0048 FF23     		movs	r3, #255
 2199              	.LVL195:
 2200 004a 0385     		strh	r3, [r0, #40]	@ movhi
 2201              	.L193:
 2202 004c 0446     		mov	r4, r0
1100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2203              		.loc 1 1100 0
 2204 004e 028D     		ldrh	r2, [r0, #40]
 2205              	.LVL196:
 2206 0050 FF2A     		cmp	r2, #255
 2207 0052 03D1     		bne	.L194
1100:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2208              		.loc 1 1100 0 is_stmt 0 discriminator 1
 2209 0054 438D     		ldrh	r3, [r0, #42]
 2210 0056 9BB2     		uxth	r3, r3
 2211 0058 9A42     		cmp	r2, r3
 2212 005a 13D3     		bcc	.L201
 2213              	.L194:
1106:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2214              		.loc 1 1106 0 is_stmt 1
 2215 005c 4FF41053 		mov	r3, #9216
 2216 0060 0093     		str	r3, [sp]
 2217              	.LVL197:
 2218 0062 4FF00073 		mov	r3, #33554432
 2219 0066 D2B2     		uxtb	r2, r2
 2220 0068 2046     		mov	r0, r4
 2221              	.LVL198:
 2222 006a FFF7FEFF 		bl	I2C_TransferConfig
 2223              	.LVL199:
 2224              	.L195:
1110:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2225              		.loc 1 1110 0
 2226 006e 0020     		movs	r0, #0
 2227 0070 84F84000 		strb	r0, [r4, #64]
1119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2228              		.loc 1 1119 0
 2229 0074 2268     		ldr	r2, [r4]
 2230 0076 1368     		ldr	r3, [r2]
 2231 0078 43F0F403 		orr	r3, r3, #244
 2232 007c 1360     		str	r3, [r2]
1121:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 2233              		.loc 1 1121 0
 2234 007e 0BE0     		b	.L191
 2235              	.LVL200:
 2236              	.L192:
1095:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2237              		.loc 1 1095 0
 2238 0080 0385     		strh	r3, [r0, #40]	@ movhi
 2239 0082 E3E7     		b	.L193
 2240              	.LVL201:
 2241              	.L201:
1102:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2242              		.loc 1 1102 0
 2243 0084 4FF41053 		mov	r3, #9216
 2244 0088 0093     		str	r3, [sp]
 2245              	.LVL202:
 2246 008a 4FF08073 		mov	r3, #16777216
 2247 008e D2B2     		uxtb	r2, r2
 2248 0090 FFF7FEFF 		bl	I2C_TransferConfig
 2249              	.LVL203:
 2250 0094 EBE7     		b	.L195
 2251              	.LVL204:
 2252              	.L196:
1125:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   } 
 2253              		.loc 1 1125 0
 2254 0096 0220     		movs	r0, #2
 2255              	.LVL205:
 2256              	.L191:
1127:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 2257              		.loc 1 1127 0
 2258 0098 02B0     		add	sp, sp, #8
 2259              		.cfi_remember_state
 2260              		.cfi_def_cfa_offset 8
 2261              		@ sp needed
 2262 009a 10BD     		pop	{r4, pc}
 2263              	.LVL206:
 2264              	.L197:
 2265              		.cfi_restore_state
1073:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2266              		.loc 1 1073 0
 2267 009c 0120     		movs	r0, #1
 2268              	.LVL207:
 2269 009e FBE7     		b	.L191
 2270              	.LVL208:
 2271              	.L198:
1078:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2272              		.loc 1 1078 0
 2273 00a0 0220     		movs	r0, #2
 2274              	.LVL209:
 2275 00a2 F9E7     		b	.L191
 2276              	.LVL210:
 2277              	.L199:
1082:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2278              		.loc 1 1082 0
 2279 00a4 0220     		movs	r0, #2
 2280              	.LVL211:
 2281 00a6 F7E7     		b	.L191
 2282              		.cfi_endproc
 2283              	.LFE147:
 2285              		.section	.text.HAL_I2C_Slave_Transmit_IT,"ax",%progbits
 2286              		.align	1
 2287              		.global	HAL_I2C_Slave_Transmit_IT
 2288              		.syntax unified
 2289              		.thumb
 2290              		.thumb_func
 2291              		.fpu fpv5-d16
 2293              	HAL_I2C_Slave_Transmit_IT:
 2294              	.LFB148:
1138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
 2295              		.loc 1 1138 0
 2296              		.cfi_startproc
 2297              		@ args = 0, pretend = 0, frame = 0
 2298              		@ frame_needed = 0, uses_anonymous_args = 0
 2299              		@ link register save eliminated.
 2300              	.LVL212:
1139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 2301              		.loc 1 1139 0
 2302 0000 90F84130 		ldrb	r3, [r0, #65]	@ zero_extendqisi2
 2303 0004 DBB2     		uxtb	r3, r3
 2304 0006 202B     		cmp	r3, #32
 2305 0008 25D1     		bne	.L204
1141:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2306              		.loc 1 1141 0
 2307 000a B2FA82F3 		clz	r3, r2
 2308 000e 5B09     		lsrs	r3, r3, #5
 2309 0010 0029     		cmp	r1, #0
 2310 0012 08BF     		it	eq
 2311 0014 0123     		moveq	r3, #1
 2312 0016 03BB     		cbnz	r3, .L205
1147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2313              		.loc 1 1147 0
 2314 0018 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 2315 001c 012B     		cmp	r3, #1
 2316 001e 1ED0     		beq	.L206
1138:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
 2317              		.loc 1 1138 0 discriminator 2
 2318 0020 30B4     		push	{r4, r5}
 2319              		.cfi_def_cfa_offset 8
 2320              		.cfi_offset 4, -8
 2321              		.cfi_offset 5, -4
1147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2322              		.loc 1 1147 0 discriminator 2
 2323 0022 0123     		movs	r3, #1
 2324 0024 80F84030 		strb	r3, [r0, #64]
1149:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
 2325              		.loc 1 1149 0 discriminator 2
 2326 0028 2123     		movs	r3, #33
 2327 002a 80F84130 		strb	r3, [r0, #65]
1150:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2328              		.loc 1 1150 0 discriminator 2
 2329 002e 0023     		movs	r3, #0
 2330 0030 4364     		str	r3, [r0, #68]
1153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2331              		.loc 1 1153 0 discriminator 2
 2332 0032 0568     		ldr	r5, [r0]
 2333 0034 6C68     		ldr	r4, [r5, #4]
 2334 0036 24F40044 		bic	r4, r4, #32768
 2335 003a 6C60     		str	r4, [r5, #4]
1155:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferSize = Size;
 2336              		.loc 1 1155 0 discriminator 2
 2337 003c 4162     		str	r1, [r0, #36]
1156:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
 2338              		.loc 1 1156 0 discriminator 2
 2339 003e 0285     		strh	r2, [r0, #40]	@ movhi
1157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2340              		.loc 1 1157 0 discriminator 2
 2341 0040 4285     		strh	r2, [r0, #42]	@ movhi
1160:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2342              		.loc 1 1160 0 discriminator 2
 2343 0042 80F84030 		strb	r3, [r0, #64]
1169:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2344              		.loc 1 1169 0 discriminator 2
 2345 0046 0168     		ldr	r1, [r0]
 2346              	.LVL213:
 2347 0048 0A68     		ldr	r2, [r1]
 2348              	.LVL214:
 2349 004a 42F0FA02 		orr	r2, r2, #250
 2350 004e 0A60     		str	r2, [r1]
 2351              	.LVL215:
1171:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 2352              		.loc 1 1171 0 discriminator 2
 2353 0050 1846     		mov	r0, r3
 2354              	.LVL216:
1177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 2355              		.loc 1 1177 0 discriminator 2
 2356 0052 30BC     		pop	{r4, r5}
 2357              		.cfi_restore 5
 2358              		.cfi_restore 4
 2359              		.cfi_def_cfa_offset 0
 2360 0054 7047     		bx	lr
 2361              	.LVL217:
 2362              	.L204:
1175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   } 
 2363              		.loc 1 1175 0
 2364 0056 0220     		movs	r0, #2
 2365              	.LVL218:
 2366 0058 7047     		bx	lr
 2367              	.LVL219:
 2368              	.L205:
1143:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2369              		.loc 1 1143 0
 2370 005a 0120     		movs	r0, #1
 2371              	.LVL220:
 2372 005c 7047     		bx	lr
 2373              	.LVL221:
 2374              	.L206:
1147:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2375              		.loc 1 1147 0
 2376 005e 0220     		movs	r0, #2
 2377              	.LVL222:
1177:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 2378              		.loc 1 1177 0
 2379 0060 7047     		bx	lr
 2380              		.cfi_endproc
 2381              	.LFE148:
 2383              		.section	.text.HAL_I2C_Slave_Receive_IT,"ax",%progbits
 2384              		.align	1
 2385              		.global	HAL_I2C_Slave_Receive_IT
 2386              		.syntax unified
 2387              		.thumb
 2388              		.thumb_func
 2389              		.fpu fpv5-d16
 2391              	HAL_I2C_Slave_Receive_IT:
 2392              	.LFB149:
1188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
 2393              		.loc 1 1188 0
 2394              		.cfi_startproc
 2395              		@ args = 0, pretend = 0, frame = 0
 2396              		@ frame_needed = 0, uses_anonymous_args = 0
 2397              		@ link register save eliminated.
 2398              	.LVL223:
1189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 2399              		.loc 1 1189 0
 2400 0000 90F84130 		ldrb	r3, [r0, #65]	@ zero_extendqisi2
 2401 0004 DBB2     		uxtb	r3, r3
 2402 0006 202B     		cmp	r3, #32
 2403 0008 25D1     		bne	.L213
1191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2404              		.loc 1 1191 0
 2405 000a B2FA82F3 		clz	r3, r2
 2406 000e 5B09     		lsrs	r3, r3, #5
 2407 0010 0029     		cmp	r1, #0
 2408 0012 08BF     		it	eq
 2409 0014 0123     		moveq	r3, #1
 2410 0016 03BB     		cbnz	r3, .L214
1197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2411              		.loc 1 1197 0
 2412 0018 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 2413 001c 012B     		cmp	r3, #1
 2414 001e 1ED0     		beq	.L215
1188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
 2415              		.loc 1 1188 0 discriminator 2
 2416 0020 30B4     		push	{r4, r5}
 2417              		.cfi_def_cfa_offset 8
 2418              		.cfi_offset 4, -8
 2419              		.cfi_offset 5, -4
1197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2420              		.loc 1 1197 0 discriminator 2
 2421 0022 0123     		movs	r3, #1
 2422 0024 80F84030 		strb	r3, [r0, #64]
1199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
 2423              		.loc 1 1199 0 discriminator 2
 2424 0028 2223     		movs	r3, #34
 2425 002a 80F84130 		strb	r3, [r0, #65]
1200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2426              		.loc 1 1200 0 discriminator 2
 2427 002e 0023     		movs	r3, #0
 2428 0030 4364     		str	r3, [r0, #68]
1203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2429              		.loc 1 1203 0 discriminator 2
 2430 0032 0568     		ldr	r5, [r0]
 2431 0034 6C68     		ldr	r4, [r5, #4]
 2432 0036 24F40044 		bic	r4, r4, #32768
 2433 003a 6C60     		str	r4, [r5, #4]
1205:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferSize = Size;
 2434              		.loc 1 1205 0 discriminator 2
 2435 003c 4162     		str	r1, [r0, #36]
1206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
 2436              		.loc 1 1206 0 discriminator 2
 2437 003e 0285     		strh	r2, [r0, #40]	@ movhi
1207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2438              		.loc 1 1207 0 discriminator 2
 2439 0040 4285     		strh	r2, [r0, #42]	@ movhi
1210:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2440              		.loc 1 1210 0 discriminator 2
 2441 0042 80F84030 		strb	r3, [r0, #64]
1219:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2442              		.loc 1 1219 0 discriminator 2
 2443 0046 0168     		ldr	r1, [r0]
 2444              	.LVL224:
 2445 0048 0A68     		ldr	r2, [r1]
 2446              	.LVL225:
 2447 004a 42F0FC02 		orr	r2, r2, #252
 2448 004e 0A60     		str	r2, [r1]
 2449              	.LVL226:
1221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 2450              		.loc 1 1221 0 discriminator 2
 2451 0050 1846     		mov	r0, r3
 2452              	.LVL227:
1227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 2453              		.loc 1 1227 0 discriminator 2
 2454 0052 30BC     		pop	{r4, r5}
 2455              		.cfi_restore 5
 2456              		.cfi_restore 4
 2457              		.cfi_def_cfa_offset 0
 2458 0054 7047     		bx	lr
 2459              	.LVL228:
 2460              	.L213:
1225:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 2461              		.loc 1 1225 0
 2462 0056 0220     		movs	r0, #2
 2463              	.LVL229:
 2464 0058 7047     		bx	lr
 2465              	.LVL230:
 2466              	.L214:
1193:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2467              		.loc 1 1193 0
 2468 005a 0120     		movs	r0, #1
 2469              	.LVL231:
 2470 005c 7047     		bx	lr
 2471              	.LVL232:
 2472              	.L215:
1197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2473              		.loc 1 1197 0
 2474 005e 0220     		movs	r0, #2
 2475              	.LVL233:
1227:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 2476              		.loc 1 1227 0
 2477 0060 7047     		bx	lr
 2478              		.cfi_endproc
 2479              	.LFE149:
 2481              		.section	.text.HAL_I2C_Master_Transmit_DMA,"ax",%progbits
 2482              		.align	1
 2483              		.global	HAL_I2C_Master_Transmit_DMA
 2484              		.syntax unified
 2485              		.thumb
 2486              		.thumb_func
 2487              		.fpu fpv5-d16
 2489              	HAL_I2C_Master_Transmit_DMA:
 2490              	.LFB150:
1239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
 2491              		.loc 1 1239 0
 2492              		.cfi_startproc
 2493              		@ args = 0, pretend = 0, frame = 0
 2494              		@ frame_needed = 0, uses_anonymous_args = 0
 2495              	.LVL234:
 2496 0000 70B5     		push	{r4, r5, r6, lr}
 2497              		.cfi_def_cfa_offset 16
 2498              		.cfi_offset 4, -16
 2499              		.cfi_offset 5, -12
 2500              		.cfi_offset 6, -8
 2501              		.cfi_offset 14, -4
 2502 0002 82B0     		sub	sp, sp, #8
 2503              		.cfi_def_cfa_offset 24
1240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 2504              		.loc 1 1240 0
 2505 0004 90F84140 		ldrb	r4, [r0, #65]	@ zero_extendqisi2
 2506 0008 E4B2     		uxtb	r4, r4
 2507 000a 202C     		cmp	r4, #32
 2508 000c 68D1     		bne	.L227
1242:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2509              		.loc 1 1242 0
 2510 000e B3FA83F4 		clz	r4, r3
 2511 0012 6409     		lsrs	r4, r4, #5
 2512 0014 002A     		cmp	r2, #0
 2513 0016 08BF     		it	eq
 2514 0018 0124     		moveq	r4, #1
 2515 001a 002C     		cmp	r4, #0
 2516 001c 64D1     		bne	.L228
1247:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2517              		.loc 1 1247 0
 2518 001e 0468     		ldr	r4, [r0]
 2519 0020 A469     		ldr	r4, [r4, #24]
 2520 0022 14F4004F 		tst	r4, #32768
 2521 0026 61D1     		bne	.L229
1253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2522              		.loc 1 1253 0
 2523 0028 90F84040 		ldrb	r4, [r0, #64]	@ zero_extendqisi2
 2524 002c 012C     		cmp	r4, #1
 2525 002e 5FD0     		beq	.L230
1253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2526              		.loc 1 1253 0 is_stmt 0 discriminator 2
 2527 0030 0124     		movs	r4, #1
 2528 0032 80F84040 		strb	r4, [r0, #64]
1255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
 2529              		.loc 1 1255 0 is_stmt 1 discriminator 2
 2530 0036 2124     		movs	r4, #33
 2531 0038 80F84140 		strb	r4, [r0, #65]
1256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2532              		.loc 1 1256 0 discriminator 2
 2533 003c 0024     		movs	r4, #0
 2534 003e 4464     		str	r4, [r0, #68]
1258:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
 2535              		.loc 1 1258 0 discriminator 2
 2536 0040 4262     		str	r2, [r0, #36]
1259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
 2537              		.loc 1 1259 0 discriminator 2
 2538 0042 4385     		strh	r3, [r0, #42]	@ movhi
1260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2539              		.loc 1 1260 0 discriminator 2
 2540 0044 FF2B     		cmp	r3, #255
 2541 0046 31D9     		bls	.L222
1262:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2542              		.loc 1 1262 0
 2543 0048 FF23     		movs	r3, #255
 2544              	.LVL235:
 2545 004a 0385     		strh	r3, [r0, #40]	@ movhi
 2546              	.L223:
 2547 004c 1446     		mov	r4, r2
 2548 004e 0E46     		mov	r6, r1
 2549 0050 0546     		mov	r5, r0
1270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2550              		.loc 1 1270 0
 2551 0052 836B     		ldr	r3, [r0, #56]
 2552 0054 284A     		ldr	r2, .L235
 2553              	.LVL236:
 2554 0056 DA63     		str	r2, [r3, #60]
 2555              	.LVL237:
1273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2556              		.loc 1 1273 0
 2557 0058 836B     		ldr	r3, [r0, #56]
 2558 005a 284A     		ldr	r2, .L235+4
 2559 005c DA64     		str	r2, [r3, #76]
1276:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2560              		.loc 1 1276 0
 2561 005e 0268     		ldr	r2, [r0]
 2562 0060 038D     		ldrh	r3, [r0, #40]
 2563 0062 2832     		adds	r2, r2, #40
 2564 0064 2146     		mov	r1, r4
 2565              	.LVL238:
 2566 0066 806B     		ldr	r0, [r0, #56]
 2567              	.LVL239:
 2568 0068 FFF7FEFF 		bl	HAL_DMA_Start_IT
 2569              	.LVL240:
1280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2570              		.loc 1 1280 0
 2571 006c 2A8D     		ldrh	r2, [r5, #40]
 2572 006e FF2A     		cmp	r2, #255
 2573 0070 03D1     		bne	.L224
1280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2574              		.loc 1 1280 0 is_stmt 0 discriminator 1
 2575 0072 6B8D     		ldrh	r3, [r5, #42]
 2576 0074 9BB2     		uxth	r3, r3
 2577 0076 9A42     		cmp	r2, r3
 2578 0078 1AD3     		bcc	.L233
 2579              	.L224:
1286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }  
 2580              		.loc 1 1286 0 is_stmt 1
 2581 007a 4FF40053 		mov	r3, #8192
 2582 007e 0093     		str	r3, [sp]
 2583 0080 4FF00073 		mov	r3, #33554432
 2584 0084 D2B2     		uxtb	r2, r2
 2585 0086 3146     		mov	r1, r6
 2586 0088 2846     		mov	r0, r5
 2587 008a FFF7FEFF 		bl	I2C_TransferConfig
 2588              	.LVL241:
 2589              	.L225:
1290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2590              		.loc 1 1290 0
 2591 008e 1921     		movs	r1, #25
 2592 0090 2846     		mov	r0, r5
 2593 0092 FFF7FEFF 		bl	I2C_WaitOnTXISFlagUntilTimeout
 2594              	.LVL242:
 2595 0096 0346     		mov	r3, r0
 2596 0098 A8B9     		cbnz	r0, .L234
1309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2597              		.loc 1 1309 0
 2598 009a 2968     		ldr	r1, [r5]
 2599 009c 0A68     		ldr	r2, [r1]
 2600 009e 42F48042 		orr	r2, r2, #16384
 2601 00a2 0A60     		str	r2, [r1]
1312:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2602              		.loc 1 1312 0
 2603 00a4 0022     		movs	r2, #0
 2604 00a6 85F84020 		strb	r2, [r5, #64]
1314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 2605              		.loc 1 1314 0
 2606 00aa 1AE0     		b	.L221
 2607              	.LVL243:
 2608              	.L222:
1266:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2609              		.loc 1 1266 0
 2610 00ac 0385     		strh	r3, [r0, #40]	@ movhi
 2611 00ae CDE7     		b	.L223
 2612              	.LVL244:
 2613              	.L233:
1282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2614              		.loc 1 1282 0
 2615 00b0 4FF40053 		mov	r3, #8192
 2616 00b4 0093     		str	r3, [sp]
 2617 00b6 4FF08073 		mov	r3, #16777216
 2618 00ba D2B2     		uxtb	r2, r2
 2619 00bc 3146     		mov	r1, r6
 2620 00be 2846     		mov	r0, r5
 2621 00c0 FFF7FEFF 		bl	I2C_TransferConfig
 2622              	.LVL245:
 2623 00c4 E3E7     		b	.L225
 2624              	.L234:
1293:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 2625              		.loc 1 1293 0
 2626 00c6 2A68     		ldr	r2, [r5]
 2627 00c8 5368     		ldr	r3, [r2, #4]
 2628 00ca 43F40043 		orr	r3, r3, #32768
 2629 00ce 5360     		str	r3, [r2, #4]
1296:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 2630              		.loc 1 1296 0
 2631 00d0 A86B     		ldr	r0, [r5, #56]
 2632 00d2 FFF7FEFF 		bl	HAL_DMA_Abort
 2633              	.LVL246:
1298:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 2634              		.loc 1 1298 0
 2635 00d6 6B6C     		ldr	r3, [r5, #68]
 2636 00d8 042B     		cmp	r3, #4
 2637 00da 0BD1     		bne	.L231
1300:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 2638              		.loc 1 1300 0
 2639 00dc 0123     		movs	r3, #1
 2640 00de 00E0     		b	.L221
 2641              	.LVL247:
 2642              	.L227:
1318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 2643              		.loc 1 1318 0
 2644 00e0 0223     		movs	r3, #2
 2645              	.LVL248:
 2646              	.L221:
1320:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 2647              		.loc 1 1320 0
 2648 00e2 1846     		mov	r0, r3
 2649 00e4 02B0     		add	sp, sp, #8
 2650              		.cfi_remember_state
 2651              		.cfi_def_cfa_offset 16
 2652              		@ sp needed
 2653 00e6 70BD     		pop	{r4, r5, r6, pc}
 2654              	.LVL249:
 2655              	.L228:
 2656              		.cfi_restore_state
1244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }     
 2657              		.loc 1 1244 0
 2658 00e8 0123     		movs	r3, #1
 2659              	.LVL250:
 2660 00ea FAE7     		b	.L221
 2661              	.LVL251:
 2662              	.L229:
1249:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2663              		.loc 1 1249 0
 2664 00ec 0223     		movs	r3, #2
 2665              	.LVL252:
 2666 00ee F8E7     		b	.L221
 2667              	.LVL253:
 2668              	.L230:
1253:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2669              		.loc 1 1253 0
 2670 00f0 0223     		movs	r3, #2
 2671              	.LVL254:
 2672 00f2 F6E7     		b	.L221
 2673              	.LVL255:
 2674              	.L231:
1304:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 2675              		.loc 1 1304 0
 2676 00f4 0323     		movs	r3, #3
 2677 00f6 F4E7     		b	.L221
 2678              	.L236:
 2679              		.align	2
 2680              	.L235:
 2681 00f8 00000000 		.word	I2C_DMAMasterTransmitCplt
 2682 00fc 00000000 		.word	I2C_DMAError
 2683              		.cfi_endproc
 2684              	.LFE150:
 2686              		.section	.text.HAL_I2C_Master_Receive_DMA,"ax",%progbits
 2687              		.align	1
 2688              		.global	HAL_I2C_Master_Receive_DMA
 2689              		.syntax unified
 2690              		.thumb
 2691              		.thumb_func
 2692              		.fpu fpv5-d16
 2694              	HAL_I2C_Master_Receive_DMA:
 2695              	.LFB151:
1332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
 2696              		.loc 1 1332 0
 2697              		.cfi_startproc
 2698              		@ args = 0, pretend = 0, frame = 0
 2699              		@ frame_needed = 0, uses_anonymous_args = 0
 2700              	.LVL256:
 2701 0000 30B5     		push	{r4, r5, lr}
 2702              		.cfi_def_cfa_offset 12
 2703              		.cfi_offset 4, -12
 2704              		.cfi_offset 5, -8
 2705              		.cfi_offset 14, -4
 2706 0002 83B0     		sub	sp, sp, #12
 2707              		.cfi_def_cfa_offset 24
1333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 2708              		.loc 1 1333 0
 2709 0004 90F84140 		ldrb	r4, [r0, #65]	@ zero_extendqisi2
 2710 0008 E4B2     		uxtb	r4, r4
 2711 000a 202C     		cmp	r4, #32
 2712 000c 61D1     		bne	.L244
1335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2713              		.loc 1 1335 0
 2714 000e B3FA83F4 		clz	r4, r3
 2715 0012 6409     		lsrs	r4, r4, #5
 2716 0014 002A     		cmp	r2, #0
 2717 0016 08BF     		it	eq
 2718 0018 0124     		moveq	r4, #1
 2719 001a 002C     		cmp	r4, #0
 2720 001c 5DD1     		bne	.L245
1340:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2721              		.loc 1 1340 0
 2722 001e 0468     		ldr	r4, [r0]
 2723 0020 A469     		ldr	r4, [r4, #24]
 2724 0022 14F4004F 		tst	r4, #32768
 2725 0026 5AD1     		bne	.L246
1346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2726              		.loc 1 1346 0
 2727 0028 90F84040 		ldrb	r4, [r0, #64]	@ zero_extendqisi2
 2728 002c 012C     		cmp	r4, #1
 2729 002e 58D0     		beq	.L247
1346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2730              		.loc 1 1346 0 is_stmt 0 discriminator 2
 2731 0030 0124     		movs	r4, #1
 2732 0032 80F84040 		strb	r4, [r0, #64]
1348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
 2733              		.loc 1 1348 0 is_stmt 1 discriminator 2
 2734 0036 2224     		movs	r4, #34
 2735 0038 80F84140 		strb	r4, [r0, #65]
1349:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2736              		.loc 1 1349 0 discriminator 2
 2737 003c 0024     		movs	r4, #0
 2738 003e 4464     		str	r4, [r0, #68]
1351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
 2739              		.loc 1 1351 0 discriminator 2
 2740 0040 4262     		str	r2, [r0, #36]
1352:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
 2741              		.loc 1 1352 0 discriminator 2
 2742 0042 4385     		strh	r3, [r0, #42]	@ movhi
1353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2743              		.loc 1 1353 0 discriminator 2
 2744 0044 FF2B     		cmp	r3, #255
 2745 0046 2FD9     		bls	.L239
1355:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2746              		.loc 1 1355 0
 2747 0048 FF23     		movs	r3, #255
 2748              	.LVL257:
 2749 004a 0385     		strh	r3, [r0, #40]	@ movhi
 2750              	.L240:
 2751 004c 0D46     		mov	r5, r1
 2752 004e 0446     		mov	r4, r0
1363:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2753              		.loc 1 1363 0
 2754 0050 C36B     		ldr	r3, [r0, #60]
 2755 0052 2649     		ldr	r1, .L252
 2756              	.LVL258:
 2757 0054 D963     		str	r1, [r3, #60]
 2758              	.LVL259:
1366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2759              		.loc 1 1366 0
 2760 0056 C36B     		ldr	r3, [r0, #60]
 2761 0058 2549     		ldr	r1, .L252+4
 2762 005a D964     		str	r1, [r3, #76]
1369:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2763              		.loc 1 1369 0
 2764 005c 0168     		ldr	r1, [r0]
 2765 005e 038D     		ldrh	r3, [r0, #40]
 2766 0060 2431     		adds	r1, r1, #36
 2767 0062 C06B     		ldr	r0, [r0, #60]
 2768              	.LVL260:
 2769 0064 FFF7FEFF 		bl	HAL_DMA_Start_IT
 2770              	.LVL261:
1373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2771              		.loc 1 1373 0
 2772 0068 228D     		ldrh	r2, [r4, #40]
 2773 006a FF2A     		cmp	r2, #255
 2774 006c 03D1     		bne	.L241
1373:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2775              		.loc 1 1373 0 is_stmt 0 discriminator 1
 2776 006e 638D     		ldrh	r3, [r4, #42]
 2777 0070 9BB2     		uxth	r3, r3
 2778 0072 9A42     		cmp	r2, r3
 2779 0074 1AD3     		bcc	.L250
 2780              	.L241:
1379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2781              		.loc 1 1379 0 is_stmt 1
 2782 0076 4FF41053 		mov	r3, #9216
 2783 007a 0093     		str	r3, [sp]
 2784 007c 4FF00073 		mov	r3, #33554432
 2785 0080 D2B2     		uxtb	r2, r2
 2786 0082 2946     		mov	r1, r5
 2787 0084 2046     		mov	r0, r4
 2788 0086 FFF7FEFF 		bl	I2C_TransferConfig
 2789              	.LVL262:
 2790              	.L242:
1383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2791              		.loc 1 1383 0
 2792 008a 0421     		movs	r1, #4
 2793 008c 2046     		mov	r0, r4
 2794 008e FFF7FEFF 		bl	I2C_WaitOnRXNEFlagUntilTimeout
 2795              	.LVL263:
 2796 0092 0346     		mov	r3, r0
 2797 0094 A8B9     		cbnz	r0, .L251
1399:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2798              		.loc 1 1399 0
 2799 0096 2168     		ldr	r1, [r4]
 2800 0098 0A68     		ldr	r2, [r1]
 2801 009a 42F40042 		orr	r2, r2, #32768
 2802 009e 0A60     		str	r2, [r1]
1402:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2803              		.loc 1 1402 0
 2804 00a0 0022     		movs	r2, #0
 2805 00a2 84F84020 		strb	r2, [r4, #64]
1404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 2806              		.loc 1 1404 0
 2807 00a6 15E0     		b	.L238
 2808              	.LVL264:
 2809              	.L239:
1359:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2810              		.loc 1 1359 0
 2811 00a8 0385     		strh	r3, [r0, #40]	@ movhi
 2812 00aa CFE7     		b	.L240
 2813              	.LVL265:
 2814              	.L250:
1375:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2815              		.loc 1 1375 0
 2816 00ac 4FF41053 		mov	r3, #9216
 2817 00b0 0093     		str	r3, [sp]
 2818 00b2 4FF08073 		mov	r3, #16777216
 2819 00b6 D2B2     		uxtb	r2, r2
 2820 00b8 2946     		mov	r1, r5
 2821 00ba 2046     		mov	r0, r4
 2822 00bc FFF7FEFF 		bl	I2C_TransferConfig
 2823              	.LVL266:
 2824 00c0 E3E7     		b	.L242
 2825              	.L251:
1386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 2826              		.loc 1 1386 0
 2827 00c2 E06B     		ldr	r0, [r4, #60]
 2828 00c4 FFF7FEFF 		bl	HAL_DMA_Abort
 2829              	.LVL267:
1388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 2830              		.loc 1 1388 0
 2831 00c8 636C     		ldr	r3, [r4, #68]
 2832 00ca 042B     		cmp	r3, #4
 2833 00cc 0BD1     		bne	.L248
1390:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 2834              		.loc 1 1390 0
 2835 00ce 0123     		movs	r3, #1
 2836 00d0 00E0     		b	.L238
 2837              	.LVL268:
 2838              	.L244:
1408:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 2839              		.loc 1 1408 0
 2840 00d2 0223     		movs	r3, #2
 2841              	.LVL269:
 2842              	.L238:
1410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 2843              		.loc 1 1410 0
 2844 00d4 1846     		mov	r0, r3
 2845 00d6 03B0     		add	sp, sp, #12
 2846              		.cfi_remember_state
 2847              		.cfi_def_cfa_offset 12
 2848              		@ sp needed
 2849 00d8 30BD     		pop	{r4, r5, pc}
 2850              	.LVL270:
 2851              	.L245:
 2852              		.cfi_restore_state
1337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }  
 2853              		.loc 1 1337 0
 2854 00da 0123     		movs	r3, #1
 2855              	.LVL271:
 2856 00dc FAE7     		b	.L238
 2857              	.LVL272:
 2858              	.L246:
1342:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 2859              		.loc 1 1342 0
 2860 00de 0223     		movs	r3, #2
 2861              	.LVL273:
 2862 00e0 F8E7     		b	.L238
 2863              	.LVL274:
 2864              	.L247:
1346:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2865              		.loc 1 1346 0
 2866 00e2 0223     		movs	r3, #2
 2867              	.LVL275:
 2868 00e4 F6E7     		b	.L238
 2869              	.LVL276:
 2870              	.L248:
1394:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 2871              		.loc 1 1394 0
 2872 00e6 0323     		movs	r3, #3
 2873 00e8 F4E7     		b	.L238
 2874              	.L253:
 2875 00ea 00BF     		.align	2
 2876              	.L252:
 2877 00ec 00000000 		.word	I2C_DMAMasterReceiveCplt
 2878 00f0 00000000 		.word	I2C_DMAError
 2879              		.cfi_endproc
 2880              	.LFE151:
 2882              		.section	.text.HAL_I2C_Slave_Transmit_DMA,"ax",%progbits
 2883              		.align	1
 2884              		.global	HAL_I2C_Slave_Transmit_DMA
 2885              		.syntax unified
 2886              		.thumb
 2887              		.thumb_func
 2888              		.fpu fpv5-d16
 2890              	HAL_I2C_Slave_Transmit_DMA:
 2891              	.LFB152:
1421:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
 2892              		.loc 1 1421 0
 2893              		.cfi_startproc
 2894              		@ args = 0, pretend = 0, frame = 0
 2895              		@ frame_needed = 0, uses_anonymous_args = 0
 2896              	.LVL277:
 2897 0000 38B5     		push	{r3, r4, r5, lr}
 2898              		.cfi_def_cfa_offset 16
 2899              		.cfi_offset 3, -16
 2900              		.cfi_offset 4, -12
 2901              		.cfi_offset 5, -8
 2902              		.cfi_offset 14, -4
1422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 2903              		.loc 1 1422 0
 2904 0002 90F84130 		ldrb	r3, [r0, #65]	@ zero_extendqisi2
 2905 0006 DBB2     		uxtb	r3, r3
 2906 0008 202B     		cmp	r3, #32
 2907 000a 69D1     		bne	.L260
1424:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2908              		.loc 1 1424 0
 2909 000c B2FA82F3 		clz	r3, r2
 2910 0010 5B09     		lsrs	r3, r3, #5
 2911 0012 0029     		cmp	r1, #0
 2912 0014 08BF     		it	eq
 2913 0016 0123     		moveq	r3, #1
 2914 0018 002B     		cmp	r3, #0
 2915 001a 64D1     		bne	.L261
1429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2916              		.loc 1 1429 0
 2917 001c 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 2918 0020 012B     		cmp	r3, #1
 2919 0022 62D0     		beq	.L262
 2920 0024 0446     		mov	r4, r0
1429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2921              		.loc 1 1429 0 is_stmt 0 discriminator 2
 2922 0026 0123     		movs	r3, #1
 2923 0028 80F84030 		strb	r3, [r0, #64]
1431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
 2924              		.loc 1 1431 0 is_stmt 1 discriminator 2
 2925 002c 2123     		movs	r3, #33
 2926 002e 80F84130 		strb	r3, [r0, #65]
1432:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2927              		.loc 1 1432 0 discriminator 2
 2928 0032 0025     		movs	r5, #0
 2929 0034 4564     		str	r5, [r0, #68]
1434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
 2930              		.loc 1 1434 0 discriminator 2
 2931 0036 4162     		str	r1, [r0, #36]
1435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferSize = Size;
 2932              		.loc 1 1435 0 discriminator 2
 2933 0038 4285     		strh	r2, [r0, #42]	@ movhi
1436:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2934              		.loc 1 1436 0 discriminator 2
 2935 003a 0285     		strh	r2, [r0, #40]	@ movhi
1439:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2936              		.loc 1 1439 0 discriminator 2
 2937 003c 836B     		ldr	r3, [r0, #56]
 2938 003e 2C4A     		ldr	r2, .L268
 2939              	.LVL278:
 2940 0040 DA63     		str	r2, [r3, #60]
 2941              	.LVL279:
1442:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2942              		.loc 1 1442 0 discriminator 2
 2943 0042 836B     		ldr	r3, [r0, #56]
 2944 0044 2B4A     		ldr	r2, .L268+4
 2945 0046 DA64     		str	r2, [r3, #76]
1445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2946              		.loc 1 1445 0 discriminator 2
 2947 0048 0268     		ldr	r2, [r0]
 2948 004a 038D     		ldrh	r3, [r0, #40]
 2949 004c 2832     		adds	r2, r2, #40
 2950 004e 806B     		ldr	r0, [r0, #56]
 2951              	.LVL280:
 2952 0050 FFF7FEFF 		bl	HAL_DMA_Start_IT
 2953              	.LVL281:
1448:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2954              		.loc 1 1448 0 discriminator 2
 2955 0054 2268     		ldr	r2, [r4]
 2956 0056 5368     		ldr	r3, [r2, #4]
 2957 0058 23F40043 		bic	r3, r3, #32768
 2958 005c 5360     		str	r3, [r2, #4]
1451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2959              		.loc 1 1451 0 discriminator 2
 2960 005e 42F21073 		movw	r3, #10000
 2961 0062 2A46     		mov	r2, r5
 2962 0064 0821     		movs	r1, #8
 2963 0066 2046     		mov	r0, r4
 2964 0068 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 2965              	.LVL282:
 2966 006c B8B9     		cbnz	r0, .L264
1459:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2967              		.loc 1 1459 0
 2968 006e 2368     		ldr	r3, [r4]
 2969 0070 0822     		movs	r2, #8
 2970 0072 DA61     		str	r2, [r3, #28]
1462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2971              		.loc 1 1462 0
 2972 0074 E368     		ldr	r3, [r4, #12]
 2973 0076 022B     		cmp	r3, #2
 2974 0078 18D0     		beq	.L265
 2975              	.L257:
1477:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 2976              		.loc 1 1477 0
 2977 007a 1923     		movs	r3, #25
 2978 007c 0022     		movs	r2, #0
 2979 007e 4FF48031 		mov	r1, #65536
 2980 0082 2046     		mov	r0, r4
 2981 0084 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 2982              	.LVL283:
 2983 0088 0346     		mov	r3, r0
 2984 008a 10BB     		cbnz	r0, .L266
1485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2985              		.loc 1 1485 0
 2986 008c 2168     		ldr	r1, [r4]
 2987 008e 0A68     		ldr	r2, [r1]
 2988 0090 42F48042 		orr	r2, r2, #16384
 2989 0094 0A60     		str	r2, [r1]
1488:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 2990              		.loc 1 1488 0
 2991 0096 0022     		movs	r2, #0
 2992 0098 84F84020 		strb	r2, [r4, #64]
1490:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 2993              		.loc 1 1490 0
 2994 009c 21E0     		b	.L255
 2995              	.L264:
1454:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
 2996              		.loc 1 1454 0
 2997 009e 2268     		ldr	r2, [r4]
 2998 00a0 5368     		ldr	r3, [r2, #4]
 2999 00a2 43F40043 		orr	r3, r3, #32768
 3000 00a6 5360     		str	r3, [r2, #4]
1455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 3001              		.loc 1 1455 0
 3002 00a8 0323     		movs	r3, #3
 3003 00aa 1AE0     		b	.L255
 3004              	.L265:
1465:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 3005              		.loc 1 1465 0
 3006 00ac 42F21073 		movw	r3, #10000
 3007 00b0 0022     		movs	r2, #0
 3008 00b2 0821     		movs	r1, #8
 3009 00b4 2046     		mov	r0, r4
 3010 00b6 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 3011              	.LVL284:
 3012 00ba 18B9     		cbnz	r0, .L267
1473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 3013              		.loc 1 1473 0
 3014 00bc 2368     		ldr	r3, [r4]
 3015 00be 0822     		movs	r2, #8
 3016 00c0 DA61     		str	r2, [r3, #28]
 3017 00c2 DAE7     		b	.L257
 3018              	.L267:
1468:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
 3019              		.loc 1 1468 0
 3020 00c4 2268     		ldr	r2, [r4]
 3021 00c6 5368     		ldr	r3, [r2, #4]
 3022 00c8 43F40043 		orr	r3, r3, #32768
 3023 00cc 5360     		str	r3, [r2, #4]
1469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 3024              		.loc 1 1469 0
 3025 00ce 0323     		movs	r3, #3
 3026 00d0 07E0     		b	.L255
 3027              	.L266:
1480:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
 3028              		.loc 1 1480 0
 3029 00d2 2268     		ldr	r2, [r4]
 3030 00d4 5368     		ldr	r3, [r2, #4]
 3031 00d6 43F40043 		orr	r3, r3, #32768
 3032 00da 5360     		str	r3, [r2, #4]
1481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 3033              		.loc 1 1481 0
 3034 00dc 0323     		movs	r3, #3
 3035 00de 00E0     		b	.L255
 3036              	.LVL285:
 3037              	.L260:
1494:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 3038              		.loc 1 1494 0
 3039 00e0 0223     		movs	r3, #2
 3040              	.LVL286:
 3041              	.L255:
1496:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 3042              		.loc 1 1496 0
 3043 00e2 1846     		mov	r0, r3
 3044 00e4 38BD     		pop	{r3, r4, r5, pc}
 3045              	.LVL287:
 3046              	.L261:
1426:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }   
 3047              		.loc 1 1426 0
 3048 00e6 0123     		movs	r3, #1
 3049 00e8 FBE7     		b	.L255
 3050              	.L262:
1429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3051              		.loc 1 1429 0
 3052 00ea 0223     		movs	r3, #2
 3053 00ec F9E7     		b	.L255
 3054              	.L269:
 3055 00ee 00BF     		.align	2
 3056              	.L268:
 3057 00f0 00000000 		.word	I2C_DMASlaveTransmitCplt
 3058 00f4 00000000 		.word	I2C_DMAError
 3059              		.cfi_endproc
 3060              	.LFE152:
 3062              		.section	.text.HAL_I2C_Slave_Receive_DMA,"ax",%progbits
 3063              		.align	1
 3064              		.global	HAL_I2C_Slave_Receive_DMA
 3065              		.syntax unified
 3066              		.thumb
 3067              		.thumb_func
 3068              		.fpu fpv5-d16
 3070              	HAL_I2C_Slave_Receive_DMA:
 3071              	.LFB153:
1507:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   if(hi2c->State == HAL_I2C_STATE_READY)
 3072              		.loc 1 1507 0
 3073              		.cfi_startproc
 3074              		@ args = 0, pretend = 0, frame = 0
 3075              		@ frame_needed = 0, uses_anonymous_args = 0
 3076              	.LVL288:
 3077 0000 38B5     		push	{r3, r4, r5, lr}
 3078              		.cfi_def_cfa_offset 16
 3079              		.cfi_offset 3, -16
 3080              		.cfi_offset 4, -12
 3081              		.cfi_offset 5, -8
 3082              		.cfi_offset 14, -4
1508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 3083              		.loc 1 1508 0
 3084 0002 90F84150 		ldrb	r5, [r0, #65]	@ zero_extendqisi2
 3085 0006 EDB2     		uxtb	r5, r5
 3086 0008 202D     		cmp	r5, #32
 3087 000a 53D1     		bne	.L274
1510:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3088              		.loc 1 1510 0
 3089 000c B2FA82F5 		clz	r5, r2
 3090 0010 6D09     		lsrs	r5, r5, #5
 3091 0012 0029     		cmp	r1, #0
 3092 0014 08BF     		it	eq
 3093 0016 0125     		moveq	r5, #1
 3094 0018 002D     		cmp	r5, #0
 3095 001a 4ED1     		bne	.L275
1515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3096              		.loc 1 1515 0
 3097 001c 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 3098 0020 012B     		cmp	r3, #1
 3099 0022 4CD0     		beq	.L276
 3100 0024 1346     		mov	r3, r2
 3101 0026 0A46     		mov	r2, r1
 3102              	.LVL289:
 3103 0028 0446     		mov	r4, r0
1515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3104              		.loc 1 1515 0 is_stmt 0 discriminator 2
 3105 002a 0121     		movs	r1, #1
 3106              	.LVL290:
 3107 002c 80F84010 		strb	r1, [r0, #64]
1517:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode   = HAL_I2C_ERROR_NONE;
 3108              		.loc 1 1517 0 is_stmt 1 discriminator 2
 3109 0030 2221     		movs	r1, #34
 3110 0032 80F84110 		strb	r1, [r0, #65]
1518:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3111              		.loc 1 1518 0 discriminator 2
 3112 0036 4564     		str	r5, [r0, #68]
1520:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferSize = Size;
 3113              		.loc 1 1520 0 discriminator 2
 3114 0038 4262     		str	r2, [r0, #36]
1521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
 3115              		.loc 1 1521 0 discriminator 2
 3116 003a 0385     		strh	r3, [r0, #40]	@ movhi
1522:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3117              		.loc 1 1522 0 discriminator 2
 3118 003c 4385     		strh	r3, [r0, #42]	@ movhi
1525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3119              		.loc 1 1525 0 discriminator 2
 3120 003e C16B     		ldr	r1, [r0, #60]
 3121 0040 2048     		ldr	r0, .L280
 3122              	.LVL291:
 3123 0042 C863     		str	r0, [r1, #60]
1528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3124              		.loc 1 1528 0 discriminator 2
 3125 0044 E16B     		ldr	r1, [r4, #60]
 3126 0046 2048     		ldr	r0, .L280+4
 3127 0048 C864     		str	r0, [r1, #76]
1531:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3128              		.loc 1 1531 0 discriminator 2
 3129 004a 2168     		ldr	r1, [r4]
 3130 004c 2431     		adds	r1, r1, #36
 3131 004e E06B     		ldr	r0, [r4, #60]
 3132 0050 FFF7FEFF 		bl	HAL_DMA_Start_IT
 3133              	.LVL292:
1534:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3134              		.loc 1 1534 0 discriminator 2
 3135 0054 2268     		ldr	r2, [r4]
 3136 0056 5368     		ldr	r3, [r2, #4]
 3137 0058 23F40043 		bic	r3, r3, #32768
 3138 005c 5360     		str	r3, [r2, #4]
1537:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3139              		.loc 1 1537 0 discriminator 2
 3140 005e 42F21073 		movw	r3, #10000
 3141 0062 2A46     		mov	r2, r5
 3142 0064 0821     		movs	r1, #8
 3143 0066 2046     		mov	r0, r4
 3144 0068 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 3145              	.LVL293:
 3146 006c A0B9     		cbnz	r0, .L278
1545:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3147              		.loc 1 1545 0
 3148 006e 2368     		ldr	r3, [r4]
 3149 0070 0822     		movs	r2, #8
 3150 0072 DA61     		str	r2, [r3, #28]
1548:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3151              		.loc 1 1548 0
 3152 0074 1923     		movs	r3, #25
 3153 0076 0122     		movs	r2, #1
 3154 0078 4FF48031 		mov	r1, #65536
 3155 007c 2046     		mov	r0, r4
 3156 007e FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 3157              	.LVL294:
 3158 0082 0346     		mov	r3, r0
 3159 0084 78B9     		cbnz	r0, .L279
1556:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3160              		.loc 1 1556 0
 3161 0086 2168     		ldr	r1, [r4]
 3162 0088 0A68     		ldr	r2, [r1]
 3163 008a 42F40042 		orr	r2, r2, #32768
 3164 008e 0A60     		str	r2, [r1]
1559:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3165              		.loc 1 1559 0
 3166 0090 0022     		movs	r2, #0
 3167 0092 84F84020 		strb	r2, [r4, #64]
1561:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 3168              		.loc 1 1561 0
 3169 0096 0EE0     		b	.L271
 3170              	.L278:
1540:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
 3171              		.loc 1 1540 0
 3172 0098 2268     		ldr	r2, [r4]
 3173 009a 5368     		ldr	r3, [r2, #4]
 3174 009c 43F40043 		orr	r3, r3, #32768
 3175 00a0 5360     		str	r3, [r2, #4]
1541:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 3176              		.loc 1 1541 0
 3177 00a2 0323     		movs	r3, #3
 3178 00a4 07E0     		b	.L271
 3179              	.L279:
1551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       return HAL_TIMEOUT;
 3180              		.loc 1 1551 0
 3181 00a6 2268     		ldr	r2, [r4]
 3182 00a8 5368     		ldr	r3, [r2, #4]
 3183 00aa 43F40043 		orr	r3, r3, #32768
 3184 00ae 5360     		str	r3, [r2, #4]
1552:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 3185              		.loc 1 1552 0
 3186 00b0 0323     		movs	r3, #3
 3187 00b2 00E0     		b	.L271
 3188              	.LVL295:
 3189              	.L274:
1565:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 3190              		.loc 1 1565 0
 3191 00b4 0223     		movs	r3, #2
 3192              	.LVL296:
 3193              	.L271:
1567:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
 3194              		.loc 1 1567 0
 3195 00b6 1846     		mov	r0, r3
 3196 00b8 38BD     		pop	{r3, r4, r5, pc}
 3197              	.LVL297:
 3198              	.L275:
1512:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }   
 3199              		.loc 1 1512 0
 3200 00ba 0123     		movs	r3, #1
 3201 00bc FBE7     		b	.L271
 3202              	.L276:
1515:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3203              		.loc 1 1515 0
 3204 00be 0223     		movs	r3, #2
 3205 00c0 F9E7     		b	.L271
 3206              	.L281:
 3207 00c2 00BF     		.align	2
 3208              	.L280:
 3209 00c4 00000000 		.word	I2C_DMASlaveReceiveCplt
 3210 00c8 00000000 		.word	I2C_DMAError
 3211              		.cfi_endproc
 3212              	.LFE153:
 3214              		.section	.text.HAL_I2C_Mem_Write,"ax",%progbits
 3215              		.align	1
 3216              		.global	HAL_I2C_Mem_Write
 3217              		.syntax unified
 3218              		.thumb
 3219              		.thumb_func
 3220              		.fpu fpv5-d16
 3222              	HAL_I2C_Mem_Write:
 3223              	.LFB154:
1581:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t Sizetmp = 0;
 3224              		.loc 1 1581 0
 3225              		.cfi_startproc
 3226              		@ args = 12, pretend = 0, frame = 0
 3227              		@ frame_needed = 0, uses_anonymous_args = 0
 3228              	.LVL298:
 3229 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 3230              		.cfi_def_cfa_offset 28
 3231              		.cfi_offset 4, -28
 3232              		.cfi_offset 5, -24
 3233              		.cfi_offset 6, -20
 3234              		.cfi_offset 7, -16
 3235              		.cfi_offset 8, -12
 3236              		.cfi_offset 9, -8
 3237              		.cfi_offset 14, -4
 3238 0004 83B0     		sub	sp, sp, #12
 3239              		.cfi_def_cfa_offset 40
 3240 0006 0A9E     		ldr	r6, [sp, #40]
 3241 0008 BDF82C40 		ldrh	r4, [sp, #44]
 3242              	.LVL299:
1587:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   { 
 3243              		.loc 1 1587 0
 3244 000c 90F84150 		ldrb	r5, [r0, #65]	@ zero_extendqisi2
 3245 0010 EDB2     		uxtb	r5, r5
 3246 0012 202D     		cmp	r5, #32
 3247 0014 40F0A480 		bne	.L293
1589:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3248              		.loc 1 1589 0
 3249 0018 B4FA84F5 		clz	r5, r4
 3250 001c 6D09     		lsrs	r5, r5, #5
 3251 001e 002E     		cmp	r6, #0
 3252 0020 08BF     		it	eq
 3253 0022 0125     		moveq	r5, #1
 3254 0024 002D     		cmp	r5, #0
 3255 0026 40F0A080 		bne	.L294
1594:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3256              		.loc 1 1594 0
 3257 002a 0568     		ldr	r5, [r0]
 3258 002c AD69     		ldr	r5, [r5, #24]
 3259 002e 15F4004F 		tst	r5, #32768
 3260 0032 40F09C80 		bne	.L295
1600:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3261              		.loc 1 1600 0
 3262 0036 90F84050 		ldrb	r5, [r0, #64]	@ zero_extendqisi2
 3263 003a 012D     		cmp	r5, #1
 3264 003c 00F09980 		beq	.L296
 3265 0040 8846     		mov	r8, r1
 3266 0042 0546     		mov	r5, r0
1600:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3267              		.loc 1 1600 0 is_stmt 0 discriminator 2
 3268 0044 0121     		movs	r1, #1
 3269              	.LVL300:
 3270 0046 80F84010 		strb	r1, [r0, #64]
1602:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
 3271              		.loc 1 1602 0 is_stmt 1 discriminator 2
 3272 004a 2121     		movs	r1, #33
 3273 004c 80F84110 		strb	r1, [r0, #65]
1603:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3274              		.loc 1 1603 0 discriminator 2
 3275 0050 0021     		movs	r1, #0
 3276 0052 4164     		str	r1, [r0, #68]
1606:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3277              		.loc 1 1606 0 discriminator 2
 3278 0054 0C99     		ldr	r1, [sp, #48]
 3279 0056 0091     		str	r1, [sp]
 3280 0058 4146     		mov	r1, r8
 3281 005a FFF7FEFF 		bl	I2C_RequestMemoryWrite
 3282              	.LVL301:
 3283 005e 60B1     		cbz	r0, .L284
1608:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 3284              		.loc 1 1608 0
 3285 0060 6B6C     		ldr	r3, [r5, #68]
 3286 0062 042B     		cmp	r3, #4
 3287 0064 04D1     		bne	.L285
1611:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
 3288              		.loc 1 1611 0
 3289 0066 0023     		movs	r3, #0
 3290 0068 85F84030 		strb	r3, [r5, #64]
1612:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 3291              		.loc 1 1612 0
 3292 006c 0123     		movs	r3, #1
 3293 006e 78E0     		b	.L283
 3294              	.L285:
1617:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
 3295              		.loc 1 1617 0
 3296 0070 0023     		movs	r3, #0
 3297 0072 85F84030 		strb	r3, [r5, #64]
1618:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 3298              		.loc 1 1618 0
 3299 0076 0323     		movs	r3, #3
 3300 0078 73E0     		b	.L283
 3301              	.L284:
1624:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3302              		.loc 1 1624 0
 3303 007a FF2C     		cmp	r4, #255
 3304 007c 0AD9     		bls	.L286
1626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Sizetmp = 255;
 3305              		.loc 1 1626 0
 3306 007e 0023     		movs	r3, #0
 3307 0080 0093     		str	r3, [sp]
 3308 0082 4FF08073 		mov	r3, #16777216
 3309 0086 FF22     		movs	r2, #255
 3310 0088 4146     		mov	r1, r8
 3311 008a 2846     		mov	r0, r5
 3312 008c FFF7FEFF 		bl	I2C_TransferConfig
 3313              	.LVL302:
1627:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 3314              		.loc 1 1627 0
 3315 0090 FF27     		movs	r7, #255
 3316 0092 1BE0     		b	.L291
 3317              	.LVL303:
 3318              	.L286:
1631:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Sizetmp = Size;
 3319              		.loc 1 1631 0
 3320 0094 0023     		movs	r3, #0
 3321 0096 0093     		str	r3, [sp]
 3322 0098 4FF00073 		mov	r3, #33554432
 3323 009c E2B2     		uxtb	r2, r4
 3324 009e 4146     		mov	r1, r8
 3325 00a0 2846     		mov	r0, r5
 3326 00a2 FFF7FEFF 		bl	I2C_TransferConfig
 3327              	.LVL304:
1632:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 3328              		.loc 1 1632 0
 3329 00a6 2746     		mov	r7, r4
 3330              	.LVL305:
 3331 00a8 10E0     		b	.L291
 3332              	.LVL306:
 3333              	.L303:
1640:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 3334              		.loc 1 1640 0
 3335 00aa 6B6C     		ldr	r3, [r5, #68]
 3336 00ac 042B     		cmp	r3, #4
 3337 00ae 62D1     		bne	.L297
1642:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 3338              		.loc 1 1642 0
 3339 00b0 0123     		movs	r3, #1
 3340 00b2 56E0     		b	.L283
 3341              	.LVL307:
 3342              	.L290:
1671:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           Sizetmp = Size;
 3343              		.loc 1 1671 0
 3344 00b4 0023     		movs	r3, #0
 3345 00b6 0093     		str	r3, [sp]
 3346 00b8 4FF00073 		mov	r3, #33554432
 3347 00bc E2B2     		uxtb	r2, r4
 3348 00be 4146     		mov	r1, r8
 3349 00c0 2846     		mov	r0, r5
 3350 00c2 FFF7FEFF 		bl	I2C_TransferConfig
 3351              	.LVL308:
1672:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 3352              		.loc 1 1672 0
 3353 00c6 2746     		mov	r7, r4
 3354              	.LVL309:
 3355              	.L289:
1676:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3356              		.loc 1 1676 0
 3357 00c8 5CB3     		cbz	r4, .L302
1651:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Sizetmp--;
 3358              		.loc 1 1651 0
 3359 00ca 4E46     		mov	r6, r9
 3360              	.LVL310:
 3361              	.L291:
1638:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 3362              		.loc 1 1638 0
 3363 00cc 0C99     		ldr	r1, [sp, #48]
 3364 00ce 2846     		mov	r0, r5
 3365 00d0 FFF7FEFF 		bl	I2C_WaitOnTXISFlagUntilTimeout
 3366              	.LVL311:
 3367 00d4 0028     		cmp	r0, #0
 3368 00d6 E8D1     		bne	.L303
1651:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Sizetmp--;
 3369              		.loc 1 1651 0
 3370 00d8 06F10109 		add	r9, r6, #1
 3371              	.LVL312:
 3372 00dc 2B68     		ldr	r3, [r5]
 3373 00de 3278     		ldrb	r2, [r6]	@ zero_extendqisi2
 3374 00e0 9A62     		str	r2, [r3, #40]
 3375              	.LVL313:
1653:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 3376              		.loc 1 1653 0
 3377 00e2 013C     		subs	r4, r4, #1
 3378              	.LVL314:
 3379 00e4 A4B2     		uxth	r4, r4
 3380              	.LVL315:
1655:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 3381              		.loc 1 1655 0
 3382 00e6 013F     		subs	r7, r7, #1
 3383              	.LVL316:
 3384 00e8 0CBF     		ite	eq
 3385 00ea 0123     		moveq	r3, #1
 3386 00ec 0023     		movne	r3, #0
 3387 00ee 002C     		cmp	r4, #0
 3388 00f0 08BF     		it	eq
 3389 00f2 0023     		moveq	r3, #0
 3390 00f4 002B     		cmp	r3, #0
 3391 00f6 E7D0     		beq	.L289
1658:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 3392              		.loc 1 1658 0
 3393 00f8 0C9B     		ldr	r3, [sp, #48]
 3394 00fa 0022     		movs	r2, #0
 3395 00fc 8021     		movs	r1, #128
 3396 00fe 2846     		mov	r0, r5
 3397 0100 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 3398              	.LVL317:
 3399 0104 0028     		cmp	r0, #0
 3400 0106 38D1     		bne	.L298
1664:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 3401              		.loc 1 1664 0
 3402 0108 FF2C     		cmp	r4, #255
 3403 010a D3D9     		bls	.L290
1666:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           Sizetmp = 255;
 3404              		.loc 1 1666 0
 3405 010c 0023     		movs	r3, #0
 3406 010e 0093     		str	r3, [sp]
 3407 0110 4FF08073 		mov	r3, #16777216
 3408 0114 FF22     		movs	r2, #255
 3409 0116 4146     		mov	r1, r8
 3410 0118 2846     		mov	r0, r5
 3411 011a FFF7FEFF 		bl	I2C_TransferConfig
 3412              	.LVL318:
1667:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 3413              		.loc 1 1667 0
 3414 011e FF27     		movs	r7, #255
 3415 0120 D2E7     		b	.L289
 3416              	.LVL319:
 3417              	.L302:
1680:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3418              		.loc 1 1680 0
 3419 0122 1921     		movs	r1, #25
 3420 0124 2846     		mov	r0, r5
 3421 0126 FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 3422              	.LVL320:
 3423 012a 0346     		mov	r3, r0
 3424 012c 20B1     		cbz	r0, .L292
1682:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 3425              		.loc 1 1682 0
 3426 012e 6B6C     		ldr	r3, [r5, #68]
 3427 0130 042B     		cmp	r3, #4
 3428 0132 24D1     		bne	.L300
1684:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 3429              		.loc 1 1684 0
 3430 0134 0123     		movs	r3, #1
 3431 0136 14E0     		b	.L283
 3432              	.L292:
1693:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   	
 3433              		.loc 1 1693 0
 3434 0138 2A68     		ldr	r2, [r5]
 3435 013a 2021     		movs	r1, #32
 3436 013c D161     		str	r1, [r2, #28]
1696:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3437              		.loc 1 1696 0
 3438 013e 2868     		ldr	r0, [r5]
 3439 0140 4268     		ldr	r2, [r0, #4]
 3440 0142 22F0FF72 		bic	r2, r2, #33423360
 3441 0146 22F48B32 		bic	r2, r2, #71168
 3442 014a 22F4FF72 		bic	r2, r2, #510
 3443 014e 22F00102 		bic	r2, r2, #1
 3444 0152 4260     		str	r2, [r0, #4]
1698:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3445              		.loc 1 1698 0
 3446 0154 85F84110 		strb	r1, [r5, #65]
1701:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3447              		.loc 1 1701 0
 3448 0158 0022     		movs	r2, #0
 3449 015a 85F84020 		strb	r2, [r5, #64]
1703:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 3450              		.loc 1 1703 0
 3451 015e 00E0     		b	.L283
 3452              	.LVL321:
 3453              	.L293:
1707:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 3454              		.loc 1 1707 0
 3455 0160 0223     		movs	r3, #2
 3456              	.LVL322:
 3457              	.L283:
1709:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 3458              		.loc 1 1709 0
 3459 0162 1846     		mov	r0, r3
 3460 0164 03B0     		add	sp, sp, #12
 3461              		.cfi_remember_state
 3462              		.cfi_def_cfa_offset 28
 3463              		@ sp needed
 3464 0166 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3465              	.LVL323:
 3466              	.L294:
 3467              		.cfi_restore_state
1591:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 3468              		.loc 1 1591 0
 3469 016a 0123     		movs	r3, #1
 3470              	.LVL324:
 3471 016c F9E7     		b	.L283
 3472              	.LVL325:
 3473              	.L295:
1596:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 3474              		.loc 1 1596 0
 3475 016e 0223     		movs	r3, #2
 3476              	.LVL326:
 3477 0170 F7E7     		b	.L283
 3478              	.LVL327:
 3479              	.L296:
1600:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3480              		.loc 1 1600 0
 3481 0172 0223     		movs	r3, #2
 3482              	.LVL328:
 3483 0174 F5E7     		b	.L283
 3484              	.LVL329:
 3485              	.L297:
1646:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 3486              		.loc 1 1646 0
 3487 0176 0323     		movs	r3, #3
 3488 0178 F3E7     		b	.L283
 3489              	.LVL330:
 3490              	.L298:
1660:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 3491              		.loc 1 1660 0
 3492 017a 0323     		movs	r3, #3
 3493 017c F1E7     		b	.L283
 3494              	.L300:
1688:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 3495              		.loc 1 1688 0
 3496 017e 0323     		movs	r3, #3
 3497 0180 EFE7     		b	.L283
 3498              		.cfi_endproc
 3499              	.LFE154:
 3501              		.section	.text.HAL_I2C_Mem_Read,"ax",%progbits
 3502              		.align	1
 3503              		.global	HAL_I2C_Mem_Read
 3504              		.syntax unified
 3505              		.thumb
 3506              		.thumb_func
 3507              		.fpu fpv5-d16
 3509              	HAL_I2C_Mem_Read:
 3510              	.LFB155:
1724:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t Sizetmp = 0;
 3511              		.loc 1 1724 0
 3512              		.cfi_startproc
 3513              		@ args = 12, pretend = 0, frame = 0
 3514              		@ frame_needed = 0, uses_anonymous_args = 0
 3515              	.LVL331:
 3516 0000 2DE9F043 		push	{r4, r5, r6, r7, r8, r9, lr}
 3517              		.cfi_def_cfa_offset 28
 3518              		.cfi_offset 4, -28
 3519              		.cfi_offset 5, -24
 3520              		.cfi_offset 6, -20
 3521              		.cfi_offset 7, -16
 3522              		.cfi_offset 8, -12
 3523              		.cfi_offset 9, -8
 3524              		.cfi_offset 14, -4
 3525 0004 83B0     		sub	sp, sp, #12
 3526              		.cfi_def_cfa_offset 40
 3527 0006 0A9E     		ldr	r6, [sp, #40]
 3528 0008 BDF82C40 		ldrh	r4, [sp, #44]
 3529              	.LVL332:
1730:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {    
 3530              		.loc 1 1730 0
 3531 000c 90F84150 		ldrb	r5, [r0, #65]	@ zero_extendqisi2
 3532 0010 EDB2     		uxtb	r5, r5
 3533 0012 202D     		cmp	r5, #32
 3534 0014 40F0A380 		bne	.L314
1732:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3535              		.loc 1 1732 0
 3536 0018 B4FA84F5 		clz	r5, r4
 3537 001c 6D09     		lsrs	r5, r5, #5
 3538 001e 002E     		cmp	r6, #0
 3539 0020 08BF     		it	eq
 3540 0022 0125     		moveq	r5, #1
 3541 0024 002D     		cmp	r5, #0
 3542 0026 40F09F80 		bne	.L315
1737:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3543              		.loc 1 1737 0
 3544 002a 0568     		ldr	r5, [r0]
 3545 002c AD69     		ldr	r5, [r5, #24]
 3546 002e 15F4004F 		tst	r5, #32768
 3547 0032 40F09B80 		bne	.L316
1743:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3548              		.loc 1 1743 0
 3549 0036 90F84050 		ldrb	r5, [r0, #64]	@ zero_extendqisi2
 3550 003a 012D     		cmp	r5, #1
 3551 003c 00F09880 		beq	.L317
 3552 0040 8846     		mov	r8, r1
 3553 0042 0546     		mov	r5, r0
1743:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3554              		.loc 1 1743 0 is_stmt 0 discriminator 2
 3555 0044 0121     		movs	r1, #1
 3556              	.LVL333:
 3557 0046 80F84010 		strb	r1, [r0, #64]
1745:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
 3558              		.loc 1 1745 0 is_stmt 1 discriminator 2
 3559 004a 2221     		movs	r1, #34
 3560 004c 80F84110 		strb	r1, [r0, #65]
1746:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3561              		.loc 1 1746 0 discriminator 2
 3562 0050 0021     		movs	r1, #0
 3563 0052 4164     		str	r1, [r0, #68]
1749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3564              		.loc 1 1749 0 discriminator 2
 3565 0054 0C99     		ldr	r1, [sp, #48]
 3566 0056 0091     		str	r1, [sp]
 3567 0058 4146     		mov	r1, r8
 3568 005a FFF7FEFF 		bl	I2C_RequestMemoryRead
 3569              	.LVL334:
 3570 005e 60B1     		cbz	r0, .L306
1751:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 3571              		.loc 1 1751 0
 3572 0060 6B6C     		ldr	r3, [r5, #68]
 3573 0062 042B     		cmp	r3, #4
 3574 0064 04D1     		bne	.L307
1754:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
 3575              		.loc 1 1754 0
 3576 0066 0023     		movs	r3, #0
 3577 0068 85F84030 		strb	r3, [r5, #64]
1755:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 3578              		.loc 1 1755 0
 3579 006c 0123     		movs	r3, #1
 3580 006e 77E0     		b	.L305
 3581              	.L307:
1760:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
 3582              		.loc 1 1760 0
 3583 0070 0023     		movs	r3, #0
 3584 0072 85F84030 		strb	r3, [r5, #64]
1761:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 3585              		.loc 1 1761 0
 3586 0076 0323     		movs	r3, #3
 3587 0078 72E0     		b	.L305
 3588              	.L306:
1768:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3589              		.loc 1 1768 0
 3590 007a FF2C     		cmp	r4, #255
 3591 007c 0BD9     		bls	.L308
1770:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Sizetmp = 255;
 3592              		.loc 1 1770 0
 3593 007e 4FF41053 		mov	r3, #9216
 3594 0082 0093     		str	r3, [sp]
 3595 0084 4FF08073 		mov	r3, #16777216
 3596 0088 FF22     		movs	r2, #255
 3597 008a 4146     		mov	r1, r8
 3598 008c 2846     		mov	r0, r5
 3599 008e FFF7FEFF 		bl	I2C_TransferConfig
 3600              	.LVL335:
1771:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 3601              		.loc 1 1771 0
 3602 0092 FF27     		movs	r7, #255
 3603 0094 17E0     		b	.L312
 3604              	.LVL336:
 3605              	.L308:
1775:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       Sizetmp = Size;
 3606              		.loc 1 1775 0
 3607 0096 4FF41053 		mov	r3, #9216
 3608 009a 0093     		str	r3, [sp]
 3609 009c 4FF00073 		mov	r3, #33554432
 3610 00a0 E2B2     		uxtb	r2, r4
 3611 00a2 4146     		mov	r1, r8
 3612 00a4 2846     		mov	r0, r5
 3613 00a6 FFF7FEFF 		bl	I2C_TransferConfig
 3614              	.LVL337:
1776:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 3615              		.loc 1 1776 0
 3616 00aa 2746     		mov	r7, r4
 3617              	.LVL338:
 3618 00ac 0BE0     		b	.L312
 3619              	.LVL339:
 3620              	.L311:
1809:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           Sizetmp = Size;
 3621              		.loc 1 1809 0
 3622 00ae 0023     		movs	r3, #0
 3623 00b0 0093     		str	r3, [sp]
 3624 00b2 4FF00073 		mov	r3, #33554432
 3625 00b6 E2B2     		uxtb	r2, r4
 3626 00b8 4146     		mov	r1, r8
 3627 00ba 2846     		mov	r0, r5
 3628 00bc FFF7FEFF 		bl	I2C_TransferConfig
 3629              	.LVL340:
1810:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 3630              		.loc 1 1810 0
 3631 00c0 2746     		mov	r7, r4
 3632              	.LVL341:
 3633              	.L310:
1814:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3634              		.loc 1 1814 0
 3635 00c2 6CB3     		cbz	r4, .L323
1788:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 3636              		.loc 1 1788 0
 3637 00c4 4E46     		mov	r6, r9
 3638              	.LVL342:
 3639              	.L312:
1782:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 3640              		.loc 1 1782 0
 3641 00c6 0C9B     		ldr	r3, [sp, #48]
 3642 00c8 0022     		movs	r2, #0
 3643 00ca 0421     		movs	r1, #4
 3644 00cc 2846     		mov	r0, r5
 3645 00ce FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 3646              	.LVL343:
 3647 00d2 0028     		cmp	r0, #0
 3648 00d4 4ED1     		bne	.L318
1788:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 3649              		.loc 1 1788 0
 3650 00d6 2B68     		ldr	r3, [r5]
 3651 00d8 5B6A     		ldr	r3, [r3, #36]
 3652 00da 06F10109 		add	r9, r6, #1
 3653              	.LVL344:
 3654 00de 3370     		strb	r3, [r6]
 3655              	.LVL345:
1792:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 3656              		.loc 1 1792 0
 3657 00e0 013C     		subs	r4, r4, #1
 3658              	.LVL346:
 3659 00e2 A4B2     		uxth	r4, r4
 3660              	.LVL347:
1794:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 3661              		.loc 1 1794 0
 3662 00e4 013F     		subs	r7, r7, #1
 3663              	.LVL348:
 3664 00e6 0CBF     		ite	eq
 3665 00e8 0123     		moveq	r3, #1
 3666 00ea 0023     		movne	r3, #0
 3667 00ec 002C     		cmp	r4, #0
 3668 00ee 08BF     		it	eq
 3669 00f0 0023     		moveq	r3, #0
 3670 00f2 002B     		cmp	r3, #0
 3671 00f4 E5D0     		beq	.L310
1797:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 3672              		.loc 1 1797 0
 3673 00f6 0C9B     		ldr	r3, [sp, #48]
 3674 00f8 0022     		movs	r2, #0
 3675 00fa 8021     		movs	r1, #128
 3676 00fc 2846     		mov	r0, r5
 3677 00fe FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 3678              	.LVL349:
 3679 0102 0028     		cmp	r0, #0
 3680 0104 38D1     		bne	.L319
1802:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 3681              		.loc 1 1802 0
 3682 0106 FF2C     		cmp	r4, #255
 3683 0108 D1D9     		bls	.L311
1804:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           Sizetmp = 255;
 3684              		.loc 1 1804 0
 3685 010a 0023     		movs	r3, #0
 3686 010c 0093     		str	r3, [sp]
 3687 010e 4FF08073 		mov	r3, #16777216
 3688 0112 FF22     		movs	r2, #255
 3689 0114 4146     		mov	r1, r8
 3690 0116 2846     		mov	r0, r5
 3691 0118 FFF7FEFF 		bl	I2C_TransferConfig
 3692              	.LVL350:
1805:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 3693              		.loc 1 1805 0
 3694 011c FF27     		movs	r7, #255
 3695 011e D0E7     		b	.L310
 3696              	.LVL351:
 3697              	.L323:
1818:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3698              		.loc 1 1818 0
 3699 0120 1921     		movs	r1, #25
 3700 0122 2846     		mov	r0, r5
 3701 0124 FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 3702              	.LVL352:
 3703 0128 0346     		mov	r3, r0
 3704 012a 20B1     		cbz	r0, .L313
1820:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 3705              		.loc 1 1820 0
 3706 012c 6B6C     		ldr	r3, [r5, #68]
 3707 012e 042B     		cmp	r3, #4
 3708 0130 24D1     		bne	.L321
1822:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 3709              		.loc 1 1822 0
 3710 0132 0123     		movs	r3, #1
 3711 0134 14E0     		b	.L305
 3712              	.L313:
1831:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   	
 3713              		.loc 1 1831 0
 3714 0136 2A68     		ldr	r2, [r5]
 3715 0138 2021     		movs	r1, #32
 3716 013a D161     		str	r1, [r2, #28]
1834:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3717              		.loc 1 1834 0
 3718 013c 2868     		ldr	r0, [r5]
 3719 013e 4268     		ldr	r2, [r0, #4]
 3720 0140 22F0FF72 		bic	r2, r2, #33423360
 3721 0144 22F48B32 		bic	r2, r2, #71168
 3722 0148 22F4FF72 		bic	r2, r2, #510
 3723 014c 22F00102 		bic	r2, r2, #1
 3724 0150 4260     		str	r2, [r0, #4]
1836:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3725              		.loc 1 1836 0
 3726 0152 85F84110 		strb	r1, [r5, #65]
1839:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3727              		.loc 1 1839 0
 3728 0156 0022     		movs	r2, #0
 3729 0158 85F84020 		strb	r2, [r5, #64]
1841:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 3730              		.loc 1 1841 0
 3731 015c 00E0     		b	.L305
 3732              	.LVL353:
 3733              	.L314:
1845:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 3734              		.loc 1 1845 0
 3735 015e 0223     		movs	r3, #2
 3736              	.LVL354:
 3737              	.L305:
1847:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
 3738              		.loc 1 1847 0
 3739 0160 1846     		mov	r0, r3
 3740 0162 03B0     		add	sp, sp, #12
 3741              		.cfi_remember_state
 3742              		.cfi_def_cfa_offset 28
 3743              		@ sp needed
 3744 0164 BDE8F083 		pop	{r4, r5, r6, r7, r8, r9, pc}
 3745              	.LVL355:
 3746              	.L315:
 3747              		.cfi_restore_state
1734:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 3748              		.loc 1 1734 0
 3749 0168 0123     		movs	r3, #1
 3750              	.LVL356:
 3751 016a F9E7     		b	.L305
 3752              	.LVL357:
 3753              	.L316:
1739:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 3754              		.loc 1 1739 0
 3755 016c 0223     		movs	r3, #2
 3756              	.LVL358:
 3757 016e F7E7     		b	.L305
 3758              	.LVL359:
 3759              	.L317:
1743:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3760              		.loc 1 1743 0
 3761 0170 0223     		movs	r3, #2
 3762              	.LVL360:
 3763 0172 F5E7     		b	.L305
 3764              	.LVL361:
 3765              	.L318:
1784:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 3766              		.loc 1 1784 0
 3767 0174 0323     		movs	r3, #3
 3768 0176 F3E7     		b	.L305
 3769              	.LVL362:
 3770              	.L319:
1799:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 3771              		.loc 1 1799 0
 3772 0178 0323     		movs	r3, #3
 3773 017a F1E7     		b	.L305
 3774              	.L321:
1826:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 3775              		.loc 1 1826 0
 3776 017c 0323     		movs	r3, #3
 3777 017e EFE7     		b	.L305
 3778              		.cfi_endproc
 3779              	.LFE155:
 3781              		.section	.text.HAL_I2C_Mem_Write_IT,"ax",%progbits
 3782              		.align	1
 3783              		.global	HAL_I2C_Mem_Write_IT
 3784              		.syntax unified
 3785              		.thumb
 3786              		.thumb_func
 3787              		.fpu fpv5-d16
 3789              	HAL_I2C_Mem_Write_IT:
 3790              	.LFB156:
1860:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check the parameters */
 3791              		.loc 1 1860 0
 3792              		.cfi_startproc
 3793              		@ args = 8, pretend = 0, frame = 0
 3794              		@ frame_needed = 0, uses_anonymous_args = 0
 3795              	.LVL363:
 3796 0000 70B5     		push	{r4, r5, r6, lr}
 3797              		.cfi_def_cfa_offset 16
 3798              		.cfi_offset 4, -16
 3799              		.cfi_offset 5, -12
 3800              		.cfi_offset 6, -8
 3801              		.cfi_offset 14, -4
 3802 0002 82B0     		sub	sp, sp, #8
 3803              		.cfi_def_cfa_offset 24
 3804 0004 BDF81C50 		ldrh	r5, [sp, #28]
1864:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 3805              		.loc 1 1864 0
 3806 0008 90F84140 		ldrb	r4, [r0, #65]	@ zero_extendqisi2
 3807 000c E4B2     		uxtb	r4, r4
 3808 000e 202C     		cmp	r4, #32
 3809 0010 5AD1     		bne	.L332
1866:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3810              		.loc 1 1866 0
 3811 0012 B5FA85F4 		clz	r4, r5
 3812 0016 6409     		lsrs	r4, r4, #5
 3813 0018 069E     		ldr	r6, [sp, #24]
 3814 001a 002E     		cmp	r6, #0
 3815 001c 08BF     		it	eq
 3816 001e 0124     		moveq	r4, #1
 3817 0020 002C     		cmp	r4, #0
 3818 0022 55D1     		bne	.L333
1871:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3819              		.loc 1 1871 0
 3820 0024 0468     		ldr	r4, [r0]
 3821 0026 A469     		ldr	r4, [r4, #24]
 3822 0028 14F4004F 		tst	r4, #32768
 3823 002c 52D1     		bne	.L334
1877:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3824              		.loc 1 1877 0
 3825 002e 90F84040 		ldrb	r4, [r0, #64]	@ zero_extendqisi2
 3826 0032 012C     		cmp	r4, #1
 3827 0034 50D0     		beq	.L335
1877:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3828              		.loc 1 1877 0 is_stmt 0 discriminator 2
 3829 0036 0124     		movs	r4, #1
 3830 0038 80F84040 		strb	r4, [r0, #64]
1879:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
 3831              		.loc 1 1879 0 is_stmt 1 discriminator 2
 3832 003c 2124     		movs	r4, #33
 3833 003e 80F84140 		strb	r4, [r0, #65]
1880:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3834              		.loc 1 1880 0 discriminator 2
 3835 0042 0024     		movs	r4, #0
 3836 0044 4464     		str	r4, [r0, #68]
1882:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
 3837              		.loc 1 1882 0 discriminator 2
 3838 0046 4662     		str	r6, [r0, #36]
1883:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
 3839              		.loc 1 1883 0 discriminator 2
 3840 0048 4585     		strh	r5, [r0, #42]	@ movhi
1884:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3841              		.loc 1 1884 0 discriminator 2
 3842 004a FF2D     		cmp	r5, #255
 3843 004c 12D9     		bls	.L326
1886:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 3844              		.loc 1 1886 0
 3845 004e FF24     		movs	r4, #255
 3846 0050 0485     		strh	r4, [r0, #40]	@ movhi
 3847              	.L327:
 3848 0052 0E46     		mov	r6, r1
 3849 0054 0546     		mov	r5, r0
1894:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3850              		.loc 1 1894 0
 3851 0056 1921     		movs	r1, #25
 3852              	.LVL364:
 3853 0058 0091     		str	r1, [sp]
 3854 005a 3146     		mov	r1, r6
 3855 005c FFF7FEFF 		bl	I2C_RequestMemoryWrite
 3856              	.LVL365:
 3857 0060 0446     		mov	r4, r0
 3858 0062 70B1     		cbz	r0, .L328
1896:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 3859              		.loc 1 1896 0
 3860 0064 6B6C     		ldr	r3, [r5, #68]
 3861 0066 042B     		cmp	r3, #4
 3862 0068 06D1     		bne	.L329
1899:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
 3863              		.loc 1 1899 0
 3864 006a 0023     		movs	r3, #0
 3865 006c 85F84030 		strb	r3, [r5, #64]
1900:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 3866              		.loc 1 1900 0
 3867 0070 0124     		movs	r4, #1
 3868 0072 2AE0     		b	.L325
 3869              	.LVL366:
 3870              	.L326:
1890:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 3871              		.loc 1 1890 0
 3872 0074 0585     		strh	r5, [r0, #40]	@ movhi
 3873 0076 ECE7     		b	.L327
 3874              	.LVL367:
 3875              	.L329:
1905:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
 3876              		.loc 1 1905 0
 3877 0078 0023     		movs	r3, #0
 3878 007a 85F84030 		strb	r3, [r5, #64]
1906:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 3879              		.loc 1 1906 0
 3880 007e 0324     		movs	r4, #3
 3881 0080 23E0     		b	.L325
 3882              	.L328:
1912:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3883              		.loc 1 1912 0
 3884 0082 2A8D     		ldrh	r2, [r5, #40]
 3885 0084 FF2A     		cmp	r2, #255
 3886 0086 03D1     		bne	.L330
1912:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3887              		.loc 1 1912 0 is_stmt 0 discriminator 1
 3888 0088 6B8D     		ldrh	r3, [r5, #42]
 3889 008a 9BB2     		uxth	r3, r3
 3890 008c 9A42     		cmp	r2, r3
 3891 008e 11D3     		bcc	.L337
 3892              	.L330:
1918:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }  
 3893              		.loc 1 1918 0 is_stmt 1
 3894 0090 0023     		movs	r3, #0
 3895 0092 0093     		str	r3, [sp]
 3896 0094 4FF00073 		mov	r3, #33554432
 3897 0098 D2B2     		uxtb	r2, r2
 3898 009a 3146     		mov	r1, r6
 3899 009c 2846     		mov	r0, r5
 3900 009e FFF7FEFF 		bl	I2C_TransferConfig
 3901              	.LVL368:
 3902              	.L331:
1922:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3903              		.loc 1 1922 0
 3904 00a2 0023     		movs	r3, #0
 3905 00a4 85F84030 		strb	r3, [r5, #64]
1931:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3906              		.loc 1 1931 0
 3907 00a8 2A68     		ldr	r2, [r5]
 3908 00aa 1368     		ldr	r3, [r2]
 3909 00ac 43F0F203 		orr	r3, r3, #242
 3910 00b0 1360     		str	r3, [r2]
1933:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 3911              		.loc 1 1933 0
 3912 00b2 0AE0     		b	.L325
 3913              	.L337:
1914:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 3914              		.loc 1 1914 0
 3915 00b4 0023     		movs	r3, #0
 3916 00b6 0093     		str	r3, [sp]
 3917 00b8 4FF08073 		mov	r3, #16777216
 3918 00bc D2B2     		uxtb	r2, r2
 3919 00be 3146     		mov	r1, r6
 3920 00c0 2846     		mov	r0, r5
 3921 00c2 FFF7FEFF 		bl	I2C_TransferConfig
 3922              	.LVL369:
 3923 00c6 ECE7     		b	.L331
 3924              	.LVL370:
 3925              	.L332:
1937:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 3926              		.loc 1 1937 0
 3927 00c8 0224     		movs	r4, #2
 3928              	.LVL371:
 3929              	.L325:
1939:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 3930              		.loc 1 1939 0
 3931 00ca 2046     		mov	r0, r4
 3932 00cc 02B0     		add	sp, sp, #8
 3933              		.cfi_remember_state
 3934              		.cfi_def_cfa_offset 16
 3935              		@ sp needed
 3936 00ce 70BD     		pop	{r4, r5, r6, pc}
 3937              	.LVL372:
 3938              	.L333:
 3939              		.cfi_restore_state
1868:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 3940              		.loc 1 1868 0
 3941 00d0 0124     		movs	r4, #1
 3942 00d2 FAE7     		b	.L325
 3943              	.L334:
1873:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 3944              		.loc 1 1873 0
 3945 00d4 0224     		movs	r4, #2
 3946 00d6 F8E7     		b	.L325
 3947              	.L335:
1877:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3948              		.loc 1 1877 0
 3949 00d8 0224     		movs	r4, #2
 3950 00da F6E7     		b	.L325
 3951              		.cfi_endproc
 3952              	.LFE156:
 3954              		.section	.text.HAL_I2C_Mem_Read_IT,"ax",%progbits
 3955              		.align	1
 3956              		.global	HAL_I2C_Mem_Read_IT
 3957              		.syntax unified
 3958              		.thumb
 3959              		.thumb_func
 3960              		.fpu fpv5-d16
 3962              	HAL_I2C_Mem_Read_IT:
 3963              	.LFB157:
1953:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check the parameters */
 3964              		.loc 1 1953 0
 3965              		.cfi_startproc
 3966              		@ args = 8, pretend = 0, frame = 0
 3967              		@ frame_needed = 0, uses_anonymous_args = 0
 3968              	.LVL373:
 3969 0000 70B5     		push	{r4, r5, r6, lr}
 3970              		.cfi_def_cfa_offset 16
 3971              		.cfi_offset 4, -16
 3972              		.cfi_offset 5, -12
 3973              		.cfi_offset 6, -8
 3974              		.cfi_offset 14, -4
 3975 0002 82B0     		sub	sp, sp, #8
 3976              		.cfi_def_cfa_offset 24
 3977 0004 BDF81C50 		ldrh	r5, [sp, #28]
1957:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 3978              		.loc 1 1957 0
 3979 0008 90F84140 		ldrb	r4, [r0, #65]	@ zero_extendqisi2
 3980 000c E4B2     		uxtb	r4, r4
 3981 000e 202C     		cmp	r4, #32
 3982 0010 5AD1     		bne	.L346
1959:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3983              		.loc 1 1959 0
 3984 0012 B5FA85F4 		clz	r4, r5
 3985 0016 6409     		lsrs	r4, r4, #5
 3986 0018 069E     		ldr	r6, [sp, #24]
 3987 001a 002E     		cmp	r6, #0
 3988 001c 08BF     		it	eq
 3989 001e 0124     		moveq	r4, #1
 3990 0020 002C     		cmp	r4, #0
 3991 0022 55D1     		bne	.L347
1964:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 3992              		.loc 1 1964 0
 3993 0024 0468     		ldr	r4, [r0]
 3994 0026 A469     		ldr	r4, [r4, #24]
 3995 0028 14F4004F 		tst	r4, #32768
 3996 002c 52D1     		bne	.L348
1970:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 3997              		.loc 1 1970 0
 3998 002e 90F84040 		ldrb	r4, [r0, #64]	@ zero_extendqisi2
 3999 0032 012C     		cmp	r4, #1
 4000 0034 50D0     		beq	.L349
1970:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4001              		.loc 1 1970 0 is_stmt 0 discriminator 2
 4002 0036 0124     		movs	r4, #1
 4003 0038 80F84040 		strb	r4, [r0, #64]
1972:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4004              		.loc 1 1972 0 is_stmt 1 discriminator 2
 4005 003c 2224     		movs	r4, #34
 4006 003e 80F84140 		strb	r4, [r0, #65]
1974:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
 4007              		.loc 1 1974 0 discriminator 2
 4008 0042 4662     		str	r6, [r0, #36]
1975:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
 4009              		.loc 1 1975 0 discriminator 2
 4010 0044 4585     		strh	r5, [r0, #42]	@ movhi
1976:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 4011              		.loc 1 1976 0 discriminator 2
 4012 0046 FF2D     		cmp	r5, #255
 4013 0048 12D9     		bls	.L340
1978:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4014              		.loc 1 1978 0
 4015 004a FF24     		movs	r4, #255
 4016 004c 0485     		strh	r4, [r0, #40]	@ movhi
 4017              	.L341:
 4018 004e 0E46     		mov	r6, r1
 4019 0050 0546     		mov	r5, r0
1986:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 4020              		.loc 1 1986 0
 4021 0052 1921     		movs	r1, #25
 4022              	.LVL374:
 4023 0054 0091     		str	r1, [sp]
 4024 0056 3146     		mov	r1, r6
 4025 0058 FFF7FEFF 		bl	I2C_RequestMemoryRead
 4026              	.LVL375:
 4027 005c 0446     		mov	r4, r0
 4028 005e 70B1     		cbz	r0, .L342
1988:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 4029              		.loc 1 1988 0
 4030 0060 6B6C     		ldr	r3, [r5, #68]
 4031 0062 042B     		cmp	r3, #4
 4032 0064 06D1     		bne	.L343
1991:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
 4033              		.loc 1 1991 0
 4034 0066 0023     		movs	r3, #0
 4035 0068 85F84030 		strb	r3, [r5, #64]
1992:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 4036              		.loc 1 1992 0
 4037 006c 0124     		movs	r4, #1
 4038 006e 2CE0     		b	.L339
 4039              	.LVL376:
 4040              	.L340:
1982:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4041              		.loc 1 1982 0
 4042 0070 0585     		strh	r5, [r0, #40]	@ movhi
 4043 0072 ECE7     		b	.L341
 4044              	.LVL377:
 4045              	.L343:
1997:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
 4046              		.loc 1 1997 0
 4047 0074 0023     		movs	r3, #0
 4048 0076 85F84030 		strb	r3, [r5, #64]
1998:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 4049              		.loc 1 1998 0
 4050 007a 0324     		movs	r4, #3
 4051 007c 25E0     		b	.L339
 4052              	.L342:
2004:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 4053              		.loc 1 2004 0
 4054 007e 2A8D     		ldrh	r2, [r5, #40]
 4055 0080 FF2A     		cmp	r2, #255
 4056 0082 03D1     		bne	.L344
2004:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 4057              		.loc 1 2004 0 is_stmt 0 discriminator 1
 4058 0084 6B8D     		ldrh	r3, [r5, #42]
 4059 0086 9BB2     		uxth	r3, r3
 4060 0088 9A42     		cmp	r2, r3
 4061 008a 12D3     		bcc	.L351
 4062              	.L344:
2010:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4063              		.loc 1 2010 0 is_stmt 1
 4064 008c 4FF41053 		mov	r3, #9216
 4065 0090 0093     		str	r3, [sp]
 4066 0092 4FF00073 		mov	r3, #33554432
 4067 0096 D2B2     		uxtb	r2, r2
 4068 0098 3146     		mov	r1, r6
 4069 009a 2846     		mov	r0, r5
 4070 009c FFF7FEFF 		bl	I2C_TransferConfig
 4071              	.LVL378:
 4072              	.L345:
2014:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4073              		.loc 1 2014 0
 4074 00a0 0023     		movs	r3, #0
 4075 00a2 85F84030 		strb	r3, [r5, #64]
2023:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4076              		.loc 1 2023 0
 4077 00a6 2A68     		ldr	r2, [r5]
 4078 00a8 1368     		ldr	r3, [r2]
 4079 00aa 43F0F403 		orr	r3, r3, #244
 4080 00ae 1360     		str	r3, [r2]
2025:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 4081              		.loc 1 2025 0
 4082 00b0 0BE0     		b	.L339
 4083              	.L351:
2006:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4084              		.loc 1 2006 0
 4085 00b2 4FF41053 		mov	r3, #9216
 4086 00b6 0093     		str	r3, [sp]
 4087 00b8 4FF08073 		mov	r3, #16777216
 4088 00bc D2B2     		uxtb	r2, r2
 4089 00be 3146     		mov	r1, r6
 4090 00c0 2846     		mov	r0, r5
 4091 00c2 FFF7FEFF 		bl	I2C_TransferConfig
 4092              	.LVL379:
 4093 00c6 EBE7     		b	.L345
 4094              	.LVL380:
 4095              	.L346:
2029:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }   
 4096              		.loc 1 2029 0
 4097 00c8 0224     		movs	r4, #2
 4098              	.LVL381:
 4099              	.L339:
2031:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
 4100              		.loc 1 2031 0
 4101 00ca 2046     		mov	r0, r4
 4102 00cc 02B0     		add	sp, sp, #8
 4103              		.cfi_remember_state
 4104              		.cfi_def_cfa_offset 16
 4105              		@ sp needed
 4106 00ce 70BD     		pop	{r4, r5, r6, pc}
 4107              	.LVL382:
 4108              	.L347:
 4109              		.cfi_restore_state
1961:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4110              		.loc 1 1961 0
 4111 00d0 0124     		movs	r4, #1
 4112 00d2 FAE7     		b	.L339
 4113              	.L348:
1966:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4114              		.loc 1 1966 0
 4115 00d4 0224     		movs	r4, #2
 4116 00d6 F8E7     		b	.L339
 4117              	.L349:
1970:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4118              		.loc 1 1970 0
 4119 00d8 0224     		movs	r4, #2
 4120 00da F6E7     		b	.L339
 4121              		.cfi_endproc
 4122              	.LFE157:
 4124              		.section	.text.HAL_I2C_Mem_Write_DMA,"ax",%progbits
 4125              		.align	1
 4126              		.global	HAL_I2C_Mem_Write_DMA
 4127              		.syntax unified
 4128              		.thumb
 4129              		.thumb_func
 4130              		.fpu fpv5-d16
 4132              	HAL_I2C_Mem_Write_DMA:
 4133              	.LFB158:
2044:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check the parameters */
 4134              		.loc 1 2044 0
 4135              		.cfi_startproc
 4136              		@ args = 8, pretend = 0, frame = 0
 4137              		@ frame_needed = 0, uses_anonymous_args = 0
 4138              	.LVL383:
 4139 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 4140              		.cfi_def_cfa_offset 20
 4141              		.cfi_offset 4, -20
 4142              		.cfi_offset 5, -16
 4143              		.cfi_offset 6, -12
 4144              		.cfi_offset 7, -8
 4145              		.cfi_offset 14, -4
 4146 0002 83B0     		sub	sp, sp, #12
 4147              		.cfi_def_cfa_offset 32
 4148 0004 BDF82450 		ldrh	r5, [sp, #36]
2048:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 4149              		.loc 1 2048 0
 4150 0008 90F84140 		ldrb	r4, [r0, #65]	@ zero_extendqisi2
 4151 000c E4B2     		uxtb	r4, r4
 4152 000e 202C     		cmp	r4, #32
 4153 0010 76D1     		bne	.L361
2050:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 4154              		.loc 1 2050 0
 4155 0012 B5FA85F4 		clz	r4, r5
 4156 0016 6409     		lsrs	r4, r4, #5
 4157 0018 089E     		ldr	r6, [sp, #32]
 4158 001a 002E     		cmp	r6, #0
 4159 001c 08BF     		it	eq
 4160 001e 0124     		moveq	r4, #1
 4161 0020 002C     		cmp	r4, #0
 4162 0022 71D1     		bne	.L362
2055:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 4163              		.loc 1 2055 0
 4164 0024 0468     		ldr	r4, [r0]
 4165 0026 A469     		ldr	r4, [r4, #24]
 4166 0028 14F4004F 		tst	r4, #32768
 4167 002c 6ED1     		bne	.L363
2061:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4168              		.loc 1 2061 0
 4169 002e 90F84040 		ldrb	r4, [r0, #64]	@ zero_extendqisi2
 4170 0032 012C     		cmp	r4, #1
 4171 0034 6CD0     		beq	.L364
2061:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4172              		.loc 1 2061 0 is_stmt 0 discriminator 2
 4173 0036 0124     		movs	r4, #1
 4174 0038 80F84040 		strb	r4, [r0, #64]
2063:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
 4175              		.loc 1 2063 0 is_stmt 1 discriminator 2
 4176 003c 2124     		movs	r4, #33
 4177 003e 80F84140 		strb	r4, [r0, #65]
2064:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4178              		.loc 1 2064 0 discriminator 2
 4179 0042 0024     		movs	r4, #0
 4180 0044 4464     		str	r4, [r0, #68]
2066:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
 4181              		.loc 1 2066 0 discriminator 2
 4182 0046 4662     		str	r6, [r0, #36]
2067:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
 4183              		.loc 1 2067 0 discriminator 2
 4184 0048 4585     		strh	r5, [r0, #42]	@ movhi
2068:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 4185              		.loc 1 2068 0 discriminator 2
 4186 004a FF2D     		cmp	r5, #255
 4187 004c 23D9     		bls	.L354
2070:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4188              		.loc 1 2070 0
 4189 004e FF24     		movs	r4, #255
 4190 0050 0485     		strh	r4, [r0, #40]	@ movhi
 4191              	.L355:
 4192 0052 1E46     		mov	r6, r3
 4193 0054 1546     		mov	r5, r2
 4194 0056 0F46     		mov	r7, r1
 4195 0058 0446     		mov	r4, r0
2078:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4196              		.loc 1 2078 0
 4197 005a 836B     		ldr	r3, [r0, #56]
 4198              	.LVL384:
 4199 005c 2E4A     		ldr	r2, .L368
 4200              	.LVL385:
 4201 005e DA63     		str	r2, [r3, #60]
2081:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4202              		.loc 1 2081 0
 4203 0060 836B     		ldr	r3, [r0, #56]
 4204 0062 2E4A     		ldr	r2, .L368+4
 4205 0064 DA64     		str	r2, [r3, #76]
2084:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4206              		.loc 1 2084 0
 4207 0066 0268     		ldr	r2, [r0]
 4208 0068 038D     		ldrh	r3, [r0, #40]
 4209 006a 2832     		adds	r2, r2, #40
 4210 006c 0899     		ldr	r1, [sp, #32]
 4211              	.LVL386:
 4212 006e 806B     		ldr	r0, [r0, #56]
 4213              	.LVL387:
 4214 0070 FFF7FEFF 		bl	HAL_DMA_Start_IT
 4215              	.LVL388:
2087:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 4216              		.loc 1 2087 0
 4217 0074 1923     		movs	r3, #25
 4218 0076 0093     		str	r3, [sp]
 4219 0078 3346     		mov	r3, r6
 4220 007a 2A46     		mov	r2, r5
 4221 007c 3946     		mov	r1, r7
 4222 007e 2046     		mov	r0, r4
 4223 0080 FFF7FEFF 		bl	I2C_RequestMemoryWrite
 4224              	.LVL389:
 4225 0084 70B1     		cbz	r0, .L356
2089:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 4226              		.loc 1 2089 0
 4227 0086 636C     		ldr	r3, [r4, #68]
 4228 0088 042B     		cmp	r3, #4
 4229 008a 06D1     		bne	.L357
2092:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
 4230              		.loc 1 2092 0
 4231 008c 0023     		movs	r3, #0
 4232 008e 84F84030 		strb	r3, [r4, #64]
2093:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 4233              		.loc 1 2093 0
 4234 0092 0123     		movs	r3, #1
 4235 0094 35E0     		b	.L353
 4236              	.LVL390:
 4237              	.L354:
2074:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4238              		.loc 1 2074 0
 4239 0096 0585     		strh	r5, [r0, #40]	@ movhi
 4240 0098 DBE7     		b	.L355
 4241              	.LVL391:
 4242              	.L357:
2098:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
 4243              		.loc 1 2098 0
 4244 009a 0023     		movs	r3, #0
 4245 009c 84F84030 		strb	r3, [r4, #64]
2099:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 4246              		.loc 1 2099 0
 4247 00a0 0323     		movs	r3, #3
 4248 00a2 2EE0     		b	.L353
 4249              	.L356:
2105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 4250              		.loc 1 2105 0
 4251 00a4 228D     		ldrh	r2, [r4, #40]
 4252 00a6 FF2A     		cmp	r2, #255
 4253 00a8 03D1     		bne	.L358
2105:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 4254              		.loc 1 2105 0 is_stmt 0 discriminator 1
 4255 00aa 638D     		ldrh	r3, [r4, #42]
 4256 00ac 9BB2     		uxth	r3, r3
 4257 00ae 9A42     		cmp	r2, r3
 4258 00b0 13D3     		bcc	.L367
 4259              	.L358:
2111:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4260              		.loc 1 2111 0 is_stmt 1
 4261 00b2 0023     		movs	r3, #0
 4262 00b4 0093     		str	r3, [sp]
 4263 00b6 4FF00073 		mov	r3, #33554432
 4264 00ba D2B2     		uxtb	r2, r2
 4265 00bc 3946     		mov	r1, r7
 4266 00be 2046     		mov	r0, r4
 4267 00c0 FFF7FEFF 		bl	I2C_TransferConfig
 4268              	.LVL392:
 4269              	.L359:
2115:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 4270              		.loc 1 2115 0
 4271 00c4 1921     		movs	r1, #25
 4272 00c6 2046     		mov	r0, r4
 4273 00c8 FFF7FEFF 		bl	I2C_WaitOnTXISFlagUntilTimeout
 4274              	.LVL393:
 4275 00cc 0346     		mov	r3, r0
 4276 00ce 70B1     		cbz	r0, .L360
2117:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 4277              		.loc 1 2117 0
 4278 00d0 636C     		ldr	r3, [r4, #68]
 4279 00d2 042B     		cmp	r3, #4
 4280 00d4 1ED1     		bne	.L365
2119:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 4281              		.loc 1 2119 0
 4282 00d6 0123     		movs	r3, #1
 4283 00d8 13E0     		b	.L353
 4284              	.L367:
2107:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4285              		.loc 1 2107 0
 4286 00da 0023     		movs	r3, #0
 4287 00dc 0093     		str	r3, [sp]
 4288 00de 4FF08073 		mov	r3, #16777216
 4289 00e2 D2B2     		uxtb	r2, r2
 4290 00e4 3946     		mov	r1, r7
 4291 00e6 2046     		mov	r0, r4
 4292 00e8 FFF7FEFF 		bl	I2C_TransferConfig
 4293              	.LVL394:
 4294 00ec EAE7     		b	.L359
 4295              	.L360:
2128:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4296              		.loc 1 2128 0
 4297 00ee 2168     		ldr	r1, [r4]
 4298 00f0 0A68     		ldr	r2, [r1]
 4299 00f2 42F48042 		orr	r2, r2, #16384
 4300 00f6 0A60     		str	r2, [r1]
2131:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4301              		.loc 1 2131 0
 4302 00f8 0022     		movs	r2, #0
 4303 00fa 84F84020 		strb	r2, [r4, #64]
2133:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 4304              		.loc 1 2133 0
 4305 00fe 00E0     		b	.L353
 4306              	.LVL395:
 4307              	.L361:
2137:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 4308              		.loc 1 2137 0
 4309 0100 0223     		movs	r3, #2
 4310              	.LVL396:
 4311              	.L353:
2139:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 4312              		.loc 1 2139 0
 4313 0102 1846     		mov	r0, r3
 4314 0104 03B0     		add	sp, sp, #12
 4315              		.cfi_remember_state
 4316              		.cfi_def_cfa_offset 20
 4317              		@ sp needed
 4318 0106 F0BD     		pop	{r4, r5, r6, r7, pc}
 4319              	.LVL397:
 4320              	.L362:
 4321              		.cfi_restore_state
2052:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4322              		.loc 1 2052 0
 4323 0108 0123     		movs	r3, #1
 4324              	.LVL398:
 4325 010a FAE7     		b	.L353
 4326              	.LVL399:
 4327              	.L363:
2057:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4328              		.loc 1 2057 0
 4329 010c 0223     		movs	r3, #2
 4330              	.LVL400:
 4331 010e F8E7     		b	.L353
 4332              	.LVL401:
 4333              	.L364:
2061:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4334              		.loc 1 2061 0
 4335 0110 0223     		movs	r3, #2
 4336              	.LVL402:
 4337 0112 F6E7     		b	.L353
 4338              	.LVL403:
 4339              	.L365:
2123:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 4340              		.loc 1 2123 0
 4341 0114 0323     		movs	r3, #3
 4342 0116 F4E7     		b	.L353
 4343              	.L369:
 4344              		.align	2
 4345              	.L368:
 4346 0118 00000000 		.word	I2C_DMAMemTransmitCplt
 4347 011c 00000000 		.word	I2C_DMAError
 4348              		.cfi_endproc
 4349              	.LFE158:
 4351              		.section	.text.HAL_I2C_Mem_Read_DMA,"ax",%progbits
 4352              		.align	1
 4353              		.global	HAL_I2C_Mem_Read_DMA
 4354              		.syntax unified
 4355              		.thumb
 4356              		.thumb_func
 4357              		.fpu fpv5-d16
 4359              	HAL_I2C_Mem_Read_DMA:
 4360              	.LFB159:
2153:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Check the parameters */
 4361              		.loc 1 2153 0
 4362              		.cfi_startproc
 4363              		@ args = 8, pretend = 0, frame = 0
 4364              		@ frame_needed = 0, uses_anonymous_args = 0
 4365              	.LVL404:
 4366 0000 F0B5     		push	{r4, r5, r6, r7, lr}
 4367              		.cfi_def_cfa_offset 20
 4368              		.cfi_offset 4, -20
 4369              		.cfi_offset 5, -16
 4370              		.cfi_offset 6, -12
 4371              		.cfi_offset 7, -8
 4372              		.cfi_offset 14, -4
 4373 0002 83B0     		sub	sp, sp, #12
 4374              		.cfi_def_cfa_offset 32
 4375 0004 BDF82450 		ldrh	r5, [sp, #36]
2157:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 4376              		.loc 1 2157 0
 4377 0008 90F84140 		ldrb	r4, [r0, #65]	@ zero_extendqisi2
 4378 000c E4B2     		uxtb	r4, r4
 4379 000e 202C     		cmp	r4, #32
 4380 0010 73D1     		bne	.L378
2159:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 4381              		.loc 1 2159 0
 4382 0012 B5FA85F4 		clz	r4, r5
 4383 0016 6409     		lsrs	r4, r4, #5
 4384 0018 089E     		ldr	r6, [sp, #32]
 4385 001a 002E     		cmp	r6, #0
 4386 001c 08BF     		it	eq
 4387 001e 0124     		moveq	r4, #1
 4388 0020 002C     		cmp	r4, #0
 4389 0022 6ED1     		bne	.L379
2164:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 4390              		.loc 1 2164 0
 4391 0024 0468     		ldr	r4, [r0]
 4392 0026 A469     		ldr	r4, [r4, #24]
 4393 0028 14F4004F 		tst	r4, #32768
 4394 002c 6BD1     		bne	.L380
2170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4395              		.loc 1 2170 0
 4396 002e 90F84040 		ldrb	r4, [r0, #64]	@ zero_extendqisi2
 4397 0032 012C     		cmp	r4, #1
 4398 0034 69D0     		beq	.L381
2170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4399              		.loc 1 2170 0 is_stmt 0 discriminator 2
 4400 0036 0124     		movs	r4, #1
 4401 0038 80F84040 		strb	r4, [r0, #64]
2172:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4402              		.loc 1 2172 0 is_stmt 1 discriminator 2
 4403 003c 2224     		movs	r4, #34
 4404 003e 80F84140 		strb	r4, [r0, #65]
2174:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount = Size;
 4405              		.loc 1 2174 0 discriminator 2
 4406 0042 4662     		str	r6, [r0, #36]
2175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     if(Size > 255)
 4407              		.loc 1 2175 0 discriminator 2
 4408 0044 4585     		strh	r5, [r0, #42]	@ movhi
2176:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 4409              		.loc 1 2176 0 discriminator 2
 4410 0046 FF2D     		cmp	r5, #255
 4411 0048 23D9     		bls	.L372
2178:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4412              		.loc 1 2178 0
 4413 004a FF24     		movs	r4, #255
 4414 004c 0485     		strh	r4, [r0, #40]	@ movhi
 4415              	.L373:
 4416 004e 1E46     		mov	r6, r3
 4417 0050 1546     		mov	r5, r2
 4418 0052 0F46     		mov	r7, r1
 4419 0054 0446     		mov	r4, r0
2186:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4420              		.loc 1 2186 0
 4421 0056 C36B     		ldr	r3, [r0, #60]
 4422              	.LVL405:
 4423 0058 2E4A     		ldr	r2, .L385
 4424              	.LVL406:
 4425 005a DA63     		str	r2, [r3, #60]
2189:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4426              		.loc 1 2189 0
 4427 005c C36B     		ldr	r3, [r0, #60]
 4428 005e 2E4A     		ldr	r2, .L385+4
 4429 0060 DA64     		str	r2, [r3, #76]
2192:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4430              		.loc 1 2192 0
 4431 0062 0168     		ldr	r1, [r0]
 4432              	.LVL407:
 4433 0064 038D     		ldrh	r3, [r0, #40]
 4434 0066 089A     		ldr	r2, [sp, #32]
 4435 0068 2431     		adds	r1, r1, #36
 4436 006a C06B     		ldr	r0, [r0, #60]
 4437              	.LVL408:
 4438 006c FFF7FEFF 		bl	HAL_DMA_Start_IT
 4439              	.LVL409:
2195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 4440              		.loc 1 2195 0
 4441 0070 1923     		movs	r3, #25
 4442 0072 0093     		str	r3, [sp]
 4443 0074 3346     		mov	r3, r6
 4444 0076 2A46     		mov	r2, r5
 4445 0078 3946     		mov	r1, r7
 4446 007a 2046     		mov	r0, r4
 4447 007c FFF7FEFF 		bl	I2C_RequestMemoryRead
 4448              	.LVL410:
 4449 0080 70B1     		cbz	r0, .L374
2197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 4450              		.loc 1 2197 0
 4451 0082 636C     		ldr	r3, [r4, #68]
 4452 0084 042B     		cmp	r3, #4
 4453 0086 06D1     		bne	.L375
2200:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_ERROR;
 4454              		.loc 1 2200 0
 4455 0088 0023     		movs	r3, #0
 4456 008a 84F84030 		strb	r3, [r4, #64]
2201:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 4457              		.loc 1 2201 0
 4458 008e 0123     		movs	r3, #1
 4459 0090 34E0     		b	.L371
 4460              	.LVL411:
 4461              	.L372:
2182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4462              		.loc 1 2182 0
 4463 0092 0585     		strh	r5, [r0, #40]	@ movhi
 4464 0094 DBE7     		b	.L373
 4465              	.LVL412:
 4466              	.L375:
2206:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         return HAL_TIMEOUT;
 4467              		.loc 1 2206 0
 4468 0096 0023     		movs	r3, #0
 4469 0098 84F84030 		strb	r3, [r4, #64]
2207:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 4470              		.loc 1 2207 0
 4471 009c 0323     		movs	r3, #3
 4472 009e 2DE0     		b	.L371
 4473              	.L374:
2212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 4474              		.loc 1 2212 0
 4475 00a0 228D     		ldrh	r2, [r4, #40]
 4476 00a2 FF2A     		cmp	r2, #255
 4477 00a4 03D1     		bne	.L376
2212:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 4478              		.loc 1 2212 0 is_stmt 0 discriminator 1
 4479 00a6 638D     		ldrh	r3, [r4, #42]
 4480 00a8 9BB2     		uxth	r3, r3
 4481 00aa 9A42     		cmp	r2, r3
 4482 00ac 1AD3     		bcc	.L384
 4483              	.L376:
2218:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4484              		.loc 1 2218 0 is_stmt 1
 4485 00ae 4FF41053 		mov	r3, #9216
 4486 00b2 0093     		str	r3, [sp]
 4487 00b4 4FF00073 		mov	r3, #33554432
 4488 00b8 D2B2     		uxtb	r2, r2
 4489 00ba 3946     		mov	r1, r7
 4490 00bc 2046     		mov	r0, r4
 4491 00be FFF7FEFF 		bl	I2C_TransferConfig
 4492              	.LVL413:
 4493              	.L377:
2222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 4494              		.loc 1 2222 0
 4495 00c2 1923     		movs	r3, #25
 4496 00c4 0022     		movs	r2, #0
 4497 00c6 0421     		movs	r1, #4
 4498 00c8 2046     		mov	r0, r4
 4499 00ca FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 4500              	.LVL414:
 4501 00ce 0346     		mov	r3, r0
 4502 00d0 E8B9     		cbnz	r0, .L382
2228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4503              		.loc 1 2228 0
 4504 00d2 2168     		ldr	r1, [r4]
 4505 00d4 0A68     		ldr	r2, [r1]
 4506 00d6 42F40042 		orr	r2, r2, #32768
 4507 00da 0A60     		str	r2, [r1]
2231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4508              		.loc 1 2231 0
 4509 00dc 0022     		movs	r2, #0
 4510 00de 84F84020 		strb	r2, [r4, #64]
2233:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 4511              		.loc 1 2233 0
 4512 00e2 0BE0     		b	.L371
 4513              	.L384:
2214:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4514              		.loc 1 2214 0
 4515 00e4 4FF41053 		mov	r3, #9216
 4516 00e8 0093     		str	r3, [sp]
 4517 00ea 4FF08073 		mov	r3, #16777216
 4518 00ee D2B2     		uxtb	r2, r2
 4519 00f0 3946     		mov	r1, r7
 4520 00f2 2046     		mov	r0, r4
 4521 00f4 FFF7FEFF 		bl	I2C_TransferConfig
 4522              	.LVL415:
 4523 00f8 E3E7     		b	.L377
 4524              	.LVL416:
 4525              	.L378:
2237:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 4526              		.loc 1 2237 0
 4527 00fa 0223     		movs	r3, #2
 4528              	.LVL417:
 4529              	.L371:
2239:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 4530              		.loc 1 2239 0
 4531 00fc 1846     		mov	r0, r3
 4532 00fe 03B0     		add	sp, sp, #12
 4533              		.cfi_remember_state
 4534              		.cfi_def_cfa_offset 20
 4535              		@ sp needed
 4536 0100 F0BD     		pop	{r4, r5, r6, r7, pc}
 4537              	.LVL418:
 4538              	.L379:
 4539              		.cfi_restore_state
2161:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4540              		.loc 1 2161 0
 4541 0102 0123     		movs	r3, #1
 4542              	.LVL419:
 4543 0104 FAE7     		b	.L371
 4544              	.LVL420:
 4545              	.L380:
2166:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4546              		.loc 1 2166 0
 4547 0106 0223     		movs	r3, #2
 4548              	.LVL421:
 4549 0108 F8E7     		b	.L371
 4550              	.LVL422:
 4551              	.L381:
2170:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4552              		.loc 1 2170 0
 4553 010a 0223     		movs	r3, #2
 4554              	.LVL423:
 4555 010c F6E7     		b	.L371
 4556              	.LVL424:
 4557              	.L382:
2224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4558              		.loc 1 2224 0
 4559 010e 0323     		movs	r3, #3
 4560 0110 F4E7     		b	.L371
 4561              	.L386:
 4562 0112 00BF     		.align	2
 4563              	.L385:
 4564 0114 00000000 		.word	I2C_DMAMemReceiveCplt
 4565 0118 00000000 		.word	I2C_DMAError
 4566              		.cfi_endproc
 4567              	.LFE159:
 4569              		.section	.text.HAL_I2C_IsDeviceReady,"ax",%progbits
 4570              		.align	1
 4571              		.global	HAL_I2C_IsDeviceReady
 4572              		.syntax unified
 4573              		.thumb
 4574              		.thumb_func
 4575              		.fpu fpv5-d16
 4577              	HAL_I2C_IsDeviceReady:
 4578              	.LFB160:
2252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint32_t tickstart = 0;
 4579              		.loc 1 2252 0
 4580              		.cfi_startproc
 4581              		@ args = 0, pretend = 0, frame = 8
 4582              		@ frame_needed = 0, uses_anonymous_args = 0
 4583              	.LVL425:
 4584 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 4585              		.cfi_def_cfa_offset 32
 4586              		.cfi_offset 4, -32
 4587              		.cfi_offset 5, -28
 4588              		.cfi_offset 6, -24
 4589              		.cfi_offset 7, -20
 4590              		.cfi_offset 8, -16
 4591              		.cfi_offset 9, -12
 4592              		.cfi_offset 10, -8
 4593              		.cfi_offset 14, -4
 4594 0004 82B0     		sub	sp, sp, #8
 4595              		.cfi_def_cfa_offset 40
 4596              	.LVL426:
2255:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 4597              		.loc 1 2255 0
 4598 0006 0024     		movs	r4, #0
 4599 0008 0194     		str	r4, [sp, #4]
2257:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 4600              		.loc 1 2257 0
 4601 000a 90F84140 		ldrb	r4, [r0, #65]	@ zero_extendqisi2
 4602 000e E4B2     		uxtb	r4, r4
 4603 0010 202C     		cmp	r4, #32
 4604 0012 40F08C80 		bne	.L399
2259:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 4605              		.loc 1 2259 0
 4606 0016 0468     		ldr	r4, [r0]
 4607 0018 A469     		ldr	r4, [r4, #24]
 4608 001a 14F4004F 		tst	r4, #32768
 4609 001e 40F08B80 		bne	.L400
2265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4610              		.loc 1 2265 0
 4611 0022 90F84040 		ldrb	r4, [r0, #64]	@ zero_extendqisi2
 4612 0026 012C     		cmp	r4, #1
 4613 0028 00F08880 		beq	.L401
 4614 002c 1F46     		mov	r7, r3
 4615 002e 9046     		mov	r8, r2
 4616 0030 8946     		mov	r9, r1
 4617 0032 0646     		mov	r6, r0
2265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4618              		.loc 1 2265 0 is_stmt 0 discriminator 2
 4619 0034 0123     		movs	r3, #1
 4620              	.LVL427:
 4621 0036 80F84030 		strb	r3, [r0, #64]
2267:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->ErrorCode = HAL_I2C_ERROR_NONE;
 4622              		.loc 1 2267 0 is_stmt 1 discriminator 2
 4623 003a 2423     		movs	r3, #36
 4624 003c 80F84130 		strb	r3, [r0, #65]
2268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4625              		.loc 1 2268 0 discriminator 2
 4626 0040 0023     		movs	r3, #0
 4627 0042 4364     		str	r3, [r0, #68]
 4628 0044 1EE0     		b	.L398
 4629              	.LVL428:
 4630              	.L409:
2273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 4631              		.loc 1 2273 0 discriminator 1
 4632 0046 C9F30902 		ubfx	r2, r9, #0, #10
 4633 004a 404B     		ldr	r3, .L410
 4634 004c 1343     		orrs	r3, r3, r2
 4635 004e 20E0     		b	.L390
 4636              	.LVL429:
 4637              	.L394:
2294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 4638              		.loc 1 2294 0
 4639 0050 AB69     		ldr	r3, [r5, #24]
 4640 0052 13F0100F 		tst	r3, #16
 4641 0056 41D0     		beq	.L406
2316:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 4642              		.loc 1 2316 0
 4643 0058 3B46     		mov	r3, r7
 4644 005a 0022     		movs	r2, #0
 4645 005c 2021     		movs	r1, #32
 4646 005e 3046     		mov	r0, r6
 4647 0060 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 4648              	.LVL430:
 4649 0064 0028     		cmp	r0, #0
 4650 0066 6DD1     		bne	.L403
2322:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 4651              		.loc 1 2322 0
 4652 0068 3368     		ldr	r3, [r6]
 4653 006a 1022     		movs	r2, #16
 4654 006c DA61     		str	r2, [r3, #28]
2325:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 4655              		.loc 1 2325 0
 4656 006e 3368     		ldr	r3, [r6]
 4657 0070 2022     		movs	r2, #32
 4658 0072 DA61     		str	r2, [r3, #28]
2329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 4659              		.loc 1 2329 0
 4660 0074 019B     		ldr	r3, [sp, #4]
 4661 0076 5A1C     		adds	r2, r3, #1
 4662 0078 0192     		str	r2, [sp, #4]
 4663 007a 4345     		cmp	r3, r8
 4664 007c 3FD0     		beq	.L407
 4665              	.L397:
2343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4666              		.loc 1 2343 0
 4667 007e 019B     		ldr	r3, [sp, #4]
 4668 0080 4345     		cmp	r3, r8
 4669 0082 4CD2     		bcs	.L408
 4670              	.LVL431:
 4671              	.L398:
2273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 4672              		.loc 1 2273 0
 4673 0084 F368     		ldr	r3, [r6, #12]
 4674 0086 012B     		cmp	r3, #1
 4675 0088 DDD0     		beq	.L409
2273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 4676              		.loc 1 2273 0 is_stmt 0 discriminator 2
 4677 008a C9F30903 		ubfx	r3, r9, #0, #10
 4678 008e 43F42053 		orr	r3, r3, #10240
 4679              	.L390:
2273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 4680              		.loc 1 2273 0 discriminator 4
 4681 0092 3268     		ldr	r2, [r6]
 4682 0094 5360     		str	r3, [r2, #4]
2277:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       while((__HAL_I2C_GET_FLAG(hi2c, I2C_FLAG_STOPF) == RESET) && (__HAL_I2C_GET_FLAG(hi2c, I2C_FL
 4683              		.loc 1 2277 0 is_stmt 1 discriminator 4
 4684 0096 FFF7FEFF 		bl	HAL_GetTick
 4685              	.LVL432:
 4686 009a 8246     		mov	r10, r0
 4687              	.LVL433:
 4688              	.L392:
2278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 4689              		.loc 1 2278 0
 4690 009c 3568     		ldr	r5, [r6]
 4691 009e AB69     		ldr	r3, [r5, #24]
 4692 00a0 13F0200F 		tst	r3, #32
 4693 00a4 D4D1     		bne	.L394
2278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 4694              		.loc 1 2278 0 is_stmt 0 discriminator 1
 4695 00a6 AB69     		ldr	r3, [r5, #24]
 4696 00a8 13F0100F 		tst	r3, #16
 4697 00ac D0D1     		bne	.L394
2278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 4698              		.loc 1 2278 0 discriminator 2
 4699 00ae 96F84140 		ldrb	r4, [r6, #65]	@ zero_extendqisi2
 4700 00b2 E4B2     		uxtb	r4, r4
 4701 00b4 A02C     		cmp	r4, #160
 4702 00b6 CBD0     		beq	.L394
2280:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       	{
 4703              		.loc 1 2280 0 is_stmt 1
 4704 00b8 B7F1FF3F 		cmp	r7, #-1
 4705 00bc EED0     		beq	.L392
2282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           {
 4706              		.loc 1 2282 0
 4707 00be 2FB1     		cbz	r7, .L393
2282:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           {
 4708              		.loc 1 2282 0 is_stmt 0 discriminator 1
 4709 00c0 FFF7FEFF 		bl	HAL_GetTick
 4710              	.LVL434:
 4711 00c4 A0EB0A00 		sub	r0, r0, r10
 4712 00c8 B842     		cmp	r0, r7
 4713 00ca E7D9     		bls	.L392
 4714              	.L393:
2285:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             /* Process Unlocked */
 4715              		.loc 1 2285 0 is_stmt 1
 4716 00cc 2023     		movs	r3, #32
 4717 00ce 86F84130 		strb	r3, [r6, #65]
2287:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****             return HAL_TIMEOUT;
 4718              		.loc 1 2287 0
 4719 00d2 0023     		movs	r3, #0
 4720 00d4 86F84030 		strb	r3, [r6, #64]
2288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           }
 4721              		.loc 1 2288 0
 4722 00d8 0323     		movs	r3, #3
 4723 00da 29E0     		b	.L388
 4724              	.L406:
2297:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 4725              		.loc 1 2297 0
 4726 00dc 3B46     		mov	r3, r7
 4727 00de 0022     		movs	r2, #0
 4728 00e0 2021     		movs	r1, #32
 4729 00e2 3046     		mov	r0, r6
 4730 00e4 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 4731              	.LVL435:
 4732 00e8 0346     		mov	r3, r0
 4733 00ea 48BB     		cbnz	r0, .L402
2303:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 4734              		.loc 1 2303 0
 4735 00ec 3168     		ldr	r1, [r6]
 4736 00ee 2022     		movs	r2, #32
 4737 00f0 CA61     		str	r2, [r1, #28]
2306:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 4738              		.loc 1 2306 0
 4739 00f2 86F84120 		strb	r2, [r6, #65]
2309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 4740              		.loc 1 2309 0
 4741 00f6 0022     		movs	r2, #0
 4742 00f8 86F84020 		strb	r2, [r6, #64]
2311:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 4743              		.loc 1 2311 0
 4744 00fc 18E0     		b	.L388
 4745              	.L407:
2332:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 4746              		.loc 1 2332 0
 4747 00fe 3268     		ldr	r2, [r6]
 4748 0100 5368     		ldr	r3, [r2, #4]
 4749 0102 43F48043 		orr	r3, r3, #16384
 4750 0106 5360     		str	r3, [r2, #4]
2335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 4751              		.loc 1 2335 0
 4752 0108 3B46     		mov	r3, r7
 4753 010a 0022     		movs	r2, #0
 4754 010c 2021     		movs	r1, #32
 4755 010e 3046     		mov	r0, r6
 4756 0110 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 4757              	.LVL436:
 4758 0114 C0B9     		cbnz	r0, .L404
2341:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }      
 4759              		.loc 1 2341 0
 4760 0116 3368     		ldr	r3, [r6]
 4761 0118 2022     		movs	r2, #32
 4762 011a DA61     		str	r2, [r3, #28]
 4763 011c AFE7     		b	.L397
 4764              	.L408:
2345:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4765              		.loc 1 2345 0
 4766 011e 2023     		movs	r3, #32
 4767 0120 86F84130 		strb	r3, [r6, #65]
2348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4768              		.loc 1 2348 0
 4769 0124 0023     		movs	r3, #0
 4770 0126 86F84030 		strb	r3, [r6, #64]
2350:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 4771              		.loc 1 2350 0
 4772 012a 0323     		movs	r3, #3
 4773 012c 00E0     		b	.L388
 4774              	.LVL437:
 4775              	.L399:
2354:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 4776              		.loc 1 2354 0
 4777 012e 0223     		movs	r3, #2
 4778              	.LVL438:
 4779              	.L388:
2356:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** /**
 4780              		.loc 1 2356 0
 4781 0130 1846     		mov	r0, r3
 4782 0132 02B0     		add	sp, sp, #8
 4783              		.cfi_remember_state
 4784              		.cfi_def_cfa_offset 32
 4785              		@ sp needed
 4786 0134 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 4787              	.LVL439:
 4788              	.L400:
 4789              		.cfi_restore_state
2261:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 4790              		.loc 1 2261 0
 4791 0138 0223     		movs	r3, #2
 4792              	.LVL440:
 4793 013a F9E7     		b	.L388
 4794              	.LVL441:
 4795              	.L401:
2265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 4796              		.loc 1 2265 0
 4797 013c 0223     		movs	r3, #2
 4798              	.LVL442:
 4799 013e F7E7     		b	.L388
 4800              	.LVL443:
 4801              	.L402:
2299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 4802              		.loc 1 2299 0
 4803 0140 0323     		movs	r3, #3
 4804 0142 F5E7     		b	.L388
 4805              	.L403:
2318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 4806              		.loc 1 2318 0
 4807 0144 0323     		movs	r3, #3
 4808 0146 F3E7     		b	.L388
 4809              	.L404:
2337:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 4810              		.loc 1 2337 0
 4811 0148 0323     		movs	r3, #3
 4812 014a F1E7     		b	.L388
 4813              	.L411:
 4814              		.align	2
 4815              	.L410:
 4816 014c 00200002 		.word	33562624
 4817              		.cfi_endproc
 4818              	.LFE160:
 4820              		.section	.text.HAL_I2C_MasterTxCpltCallback,"ax",%progbits
 4821              		.align	1
 4822              		.weak	HAL_I2C_MasterTxCpltCallback
 4823              		.syntax unified
 4824              		.thumb
 4825              		.thumb_func
 4826              		.fpu fpv5-d16
 4828              	HAL_I2C_MasterTxCpltCallback:
 4829              	.LFB163:
2462:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Prevent unused argument(s) compilation warning */
 4830              		.loc 1 2462 0
 4831              		.cfi_startproc
 4832              		@ args = 0, pretend = 0, frame = 0
 4833              		@ frame_needed = 0, uses_anonymous_args = 0
 4834              		@ link register save eliminated.
 4835              	.LVL444:
2469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 4836              		.loc 1 2469 0
 4837 0000 7047     		bx	lr
 4838              		.cfi_endproc
 4839              	.LFE163:
 4841              		.section	.text.HAL_I2C_MasterRxCpltCallback,"ax",%progbits
 4842              		.align	1
 4843              		.weak	HAL_I2C_MasterRxCpltCallback
 4844              		.syntax unified
 4845              		.thumb
 4846              		.thumb_func
 4847              		.fpu fpv5-d16
 4849              	HAL_I2C_MasterRxCpltCallback:
 4850              	.LFB164:
2478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Prevent unused argument(s) compilation warning */
 4851              		.loc 1 2478 0
 4852              		.cfi_startproc
 4853              		@ args = 0, pretend = 0, frame = 0
 4854              		@ frame_needed = 0, uses_anonymous_args = 0
 4855              		@ link register save eliminated.
 4856              	.LVL445:
2485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 4857              		.loc 1 2485 0
 4858 0000 7047     		bx	lr
 4859              		.cfi_endproc
 4860              	.LFE164:
 4862              		.section	.text.HAL_I2C_SlaveTxCpltCallback,"ax",%progbits
 4863              		.align	1
 4864              		.weak	HAL_I2C_SlaveTxCpltCallback
 4865              		.syntax unified
 4866              		.thumb
 4867              		.thumb_func
 4868              		.fpu fpv5-d16
 4870              	HAL_I2C_SlaveTxCpltCallback:
 4871              	.LFB165:
2493:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Prevent unused argument(s) compilation warning */
 4872              		.loc 1 2493 0
 4873              		.cfi_startproc
 4874              		@ args = 0, pretend = 0, frame = 0
 4875              		@ frame_needed = 0, uses_anonymous_args = 0
 4876              		@ link register save eliminated.
 4877              	.LVL446:
2500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 4878              		.loc 1 2500 0
 4879 0000 7047     		bx	lr
 4880              		.cfi_endproc
 4881              	.LFE165:
 4883              		.section	.text.HAL_I2C_SlaveRxCpltCallback,"ax",%progbits
 4884              		.align	1
 4885              		.weak	HAL_I2C_SlaveRxCpltCallback
 4886              		.syntax unified
 4887              		.thumb
 4888              		.thumb_func
 4889              		.fpu fpv5-d16
 4891              	HAL_I2C_SlaveRxCpltCallback:
 4892              	.LFB166:
2509:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Prevent unused argument(s) compilation warning */
 4893              		.loc 1 2509 0
 4894              		.cfi_startproc
 4895              		@ args = 0, pretend = 0, frame = 0
 4896              		@ frame_needed = 0, uses_anonymous_args = 0
 4897              		@ link register save eliminated.
 4898              	.LVL447:
2516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 4899              		.loc 1 2516 0
 4900 0000 7047     		bx	lr
 4901              		.cfi_endproc
 4902              	.LFE166:
 4904              		.section	.text.HAL_I2C_MemTxCpltCallback,"ax",%progbits
 4905              		.align	1
 4906              		.weak	HAL_I2C_MemTxCpltCallback
 4907              		.syntax unified
 4908              		.thumb
 4909              		.thumb_func
 4910              		.fpu fpv5-d16
 4912              	HAL_I2C_MemTxCpltCallback:
 4913              	.LFB167:
2525:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Prevent unused argument(s) compilation warning */
 4914              		.loc 1 2525 0
 4915              		.cfi_startproc
 4916              		@ args = 0, pretend = 0, frame = 0
 4917              		@ frame_needed = 0, uses_anonymous_args = 0
 4918              		@ link register save eliminated.
 4919              	.LVL448:
2532:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 4920              		.loc 1 2532 0
 4921 0000 7047     		bx	lr
 4922              		.cfi_endproc
 4923              	.LFE167:
 4925              		.section	.text.HAL_I2C_MemRxCpltCallback,"ax",%progbits
 4926              		.align	1
 4927              		.weak	HAL_I2C_MemRxCpltCallback
 4928              		.syntax unified
 4929              		.thumb
 4930              		.thumb_func
 4931              		.fpu fpv5-d16
 4933              	HAL_I2C_MemRxCpltCallback:
 4934              	.LFB168:
2541:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Prevent unused argument(s) compilation warning */
 4935              		.loc 1 2541 0
 4936              		.cfi_startproc
 4937              		@ args = 0, pretend = 0, frame = 0
 4938              		@ frame_needed = 0, uses_anonymous_args = 0
 4939              		@ link register save eliminated.
 4940              	.LVL449:
2548:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 4941              		.loc 1 2548 0
 4942 0000 7047     		bx	lr
 4943              		.cfi_endproc
 4944              	.LFE168:
 4946              		.section	.text.HAL_I2C_ErrorCallback,"ax",%progbits
 4947              		.align	1
 4948              		.weak	HAL_I2C_ErrorCallback
 4949              		.syntax unified
 4950              		.thumb
 4951              		.thumb_func
 4952              		.fpu fpv5-d16
 4954              	HAL_I2C_ErrorCallback:
 4955              	.LFB169:
2557:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Prevent unused argument(s) compilation warning */
 4956              		.loc 1 2557 0
 4957              		.cfi_startproc
 4958              		@ args = 0, pretend = 0, frame = 0
 4959              		@ frame_needed = 0, uses_anonymous_args = 0
 4960              		@ link register save eliminated.
 4961              	.LVL450:
2564:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 4962              		.loc 1 2564 0
 4963 0000 7047     		bx	lr
 4964              		.cfi_endproc
 4965              	.LFE169:
 4967              		.section	.text.I2C_DMAError,"ax",%progbits
 4968              		.align	1
 4969              		.syntax unified
 4970              		.thumb
 4971              		.thumb_func
 4972              		.fpu fpv5-d16
 4974              	I2C_DMAError:
 4975              	.LFB184:
3913:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   I2C_HandleTypeDef* hi2c = ( I2C_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;
 4976              		.loc 1 3913 0
 4977              		.cfi_startproc
 4978              		@ args = 0, pretend = 0, frame = 0
 4979              		@ frame_needed = 0, uses_anonymous_args = 0
 4980              	.LVL451:
 4981 0000 08B5     		push	{r3, lr}
 4982              		.cfi_def_cfa_offset 8
 4983              		.cfi_offset 3, -8
 4984              		.cfi_offset 14, -4
3914:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 4985              		.loc 1 3914 0
 4986 0002 806B     		ldr	r0, [r0, #56]
 4987              	.LVL452:
3917:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 4988              		.loc 1 3917 0
 4989 0004 0268     		ldr	r2, [r0]
 4990 0006 5368     		ldr	r3, [r2, #4]
 4991 0008 43F40043 		orr	r3, r3, #32768
 4992 000c 5360     		str	r3, [r2, #4]
3919:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 4993              		.loc 1 3919 0
 4994 000e 0023     		movs	r3, #0
 4995 0010 4385     		strh	r3, [r0, #42]	@ movhi
3921:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 4996              		.loc 1 3921 0
 4997 0012 2023     		movs	r3, #32
 4998 0014 80F84130 		strb	r3, [r0, #65]
3923:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 4999              		.loc 1 3923 0
 5000 0018 436C     		ldr	r3, [r0, #68]
 5001 001a 43F01003 		orr	r3, r3, #16
 5002 001e 4364     		str	r3, [r0, #68]
3925:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
 5003              		.loc 1 3925 0
 5004 0020 FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 5005              	.LVL453:
3926:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 5006              		.loc 1 3926 0
 5007 0024 08BD     		pop	{r3, pc}
 5008              		.cfi_endproc
 5009              	.LFE184:
 5011              		.section	.text.I2C_DMAMasterTransmitCplt,"ax",%progbits
 5012              		.align	1
 5013              		.syntax unified
 5014              		.thumb
 5015              		.thumb_func
 5016              		.fpu fpv5-d16
 5018              	I2C_DMAMasterTransmitCplt:
 5019              	.LFB178:
3173:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint16_t DevAddress;
 5020              		.loc 1 3173 0
 5021              		.cfi_startproc
 5022              		@ args = 0, pretend = 0, frame = 0
 5023              		@ frame_needed = 0, uses_anonymous_args = 0
 5024              	.LVL454:
 5025 0000 30B5     		push	{r4, r5, lr}
 5026              		.cfi_def_cfa_offset 12
 5027              		.cfi_offset 4, -12
 5028              		.cfi_offset 5, -8
 5029              		.cfi_offset 14, -4
 5030 0002 83B0     		sub	sp, sp, #12
 5031              		.cfi_def_cfa_offset 24
3175:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 5032              		.loc 1 3175 0
 5033 0004 846B     		ldr	r4, [r0, #56]
 5034              	.LVL455:
3179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 5035              		.loc 1 3179 0
 5036 0006 238D     		ldrh	r3, [r4, #40]
 5037 0008 FF2B     		cmp	r3, #255
 5038 000a 03D1     		bne	.L422
3179:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 5039              		.loc 1 3179 0 is_stmt 0 discriminator 1
 5040 000c 628D     		ldrh	r2, [r4, #42]
 5041 000e 92B2     		uxth	r2, r2
 5042 0010 9342     		cmp	r3, r2
 5043 0012 2CD3     		bcc	.L439
 5044              	.L422:
3286:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 5045              		.loc 1 3286 0 is_stmt 1
 5046 0014 1921     		movs	r1, #25
 5047 0016 2046     		mov	r0, r4
 5048              	.LVL456:
 5049 0018 FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 5050              	.LVL457:
 5051 001c 38B1     		cbz	r0, .L435
3288:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 5052              		.loc 1 3288 0
 5053 001e 636C     		ldr	r3, [r4, #68]
 5054 0020 042B     		cmp	r3, #4
 5055 0022 00F0C580 		beq	.L440
3294:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 5056              		.loc 1 3294 0
 5057 0026 636C     		ldr	r3, [r4, #68]
 5058 0028 43F02003 		orr	r3, r3, #32
 5059 002c 6364     		str	r3, [r4, #68]
 5060              	.L435:
3299:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   	
 5061              		.loc 1 3299 0
 5062 002e 2368     		ldr	r3, [r4]
 5063 0030 2022     		movs	r2, #32
 5064 0032 DA61     		str	r2, [r3, #28]
3302:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 5065              		.loc 1 3302 0
 5066 0034 2168     		ldr	r1, [r4]
 5067 0036 4B68     		ldr	r3, [r1, #4]
 5068 0038 23F0FF73 		bic	r3, r3, #33423360
 5069 003c 23F48B33 		bic	r3, r3, #71168
 5070 0040 23F4FF73 		bic	r3, r3, #510
 5071 0044 23F00103 		bic	r3, r3, #1
 5072 0048 4B60     		str	r3, [r1, #4]
3305:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 5073              		.loc 1 3305 0
 5074 004a 2168     		ldr	r1, [r4]
 5075 004c 0B68     		ldr	r3, [r1]
 5076 004e 23F48043 		bic	r3, r3, #16384
 5077 0052 0B60     		str	r3, [r1]
3307:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 5078              		.loc 1 3307 0
 5079 0054 0023     		movs	r3, #0
 5080 0056 6385     		strh	r3, [r4, #42]	@ movhi
3309:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 5081              		.loc 1 3309 0
 5082 0058 84F84120 		strb	r2, [r4, #65]
3312:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 5083              		.loc 1 3312 0
 5084 005c 636C     		ldr	r3, [r4, #68]
 5085 005e 002B     		cmp	r3, #0
 5086 0060 40F0AB80 		bne	.L441
3318:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 5087              		.loc 1 3318 0
 5088 0064 2046     		mov	r0, r4
 5089 0066 FFF7FEFF 		bl	HAL_I2C_MasterTxCpltCallback
 5090              	.LVL458:
 5091              	.L421:
3321:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 5092              		.loc 1 3321 0
 5093 006a 03B0     		add	sp, sp, #12
 5094              		.cfi_remember_state
 5095              		.cfi_def_cfa_offset 12
 5096              		@ sp needed
 5097 006c 30BD     		pop	{r4, r5, pc}
 5098              	.LVL459:
 5099              	.L439:
 5100              		.cfi_restore_state
3182:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 5101              		.loc 1 3182 0
 5102 006e 1923     		movs	r3, #25
 5103 0070 0022     		movs	r2, #0
 5104 0072 8021     		movs	r1, #128
 5105 0074 2046     		mov	r0, r4
 5106              	.LVL460:
 5107 0076 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 5108              	.LVL461:
 5109 007a 18B1     		cbz	r0, .L423
3184:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 5110              		.loc 1 3184 0
 5111 007c 636C     		ldr	r3, [r4, #68]
 5112 007e 43F02003 		orr	r3, r3, #32
 5113 0082 6364     		str	r3, [r4, #68]
 5114              	.L423:
3188:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 5115              		.loc 1 3188 0
 5116 0084 2268     		ldr	r2, [r4]
 5117 0086 1368     		ldr	r3, [r2]
 5118 0088 23F48043 		bic	r3, r3, #16384
 5119 008c 1360     		str	r3, [r2]
3191:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 5120              		.loc 1 3191 0
 5121 008e 636C     		ldr	r3, [r4, #68]
 5122 0090 002B     		cmp	r3, #0
 5123 0092 32D1     		bne	.L442
3220:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferCount -= hi2c->XferSize;
 5124              		.loc 1 3220 0
 5125 0094 228D     		ldrh	r2, [r4, #40]
 5126 0096 616A     		ldr	r1, [r4, #36]
 5127 0098 1144     		add	r1, r1, r2
 5128 009a 6162     		str	r1, [r4, #36]
3221:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->XferCount > 255)
 5129              		.loc 1 3221 0
 5130 009c 638D     		ldrh	r3, [r4, #42]
 5131 009e 9B1A     		subs	r3, r3, r2
 5132 00a0 9BB2     		uxth	r3, r3
 5133 00a2 6385     		strh	r3, [r4, #42]	@ movhi
3222:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 5134              		.loc 1 3222 0
 5135 00a4 638D     		ldrh	r3, [r4, #42]
 5136 00a6 9BB2     		uxth	r3, r3
 5137 00a8 FF2B     		cmp	r3, #255
 5138 00aa 4DD9     		bls	.L428
3224:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 5139              		.loc 1 3224 0
 5140 00ac FF23     		movs	r3, #255
 5141 00ae 2385     		strh	r3, [r4, #40]	@ movhi
 5142              	.L429:
3231:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 5143              		.loc 1 3231 0
 5144 00b0 2268     		ldr	r2, [r4]
 5145 00b2 5568     		ldr	r5, [r2, #4]
 5146 00b4 C5F30905 		ubfx	r5, r5, #0, #10
 5147              	.LVL462:
3234:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 5148              		.loc 1 3234 0
 5149 00b8 238D     		ldrh	r3, [r4, #40]
 5150 00ba 2832     		adds	r2, r2, #40
 5151 00bc A06B     		ldr	r0, [r4, #56]
 5152 00be FFF7FEFF 		bl	HAL_DMA_Start_IT
 5153              	.LVL463:
3238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 5154              		.loc 1 3238 0
 5155 00c2 228D     		ldrh	r2, [r4, #40]
 5156 00c4 FF2A     		cmp	r2, #255
 5157 00c6 03D1     		bne	.L430
3238:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 5158              		.loc 1 3238 0 is_stmt 0 discriminator 1
 5159 00c8 638D     		ldrh	r3, [r4, #42]
 5160 00ca 9BB2     		uxth	r3, r3
 5161 00cc 9A42     		cmp	r2, r3
 5162 00ce 3ED3     		bcc	.L443
 5163              	.L430:
3244:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }  
 5164              		.loc 1 3244 0 is_stmt 1
 5165 00d0 0023     		movs	r3, #0
 5166 00d2 0093     		str	r3, [sp]
 5167 00d4 4FF00073 		mov	r3, #33554432
 5168 00d8 D2B2     		uxtb	r2, r2
 5169 00da 2946     		mov	r1, r5
 5170 00dc 2046     		mov	r0, r4
 5171 00de FFF7FEFF 		bl	I2C_TransferConfig
 5172              	.LVL464:
 5173              	.L431:
3248:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 5174              		.loc 1 3248 0
 5175 00e2 1921     		movs	r1, #25
 5176 00e4 2046     		mov	r0, r4
 5177 00e6 FFF7FEFF 		bl	I2C_WaitOnTXISFlagUntilTimeout
 5178              	.LVL465:
 5179 00ea 0028     		cmp	r0, #0
 5180 00ec 39D1     		bne	.L444
3278:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 5181              		.loc 1 3278 0
 5182 00ee 2268     		ldr	r2, [r4]
 5183 00f0 1368     		ldr	r3, [r2]
 5184 00f2 43F48043 		orr	r3, r3, #16384
 5185 00f6 1360     		str	r3, [r2]
 5186 00f8 B7E7     		b	.L421
 5187              	.LVL466:
 5188              	.L442:
3195:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 5189              		.loc 1 3195 0
 5190 00fa 1921     		movs	r1, #25
 5191 00fc 2046     		mov	r0, r4
 5192 00fe FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 5193              	.LVL467:
 5194 0102 30B1     		cbz	r0, .L425
3197:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 5195              		.loc 1 3197 0
 5196 0104 636C     		ldr	r3, [r4, #68]
 5197 0106 042B     		cmp	r3, #4
 5198 0108 19D0     		beq	.L445
3203:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 5199              		.loc 1 3203 0
 5200 010a 636C     		ldr	r3, [r4, #68]
 5201 010c 43F02003 		orr	r3, r3, #32
 5202 0110 6364     		str	r3, [r4, #68]
 5203              	.L425:
3208:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 5204              		.loc 1 3208 0
 5205 0112 2368     		ldr	r3, [r4]
 5206 0114 2022     		movs	r2, #32
 5207 0116 DA61     		str	r2, [r3, #28]
3211:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 5208              		.loc 1 3211 0
 5209 0118 2168     		ldr	r1, [r4]
 5210 011a 4B68     		ldr	r3, [r1, #4]
 5211 011c 23F0FF73 		bic	r3, r3, #33423360
 5212 0120 23F48B33 		bic	r3, r3, #71168
 5213 0124 23F4FF73 		bic	r3, r3, #510
 5214 0128 23F00103 		bic	r3, r3, #1
 5215 012c 4B60     		str	r3, [r1, #4]
3213:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 5216              		.loc 1 3213 0
 5217 012e 0023     		movs	r3, #0
 5218 0130 6385     		strh	r3, [r4, #42]	@ movhi
3215:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
 5219              		.loc 1 3215 0
 5220 0132 84F84120 		strb	r2, [r4, #65]
3216:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 5221              		.loc 1 3216 0
 5222 0136 2046     		mov	r0, r4
 5223 0138 FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 5224              	.LVL468:
 5225 013c 95E7     		b	.L421
 5226              	.L445:
3199:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 5227              		.loc 1 3199 0
 5228 013e 636C     		ldr	r3, [r4, #68]
 5229 0140 43F00403 		orr	r3, r3, #4
 5230 0144 6364     		str	r3, [r4, #68]
 5231 0146 E4E7     		b	.L425
 5232              	.L428:
3228:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 5233              		.loc 1 3228 0
 5234 0148 638D     		ldrh	r3, [r4, #42]
 5235 014a 2385     		strh	r3, [r4, #40]	@ movhi
 5236 014c B0E7     		b	.L429
 5237              	.LVL469:
 5238              	.L443:
3240:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 5239              		.loc 1 3240 0
 5240 014e 0023     		movs	r3, #0
 5241 0150 0093     		str	r3, [sp]
 5242 0152 4FF08073 		mov	r3, #16777216
 5243 0156 D2B2     		uxtb	r2, r2
 5244 0158 2946     		mov	r1, r5
 5245 015a 2046     		mov	r0, r4
 5246 015c FFF7FEFF 		bl	I2C_TransferConfig
 5247              	.LVL470:
 5248 0160 BFE7     		b	.L431
 5249              	.L444:
3252:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 5250              		.loc 1 3252 0
 5251 0162 1921     		movs	r1, #25
 5252 0164 2046     		mov	r0, r4
 5253 0166 FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 5254              	.LVL471:
 5255 016a 30B1     		cbz	r0, .L433
3254:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           {
 5256              		.loc 1 3254 0
 5257 016c 636C     		ldr	r3, [r4, #68]
 5258 016e 042B     		cmp	r3, #4
 5259 0170 19D0     		beq	.L446
3260:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           }
 5260              		.loc 1 3260 0
 5261 0172 636C     		ldr	r3, [r4, #68]
 5262 0174 43F02003 		orr	r3, r3, #32
 5263 0178 6364     		str	r3, [r4, #68]
 5264              	.L433:
3265:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 5265              		.loc 1 3265 0
 5266 017a 2368     		ldr	r3, [r4]
 5267 017c 2022     		movs	r2, #32
 5268 017e DA61     		str	r2, [r3, #28]
3268:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 5269              		.loc 1 3268 0
 5270 0180 2168     		ldr	r1, [r4]
 5271 0182 4B68     		ldr	r3, [r1, #4]
 5272 0184 23F0FF73 		bic	r3, r3, #33423360
 5273 0188 23F48B33 		bic	r3, r3, #71168
 5274 018c 23F4FF73 		bic	r3, r3, #510
 5275 0190 23F00103 		bic	r3, r3, #1
 5276 0194 4B60     		str	r3, [r1, #4]
3270:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 5277              		.loc 1 3270 0
 5278 0196 0023     		movs	r3, #0
 5279 0198 6385     		strh	r3, [r4, #42]	@ movhi
3272:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         HAL_I2C_ErrorCallback(hi2c);
 5280              		.loc 1 3272 0
 5281 019a 84F84120 		strb	r2, [r4, #65]
3273:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 5282              		.loc 1 3273 0
 5283 019e 2046     		mov	r0, r4
 5284 01a0 FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 5285              	.LVL472:
 5286 01a4 61E7     		b	.L421
 5287              	.L446:
3256:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           }
 5288              		.loc 1 3256 0
 5289 01a6 636C     		ldr	r3, [r4, #68]
 5290 01a8 43F00403 		orr	r3, r3, #4
 5291 01ac 6364     		str	r3, [r4, #68]
 5292 01ae E4E7     		b	.L433
 5293              	.LVL473:
 5294              	.L440:
3290:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 5295              		.loc 1 3290 0
 5296 01b0 636C     		ldr	r3, [r4, #68]
 5297 01b2 43F00403 		orr	r3, r3, #4
 5298 01b6 6364     		str	r3, [r4, #68]
 5299 01b8 39E7     		b	.L435
 5300              	.L441:
3314:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 5301              		.loc 1 3314 0
 5302 01ba 2046     		mov	r0, r4
 5303 01bc FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 5304              	.LVL474:
 5305 01c0 53E7     		b	.L421
 5306              		.cfi_endproc
 5307              	.LFE178:
 5309              		.section	.text.I2C_DMAMasterReceiveCplt,"ax",%progbits
 5310              		.align	1
 5311              		.syntax unified
 5312              		.thumb
 5313              		.thumb_func
 5314              		.fpu fpv5-d16
 5316              	I2C_DMAMasterReceiveCplt:
 5317              	.LFB180:
3380:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   I2C_HandleTypeDef* hi2c = (I2C_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
 5318              		.loc 1 3380 0
 5319              		.cfi_startproc
 5320              		@ args = 0, pretend = 0, frame = 0
 5321              		@ frame_needed = 0, uses_anonymous_args = 0
 5322              	.LVL475:
 5323 0000 30B5     		push	{r4, r5, lr}
 5324              		.cfi_def_cfa_offset 12
 5325              		.cfi_offset 4, -12
 5326              		.cfi_offset 5, -8
 5327              		.cfi_offset 14, -4
 5328 0002 83B0     		sub	sp, sp, #12
 5329              		.cfi_def_cfa_offset 24
3381:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint16_t DevAddress;
 5330              		.loc 1 3381 0
 5331 0004 846B     		ldr	r4, [r0, #56]
 5332              	.LVL476:
3386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 5333              		.loc 1 3386 0
 5334 0006 238D     		ldrh	r3, [r4, #40]
 5335 0008 FF2B     		cmp	r3, #255
 5336 000a 03D1     		bne	.L448
3386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 5337              		.loc 1 3386 0 is_stmt 0 discriminator 1
 5338 000c 628D     		ldrh	r2, [r4, #42]
 5339 000e 92B2     		uxth	r2, r2
 5340 0010 9342     		cmp	r3, r2
 5341 0012 2CD3     		bcc	.L466
 5342              	.L448:
3500:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 5343              		.loc 1 3500 0 is_stmt 1
 5344 0014 1921     		movs	r1, #25
 5345 0016 2046     		mov	r0, r4
 5346              	.LVL477:
 5347 0018 FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 5348              	.LVL478:
 5349 001c 38B1     		cbz	r0, .L462
3502:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 5350              		.loc 1 3502 0
 5351 001e 636C     		ldr	r3, [r4, #68]
 5352 0020 042B     		cmp	r3, #4
 5353 0022 00F0CD80 		beq	.L467
3508:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 5354              		.loc 1 3508 0
 5355 0026 636C     		ldr	r3, [r4, #68]
 5356 0028 43F02003 		orr	r3, r3, #32
 5357 002c 6364     		str	r3, [r4, #68]
 5358              	.L462:
3513:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   	
 5359              		.loc 1 3513 0
 5360 002e 2368     		ldr	r3, [r4]
 5361 0030 2022     		movs	r2, #32
 5362 0032 DA61     		str	r2, [r3, #28]
3516:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 5363              		.loc 1 3516 0
 5364 0034 2168     		ldr	r1, [r4]
 5365 0036 4B68     		ldr	r3, [r1, #4]
 5366 0038 23F0FF73 		bic	r3, r3, #33423360
 5367 003c 23F48B33 		bic	r3, r3, #71168
 5368 0040 23F4FF73 		bic	r3, r3, #510
 5369 0044 23F00103 		bic	r3, r3, #1
 5370 0048 4B60     		str	r3, [r1, #4]
3519:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 5371              		.loc 1 3519 0
 5372 004a 2168     		ldr	r1, [r4]
 5373 004c 0B68     		ldr	r3, [r1]
 5374 004e 23F40043 		bic	r3, r3, #32768
 5375 0052 0B60     		str	r3, [r1]
3521:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 5376              		.loc 1 3521 0
 5377 0054 0023     		movs	r3, #0
 5378 0056 6385     		strh	r3, [r4, #42]	@ movhi
3523:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 5379              		.loc 1 3523 0
 5380 0058 84F84120 		strb	r2, [r4, #65]
3526:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 5381              		.loc 1 3526 0
 5382 005c 636C     		ldr	r3, [r4, #68]
 5383 005e 002B     		cmp	r3, #0
 5384 0060 40F0B380 		bne	.L468
3532:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 5385              		.loc 1 3532 0
 5386 0064 2046     		mov	r0, r4
 5387 0066 FFF7FEFF 		bl	HAL_I2C_MasterRxCpltCallback
 5388              	.LVL479:
 5389              	.L447:
3535:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 5390              		.loc 1 3535 0
 5391 006a 03B0     		add	sp, sp, #12
 5392              		.cfi_remember_state
 5393              		.cfi_def_cfa_offset 12
 5394              		@ sp needed
 5395 006c 30BD     		pop	{r4, r5, pc}
 5396              	.LVL480:
 5397              	.L466:
 5398              		.cfi_restore_state
3389:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 5399              		.loc 1 3389 0
 5400 006e 1923     		movs	r3, #25
 5401 0070 0022     		movs	r2, #0
 5402 0072 8021     		movs	r1, #128
 5403 0074 2046     		mov	r0, r4
 5404              	.LVL481:
 5405 0076 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 5406              	.LVL482:
 5407 007a 18B1     		cbz	r0, .L449
3391:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 5408              		.loc 1 3391 0
 5409 007c 636C     		ldr	r3, [r4, #68]
 5410 007e 43F02003 		orr	r3, r3, #32
 5411 0082 6364     		str	r3, [r4, #68]
 5412              	.L449:
3395:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 5413              		.loc 1 3395 0
 5414 0084 2268     		ldr	r2, [r4]
 5415 0086 1368     		ldr	r3, [r2]
 5416 0088 23F40043 		bic	r3, r3, #32768
 5417 008c 1360     		str	r3, [r2]
3398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 5418              		.loc 1 3398 0
 5419 008e 636C     		ldr	r3, [r4, #68]
 5420 0090 002B     		cmp	r3, #0
 5421 0092 3AD1     		bne	.L469
3427:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferCount -= hi2c->XferSize;
 5422              		.loc 1 3427 0
 5423 0094 218D     		ldrh	r1, [r4, #40]
 5424 0096 626A     		ldr	r2, [r4, #36]
 5425 0098 0A44     		add	r2, r2, r1
 5426 009a 6262     		str	r2, [r4, #36]
3428:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->XferCount > 255)
 5427              		.loc 1 3428 0
 5428 009c 638D     		ldrh	r3, [r4, #42]
 5429 009e 5B1A     		subs	r3, r3, r1
 5430 00a0 9BB2     		uxth	r3, r3
 5431 00a2 6385     		strh	r3, [r4, #42]	@ movhi
3429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 5432              		.loc 1 3429 0
 5433 00a4 638D     		ldrh	r3, [r4, #42]
 5434 00a6 9BB2     		uxth	r3, r3
 5435 00a8 FF2B     		cmp	r3, #255
 5436 00aa 55D9     		bls	.L454
3431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 5437              		.loc 1 3431 0
 5438 00ac FF23     		movs	r3, #255
 5439 00ae 2385     		strh	r3, [r4, #40]	@ movhi
 5440              	.L455:
3438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 5441              		.loc 1 3438 0
 5442 00b0 2168     		ldr	r1, [r4]
 5443 00b2 4D68     		ldr	r5, [r1, #4]
 5444 00b4 C5F30905 		ubfx	r5, r5, #0, #10
 5445              	.LVL483:
3441:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 5446              		.loc 1 3441 0
 5447 00b8 238D     		ldrh	r3, [r4, #40]
 5448 00ba 2431     		adds	r1, r1, #36
 5449 00bc E06B     		ldr	r0, [r4, #60]
 5450 00be FFF7FEFF 		bl	HAL_DMA_Start_IT
 5451              	.LVL484:
3445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 5452              		.loc 1 3445 0
 5453 00c2 228D     		ldrh	r2, [r4, #40]
 5454 00c4 FF2A     		cmp	r2, #255
 5455 00c6 03D1     		bne	.L456
3445:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 5456              		.loc 1 3445 0 is_stmt 0 discriminator 1
 5457 00c8 638D     		ldrh	r3, [r4, #42]
 5458 00ca 9BB2     		uxth	r3, r3
 5459 00cc 9A42     		cmp	r2, r3
 5460 00ce 46D3     		bcc	.L470
 5461              	.L456:
3451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }  
 5462              		.loc 1 3451 0 is_stmt 1
 5463 00d0 0023     		movs	r3, #0
 5464 00d2 0093     		str	r3, [sp]
 5465 00d4 4FF00073 		mov	r3, #33554432
 5466 00d8 D2B2     		uxtb	r2, r2
 5467 00da 2946     		mov	r1, r5
 5468 00dc 2046     		mov	r0, r4
 5469 00de FFF7FEFF 		bl	I2C_TransferConfig
 5470              	.LVL485:
 5471              	.L457:
3455:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 5472              		.loc 1 3455 0
 5473 00e2 1923     		movs	r3, #25
 5474 00e4 0022     		movs	r2, #0
 5475 00e6 0421     		movs	r1, #4
 5476 00e8 2046     		mov	r0, r4
 5477 00ea FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 5478              	.LVL486:
 5479 00ee 18B1     		cbz	r0, .L458
3457:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 5480              		.loc 1 3457 0
 5481 00f0 636C     		ldr	r3, [r4, #68]
 5482 00f2 43F02003 		orr	r3, r3, #32
 5483 00f6 6364     		str	r3, [r4, #68]
 5484              	.L458:
3461:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 5485              		.loc 1 3461 0
 5486 00f8 636C     		ldr	r3, [r4, #68]
 5487 00fa 002B     		cmp	r3, #0
 5488 00fc 39D1     		bne	.L471
3492:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 5489              		.loc 1 3492 0
 5490 00fe 2268     		ldr	r2, [r4]
 5491 0100 1368     		ldr	r3, [r2]
 5492 0102 43F40043 		orr	r3, r3, #32768
 5493 0106 1360     		str	r3, [r2]
 5494 0108 AFE7     		b	.L447
 5495              	.LVL487:
 5496              	.L469:
3402:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 5497              		.loc 1 3402 0
 5498 010a 1921     		movs	r1, #25
 5499 010c 2046     		mov	r0, r4
 5500 010e FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 5501              	.LVL488:
 5502 0112 30B1     		cbz	r0, .L451
3404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 5503              		.loc 1 3404 0
 5504 0114 636C     		ldr	r3, [r4, #68]
 5505 0116 042B     		cmp	r3, #4
 5506 0118 19D0     		beq	.L472
3410:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 5507              		.loc 1 3410 0
 5508 011a 636C     		ldr	r3, [r4, #68]
 5509 011c 43F02003 		orr	r3, r3, #32
 5510 0120 6364     		str	r3, [r4, #68]
 5511              	.L451:
3415:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 5512              		.loc 1 3415 0
 5513 0122 2368     		ldr	r3, [r4]
 5514 0124 2022     		movs	r2, #32
 5515 0126 DA61     		str	r2, [r3, #28]
3418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 5516              		.loc 1 3418 0
 5517 0128 2168     		ldr	r1, [r4]
 5518 012a 4B68     		ldr	r3, [r1, #4]
 5519 012c 23F0FF73 		bic	r3, r3, #33423360
 5520 0130 23F48B33 		bic	r3, r3, #71168
 5521 0134 23F4FF73 		bic	r3, r3, #510
 5522 0138 23F00103 		bic	r3, r3, #1
 5523 013c 4B60     		str	r3, [r1, #4]
3420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 5524              		.loc 1 3420 0
 5525 013e 0023     		movs	r3, #0
 5526 0140 6385     		strh	r3, [r4, #42]	@ movhi
3422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
 5527              		.loc 1 3422 0
 5528 0142 84F84120 		strb	r2, [r4, #65]
3423:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 5529              		.loc 1 3423 0
 5530 0146 2046     		mov	r0, r4
 5531 0148 FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 5532              	.LVL489:
 5533 014c 8DE7     		b	.L447
 5534              	.L472:
3406:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 5535              		.loc 1 3406 0
 5536 014e 636C     		ldr	r3, [r4, #68]
 5537 0150 43F00403 		orr	r3, r3, #4
 5538 0154 6364     		str	r3, [r4, #68]
 5539 0156 E4E7     		b	.L451
 5540              	.L454:
3435:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 5541              		.loc 1 3435 0
 5542 0158 638D     		ldrh	r3, [r4, #42]
 5543 015a 2385     		strh	r3, [r4, #40]	@ movhi
 5544 015c A8E7     		b	.L455
 5545              	.LVL490:
 5546              	.L470:
3447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 5547              		.loc 1 3447 0
 5548 015e 0023     		movs	r3, #0
 5549 0160 0093     		str	r3, [sp]
 5550 0162 4FF08073 		mov	r3, #16777216
 5551 0166 D2B2     		uxtb	r2, r2
 5552 0168 2946     		mov	r1, r5
 5553 016a 2046     		mov	r0, r4
 5554 016c FFF7FEFF 		bl	I2C_TransferConfig
 5555              	.LVL491:
 5556 0170 B7E7     		b	.L457
 5557              	.L471:
3465:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 5558              		.loc 1 3465 0
 5559 0172 1921     		movs	r1, #25
 5560 0174 2046     		mov	r0, r4
 5561 0176 FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 5562              	.LVL492:
 5563 017a 30B1     		cbz	r0, .L460
3467:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           {
 5564              		.loc 1 3467 0
 5565 017c 636C     		ldr	r3, [r4, #68]
 5566 017e 042B     		cmp	r3, #4
 5567 0180 19D0     		beq	.L473
3473:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           }
 5568              		.loc 1 3473 0
 5569 0182 636C     		ldr	r3, [r4, #68]
 5570 0184 43F02003 		orr	r3, r3, #32
 5571 0188 6364     		str	r3, [r4, #68]
 5572              	.L460:
3478:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 5573              		.loc 1 3478 0
 5574 018a 2368     		ldr	r3, [r4]
 5575 018c 2022     		movs	r2, #32
 5576 018e DA61     		str	r2, [r3, #28]
3481:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 5577              		.loc 1 3481 0
 5578 0190 2168     		ldr	r1, [r4]
 5579 0192 4B68     		ldr	r3, [r1, #4]
 5580 0194 23F0FF73 		bic	r3, r3, #33423360
 5581 0198 23F48B33 		bic	r3, r3, #71168
 5582 019c 23F4FF73 		bic	r3, r3, #510
 5583 01a0 23F00103 		bic	r3, r3, #1
 5584 01a4 4B60     		str	r3, [r1, #4]
3483:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 5585              		.loc 1 3483 0
 5586 01a6 0023     		movs	r3, #0
 5587 01a8 6385     		strh	r3, [r4, #42]	@ movhi
3485:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 5588              		.loc 1 3485 0
 5589 01aa 84F84120 		strb	r2, [r4, #65]
3487:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 5590              		.loc 1 3487 0
 5591 01ae 2046     		mov	r0, r4
 5592 01b0 FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 5593              	.LVL493:
 5594 01b4 59E7     		b	.L447
 5595              	.L473:
3469:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           }
 5596              		.loc 1 3469 0
 5597 01b6 636C     		ldr	r3, [r4, #68]
 5598 01b8 43F00403 		orr	r3, r3, #4
 5599 01bc 6364     		str	r3, [r4, #68]
 5600 01be E4E7     		b	.L460
 5601              	.LVL494:
 5602              	.L467:
3504:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 5603              		.loc 1 3504 0
 5604 01c0 636C     		ldr	r3, [r4, #68]
 5605 01c2 43F00403 		orr	r3, r3, #4
 5606 01c6 6364     		str	r3, [r4, #68]
 5607 01c8 31E7     		b	.L462
 5608              	.L468:
3528:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 5609              		.loc 1 3528 0
 5610 01ca 2046     		mov	r0, r4
 5611 01cc FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 5612              	.LVL495:
 5613 01d0 4BE7     		b	.L447
 5614              		.cfi_endproc
 5615              	.LFE180:
 5617              		.section	.text.I2C_DMASlaveTransmitCplt,"ax",%progbits
 5618              		.align	1
 5619              		.syntax unified
 5620              		.thumb
 5621              		.thumb_func
 5622              		.fpu fpv5-d16
 5624              	I2C_DMASlaveTransmitCplt:
 5625              	.LFB179:
3329:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   I2C_HandleTypeDef* hi2c = (I2C_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
 5626              		.loc 1 3329 0
 5627              		.cfi_startproc
 5628              		@ args = 0, pretend = 0, frame = 0
 5629              		@ frame_needed = 0, uses_anonymous_args = 0
 5630              	.LVL496:
 5631 0000 10B5     		push	{r4, lr}
 5632              		.cfi_def_cfa_offset 8
 5633              		.cfi_offset 4, -8
 5634              		.cfi_offset 14, -4
3330:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 5635              		.loc 1 3330 0
 5636 0002 846B     		ldr	r4, [r0, #56]
 5637              	.LVL497:
3333:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 5638              		.loc 1 3333 0
 5639 0004 1921     		movs	r1, #25
 5640 0006 2046     		mov	r0, r4
 5641              	.LVL498:
 5642 0008 FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 5643              	.LVL499:
 5644 000c 30B1     		cbz	r0, .L475
3335:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 5645              		.loc 1 3335 0
 5646 000e 636C     		ldr	r3, [r4, #68]
 5647 0010 042B     		cmp	r3, #4
 5648 0012 22D0     		beq	.L481
3343:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 5649              		.loc 1 3343 0
 5650 0014 636C     		ldr	r3, [r4, #68]
 5651 0016 43F02003 		orr	r3, r3, #32
 5652 001a 6364     		str	r3, [r4, #68]
 5653              	.L475:
3348:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 5654              		.loc 1 3348 0
 5655 001c 2368     		ldr	r3, [r4]
 5656 001e 2022     		movs	r2, #32
 5657 0020 DA61     		str	r2, [r3, #28]
3351:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 5658              		.loc 1 3351 0
 5659 0022 1923     		movs	r3, #25
 5660 0024 0122     		movs	r2, #1
 5661 0026 4FF40041 		mov	r1, #32768
 5662 002a 2046     		mov	r0, r4
 5663 002c FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 5664              	.LVL500:
 5665 0030 18B1     		cbz	r0, .L477
3353:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 5666              		.loc 1 3353 0
 5667 0032 636C     		ldr	r3, [r4, #68]
 5668 0034 43F02003 		orr	r3, r3, #32
 5669 0038 6364     		str	r3, [r4, #68]
 5670              	.L477:
3357:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 5671              		.loc 1 3357 0
 5672 003a 2268     		ldr	r2, [r4]
 5673 003c 1368     		ldr	r3, [r2]
 5674 003e 23F48043 		bic	r3, r3, #16384
 5675 0042 1360     		str	r3, [r2]
3359:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 5676              		.loc 1 3359 0
 5677 0044 0023     		movs	r3, #0
 5678 0046 6385     		strh	r3, [r4, #42]	@ movhi
3361:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 5679              		.loc 1 3361 0
 5680 0048 2023     		movs	r3, #32
 5681 004a 84F84130 		strb	r3, [r4, #65]
3364:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 5682              		.loc 1 3364 0
 5683 004e 636C     		ldr	r3, [r4, #68]
 5684 0050 33B9     		cbnz	r3, .L482
3370:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 5685              		.loc 1 3370 0
 5686 0052 2046     		mov	r0, r4
 5687 0054 FFF7FEFF 		bl	HAL_I2C_SlaveTxCpltCallback
 5688              	.LVL501:
 5689              	.L474:
3372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 5690              		.loc 1 3372 0
 5691 0058 10BD     		pop	{r4, pc}
 5692              	.LVL502:
 5693              	.L481:
3339:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 5694              		.loc 1 3339 0
 5695 005a 0023     		movs	r3, #0
 5696 005c 6364     		str	r3, [r4, #68]
 5697 005e DDE7     		b	.L475
 5698              	.L482:
3366:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 5699              		.loc 1 3366 0
 5700 0060 2046     		mov	r0, r4
 5701 0062 FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 5702              	.LVL503:
 5703 0066 F7E7     		b	.L474
 5704              		.cfi_endproc
 5705              	.LFE179:
 5707              		.section	.text.I2C_DMASlaveReceiveCplt,"ax",%progbits
 5708              		.align	1
 5709              		.syntax unified
 5710              		.thumb
 5711              		.thumb_func
 5712              		.fpu fpv5-d16
 5714              	I2C_DMASlaveReceiveCplt:
 5715              	.LFB181:
3543:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   I2C_HandleTypeDef* hi2c = (I2C_HandleTypeDef*)((DMA_HandleTypeDef*)hdma)->Parent;
 5716              		.loc 1 3543 0
 5717              		.cfi_startproc
 5718              		@ args = 0, pretend = 0, frame = 0
 5719              		@ frame_needed = 0, uses_anonymous_args = 0
 5720              	.LVL504:
 5721 0000 10B5     		push	{r4, lr}
 5722              		.cfi_def_cfa_offset 8
 5723              		.cfi_offset 4, -8
 5724              		.cfi_offset 14, -4
3544:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 5725              		.loc 1 3544 0
 5726 0002 846B     		ldr	r4, [r0, #56]
 5727              	.LVL505:
3547:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 5728              		.loc 1 3547 0
 5729 0004 1921     		movs	r1, #25
 5730 0006 2046     		mov	r0, r4
 5731              	.LVL506:
 5732 0008 FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 5733              	.LVL507:
 5734 000c 30B1     		cbz	r0, .L484
3549:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 5735              		.loc 1 3549 0
 5736 000e 636C     		ldr	r3, [r4, #68]
 5737 0010 042B     		cmp	r3, #4
 5738 0012 27D0     		beq	.L490
3555:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 5739              		.loc 1 3555 0
 5740 0014 636C     		ldr	r3, [r4, #68]
 5741 0016 43F02003 		orr	r3, r3, #32
 5742 001a 6364     		str	r3, [r4, #68]
 5743              	.L484:
3560:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 5744              		.loc 1 3560 0
 5745 001c 2368     		ldr	r3, [r4]
 5746 001e 2022     		movs	r2, #32
 5747 0020 DA61     		str	r2, [r3, #28]
3563:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 5748              		.loc 1 3563 0
 5749 0022 1923     		movs	r3, #25
 5750 0024 0122     		movs	r2, #1
 5751 0026 4FF40041 		mov	r1, #32768
 5752 002a 2046     		mov	r0, r4
 5753 002c FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 5754              	.LVL508:
 5755 0030 18B1     		cbz	r0, .L486
3565:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 5756              		.loc 1 3565 0
 5757 0032 636C     		ldr	r3, [r4, #68]
 5758 0034 43F02003 		orr	r3, r3, #32
 5759 0038 6364     		str	r3, [r4, #68]
 5760              	.L486:
3569:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 5761              		.loc 1 3569 0
 5762 003a 2268     		ldr	r2, [r4]
 5763 003c 1368     		ldr	r3, [r2]
 5764 003e 23F40043 		bic	r3, r3, #32768
 5765 0042 1360     		str	r3, [r2]
3572:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 5766              		.loc 1 3572 0
 5767 0044 2268     		ldr	r2, [r4]
 5768 0046 5368     		ldr	r3, [r2, #4]
 5769 0048 43F40043 		orr	r3, r3, #32768
 5770 004c 5360     		str	r3, [r2, #4]
3574:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 5771              		.loc 1 3574 0
 5772 004e 0023     		movs	r3, #0
 5773 0050 6385     		strh	r3, [r4, #42]	@ movhi
3576:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 5774              		.loc 1 3576 0
 5775 0052 2023     		movs	r3, #32
 5776 0054 84F84130 		strb	r3, [r4, #65]
3579:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 5777              		.loc 1 3579 0
 5778 0058 636C     		ldr	r3, [r4, #68]
 5779 005a 43B9     		cbnz	r3, .L491
3585:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 5780              		.loc 1 3585 0
 5781 005c 2046     		mov	r0, r4
 5782 005e FFF7FEFF 		bl	HAL_I2C_SlaveRxCpltCallback
 5783              	.LVL509:
 5784              	.L483:
3587:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 5785              		.loc 1 3587 0
 5786 0062 10BD     		pop	{r4, pc}
 5787              	.LVL510:
 5788              	.L490:
3551:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 5789              		.loc 1 3551 0
 5790 0064 636C     		ldr	r3, [r4, #68]
 5791 0066 43F00403 		orr	r3, r3, #4
 5792 006a 6364     		str	r3, [r4, #68]
 5793 006c D6E7     		b	.L484
 5794              	.L491:
3581:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 5795              		.loc 1 3581 0
 5796 006e 2046     		mov	r0, r4
 5797 0070 FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 5798              	.LVL511:
 5799 0074 F5E7     		b	.L483
 5800              		.cfi_endproc
 5801              	.LFE181:
 5803              		.section	.text.I2C_DMAMemTransmitCplt,"ax",%progbits
 5804              		.align	1
 5805              		.syntax unified
 5806              		.thumb
 5807              		.thumb_func
 5808              		.fpu fpv5-d16
 5810              	I2C_DMAMemTransmitCplt:
 5811              	.LFB182:
3595:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint16_t DevAddress;
 5812              		.loc 1 3595 0
 5813              		.cfi_startproc
 5814              		@ args = 0, pretend = 0, frame = 0
 5815              		@ frame_needed = 0, uses_anonymous_args = 0
 5816              	.LVL512:
 5817 0000 30B5     		push	{r4, r5, lr}
 5818              		.cfi_def_cfa_offset 12
 5819              		.cfi_offset 4, -12
 5820              		.cfi_offset 5, -8
 5821              		.cfi_offset 14, -4
 5822 0002 83B0     		sub	sp, sp, #12
 5823              		.cfi_def_cfa_offset 24
3597:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 5824              		.loc 1 3597 0
 5825 0004 846B     		ldr	r4, [r0, #56]
 5826              	.LVL513:
3601:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 5827              		.loc 1 3601 0
 5828 0006 238D     		ldrh	r3, [r4, #40]
 5829 0008 FF2B     		cmp	r3, #255
 5830 000a 03D1     		bne	.L493
3601:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 5831              		.loc 1 3601 0 is_stmt 0 discriminator 1
 5832 000c 628D     		ldrh	r2, [r4, #42]
 5833 000e 92B2     		uxth	r2, r2
 5834 0010 9342     		cmp	r3, r2
 5835 0012 2CD3     		bcc	.L510
 5836              	.L493:
3708:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 5837              		.loc 1 3708 0 is_stmt 1
 5838 0014 1921     		movs	r1, #25
 5839 0016 2046     		mov	r0, r4
 5840              	.LVL514:
 5841 0018 FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 5842              	.LVL515:
 5843 001c 38B1     		cbz	r0, .L506
3710:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 5844              		.loc 1 3710 0
 5845 001e 636C     		ldr	r3, [r4, #68]
 5846 0020 042B     		cmp	r3, #4
 5847 0022 00F0C580 		beq	.L511
3716:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 5848              		.loc 1 3716 0
 5849 0026 636C     		ldr	r3, [r4, #68]
 5850 0028 43F02003 		orr	r3, r3, #32
 5851 002c 6364     		str	r3, [r4, #68]
 5852              	.L506:
3721:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   	
 5853              		.loc 1 3721 0
 5854 002e 2368     		ldr	r3, [r4]
 5855 0030 2022     		movs	r2, #32
 5856 0032 DA61     		str	r2, [r3, #28]
3724:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 5857              		.loc 1 3724 0
 5858 0034 2168     		ldr	r1, [r4]
 5859 0036 4B68     		ldr	r3, [r1, #4]
 5860 0038 23F0FF73 		bic	r3, r3, #33423360
 5861 003c 23F48B33 		bic	r3, r3, #71168
 5862 0040 23F4FF73 		bic	r3, r3, #510
 5863 0044 23F00103 		bic	r3, r3, #1
 5864 0048 4B60     		str	r3, [r1, #4]
3727:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 5865              		.loc 1 3727 0
 5866 004a 2168     		ldr	r1, [r4]
 5867 004c 0B68     		ldr	r3, [r1]
 5868 004e 23F48043 		bic	r3, r3, #16384
 5869 0052 0B60     		str	r3, [r1]
3729:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 5870              		.loc 1 3729 0
 5871 0054 0023     		movs	r3, #0
 5872 0056 6385     		strh	r3, [r4, #42]	@ movhi
3731:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 5873              		.loc 1 3731 0
 5874 0058 84F84120 		strb	r2, [r4, #65]
3734:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 5875              		.loc 1 3734 0
 5876 005c 636C     		ldr	r3, [r4, #68]
 5877 005e 002B     		cmp	r3, #0
 5878 0060 40F0AB80 		bne	.L512
3740:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 5879              		.loc 1 3740 0
 5880 0064 2046     		mov	r0, r4
 5881 0066 FFF7FEFF 		bl	HAL_I2C_MemTxCpltCallback
 5882              	.LVL516:
 5883              	.L492:
3743:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 5884              		.loc 1 3743 0
 5885 006a 03B0     		add	sp, sp, #12
 5886              		.cfi_remember_state
 5887              		.cfi_def_cfa_offset 12
 5888              		@ sp needed
 5889 006c 30BD     		pop	{r4, r5, pc}
 5890              	.LVL517:
 5891              	.L510:
 5892              		.cfi_restore_state
3604:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 5893              		.loc 1 3604 0
 5894 006e 1923     		movs	r3, #25
 5895 0070 0022     		movs	r2, #0
 5896 0072 8021     		movs	r1, #128
 5897 0074 2046     		mov	r0, r4
 5898              	.LVL518:
 5899 0076 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 5900              	.LVL519:
 5901 007a 18B1     		cbz	r0, .L494
3606:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 5902              		.loc 1 3606 0
 5903 007c 636C     		ldr	r3, [r4, #68]
 5904 007e 43F02003 		orr	r3, r3, #32
 5905 0082 6364     		str	r3, [r4, #68]
 5906              	.L494:
3610:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 5907              		.loc 1 3610 0
 5908 0084 2268     		ldr	r2, [r4]
 5909 0086 1368     		ldr	r3, [r2]
 5910 0088 23F48043 		bic	r3, r3, #16384
 5911 008c 1360     		str	r3, [r2]
3613:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 5912              		.loc 1 3613 0
 5913 008e 636C     		ldr	r3, [r4, #68]
 5914 0090 002B     		cmp	r3, #0
 5915 0092 32D1     		bne	.L513
3642:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferCount -= hi2c->XferSize;
 5916              		.loc 1 3642 0
 5917 0094 228D     		ldrh	r2, [r4, #40]
 5918 0096 616A     		ldr	r1, [r4, #36]
 5919 0098 1144     		add	r1, r1, r2
 5920 009a 6162     		str	r1, [r4, #36]
3643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->XferCount > 255)
 5921              		.loc 1 3643 0
 5922 009c 638D     		ldrh	r3, [r4, #42]
 5923 009e 9B1A     		subs	r3, r3, r2
 5924 00a0 9BB2     		uxth	r3, r3
 5925 00a2 6385     		strh	r3, [r4, #42]	@ movhi
3644:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 5926              		.loc 1 3644 0
 5927 00a4 638D     		ldrh	r3, [r4, #42]
 5928 00a6 9BB2     		uxth	r3, r3
 5929 00a8 FF2B     		cmp	r3, #255
 5930 00aa 4DD9     		bls	.L499
3646:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 5931              		.loc 1 3646 0
 5932 00ac FF23     		movs	r3, #255
 5933 00ae 2385     		strh	r3, [r4, #40]	@ movhi
 5934              	.L500:
3653:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 5935              		.loc 1 3653 0
 5936 00b0 2268     		ldr	r2, [r4]
 5937 00b2 5568     		ldr	r5, [r2, #4]
 5938 00b4 C5F30905 		ubfx	r5, r5, #0, #10
 5939              	.LVL520:
3656:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 5940              		.loc 1 3656 0
 5941 00b8 238D     		ldrh	r3, [r4, #40]
 5942 00ba 2832     		adds	r2, r2, #40
 5943 00bc A06B     		ldr	r0, [r4, #56]
 5944 00be FFF7FEFF 		bl	HAL_DMA_Start_IT
 5945              	.LVL521:
3660:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 5946              		.loc 1 3660 0
 5947 00c2 228D     		ldrh	r2, [r4, #40]
 5948 00c4 FF2A     		cmp	r2, #255
 5949 00c6 03D1     		bne	.L501
3660:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 5950              		.loc 1 3660 0 is_stmt 0 discriminator 1
 5951 00c8 638D     		ldrh	r3, [r4, #42]
 5952 00ca 9BB2     		uxth	r3, r3
 5953 00cc 9A42     		cmp	r2, r3
 5954 00ce 3ED3     		bcc	.L514
 5955              	.L501:
3666:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }  
 5956              		.loc 1 3666 0 is_stmt 1
 5957 00d0 0023     		movs	r3, #0
 5958 00d2 0093     		str	r3, [sp]
 5959 00d4 4FF00073 		mov	r3, #33554432
 5960 00d8 D2B2     		uxtb	r2, r2
 5961 00da 2946     		mov	r1, r5
 5962 00dc 2046     		mov	r0, r4
 5963 00de FFF7FEFF 		bl	I2C_TransferConfig
 5964              	.LVL522:
 5965              	.L502:
3670:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 5966              		.loc 1 3670 0
 5967 00e2 1921     		movs	r1, #25
 5968 00e4 2046     		mov	r0, r4
 5969 00e6 FFF7FEFF 		bl	I2C_WaitOnTXISFlagUntilTimeout
 5970              	.LVL523:
 5971 00ea 0028     		cmp	r0, #0
 5972 00ec 39D1     		bne	.L515
3700:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 5973              		.loc 1 3700 0
 5974 00ee 2268     		ldr	r2, [r4]
 5975 00f0 1368     		ldr	r3, [r2]
 5976 00f2 43F48043 		orr	r3, r3, #16384
 5977 00f6 1360     		str	r3, [r2]
 5978 00f8 B7E7     		b	.L492
 5979              	.LVL524:
 5980              	.L513:
3617:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 5981              		.loc 1 3617 0
 5982 00fa 1921     		movs	r1, #25
 5983 00fc 2046     		mov	r0, r4
 5984 00fe FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 5985              	.LVL525:
 5986 0102 30B1     		cbz	r0, .L496
3619:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 5987              		.loc 1 3619 0
 5988 0104 636C     		ldr	r3, [r4, #68]
 5989 0106 042B     		cmp	r3, #4
 5990 0108 19D0     		beq	.L516
3625:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 5991              		.loc 1 3625 0
 5992 010a 636C     		ldr	r3, [r4, #68]
 5993 010c 43F02003 		orr	r3, r3, #32
 5994 0110 6364     		str	r3, [r4, #68]
 5995              	.L496:
3630:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 5996              		.loc 1 3630 0
 5997 0112 2368     		ldr	r3, [r4]
 5998 0114 2022     		movs	r2, #32
 5999 0116 DA61     		str	r2, [r3, #28]
3633:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 6000              		.loc 1 3633 0
 6001 0118 2168     		ldr	r1, [r4]
 6002 011a 4B68     		ldr	r3, [r1, #4]
 6003 011c 23F0FF73 		bic	r3, r3, #33423360
 6004 0120 23F48B33 		bic	r3, r3, #71168
 6005 0124 23F4FF73 		bic	r3, r3, #510
 6006 0128 23F00103 		bic	r3, r3, #1
 6007 012c 4B60     		str	r3, [r1, #4]
3635:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 6008              		.loc 1 3635 0
 6009 012e 0023     		movs	r3, #0
 6010 0130 6385     		strh	r3, [r4, #42]	@ movhi
3637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
 6011              		.loc 1 3637 0
 6012 0132 84F84120 		strb	r2, [r4, #65]
3638:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 6013              		.loc 1 3638 0
 6014 0136 2046     		mov	r0, r4
 6015 0138 FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 6016              	.LVL526:
 6017 013c 95E7     		b	.L492
 6018              	.L516:
3621:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 6019              		.loc 1 3621 0
 6020 013e 636C     		ldr	r3, [r4, #68]
 6021 0140 43F00403 		orr	r3, r3, #4
 6022 0144 6364     		str	r3, [r4, #68]
 6023 0146 E4E7     		b	.L496
 6024              	.L499:
3650:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 6025              		.loc 1 3650 0
 6026 0148 638D     		ldrh	r3, [r4, #42]
 6027 014a 2385     		strh	r3, [r4, #40]	@ movhi
 6028 014c B0E7     		b	.L500
 6029              	.LVL527:
 6030              	.L514:
3662:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 6031              		.loc 1 3662 0
 6032 014e 0023     		movs	r3, #0
 6033 0150 0093     		str	r3, [sp]
 6034 0152 4FF08073 		mov	r3, #16777216
 6035 0156 D2B2     		uxtb	r2, r2
 6036 0158 2946     		mov	r1, r5
 6037 015a 2046     		mov	r0, r4
 6038 015c FFF7FEFF 		bl	I2C_TransferConfig
 6039              	.LVL528:
 6040 0160 BFE7     		b	.L502
 6041              	.L515:
3674:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 6042              		.loc 1 3674 0
 6043 0162 1921     		movs	r1, #25
 6044 0164 2046     		mov	r0, r4
 6045 0166 FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 6046              	.LVL529:
 6047 016a 30B1     		cbz	r0, .L504
3676:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           {
 6048              		.loc 1 3676 0
 6049 016c 636C     		ldr	r3, [r4, #68]
 6050 016e 042B     		cmp	r3, #4
 6051 0170 19D0     		beq	.L517
3682:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           }
 6052              		.loc 1 3682 0
 6053 0172 636C     		ldr	r3, [r4, #68]
 6054 0174 43F02003 		orr	r3, r3, #32
 6055 0178 6364     		str	r3, [r4, #68]
 6056              	.L504:
3687:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 6057              		.loc 1 3687 0
 6058 017a 2368     		ldr	r3, [r4]
 6059 017c 2022     		movs	r2, #32
 6060 017e DA61     		str	r2, [r3, #28]
3690:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 6061              		.loc 1 3690 0
 6062 0180 2168     		ldr	r1, [r4]
 6063 0182 4B68     		ldr	r3, [r1, #4]
 6064 0184 23F0FF73 		bic	r3, r3, #33423360
 6065 0188 23F48B33 		bic	r3, r3, #71168
 6066 018c 23F4FF73 		bic	r3, r3, #510
 6067 0190 23F00103 		bic	r3, r3, #1
 6068 0194 4B60     		str	r3, [r1, #4]
3692:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 6069              		.loc 1 3692 0
 6070 0196 0023     		movs	r3, #0
 6071 0198 6385     		strh	r3, [r4, #42]	@ movhi
3694:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         HAL_I2C_ErrorCallback(hi2c);
 6072              		.loc 1 3694 0
 6073 019a 84F84120 		strb	r2, [r4, #65]
3695:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 6074              		.loc 1 3695 0
 6075 019e 2046     		mov	r0, r4
 6076 01a0 FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 6077              	.LVL530:
 6078 01a4 61E7     		b	.L492
 6079              	.L517:
3678:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           }
 6080              		.loc 1 3678 0
 6081 01a6 636C     		ldr	r3, [r4, #68]
 6082 01a8 43F00403 		orr	r3, r3, #4
 6083 01ac 6364     		str	r3, [r4, #68]
 6084 01ae E4E7     		b	.L504
 6085              	.LVL531:
 6086              	.L511:
3712:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 6087              		.loc 1 3712 0
 6088 01b0 636C     		ldr	r3, [r4, #68]
 6089 01b2 43F00403 		orr	r3, r3, #4
 6090 01b6 6364     		str	r3, [r4, #68]
 6091 01b8 39E7     		b	.L506
 6092              	.L512:
3736:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 6093              		.loc 1 3736 0
 6094 01ba 2046     		mov	r0, r4
 6095 01bc FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 6096              	.LVL532:
 6097 01c0 53E7     		b	.L492
 6098              		.cfi_endproc
 6099              	.LFE182:
 6101              		.section	.text.I2C_DMAMemReceiveCplt,"ax",%progbits
 6102              		.align	1
 6103              		.syntax unified
 6104              		.thumb
 6105              		.thumb_func
 6106              		.fpu fpv5-d16
 6108              	I2C_DMAMemReceiveCplt:
 6109              	.LFB183:
3751:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   I2C_HandleTypeDef* hi2c = ( I2C_HandleTypeDef* )((DMA_HandleTypeDef* )hdma)->Parent;  
 6110              		.loc 1 3751 0
 6111              		.cfi_startproc
 6112              		@ args = 0, pretend = 0, frame = 0
 6113              		@ frame_needed = 0, uses_anonymous_args = 0
 6114              	.LVL533:
 6115 0000 30B5     		push	{r4, r5, lr}
 6116              		.cfi_def_cfa_offset 12
 6117              		.cfi_offset 4, -12
 6118              		.cfi_offset 5, -8
 6119              		.cfi_offset 14, -4
 6120 0002 83B0     		sub	sp, sp, #12
 6121              		.cfi_def_cfa_offset 24
3752:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint16_t DevAddress;
 6122              		.loc 1 3752 0
 6123 0004 846B     		ldr	r4, [r0, #56]
 6124              	.LVL534:
3757:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 6125              		.loc 1 3757 0
 6126 0006 238D     		ldrh	r3, [r4, #40]
 6127 0008 FF2B     		cmp	r3, #255
 6128 000a 03D1     		bne	.L519
3757:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 6129              		.loc 1 3757 0 is_stmt 0 discriminator 1
 6130 000c 628D     		ldrh	r2, [r4, #42]
 6131 000e 92B2     		uxth	r2, r2
 6132 0010 9342     		cmp	r3, r2
 6133 0012 2CD3     		bcc	.L537
 6134              	.L519:
3870:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 6135              		.loc 1 3870 0 is_stmt 1
 6136 0014 1921     		movs	r1, #25
 6137 0016 2046     		mov	r0, r4
 6138              	.LVL535:
 6139 0018 FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 6140              	.LVL536:
 6141 001c 38B1     		cbz	r0, .L533
3872:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 6142              		.loc 1 3872 0
 6143 001e 636C     		ldr	r3, [r4, #68]
 6144 0020 042B     		cmp	r3, #4
 6145 0022 00F0CD80 		beq	.L538
3878:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 6146              		.loc 1 3878 0
 6147 0026 636C     		ldr	r3, [r4, #68]
 6148 0028 43F02003 		orr	r3, r3, #32
 6149 002c 6364     		str	r3, [r4, #68]
 6150              	.L533:
3883:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   	
 6151              		.loc 1 3883 0
 6152 002e 2368     		ldr	r3, [r4]
 6153 0030 2022     		movs	r2, #32
 6154 0032 DA61     		str	r2, [r3, #28]
3886:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6155              		.loc 1 3886 0
 6156 0034 2168     		ldr	r1, [r4]
 6157 0036 4B68     		ldr	r3, [r1, #4]
 6158 0038 23F0FF73 		bic	r3, r3, #33423360
 6159 003c 23F48B33 		bic	r3, r3, #71168
 6160 0040 23F4FF73 		bic	r3, r3, #510
 6161 0044 23F00103 		bic	r3, r3, #1
 6162 0048 4B60     		str	r3, [r1, #4]
3889:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6163              		.loc 1 3889 0
 6164 004a 2168     		ldr	r1, [r4]
 6165 004c 0B68     		ldr	r3, [r1]
 6166 004e 23F40043 		bic	r3, r3, #32768
 6167 0052 0B60     		str	r3, [r1]
3891:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6168              		.loc 1 3891 0
 6169 0054 0023     		movs	r3, #0
 6170 0056 6385     		strh	r3, [r4, #42]	@ movhi
3893:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6171              		.loc 1 3893 0
 6172 0058 84F84120 		strb	r2, [r4, #65]
3896:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 6173              		.loc 1 3896 0
 6174 005c 636C     		ldr	r3, [r4, #68]
 6175 005e 002B     		cmp	r3, #0
 6176 0060 40F0B380 		bne	.L539
3902:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 6177              		.loc 1 3902 0
 6178 0064 2046     		mov	r0, r4
 6179 0066 FFF7FEFF 		bl	HAL_I2C_MemRxCpltCallback
 6180              	.LVL537:
 6181              	.L518:
3905:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 6182              		.loc 1 3905 0
 6183 006a 03B0     		add	sp, sp, #12
 6184              		.cfi_remember_state
 6185              		.cfi_def_cfa_offset 12
 6186              		@ sp needed
 6187 006c 30BD     		pop	{r4, r5, pc}
 6188              	.LVL538:
 6189              	.L537:
 6190              		.cfi_restore_state
3760:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 6191              		.loc 1 3760 0
 6192 006e 1923     		movs	r3, #25
 6193 0070 0022     		movs	r2, #0
 6194 0072 8021     		movs	r1, #128
 6195 0074 2046     		mov	r0, r4
 6196              	.LVL539:
 6197 0076 FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 6198              	.LVL540:
 6199 007a 18B1     		cbz	r0, .L520
3762:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 6200              		.loc 1 3762 0
 6201 007c 636C     		ldr	r3, [r4, #68]
 6202 007e 43F02003 		orr	r3, r3, #32
 6203 0082 6364     		str	r3, [r4, #68]
 6204              	.L520:
3766:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6205              		.loc 1 3766 0
 6206 0084 2268     		ldr	r2, [r4]
 6207 0086 1368     		ldr	r3, [r2]
 6208 0088 23F40043 		bic	r3, r3, #32768
 6209 008c 1360     		str	r3, [r2]
3769:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 6210              		.loc 1 3769 0
 6211 008e 636C     		ldr	r3, [r4, #68]
 6212 0090 002B     		cmp	r3, #0
 6213 0092 3AD1     		bne	.L540
3798:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferCount -= hi2c->XferSize;
 6214              		.loc 1 3798 0
 6215 0094 218D     		ldrh	r1, [r4, #40]
 6216 0096 626A     		ldr	r2, [r4, #36]
 6217 0098 0A44     		add	r2, r2, r1
 6218 009a 6262     		str	r2, [r4, #36]
3799:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       if(hi2c->XferCount > 255)
 6219              		.loc 1 3799 0
 6220 009c 638D     		ldrh	r3, [r4, #42]
 6221 009e 5B1A     		subs	r3, r3, r1
 6222 00a0 9BB2     		uxth	r3, r3
 6223 00a2 6385     		strh	r3, [r4, #42]	@ movhi
3800:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 6224              		.loc 1 3800 0
 6225 00a4 638D     		ldrh	r3, [r4, #42]
 6226 00a6 9BB2     		uxth	r3, r3
 6227 00a8 FF2B     		cmp	r3, #255
 6228 00aa 55D9     		bls	.L525
3802:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 6229              		.loc 1 3802 0
 6230 00ac FF23     		movs	r3, #255
 6231 00ae 2385     		strh	r3, [r4, #40]	@ movhi
 6232              	.L526:
3809:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 6233              		.loc 1 3809 0
 6234 00b0 2168     		ldr	r1, [r4]
 6235 00b2 4D68     		ldr	r5, [r1, #4]
 6236 00b4 C5F30905 		ubfx	r5, r5, #0, #10
 6237              	.LVL541:
3812:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 6238              		.loc 1 3812 0
 6239 00b8 238D     		ldrh	r3, [r4, #40]
 6240 00ba 2431     		adds	r1, r1, #36
 6241 00bc E06B     		ldr	r0, [r4, #60]
 6242 00be FFF7FEFF 		bl	HAL_DMA_Start_IT
 6243              	.LVL542:
3816:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 6244              		.loc 1 3816 0
 6245 00c2 228D     		ldrh	r2, [r4, #40]
 6246 00c4 FF2A     		cmp	r2, #255
 6247 00c6 03D1     		bne	.L527
3816:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 6248              		.loc 1 3816 0 is_stmt 0 discriminator 1
 6249 00c8 638D     		ldrh	r3, [r4, #42]
 6250 00ca 9BB2     		uxth	r3, r3
 6251 00cc 9A42     		cmp	r2, r3
 6252 00ce 46D3     		bcc	.L541
 6253              	.L527:
3822:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }  
 6254              		.loc 1 3822 0 is_stmt 1
 6255 00d0 0023     		movs	r3, #0
 6256 00d2 0093     		str	r3, [sp]
 6257 00d4 4FF00073 		mov	r3, #33554432
 6258 00d8 D2B2     		uxtb	r2, r2
 6259 00da 2946     		mov	r1, r5
 6260 00dc 2046     		mov	r0, r4
 6261 00de FFF7FEFF 		bl	I2C_TransferConfig
 6262              	.LVL543:
 6263              	.L528:
3826:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 6264              		.loc 1 3826 0
 6265 00e2 1923     		movs	r3, #25
 6266 00e4 0022     		movs	r2, #0
 6267 00e6 0421     		movs	r1, #4
 6268 00e8 2046     		mov	r0, r4
 6269 00ea FFF7FEFF 		bl	I2C_WaitOnFlagUntilTimeout
 6270              	.LVL544:
 6271 00ee 18B1     		cbz	r0, .L529
3828:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 6272              		.loc 1 3828 0
 6273 00f0 636C     		ldr	r3, [r4, #68]
 6274 00f2 43F02003 		orr	r3, r3, #32
 6275 00f6 6364     		str	r3, [r4, #68]
 6276              	.L529:
3832:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 6277              		.loc 1 3832 0
 6278 00f8 636C     		ldr	r3, [r4, #68]
 6279 00fa 002B     		cmp	r3, #0
 6280 00fc 39D1     		bne	.L542
3862:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 6281              		.loc 1 3862 0
 6282 00fe 2268     		ldr	r2, [r4]
 6283 0100 1368     		ldr	r3, [r2]
 6284 0102 43F40043 		orr	r3, r3, #32768
 6285 0106 1360     		str	r3, [r2]
 6286 0108 AFE7     		b	.L518
 6287              	.LVL545:
 6288              	.L540:
3773:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 6289              		.loc 1 3773 0
 6290 010a 1921     		movs	r1, #25
 6291 010c 2046     		mov	r0, r4
 6292 010e FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 6293              	.LVL546:
 6294 0112 30B1     		cbz	r0, .L522
3775:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 6295              		.loc 1 3775 0
 6296 0114 636C     		ldr	r3, [r4, #68]
 6297 0116 042B     		cmp	r3, #4
 6298 0118 19D0     		beq	.L543
3781:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 6299              		.loc 1 3781 0
 6300 011a 636C     		ldr	r3, [r4, #68]
 6301 011c 43F02003 		orr	r3, r3, #32
 6302 0120 6364     		str	r3, [r4, #68]
 6303              	.L522:
3786:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 6304              		.loc 1 3786 0
 6305 0122 2368     		ldr	r3, [r4]
 6306 0124 2022     		movs	r2, #32
 6307 0126 DA61     		str	r2, [r3, #28]
3789:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 6308              		.loc 1 3789 0
 6309 0128 2168     		ldr	r1, [r4]
 6310 012a 4B68     		ldr	r3, [r1, #4]
 6311 012c 23F0FF73 		bic	r3, r3, #33423360
 6312 0130 23F48B33 		bic	r3, r3, #71168
 6313 0134 23F4FF73 		bic	r3, r3, #510
 6314 0138 23F00103 		bic	r3, r3, #1
 6315 013c 4B60     		str	r3, [r1, #4]
3791:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 6316              		.loc 1 3791 0
 6317 013e 0023     		movs	r3, #0
 6318 0140 6385     		strh	r3, [r4, #42]	@ movhi
3793:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
 6319              		.loc 1 3793 0
 6320 0142 84F84120 		strb	r2, [r4, #65]
3794:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 6321              		.loc 1 3794 0
 6322 0146 2046     		mov	r0, r4
 6323 0148 FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 6324              	.LVL547:
 6325 014c 8DE7     		b	.L518
 6326              	.L543:
3777:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         }
 6327              		.loc 1 3777 0
 6328 014e 636C     		ldr	r3, [r4, #68]
 6329 0150 43F00403 		orr	r3, r3, #4
 6330 0154 6364     		str	r3, [r4, #68]
 6331 0156 E4E7     		b	.L522
 6332              	.L525:
3806:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 6333              		.loc 1 3806 0
 6334 0158 638D     		ldrh	r3, [r4, #42]
 6335 015a 2385     		strh	r3, [r4, #40]	@ movhi
 6336 015c A8E7     		b	.L526
 6337              	.LVL548:
 6338              	.L541:
3818:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 6339              		.loc 1 3818 0
 6340 015e 0023     		movs	r3, #0
 6341 0160 0093     		str	r3, [sp]
 6342 0162 4FF08073 		mov	r3, #16777216
 6343 0166 D2B2     		uxtb	r2, r2
 6344 0168 2946     		mov	r1, r5
 6345 016a 2046     		mov	r0, r4
 6346 016c FFF7FEFF 		bl	I2C_TransferConfig
 6347              	.LVL549:
 6348 0170 B7E7     		b	.L528
 6349              	.L542:
3836:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         {
 6350              		.loc 1 3836 0
 6351 0172 1921     		movs	r1, #25
 6352 0174 2046     		mov	r0, r4
 6353 0176 FFF7FEFF 		bl	I2C_WaitOnSTOPFlagUntilTimeout
 6354              	.LVL550:
 6355 017a 30B1     		cbz	r0, .L531
3838:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           {
 6356              		.loc 1 3838 0
 6357 017c 636C     		ldr	r3, [r4, #68]
 6358 017e 042B     		cmp	r3, #4
 6359 0180 19D0     		beq	.L544
3844:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           }
 6360              		.loc 1 3844 0
 6361 0182 636C     		ldr	r3, [r4, #68]
 6362 0184 43F02003 		orr	r3, r3, #32
 6363 0188 6364     		str	r3, [r4, #68]
 6364              	.L531:
3849:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 6365              		.loc 1 3849 0
 6366 018a 2368     		ldr	r3, [r4]
 6367 018c 2022     		movs	r2, #32
 6368 018e DA61     		str	r2, [r3, #28]
3852:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 6369              		.loc 1 3852 0
 6370 0190 2168     		ldr	r1, [r4]
 6371 0192 4B68     		ldr	r3, [r1, #4]
 6372 0194 23F0FF73 		bic	r3, r3, #33423360
 6373 0198 23F48B33 		bic	r3, r3, #71168
 6374 019c 23F4FF73 		bic	r3, r3, #510
 6375 01a0 23F00103 		bic	r3, r3, #1
 6376 01a4 4B60     		str	r3, [r1, #4]
3854:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 6377              		.loc 1 3854 0
 6378 01a6 0023     		movs	r3, #0
 6379 01a8 6385     		strh	r3, [r4, #42]	@ movhi
3856:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         HAL_I2C_ErrorCallback(hi2c);
 6380              		.loc 1 3856 0
 6381 01aa 84F84120 		strb	r2, [r4, #65]
3857:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 6382              		.loc 1 3857 0
 6383 01ae 2046     		mov	r0, r4
 6384 01b0 FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 6385              	.LVL551:
 6386 01b4 59E7     		b	.L518
 6387              	.L544:
3840:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****           }
 6388              		.loc 1 3840 0
 6389 01b6 636C     		ldr	r3, [r4, #68]
 6390 01b8 43F00403 		orr	r3, r3, #4
 6391 01bc 6364     		str	r3, [r4, #68]
 6392 01be E4E7     		b	.L531
 6393              	.LVL552:
 6394              	.L538:
3874:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 6395              		.loc 1 3874 0
 6396 01c0 636C     		ldr	r3, [r4, #68]
 6397 01c2 43F00403 		orr	r3, r3, #4
 6398 01c6 6364     		str	r3, [r4, #68]
 6399 01c8 31E7     		b	.L533
 6400              	.L539:
3898:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 6401              		.loc 1 3898 0
 6402 01ca 2046     		mov	r0, r4
 6403 01cc FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 6404              	.LVL553:
 6405 01d0 4BE7     		b	.L518
 6406              		.cfi_endproc
 6407              	.LFE183:
 6409              		.section	.text.I2C_SlaveTransmit_ISR,"ax",%progbits
 6410              		.align	1
 6411              		.syntax unified
 6412              		.thumb
 6413              		.thumb_func
 6414              		.fpu fpv5-d16
 6416              	I2C_SlaveTransmit_ISR:
 6417              	.LFB174:
2899:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Process locked */
 6418              		.loc 1 2899 0
 6419              		.cfi_startproc
 6420              		@ args = 0, pretend = 0, frame = 0
 6421              		@ frame_needed = 0, uses_anonymous_args = 0
 6422              	.LVL554:
2901:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 6423              		.loc 1 2901 0
 6424 0000 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 6425 0004 012B     		cmp	r3, #1
 6426 0006 4FD0     		beq	.L552
2899:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Process locked */
 6427              		.loc 1 2899 0 discriminator 2
 6428 0008 10B5     		push	{r4, lr}
 6429              		.cfi_def_cfa_offset 8
 6430              		.cfi_offset 4, -8
 6431              		.cfi_offset 14, -4
 6432 000a 0446     		mov	r4, r0
2901:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 6433              		.loc 1 2901 0 discriminator 2
 6434 000c 0123     		movs	r3, #1
 6435 000e 80F84030 		strb	r3, [r0, #64]
2903:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 6436              		.loc 1 2903 0 discriminator 2
 6437 0012 0368     		ldr	r3, [r0]
 6438 0014 9A69     		ldr	r2, [r3, #24]
 6439 0016 12F0100F 		tst	r2, #16
 6440 001a 14D0     		beq	.L547
2909:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 6441              		.loc 1 2909 0
 6442 001c 428D     		ldrh	r2, [r0, #42]
 6443 001e 92B2     		uxth	r2, r2
 6444 0020 2AB9     		cbnz	r2, .L548
2912:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 6445              		.loc 1 2912 0
 6446 0022 1022     		movs	r2, #16
 6447 0024 DA61     		str	r2, [r3, #28]
 6448              	.LVL555:
 6449              	.L549:
2973:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 6450              		.loc 1 2973 0
 6451 0026 0020     		movs	r0, #0
 6452 0028 84F84000 		strb	r0, [r4, #64]
2976:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 6453              		.loc 1 2976 0
 6454 002c 10BD     		pop	{r4, pc}
 6455              	.LVL556:
 6456              	.L548:
2921:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 6457              		.loc 1 2921 0
 6458 002e 1022     		movs	r2, #16
 6459 0030 DA61     		str	r2, [r3, #28]
2924:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 6460              		.loc 1 2924 0
 6461 0032 436C     		ldr	r3, [r0, #68]
 6462 0034 43F00403 		orr	r3, r3, #4
 6463 0038 4364     		str	r3, [r0, #68]
2927:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 6464              		.loc 1 2927 0
 6465 003a 0023     		movs	r3, #0
 6466 003c 80F84030 		strb	r3, [r0, #64]
2930:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 6467              		.loc 1 2930 0
 6468 0040 FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 6469              	.LVL557:
 6470 0044 EFE7     		b	.L549
 6471              	.LVL558:
 6472              	.L547:
2933:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 6473              		.loc 1 2933 0
 6474 0046 9A69     		ldr	r2, [r3, #24]
 6475 0048 12F0080F 		tst	r2, #8
 6476 004c 02D0     		beq	.L550
2936:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 6477              		.loc 1 2936 0
 6478 004e 0822     		movs	r2, #8
 6479 0050 DA61     		str	r2, [r3, #28]
 6480 0052 E8E7     		b	.L549
 6481              	.L550:
2942:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 6482              		.loc 1 2942 0
 6483 0054 9A69     		ldr	r2, [r3, #24]
 6484 0056 12F0200F 		tst	r2, #32
 6485 005a 11D1     		bne	.L557
2960:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 6486              		.loc 1 2960 0
 6487 005c 9A69     		ldr	r2, [r3, #24]
 6488 005e 12F0020F 		tst	r2, #2
 6489 0062 E0D0     		beq	.L549
2964:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 6490              		.loc 1 2964 0
 6491 0064 428D     		ldrh	r2, [r0, #42]
 6492 0066 92B2     		uxth	r2, r2
 6493 0068 002A     		cmp	r2, #0
 6494 006a DCD0     		beq	.L549
2967:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       hi2c->XferCount--;
 6495              		.loc 1 2967 0
 6496 006c 426A     		ldr	r2, [r0, #36]
 6497 006e 511C     		adds	r1, r2, #1
 6498 0070 4162     		str	r1, [r0, #36]
 6499 0072 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 6500 0074 9A62     		str	r2, [r3, #40]
2968:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 6501              		.loc 1 2968 0
 6502 0076 438D     		ldrh	r3, [r0, #42]
 6503 0078 013B     		subs	r3, r3, #1
 6504 007a 9BB2     		uxth	r3, r3
 6505 007c 4385     		strh	r3, [r0, #42]	@ movhi
 6506 007e D2E7     		b	.L549
 6507              	.L557:
2945:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6508              		.loc 1 2945 0
 6509 0080 1A68     		ldr	r2, [r3]
 6510 0082 22F0FE02 		bic	r2, r2, #254
 6511 0086 1A60     		str	r2, [r3]
2948:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6512              		.loc 1 2948 0
 6513 0088 0268     		ldr	r2, [r0]
 6514 008a 5368     		ldr	r3, [r2, #4]
 6515 008c 43F40043 		orr	r3, r3, #32768
 6516 0090 5360     		str	r3, [r2, #4]
2951:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6517              		.loc 1 2951 0
 6518 0092 0268     		ldr	r2, [r0]
 6519 0094 2023     		movs	r3, #32
 6520 0096 D361     		str	r3, [r2, #28]
2953:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6521              		.loc 1 2953 0
 6522 0098 80F84130 		strb	r3, [r0, #65]
2956:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6523              		.loc 1 2956 0
 6524 009c 0023     		movs	r3, #0
 6525 009e 80F84030 		strb	r3, [r0, #64]
2958:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 6526              		.loc 1 2958 0
 6527 00a2 FFF7FEFF 		bl	HAL_I2C_SlaveTxCpltCallback
 6528              	.LVL559:
 6529 00a6 BEE7     		b	.L549
 6530              	.LVL560:
 6531              	.L552:
 6532              		.cfi_def_cfa_offset 0
 6533              		.cfi_restore 4
 6534              		.cfi_restore 14
2901:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 6535              		.loc 1 2901 0
 6536 00a8 0220     		movs	r0, #2
 6537              	.LVL561:
2976:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 6538              		.loc 1 2976 0
 6539 00aa 7047     		bx	lr
 6540              		.cfi_endproc
 6541              	.LFE174:
 6543              		.section	.text.I2C_MasterTransmit_ISR,"ax",%progbits
 6544              		.align	1
 6545              		.syntax unified
 6546              		.thumb
 6547              		.thumb_func
 6548              		.fpu fpv5-d16
 6550              	I2C_MasterTransmit_ISR:
 6551              	.LFB172:
2626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint16_t DevAddress;
 6552              		.loc 1 2626 0
 6553              		.cfi_startproc
 6554              		@ args = 0, pretend = 0, frame = 0
 6555              		@ frame_needed = 0, uses_anonymous_args = 0
 6556              	.LVL562:
2630:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 6557              		.loc 1 2630 0
 6558 0000 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 6559 0004 012B     		cmp	r3, #1
 6560 0006 00F0C280 		beq	.L572
2626:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint16_t DevAddress;
 6561              		.loc 1 2626 0 discriminator 2
 6562 000a 10B5     		push	{r4, lr}
 6563              		.cfi_def_cfa_offset 8
 6564              		.cfi_offset 4, -8
 6565              		.cfi_offset 14, -4
 6566 000c 82B0     		sub	sp, sp, #8
 6567              		.cfi_def_cfa_offset 16
 6568 000e 0446     		mov	r4, r0
2630:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 6569              		.loc 1 2630 0 discriminator 2
 6570 0010 0123     		movs	r3, #1
 6571 0012 80F84030 		strb	r3, [r0, #64]
2632:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 6572              		.loc 1 2632 0 discriminator 2
 6573 0016 0368     		ldr	r3, [r0]
 6574 0018 9A69     		ldr	r2, [r3, #24]
 6575 001a 12F0020F 		tst	r2, #2
 6576 001e 10D0     		beq	.L560
2635:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferSize--;
 6577              		.loc 1 2635 0
 6578 0020 426A     		ldr	r2, [r0, #36]
 6579 0022 511C     		adds	r1, r2, #1
 6580 0024 4162     		str	r1, [r0, #36]
 6581 0026 1278     		ldrb	r2, [r2]	@ zero_extendqisi2
 6582 0028 9A62     		str	r2, [r3, #40]
2636:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount--;	
 6583              		.loc 1 2636 0
 6584 002a 038D     		ldrh	r3, [r0, #40]
 6585 002c 013B     		subs	r3, r3, #1
 6586 002e 0385     		strh	r3, [r0, #40]	@ movhi
2637:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 6587              		.loc 1 2637 0
 6588 0030 438D     		ldrh	r3, [r0, #42]
 6589 0032 013B     		subs	r3, r3, #1
 6590 0034 9BB2     		uxth	r3, r3
 6591 0036 4385     		strh	r3, [r0, #42]	@ movhi
 6592              	.LVL563:
 6593              	.L561:
2753:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 6594              		.loc 1 2753 0
 6595 0038 0020     		movs	r0, #0
 6596 003a 84F84000 		strb	r0, [r4, #64]
2756:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 6597              		.loc 1 2756 0
 6598 003e 02B0     		add	sp, sp, #8
 6599              		.cfi_remember_state
 6600              		.cfi_def_cfa_offset 8
 6601              		@ sp needed
 6602 0040 10BD     		pop	{r4, pc}
 6603              	.LVL564:
 6604              	.L560:
 6605              		.cfi_restore_state
2639:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 6606              		.loc 1 2639 0
 6607 0042 9A69     		ldr	r2, [r3, #24]
 6608 0044 12F0800F 		tst	r2, #128
 6609 0048 2BD0     		beq	.L562
2641:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 6610              		.loc 1 2641 0
 6611 004a 028D     		ldrh	r2, [r0, #40]
 6612 004c F2B9     		cbnz	r2, .L563
2641:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 6613              		.loc 1 2641 0 is_stmt 0 discriminator 1
 6614 004e 428D     		ldrh	r2, [r0, #42]
 6615 0050 92B2     		uxth	r2, r2
 6616 0052 DAB1     		cbz	r2, .L563
2643:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 6617              		.loc 1 2643 0 is_stmt 1
 6618 0054 5968     		ldr	r1, [r3, #4]
 6619 0056 C1F30901 		ubfx	r1, r1, #0, #10
 6620              	.LVL565:
2645:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {    
 6621              		.loc 1 2645 0
 6622 005a 438D     		ldrh	r3, [r0, #42]
 6623 005c 9BB2     		uxth	r3, r3
 6624 005e FF2B     		cmp	r3, #255
 6625 0060 09D9     		bls	.L564
2647:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferSize = 255;
 6626              		.loc 1 2647 0
 6627 0062 0023     		movs	r3, #0
 6628 0064 0093     		str	r3, [sp]
 6629 0066 4FF08073 		mov	r3, #16777216
 6630 006a FF22     		movs	r2, #255
 6631 006c FFF7FEFF 		bl	I2C_TransferConfig
 6632              	.LVL566:
2648:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 6633              		.loc 1 2648 0
 6634 0070 FF23     		movs	r3, #255
 6635 0072 2385     		strh	r3, [r4, #40]	@ movhi
 6636 0074 E0E7     		b	.L561
 6637              	.LVL567:
 6638              	.L564:
2652:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferSize = hi2c->XferCount;
 6639              		.loc 1 2652 0
 6640 0076 428D     		ldrh	r2, [r0, #42]
 6641 0078 0023     		movs	r3, #0
 6642 007a 0093     		str	r3, [sp]
 6643 007c 4FF00073 		mov	r3, #33554432
 6644 0080 D2B2     		uxtb	r2, r2
 6645 0082 FFF7FEFF 		bl	I2C_TransferConfig
 6646              	.LVL568:
2653:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 6647              		.loc 1 2653 0
 6648 0086 638D     		ldrh	r3, [r4, #42]
 6649 0088 2385     		strh	r3, [r4, #40]	@ movhi
 6650 008a D5E7     		b	.L561
 6651              	.LVL569:
 6652              	.L563:
2659:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 6653              		.loc 1 2659 0
 6654 008c 0023     		movs	r3, #0
 6655 008e 84F84030 		strb	r3, [r4, #64]
2662:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
 6656              		.loc 1 2662 0
 6657 0092 636C     		ldr	r3, [r4, #68]
 6658 0094 43F04003 		orr	r3, r3, #64
 6659 0098 6364     		str	r3, [r4, #68]
2663:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 6660              		.loc 1 2663 0
 6661 009a 2046     		mov	r0, r4
 6662              	.LVL570:
 6663 009c FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 6664              	.LVL571:
 6665 00a0 CAE7     		b	.L561
 6666              	.LVL572:
 6667              	.L562:
2666:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 6668              		.loc 1 2666 0
 6669 00a2 9A69     		ldr	r2, [r3, #24]
 6670 00a4 12F0400F 		tst	r2, #64
 6671 00a8 11D0     		beq	.L565
2668:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 6672              		.loc 1 2668 0
 6673 00aa 428D     		ldrh	r2, [r0, #42]
 6674 00ac 92B2     		uxth	r2, r2
 6675 00ae 22B9     		cbnz	r2, .L566
2671:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 6676              		.loc 1 2671 0
 6677 00b0 5A68     		ldr	r2, [r3, #4]
 6678 00b2 42F48042 		orr	r2, r2, #16384
 6679 00b6 5A60     		str	r2, [r3, #4]
 6680 00b8 BEE7     		b	.L561
 6681              	.L566:
2676:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 6682              		.loc 1 2676 0
 6683 00ba 0023     		movs	r3, #0
 6684 00bc 80F84030 		strb	r3, [r0, #64]
2679:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
 6685              		.loc 1 2679 0
 6686 00c0 436C     		ldr	r3, [r0, #68]
 6687 00c2 43F04003 		orr	r3, r3, #64
 6688 00c6 4364     		str	r3, [r0, #68]
2680:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 6689              		.loc 1 2680 0
 6690 00c8 FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 6691              	.LVL573:
 6692 00cc B4E7     		b	.L561
 6693              	.LVL574:
 6694              	.L565:
2683:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 6695              		.loc 1 2683 0
 6696 00ce 9A69     		ldr	r2, [r3, #24]
 6697 00d0 12F0200F 		tst	r2, #32
 6698 00d4 4AD0     		beq	.L567
2685:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 6699              		.loc 1 2685 0
 6700 00d6 9A69     		ldr	r2, [r3, #24]
 6701 00d8 12F0100F 		tst	r2, #16
 6702 00dc 05D0     		beq	.L568
2688:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 6703              		.loc 1 2688 0
 6704 00de 1022     		movs	r2, #16
 6705 00e0 DA61     		str	r2, [r3, #28]
2690:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 6706              		.loc 1 2690 0
 6707 00e2 436C     		ldr	r3, [r0, #68]
 6708 00e4 43F00403 		orr	r3, r3, #4
 6709 00e8 4364     		str	r3, [r0, #68]
 6710              	.L568:
2694:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6711              		.loc 1 2694 0
 6712 00ea 2268     		ldr	r2, [r4]
 6713 00ec 1368     		ldr	r3, [r2]
 6714 00ee 23F0F203 		bic	r3, r3, #242
 6715 00f2 1360     		str	r3, [r2]
2697:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6716              		.loc 1 2697 0
 6717 00f4 2368     		ldr	r3, [r4]
 6718 00f6 2022     		movs	r2, #32
 6719 00f8 DA61     		str	r2, [r3, #28]
2700:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6720              		.loc 1 2700 0
 6721 00fa 2268     		ldr	r2, [r4]
 6722 00fc 5368     		ldr	r3, [r2, #4]
 6723 00fe 23F0FF73 		bic	r3, r3, #33423360
 6724 0102 23F48B33 		bic	r3, r3, #71168
 6725 0106 23F4FF73 		bic	r3, r3, #510
 6726 010a 23F00103 		bic	r3, r3, #1
 6727 010e 5360     		str	r3, [r2, #4]
2703:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 6728              		.loc 1 2703 0
 6729 0110 2368     		ldr	r3, [r4]
 6730 0112 9A69     		ldr	r2, [r3, #24]
 6731 0114 12F0010F 		tst	r2, #1
 6732 0118 03D1     		bne	.L569
2705:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 6733              		.loc 1 2705 0
 6734 011a 9A69     		ldr	r2, [r3, #24]
 6735 011c 42F00102 		orr	r2, r2, #1
 6736 0120 9A61     		str	r2, [r3, #24]
 6737              	.L569:
2709:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 6738              		.loc 1 2709 0
 6739 0122 636C     		ldr	r3, [r4, #68]
 6740 0124 73B9     		cbnz	r3, .L577
2720:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 6741              		.loc 1 2720 0
 6742 0126 94F84130 		ldrb	r3, [r4, #65]	@ zero_extendqisi2
 6743 012a DBB2     		uxtb	r3, r3
 6744 012c 212B     		cmp	r3, #33
 6745 012e 13D0     		beq	.L578
2731:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 6746              		.loc 1 2731 0
 6747 0130 2023     		movs	r3, #32
 6748 0132 84F84130 		strb	r3, [r4, #65]
2734:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 6749              		.loc 1 2734 0
 6750 0136 0023     		movs	r3, #0
 6751 0138 84F84030 		strb	r3, [r4, #64]
2736:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 6752              		.loc 1 2736 0
 6753 013c 2046     		mov	r0, r4
 6754              	.LVL575:
 6755 013e FFF7FEFF 		bl	HAL_I2C_MasterTxCpltCallback
 6756              	.LVL576:
 6757 0142 79E7     		b	.L561
 6758              	.LVL577:
 6759              	.L577:
2711:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 6760              		.loc 1 2711 0
 6761 0144 2023     		movs	r3, #32
 6762 0146 84F84130 		strb	r3, [r4, #65]
2714:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 6763              		.loc 1 2714 0
 6764 014a 0023     		movs	r3, #0
 6765 014c 84F84030 		strb	r3, [r4, #64]
2716:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 6766              		.loc 1 2716 0
 6767 0150 2046     		mov	r0, r4
 6768              	.LVL578:
 6769 0152 FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 6770              	.LVL579:
 6771 0156 6FE7     		b	.L561
 6772              	.LVL580:
 6773              	.L578:
2722:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 6774              		.loc 1 2722 0
 6775 0158 2023     		movs	r3, #32
 6776 015a 84F84130 		strb	r3, [r4, #65]
2725:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 6777              		.loc 1 2725 0
 6778 015e 0023     		movs	r3, #0
 6779 0160 84F84030 		strb	r3, [r4, #64]
2727:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 6780              		.loc 1 2727 0
 6781 0164 2046     		mov	r0, r4
 6782              	.LVL581:
 6783 0166 FFF7FEFF 		bl	HAL_I2C_MemTxCpltCallback
 6784              	.LVL582:
 6785 016a 65E7     		b	.L561
 6786              	.LVL583:
 6787              	.L567:
2740:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 6788              		.loc 1 2740 0
 6789 016c 9A69     		ldr	r2, [r3, #24]
 6790 016e 12F0100F 		tst	r2, #16
 6791 0172 3FF461AF 		beq	.L561
2743:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6792              		.loc 1 2743 0
 6793 0176 1022     		movs	r2, #16
 6794 0178 DA61     		str	r2, [r3, #28]
2746:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6795              		.loc 1 2746 0
 6796 017a 0023     		movs	r3, #0
 6797 017c 80F84030 		strb	r3, [r0, #64]
2748:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_I2C_ErrorCallback(hi2c);
 6798              		.loc 1 2748 0
 6799 0180 436C     		ldr	r3, [r0, #68]
 6800 0182 43F00403 		orr	r3, r3, #4
 6801 0186 4364     		str	r3, [r0, #68]
2749:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 6802              		.loc 1 2749 0
 6803 0188 FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 6804              	.LVL584:
 6805 018c 54E7     		b	.L561
 6806              	.LVL585:
 6807              	.L572:
 6808              		.cfi_def_cfa_offset 0
 6809              		.cfi_restore 4
 6810              		.cfi_restore 14
2630:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 6811              		.loc 1 2630 0
 6812 018e 0220     		movs	r0, #2
 6813              	.LVL586:
2756:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 6814              		.loc 1 2756 0
 6815 0190 7047     		bx	lr
 6816              		.cfi_endproc
 6817              	.LFE172:
 6819              		.section	.text.I2C_SlaveReceive_ISR,"ax",%progbits
 6820              		.align	1
 6821              		.syntax unified
 6822              		.thumb
 6823              		.thumb_func
 6824              		.fpu fpv5-d16
 6826              	I2C_SlaveReceive_ISR:
 6827              	.LFB175:
2985:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Process Locked */
 6828              		.loc 1 2985 0
 6829              		.cfi_startproc
 6830              		@ args = 0, pretend = 0, frame = 0
 6831              		@ frame_needed = 0, uses_anonymous_args = 0
 6832              	.LVL587:
2987:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 6833              		.loc 1 2987 0
 6834 0000 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 6835 0004 012B     		cmp	r3, #1
 6836 0006 48D0     		beq	.L585
2985:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* Process Locked */
 6837              		.loc 1 2985 0 discriminator 2
 6838 0008 10B5     		push	{r4, lr}
 6839              		.cfi_def_cfa_offset 8
 6840              		.cfi_offset 4, -8
 6841              		.cfi_offset 14, -4
 6842 000a 0446     		mov	r4, r0
2987:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 6843              		.loc 1 2987 0 discriminator 2
 6844 000c 0123     		movs	r3, #1
 6845 000e 80F84030 		strb	r3, [r0, #64]
2989:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 6846              		.loc 1 2989 0 discriminator 2
 6847 0012 0368     		ldr	r3, [r0]
 6848 0014 9A69     		ldr	r2, [r3, #24]
 6849 0016 12F0100F 		tst	r2, #16
 6850 001a 09D1     		bne	.L590
3000:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 6851              		.loc 1 3000 0
 6852 001c 9A69     		ldr	r2, [r3, #24]
 6853 001e 12F0080F 		tst	r2, #8
 6854 0022 11D0     		beq	.L583
3003:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 6855              		.loc 1 3003 0
 6856 0024 0822     		movs	r2, #8
 6857 0026 DA61     		str	r2, [r3, #28]
 6858              	.LVL588:
 6859              	.L582:
3032:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 6860              		.loc 1 3032 0
 6861 0028 0020     		movs	r0, #0
 6862 002a 84F84000 		strb	r0, [r4, #64]
3035:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 6863              		.loc 1 3035 0
 6864 002e 10BD     		pop	{r4, pc}
 6865              	.LVL589:
 6866              	.L590:
2992:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6867              		.loc 1 2992 0
 6868 0030 1022     		movs	r2, #16
 6869 0032 DA61     		str	r2, [r3, #28]
2995:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6870              		.loc 1 2995 0
 6871 0034 0023     		movs	r3, #0
 6872 0036 80F84030 		strb	r3, [r0, #64]
2997:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_I2C_ErrorCallback(hi2c);
 6873              		.loc 1 2997 0
 6874 003a 436C     		ldr	r3, [r0, #68]
 6875 003c 43F00403 		orr	r3, r3, #4
 6876 0040 4364     		str	r3, [r0, #68]
2998:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 6877              		.loc 1 2998 0
 6878 0042 FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 6879              	.LVL590:
 6880 0046 EFE7     		b	.L582
 6881              	.LVL591:
 6882              	.L583:
3005:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 6883              		.loc 1 3005 0
 6884 0048 9A69     		ldr	r2, [r3, #24]
 6885 004a 12F0040F 		tst	r2, #4
 6886 004e 0CD0     		beq	.L584
3008:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferSize--;
 6887              		.loc 1 3008 0
 6888 0050 5A6A     		ldr	r2, [r3, #36]
 6889 0052 436A     		ldr	r3, [r0, #36]
 6890 0054 591C     		adds	r1, r3, #1
 6891 0056 4162     		str	r1, [r0, #36]
 6892 0058 1A70     		strb	r2, [r3]
3009:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount--;
 6893              		.loc 1 3009 0
 6894 005a 038D     		ldrh	r3, [r0, #40]
 6895 005c 013B     		subs	r3, r3, #1
 6896 005e 0385     		strh	r3, [r0, #40]	@ movhi
3010:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 6897              		.loc 1 3010 0
 6898 0060 438D     		ldrh	r3, [r0, #42]
 6899 0062 013B     		subs	r3, r3, #1
 6900 0064 9BB2     		uxth	r3, r3
 6901 0066 4385     		strh	r3, [r0, #42]	@ movhi
 6902 0068 DEE7     		b	.L582
 6903              	.L584:
3012:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 6904              		.loc 1 3012 0
 6905 006a 9A69     		ldr	r2, [r3, #24]
 6906 006c 12F0200F 		tst	r2, #32
 6907 0070 DAD0     		beq	.L582
3015:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6908              		.loc 1 3015 0
 6909 0072 1A68     		ldr	r2, [r3]
 6910 0074 22F0FC02 		bic	r2, r2, #252
 6911 0078 1A60     		str	r2, [r3]
3018:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6912              		.loc 1 3018 0
 6913 007a 0268     		ldr	r2, [r0]
 6914 007c 5368     		ldr	r3, [r2, #4]
 6915 007e 43F40043 		orr	r3, r3, #32768
 6916 0082 5360     		str	r3, [r2, #4]
3021:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6917              		.loc 1 3021 0
 6918 0084 0268     		ldr	r2, [r0]
 6919 0086 2023     		movs	r3, #32
 6920 0088 D361     		str	r3, [r2, #28]
3023:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6921              		.loc 1 3023 0
 6922 008a 80F84130 		strb	r3, [r0, #65]
3026:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 6923              		.loc 1 3026 0
 6924 008e 0023     		movs	r3, #0
 6925 0090 80F84030 		strb	r3, [r0, #64]
3028:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 6926              		.loc 1 3028 0
 6927 0094 FFF7FEFF 		bl	HAL_I2C_SlaveRxCpltCallback
 6928              	.LVL592:
 6929 0098 C6E7     		b	.L582
 6930              	.LVL593:
 6931              	.L585:
 6932              		.cfi_def_cfa_offset 0
 6933              		.cfi_restore 4
 6934              		.cfi_restore 14
2987:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 6935              		.loc 1 2987 0
 6936 009a 0220     		movs	r0, #2
 6937              	.LVL594:
3035:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 6938              		.loc 1 3035 0
 6939 009c 7047     		bx	lr
 6940              		.cfi_endproc
 6941              	.LFE175:
 6943              		.section	.text.I2C_MasterReceive_ISR,"ax",%progbits
 6944              		.align	1
 6945              		.syntax unified
 6946              		.thumb
 6947              		.thumb_func
 6948              		.fpu fpv5-d16
 6950              	I2C_MasterReceive_ISR:
 6951              	.LFB173:
2765:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint16_t DevAddress;
 6952              		.loc 1 2765 0
 6953              		.cfi_startproc
 6954              		@ args = 0, pretend = 0, frame = 0
 6955              		@ frame_needed = 0, uses_anonymous_args = 0
 6956              	.LVL595:
2769:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 6957              		.loc 1 2769 0
 6958 0000 90F84030 		ldrb	r3, [r0, #64]	@ zero_extendqisi2
 6959 0004 012B     		cmp	r3, #1
 6960 0006 00F0B980 		beq	.L604
2765:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   uint16_t DevAddress;
 6961              		.loc 1 2765 0 discriminator 2
 6962 000a 10B5     		push	{r4, lr}
 6963              		.cfi_def_cfa_offset 8
 6964              		.cfi_offset 4, -8
 6965              		.cfi_offset 14, -4
 6966 000c 82B0     		sub	sp, sp, #8
 6967              		.cfi_def_cfa_offset 16
 6968 000e 0446     		mov	r4, r0
2769:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 6969              		.loc 1 2769 0 discriminator 2
 6970 0010 0123     		movs	r3, #1
 6971 0012 80F84030 		strb	r3, [r0, #64]
2771:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {  
 6972              		.loc 1 2771 0 discriminator 2
 6973 0016 0368     		ldr	r3, [r0]
 6974 0018 9A69     		ldr	r2, [r3, #24]
 6975 001a 12F0040F 		tst	r2, #4
 6976 001e 10D0     		beq	.L593
2774:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferSize--;
 6977              		.loc 1 2774 0
 6978 0020 5A6A     		ldr	r2, [r3, #36]
 6979 0022 436A     		ldr	r3, [r0, #36]
 6980 0024 591C     		adds	r1, r3, #1
 6981 0026 4162     		str	r1, [r0, #36]
 6982 0028 1A70     		strb	r2, [r3]
2775:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     hi2c->XferCount--;
 6983              		.loc 1 2775 0
 6984 002a 038D     		ldrh	r3, [r0, #40]
 6985 002c 013B     		subs	r3, r3, #1
 6986 002e 0385     		strh	r3, [r0, #40]	@ movhi
2776:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 6987              		.loc 1 2776 0
 6988 0030 438D     		ldrh	r3, [r0, #42]
 6989 0032 013B     		subs	r3, r3, #1
 6990 0034 9BB2     		uxth	r3, r3
 6991 0036 4385     		strh	r3, [r0, #42]	@ movhi
 6992              	.LVL596:
 6993              	.L594:
2886:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 6994              		.loc 1 2886 0
 6995 0038 0020     		movs	r0, #0
 6996 003a 84F84000 		strb	r0, [r4, #64]
2890:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 6997              		.loc 1 2890 0
 6998 003e 02B0     		add	sp, sp, #8
 6999              		.cfi_remember_state
 7000              		.cfi_def_cfa_offset 8
 7001              		@ sp needed
 7002 0040 10BD     		pop	{r4, pc}
 7003              	.LVL597:
 7004              	.L593:
 7005              		.cfi_restore_state
2778:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 7006              		.loc 1 2778 0
 7007 0042 9A69     		ldr	r2, [r3, #24]
 7008 0044 12F0800F 		tst	r2, #128
 7009 0048 2BD0     		beq	.L595
2780:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {                  
 7010              		.loc 1 2780 0
 7011 004a 028D     		ldrh	r2, [r0, #40]
 7012 004c F2B9     		cbnz	r2, .L596
2780:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {                  
 7013              		.loc 1 2780 0 is_stmt 0 discriminator 1
 7014 004e 428D     		ldrh	r2, [r0, #42]
 7015 0050 92B2     		uxth	r2, r2
 7016 0052 DAB1     		cbz	r2, .L596
2782:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 7017              		.loc 1 2782 0 is_stmt 1
 7018 0054 5968     		ldr	r1, [r3, #4]
 7019 0056 C1F30901 		ubfx	r1, r1, #0, #10
 7020              	.LVL598:
2784:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 7021              		.loc 1 2784 0
 7022 005a 438D     		ldrh	r3, [r0, #42]
 7023 005c 9BB2     		uxth	r3, r3
 7024 005e FF2B     		cmp	r3, #255
 7025 0060 09D9     		bls	.L597
2786:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferSize = 255;
 7026              		.loc 1 2786 0
 7027 0062 0023     		movs	r3, #0
 7028 0064 0093     		str	r3, [sp]
 7029 0066 4FF08073 		mov	r3, #16777216
 7030 006a FF22     		movs	r2, #255
 7031 006c FFF7FEFF 		bl	I2C_TransferConfig
 7032              	.LVL599:
2787:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }      
 7033              		.loc 1 2787 0
 7034 0070 FF23     		movs	r3, #255
 7035 0072 2385     		strh	r3, [r4, #40]	@ movhi
 7036 0074 E0E7     		b	.L594
 7037              	.LVL600:
 7038              	.L597:
2791:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         hi2c->XferSize = hi2c->XferCount;
 7039              		.loc 1 2791 0
 7040 0076 428D     		ldrh	r2, [r0, #42]
 7041 0078 0023     		movs	r3, #0
 7042 007a 0093     		str	r3, [sp]
 7043 007c 4FF00073 		mov	r3, #33554432
 7044 0080 D2B2     		uxtb	r2, r2
 7045 0082 FFF7FEFF 		bl	I2C_TransferConfig
 7046              	.LVL601:
2792:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       } 
 7047              		.loc 1 2792 0
 7048 0086 638D     		ldrh	r3, [r4, #42]
 7049 0088 2385     		strh	r3, [r4, #40]	@ movhi
 7050 008a D5E7     		b	.L594
 7051              	.LVL602:
 7052              	.L596:
2798:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 7053              		.loc 1 2798 0
 7054 008c 0023     		movs	r3, #0
 7055 008e 84F84030 		strb	r3, [r4, #64]
2801:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
 7056              		.loc 1 2801 0
 7057 0092 636C     		ldr	r3, [r4, #68]
 7058 0094 43F04003 		orr	r3, r3, #64
 7059 0098 6364     		str	r3, [r4, #68]
2802:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 7060              		.loc 1 2802 0
 7061 009a 2046     		mov	r0, r4
 7062              	.LVL603:
 7063 009c FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 7064              	.LVL604:
 7065 00a0 CAE7     		b	.L594
 7066              	.LVL605:
 7067              	.L595:
2805:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 7068              		.loc 1 2805 0
 7069 00a2 9A69     		ldr	r2, [r3, #24]
 7070 00a4 12F0400F 		tst	r2, #64
 7071 00a8 11D0     		beq	.L598
2807:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 7072              		.loc 1 2807 0
 7073 00aa 428D     		ldrh	r2, [r0, #42]
 7074 00ac 92B2     		uxth	r2, r2
 7075 00ae 22B9     		cbnz	r2, .L599
2810:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 7076              		.loc 1 2810 0
 7077 00b0 5A68     		ldr	r2, [r3, #4]
 7078 00b2 42F48042 		orr	r2, r2, #16384
 7079 00b6 5A60     		str	r2, [r3, #4]
 7080 00b8 BEE7     		b	.L594
 7081              	.L599:
2815:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 7082              		.loc 1 2815 0
 7083 00ba 0023     		movs	r3, #0
 7084 00bc 80F84030 		strb	r3, [r0, #64]
2818:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       HAL_I2C_ErrorCallback(hi2c);
 7085              		.loc 1 2818 0
 7086 00c0 436C     		ldr	r3, [r0, #68]
 7087 00c2 43F04003 		orr	r3, r3, #64
 7088 00c6 4364     		str	r3, [r0, #68]
2819:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 7089              		.loc 1 2819 0
 7090 00c8 FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 7091              	.LVL606:
 7092 00cc B4E7     		b	.L594
 7093              	.LVL607:
 7094              	.L598:
2822:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 7095              		.loc 1 2822 0
 7096 00ce 9A69     		ldr	r2, [r3, #24]
 7097 00d0 12F0200F 		tst	r2, #32
 7098 00d4 41D0     		beq	.L600
2824:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 7099              		.loc 1 2824 0
 7100 00d6 9A69     		ldr	r2, [r3, #24]
 7101 00d8 12F0100F 		tst	r2, #16
 7102 00dc 05D0     		beq	.L601
2827:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 7103              		.loc 1 2827 0
 7104 00de 1022     		movs	r2, #16
 7105 00e0 DA61     		str	r2, [r3, #28]
2829:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 7106              		.loc 1 2829 0
 7107 00e2 436C     		ldr	r3, [r0, #68]
 7108 00e4 43F00403 		orr	r3, r3, #4
 7109 00e8 4364     		str	r3, [r0, #68]
 7110              	.L601:
2833:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 7111              		.loc 1 2833 0
 7112 00ea 2268     		ldr	r2, [r4]
 7113 00ec 1368     		ldr	r3, [r2]
 7114 00ee 23F0F403 		bic	r3, r3, #244
 7115 00f2 1360     		str	r3, [r2]
2836:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 7116              		.loc 1 2836 0
 7117 00f4 2368     		ldr	r3, [r4]
 7118 00f6 2022     		movs	r2, #32
 7119 00f8 DA61     		str	r2, [r3, #28]
2839:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 7120              		.loc 1 2839 0
 7121 00fa 2268     		ldr	r2, [r4]
 7122 00fc 5368     		ldr	r3, [r2, #4]
 7123 00fe 23F0FF73 		bic	r3, r3, #33423360
 7124 0102 23F48B33 		bic	r3, r3, #71168
 7125 0106 23F4FF73 		bic	r3, r3, #510
 7126 010a 23F00103 		bic	r3, r3, #1
 7127 010e 5360     		str	r3, [r2, #4]
2842:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 7128              		.loc 1 2842 0
 7129 0110 636C     		ldr	r3, [r4, #68]
 7130 0112 73B9     		cbnz	r3, .L609
2853:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       {
 7131              		.loc 1 2853 0
 7132 0114 94F84130 		ldrb	r3, [r4, #65]	@ zero_extendqisi2
 7133 0118 DBB2     		uxtb	r3, r3
 7134 011a 222B     		cmp	r3, #34
 7135 011c 13D0     		beq	.L610
2864:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 7136              		.loc 1 2864 0
 7137 011e 2023     		movs	r3, #32
 7138 0120 84F84130 		strb	r3, [r4, #65]
2867:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 7139              		.loc 1 2867 0
 7140 0124 0023     		movs	r3, #0
 7141 0126 84F84030 		strb	r3, [r4, #64]
2869:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 7142              		.loc 1 2869 0
 7143 012a 2046     		mov	r0, r4
 7144              	.LVL608:
 7145 012c FFF7FEFF 		bl	HAL_I2C_MasterRxCpltCallback
 7146              	.LVL609:
 7147 0130 82E7     		b	.L594
 7148              	.LVL610:
 7149              	.L609:
2844:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 7150              		.loc 1 2844 0
 7151 0132 2023     		movs	r3, #32
 7152 0134 84F84130 		strb	r3, [r4, #65]
2847:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       
 7153              		.loc 1 2847 0
 7154 0138 0023     		movs	r3, #0
 7155 013a 84F84030 		strb	r3, [r4, #64]
2849:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 7156              		.loc 1 2849 0
 7157 013e 2046     		mov	r0, r4
 7158              	.LVL611:
 7159 0140 FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 7160              	.LVL612:
 7161 0144 78E7     		b	.L594
 7162              	.LVL613:
 7163              	.L610:
2855:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 7164              		.loc 1 2855 0
 7165 0146 2023     		movs	r3, #32
 7166 0148 84F84130 		strb	r3, [r4, #65]
2858:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****         
 7167              		.loc 1 2858 0
 7168 014c 0023     		movs	r3, #0
 7169 014e 84F84030 		strb	r3, [r4, #64]
2860:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****       }
 7170              		.loc 1 2860 0
 7171 0152 2046     		mov	r0, r4
 7172              	.LVL614:
 7173 0154 FFF7FEFF 		bl	HAL_I2C_MemRxCpltCallback
 7174              	.LVL615:
 7175 0158 6EE7     		b	.L594
 7176              	.LVL616:
 7177              	.L600:
2873:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 7178              		.loc 1 2873 0
 7179 015a 9A69     		ldr	r2, [r3, #24]
 7180 015c 12F0100F 		tst	r2, #16
 7181 0160 3FF46AAF 		beq	.L594
2876:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 7182              		.loc 1 2876 0
 7183 0164 1022     		movs	r2, #16
 7184 0166 DA61     		str	r2, [r3, #28]
2879:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 7185              		.loc 1 2879 0
 7186 0168 0023     		movs	r3, #0
 7187 016a 80F84030 		strb	r3, [r0, #64]
2881:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     HAL_I2C_ErrorCallback(hi2c);
 7188              		.loc 1 2881 0
 7189 016e 436C     		ldr	r3, [r0, #68]
 7190 0170 43F00403 		orr	r3, r3, #4
 7191 0174 4364     		str	r3, [r0, #68]
2882:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 7192              		.loc 1 2882 0
 7193 0176 FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 7194              	.LVL617:
 7195 017a 5DE7     		b	.L594
 7196              	.LVL618:
 7197              	.L604:
 7198              		.cfi_def_cfa_offset 0
 7199              		.cfi_restore 4
 7200              		.cfi_restore 14
2769:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   
 7201              		.loc 1 2769 0
 7202 017c 0220     		movs	r0, #2
 7203              	.LVL619:
2890:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 7204              		.loc 1 2890 0
 7205 017e 7047     		bx	lr
 7206              		.cfi_endproc
 7207              	.LFE173:
 7209              		.section	.text.HAL_I2C_EV_IRQHandler,"ax",%progbits
 7210              		.align	1
 7211              		.global	HAL_I2C_EV_IRQHandler
 7212              		.syntax unified
 7213              		.thumb
 7214              		.thumb_func
 7215              		.fpu fpv5-d16
 7217              	HAL_I2C_EV_IRQHandler:
 7218              	.LFB161:
2372:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* I2C in mode Transmitter ---------------------------------------------------*/
 7219              		.loc 1 2372 0
 7220              		.cfi_startproc
 7221              		@ args = 0, pretend = 0, frame = 0
 7222              		@ frame_needed = 0, uses_anonymous_args = 0
 7223              	.LVL620:
 7224 0000 10B5     		push	{r4, lr}
 7225              		.cfi_def_cfa_offset 8
 7226              		.cfi_offset 4, -8
 7227              		.cfi_offset 14, -4
 7228 0002 0446     		mov	r4, r0
2374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {     
 7229              		.loc 1 2374 0
 7230 0004 0368     		ldr	r3, [r0]
 7231 0006 9A69     		ldr	r2, [r3, #24]
 7232 0008 12F0020F 		tst	r2, #2
 7233 000c 13D1     		bne	.L612
2374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {     
 7234              		.loc 1 2374 0 is_stmt 0 discriminator 2
 7235 000e 9A69     		ldr	r2, [r3, #24]
 7236 0010 12F0800F 		tst	r2, #128
 7237 0014 0FD1     		bne	.L612
2374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {     
 7238              		.loc 1 2374 0 discriminator 4
 7239 0016 9A69     		ldr	r2, [r3, #24]
 7240 0018 12F0400F 		tst	r2, #64
 7241 001c 0BD1     		bne	.L612
2374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {     
 7242              		.loc 1 2374 0 discriminator 6
 7243 001e 9A69     		ldr	r2, [r3, #24]
 7244 0020 12F0200F 		tst	r2, #32
 7245 0024 07D1     		bne	.L612
2374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {     
 7246              		.loc 1 2374 0 discriminator 8
 7247 0026 9A69     		ldr	r2, [r3, #24]
 7248 0028 12F0100F 		tst	r2, #16
 7249 002c 03D1     		bne	.L612
2374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {     
 7250              		.loc 1 2374 0 discriminator 10
 7251 002e 9A69     		ldr	r2, [r3, #24]
 7252 0030 12F0080F 		tst	r2, #8
 7253 0034 04D0     		beq	.L613
 7254              	.L612:
2374:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {     
 7255              		.loc 1 2374 0 discriminator 11
 7256 0036 1B68     		ldr	r3, [r3]
 7257 0038 03F07A03 		and	r3, r3, #122
 7258 003c 7A2B     		cmp	r3, #122
 7259 003e 52D0     		beq	.L623
 7260              	.LVL621:
 7261              	.L613:
2383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {     
 7262              		.loc 1 2383 0 is_stmt 1
 7263 0040 2368     		ldr	r3, [r4]
 7264 0042 9A69     		ldr	r2, [r3, #24]
 7265 0044 12F0020F 		tst	r2, #2
 7266 0048 0FD1     		bne	.L614
2383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {     
 7267              		.loc 1 2383 0 is_stmt 0 discriminator 2
 7268 004a 9A69     		ldr	r2, [r3, #24]
 7269 004c 12F0800F 		tst	r2, #128
 7270 0050 0BD1     		bne	.L614
2383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {     
 7271              		.loc 1 2383 0 discriminator 4
 7272 0052 9A69     		ldr	r2, [r3, #24]
 7273 0054 12F0400F 		tst	r2, #64
 7274 0058 07D1     		bne	.L614
2383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {     
 7275              		.loc 1 2383 0 discriminator 6
 7276 005a 9A69     		ldr	r2, [r3, #24]
 7277 005c 12F0200F 		tst	r2, #32
 7278 0060 03D1     		bne	.L614
2383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {     
 7279              		.loc 1 2383 0 discriminator 8
 7280 0062 9A69     		ldr	r2, [r3, #24]
 7281 0064 12F0100F 		tst	r2, #16
 7282 0068 04D0     		beq	.L615
 7283              	.L614:
2383:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {     
 7284              		.loc 1 2383 0 discriminator 9
 7285 006a 1B68     		ldr	r3, [r3]
 7286 006c 03F07203 		and	r3, r3, #114
 7287 0070 722B     		cmp	r3, #114
 7288 0072 41D0     		beq	.L624
 7289              	.L615:
2393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 7290              		.loc 1 2393 0 is_stmt 1
 7291 0074 2368     		ldr	r3, [r4]
 7292 0076 9A69     		ldr	r2, [r3, #24]
 7293 0078 12F0040F 		tst	r2, #4
 7294 007c 13D1     		bne	.L617
2393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 7295              		.loc 1 2393 0 is_stmt 0 discriminator 2
 7296 007e 9A69     		ldr	r2, [r3, #24]
 7297 0080 12F0800F 		tst	r2, #128
 7298 0084 0FD1     		bne	.L617
2393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 7299              		.loc 1 2393 0 discriminator 4
 7300 0086 9A69     		ldr	r2, [r3, #24]
 7301 0088 12F0400F 		tst	r2, #64
 7302 008c 0BD1     		bne	.L617
2393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 7303              		.loc 1 2393 0 discriminator 6
 7304 008e 9A69     		ldr	r2, [r3, #24]
 7305 0090 12F0200F 		tst	r2, #32
 7306 0094 07D1     		bne	.L617
2393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 7307              		.loc 1 2393 0 discriminator 8
 7308 0096 9A69     		ldr	r2, [r3, #24]
 7309 0098 12F0100F 		tst	r2, #16
 7310 009c 03D1     		bne	.L617
2393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 7311              		.loc 1 2393 0 discriminator 10
 7312 009e 9A69     		ldr	r2, [r3, #24]
 7313 00a0 12F0080F 		tst	r2, #8
 7314 00a4 04D0     		beq	.L618
 7315              	.L617:
2393:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 7316              		.loc 1 2393 0 discriminator 11
 7317 00a6 1B68     		ldr	r3, [r3]
 7318 00a8 03F07C03 		and	r3, r3, #124
 7319 00ac 7C2B     		cmp	r3, #124
 7320 00ae 31D0     		beq	.L625
 7321              	.L618:
2401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 7322              		.loc 1 2401 0 is_stmt 1
 7323 00b0 2368     		ldr	r3, [r4]
 7324 00b2 9A69     		ldr	r2, [r3, #24]
 7325 00b4 12F0040F 		tst	r2, #4
 7326 00b8 0FD1     		bne	.L619
2401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 7327              		.loc 1 2401 0 is_stmt 0 discriminator 2
 7328 00ba 9A69     		ldr	r2, [r3, #24]
 7329 00bc 12F0800F 		tst	r2, #128
 7330 00c0 0BD1     		bne	.L619
2401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 7331              		.loc 1 2401 0 discriminator 4
 7332 00c2 9A69     		ldr	r2, [r3, #24]
 7333 00c4 12F0400F 		tst	r2, #64
 7334 00c8 07D1     		bne	.L619
2401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 7335              		.loc 1 2401 0 discriminator 6
 7336 00ca 9A69     		ldr	r2, [r3, #24]
 7337 00cc 12F0200F 		tst	r2, #32
 7338 00d0 03D1     		bne	.L619
2401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 7339              		.loc 1 2401 0 discriminator 8
 7340 00d2 9A69     		ldr	r2, [r3, #24]
 7341 00d4 12F0100F 		tst	r2, #16
 7342 00d8 04D0     		beq	.L611
 7343              	.L619:
2401:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 7344              		.loc 1 2401 0 discriminator 9
 7345 00da 1B68     		ldr	r3, [r3]
 7346 00dc 03F07403 		and	r3, r3, #116
 7347 00e0 742B     		cmp	r3, #116
 7348 00e2 20D0     		beq	.L626
 7349              	.L611:
2409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 7350              		.loc 1 2409 0 is_stmt 1
 7351 00e4 10BD     		pop	{r4, pc}
 7352              	.LVL622:
 7353              	.L623:
2377:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 7354              		.loc 1 2377 0
 7355 00e6 94F84130 		ldrb	r3, [r4, #65]	@ zero_extendqisi2
 7356 00ea DBB2     		uxtb	r3, r3
 7357 00ec 212B     		cmp	r3, #33
 7358 00ee A7D1     		bne	.L613
2379:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 7359              		.loc 1 2379 0
 7360 00f0 2046     		mov	r0, r4
 7361              	.LVL623:
 7362 00f2 FFF7FEFF 		bl	I2C_SlaveTransmit_ISR
 7363              	.LVL624:
 7364 00f6 A3E7     		b	.L613
 7365              	.L624:
2386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 7366              		.loc 1 2386 0
 7367 00f8 94F84130 		ldrb	r3, [r4, #65]	@ zero_extendqisi2
 7368 00fc DBB2     		uxtb	r3, r3
 7369 00fe 212B     		cmp	r3, #33
 7370 0100 04D0     		beq	.L616
2386:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 7371              		.loc 1 2386 0 is_stmt 0 discriminator 1
 7372 0102 94F84130 		ldrb	r3, [r4, #65]	@ zero_extendqisi2
 7373 0106 DBB2     		uxtb	r3, r3
 7374 0108 212B     		cmp	r3, #33
 7375 010a B3D1     		bne	.L615
 7376              	.L616:
2388:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 7377              		.loc 1 2388 0 is_stmt 1
 7378 010c 2046     		mov	r0, r4
 7379 010e FFF7FEFF 		bl	I2C_MasterTransmit_ISR
 7380              	.LVL625:
 7381 0112 AFE7     		b	.L615
 7382              	.L625:
2396:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 7383              		.loc 1 2396 0
 7384 0114 94F84130 		ldrb	r3, [r4, #65]	@ zero_extendqisi2
 7385 0118 DBB2     		uxtb	r3, r3
 7386 011a 222B     		cmp	r3, #34
 7387 011c C8D1     		bne	.L618
2398:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 7388              		.loc 1 2398 0
 7389 011e 2046     		mov	r0, r4
 7390 0120 FFF7FEFF 		bl	I2C_SlaveReceive_ISR
 7391              	.LVL626:
 7392 0124 C4E7     		b	.L618
 7393              	.L626:
2404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 7394              		.loc 1 2404 0
 7395 0126 94F84130 		ldrb	r3, [r4, #65]	@ zero_extendqisi2
 7396 012a DBB2     		uxtb	r3, r3
 7397 012c 222B     		cmp	r3, #34
 7398 012e 04D0     		beq	.L621
2404:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     {
 7399              		.loc 1 2404 0 is_stmt 0 discriminator 1
 7400 0130 94F84130 		ldrb	r3, [r4, #65]	@ zero_extendqisi2
 7401 0134 DBB2     		uxtb	r3, r3
 7402 0136 222B     		cmp	r3, #34
 7403 0138 D4D1     		bne	.L611
 7404              	.L621:
2406:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     }
 7405              		.loc 1 2406 0 is_stmt 1
 7406 013a 2046     		mov	r0, r4
 7407 013c FFF7FEFF 		bl	I2C_MasterReceive_ISR
 7408              	.LVL627:
2409:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 7409              		.loc 1 2409 0
 7410 0140 D0E7     		b	.L611
 7411              		.cfi_endproc
 7412              	.LFE161:
 7414              		.section	.text.HAL_I2C_ER_IRQHandler,"ax",%progbits
 7415              		.align	1
 7416              		.global	HAL_I2C_ER_IRQHandler
 7417              		.syntax unified
 7418              		.thumb
 7419              		.thumb_func
 7420              		.fpu fpv5-d16
 7422              	HAL_I2C_ER_IRQHandler:
 7423              	.LFB162:
2418:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   /* I2C Bus error interrupt occurred ------------------------------------*/
 7424              		.loc 1 2418 0
 7425              		.cfi_startproc
 7426              		@ args = 0, pretend = 0, frame = 0
 7427              		@ frame_needed = 0, uses_anonymous_args = 0
 7428              	.LVL628:
 7429 0000 08B5     		push	{r3, lr}
 7430              		.cfi_def_cfa_offset 8
 7431              		.cfi_offset 3, -8
 7432              		.cfi_offset 14, -4
2420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   { 
 7433              		.loc 1 2420 0
 7434 0002 0368     		ldr	r3, [r0]
 7435 0004 9A69     		ldr	r2, [r3, #24]
 7436 0006 12F4807F 		tst	r2, #256
 7437 000a 0AD0     		beq	.L628
2420:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   { 
 7438              		.loc 1 2420 0 is_stmt 0 discriminator 1
 7439 000c 1A68     		ldr	r2, [r3]
 7440 000e 12F0800F 		tst	r2, #128
 7441 0012 06D0     		beq	.L628
2422:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 7442              		.loc 1 2422 0 is_stmt 1
 7443 0014 426C     		ldr	r2, [r0, #68]
 7444 0016 42F00102 		orr	r2, r2, #1
 7445 001a 4264     		str	r2, [r0, #68]
2425:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 7446              		.loc 1 2425 0
 7447 001c 4FF48072 		mov	r2, #256
 7448 0020 DA61     		str	r2, [r3, #28]
 7449              	.L628:
2429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   { 
 7450              		.loc 1 2429 0
 7451 0022 0368     		ldr	r3, [r0]
 7452 0024 9A69     		ldr	r2, [r3, #24]
 7453 0026 12F4806F 		tst	r2, #1024
 7454 002a 0AD0     		beq	.L629
2429:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   { 
 7455              		.loc 1 2429 0 is_stmt 0 discriminator 1
 7456 002c 1A68     		ldr	r2, [r3]
 7457 002e 12F0800F 		tst	r2, #128
 7458 0032 06D0     		beq	.L629
2431:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 7459              		.loc 1 2431 0 is_stmt 1
 7460 0034 426C     		ldr	r2, [r0, #68]
 7461 0036 42F00802 		orr	r2, r2, #8
 7462 003a 4264     		str	r2, [r0, #68]
2434:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 7463              		.loc 1 2434 0
 7464 003c 4FF48062 		mov	r2, #1024
 7465 0040 DA61     		str	r2, [r3, #28]
 7466              	.L629:
2438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   { 
 7467              		.loc 1 2438 0
 7468 0042 0368     		ldr	r3, [r0]
 7469 0044 9A69     		ldr	r2, [r3, #24]
 7470 0046 12F4007F 		tst	r2, #512
 7471 004a 0AD0     		beq	.L630
2438:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   { 
 7472              		.loc 1 2438 0 is_stmt 0 discriminator 1
 7473 004c 1A68     		ldr	r2, [r3]
 7474 004e 12F0800F 		tst	r2, #128
 7475 0052 06D0     		beq	.L630
2440:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 7476              		.loc 1 2440 0 is_stmt 1
 7477 0054 426C     		ldr	r2, [r0, #68]
 7478 0056 42F00202 		orr	r2, r2, #2
 7479 005a 4264     		str	r2, [r0, #68]
2443:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 7480              		.loc 1 2443 0
 7481 005c 4FF40072 		mov	r2, #512
 7482 0060 DA61     		str	r2, [r3, #28]
 7483              	.L630:
2447:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   {
 7484              		.loc 1 2447 0
 7485 0062 436C     		ldr	r3, [r0, #68]
 7486 0064 03B9     		cbnz	r3, .L633
 7487              	.LVL629:
 7488              	.L627:
2453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 7489              		.loc 1 2453 0
 7490 0066 08BD     		pop	{r3, pc}
 7491              	.LVL630:
 7492              	.L633:
2449:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****     
 7493              		.loc 1 2449 0
 7494 0068 2023     		movs	r3, #32
 7495 006a 80F84130 		strb	r3, [r0, #65]
2451:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   }
 7496              		.loc 1 2451 0
 7497 006e FFF7FEFF 		bl	HAL_I2C_ErrorCallback
 7498              	.LVL631:
2453:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 7499              		.loc 1 2453 0
 7500 0072 F8E7     		b	.L627
 7501              		.cfi_endproc
 7502              	.LFE162:
 7504              		.section	.text.HAL_I2C_GetState,"ax",%progbits
 7505              		.align	1
 7506              		.global	HAL_I2C_GetState
 7507              		.syntax unified
 7508              		.thumb
 7509              		.thumb_func
 7510              		.fpu fpv5-d16
 7512              	HAL_I2C_GetState:
 7513              	.LFB170:
2592:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   return hi2c->State;
 7514              		.loc 1 2592 0
 7515              		.cfi_startproc
 7516              		@ args = 0, pretend = 0, frame = 0
 7517              		@ frame_needed = 0, uses_anonymous_args = 0
 7518              		@ link register save eliminated.
 7519              	.LVL632:
2593:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
 7520              		.loc 1 2593 0
 7521 0000 90F84100 		ldrb	r0, [r0, #65]	@ zero_extendqisi2
 7522              	.LVL633:
2594:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 7523              		.loc 1 2594 0
 7524 0004 7047     		bx	lr
 7525              		.cfi_endproc
 7526              	.LFE170:
 7528              		.section	.text.HAL_I2C_GetError,"ax",%progbits
 7529              		.align	1
 7530              		.global	HAL_I2C_GetError
 7531              		.syntax unified
 7532              		.thumb
 7533              		.thumb_func
 7534              		.fpu fpv5-d16
 7536              	HAL_I2C_GetError:
 7537              	.LFB171:
2603:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c ****   return hi2c->ErrorCode;
 7538              		.loc 1 2603 0
 7539              		.cfi_startproc
 7540              		@ args = 0, pretend = 0, frame = 0
 7541              		@ frame_needed = 0, uses_anonymous_args = 0
 7542              		@ link register save eliminated.
 7543              	.LVL634:
2604:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** }
 7544              		.loc 1 2604 0
 7545 0000 406C     		ldr	r0, [r0, #68]
 7546              	.LVL635:
2605:/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/stm32f7xx_hal_i2c1.c **** 
 7547              		.loc 1 2605 0
 7548 0002 7047     		bx	lr
 7549              		.cfi_endproc
 7550              	.LFE171:
 7552              		.text
 7553              	.Letext0:
 7554              		.file 2 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 7555              		.file 3 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 7556              		.file 4 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h"
 7557              		.file 5 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/system_stm
 7558              		.file 6 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f769x
 7559              		.file 7 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f7xx.
 7560              		.file 8 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 7561              		.file 9 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 7562              		.file 10 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 7563              		.file 11 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 7564              		.file 12 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_def.
 7565              		.file 13 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_dma.
 7566              		.file 14 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_i2c.
 7567              		.file 15 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal.h"
DEFINED SYMBOLS
                            *ABS*:0000000000000000 stm32f7xx_hal_i2c1.c
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:17     .text.I2C_TransferConfig:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:23     .text.I2C_TransferConfig:0000000000000000 I2C_TransferConfig
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:69     .text.I2C_IsAcknowledgeFailed:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:75     .text.I2C_IsAcknowledgeFailed:0000000000000000 I2C_IsAcknowledgeFailed
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:179    .text.I2C_WaitOnTXISFlagUntilTimeout:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:185    .text.I2C_WaitOnTXISFlagUntilTimeout:0000000000000000 I2C_WaitOnTXISFlagUntilTimeout
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:257    .text.I2C_WaitOnFlagUntilTimeout:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:263    .text.I2C_WaitOnFlagUntilTimeout:0000000000000000 I2C_WaitOnFlagUntilTimeout
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:360    .text.I2C_RequestMemoryWrite:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:366    .text.I2C_RequestMemoryWrite:0000000000000000 I2C_RequestMemoryWrite
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:473    .text.I2C_RequestMemoryRead:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:479    .text.I2C_RequestMemoryRead:0000000000000000 I2C_RequestMemoryRead
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:586    .text.I2C_WaitOnSTOPFlagUntilTimeout:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:592    .text.I2C_WaitOnSTOPFlagUntilTimeout:0000000000000000 I2C_WaitOnSTOPFlagUntilTimeout
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:662    .text.I2C_WaitOnRXNEFlagUntilTimeout:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:668    .text.I2C_WaitOnRXNEFlagUntilTimeout:0000000000000000 I2C_WaitOnRXNEFlagUntilTimeout
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:765    .text.HAL_I2C_MspInit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:772    .text.HAL_I2C_MspInit:0000000000000000 HAL_I2C_MspInit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:786    .text.HAL_I2C_Init:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:793    .text.HAL_I2C_Init:0000000000000000 HAL_I2C_Init
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:916    .text.HAL_I2C_Init:00000000000000a8 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:921    .text.HAL_I2C_MspDeInit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:928    .text.HAL_I2C_MspDeInit:0000000000000000 HAL_I2C_MspDeInit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:942    .text.HAL_I2C_DeInit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:949    .text.HAL_I2C_DeInit:0000000000000000 HAL_I2C_DeInit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:998    .text.HAL_I2C_Master_Transmit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:1005   .text.HAL_I2C_Master_Transmit:0000000000000000 HAL_I2C_Master_Transmit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:1253   .text.HAL_I2C_Master_Receive:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:1260   .text.HAL_I2C_Master_Receive:0000000000000000 HAL_I2C_Master_Receive
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:1508   .text.HAL_I2C_Slave_Transmit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:1515   .text.HAL_I2C_Slave_Transmit:0000000000000000 HAL_I2C_Slave_Transmit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:1759   .text.HAL_I2C_Slave_Receive:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:1766   .text.HAL_I2C_Slave_Receive:0000000000000000 HAL_I2C_Slave_Receive
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:1992   .text.HAL_I2C_Master_Transmit_IT:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:1999   .text.HAL_I2C_Master_Transmit_IT:0000000000000000 HAL_I2C_Master_Transmit_IT
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:2139   .text.HAL_I2C_Master_Receive_IT:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:2146   .text.HAL_I2C_Master_Receive_IT:0000000000000000 HAL_I2C_Master_Receive_IT
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:2286   .text.HAL_I2C_Slave_Transmit_IT:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:2293   .text.HAL_I2C_Slave_Transmit_IT:0000000000000000 HAL_I2C_Slave_Transmit_IT
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:2384   .text.HAL_I2C_Slave_Receive_IT:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:2391   .text.HAL_I2C_Slave_Receive_IT:0000000000000000 HAL_I2C_Slave_Receive_IT
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:2482   .text.HAL_I2C_Master_Transmit_DMA:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:2489   .text.HAL_I2C_Master_Transmit_DMA:0000000000000000 HAL_I2C_Master_Transmit_DMA
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:2681   .text.HAL_I2C_Master_Transmit_DMA:00000000000000f8 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:5018   .text.I2C_DMAMasterTransmitCplt:0000000000000000 I2C_DMAMasterTransmitCplt
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4974   .text.I2C_DMAError:0000000000000000 I2C_DMAError
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:2687   .text.HAL_I2C_Master_Receive_DMA:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:2694   .text.HAL_I2C_Master_Receive_DMA:0000000000000000 HAL_I2C_Master_Receive_DMA
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:2877   .text.HAL_I2C_Master_Receive_DMA:00000000000000ec $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:5316   .text.I2C_DMAMasterReceiveCplt:0000000000000000 I2C_DMAMasterReceiveCplt
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:2883   .text.HAL_I2C_Slave_Transmit_DMA:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:2890   .text.HAL_I2C_Slave_Transmit_DMA:0000000000000000 HAL_I2C_Slave_Transmit_DMA
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:3057   .text.HAL_I2C_Slave_Transmit_DMA:00000000000000f0 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:5624   .text.I2C_DMASlaveTransmitCplt:0000000000000000 I2C_DMASlaveTransmitCplt
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:3063   .text.HAL_I2C_Slave_Receive_DMA:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:3070   .text.HAL_I2C_Slave_Receive_DMA:0000000000000000 HAL_I2C_Slave_Receive_DMA
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:3209   .text.HAL_I2C_Slave_Receive_DMA:00000000000000c4 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:5714   .text.I2C_DMASlaveReceiveCplt:0000000000000000 I2C_DMASlaveReceiveCplt
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:3215   .text.HAL_I2C_Mem_Write:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:3222   .text.HAL_I2C_Mem_Write:0000000000000000 HAL_I2C_Mem_Write
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:3502   .text.HAL_I2C_Mem_Read:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:3509   .text.HAL_I2C_Mem_Read:0000000000000000 HAL_I2C_Mem_Read
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:3782   .text.HAL_I2C_Mem_Write_IT:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:3789   .text.HAL_I2C_Mem_Write_IT:0000000000000000 HAL_I2C_Mem_Write_IT
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:3955   .text.HAL_I2C_Mem_Read_IT:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:3962   .text.HAL_I2C_Mem_Read_IT:0000000000000000 HAL_I2C_Mem_Read_IT
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4125   .text.HAL_I2C_Mem_Write_DMA:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4132   .text.HAL_I2C_Mem_Write_DMA:0000000000000000 HAL_I2C_Mem_Write_DMA
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4346   .text.HAL_I2C_Mem_Write_DMA:0000000000000118 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:5810   .text.I2C_DMAMemTransmitCplt:0000000000000000 I2C_DMAMemTransmitCplt
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4352   .text.HAL_I2C_Mem_Read_DMA:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4359   .text.HAL_I2C_Mem_Read_DMA:0000000000000000 HAL_I2C_Mem_Read_DMA
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4564   .text.HAL_I2C_Mem_Read_DMA:0000000000000114 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:6108   .text.I2C_DMAMemReceiveCplt:0000000000000000 I2C_DMAMemReceiveCplt
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4570   .text.HAL_I2C_IsDeviceReady:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4577   .text.HAL_I2C_IsDeviceReady:0000000000000000 HAL_I2C_IsDeviceReady
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4816   .text.HAL_I2C_IsDeviceReady:000000000000014c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4821   .text.HAL_I2C_MasterTxCpltCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4828   .text.HAL_I2C_MasterTxCpltCallback:0000000000000000 HAL_I2C_MasterTxCpltCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4842   .text.HAL_I2C_MasterRxCpltCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4849   .text.HAL_I2C_MasterRxCpltCallback:0000000000000000 HAL_I2C_MasterRxCpltCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4863   .text.HAL_I2C_SlaveTxCpltCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4870   .text.HAL_I2C_SlaveTxCpltCallback:0000000000000000 HAL_I2C_SlaveTxCpltCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4884   .text.HAL_I2C_SlaveRxCpltCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4891   .text.HAL_I2C_SlaveRxCpltCallback:0000000000000000 HAL_I2C_SlaveRxCpltCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4905   .text.HAL_I2C_MemTxCpltCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4912   .text.HAL_I2C_MemTxCpltCallback:0000000000000000 HAL_I2C_MemTxCpltCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4926   .text.HAL_I2C_MemRxCpltCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4933   .text.HAL_I2C_MemRxCpltCallback:0000000000000000 HAL_I2C_MemRxCpltCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4947   .text.HAL_I2C_ErrorCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4954   .text.HAL_I2C_ErrorCallback:0000000000000000 HAL_I2C_ErrorCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:4968   .text.I2C_DMAError:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:5012   .text.I2C_DMAMasterTransmitCplt:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:5310   .text.I2C_DMAMasterReceiveCplt:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:5618   .text.I2C_DMASlaveTransmitCplt:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:5708   .text.I2C_DMASlaveReceiveCplt:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:5804   .text.I2C_DMAMemTransmitCplt:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:6102   .text.I2C_DMAMemReceiveCplt:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:6410   .text.I2C_SlaveTransmit_ISR:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:6416   .text.I2C_SlaveTransmit_ISR:0000000000000000 I2C_SlaveTransmit_ISR
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:6544   .text.I2C_MasterTransmit_ISR:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:6550   .text.I2C_MasterTransmit_ISR:0000000000000000 I2C_MasterTransmit_ISR
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:6820   .text.I2C_SlaveReceive_ISR:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:6826   .text.I2C_SlaveReceive_ISR:0000000000000000 I2C_SlaveReceive_ISR
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:6944   .text.I2C_MasterReceive_ISR:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:6950   .text.I2C_MasterReceive_ISR:0000000000000000 I2C_MasterReceive_ISR
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:7210   .text.HAL_I2C_EV_IRQHandler:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:7217   .text.HAL_I2C_EV_IRQHandler:0000000000000000 HAL_I2C_EV_IRQHandler
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:7415   .text.HAL_I2C_ER_IRQHandler:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:7422   .text.HAL_I2C_ER_IRQHandler:0000000000000000 HAL_I2C_ER_IRQHandler
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:7505   .text.HAL_I2C_GetState:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:7512   .text.HAL_I2C_GetState:0000000000000000 HAL_I2C_GetState
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:7529   .text.HAL_I2C_GetError:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc18ozLc.s:7536   .text.HAL_I2C_GetError:0000000000000000 HAL_I2C_GetError
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
HAL_DMA_Start_IT
HAL_DMA_Abort

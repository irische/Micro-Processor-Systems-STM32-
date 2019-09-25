///*
// task3.c
// *
// *  Created on: Oct 15, 2018
// *      Author: Qianqian
// */
//
//#include "init.h"
//#include "uart.h"
//#include <stdint.h>
//#include "stm32f769xx.h"
//#include "stm32f7xx_hal.h"
//
//
//SPI_HandleTypeDef hspi;
//GPIO_InitTypeDef  GPIO_InitStruct;
//void configureSPI();
//
//// Main Execution Loop
//int main(void)
//{
//	//Initializations
//	Sys_Init();
//	HAL_Init();
//	configureSPI();
//	// Declare input data and output data
//	uint8_t in_data[1];
//	uint8_t out_data[1];
//	//Clear the screen
//	printf("\033[2J\033[;J\33[0m");
//	fflush(stdout);
//	printf("Your code here!\r\n");
//	while (1)
//	{
//		in_data[0] = getchar();	//Get data from keyboard
//		//Transmit and receive data from keyboard using function
//		HAL_SPI_TransmitReceive(&hspi, in_data, out_data, 1, 70);
//		asm("nop");
//		asm("nop");
//		//Use ASCII sequence to achieve printing input and ouput data on the top and bottom half
//		//of the terminal screen
//		printf("\e[2;0H INPUT: %c\r\n", in_data[0]);
//		printf("\e[6;0H OUTPUT: %c\r\n", out_data[0]);
//	}
//}
//
//void configureSPI()
//{
//	//Configure SPI2 used
//	hspi.Instance = SPI2; // Please use SPI2!
//	hspi.Init.Mode = SPI_MODE_MASTER; // Set master mode
//	hspi.Init.TIMode = SPI_TIMODE_DISABLE; // Use Motorola mode, not TI mode
//	hspi.Init.Direction = SPI_DIRECTION_2LINES;	//Use 2 lines communication
//	hspi.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_256;	//set baud rate
//	hspi.Init.DataSize = SPI_DATASIZE_8BIT;	//Specify size of the data transported
//	hspi.Init.CLKPolarity = SPI_POLARITY_HIGH;
//	hspi.Init.CLKPhase = SPI_PHASE_1EDGE;
//	hspi.Init.NSS = SPI_NSS_HARD_OUTPUT;
//	hspi.Init.FirstBit = SPI_FIRSTBIT_MSB;
//	hspi.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
//
//	HAL_SPI_Init(&hspi);
//}
//
//void HAL_SPI_MspInit(SPI_HandleTypeDef *hspi2)
//{
//	if(hspi2->Instance==SPI2){
//
//		// Peripheral clock enable and enable SPI2
//		__HAL_RCC_SPI2_CLK_ENABLE();
//		__HAL_RCC_GPIOA_CLK_ENABLE();
//		__HAL_RCC_GPIOB_CLK_ENABLE();
//
//		/**SPI2 GPIO Configuration
//		PA11     ------> SPI2_NSS
//		PA12     ------> SPI2_SCK
//		PB14     ------> SPI2_MISO
//		PB15     ------> SPI2_MOSI
//		*/
//		GPIO_InitStruct.Pin = GPIO_PIN_11 | GPIO_PIN_12;
//		GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
//		GPIO_InitStruct.Pull = GPIO_NOPULL;
//		GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
//		GPIO_InitStruct.Alternate = GPIO_AF5_SPI2;
//		HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
//
//		GPIO_InitStruct.Pin = GPIO_PIN_14 | GPIO_PIN_15;
//		GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
//		GPIO_InitStruct.Pull = GPIO_NOPULL;
//		GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
//		GPIO_InitStruct.Alternate = GPIO_AF5_SPI2;
//		HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
//	}
//}

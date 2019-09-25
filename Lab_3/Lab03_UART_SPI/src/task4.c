/*
 * task4.c
 *
 *  Created on: Oct 15, 2018
 *      Author: Qianqian
 */


#include "init.h"
#include "uart.h"
#include <stdint.h>
#include "stm32f769xx.h"


GPIO_InitTypeDef  GPIO_InitStruct;
void configureSPI();
SPI_HandleTypeDef hspi;


/*
 task3.c
 *
 *  Created on: Oct 15, 2018
 *      Author: Qianqian
 */

#include "init.h"
#include "uart.h"
#include <stdint.h>
#include "stm32f769xx.h"
#include "stm32f7xx_hal.h"


SPI_HandleTypeDef hspi;
GPIO_InitTypeDef  GPIO_InitStruct;
void configureSPI();

// Main Execution Loop
int main(void)
{
	//Initializations
	Sys_Init();
	HAL_Init();
	configureSPI();
	//Input and output data declaration
	char in_data;
	char out_data;
	uint8_t h1;
	uint8_t h2;
	uint8_t h3;
	//clear the screen
	printf("\033[2J\033[;J\33[0m");
	fflush(stdout);
	// Main Execution Loop
	while (1){
		h1 = h2 = 0;
		h3 = 0x01;
		printf("press any key\r\n");
		in_data = getchar();
		h1 = in_data;
		printf("The key pressed is %c\r\n", in_data);

		HAL_SPI_Transmit(&hspi, &h1, (uint16_t)1,700);	//Transmit data
		asm("nop");
		asm("nop");
		HAL_SPI_TransmitReceive(&hspi, &h1, &h2, (uint16_t)1, 700);	//Transmit and receive data
		asm("nop");
		asm("nop");
		printf("Transmit completed!\r\n");
		if (h1 == 0x7F){
			if (h2 == 0x7F){
				printf("good\r\n");
				while (h2!=0xFF){
					HAL_SPI_Transmit(&hspi, &h3, (uint16_t)1, 700);
					asm("nop");
					asm("nop");
					HAL_SPI_Receive(&hspi, &h2, (uint16_t)1, 700);
					asm("nop");
					asm("nop");
					out_data = h2;
					printf("message: %c\r\n", out_data);
				}
			}
			else{
				out_data = h2;
				printf("The echo from SPI is %c\r\n", out_data);
			}
		}
	}
}

void configureSPI()
{
	//Configure SPI2 used
	hspi.Instance = SPI2; // Please use SPI2!
	hspi.Init.Mode = SPI_MODE_MASTER; // Set master mode
	hspi.Init.TIMode = SPI_TIMODE_DISABLE; // Use Motorola mode, not TI mode
	hspi.Init.Direction = SPI_DIRECTION_2LINES;	//Use 2 lines communication
	hspi.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_256;	//set baud rate
	hspi.Init.DataSize = SPI_DATASIZE_8BIT;	//Specify size of the data transported
	hspi.Init.CLKPolarity = SPI_POLARITY_HIGH;
	hspi.Init.CLKPhase = SPI_PHASE_1EDGE;
	hspi.Init.NSS = SPI_NSS_HARD_OUTPUT;
	hspi.Init.FirstBit = SPI_FIRSTBIT_MSB;
	hspi.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;

	HAL_SPI_Init(&hspi);
}

void HAL_SPI_MspInit(SPI_HandleTypeDef *hspi2)
{
	if(hspi2->Instance==SPI2){

		// Peripheral clock enable and enable SPI2
		__HAL_RCC_SPI2_CLK_ENABLE();
		__HAL_RCC_GPIOA_CLK_ENABLE();
		__HAL_RCC_GPIOB_CLK_ENABLE();

		/**SPI2 GPIO Configuration
		PA11     ------> SPI2_NSS
		PA12     ------> SPI2_SCK
		PB14     ------> SPI2_MISO
		PB15     ------> SPI2_MOSI
		*/
		GPIO_InitStruct.Pin = GPIO_PIN_11 | GPIO_PIN_12;
		GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
		GPIO_InitStruct.Pull = GPIO_NOPULL;
		GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
		GPIO_InitStruct.Alternate = GPIO_AF5_SPI2;
		HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

		GPIO_InitStruct.Pin = GPIO_PIN_14 | GPIO_PIN_15;
		GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
		GPIO_InitStruct.Pull = GPIO_NOPULL;
		GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
		GPIO_InitStruct.Alternate = GPIO_AF5_SPI2;
		HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
	}
}


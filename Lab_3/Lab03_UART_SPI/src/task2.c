//------------------------------------
// Lab 3 - Part 1: UART - Lab03_uart.c
//------------------------------------
//

#include "init.h"
#include "uart.h"
#include <stdint.h>
#include "stm32f769xx.h"
#include "string.h"

// Main Execution Loop
UART_HandleTypeDef SECOND_UART;
__IO ITStatus UartReady = SET;

char cha1[1];
char cha2[1];

int main(void) {
	//Initialize the system

	Sys_Init();
	HAL_Init();				// Initialize HAL


	initUart(&USB_UART, 115200, USART1);
	initUart(&SECOND_UART, 9600, USART6);

	HAL_UART_MspInit(&USB_UART);
	HAL_UART_MspInit(&SECOND_UART);

	HAL_NVIC_SetPriority(USART1_IRQn, 0, 0);
	HAL_NVIC_EnableIRQ(USART1_IRQn);

	HAL_NVIC_SetPriority(USART6_IRQn, 0, 0);
	HAL_NVIC_EnableIRQ(USART6_IRQn);

	while(UartReady == SET){}

}


void USART1_IRQHandler(void) {
	HAL_UART_Receive_IT(&USB_UART, (uint8_t *)cha1, 1);
	//HAL_UART_IRQHandler(&USB_UART);
}

void USART6_IRQHandler(void) {
	HAL_UART_Receive_IT(&SECOND_UART, (uint8_t *)cha2, 1);
 //HAL_UART_IRQHandler(&SECOND_UART);
}

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart){
	if (cha1[0] == 27 || cha2[0] == 27){
		HAL_UART_Transmit_IT(&USB_UART, (uint8_t*)"\033[2J\033[;H", strlen("\033[2J\033[;H"));
		HAL_UART_Transmit_IT(&USB_UART, (uint8_t*)"\nHALT\r\n", strlen("\nHALT\r\n"));
		HAL_UART_Transmit_IT(&SECOND_UART, (uint8_t*)"\033[2J\033[;H", strlen("\033[2J\033[;H"));
		HAL_UART_Transmit_IT(&SECOND_UART, (uint8_t*)"\nHALT\r\n", strlen("\nHALT\r\n"));
		UartReady = RESET;
	}
	else if(huart->Instance == USART1)
		HAL_UART_Transmit_IT(huart, (uint8_t *)cha1, 1);
	else if(huart->Instance == USART6)
		HAL_UART_Transmit_IT(huart, (uint8_t *)cha2, 1);


}


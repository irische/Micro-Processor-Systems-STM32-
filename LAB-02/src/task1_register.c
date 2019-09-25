/*

* task1.c
 *
 *  Created on: Sep 30, 2018
 *      Author: Qianqian
 */

#include "init.h"
#include<stdint.h>


void Init_GPIO();
volatile uint8_t button1_state = 0;

int main() {
	Sys_Init();
	Init_GPIO();
	while (1) {
		// Main loop code goes here
		if(button1_state)
		{
			printf("Button1PUSHED\n\r");
		}
		else{
			printf("Button2NAH\n\r");
		}
		HAL_Delay(100);
	}
}
// -- Init Functions ----------
//
void Init_GPIO() {
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOJEN;
	RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN; // Bitmask for RCC AHB1 initialization: 556U in decimal
	// Looks like GPIO reg updates are synced to a base clock.
	//  for any changes to appear the clocks need to be running.

	//GPIOJ->MODER &= 0x00000000;		//GPIO J pin 0 to input mode
	GPIOJ->PUPDR |= 0x00000002U;	//GPIO J pin 0 to pull up
	// GPIO Interrupt
	// By default pin 0 will trigger the interrupt,
	//  so no need to mess with SYSCFG_EXTICR1.
	//Unmask interrupt.
	// Set interrupt enable for EXTI0 and EXTI8.
	NVIC->ISER[0] = (uint32_t) 1 << (6);
	EXTI -> IMR |= (1<<0);
	EXTI->RTSR |= (1<<0);	//Rising edge enabled
	EXTI->FTSR |= (1<<0);	//Falling
	SYSCFG->EXTICR[0] |= SYSCFG_EXTICR1_EXTI0_PJ;
//	NVIC_SetPriority(EXTI0_IRQn, 0);
//	NVIC_EnableIRQ(EXTI0_IRQn);
}

// -- ISRs (IRQs) -------------
// Non-HAL GPIO/EXTI Handler
void EXTI0_IRQHandler(void) {
	// Clear Interrupt Bit by setting it to 1.
	//if (EXTI->PR &(1<<0)){
		EXTI->PR |= (1<<0);		//clear pending interrupt
		if (button1_state==1){
			button1_state = 0;
		}
		else{
			button1_state = 1;
		}
}



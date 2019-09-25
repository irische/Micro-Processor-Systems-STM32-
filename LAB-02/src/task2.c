/*
 * task2.c
 *  Created on: Sep 30, 2018
 *      Author: Qianqian
 */

#include "init.h"

void Init_GPIO();
void Init_Timer();
signed int counter = 0;

int main() {
	Sys_Init();
	Init_Timer();
	Init_GPIO();

	while (1) {
		printf("\033[2J\033[;H");// Erase screen & move cursor to home position
		fflush(stdout);
		printf("Number of 0.1s is %d", counter);	//Output how many 0.1 second has passed
		printf("\033[30;47m");
		fflush(stdout);
		HAL_Delay(100);
	}
}

void Init_Timer() {
	// Enable the TIM6 interrupt.
	NVIC->ISER[0] = 1;
	// Enable TIM6 clock
	RCC->APB1ENR |= RCC_APB1ENR_TIM6EN;
	asm ( "nop" );
	asm ( "nop" );
	TIM6->CR1 &= ~1;
	// Set pre-scaler to slow down ticlks
	TIM6->PSC = 42352;	//Slow dwon to 42353 tick counts
	// Set the Auto-reload Value
	TIM6->ARR = 255;
	NVIC_EnableIRQ(TIM6_DAC_IRQn);
	// Generate update events to auto reload.
	TIM6->EGR |= 1;
	// Enable Update Interrupts.
	TIM6->DIER |= 1;
	// Start the timer.
	TIM6->CR1 |= 1;
}

void Init_GPIO() {

	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;	//Enable port A
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOJEN;	//Enable port J
	RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;
	RCC->APB1ENR |= RCC_APB1ENR_TIM6EN;		//Enabele Timer6
	//_HAL_RCC_SYSCFG_CLK_ENABLE();
	// Delay after an RCC peripheral clock enabling
	asm ("nop");
	asm ("nop");
	GPIOJ->PUPDR |= 0x00000002U;	//GPIO J pin 0 to pull up
	// GPIO Interrupt
	// By default pin 0 will trigger the interrupt,
	//  so no need to mess with SYSCFG_EXTICR1.
	//Unmask interrupt.
	// Set interrupt enable for EXTI0 and EXTI8.
	NVIC->ISER[0] = (uint32_t) 1 << (6);
	EXTI -> IMR |= (1<<0);
	EXTI->RTSR |= (1<<0);	//Rising edge enabled
	EXTI->FTSR |= (1<<0);	//Falling edge enabled
}

// -- ISRs (IRQs) -------------
//
void TIM6_DAC_IRQHandler() {
	counter++;				//Increment counter
	TIM6->SR &= ~TIM_SR_UIF; // clear UIF flag
	// Other code here:
}
// Non-HAL GPIO/EXTI Handler
void EXTI0_IRQHandler() {
	// Clear Interrupt Bit by setting it to 1.
	EXTI->PR |= (1<<0);
}

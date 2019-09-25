//----------------------------------
// Lab 2 - Timer Interrupts - Task1.c
//----------------------------------
// Objective:
//   Build a small game that records user's reaction time.
//

#include "init.h"
#include<stdint.h>

void Init_GPIO();
volatile uint8_t button1_state = 0;
volatile uint8_t button2_state = 0;
GPIO_InitTypeDef GPIO_InitStructure;

int main() {
	Sys_Init();
	Init_GPIO();
	while (1) {
		// Main loop code goes here
		if(!button1_state && button2_state)	//Both pushed
		{
			printf("\033[2J\033[;H");// Erase screen & move cursor to home position
			fflush(stdout);
			printf("Button1 PUSHED!!  Button2 PUSHED\n\r");
			HAL_Delay(100);
			printf("\033[30;47m");
			fflush(stdout);
		}
		else if (!button1_state && !button2_state){	//1 pushed, 2 not pushed
			printf("\033[2J\033[;H");// Erase screen & move cursor to home position
			fflush(stdout);
			printf("Button1 PUSHED!!  Button2 NAH\n\r");
			HAL_Delay(100);
			printf("\033[30;47m");
			fflush(stdout);
		}
		else if (button1_state && button2_state){	//1 not pushed, 2 pushed
			printf("\033[2J\033[;H");// Erase screen & move cursor to home position
			fflush(stdout);
			printf("Button1 NAH!!  Button2 PUSHED\n\r");
			HAL_Delay(100);
			printf("\033[30;47m");
			fflush(stdout);
		}
		else{										//Both not pushed
			printf("\033[2J\033[;H");// Erase screen & move cursor to home position
			fflush(stdout);
			printf("Button1 NAH!!  Button2 NAH\n\r");
			HAL_Delay(100);
			printf("\033[30;47m");
			fflush(stdout);
		}
		HAL_Delay(100);
	}
}
// -- Init Functions ----------
//
void Init_GPIO() {
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOJEN;
	RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;
	__HAL_RCC_GPIOC_CLK_ENABLE();		// Bitmask for RCC AHB1 initialization: 556U in decimal
	// Looks like GPIO reg updates are synced to a base clock.
	//  for any changes to appear the clocks need to be running.

	//GPIO J pin 0 to input mode by default
	GPIOJ->PUPDR |= 0x00000002U;	//GPIO J pin 0 to pull up

	GPIO_InitStructure.Pin = GPIO_PIN_8;//GPIOC PIN8 is selected
	GPIO_InitStructure.Mode = GPIO_MODE_IT_RISING_FALLING; // digital Input
	GPIO_InitStructure.Pull = GPIO_PULLUP;//PC8 pull-up
	GPIO_InitStructure.Speed = GPIO_SPEED_LOW;
	HAL_GPIO_Init(GPIOC, &GPIO_InitStructure);
	// GPIO Interrupt
	// By default pin 0 will trigger the interrupt,
	//  so no need to mess with SYSCFG_EXTICR1.
	HAL_NVIC_SetPriority(EXTI9_5_IRQn, 0, 0);
	HAL_NVIC_EnableIRQ(EXTI9_5_IRQn);

	NVIC->ISER[0] = (uint32_t) 1 << (6);
	EXTI -> IMR |= (1<<0);	//Unmask
	EXTI->RTSR |= (1<<0);	//Rising edge enabled
	EXTI->FTSR |= (1<<0);	//Falling edge enabled
	SYSCFG->EXTICR[0] |= SYSCFG_EXTICR1_EXTI0_PJ;

}

// -- ISRs (IRQs) -------------
// Non-HAL GPIO/EXTI Handler
void EXTI0_IRQHandler(void) {
	EXTI->PR |= (1<<0);		//clear pending interrupt
	if (button1_state==1){	//Set push button state
		button1_state = 0;
	}
	else{
		button1_state = 1;
	}
}
//HAL GPIO/EXTI Handler
void EXTI9_5_IRQHandler(void){
	HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_8);
}
//HAL Callback function
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin){
	if (GPIO_Pin == GPIO_PIN_8){
		if (button2_state==1){
			button2_state = 0;
		}
		else{
			button2_state = 1;
		}
	}
	else{
		if (button2_state==1){
			button2_state = 0;
		}
		else{
			button2_state = 0;
		}
	}
}

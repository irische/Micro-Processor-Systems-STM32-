/*
 *
task4.c
 *
 *  Created on: Oct 1, 2018
 *      Author: Qianqian
 */
#include "init.h"
#include <stdio.h>
#include <stdlib.h>

void Init_GPIO();
void blinkScreen();
void Init_Timer();

//Variables definition
signed int counter1 = 0;
signed int counter2 = 0;
signed int time = 0;
int sum[5];
int last[5];
signed int num = 0;
unsigned int randn = 50;
signed int flag = 0;
int total = 0;
volatile uint8_t button1_state = 0;
volatile uint8_t button2_state = 0;

GPIO_InitTypeDef GPIO_InitStructure;

int main() {
	Sys_Init();
	Init_Timer();
	Init_GPIO();

	while (1) {
		// Main loop code goes here
		if (counter1 >= randn){
			randn = abs(rand() % 60);	//Generate a random number each time
			printf("rand %d", randn);
			num++;
			blinkScreen();		//Blink the screen
			counter1 = 0;
			counter2 = 0;
			time = 0;
			flag = 1;			//Clear every counter and flag
		}
		if (flag){
			while (!button1_state && counter1 < randn){}
				time = counter2 *100;	//Record reaction time in ms.
				if (num < 5){
					sum[num] = time;
				}
				else{					//Loop to store the last 5 reaction times
					for (int i = 0; i < 4; ++i){
						last[i] = sum[i+1];
					}
					for (int i = 0; i < 4; ++i){
						sum[i] = last[i];
					}
					sum[4] = time;
				}
				printf("\033[2J\033[;H");// Erase screen & move cursor to home position
				fflush(stdout);
				printf("Reaction time: %d ms\r\n", time);	//Print out the reaction time
				printf("\033[30;47m");
				fflush(stdout);
				button1_state = 0;
				flag = 0;
		}
		if (button2_state){		//Terminate this round and output average reaction time of the
								//last 5 times
			printf("\033[2J\033[;H");// Erase screen & move cursor to home position
			fflush(stdout);
			int track = 0;
			for (int i = 0; i < 5; i++){
				if (sum[i] !=0){
					total += sum[i];
					track++;
				}
			}
			printf("The average reaction time is %d\r\n", total/track);
			printf("\033[30;47m");
			fflush(stdout);
			break;
		}
		HAL_Delay(50);
	}
}

void blinkScreen(){
	printf("\033[30;47m");
	// Clear and redraw display (flash it & sound the bell).
	printf("\a\033[s\033[2J\033[u");
	fflush(stdout);
	HAL_Delay(100);

	printf("\033[37;40m");
	// Clear and redraw display (flash it).
	printf("\033[s\033[2J\033[u");
	fflush(stdout);
}

void Init_Timer() {
	// Enable the TIM6 interrupt.
	// Looks like HAL hid this little gem, this register isn't mentioned in
	//   the STM32F7 ARM Reference Manual....
	NVIC->ISER[0] = 1;
	// Enable TIM6 clock
	RCC->APB1ENR |= RCC_APB1ENR_TIM6EN;
	asm ( "nop" );
	asm ( "nop" );
	TIM6->CR1 &= ~1;
	// Set pre-scaler to slow down ticlks
	TIM6->PSC = 42352;	//Slow dwon to 1080000 tick counts
	// Set the Auto-reload Value for 10Hz overflow
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

	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOJEN;
	RCC->APB2ENR |= RCC_APB2ENR_SYSCFGEN;
	RCC->APB1ENR |= RCC_APB1ENR_TIM6EN;
	//_HAL_RCC_SYSCFG_CLK_ENABLE();
	// Delay after an RCC peripheral clock enabling
	asm ("nop");
	asm ("nop");
	GPIOJ->PUPDR |= 0x00000002U;	//GPIO J pin 0 to pull up

	GPIO_InitStructure.Pin = GPIO_PIN_8;//GPIOC PIN8 is selected
	GPIO_InitStructure.Mode = GPIO_MODE_IT_FALLING; // digital Input
	GPIO_InitStructure.Pull = GPIO_PULLUP;//PC8 pull-up
	GPIO_InitStructure.Speed = GPIO_SPEED_LOW;
	HAL_GPIO_Init(GPIOC, &GPIO_InitStructure);

	HAL_NVIC_SetPriority(EXTI9_5_IRQn, 0, 0);
	HAL_NVIC_EnableIRQ(EXTI9_5_IRQn);
	// GPIO Interrupt
	// By default pin 0 will trigger the interrupt,
	//  so no need to mess with SYSCFG_EXTICR1.

	// Set interrupt enable for EXTI0 and EXTI8.
	NVIC->ISER[0] = (uint32_t) 1 << (6);
	EXTI -> IMR |= (1<<0);
	//EXTI->RTSR |= (1<<0);	//Rising edge enabled
	EXTI->FTSR |= (1<<0);	//Falling
	SYSCFG->EXTICR[0] |= SYSCFG_EXTICR1_EXTI0_PJ;
}

// -- ISRs (IRQs) -------------
//
void TIM6_DAC_IRQHandler() {
	counter1++;
	counter2++;
	TIM6->SR &= ~TIM_SR_UIF; // clear UIF flag
	// Other code here:
}

// Non-HAL GPIO/EXTI Handler
void EXTI0_IRQHandler(void) {
	// Clear Interrupt Bit by setting it to 1.
	EXTI->PR |= (1<<0);
	button1_state = 1;
}
// HAL CPIO/EXTI Handler
void EXTI9_5_IRQHandler(void){
	HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_8);
}
// HAL Callback function
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

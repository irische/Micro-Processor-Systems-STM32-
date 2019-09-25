////----------------------------------
//// Lab 2 - Timer Interrupts - Lab02.c
////----------------------------------
//// Objective:
////   Build a small game that records user's reaction time.
////
//
//// -- Imports ---------------
////
//#include "init.h"
//#include<stdint.h>
//
//
//void Init_GPIO();
//volatile uint8_t button2_state = 0;
//// -- Code Body -------------
//
//int main() {
//	Sys_Init();
//	Init_GPIO();
//	while (1) {
//		// Main loop code goes here
//		if(button2_state)
//		{
//			printf("Button2PUSHED\n\r");
//		}
//		else{
//			printf("Button2NAH\n\r");
//		}
//		HAL_Delay(100);
//	}
//}
//// -- Init Functions ----------
////
//
//void Init_GPIO() {
//
//    __HAL_RCC_GPIOC_CLK_ENABLE();// Need to enable clock for peripheral bus on GPIO Port J
//    GPIO_InitTypeDef GPIO_InitStruct;
//
//	// Set Pin 8 as input (button) with pull-down.
//    GPIO_InitStruct.Pin = GPIO_PIN_8;//GPIOC PIN8 is selected
//    GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING; // digital Input
//    GPIO_InitStruct.Pull = GPIO_PULLUP;//PC8 pull-up
//    GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
//    HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
//
//    HAL_NVIC_SetPriority(EXTI9_5_IRQn, 0, 0);
//    HAL_NVIC_EnableIRQ(EXTI9_5_IRQn);
//}
//
////HAL - GPIO/EXTI Handler
//void EXTI9_5_IRQHandler(void){
//	HAL_GPIO_EXTI_IRQHandler(GPIO_PIN_8);
//}
//
//void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin){
//	__HAL_GPIO_EXTI_CLEAR_IT(GPIO_PIN_8);
//	if (button2_state==1){
//		button2_state = 0;
//	}
//	else{
//		button2_state = 1;
//	}
//}
//
//// For the HAL timer interrupts, all of the associated Callbacks need to exist,
//// otherwise during assembly, they will generate compiler errors as missing symbols
//// Below are the ones that are not used.
//
//// void HAL_TIMEx_BreakCallback(TIM_HandleTypeDef *htim){};
//// void HAL_TIMEx_CommutationCallback(TIM_HandleTypeDef *htim){};

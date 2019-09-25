#include "init.h"
#include<stdint.h>
#include "stm32f769xx.h"

TIM_HandleTypeDef htim7;
int count = 0;

int main(void)
{
    Sys_Init();
    HAL_Init();

    __HAL_RCC_TIM7_CLK_ENABLE();////Enable the TIM7 peripheral

    htim7.Instance = TIM7;
    htim7.Init.Prescaler = 10799;//108MHZ/10799=10000
    htim7.Init.Period = 1000;//1000HZ / 1000 = 10Hz = 0.1s

    HAL_TIM_Base_Init(&htim7);//Configure the timer
    HAL_TIM_Base_Start_IT(&htim7);//Start the timer

    HAL_NVIC_SetPriority(TIM7_IRQn, 0, 0); //Enable the peripheral IRQ
    HAL_NVIC_EnableIRQ(TIM7_IRQn);

    asm("nop");
    asm("nop");
    while(1);
}

void TIM7_IRQHandler()
{// Pass the control to HAL, which processes the IRQ
    HAL_TIM_IRQHandler(&htim7);
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{// This callback is automatically called by the HAL on the UEV event
    if (htim->Instance == TIM7){
        count=count+1;
        printf("number %d 0.1s\r\n",count);
    }
}
void HAL_TIMEx_BreakCallback(TIM_HandleTypeDef *htim){};
void HAL_TIMEx_CommutationCallback(TIM_HandleTypeDef *htim){};

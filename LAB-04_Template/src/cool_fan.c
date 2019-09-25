/*

 * cool_fan.c
 *
 *  Created on: Dec 17, 2018
 *      Author: Qianqian
 */


//----------------------------------
// Final Project----The Tornado
//----------------------------------
// Objective:
//   Build a smart cooling fan
//

//
//
// -- Imports ---------------
//
#include<stdint.h>
#include<stdio.h>
#include "init.h"
#include "uart.h"
#include "stm32f7xx_hal_conf.h"
#include "stm32f7xx_hal_i2c.h"

#define WHO_AM_I_REGISTER 0xF
//#include "stm32f7_i2c.h"

int flag1;
//
// -- Prototypes ------------
//
//TypeDef
GPIO_InitTypeDef GPIO_InitStruct;
ADC_HandleTypeDef hadc1;
I2C_HandleTypeDef hi2c1;
TIM_HandleTypeDef htim7;

//Initilization functions
void Init_GPIO();
int count = 0;
void MX_I2C1_Init(void);
//Utility functions

//
// -- Code Body -------------
int main() {
	//Initializations
	Sys_Init();
	MX_I2C1_Init();
	Init_GPIO();
	HAL_Init();
	uint8_t i2cBuf[2];

	__HAL_RCC_TIM7_CLK_ENABLE();
		htim7.Instance = TIM7;
		htim7.Init.Prescaler = 10799;//108MHZ/10799=10000
		htim7.Init.Period = 1000;//1000HZ / 1000 = 10Hz = 0.1s
		HAL_TIM_Base_Init(&htim7);//Configure the timer
	   HAL_TIM_Base_Start_IT(&htim7);//Start the timer

	   HAL_NVIC_SetPriority(TIM7_IRQn, 0, 0); //Enable the peripheral IRQ
	   HAL_NVIC_EnableIRQ(TIM7_IRQn);
	//Definition of variables used
	uint32_t raw_value = 0;
	double voltage = 0.0;
	int button=0;
	uint16_t temp_raw = 0;

	//ADC of Potentiometer
	HAL_ADC_Init(&hadc1);
	HAL_ADC_MspInit(&hadc1);
	HAL_ADC_Start(&hadc1);

	while (1) {



		//ADC conversion (0-3.3V) for potentiometer when buttun pressed
		HAL_ADC_Start (&hadc1);

		HAL_ADC_PollForConversion (&hadc1, HAL_MAX_DELAY);	//Waiting for the conversion to be done

		raw_value = HAL_ADC_GetValue (&hadc1);	//Store the value read
		voltage = raw_value*(double)(0.000806);	//Based on the conversion of result, convert the raw value to voltage
		HAL_ADC_Stop(&hadc1);	//Stop after reading a value
		HAL_Delay(100);
		//printf("j\r\n");
		button=HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_12);
		//if (!button){

			printf("reading is %d. %f\r\n", raw_value, voltage);
	//	}
		//if(1){
			flag1=0;
			HAL_GPIO_WritePin(GPIOB, GPIO_PIN_15, 0xFFFF);

	//	}

//		HAL_Delay(100);
//		uint32_t distance=0;
//		i2cBuf[0]=0;
//		HAL_I2C_Master_Sequential_Transmit_IT(&hi2c1, 0x33,i2cBuf,1,I2C_FIRST_FRAME);
//		printf("distance: %u\r\n", distance);
//		//HAL_Delay(500);
	}
}

//
// -- Utility Functions ------

//
// -- Init Functions ----------




//Configure ADC1 to 12bit, channel 12, 15 cycle
void HAL_ADC_MspInit(ADC_HandleTypeDef* hadc){
	ADC_ChannelConfTypeDef sConfig;

	hadc1.Instance = ADC1;
	hadc1.Init.ClockPrescaler = ADC_CLOCK_SYNC_PCLK_DIV2;
	hadc1.Init.Resolution = ADC_RESOLUTION_12B;
	hadc1.Init.ScanConvMode = DISABLE;
	hadc1.Init.ContinuousConvMode = ENABLE;
	hadc1.Init.DiscontinuousConvMode = DISABLE;
	hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
	hadc1.Init.NbrOfConversion = 1;

	sConfig.Channel = ADC_CHANNEL_12;
	sConfig.Rank = 1;
	sConfig.SamplingTime = ADC_SAMPLETIME_15CYCLES;
	HAL_ADC_ConfigChannel(&hadc1, &sConfig);

	// ADC Peripheral clock enable
	__HAL_RCC_ADC1_CLK_ENABLE();
	__HAL_RCC_GPIOA_CLK_ENABLE();
	//Potentiometer as input PC2 (A2)
	GPIO_InitStruct.Pin = GPIO_PIN_2;
	GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
	GPIO_InitStruct.Pull = GPIO_NOPULL;
	HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
}

void MX_I2C1_Init(void)
{

	GPIO_InitTypeDef GPIO_InitStruct;

	 __HAL_RCC_I2C1_CLK_ENABLE();
	 hi2c1.Instance = I2C1;
	 //hi2c1.Init.ClockSpeed = 100000;
	 //hi2c1.Init.DutyCycle = I2C_DUTYCYCLE_2;
	 hi2c1.Init.OwnAddress1 = 0x0;
	 hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
	 hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
	 hi2c1.Init.OwnAddress2 = 0;
	 hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
	 hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;

	 GPIO_InitStruct.Pin = GPIO_PIN_8|GPIO_PIN_9;
	 GPIO_InitStruct.Mode = GPIO_MODE_AF_OD;
	 GPIO_InitStruct.Pull = GPIO_PULLUP;
	 GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
	 GPIO_InitStruct.Alternate = GPIO_AF4_I2C1;
	 HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

	 HAL_I2C_Init(&hi2c1);
 }

void Init_GPIO() {

	__HAL_RCC_GPIOF_CLK_ENABLE();
	__HAL_RCC_GPIOB_CLK_ENABLE();
	__HAL_RCC_GPIOC_CLK_ENABLE();
	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;

	//Ultrasonic Ranger

	//Trig pin output
	GPIO_InitStruct.Pin = GPIO_PIN_8;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
	HAL_GPIO_Init(GPIOF, &GPIO_InitStruct);

	//Echo pin input
	GPIO_InitStruct.Pin = GPIO_PIN_9;
	GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
	GPIO_InitStruct.Pull = GPIO_PULLDOWN;
	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
	HAL_GPIO_Init(GPIOF, &GPIO_InitStruct);

	//LED as output PB14 (D12)
	GPIO_InitStruct.Pin = GPIO_PIN_14;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
	HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

	GPIO_InitStruct.Pin = GPIO_PIN_7;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
	HAL_GPIO_Init(GPIOF, &GPIO_InitStruct);

	GPIO_InitStruct.Pin = GPIO_PIN_3|GPIO_PIN_4;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
	HAL_GPIO_Init(GPIOJ, &GPIO_InitStruct);

	GPIO_InitStruct.Pin = GPIO_PIN_11;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
	HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

	GPIO_InitStruct.Pin = GPIO_PIN_7;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
	HAL_GPIO_Init(GPIOF, &GPIO_InitStruct);

	GPIO_InitStruct.Pin = GPIO_PIN_6;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
	HAL_GPIO_Init(GPIOH, &GPIO_InitStruct);
	//Pushbutton on Disco board PA12
	GPIO_InitStruct.Pin = GPIO_PIN_12;//GPIOA PIN0 is selected
    GPIO_InitStruct.Mode = GPIO_MODE_INPUT; // digital Input
    GPIO_InitStruct.Pull = GPIO_PULLUP;//PA0 pull-up
    GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

	//Motor for the fan blade
    GPIO_InitStruct.Pin = GPIO_PIN_15;
	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
	GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
	HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

	//4-digit 7-segment display

}


//
// -- ISRs (IRQs) -------------
//
void TIM7_IRQHandler()
{// Pass the control to HAL, which processes the IRQ
   HAL_TIM_IRQHandler(&htim7);
}
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{// This callback is automatically called by the HAL on the UEV event
   if (htim->Instance == TIM7){
       count=count+1;
       if(count%1000==0){
    	   int flag1=0;
    	   flag1=1;
       }
   }
       //printf("number %d 0.1s\r\n",count);

}
void HAL_TIMEx_BreakCallback(TIM_HandleTypeDef *htim){};
void HAL_TIMEx_CommutationCallback(TIM_HandleTypeDef *htim){};
//
void I2C1_EV_IRQHandler(void){
	HAL_I2C_EV_IRQHandler(&hi2c1);

}
void I2C1_ER_IRQHandler(void){
	HAL_I2C_ER_IRQHandler(&hi2c1);
}

void HAL_I2C_AddrCallback(I2C_HandleTypeDef *hi2c, uint8_t TransferDirection, uint16_t AddrMatchCode){
	UNSUED(AddrMatchCode);

	uint8_t transferRequested = 0;
	uint8_t transferDirection = 0;
	if(hi2c->Instance == I2C1) {
		transferRequested = 1;
		transferDirection = TransferDirection;
	}
}


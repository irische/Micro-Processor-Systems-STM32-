///*
//
// * task_4.c
// *
// *  Created on: Nov 15, 2018
// *      Author: Qianqian
// */
//
//
//#include "init.h"
//#include "uart.h"
//#include <stdint.h>
//#include "stm32f769xx.h"
//#include "stm32f7xx_hal_conf.h"
//
////Initializations of GPIO port pin and ADC properties
//GPIO_InitTypeDef GPIO_InitStructure;
//void HAL_ADC_MspInit();
//
//ADC_HandleTypeDef hadc1;
//DAC_HandleTypeDef hdac;
//void configureDAC(void);
//
////Defination of variables used
//uint32_t value;
//double volt;
//
//
//
//int main(void){
//
//	Sys_Init();
//	printf("\033[2J\033[;H");// Erase screen & move cursor to home position
//	fflush(stdout);
//	HAL_Init();
//
//	//Configure ADC1
//	HAL_ADC_Init(&hadc1);
//	HAL_ADC_MspInit(&hadc1);
//	HAL_ADC_Start (&hadc1);	//Start ADC conversion
//	//Configure DAC
//	configureDAC();
//	HAL_DAC_MspInit(&hdac);
//	HAL_DAC_Init(&hdac);
//	HAL_DAC_Start(&hdac, DAC_CHANNEL_1);	//Start DAC conversion
//
//	double a,b,c,d;	//Constants in the eqation
//	double currenty = 0;	//resulting output value
//	double y = 0;
//	double value1 = 0;	//previous read value
//	double value2 = 0;	//Current read value
//	double value = 0;	//previous second read value
//
//	while (1){
//		HAL_ADC_PollForConversion (&hadc1, HAL_MAX_DELAY);	//Waiting for the conversion to be done
//		value = value1;
//		value1 = value2;
//		value2 = HAL_ADC_GetValue (&hadc1);	//Assign number to the current and previous two values
//		volt = value*(double)(0.000806);	//Based on the conversion of result, convert the raw value to voltage
//
//		//Assign the constants to the values specified in the equation
//		a=0.3125;
//		b=0.24038462;
//		c=0.3125;
//		d=0.296875;
//		currenty=0;
//		//Do the calculation
//		asm("VMLA.F64 %P[tmp1],%P[tmp2],%P[tmp3]"	//a*value2, store in currenty
//		   : [tmp1] "+w" (currenty)
//		   : [tmp2] "w" (a) , [tmp3] "w" (value2));
//		asm("VMLA.F64 %P[tmp1],%P[tmp2],%P[tmp3]"	//b*value1, added to currenty
//		   : [tmp1] "+w" (currenty)
//		   : [tmp2] "w" (b) , [tmp3] "w" (value1));
//		asm("VMLA.F64 %P[tmp1],%P[tmp2],%P[tmp3]"	//c*value, added to currenty
//		   : [tmp1] "+w" (currenty)
//		   : [tmp2] "w" (c) , [tmp3] "w" (value));
//		asm("VMLA.F64 %P[tmp1],%P[tmp2],%P[tmp3]"	//d*y, added to currenty
//		   : [tmp1] "+w" (currenty)
//		   : [tmp2] "w" (d) , [tmp3] "w" (y));
//		y=currenty;
//		HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, y);	//Get DAC converted value at channel1, 12bit
//	}
//}
//
////Configure ADC1 to 12bit, channel 12, 15 cycle
//void HAL_ADC_MspInit(ADC_HandleTypeDef* hadc){
//	ADC_ChannelConfTypeDef sConfig;
//
//	hadc1.Instance = ADC1;
//	hadc1.Init.ClockPrescaler = ADC_CLOCK_SYNC_PCLK_DIV2;
//	hadc1.Init.Resolution = ADC_RESOLUTION_12B;
//	hadc1.Init.ScanConvMode = DISABLE;
//	hadc1.Init.ContinuousConvMode = ENABLE;
//	hadc1.Init.DiscontinuousConvMode = DISABLE;
//	hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
//	hadc1.Init.NbrOfConversion = 1;
//
//	sConfig.Channel = ADC_CHANNEL_12;
//	sConfig.Rank = 1;
//	sConfig.SamplingTime = ADC_SAMPLETIME_3CYCLES;
//	HAL_ADC_ConfigChannel(&hadc1, &sConfig);
//
//	// ADC Periph clock enable
//	__HAL_RCC_ADC1_CLK_ENABLE();
//	// Enable GPIO clock
//	__HAL_RCC_GPIOC_CLK_ENABLE();
//	//PC2     ------> ADC1_IN1
//	GPIO_InitStructure.Pin = GPIO_PIN_2;
//	GPIO_InitStructure.Mode = GPIO_MODE_ANALOG;
//	GPIO_InitStructure.Pull = GPIO_NOPULL;
//	HAL_GPIO_Init(GPIOC, &GPIO_InitStructure);
//
//}
//
////Initialize DAC at channel 1
//void configureDAC(void)
//{
//	DAC_ChannelConfTypeDef sConfig;
//	__HAL_RCC_DAC_CLK_ENABLE();
//	hdac.Instance = DAC;
//	HAL_DAC_Init(&hdac);
//
//	sConfig.DAC_Trigger = DAC_TRIGGER_NONE;
//	sConfig.DAC_OutputBuffer = DAC_OUTPUTBUFFER_ENABLE;
//	HAL_DAC_ConfigChannel(&hdac, &sConfig, DAC_CHANNEL_1);
//
//}
//

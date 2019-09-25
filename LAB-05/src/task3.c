/*
 * task3.c
 *
 *  Created on: Nov 12, 2018
 *      Author: Qianqian
 */

#include "init.h"
#include "uart.h"
#include <stdint.h>
#include "stm32f769xx.h"
#include "stm32f7xx_hal_conf.h"
#define BUFFER_SIZE 256


//Initializations of GPIO port pin and ADC properties
GPIO_InitTypeDef GPIO_InitStructure;

void HAL_ADC_MspInit(ADC_HandleTypeDef* hadc);	//Function configuring ADC using DMA
void MX_ADC1_Init(void);	//Function configuring ADC
void configureDAC(void);	//Function configuring DAC

ADC_HandleTypeDef hadc1;
DAC_HandleTypeDef hdac;
DMA_HandleTypeDef hdma_adc1;

//Definition of variables used
uint32_t value;
double volt;
uint16_t   ConvertedValues[BUFFER_SIZE];	//The array storing the ADC values


int main(void){

	Sys_Init();
	printf("\033[2J\033[;H");// Erase screen & move cursor to home position
	fflush(stdout);
	HAL_Init();

	//Configure ADC1 with DMA
	HAL_ADC_Init(&hadc1);
	HAL_ADC_MspInit(&hadc1);
	MX_ADC1_Init();

	HAL_ADC_Start_DMA(&hadc1,(uint32_t *)ConvertedValues,1);	//Start ADC conversion using DMA
	//Configure DAC
	configureDAC();
	HAL_DAC_MspInit(&hdac);
	HAL_DAC_Init(&hdac);
	HAL_DAC_Start(&hdac, DAC_CHANNEL_1);	//Start DAC conversion

	double a,b,c,d;	//Constants in the equation
	double currenty = 0;	//resulting output value
	double y = 0;
	double value1 = 0;	//previous read value
	double value2 = 0;	//Current read value
	double value = 0;	//previous second read value

	while (1){

		value = value1;
		value1 = value2;
		value2 = ConvertedValues[0];	//Assign number to the current and previous two values

		volt = value*(double)(0.000806);	//Based on the conversion of result, convert the raw value to voltage
		//Assign the constants to the values specified in the equation
		a=0.3125;
		b=0.24038462;
		c=0.3125;
		d=0.296875;
		currenty=0;
		//Do the calculation
		asm("VMLA.F64 %P[tmp1],%P[tmp2],%P[tmp3]"	//a*value2, store in currenty
		   : [tmp1] "+w" (currenty)
		   : [tmp2] "w" (a) , [tmp3] "w" (value2));
		asm("VMLA.F64 %P[tmp1],%P[tmp2],%P[tmp3]"	//b*value1, added to currenty
		   : [tmp1] "+w" (currenty)
		   : [tmp2] "w" (b) , [tmp3] "w" (value1));
		asm("VMLA.F64 %P[tmp1],%P[tmp2],%P[tmp3]"	//c*value, added to currenty
		   : [tmp1] "+w" (currenty)
		   : [tmp2] "w" (c) , [tmp3] "w" (value));
		asm("VMLA.F64 %P[tmp1],%P[tmp2],%P[tmp3]"	//d*y, added to currenty
		   : [tmp1] "+w" (currenty)
		   : [tmp2] "w" (d) , [tmp3] "w" (y));
		y=currenty;
		printf("y: %d\r\n", y);
		HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, y);	//Get DAC converted value at channel1, 12bit
	}
}

//Configure ADC1 to 12bit, channel 12, 15 cycle
void MX_ADC1_Init(void){
	ADC_ChannelConfTypeDef sConfig;

	hadc1.Instance = ADC1;
	hadc1.Init.ClockPrescaler = ADC_CLOCK_SYNC_PCLK_DIV2;
	hadc1.Init.Resolution = ADC_RESOLUTION_12B;
	hadc1.Init.ScanConvMode = DISABLE;
	hadc1.Init.ContinuousConvMode = ENABLE;
	hadc1.Init.DMAContinuousRequests = ENABLE;
	hadc1.Init.DiscontinuousConvMode = DISABLE;
	hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
	hadc1.Init.NbrOfConversion = 1;

	sConfig.Channel = ADC_CHANNEL_12;
	sConfig.Rank = 1;
	sConfig.SamplingTime = ADC_SAMPLETIME_3CYCLES;
	HAL_ADC_ConfigChannel(&hadc1, &sConfig);

	// ADC Periph clock enable
	__HAL_RCC_ADC1_CLK_ENABLE();
	// Enable GPIO clock
	__HAL_RCC_GPIOC_CLK_ENABLE();
	//PC2     ------> ADC1_IN1
	GPIO_InitStructure.Pin = GPIO_PIN_2;
	GPIO_InitStructure.Mode = GPIO_MODE_ANALOG;
	GPIO_InitStructure.Pull = GPIO_NOPULL;
	HAL_GPIO_Init(GPIOC, &GPIO_InitStructure);
}

//Configure DMA
void HAL_ADC_MspInit(ADC_HandleTypeDef* hadc){
	if(hadc->Instance==ADC1)
	{
	/* Peripheral DMA clock enable */
		__HAL_RCC_DMA2_CLK_ENABLE();
	/* Peripheral DMA initialization */
		hdma_adc1.Instance = DMA2_Stream4;
		hdma_adc1.Init.Channel = DMA_CHANNEL_0;

	//Analog-To-Digital Conversion
		hdma_adc1.Init.Direction = DMA_PERIPH_TO_MEMORY;
		hdma_adc1.Init.PeriphInc = DMA_PINC_DISABLE;
		hdma_adc1.Init.MemInc = DMA_MINC_ENABLE;
		hdma_adc1.Init.PeriphDataAlignment = DMA_PDATAALIGN_HALFWORD;
		hdma_adc1.Init.MemDataAlignment = DMA_MDATAALIGN_HALFWORD;
		hdma_adc1.Init.Mode = DMA_CIRCULAR;		//Circular Mode
		hdma_adc1.Init.Priority = DMA_PRIORITY_LOW;
		hdma_adc1.Init.FIFOMode = DMA_FIFOMODE_DISABLE;
		HAL_DMA_Init(&hdma_adc1);
		__HAL_LINKDMA(hadc,DMA_Handle,hdma_adc1);	//Link ADC with DMA

		HAL_NVIC_SetPriority(DMA2_Stream4_IRQn, 0, 0);
		HAL_NVIC_EnableIRQ(DMA2_Stream4_IRQn);
	}
}


//Initialize DAC at channel 1
void configureDAC(void)
{
	DAC_ChannelConfTypeDef sConfig;
	__HAL_RCC_DAC_CLK_ENABLE();
	hdac.Instance = DAC;
	HAL_DAC_Init(&hdac);

	sConfig.DAC_Trigger = DAC_TRIGGER_NONE;
	sConfig.DAC_OutputBuffer = DAC_OUTPUTBUFFER_ENABLE;
	HAL_DAC_ConfigChannel(&hdac, &sConfig, DAC_CHANNEL_1);

}


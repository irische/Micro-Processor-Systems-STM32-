/*
// * task_3.c
 *  Created on: Sep 17, 2018
 *      Author: Qianqian Che
 *      This is Task_3 for lab 1, where I use only registers to configure
 *      STM32 with external electronics. By doing so, I am able to manipulate LEDs
 *      dependent on switches.
 */

//------------------------------------------------------------------------------------
// Includes
//------------------------------------------------------------------------------------
#include<stdint.h>
#include "hello.h"
#include "init.h"
#include "uart.h"

GPIO_InitTypeDef GPIO_InitStruct;
//------------------------------------------------------------------------------------
// MAIN Routine
//------------------------------------------------------------------------------------
int main(void)
{
    Sys_Init(); // This always goes at the top of main (defined in init.c)

    volatile uint32_t * RCC_AHB1_CLOCK_ENABLE = (uint32_t*) 0x40023830U; // Enable clock for peripheral bus on GPIO Port
    *RCC_AHB1_CLOCK_ENABLE |= 556U; // Bitmask for RCC AHB1 initialization: 556U in decimal

    //Set LED to Output mode
    GPIOJ->MODER |= 0x04000400U;	//GPIO J pin 13&5 to output mode
    GPIOA->MODER |= 0x01000000U;	//GPIO A pin 12 to output mode
    GPIOD->MODER |= 0x00000100U;	//GPIO D pin 4 to output mode
    //Set D0 through D3 to Digital Inputs, internal pull-up registers enabled
    GPIOC->MODER &= 0x00000000;		//GPIO C pin 6&7 to input mode
	GPIOJ->MODER &= 0x04000400;		//GPIO J pin 1 to input mode
	GPIOF->MODER &= 0x00000000;		//GPIO F pin 6 to input mode

    GPIOC->PUPDR |= 0x00005000U;	//GPIO C PIN 6&7 to pull up
    GPIOJ->PUPDR |= 0x00000004U;	//GPIO J pin 1 to pull up
    GPIOF->PUPDR |= 0x00001000U;	//GPIO F pin 6 to pull up

    while (1){

    	if(!(GPIOC->IDR & (0x00000080))){	//If D0	light LD0
    		GPIOJ->BSRR = (uint16_t)GPIO_PIN_13; // Turn on LD0
    	}
    	else{
    		GPIOJ->BSRR = (uint32_t)GPIO_PIN_13 << 16;	// Turn off LD0
    	}
    	if (!(GPIOC->IDR & (0x00000040))){		//If D1 light LD1
    		GPIOJ->BSRR = (uint16_t)GPIO_PIN_5;
    	}
    	else{
    		GPIOJ->BSRR = (uint32_t)GPIO_PIN_5 << 16;	//Turn off LD1

    	}
    	if (!(GPIOJ->IDR &(0x00000002))){	//If D2 light LD2
    		GPIOA->BSRR = (uint16_t)GPIO_PIN_12;
    	}
    	else{
    	    GPIOA->BSRR = (uint32_t)GPIO_PIN_12 << 16; // Turn off LD2
    	}
    	if (!(GPIOF->IDR &(0x00000040))){	//If D3 light LD3
    		GPIOD->BSRR = (uint32_t)GPIO_PIN_4 << 16;
    	}
    	else{
    		GPIOD->BSRR = (uint16_t)GPIO_PIN_4;	//Turn off LD3
    	}
    }

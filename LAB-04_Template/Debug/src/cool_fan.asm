   1              		.cpu cortex-m7
   2              		.eabi_attribute 28, 1
   3              		.eabi_attribute 20, 1
   4              		.eabi_attribute 21, 1
   5              		.eabi_attribute 23, 3
   6              		.eabi_attribute 24, 1
   7              		.eabi_attribute 25, 1
   8              		.eabi_attribute 26, 1
   9              		.eabi_attribute 30, 1
  10              		.eabi_attribute 34, 1
  11              		.eabi_attribute 18, 4
  12              		.file	"cool_fan.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.HAL_ADC_MspInit,"ax",%progbits
  17              		.align	1
  18              		.global	HAL_ADC_MspInit
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv5-d16
  24              	HAL_ADC_MspInit:
  25              	.LFB139:
  26              		.file 1 "../src/cool_fan.c"
   1:../src/cool_fan.c **** /*
   2:../src/cool_fan.c **** 
   3:../src/cool_fan.c ****  * cool_fan.c
   4:../src/cool_fan.c ****  *
   5:../src/cool_fan.c ****  *  Created on: Dec 17, 2018
   6:../src/cool_fan.c ****  *      Author: Qianqian
   7:../src/cool_fan.c ****  */
   8:../src/cool_fan.c **** 
   9:../src/cool_fan.c **** 
  10:../src/cool_fan.c **** //----------------------------------
  11:../src/cool_fan.c **** // Final Project----The Tornado
  12:../src/cool_fan.c **** //----------------------------------
  13:../src/cool_fan.c **** // Objective:
  14:../src/cool_fan.c **** //   Build a smart cooling fan
  15:../src/cool_fan.c **** //
  16:../src/cool_fan.c **** 
  17:../src/cool_fan.c **** //
  18:../src/cool_fan.c **** //
  19:../src/cool_fan.c **** // -- Imports ---------------
  20:../src/cool_fan.c **** //
  21:../src/cool_fan.c **** #include<stdint.h>
  22:../src/cool_fan.c **** #include<stdio.h>
  23:../src/cool_fan.c **** #include "init.h"
  24:../src/cool_fan.c **** #include "uart.h"
  25:../src/cool_fan.c **** #include "stm32f7xx_hal_conf.h"
  26:../src/cool_fan.c **** #include "stm32f7xx_hal_i2c.h"
  27:../src/cool_fan.c **** 
  28:../src/cool_fan.c **** #define WHO_AM_I_REGISTER 0xF
  29:../src/cool_fan.c **** //#include "stm32f7_i2c.h"
  30:../src/cool_fan.c **** 
  31:../src/cool_fan.c **** int flag1;
  32:../src/cool_fan.c **** //
  33:../src/cool_fan.c **** // -- Prototypes ------------
  34:../src/cool_fan.c **** //
  35:../src/cool_fan.c **** //TypeDef
  36:../src/cool_fan.c **** GPIO_InitTypeDef GPIO_InitStruct;
  37:../src/cool_fan.c **** ADC_HandleTypeDef hadc1;
  38:../src/cool_fan.c **** I2C_HandleTypeDef hi2c1;
  39:../src/cool_fan.c **** TIM_HandleTypeDef htim7;
  40:../src/cool_fan.c **** 
  41:../src/cool_fan.c **** //Initilization functions
  42:../src/cool_fan.c **** void Init_GPIO();
  43:../src/cool_fan.c **** int count = 0;
  44:../src/cool_fan.c **** void MX_I2C1_Init(void);
  45:../src/cool_fan.c **** //Utility functions
  46:../src/cool_fan.c **** 
  47:../src/cool_fan.c **** //
  48:../src/cool_fan.c **** // -- Code Body -------------
  49:../src/cool_fan.c **** int main() {
  50:../src/cool_fan.c **** 	//Initializations
  51:../src/cool_fan.c **** 	Sys_Init();
  52:../src/cool_fan.c **** 	MX_I2C1_Init();
  53:../src/cool_fan.c **** 	Init_GPIO();
  54:../src/cool_fan.c **** 	HAL_Init();
  55:../src/cool_fan.c **** 	uint8_t i2cBuf[2];
  56:../src/cool_fan.c **** 
  57:../src/cool_fan.c **** 	__HAL_RCC_TIM7_CLK_ENABLE();
  58:../src/cool_fan.c **** 		htim7.Instance = TIM7;
  59:../src/cool_fan.c **** 		htim7.Init.Prescaler = 10799;//108MHZ/10799=10000
  60:../src/cool_fan.c **** 		htim7.Init.Period = 1000;//1000HZ / 1000 = 10Hz = 0.1s
  61:../src/cool_fan.c **** 		HAL_TIM_Base_Init(&htim7);//Configure the timer
  62:../src/cool_fan.c **** 	   HAL_TIM_Base_Start_IT(&htim7);//Start the timer
  63:../src/cool_fan.c **** 
  64:../src/cool_fan.c **** 	   HAL_NVIC_SetPriority(TIM7_IRQn, 0, 0); //Enable the peripheral IRQ
  65:../src/cool_fan.c **** 	   HAL_NVIC_EnableIRQ(TIM7_IRQn);
  66:../src/cool_fan.c **** 	//Definition of variables used
  67:../src/cool_fan.c **** 	uint32_t raw_value = 0;
  68:../src/cool_fan.c **** 	double voltage = 0.0;
  69:../src/cool_fan.c **** 	int button=0;
  70:../src/cool_fan.c **** 	uint16_t temp_raw = 0;
  71:../src/cool_fan.c **** 
  72:../src/cool_fan.c **** 	//ADC of Potentiometer
  73:../src/cool_fan.c **** 	HAL_ADC_Init(&hadc1);
  74:../src/cool_fan.c **** 	HAL_ADC_MspInit(&hadc1);
  75:../src/cool_fan.c **** 	HAL_ADC_Start(&hadc1);
  76:../src/cool_fan.c **** 
  77:../src/cool_fan.c **** 	while (1) {
  78:../src/cool_fan.c **** 
  79:../src/cool_fan.c **** 
  80:../src/cool_fan.c **** 
  81:../src/cool_fan.c **** 		//ADC conversion (0-3.3V) for potentiometer when buttun pressed
  82:../src/cool_fan.c **** 		HAL_ADC_Start (&hadc1);
  83:../src/cool_fan.c **** 
  84:../src/cool_fan.c **** 		HAL_ADC_PollForConversion (&hadc1, HAL_MAX_DELAY);	//Waiting for the conversion to be done
  85:../src/cool_fan.c **** 
  86:../src/cool_fan.c **** 		raw_value = HAL_ADC_GetValue (&hadc1);	//Store the value read
  87:../src/cool_fan.c **** 		voltage = raw_value*(double)(0.000806);	//Based on the conversion of result, convert the raw valu
  88:../src/cool_fan.c **** 		HAL_ADC_Stop(&hadc1);	//Stop after reading a value
  89:../src/cool_fan.c **** 		HAL_Delay(100);
  90:../src/cool_fan.c **** 		//printf("j\r\n");
  91:../src/cool_fan.c **** 		button=HAL_GPIO_ReadPin(GPIOA, GPIO_PIN_12);
  92:../src/cool_fan.c **** 		//if (!button){
  93:../src/cool_fan.c **** 
  94:../src/cool_fan.c **** 			printf("reading is %d. %f\r\n", raw_value, voltage);
  95:../src/cool_fan.c **** 	//	}
  96:../src/cool_fan.c **** 		//if(1){
  97:../src/cool_fan.c **** 			flag1=0;
  98:../src/cool_fan.c **** 			HAL_GPIO_WritePin(GPIOB, GPIO_PIN_15, 0xFFFF);
  99:../src/cool_fan.c **** 
 100:../src/cool_fan.c **** 	//	}
 101:../src/cool_fan.c **** 
 102:../src/cool_fan.c **** //		HAL_Delay(100);
 103:../src/cool_fan.c **** //		uint32_t distance=0;
 104:../src/cool_fan.c **** //		i2cBuf[0]=0;
 105:../src/cool_fan.c **** //		HAL_I2C_Master_Sequential_Transmit_IT(&hi2c1, 0x33,i2cBuf,1,I2C_FIRST_FRAME);
 106:../src/cool_fan.c **** //		printf("distance: %u\r\n", distance);
 107:../src/cool_fan.c **** //		//HAL_Delay(500);
 108:../src/cool_fan.c **** 	}
 109:../src/cool_fan.c **** }
 110:../src/cool_fan.c **** 
 111:../src/cool_fan.c **** //
 112:../src/cool_fan.c **** // -- Utility Functions ------
 113:../src/cool_fan.c **** 
 114:../src/cool_fan.c **** //
 115:../src/cool_fan.c **** // -- Init Functions ----------
 116:../src/cool_fan.c **** 
 117:../src/cool_fan.c **** 
 118:../src/cool_fan.c **** 
 119:../src/cool_fan.c **** 
 120:../src/cool_fan.c **** //Configure ADC1 to 12bit, channel 12, 15 cycle
 121:../src/cool_fan.c **** void HAL_ADC_MspInit(ADC_HandleTypeDef* hadc){
  27              		.loc 1 121 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 24
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31              	.LVL0:
  32 0000 10B5     		push	{r4, lr}
  33              		.cfi_def_cfa_offset 8
  34              		.cfi_offset 4, -8
  35              		.cfi_offset 14, -4
  36 0002 86B0     		sub	sp, sp, #24
  37              		.cfi_def_cfa_offset 32
 122:../src/cool_fan.c **** 	ADC_ChannelConfTypeDef sConfig;
 123:../src/cool_fan.c **** 
 124:../src/cool_fan.c **** 	hadc1.Instance = ADC1;
  38              		.loc 1 124 0
  39 0004 1848     		ldr	r0, .L3
  40              	.LVL1:
  41 0006 194B     		ldr	r3, .L3+4
  42 0008 0360     		str	r3, [r0]
 125:../src/cool_fan.c **** 	hadc1.Init.ClockPrescaler = ADC_CLOCK_SYNC_PCLK_DIV2;
  43              		.loc 1 125 0
  44 000a 0024     		movs	r4, #0
  45 000c 4460     		str	r4, [r0, #4]
 126:../src/cool_fan.c **** 	hadc1.Init.Resolution = ADC_RESOLUTION_12B;
  46              		.loc 1 126 0
  47 000e 8460     		str	r4, [r0, #8]
 127:../src/cool_fan.c **** 	hadc1.Init.ScanConvMode = DISABLE;
  48              		.loc 1 127 0
  49 0010 0461     		str	r4, [r0, #16]
 128:../src/cool_fan.c **** 	hadc1.Init.ContinuousConvMode = ENABLE;
  50              		.loc 1 128 0
  51 0012 0123     		movs	r3, #1
  52 0014 8361     		str	r3, [r0, #24]
 129:../src/cool_fan.c **** 	hadc1.Init.DiscontinuousConvMode = DISABLE;
  53              		.loc 1 129 0
  54 0016 0462     		str	r4, [r0, #32]
 130:../src/cool_fan.c **** 	hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  55              		.loc 1 130 0
  56 0018 C460     		str	r4, [r0, #12]
 131:../src/cool_fan.c **** 	hadc1.Init.NbrOfConversion = 1;
  57              		.loc 1 131 0
  58 001a C361     		str	r3, [r0, #28]
 132:../src/cool_fan.c **** 
 133:../src/cool_fan.c **** 	sConfig.Channel = ADC_CHANNEL_12;
  59              		.loc 1 133 0
  60 001c 0C22     		movs	r2, #12
  61 001e 0292     		str	r2, [sp, #8]
 134:../src/cool_fan.c **** 	sConfig.Rank = 1;
  62              		.loc 1 134 0
  63 0020 0393     		str	r3, [sp, #12]
 135:../src/cool_fan.c **** 	sConfig.SamplingTime = ADC_SAMPLETIME_15CYCLES;
  64              		.loc 1 135 0
  65 0022 0493     		str	r3, [sp, #16]
 136:../src/cool_fan.c **** 	HAL_ADC_ConfigChannel(&hadc1, &sConfig);
  66              		.loc 1 136 0
  67 0024 02A9     		add	r1, sp, #8
  68 0026 FFF7FEFF 		bl	HAL_ADC_ConfigChannel
  69              	.LVL2:
  70              	.LBB2:
 137:../src/cool_fan.c **** 
 138:../src/cool_fan.c **** 	// ADC Peripheral clock enable
 139:../src/cool_fan.c **** 	__HAL_RCC_ADC1_CLK_ENABLE();
  71              		.loc 1 139 0
  72 002a 114B     		ldr	r3, .L3+8
  73 002c 5A6C     		ldr	r2, [r3, #68]
  74 002e 42F48072 		orr	r2, r2, #256
  75 0032 5A64     		str	r2, [r3, #68]
  76 0034 5A6C     		ldr	r2, [r3, #68]
  77 0036 02F48072 		and	r2, r2, #256
  78 003a 0092     		str	r2, [sp]
  79 003c 009A     		ldr	r2, [sp]
  80              	.LBE2:
  81              	.LBB3:
 140:../src/cool_fan.c **** 	__HAL_RCC_GPIOA_CLK_ENABLE();
  82              		.loc 1 140 0
  83 003e 1A6B     		ldr	r2, [r3, #48]
  84 0040 42F00102 		orr	r2, r2, #1
  85 0044 1A63     		str	r2, [r3, #48]
  86 0046 1B6B     		ldr	r3, [r3, #48]
  87 0048 03F00103 		and	r3, r3, #1
  88 004c 0193     		str	r3, [sp, #4]
  89 004e 019B     		ldr	r3, [sp, #4]
  90              	.LBE3:
 141:../src/cool_fan.c **** 	//Potentiometer as input PC2 (A2)
 142:../src/cool_fan.c **** 	GPIO_InitStruct.Pin = GPIO_PIN_2;
  91              		.loc 1 142 0
  92 0050 0849     		ldr	r1, .L3+12
  93 0052 0423     		movs	r3, #4
  94 0054 0B60     		str	r3, [r1]
 143:../src/cool_fan.c **** 	GPIO_InitStruct.Mode = GPIO_MODE_ANALOG;
  95              		.loc 1 143 0
  96 0056 0323     		movs	r3, #3
  97 0058 4B60     		str	r3, [r1, #4]
 144:../src/cool_fan.c **** 	GPIO_InitStruct.Pull = GPIO_NOPULL;
  98              		.loc 1 144 0
  99 005a 8C60     		str	r4, [r1, #8]
 145:../src/cool_fan.c **** 	HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);
 100              		.loc 1 145 0
 101 005c 0648     		ldr	r0, .L3+16
 102 005e FFF7FEFF 		bl	HAL_GPIO_Init
 103              	.LVL3:
 146:../src/cool_fan.c **** }
 104              		.loc 1 146 0
 105 0062 06B0     		add	sp, sp, #24
 106              		.cfi_def_cfa_offset 8
 107              		@ sp needed
 108 0064 10BD     		pop	{r4, pc}
 109              	.L4:
 110 0066 00BF     		.align	2
 111              	.L3:
 112 0068 00000000 		.word	hadc1
 113 006c 00200140 		.word	1073815552
 114 0070 00380240 		.word	1073887232
 115 0074 00000000 		.word	GPIO_InitStruct
 116 0078 00080240 		.word	1073874944
 117              		.cfi_endproc
 118              	.LFE139:
 120              		.section	.text.MX_I2C1_Init,"ax",%progbits
 121              		.align	1
 122              		.global	MX_I2C1_Init
 123              		.syntax unified
 124              		.thumb
 125              		.thumb_func
 126              		.fpu fpv5-d16
 128              	MX_I2C1_Init:
 129              	.LFB140:
 147:../src/cool_fan.c **** 
 148:../src/cool_fan.c **** void MX_I2C1_Init(void)
 149:../src/cool_fan.c **** {
 130              		.loc 1 149 0
 131              		.cfi_startproc
 132              		@ args = 0, pretend = 0, frame = 24
 133              		@ frame_needed = 0, uses_anonymous_args = 0
 134 0000 10B5     		push	{r4, lr}
 135              		.cfi_def_cfa_offset 8
 136              		.cfi_offset 4, -8
 137              		.cfi_offset 14, -4
 138 0002 86B0     		sub	sp, sp, #24
 139              		.cfi_def_cfa_offset 32
 140              	.LBB4:
 150:../src/cool_fan.c **** 
 151:../src/cool_fan.c **** 	GPIO_InitTypeDef GPIO_InitStruct;
 152:../src/cool_fan.c **** 
 153:../src/cool_fan.c **** 	 __HAL_RCC_I2C1_CLK_ENABLE();
 141              		.loc 1 153 0
 142 0004 144B     		ldr	r3, .L7
 143 0006 1A6C     		ldr	r2, [r3, #64]
 144 0008 42F40012 		orr	r2, r2, #2097152
 145 000c 1A64     		str	r2, [r3, #64]
 146 000e 1B6C     		ldr	r3, [r3, #64]
 147 0010 03F40013 		and	r3, r3, #2097152
 148 0014 0093     		str	r3, [sp]
 149 0016 009B     		ldr	r3, [sp]
 150              	.LBE4:
 154:../src/cool_fan.c **** 	 hi2c1.Instance = I2C1;
 151              		.loc 1 154 0
 152 0018 104C     		ldr	r4, .L7+4
 153 001a 114B     		ldr	r3, .L7+8
 154 001c 2360     		str	r3, [r4]
 155:../src/cool_fan.c **** 	 //hi2c1.Init.ClockSpeed = 100000;
 156:../src/cool_fan.c **** 	 //hi2c1.Init.DutyCycle = I2C_DUTYCYCLE_2;
 157:../src/cool_fan.c **** 	 hi2c1.Init.OwnAddress1 = 0x0;
 155              		.loc 1 157 0
 156 001e 0023     		movs	r3, #0
 157 0020 A360     		str	r3, [r4, #8]
 158:../src/cool_fan.c **** 	 hi2c1.Init.AddressingMode = I2C_ADDRESSINGMODE_7BIT;
 158              		.loc 1 158 0
 159 0022 0122     		movs	r2, #1
 160 0024 E260     		str	r2, [r4, #12]
 159:../src/cool_fan.c **** 	 hi2c1.Init.DualAddressMode = I2C_DUALADDRESS_DISABLE;
 161              		.loc 1 159 0
 162 0026 2361     		str	r3, [r4, #16]
 160:../src/cool_fan.c **** 	 hi2c1.Init.OwnAddress2 = 0;
 163              		.loc 1 160 0
 164 0028 6361     		str	r3, [r4, #20]
 161:../src/cool_fan.c **** 	 hi2c1.Init.GeneralCallMode = I2C_GENERALCALL_DISABLE;
 165              		.loc 1 161 0
 166 002a E361     		str	r3, [r4, #28]
 162:../src/cool_fan.c **** 	 hi2c1.Init.NoStretchMode = I2C_NOSTRETCH_DISABLE;
 167              		.loc 1 162 0
 168 002c 2362     		str	r3, [r4, #32]
 163:../src/cool_fan.c **** 
 164:../src/cool_fan.c **** 	 GPIO_InitStruct.Pin = GPIO_PIN_8|GPIO_PIN_9;
 169              		.loc 1 164 0
 170 002e 4FF44073 		mov	r3, #768
 171 0032 0193     		str	r3, [sp, #4]
 165:../src/cool_fan.c **** 	 GPIO_InitStruct.Mode = GPIO_MODE_AF_OD;
 172              		.loc 1 165 0
 173 0034 1223     		movs	r3, #18
 174 0036 0293     		str	r3, [sp, #8]
 166:../src/cool_fan.c **** 	 GPIO_InitStruct.Pull = GPIO_PULLUP;
 175              		.loc 1 166 0
 176 0038 0392     		str	r2, [sp, #12]
 167:../src/cool_fan.c **** 	 GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
 177              		.loc 1 167 0
 178 003a 0323     		movs	r3, #3
 179 003c 0493     		str	r3, [sp, #16]
 168:../src/cool_fan.c **** 	 GPIO_InitStruct.Alternate = GPIO_AF4_I2C1;
 180              		.loc 1 168 0
 181 003e 0423     		movs	r3, #4
 182 0040 0593     		str	r3, [sp, #20]
 169:../src/cool_fan.c **** 	 HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
 183              		.loc 1 169 0
 184 0042 0DEB0301 		add	r1, sp, r3
 185 0046 0748     		ldr	r0, .L7+12
 186 0048 FFF7FEFF 		bl	HAL_GPIO_Init
 187              	.LVL4:
 170:../src/cool_fan.c **** 
 171:../src/cool_fan.c **** 	 HAL_I2C_Init(&hi2c1);
 188              		.loc 1 171 0
 189 004c 2046     		mov	r0, r4
 190 004e FFF7FEFF 		bl	HAL_I2C_Init
 191              	.LVL5:
 172:../src/cool_fan.c ****  }
 192              		.loc 1 172 0
 193 0052 06B0     		add	sp, sp, #24
 194              		.cfi_def_cfa_offset 8
 195              		@ sp needed
 196 0054 10BD     		pop	{r4, pc}
 197              	.L8:
 198 0056 00BF     		.align	2
 199              	.L7:
 200 0058 00380240 		.word	1073887232
 201 005c 00000000 		.word	hi2c1
 202 0060 00540040 		.word	1073763328
 203 0064 00040240 		.word	1073873920
 204              		.cfi_endproc
 205              	.LFE140:
 207              		.section	.text.Init_GPIO,"ax",%progbits
 208              		.align	1
 209              		.global	Init_GPIO
 210              		.syntax unified
 211              		.thumb
 212              		.thumb_func
 213              		.fpu fpv5-d16
 215              	Init_GPIO:
 216              	.LFB141:
 173:../src/cool_fan.c **** 
 174:../src/cool_fan.c **** void Init_GPIO() {
 217              		.loc 1 174 0
 218              		.cfi_startproc
 219              		@ args = 0, pretend = 0, frame = 16
 220              		@ frame_needed = 0, uses_anonymous_args = 0
 221 0000 2DE9F047 		push	{r4, r5, r6, r7, r8, r9, r10, lr}
 222              		.cfi_def_cfa_offset 32
 223              		.cfi_offset 4, -32
 224              		.cfi_offset 5, -28
 225              		.cfi_offset 6, -24
 226              		.cfi_offset 7, -20
 227              		.cfi_offset 8, -16
 228              		.cfi_offset 9, -12
 229              		.cfi_offset 10, -8
 230              		.cfi_offset 14, -4
 231 0004 84B0     		sub	sp, sp, #16
 232              		.cfi_def_cfa_offset 48
 233              	.LBB5:
 175:../src/cool_fan.c **** 
 176:../src/cool_fan.c **** 	__HAL_RCC_GPIOF_CLK_ENABLE();
 234              		.loc 1 176 0
 235 0006 454B     		ldr	r3, .L11
 236 0008 1A6B     		ldr	r2, [r3, #48]
 237 000a 42F02002 		orr	r2, r2, #32
 238 000e 1A63     		str	r2, [r3, #48]
 239 0010 1A6B     		ldr	r2, [r3, #48]
 240 0012 02F02002 		and	r2, r2, #32
 241 0016 0192     		str	r2, [sp, #4]
 242 0018 019A     		ldr	r2, [sp, #4]
 243              	.LBE5:
 244              	.LBB6:
 177:../src/cool_fan.c **** 	__HAL_RCC_GPIOB_CLK_ENABLE();
 245              		.loc 1 177 0
 246 001a 1A6B     		ldr	r2, [r3, #48]
 247 001c 42F00202 		orr	r2, r2, #2
 248 0020 1A63     		str	r2, [r3, #48]
 249 0022 1A6B     		ldr	r2, [r3, #48]
 250 0024 02F00202 		and	r2, r2, #2
 251 0028 0292     		str	r2, [sp, #8]
 252 002a 029A     		ldr	r2, [sp, #8]
 253              	.LBE6:
 254              	.LBB7:
 178:../src/cool_fan.c **** 	__HAL_RCC_GPIOC_CLK_ENABLE();
 255              		.loc 1 178 0
 256 002c 1A6B     		ldr	r2, [r3, #48]
 257 002e 42F00402 		orr	r2, r2, #4
 258 0032 1A63     		str	r2, [r3, #48]
 259 0034 1A6B     		ldr	r2, [r3, #48]
 260 0036 02F00402 		and	r2, r2, #4
 261 003a 0392     		str	r2, [sp, #12]
 262 003c 039A     		ldr	r2, [sp, #12]
 263              	.LBE7:
 179:../src/cool_fan.c **** 	RCC->AHB1ENR |= RCC_AHB1ENR_GPIOAEN;
 264              		.loc 1 179 0
 265 003e 1A6B     		ldr	r2, [r3, #48]
 266 0040 42F00102 		orr	r2, r2, #1
 267 0044 1A63     		str	r2, [r3, #48]
 180:../src/cool_fan.c **** 
 181:../src/cool_fan.c **** 	//Ultrasonic Ranger
 182:../src/cool_fan.c **** 
 183:../src/cool_fan.c **** 	//Trig pin output
 184:../src/cool_fan.c **** 	GPIO_InitStruct.Pin = GPIO_PIN_8;
 268              		.loc 1 184 0
 269 0046 364C     		ldr	r4, .L11+4
 270 0048 4FF48073 		mov	r3, #256
 271 004c 2360     		str	r3, [r4]
 185:../src/cool_fan.c **** 	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 272              		.loc 1 185 0
 273 004e 0126     		movs	r6, #1
 274 0050 6660     		str	r6, [r4, #4]
 186:../src/cool_fan.c **** 	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
 275              		.loc 1 186 0
 276 0052 4FF00308 		mov	r8, #3
 277 0056 C4F80C80 		str	r8, [r4, #12]
 187:../src/cool_fan.c **** 	HAL_GPIO_Init(GPIOF, &GPIO_InitStruct);
 278              		.loc 1 187 0
 279 005a 324F     		ldr	r7, .L11+8
 280 005c 2146     		mov	r1, r4
 281 005e 3846     		mov	r0, r7
 282 0060 FFF7FEFF 		bl	HAL_GPIO_Init
 283              	.LVL6:
 188:../src/cool_fan.c **** 
 189:../src/cool_fan.c **** 	//Echo pin input
 190:../src/cool_fan.c **** 	GPIO_InitStruct.Pin = GPIO_PIN_9;
 284              		.loc 1 190 0
 285 0064 4FF40073 		mov	r3, #512
 286 0068 2360     		str	r3, [r4]
 191:../src/cool_fan.c **** 	GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
 287              		.loc 1 191 0
 288 006a 0025     		movs	r5, #0
 289 006c 6560     		str	r5, [r4, #4]
 192:../src/cool_fan.c **** 	GPIO_InitStruct.Pull = GPIO_PULLDOWN;
 290              		.loc 1 192 0
 291 006e 0223     		movs	r3, #2
 292 0070 A360     		str	r3, [r4, #8]
 193:../src/cool_fan.c **** 	GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
 293              		.loc 1 193 0
 294 0072 C4F80C80 		str	r8, [r4, #12]
 194:../src/cool_fan.c **** 	HAL_GPIO_Init(GPIOF, &GPIO_InitStruct);
 295              		.loc 1 194 0
 296 0076 2146     		mov	r1, r4
 297 0078 3846     		mov	r0, r7
 298 007a FFF7FEFF 		bl	HAL_GPIO_Init
 299              	.LVL7:
 195:../src/cool_fan.c **** 
 196:../src/cool_fan.c **** 	//LED as output PB14 (D12)
 197:../src/cool_fan.c **** 	GPIO_InitStruct.Pin = GPIO_PIN_14;
 300              		.loc 1 197 0
 301 007e 4FF48043 		mov	r3, #16384
 302 0082 2360     		str	r3, [r4]
 198:../src/cool_fan.c **** 	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 303              		.loc 1 198 0
 304 0084 6660     		str	r6, [r4, #4]
 199:../src/cool_fan.c **** 	GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
 305              		.loc 1 199 0
 306 0086 E560     		str	r5, [r4, #12]
 200:../src/cool_fan.c **** 	HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
 307              		.loc 1 200 0
 308 0088 DFF8A480 		ldr	r8, .L11+20
 309 008c 2146     		mov	r1, r4
 310 008e 4046     		mov	r0, r8
 311 0090 FFF7FEFF 		bl	HAL_GPIO_Init
 312              	.LVL8:
 201:../src/cool_fan.c **** 
 202:../src/cool_fan.c **** 	GPIO_InitStruct.Pin = GPIO_PIN_7;
 313              		.loc 1 202 0
 314 0094 4FF0800A 		mov	r10, #128
 315 0098 C4F800A0 		str	r10, [r4]
 203:../src/cool_fan.c **** 	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 316              		.loc 1 203 0
 317 009c 6660     		str	r6, [r4, #4]
 204:../src/cool_fan.c **** 	GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
 318              		.loc 1 204 0
 319 009e E560     		str	r5, [r4, #12]
 205:../src/cool_fan.c **** 	HAL_GPIO_Init(GPIOF, &GPIO_InitStruct);
 320              		.loc 1 205 0
 321 00a0 2146     		mov	r1, r4
 322 00a2 3846     		mov	r0, r7
 323 00a4 FFF7FEFF 		bl	HAL_GPIO_Init
 324              	.LVL9:
 206:../src/cool_fan.c **** 
 207:../src/cool_fan.c **** 	GPIO_InitStruct.Pin = GPIO_PIN_3|GPIO_PIN_4;
 325              		.loc 1 207 0
 326 00a8 1823     		movs	r3, #24
 327 00aa 2360     		str	r3, [r4]
 208:../src/cool_fan.c **** 	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 328              		.loc 1 208 0
 329 00ac 6660     		str	r6, [r4, #4]
 209:../src/cool_fan.c **** 	GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
 330              		.loc 1 209 0
 331 00ae E560     		str	r5, [r4, #12]
 210:../src/cool_fan.c **** 	HAL_GPIO_Init(GPIOJ, &GPIO_InitStruct);
 332              		.loc 1 210 0
 333 00b0 2146     		mov	r1, r4
 334 00b2 1D48     		ldr	r0, .L11+12
 335 00b4 FFF7FEFF 		bl	HAL_GPIO_Init
 336              	.LVL10:
 211:../src/cool_fan.c **** 
 212:../src/cool_fan.c **** 	GPIO_InitStruct.Pin = GPIO_PIN_11;
 337              		.loc 1 212 0
 338 00b8 4FF40063 		mov	r3, #2048
 339 00bc 2360     		str	r3, [r4]
 213:../src/cool_fan.c **** 	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 340              		.loc 1 213 0
 341 00be 6660     		str	r6, [r4, #4]
 214:../src/cool_fan.c **** 	GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
 342              		.loc 1 214 0
 343 00c0 E560     		str	r5, [r4, #12]
 215:../src/cool_fan.c **** 	HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
 344              		.loc 1 215 0
 345 00c2 DFF87090 		ldr	r9, .L11+24
 346 00c6 2146     		mov	r1, r4
 347 00c8 4846     		mov	r0, r9
 348 00ca FFF7FEFF 		bl	HAL_GPIO_Init
 349              	.LVL11:
 216:../src/cool_fan.c **** 
 217:../src/cool_fan.c **** 	GPIO_InitStruct.Pin = GPIO_PIN_7;
 350              		.loc 1 217 0
 351 00ce C4F800A0 		str	r10, [r4]
 218:../src/cool_fan.c **** 	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 352              		.loc 1 218 0
 353 00d2 6660     		str	r6, [r4, #4]
 219:../src/cool_fan.c **** 	GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
 354              		.loc 1 219 0
 355 00d4 E560     		str	r5, [r4, #12]
 220:../src/cool_fan.c **** 	HAL_GPIO_Init(GPIOF, &GPIO_InitStruct);
 356              		.loc 1 220 0
 357 00d6 2146     		mov	r1, r4
 358 00d8 3846     		mov	r0, r7
 359 00da FFF7FEFF 		bl	HAL_GPIO_Init
 360              	.LVL12:
 221:../src/cool_fan.c **** 
 222:../src/cool_fan.c **** 	GPIO_InitStruct.Pin = GPIO_PIN_6;
 361              		.loc 1 222 0
 362 00de 4023     		movs	r3, #64
 363 00e0 2360     		str	r3, [r4]
 223:../src/cool_fan.c **** 	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 364              		.loc 1 223 0
 365 00e2 6660     		str	r6, [r4, #4]
 224:../src/cool_fan.c **** 	GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
 366              		.loc 1 224 0
 367 00e4 E560     		str	r5, [r4, #12]
 225:../src/cool_fan.c **** 	HAL_GPIO_Init(GPIOH, &GPIO_InitStruct);
 368              		.loc 1 225 0
 369 00e6 2146     		mov	r1, r4
 370 00e8 1048     		ldr	r0, .L11+16
 371 00ea FFF7FEFF 		bl	HAL_GPIO_Init
 372              	.LVL13:
 226:../src/cool_fan.c **** 	//Pushbutton on Disco board PA12
 227:../src/cool_fan.c **** 	GPIO_InitStruct.Pin = GPIO_PIN_12;//GPIOA PIN0 is selected
 373              		.loc 1 227 0
 374 00ee 4FF48053 		mov	r3, #4096
 375 00f2 2360     		str	r3, [r4]
 228:../src/cool_fan.c ****     GPIO_InitStruct.Mode = GPIO_MODE_INPUT; // digital Input
 376              		.loc 1 228 0
 377 00f4 6560     		str	r5, [r4, #4]
 229:../src/cool_fan.c ****     GPIO_InitStruct.Pull = GPIO_PULLUP;//PA0 pull-up
 378              		.loc 1 229 0
 379 00f6 A660     		str	r6, [r4, #8]
 230:../src/cool_fan.c ****     GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
 380              		.loc 1 230 0
 381 00f8 E560     		str	r5, [r4, #12]
 231:../src/cool_fan.c ****     HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
 382              		.loc 1 231 0
 383 00fa 2146     		mov	r1, r4
 384 00fc 4846     		mov	r0, r9
 385 00fe FFF7FEFF 		bl	HAL_GPIO_Init
 386              	.LVL14:
 232:../src/cool_fan.c **** 
 233:../src/cool_fan.c **** 	//Motor for the fan blade
 234:../src/cool_fan.c ****     GPIO_InitStruct.Pin = GPIO_PIN_15;
 387              		.loc 1 234 0
 388 0102 4FF40043 		mov	r3, #32768
 389 0106 2360     		str	r3, [r4]
 235:../src/cool_fan.c **** 	GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
 390              		.loc 1 235 0
 391 0108 6660     		str	r6, [r4, #4]
 236:../src/cool_fan.c **** 	GPIO_InitStruct.Speed = GPIO_SPEED_LOW;
 392              		.loc 1 236 0
 393 010a E560     		str	r5, [r4, #12]
 237:../src/cool_fan.c **** 	HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);
 394              		.loc 1 237 0
 395 010c 2146     		mov	r1, r4
 396 010e 4046     		mov	r0, r8
 397 0110 FFF7FEFF 		bl	HAL_GPIO_Init
 398              	.LVL15:
 238:../src/cool_fan.c **** 
 239:../src/cool_fan.c **** 	//4-digit 7-segment display
 240:../src/cool_fan.c **** 
 241:../src/cool_fan.c **** }
 399              		.loc 1 241 0
 400 0114 04B0     		add	sp, sp, #16
 401              		.cfi_def_cfa_offset 32
 402              		@ sp needed
 403 0116 BDE8F087 		pop	{r4, r5, r6, r7, r8, r9, r10, pc}
 404              	.L12:
 405 011a 00BF     		.align	2
 406              	.L11:
 407 011c 00380240 		.word	1073887232
 408 0120 00000000 		.word	GPIO_InitStruct
 409 0124 00140240 		.word	1073878016
 410 0128 00240240 		.word	1073882112
 411 012c 001C0240 		.word	1073880064
 412 0130 00040240 		.word	1073873920
 413 0134 00000240 		.word	1073872896
 414              		.cfi_endproc
 415              	.LFE141:
 417              		.section	.text.main,"ax",%progbits
 418              		.align	1
 419              		.global	main
 420              		.syntax unified
 421              		.thumb
 422              		.thumb_func
 423              		.fpu fpv5-d16
 425              	main:
 426              	.LFB138:
  49:../src/cool_fan.c **** 	//Initializations
 427              		.loc 1 49 0
 428              		.cfi_startproc
 429              		@ args = 0, pretend = 0, frame = 16
 430              		@ frame_needed = 0, uses_anonymous_args = 0
 431 0000 10B5     		push	{r4, lr}
 432              		.cfi_def_cfa_offset 8
 433              		.cfi_offset 4, -8
 434              		.cfi_offset 14, -4
 435 0002 2DED028B 		vpush.64	{d8}
 436              		.cfi_def_cfa_offset 16
 437              		.cfi_offset 80, -16
 438              		.cfi_offset 81, -12
 439 0006 84B0     		sub	sp, sp, #16
 440              		.cfi_def_cfa_offset 32
  51:../src/cool_fan.c **** 	MX_I2C1_Init();
 441              		.loc 1 51 0
 442 0008 FFF7FEFF 		bl	Sys_Init
 443              	.LVL16:
  52:../src/cool_fan.c **** 	Init_GPIO();
 444              		.loc 1 52 0
 445 000c FFF7FEFF 		bl	MX_I2C1_Init
 446              	.LVL17:
  53:../src/cool_fan.c **** 	HAL_Init();
 447              		.loc 1 53 0
 448 0010 FFF7FEFF 		bl	Init_GPIO
 449              	.LVL18:
  54:../src/cool_fan.c **** 	uint8_t i2cBuf[2];
 450              		.loc 1 54 0
 451 0014 FFF7FEFF 		bl	HAL_Init
 452              	.LVL19:
 453              	.LBB8:
  57:../src/cool_fan.c **** 		htim7.Instance = TIM7;
 454              		.loc 1 57 0
 455 0018 2F4B     		ldr	r3, .L16+8
 456 001a 1A6C     		ldr	r2, [r3, #64]
 457 001c 42F02002 		orr	r2, r2, #32
 458 0020 1A64     		str	r2, [r3, #64]
 459 0022 1B6C     		ldr	r3, [r3, #64]
 460 0024 03F02003 		and	r3, r3, #32
 461 0028 0393     		str	r3, [sp, #12]
 462 002a 039B     		ldr	r3, [sp, #12]
 463              	.LBE8:
  58:../src/cool_fan.c **** 		htim7.Init.Prescaler = 10799;//108MHZ/10799=10000
 464              		.loc 1 58 0
 465 002c 2B4C     		ldr	r4, .L16+12
 466 002e 2C4B     		ldr	r3, .L16+16
 467 0030 2360     		str	r3, [r4]
  59:../src/cool_fan.c **** 		htim7.Init.Period = 1000;//1000HZ / 1000 = 10Hz = 0.1s
 468              		.loc 1 59 0
 469 0032 42F62F23 		movw	r3, #10799
 470 0036 6360     		str	r3, [r4, #4]
  60:../src/cool_fan.c **** 		HAL_TIM_Base_Init(&htim7);//Configure the timer
 471              		.loc 1 60 0
 472 0038 4FF47A73 		mov	r3, #1000
 473 003c E360     		str	r3, [r4, #12]
  61:../src/cool_fan.c **** 	   HAL_TIM_Base_Start_IT(&htim7);//Start the timer
 474              		.loc 1 61 0
 475 003e 2046     		mov	r0, r4
 476 0040 FFF7FEFF 		bl	HAL_TIM_Base_Init
 477              	.LVL20:
  62:../src/cool_fan.c **** 
 478              		.loc 1 62 0
 479 0044 2046     		mov	r0, r4
 480 0046 FFF7FEFF 		bl	HAL_TIM_Base_Start_IT
 481              	.LVL21:
  64:../src/cool_fan.c **** 	   HAL_NVIC_EnableIRQ(TIM7_IRQn);
 482              		.loc 1 64 0
 483 004a 0022     		movs	r2, #0
 484 004c 1146     		mov	r1, r2
 485 004e 3720     		movs	r0, #55
 486 0050 FFF7FEFF 		bl	HAL_NVIC_SetPriority
 487              	.LVL22:
  65:../src/cool_fan.c **** 	//Definition of variables used
 488              		.loc 1 65 0
 489 0054 3720     		movs	r0, #55
 490 0056 FFF7FEFF 		bl	HAL_NVIC_EnableIRQ
 491              	.LVL23:
  73:../src/cool_fan.c **** 	HAL_ADC_MspInit(&hadc1);
 492              		.loc 1 73 0
 493 005a 224C     		ldr	r4, .L16+20
 494 005c 2046     		mov	r0, r4
 495 005e FFF7FEFF 		bl	HAL_ADC_Init
 496              	.LVL24:
  74:../src/cool_fan.c **** 	HAL_ADC_Start(&hadc1);
 497              		.loc 1 74 0
 498 0062 2046     		mov	r0, r4
 499 0064 FFF7FEFF 		bl	HAL_ADC_MspInit
 500              	.LVL25:
  75:../src/cool_fan.c **** 
 501              		.loc 1 75 0
 502 0068 2046     		mov	r0, r4
 503 006a FFF7FEFF 		bl	HAL_ADC_Start
 504              	.LVL26:
 505              	.L14:
  82:../src/cool_fan.c **** 
 506              		.loc 1 82 0 discriminator 1
 507 006e 1D4C     		ldr	r4, .L16+20
 508 0070 2046     		mov	r0, r4
 509 0072 FFF7FEFF 		bl	HAL_ADC_Start
 510              	.LVL27:
  84:../src/cool_fan.c **** 
 511              		.loc 1 84 0 discriminator 1
 512 0076 4FF0FF31 		mov	r1, #-1
 513 007a 2046     		mov	r0, r4
 514 007c FFF7FEFF 		bl	HAL_ADC_PollForConversion
 515              	.LVL28:
  86:../src/cool_fan.c **** 		voltage = raw_value*(double)(0.000806);	//Based on the conversion of result, convert the raw valu
 516              		.loc 1 86 0 discriminator 1
 517 0080 2046     		mov	r0, r4
 518 0082 FFF7FEFF 		bl	HAL_ADC_GetValue
 519              	.LVL29:
 520 0086 0190     		str	r0, [sp, #4]
 521              	.LVL30:
  87:../src/cool_fan.c **** 		HAL_ADC_Stop(&hadc1);	//Stop after reading a value
 522              		.loc 1 87 0 discriminator 1
 523 0088 07EE900A 		vmov	s15, r0	@ int
 524 008c B8EE678B 		vcvt.f64.u32	d8, s15
 525 0090 9FED0F7B 		vldr.64	d7, .L16
 526 0094 28EE078B 		vmul.f64	d8, d8, d7
 527              	.LVL31:
  88:../src/cool_fan.c **** 		HAL_Delay(100);
 528              		.loc 1 88 0 discriminator 1
 529 0098 2046     		mov	r0, r4
 530              	.LVL32:
 531 009a FFF7FEFF 		bl	HAL_ADC_Stop
 532              	.LVL33:
  89:../src/cool_fan.c **** 		//printf("j\r\n");
 533              		.loc 1 89 0 discriminator 1
 534 009e 6420     		movs	r0, #100
 535 00a0 FFF7FEFF 		bl	HAL_Delay
 536              	.LVL34:
  91:../src/cool_fan.c **** 		//if (!button){
 537              		.loc 1 91 0 discriminator 1
 538 00a4 4FF48051 		mov	r1, #4096
 539 00a8 0F48     		ldr	r0, .L16+24
 540 00aa FFF7FEFF 		bl	HAL_GPIO_ReadPin
 541              	.LVL35:
  94:../src/cool_fan.c **** 	//	}
 542              		.loc 1 94 0 discriminator 1
 543 00ae 53EC182B 		vmov	r2, r3, d8
 544 00b2 0199     		ldr	r1, [sp, #4]
 545 00b4 0D48     		ldr	r0, .L16+28
 546 00b6 FFF7FEFF 		bl	printf
 547              	.LVL36:
  97:../src/cool_fan.c **** 			HAL_GPIO_WritePin(GPIOB, GPIO_PIN_15, 0xFFFF);
 548              		.loc 1 97 0 discriminator 1
 549 00ba 0D4B     		ldr	r3, .L16+32
 550 00bc 0022     		movs	r2, #0
 551 00be 1A60     		str	r2, [r3]
  98:../src/cool_fan.c **** 
 552              		.loc 1 98 0 discriminator 1
 553 00c0 FF22     		movs	r2, #255
 554 00c2 4FF40041 		mov	r1, #32768
 555 00c6 0B48     		ldr	r0, .L16+36
 556 00c8 FFF7FEFF 		bl	HAL_GPIO_WritePin
 557              	.LVL37:
 558 00cc CFE7     		b	.L14
 559              	.L17:
 560 00ce 00BF     		.align	3
 561              	.L16:
 562 00d0 F564FED1 		.word	3523110133
 563 00d4 37694A3F 		.word	1061841207
 564 00d8 00380240 		.word	1073887232
 565 00dc 00000000 		.word	htim7
 566 00e0 00140040 		.word	1073746944
 567 00e4 00000000 		.word	hadc1
 568 00e8 00000240 		.word	1073872896
 569 00ec 00000000 		.word	.LC0
 570 00f0 00000000 		.word	flag1
 571 00f4 00040240 		.word	1073873920
 572              		.cfi_endproc
 573              	.LFE138:
 575              		.section	.text.TIM7_IRQHandler,"ax",%progbits
 576              		.align	1
 577              		.global	TIM7_IRQHandler
 578              		.syntax unified
 579              		.thumb
 580              		.thumb_func
 581              		.fpu fpv5-d16
 583              	TIM7_IRQHandler:
 584              	.LFB142:
 242:../src/cool_fan.c **** 
 243:../src/cool_fan.c **** 
 244:../src/cool_fan.c **** //
 245:../src/cool_fan.c **** // -- ISRs (IRQs) -------------
 246:../src/cool_fan.c **** //
 247:../src/cool_fan.c **** void TIM7_IRQHandler()
 248:../src/cool_fan.c **** {// Pass the control to HAL, which processes the IRQ
 585              		.loc 1 248 0
 586              		.cfi_startproc
 587              		@ args = 0, pretend = 0, frame = 0
 588              		@ frame_needed = 0, uses_anonymous_args = 0
 589 0000 08B5     		push	{r3, lr}
 590              		.cfi_def_cfa_offset 8
 591              		.cfi_offset 3, -8
 592              		.cfi_offset 14, -4
 249:../src/cool_fan.c ****    HAL_TIM_IRQHandler(&htim7);
 593              		.loc 1 249 0
 594 0002 0248     		ldr	r0, .L20
 595 0004 FFF7FEFF 		bl	HAL_TIM_IRQHandler
 596              	.LVL38:
 250:../src/cool_fan.c **** }
 597              		.loc 1 250 0
 598 0008 08BD     		pop	{r3, pc}
 599              	.L21:
 600 000a 00BF     		.align	2
 601              	.L20:
 602 000c 00000000 		.word	htim7
 603              		.cfi_endproc
 604              	.LFE142:
 606              		.section	.text.HAL_TIM_PeriodElapsedCallback,"ax",%progbits
 607              		.align	1
 608              		.global	HAL_TIM_PeriodElapsedCallback
 609              		.syntax unified
 610              		.thumb
 611              		.thumb_func
 612              		.fpu fpv5-d16
 614              	HAL_TIM_PeriodElapsedCallback:
 615              	.LFB143:
 251:../src/cool_fan.c **** void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
 252:../src/cool_fan.c **** {// This callback is automatically called by the HAL on the UEV event
 616              		.loc 1 252 0
 617              		.cfi_startproc
 618              		@ args = 0, pretend = 0, frame = 0
 619              		@ frame_needed = 0, uses_anonymous_args = 0
 620              		@ link register save eliminated.
 621              	.LVL39:
 253:../src/cool_fan.c ****    if (htim->Instance == TIM7){
 622              		.loc 1 253 0
 623 0000 0268     		ldr	r2, [r0]
 624 0002 044B     		ldr	r3, .L25
 625 0004 9A42     		cmp	r2, r3
 626 0006 00D0     		beq	.L24
 627              	.L22:
 254:../src/cool_fan.c ****        count=count+1;
 255:../src/cool_fan.c ****        if(count%1000==0){
 256:../src/cool_fan.c ****     	   int flag1=0;
 257:../src/cool_fan.c ****     	   flag1=1;
 258:../src/cool_fan.c ****        }
 259:../src/cool_fan.c ****    }
 260:../src/cool_fan.c ****        //printf("number %d 0.1s\r\n",count);
 261:../src/cool_fan.c **** 
 262:../src/cool_fan.c **** }
 628              		.loc 1 262 0
 629 0008 7047     		bx	lr
 630              	.L24:
 254:../src/cool_fan.c ****        count=count+1;
 631              		.loc 1 254 0
 632 000a 034A     		ldr	r2, .L25+4
 633 000c 1368     		ldr	r3, [r2]
 634 000e 0133     		adds	r3, r3, #1
 635 0010 1360     		str	r3, [r2]
 636              		.loc 1 262 0
 637 0012 F9E7     		b	.L22
 638              	.L26:
 639              		.align	2
 640              	.L25:
 641 0014 00140040 		.word	1073746944
 642 0018 00000000 		.word	.LANCHOR0
 643              		.cfi_endproc
 644              	.LFE143:
 646              		.section	.text.HAL_TIMEx_BreakCallback,"ax",%progbits
 647              		.align	1
 648              		.global	HAL_TIMEx_BreakCallback
 649              		.syntax unified
 650              		.thumb
 651              		.thumb_func
 652              		.fpu fpv5-d16
 654              	HAL_TIMEx_BreakCallback:
 655              	.LFB144:
 263:../src/cool_fan.c **** void HAL_TIMEx_BreakCallback(TIM_HandleTypeDef *htim){};
 656              		.loc 1 263 0
 657              		.cfi_startproc
 658              		@ args = 0, pretend = 0, frame = 0
 659              		@ frame_needed = 0, uses_anonymous_args = 0
 660              		@ link register save eliminated.
 661              	.LVL40:
 662              		.loc 1 263 0
 663 0000 7047     		bx	lr
 664              		.cfi_endproc
 665              	.LFE144:
 667              		.section	.text.HAL_TIMEx_CommutationCallback,"ax",%progbits
 668              		.align	1
 669              		.global	HAL_TIMEx_CommutationCallback
 670              		.syntax unified
 671              		.thumb
 672              		.thumb_func
 673              		.fpu fpv5-d16
 675              	HAL_TIMEx_CommutationCallback:
 676              	.LFB145:
 264:../src/cool_fan.c **** void HAL_TIMEx_CommutationCallback(TIM_HandleTypeDef *htim){};
 677              		.loc 1 264 0
 678              		.cfi_startproc
 679              		@ args = 0, pretend = 0, frame = 0
 680              		@ frame_needed = 0, uses_anonymous_args = 0
 681              		@ link register save eliminated.
 682              	.LVL41:
 683              		.loc 1 264 0
 684 0000 7047     		bx	lr
 685              		.cfi_endproc
 686              	.LFE145:
 688              		.section	.text.I2C1_EV_IRQHandler,"ax",%progbits
 689              		.align	1
 690              		.global	I2C1_EV_IRQHandler
 691              		.syntax unified
 692              		.thumb
 693              		.thumb_func
 694              		.fpu fpv5-d16
 696              	I2C1_EV_IRQHandler:
 697              	.LFB146:
 265:../src/cool_fan.c **** //
 266:../src/cool_fan.c **** void I2C1_EV_IRQHandler(void){
 698              		.loc 1 266 0
 699              		.cfi_startproc
 700              		@ args = 0, pretend = 0, frame = 0
 701              		@ frame_needed = 0, uses_anonymous_args = 0
 702 0000 08B5     		push	{r3, lr}
 703              		.cfi_def_cfa_offset 8
 704              		.cfi_offset 3, -8
 705              		.cfi_offset 14, -4
 267:../src/cool_fan.c **** 	HAL_I2C_EV_IRQHandler(&hi2c1);
 706              		.loc 1 267 0
 707 0002 0248     		ldr	r0, .L31
 708 0004 FFF7FEFF 		bl	HAL_I2C_EV_IRQHandler
 709              	.LVL42:
 268:../src/cool_fan.c **** 
 269:../src/cool_fan.c **** }
 710              		.loc 1 269 0
 711 0008 08BD     		pop	{r3, pc}
 712              	.L32:
 713 000a 00BF     		.align	2
 714              	.L31:
 715 000c 00000000 		.word	hi2c1
 716              		.cfi_endproc
 717              	.LFE146:
 719              		.section	.text.I2C1_ER_IRQHandler,"ax",%progbits
 720              		.align	1
 721              		.global	I2C1_ER_IRQHandler
 722              		.syntax unified
 723              		.thumb
 724              		.thumb_func
 725              		.fpu fpv5-d16
 727              	I2C1_ER_IRQHandler:
 728              	.LFB147:
 270:../src/cool_fan.c **** void I2C1_ER_IRQHandler(void){
 729              		.loc 1 270 0
 730              		.cfi_startproc
 731              		@ args = 0, pretend = 0, frame = 0
 732              		@ frame_needed = 0, uses_anonymous_args = 0
 733 0000 08B5     		push	{r3, lr}
 734              		.cfi_def_cfa_offset 8
 735              		.cfi_offset 3, -8
 736              		.cfi_offset 14, -4
 271:../src/cool_fan.c **** 	HAL_I2C_ER_IRQHandler(&hi2c1);
 737              		.loc 1 271 0
 738 0002 0248     		ldr	r0, .L35
 739 0004 FFF7FEFF 		bl	HAL_I2C_ER_IRQHandler
 740              	.LVL43:
 272:../src/cool_fan.c **** }
 741              		.loc 1 272 0
 742 0008 08BD     		pop	{r3, pc}
 743              	.L36:
 744 000a 00BF     		.align	2
 745              	.L35:
 746 000c 00000000 		.word	hi2c1
 747              		.cfi_endproc
 748              	.LFE147:
 750              		.section	.text.HAL_I2C_AddrCallback,"ax",%progbits
 751              		.align	1
 752              		.global	HAL_I2C_AddrCallback
 753              		.syntax unified
 754              		.thumb
 755              		.thumb_func
 756              		.fpu fpv5-d16
 758              	HAL_I2C_AddrCallback:
 759              	.LFB148:
 273:../src/cool_fan.c **** 
 274:../src/cool_fan.c **** void HAL_I2C_AddrCallback(I2C_HandleTypeDef *hi2c, uint8_t TransferDirection, uint16_t AddrMatchCod
 760              		.loc 1 274 0
 761              		.cfi_startproc
 762              		@ args = 0, pretend = 0, frame = 0
 763              		@ frame_needed = 0, uses_anonymous_args = 0
 764              	.LVL44:
 765 0000 08B5     		push	{r3, lr}
 766              		.cfi_def_cfa_offset 8
 767              		.cfi_offset 3, -8
 768              		.cfi_offset 14, -4
 275:../src/cool_fan.c **** 	UNSUED(AddrMatchCode);
 769              		.loc 1 275 0
 770 0002 1046     		mov	r0, r2
 771              	.LVL45:
 772 0004 FFF7FEFF 		bl	UNSUED
 773              	.LVL46:
 276:../src/cool_fan.c **** 
 277:../src/cool_fan.c **** 	uint8_t transferRequested = 0;
 278:../src/cool_fan.c **** 	uint8_t transferDirection = 0;
 279:../src/cool_fan.c **** 	if(hi2c->Instance == I2C1) {
 280:../src/cool_fan.c **** 		transferRequested = 1;
 281:../src/cool_fan.c **** 		transferDirection = TransferDirection;
 282:../src/cool_fan.c **** 	}
 283:../src/cool_fan.c **** }
 774              		.loc 1 283 0
 775 0008 08BD     		pop	{r3, pc}
 776              		.cfi_endproc
 777              	.LFE148:
 779              		.global	count
 780              		.comm	htim7,64,4
 781              		.comm	hi2c1,76,4
 782              		.comm	hadc1,72,4
 783              		.comm	GPIO_InitStruct,20,4
 784              		.comm	flag1,4,4
 785              		.comm	USB_UART,112,4
 786              		.bss
 787              		.align	2
 788              		.set	.LANCHOR0,. + 0
 791              	count:
 792 0000 00000000 		.space	4
 793              		.section	.rodata.str1.4,"aMS",%progbits,1
 794              		.align	2
 795              	.LC0:
 796 0000 72656164 		.ascii	"reading is %d. %f\015\012\000"
 796      696E6720 
 796      69732025 
 796      642E2025 
 796      660D0A00 
 797              		.text
 798              	.Letext0:
 799              		.file 2 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 800              		.file 3 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 801              		.file 4 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 802              		.file 5 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 803              		.file 6 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 804              		.file 7 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 805              		.file 8 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h"
 806              		.file 9 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/system_stm
 807              		.file 10 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f769
 808              		.file 11 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f7xx
 809              		.file 12 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_def.
 810              		.file 13 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_gpio
 811              		.file 14 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_dma.
 812              		.file 15 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_adc.
 813              		.file 16 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_i2c.
 814              		.file 17 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_tim.
 815              		.file 18 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_uart
 816              		.file 19 "/Users/Qianqian/Desktop/MPS/Lab_4/LAB-04_Template/inc/uart.h"
 817              		.file 20 "/Users/Qianqian/Desktop/MPS/Lab_4/LAB-04_Template/inc/init.h"
 818              		.file 21 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal.h"
 819              		.file 22 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_cort
 820              		.file 23 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
DEFINED SYMBOLS
                            *ABS*:0000000000000000 cool_fan.c
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:17     .text.HAL_ADC_MspInit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:24     .text.HAL_ADC_MspInit:0000000000000000 HAL_ADC_MspInit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:112    .text.HAL_ADC_MspInit:0000000000000068 $d
                            *COM*:0000000000000048 hadc1
                            *COM*:0000000000000014 GPIO_InitStruct
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:121    .text.MX_I2C1_Init:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:128    .text.MX_I2C1_Init:0000000000000000 MX_I2C1_Init
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:200    .text.MX_I2C1_Init:0000000000000058 $d
                            *COM*:000000000000004c hi2c1
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:208    .text.Init_GPIO:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:215    .text.Init_GPIO:0000000000000000 Init_GPIO
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:407    .text.Init_GPIO:000000000000011c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:418    .text.main:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:425    .text.main:0000000000000000 main
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:562    .text.main:00000000000000d0 $d
                            *COM*:0000000000000040 htim7
                            *COM*:0000000000000004 flag1
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:576    .text.TIM7_IRQHandler:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:583    .text.TIM7_IRQHandler:0000000000000000 TIM7_IRQHandler
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:602    .text.TIM7_IRQHandler:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:607    .text.HAL_TIM_PeriodElapsedCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:614    .text.HAL_TIM_PeriodElapsedCallback:0000000000000000 HAL_TIM_PeriodElapsedCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:641    .text.HAL_TIM_PeriodElapsedCallback:0000000000000014 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:647    .text.HAL_TIMEx_BreakCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:654    .text.HAL_TIMEx_BreakCallback:0000000000000000 HAL_TIMEx_BreakCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:668    .text.HAL_TIMEx_CommutationCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:675    .text.HAL_TIMEx_CommutationCallback:0000000000000000 HAL_TIMEx_CommutationCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:689    .text.I2C1_EV_IRQHandler:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:696    .text.I2C1_EV_IRQHandler:0000000000000000 I2C1_EV_IRQHandler
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:715    .text.I2C1_EV_IRQHandler:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:720    .text.I2C1_ER_IRQHandler:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:727    .text.I2C1_ER_IRQHandler:0000000000000000 I2C1_ER_IRQHandler
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:746    .text.I2C1_ER_IRQHandler:000000000000000c $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:751    .text.HAL_I2C_AddrCallback:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:758    .text.HAL_I2C_AddrCallback:0000000000000000 HAL_I2C_AddrCallback
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:791    .bss:0000000000000000 count
                            *COM*:0000000000000070 USB_UART
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:787    .bss:0000000000000000 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//ccBYtmQ8.s:794    .rodata.str1.4:0000000000000000 $d
                           .group:0000000000000000 wm4.0.1feba82c71ea6f90606b0f4a064b979b
                           .group:0000000000000000 wm4._newlib_version.h.4.3572908597b70d672d181fc7fc501c19
                           .group:0000000000000000 wm4.features.h.33.d97f2d646536517df901beeb5b9993f5
                           .group:0000000000000000 wm4._default_types.h.15.247e5cd201eca3442cbf5404108c4935
                           .group:0000000000000000 wm4._intsup.h.10.cce27fed8484c08a33f522034c30d2b5
                           .group:0000000000000000 wm4._stdint.h.10.c24fa3af3bc1706662bb5593a907e841
                           .group:0000000000000000 wm4.stdint.h.23.d53047a68f4a85177f80b422d52785ed
                           .group:0000000000000000 wm4.newlib.h.8.e0fd068ed40a600f7426443f865dd469
                           .group:0000000000000000 wm4.ieeefp.h.77.49bcce8a603f3d93a95080d6a3573782
                           .group:0000000000000000 wm4.config.h.220.6cac6a9685cfce5e83c17784171638d9
                           .group:0000000000000000 wm4._ansi.h.23.9f8fcfa20193763fcf364fb91705c94b
                           .group:0000000000000000 wm4.stdio.h.31.7c0e28c411445f3f9c5b11accf882760
                           .group:0000000000000000 wm4.stddef.h.187.2ff233552538c6ff9b8575ca8ea52cb3
                           .group:0000000000000000 wm4.cdefs.h.47.d5f52c0838d768c139d665d47892271a
                           .group:0000000000000000 wm4.stddef.h.39.ec95e8feac892e292b69dc7ae75b0d64
                           .group:0000000000000000 wm4.stdarg.h.34.3a23a216c0c293b3d2ea2e89281481e6
                           .group:0000000000000000 wm4.lock.h.2.1461d1fff82dffe8bfddc23307f6484f
                           .group:0000000000000000 wm4._types.h.125.5cf8a495f1f7ef36777ad868a1e32068
                           .group:0000000000000000 wm4.stddef.h.161.5349cb105733e8777bfb0cf53c4e3f34
                           .group:0000000000000000 wm4._types.h.184.7120b8bb2e0149e2359704f4e2251b68
                           .group:0000000000000000 wm4.reent.h.17.87376802c2b370b32a762f0a30482d9e
                           .group:0000000000000000 wm4.types.h.40.e8c16e7ec36ba55f133d0616070e25fc
                           .group:0000000000000000 wm4._endian.h.31.65a10590763c3dde1ac4a7f66d7d4891
                           .group:0000000000000000 wm4.endian.h.9.49f3a4695c1b61e8a0808de3c4a106cb
                           .group:0000000000000000 wm4._timeval.h.30.0e8bfd94e85db17dda3286ee81496fe6
                           .group:0000000000000000 wm4.timespec.h.41.d855182eb0e690443ab8651bcedca6e1
                           .group:0000000000000000 wm4.select.h.30.bbece7fa40993a78092dcc5805132560
                           .group:0000000000000000 wm4.types.h.69.ed3eae3cf73030a737515151ebcab7a1
                           .group:0000000000000000 wm4.sched.h.22.c60982713a5c428609783c78f9c78d95
                           .group:0000000000000000 wm4._pthreadtypes.h.36.fcee9961c35163dde6267ef772ad1972
                           .group:0000000000000000 wm4.stdio.h.2.4aa87247282eca6c8f36f9de33d8df1a
                           .group:0000000000000000 wm4.stdio.h.81.932d0c162786b883f622b8d05c120c78
                           .group:0000000000000000 wm4.stm32f769xx.h.53.fbb381ab180ffe54a92825512efacd7c
                           .group:0000000000000000 wm4.core_cm7.h.42.5fcf3ef2a767e728bb78282f31f2ebb4
                           .group:0000000000000000 wm4.cmsis_gcc.h.36.39970cb43ce4b53c82644a1f9bc2eab9
                           .group:0000000000000000 wm4.core_cm7.h.223.3ba8e0c26e8c652fd61ebac634346018
                           .group:0000000000000000 wm4.stm32f769xx.h.1392.5beec6adeb9700b027ae21692fa8c3c5
                           .group:0000000000000000 wm4.stm32f7xx_hal_conf.h.42.3156784d5484408e6927d1d369303646
                           .group:0000000000000000 wm4.stm32f7xx.h.57.0a5c0849037a765b81edf98e7b917621
                           .group:0000000000000000 wm4.stm32f7xx.h.177.90d1aaec9345bde817d55cbd67a8e449
                           .group:0000000000000000 wm4.stm32_hal_legacy.h.41.ad2d6b636e1e97eb84d5e05e1c304f14
                           .group:0000000000000000 wm4.stm32f7xx_hal_def.h.74.b888c85a55953d8ceefb5693b2fbcc3b
                           .group:0000000000000000 wm4.stm32f7xx_hal_rcc_ex.h.40.60b96b9ccbf1da15137cd9a32410e72a
                           .group:0000000000000000 wm4.stm32f7xx_hal_rcc.h.128.876a8388f421bf9069da8423ce12a642
                           .group:0000000000000000 wm4.stm32f7xx_hal_gpio.h.40.5b491122a55a4cfb269c7f5d0b0e2765
                           .group:0000000000000000 wm4.stm32f7xx_hal_gpio_ex.h.40.6e8ad997fa3d9f9be44aa5b158186ec6
                           .group:0000000000000000 wm4.stm32f7xx_hal_gpio.h.282.1a4b3540e40d365b673115c410a0799f
                           .group:0000000000000000 wm4.stm32f7xx_hal_dma.h.40.1a7826291b57151da392a769dafaeb2f
                           .group:0000000000000000 wm4.stm32f7xx_hal_dma_ex.h.40.0089dfbba9b5b0614b19b949f0613812
                           .group:0000000000000000 wm4.stm32f7xx_hal_dma.h.695.7c839724c192464320d1ce9006ec8fc9
                           .group:0000000000000000 wm4.stm32f7xx_hal_cortex.h.40.a33e55e2812239f4ff95dc999ea7a71c
                           .group:0000000000000000 wm4.stm32f7xx_hal_adc.h.40.395fe59c2cf48a2ca4ab3eb1a2f67aaa
                           .group:0000000000000000 wm4.stm32f7xx_hal_adc_ex.h.40.ea4dbe61c9ed121e453ebeae64a6b25d
                           .group:0000000000000000 wm4.stm32f7xx_hal_adc.h.638.aa9f3310160db65e9f9a683f3db7a5fa
                           .group:0000000000000000 wm4.stm32f7xx_hal_dma2d.h.40.ff9d636f1aad19ede2b48d702b1a9286
                           .group:0000000000000000 wm4.stm32f7xx_hal_dcmi.h.40.673446f64ddd96a0733a59ac85034da9
                           .group:0000000000000000 wm4.stm32f7xx_hal_eth.h.40.020ed4df21876b21be23ffb763bb65c8
                           .group:0000000000000000 wm4.stm32f7xx_hal_flash.h.40.88d6d7ad6cc41b1fb6ed52f385706e4c
                           .group:0000000000000000 wm4.stm32f7xx_hal_flash_ex.h.40.067f94cefa6c935e3787b9b99b0e4874
                           .group:0000000000000000 wm4.stm32f7xx_hal_flash.h.377.0b5859d03dcb7fd00a41e55848494632
                           .group:0000000000000000 wm4.stm32f7xx_hal_i2c.h.40.c4117ff4988ea7bdb48fd08d9cdf9ad0
                           .group:0000000000000000 wm4.stm32f7xx_hal_i2c_ex.h.40.6e94652bf3c6f4cbc213bc8e33dda394
                           .group:0000000000000000 wm4.stm32f7xx_hal_i2c.h.627.769e47a1e1e882fecef81821e201a56c
                           .group:0000000000000000 wm4.stm32f7xx_hal_i2s.h.40.3089a12d60e39424d771533b6cfe71b6
                           .group:0000000000000000 wm4.stm32f7xx_hal_pwr.h.40.80156eb26cb3f3918feeac5abcc796b2
                           .group:0000000000000000 wm4.stm32f7xx_hal_pwr_ex.h.40.20c46934e304cbeafd394f1f92e7de7b
                           .group:0000000000000000 wm4.stm32f7xx_hal_pwr.h.367.4534d07488d5bbcd92c37fae31f8a3a9
                           .group:0000000000000000 wm4.stm32f7xx_hal_qspi.h.40.af8497fb3bdbfa4a0ea0acf8d2e2aeb9
                           .group:0000000000000000 wm4.stm32f7xx_hal_spi.h.40.837a17bf540f9e1bb953964f6d7171ba
                           .group:0000000000000000 wm4.stm32f7xx_hal_tim.h.40.b0e48013867dc74112f3b8664ad0b2cf
                           .group:0000000000000000 wm4.stm32f7xx_hal_tim_ex.h.40.4eb6f7d48f22ffab14cb2722b045c073
                           .group:0000000000000000 wm4.stm32f7xx_hal_tim.h.1292.895b41654c9b2277493da0cfaafbf888
                           .group:0000000000000000 wm4.stm32f7xx_hal_uart.h.40.d982218192e2876a4472a6a56779ed5b
                           .group:0000000000000000 wm4.stm32f7xx_hal_uart_ex.h.40.1a40f961e3634e6be2d502b70233d8ba
                           .group:0000000000000000 wm4.stm32f7xx_hal_usart.h.40.cb5d21788289ea07c8cb86a8c3e9a3ee
                           .group:0000000000000000 wm4.stm32f7xx_hal_usart_ex.h.40.c832898289f809404e177a0100d56f20
                           .group:0000000000000000 wm4.stm32f7xx_hal_usart.h.551.f8e675842882b7225174c18c8021a5c2
                           .group:0000000000000000 wm4.stm32f7xx_hal_irda.h.40.57665501634b36a1b22fa8bd884479df
                           .group:0000000000000000 wm4.stm32f7xx_hal_irda_ex.h.40.7bdf52d810f75fccc5226f03ff82b874
                           .group:0000000000000000 wm4.stm32f7xx_hal_irda.h.679.f83fa0cd22cf50957e474d7db88ab913
                           .group:0000000000000000 wm4.stm32f7xx_hal_smartcard.h.40.c13674557d3f748f45654ac2817a3cc2
                           .group:0000000000000000 wm4.stm32f7xx_hal_smartcard_ex.h.40.157ef45425f8fa95eff0ecd6d5b9c812
                           .group:0000000000000000 wm4.stm32f7xx_hal_smartcard.h.877.8e0cb289cd19c5035cddc09a34497c90
                           .group:0000000000000000 wm4.stm32f7xx_hal_wwdg.h.40.25a3c5d72f2e8fcb30fb6a9525ecf44b
                           .group:0000000000000000 wm4.stm32f7xx_hal.h.67.578683c81040128cb37f30b893b3213c
                           .group:0000000000000000 wm4.string.h.8.c4b8571ce60dff2817f43fec8b86aecd
                           .group:0000000000000000 wm4.stddef.h.161.19e15733342b50ead2919490b095303e
                           .group:0000000000000000 wm4.stdarg.h.31.3fa7b8f6daaa31edd1696c08c77f2a73

UNDEFINED SYMBOLS
HAL_ADC_ConfigChannel
HAL_GPIO_Init
HAL_I2C_Init
Sys_Init
HAL_Init
HAL_TIM_Base_Init
HAL_TIM_Base_Start_IT
HAL_NVIC_SetPriority
HAL_NVIC_EnableIRQ
HAL_ADC_Init
HAL_ADC_Start
HAL_ADC_PollForConversion
HAL_ADC_GetValue
HAL_ADC_Stop
HAL_Delay
HAL_GPIO_ReadPin
printf
HAL_GPIO_WritePin
HAL_TIM_IRQHandler
HAL_I2C_EV_IRQHandler
HAL_I2C_ER_IRQHandler
UNSUED

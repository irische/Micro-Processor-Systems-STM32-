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
  12              		.file	"uart.c"
  13              		.text
  14              	.Ltext0:
  15              		.cfi_sections	.debug_frame
  16              		.section	.text.HAL_UART_MspInit,"ax",%progbits
  17              		.align	1
  18              		.global	HAL_UART_MspInit
  19              		.syntax unified
  20              		.thumb
  21              		.thumb_func
  22              		.fpu fpv5-d16
  24              	HAL_UART_MspInit:
  25              	.LFB138:
  26              		.file 1 "../src/uart.c"
   1:../src/uart.c **** #include "uart.h"
   2:../src/uart.c **** 
   3:../src/uart.c **** // Initialize Hardware Resources
   4:../src/uart.c **** // Peripheral's clock enable
   5:../src/uart.c **** // Peripheral's GPIO Configuration
   6:../src/uart.c **** void HAL_UART_MspInit(UART_HandleTypeDef *huart){
  27              		.loc 1 6 0
  28              		.cfi_startproc
  29              		@ args = 0, pretend = 0, frame = 40
  30              		@ frame_needed = 0, uses_anonymous_args = 0
  31              	.LVL0:
  32 0000 30B5     		push	{r4, r5, lr}
  33              		.cfi_def_cfa_offset 12
  34              		.cfi_offset 4, -12
  35              		.cfi_offset 5, -8
  36              		.cfi_offset 14, -4
  37 0002 8BB0     		sub	sp, sp, #44
  38              		.cfi_def_cfa_offset 56
   7:../src/uart.c **** 	GPIO_InitTypeDef  GPIO_InitStruct;
   8:../src/uart.c **** 
   9:../src/uart.c **** 	if (huart->Instance == USART1) {
  39              		.loc 1 9 0
  40 0004 0368     		ldr	r3, [r0]
  41 0006 2E4A     		ldr	r2, .L7
  42 0008 9342     		cmp	r3, r2
  43 000a 04D0     		beq	.L5
  10:../src/uart.c **** 		// Enable GPIO Clocks
  11:../src/uart.c **** 		__GPIOA_CLK_ENABLE();
  12:../src/uart.c **** 
  13:../src/uart.c **** 		// Initialize TX Pin
  14:../src/uart.c **** 		GPIO_InitStruct.Pin       = GPIO_PIN_9;
  15:../src/uart.c **** 		GPIO_InitStruct.Mode      = GPIO_MODE_AF_PP;
  16:../src/uart.c **** 		GPIO_InitStruct.Pull      = GPIO_PULLUP;
  17:../src/uart.c **** 		GPIO_InitStruct.Speed     = GPIO_SPEED_HIGH;
  18:../src/uart.c **** 		GPIO_InitStruct.Alternate = GPIO_AF7_USART1;
  19:../src/uart.c **** 		HAL_GPIO_Init(GPIOA, &GPIO_InitStruct); //TX Config
  20:../src/uart.c **** 
  21:../src/uart.c **** 		// Initialize RX Pin
  22:../src/uart.c **** 		GPIO_InitStruct.Pin = GPIO_PIN_10;
  23:../src/uart.c **** 		HAL_GPIO_Init(GPIOA, &GPIO_InitStruct); //RX Config
  24:../src/uart.c **** 
  25:../src/uart.c **** 		// Enable UART Clocking
  26:../src/uart.c **** 		__USART1_CLK_ENABLE();
  27:../src/uart.c **** 
  28:../src/uart.c **** 	} else if (huart->Instance == USART6) {
  44              		.loc 1 28 0
  45 000c 2D4A     		ldr	r2, .L7+4
  46 000e 9342     		cmp	r3, r2
  47 0010 2CD0     		beq	.L6
  48              	.LVL1:
  49              	.L1:
  29:../src/uart.c **** 		// Enable GPIO Clocks
  30:../src/uart.c **** 		__GPIOC_CLK_ENABLE();
  31:../src/uart.c **** 
  32:../src/uart.c **** 		// Initialize TX Pin
  33:../src/uart.c **** 		GPIO_InitStruct.Pin       = GPIO_PIN_6;
  34:../src/uart.c **** 		GPIO_InitStruct.Mode      = GPIO_MODE_AF_PP;
  35:../src/uart.c **** 		GPIO_InitStruct.Pull      = GPIO_PULLUP;
  36:../src/uart.c **** 		GPIO_InitStruct.Speed     = GPIO_SPEED_HIGH;
  37:../src/uart.c **** 		GPIO_InitStruct.Alternate = GPIO_AF8_USART6;
  38:../src/uart.c **** 		HAL_GPIO_Init(GPIOC, &GPIO_InitStruct); //TX Config
  39:../src/uart.c **** 
  40:../src/uart.c **** 		// Initialize RX Pin
  41:../src/uart.c **** 		GPIO_InitStruct.Pin = GPIO_PIN_7;
  42:../src/uart.c **** 		HAL_GPIO_Init(GPIOC, &GPIO_InitStruct); //RX Config
  43:../src/uart.c **** 
  44:../src/uart.c **** 		// Enable UART Clocking
  45:../src/uart.c **** 		__USART6_CLK_ENABLE();
  46:../src/uart.c **** 
  47:../src/uart.c **** 	}
  48:../src/uart.c **** }
  50              		.loc 1 48 0
  51 0012 0BB0     		add	sp, sp, #44
  52              		.cfi_remember_state
  53              		.cfi_def_cfa_offset 12
  54              		@ sp needed
  55 0014 30BD     		pop	{r4, r5, pc}
  56              	.LVL2:
  57              	.L5:
  58              		.cfi_restore_state
  59              	.LBB2:
  11:../src/uart.c **** 
  60              		.loc 1 11 0
  61 0016 2C4C     		ldr	r4, .L7+8
  62 0018 236B     		ldr	r3, [r4, #48]
  63 001a 43F00103 		orr	r3, r3, #1
  64 001e 2363     		str	r3, [r4, #48]
  65 0020 236B     		ldr	r3, [r4, #48]
  66 0022 03F00103 		and	r3, r3, #1
  67 0026 0193     		str	r3, [sp, #4]
  68 0028 019B     		ldr	r3, [sp, #4]
  69              	.LBE2:
  14:../src/uart.c **** 		GPIO_InitStruct.Mode      = GPIO_MODE_AF_PP;
  70              		.loc 1 14 0
  71 002a 4FF40073 		mov	r3, #512
  72 002e 0593     		str	r3, [sp, #20]
  15:../src/uart.c **** 		GPIO_InitStruct.Pull      = GPIO_PULLUP;
  73              		.loc 1 15 0
  74 0030 0223     		movs	r3, #2
  75 0032 0693     		str	r3, [sp, #24]
  16:../src/uart.c **** 		GPIO_InitStruct.Speed     = GPIO_SPEED_HIGH;
  76              		.loc 1 16 0
  77 0034 0123     		movs	r3, #1
  78 0036 0793     		str	r3, [sp, #28]
  17:../src/uart.c **** 		GPIO_InitStruct.Alternate = GPIO_AF7_USART1;
  79              		.loc 1 17 0
  80 0038 0323     		movs	r3, #3
  81 003a 0893     		str	r3, [sp, #32]
  18:../src/uart.c **** 		HAL_GPIO_Init(GPIOA, &GPIO_InitStruct); //TX Config
  82              		.loc 1 18 0
  83 003c 0723     		movs	r3, #7
  84 003e 0993     		str	r3, [sp, #36]
  19:../src/uart.c **** 
  85              		.loc 1 19 0
  86 0040 224D     		ldr	r5, .L7+12
  87 0042 05A9     		add	r1, sp, #20
  88 0044 2846     		mov	r0, r5
  89              	.LVL3:
  90 0046 FFF7FEFF 		bl	HAL_GPIO_Init
  91              	.LVL4:
  22:../src/uart.c **** 		HAL_GPIO_Init(GPIOA, &GPIO_InitStruct); //RX Config
  92              		.loc 1 22 0
  93 004a 4FF48063 		mov	r3, #1024
  94 004e 0593     		str	r3, [sp, #20]
  23:../src/uart.c **** 
  95              		.loc 1 23 0
  96 0050 05A9     		add	r1, sp, #20
  97 0052 2846     		mov	r0, r5
  98 0054 FFF7FEFF 		bl	HAL_GPIO_Init
  99              	.LVL5:
 100              	.LBB3:
  26:../src/uart.c **** 
 101              		.loc 1 26 0
 102 0058 636C     		ldr	r3, [r4, #68]
 103 005a 43F01003 		orr	r3, r3, #16
 104 005e 6364     		str	r3, [r4, #68]
 105 0060 636C     		ldr	r3, [r4, #68]
 106 0062 03F01003 		and	r3, r3, #16
 107 0066 0293     		str	r3, [sp, #8]
 108 0068 029B     		ldr	r3, [sp, #8]
 109              	.LBE3:
 110 006a D2E7     		b	.L1
 111              	.LVL6:
 112              	.L6:
 113              	.LBB4:
  30:../src/uart.c **** 
 114              		.loc 1 30 0
 115 006c 164C     		ldr	r4, .L7+8
 116 006e 236B     		ldr	r3, [r4, #48]
 117 0070 43F00403 		orr	r3, r3, #4
 118 0074 2363     		str	r3, [r4, #48]
 119 0076 236B     		ldr	r3, [r4, #48]
 120 0078 03F00403 		and	r3, r3, #4
 121 007c 0393     		str	r3, [sp, #12]
 122 007e 039B     		ldr	r3, [sp, #12]
 123              	.LBE4:
  33:../src/uart.c **** 		GPIO_InitStruct.Mode      = GPIO_MODE_AF_PP;
 124              		.loc 1 33 0
 125 0080 4023     		movs	r3, #64
 126 0082 0593     		str	r3, [sp, #20]
  34:../src/uart.c **** 		GPIO_InitStruct.Pull      = GPIO_PULLUP;
 127              		.loc 1 34 0
 128 0084 0223     		movs	r3, #2
 129 0086 0693     		str	r3, [sp, #24]
  35:../src/uart.c **** 		GPIO_InitStruct.Speed     = GPIO_SPEED_HIGH;
 130              		.loc 1 35 0
 131 0088 0123     		movs	r3, #1
 132 008a 0793     		str	r3, [sp, #28]
  36:../src/uart.c **** 		GPIO_InitStruct.Alternate = GPIO_AF8_USART6;
 133              		.loc 1 36 0
 134 008c 0323     		movs	r3, #3
 135 008e 0893     		str	r3, [sp, #32]
  37:../src/uart.c **** 		HAL_GPIO_Init(GPIOC, &GPIO_InitStruct); //TX Config
 136              		.loc 1 37 0
 137 0090 0823     		movs	r3, #8
 138 0092 0993     		str	r3, [sp, #36]
  38:../src/uart.c **** 
 139              		.loc 1 38 0
 140 0094 0E4D     		ldr	r5, .L7+16
 141 0096 05A9     		add	r1, sp, #20
 142 0098 2846     		mov	r0, r5
 143              	.LVL7:
 144 009a FFF7FEFF 		bl	HAL_GPIO_Init
 145              	.LVL8:
  41:../src/uart.c **** 		HAL_GPIO_Init(GPIOC, &GPIO_InitStruct); //RX Config
 146              		.loc 1 41 0
 147 009e 8023     		movs	r3, #128
 148 00a0 0593     		str	r3, [sp, #20]
  42:../src/uart.c **** 
 149              		.loc 1 42 0
 150 00a2 05A9     		add	r1, sp, #20
 151 00a4 2846     		mov	r0, r5
 152 00a6 FFF7FEFF 		bl	HAL_GPIO_Init
 153              	.LVL9:
 154              	.LBB5:
  45:../src/uart.c **** 
 155              		.loc 1 45 0
 156 00aa 636C     		ldr	r3, [r4, #68]
 157 00ac 43F02003 		orr	r3, r3, #32
 158 00b0 6364     		str	r3, [r4, #68]
 159 00b2 636C     		ldr	r3, [r4, #68]
 160 00b4 03F02003 		and	r3, r3, #32
 161 00b8 0493     		str	r3, [sp, #16]
 162 00ba 049B     		ldr	r3, [sp, #16]
 163              	.LBE5:
 164              		.loc 1 48 0
 165 00bc A9E7     		b	.L1
 166              	.L8:
 167 00be 00BF     		.align	2
 168              	.L7:
 169 00c0 00100140 		.word	1073811456
 170 00c4 00140140 		.word	1073812480
 171 00c8 00380240 		.word	1073887232
 172 00cc 00000240 		.word	1073872896
 173 00d0 00080240 		.word	1073874944
 174              		.cfi_endproc
 175              	.LFE138:
 177              		.section	.text.initUart,"ax",%progbits
 178              		.align	1
 179              		.global	initUart
 180              		.syntax unified
 181              		.thumb
 182              		.thumb_func
 183              		.fpu fpv5-d16
 185              	initUart:
 186              	.LFB139:
  49:../src/uart.c **** 
  50:../src/uart.c **** //UART Initialization
  51:../src/uart.c **** void initUart(UART_HandleTypeDef* Uhand, uint32_t Baud, USART_TypeDef* Tgt) {
 187              		.loc 1 51 0
 188              		.cfi_startproc
 189              		@ args = 0, pretend = 0, frame = 0
 190              		@ frame_needed = 0, uses_anonymous_args = 0
 191              	.LVL10:
 192 0000 08B5     		push	{r3, lr}
 193              		.cfi_def_cfa_offset 8
 194              		.cfi_offset 3, -8
 195              		.cfi_offset 14, -4
  52:../src/uart.c **** 	Uhand->Instance        = Tgt;
 196              		.loc 1 52 0
 197 0002 0260     		str	r2, [r0]
  53:../src/uart.c **** 
  54:../src/uart.c **** 	Uhand->Init.BaudRate   = Baud;
 198              		.loc 1 54 0
 199 0004 4160     		str	r1, [r0, #4]
  55:../src/uart.c **** 	Uhand->Init.WordLength = UART_WORDLENGTH_8B;
 200              		.loc 1 55 0
 201 0006 0022     		movs	r2, #0
 202              	.LVL11:
 203 0008 8260     		str	r2, [r0, #8]
  56:../src/uart.c **** 	Uhand->Init.StopBits   = UART_STOPBITS_1;
 204              		.loc 1 56 0
 205 000a C260     		str	r2, [r0, #12]
  57:../src/uart.c **** 	Uhand->Init.Parity     = UART_PARITY_NONE;
 206              		.loc 1 57 0
 207 000c 0261     		str	r2, [r0, #16]
  58:../src/uart.c **** 	Uhand->Init.Mode       = UART_MODE_TX_RX;
 208              		.loc 1 58 0
 209 000e 0C21     		movs	r1, #12
 210              	.LVL12:
 211 0010 4161     		str	r1, [r0, #20]
  59:../src/uart.c **** 	Uhand->Init.HwFlowCtl  = UART_HWCONTROL_NONE;
 212              		.loc 1 59 0
 213 0012 8261     		str	r2, [r0, #24]
  60:../src/uart.c **** 
  61:../src/uart.c **** 	HAL_UART_Init(Uhand);
 214              		.loc 1 61 0
 215 0014 FFF7FEFF 		bl	HAL_UART_Init
 216              	.LVL13:
  62:../src/uart.c **** }
 217              		.loc 1 62 0
 218 0018 08BD     		pop	{r3, pc}
 219              		.cfi_endproc
 220              	.LFE139:
 222              		.section	.text._write,"ax",%progbits
 223              		.align	1
 224              		.global	_write
 225              		.syntax unified
 226              		.thumb
 227              		.thumb_func
 228              		.fpu fpv5-d16
 230              	_write:
 231              	.LFB140:
  63:../src/uart.c **** 
  64:../src/uart.c **** /* ============================================================================
  65:../src/uart.c **** 
  66:../src/uart.c **** Reassigning _write and _read to USB_UART by default.
  67:../src/uart.c **** 
  68:../src/uart.c **** Note the following for an explanation of syntax:
  69:../src/uart.c **** 
  70:../src/uart.c **** HAL_UART_Transmit(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout)
  71:../src/uart.c **** 
  72:../src/uart.c **** HAL_UART_Receive(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout)
  73:../src/uart.c **** 
  74:../src/uart.c **** ============================================================================= */
  75:../src/uart.c **** 
  76:../src/uart.c **** 
  77:../src/uart.c **** // Make printf(), putchar(), etc. default to work over USB UART
  78:../src/uart.c **** int _write(int file, char *ptr, int len) {
 232              		.loc 1 78 0
 233              		.cfi_startproc
 234              		@ args = 0, pretend = 0, frame = 0
 235              		@ frame_needed = 0, uses_anonymous_args = 0
 236              	.LVL14:
 237 0000 10B5     		push	{r4, lr}
 238              		.cfi_def_cfa_offset 8
 239              		.cfi_offset 4, -8
 240              		.cfi_offset 14, -4
 241 0002 1446     		mov	r4, r2
  79:../src/uart.c **** 	HAL_UART_Transmit(&USB_UART, (uint8_t*) ptr, len, 1000);
 242              		.loc 1 79 0
 243 0004 4FF47A73 		mov	r3, #1000
 244 0008 92B2     		uxth	r2, r2
 245              	.LVL15:
 246 000a 0248     		ldr	r0, .L13
 247              	.LVL16:
 248 000c FFF7FEFF 		bl	HAL_UART_Transmit
 249              	.LVL17:
  80:../src/uart.c **** 	return len;
  81:../src/uart.c **** }
 250              		.loc 1 81 0
 251 0010 2046     		mov	r0, r4
 252 0012 10BD     		pop	{r4, pc}
 253              	.LVL18:
 254              	.L14:
 255              		.align	2
 256              	.L13:
 257 0014 00000000 		.word	USB_UART
 258              		.cfi_endproc
 259              	.LFE140:
 261              		.section	.text._read,"ax",%progbits
 262              		.align	1
 263              		.global	_read
 264              		.syntax unified
 265              		.thumb
 266              		.thumb_func
 267              		.fpu fpv5-d16
 269              	_read:
 270              	.LFB141:
  82:../src/uart.c **** 
  83:../src/uart.c **** // Make scanf(), getchar(), etc. default to work over USB UART
  84:../src/uart.c **** int _read(int file, char *ptr, int len) {
 271              		.loc 1 84 0
 272              		.cfi_startproc
 273              		@ args = 0, pretend = 0, frame = 0
 274              		@ frame_needed = 0, uses_anonymous_args = 0
 275              	.LVL19:
 276 0000 08B5     		push	{r3, lr}
 277              		.cfi_def_cfa_offset 8
 278              		.cfi_offset 3, -8
 279              		.cfi_offset 14, -4
  85:../src/uart.c **** 	*ptr = 0x00; // Clear the character buffer because scanf() is finicky
 280              		.loc 1 85 0
 281 0002 0022     		movs	r2, #0
 282              	.LVL20:
 283 0004 0A70     		strb	r2, [r1]
 284              	.LVL21:
  86:../src/uart.c **** 	len = 1; // Again because of scanf's finickiness, len must = 1
  87:../src/uart.c **** 	HAL_UART_Receive(&USB_UART, (uint8_t*) ptr, len, HAL_MAX_DELAY);
 285              		.loc 1 87 0
 286 0006 4FF0FF33 		mov	r3, #-1
 287 000a 0122     		movs	r2, #1
 288 000c 0248     		ldr	r0, .L17
 289              	.LVL22:
 290 000e FFF7FEFF 		bl	HAL_UART_Receive
 291              	.LVL23:
  88:../src/uart.c **** 	return len;
  89:../src/uart.c **** }
 292              		.loc 1 89 0
 293 0012 0120     		movs	r0, #1
 294 0014 08BD     		pop	{r3, pc}
 295              	.L18:
 296 0016 00BF     		.align	2
 297              	.L17:
 298 0018 00000000 		.word	USB_UART
 299              		.cfi_endproc
 300              	.LFE141:
 302              		.section	.text.uart_print,"ax",%progbits
 303              		.align	1
 304              		.global	uart_print
 305              		.syntax unified
 306              		.thumb
 307              		.thumb_func
 308              		.fpu fpv5-d16
 310              	uart_print:
 311              	.LFB142:
  90:../src/uart.c **** 
  91:../src/uart.c **** /* ============================================================================
  92:../src/uart.c **** 
  93:../src/uart.c **** Custom UART functions that can be mapped to any UART of your choice when called
  94:../src/uart.c **** 
  95:../src/uart.c **** Note the following for an explanation of syntax:
  96:../src/uart.c **** 
  97:../src/uart.c **** HAL_UART_Transmit(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout)
  98:../src/uart.c **** 
  99:../src/uart.c **** HAL_UART_Receive(UART_HandleTypeDef *huart, uint8_t *pData, uint16_t Size, uint32_t Timeout)
 100:../src/uart.c **** 
 101:../src/uart.c **** ============================================================================= */
 102:../src/uart.c **** 
 103:../src/uart.c **** // Print a string on the specified UART. (Basically a redirectable puts)
 104:../src/uart.c **** void uart_print(UART_HandleTypeDef *huart, char* string) {
 312              		.loc 1 104 0
 313              		.cfi_startproc
 314              		@ args = 0, pretend = 0, frame = 0
 315              		@ frame_needed = 0, uses_anonymous_args = 0
 316              	.LVL24:
 317 0000 38B5     		push	{r3, r4, r5, lr}
 318              		.cfi_def_cfa_offset 16
 319              		.cfi_offset 3, -16
 320              		.cfi_offset 4, -12
 321              		.cfi_offset 5, -8
 322              		.cfi_offset 14, -4
 323 0002 0546     		mov	r5, r0
 324 0004 0C46     		mov	r4, r1
 105:../src/uart.c ****     HAL_UART_Transmit(huart, (uint8_t*) string, strlen((const char*)string), 1000);
 325              		.loc 1 105 0
 326 0006 0846     		mov	r0, r1
 327              	.LVL25:
 328 0008 FFF7FEFF 		bl	strlen
 329              	.LVL26:
 330 000c 4FF47A73 		mov	r3, #1000
 331 0010 82B2     		uxth	r2, r0
 332 0012 2146     		mov	r1, r4
 333 0014 2846     		mov	r0, r5
 334 0016 FFF7FEFF 		bl	HAL_UART_Transmit
 335              	.LVL27:
 106:../src/uart.c **** }
 336              		.loc 1 106 0
 337 001a 38BD     		pop	{r3, r4, r5, pc}
 338              		.cfi_endproc
 339              	.LFE142:
 341              		.section	.text.uart_getchar,"ax",%progbits
 342              		.align	1
 343              		.global	uart_getchar
 344              		.syntax unified
 345              		.thumb
 346              		.thumb_func
 347              		.fpu fpv5-d16
 349              	uart_getchar:
 350              	.LFB143:
 107:../src/uart.c **** 
 108:../src/uart.c **** // Get one character
 109:../src/uart.c **** // 'echo' means enable (1) or disable (0) echoing of characters
 110:../src/uart.c **** char uart_getchar(UART_HandleTypeDef *huart, uint8_t echo) {
 351              		.loc 1 110 0
 352              		.cfi_startproc
 353              		@ args = 0, pretend = 0, frame = 8
 354              		@ frame_needed = 0, uses_anonymous_args = 0
 355              	.LVL28:
 356 0000 30B5     		push	{r4, r5, lr}
 357              		.cfi_def_cfa_offset 12
 358              		.cfi_offset 4, -12
 359              		.cfi_offset 5, -8
 360              		.cfi_offset 14, -4
 361 0002 83B0     		sub	sp, sp, #12
 362              		.cfi_def_cfa_offset 24
 363 0004 0546     		mov	r5, r0
 364 0006 0C46     		mov	r4, r1
 111:../src/uart.c **** 	char input[1];
 112:../src/uart.c **** 	HAL_UART_Receive(huart, (uint8_t *)input, 1, HAL_MAX_DELAY);
 365              		.loc 1 112 0
 366 0008 4FF0FF33 		mov	r3, #-1
 367 000c 0122     		movs	r2, #1
 368 000e 01A9     		add	r1, sp, #4
 369              	.LVL29:
 370 0010 FFF7FEFF 		bl	HAL_UART_Receive
 371              	.LVL30:
 113:../src/uart.c **** 	if (echo) HAL_UART_Transmit(huart, (uint8_t*) input, 1, 1000);
 372              		.loc 1 113 0
 373 0014 1CB9     		cbnz	r4, .L24
 374              	.L22:
 114:../src/uart.c **** 	return (char)input[0];
 115:../src/uart.c **** }
 375              		.loc 1 115 0
 376 0016 9DF80400 		ldrb	r0, [sp, #4]	@ zero_extendqisi2
 377 001a 03B0     		add	sp, sp, #12
 378              		.cfi_remember_state
 379              		.cfi_def_cfa_offset 12
 380              		@ sp needed
 381 001c 30BD     		pop	{r4, r5, pc}
 382              	.LVL31:
 383              	.L24:
 384              		.cfi_restore_state
 113:../src/uart.c **** 	if (echo) HAL_UART_Transmit(huart, (uint8_t*) input, 1, 1000);
 385              		.loc 1 113 0 discriminator 1
 386 001e 4FF47A73 		mov	r3, #1000
 387 0022 0122     		movs	r2, #1
 388 0024 01A9     		add	r1, sp, #4
 389 0026 2846     		mov	r0, r5
 390 0028 FFF7FEFF 		bl	HAL_UART_Transmit
 391              	.LVL32:
 392 002c F3E7     		b	.L22
 393              		.cfi_endproc
 394              	.LFE143:
 396              		.section	.text.uart_putchar,"ax",%progbits
 397              		.align	1
 398              		.global	uart_putchar
 399              		.syntax unified
 400              		.thumb
 401              		.thumb_func
 402              		.fpu fpv5-d16
 404              	uart_putchar:
 405              	.LFB144:
 116:../src/uart.c **** 
 117:../src/uart.c **** // Send one character
 118:../src/uart.c **** void uart_putchar(UART_HandleTypeDef *huart, char * input) {
 406              		.loc 1 118 0
 407              		.cfi_startproc
 408              		@ args = 0, pretend = 0, frame = 0
 409              		@ frame_needed = 0, uses_anonymous_args = 0
 410              	.LVL33:
 411 0000 08B5     		push	{r3, lr}
 412              		.cfi_def_cfa_offset 8
 413              		.cfi_offset 3, -8
 414              		.cfi_offset 14, -4
 119:../src/uart.c **** 	HAL_UART_Transmit(huart, (uint8_t*) input, 1, 1000);
 415              		.loc 1 119 0
 416 0002 4FF47A73 		mov	r3, #1000
 417 0006 0122     		movs	r2, #1
 418 0008 FFF7FEFF 		bl	HAL_UART_Transmit
 419              	.LVL34:
 120:../src/uart.c **** }
 420              		.loc 1 120 0
 421 000c 08BD     		pop	{r3, pc}
 422              		.cfi_endproc
 423              	.LFE144:
 425              		.section	.text.uart_getline,"ax",%progbits
 426              		.align	1
 427              		.global	uart_getline
 428              		.syntax unified
 429              		.thumb
 430              		.thumb_func
 431              		.fpu fpv5-d16
 433              	uart_getline:
 434              	.LFB145:
 121:../src/uart.c **** 
 122:../src/uart.c **** // Collects characters until size limit or an endline is recieved
 123:../src/uart.c **** // Returns number of characters collected
 124:../src/uart.c **** // 'max size' should match the size of the array or be smaller
 125:../src/uart.c **** int uart_getline(UART_HandleTypeDef *huart, char * input, int max_size)
 126:../src/uart.c **** {
 435              		.loc 1 126 0
 436              		.cfi_startproc
 437              		@ args = 0, pretend = 0, frame = 0
 438              		@ frame_needed = 0, uses_anonymous_args = 0
 439              	.LVL35:
 440 0000 F8B5     		push	{r3, r4, r5, r6, r7, lr}
 441              		.cfi_def_cfa_offset 24
 442              		.cfi_offset 3, -24
 443              		.cfi_offset 4, -20
 444              		.cfi_offset 5, -16
 445              		.cfi_offset 6, -12
 446              		.cfi_offset 7, -8
 447              		.cfi_offset 14, -4
 448 0002 0646     		mov	r6, r0
 449 0004 0F46     		mov	r7, r1
 450 0006 1546     		mov	r5, r2
 451              	.LVL36:
 127:../src/uart.c ****   char single;
 128:../src/uart.c ****   int i = 0;
 452              		.loc 1 128 0
 453 0008 0024     		movs	r4, #0
 454              	.LVL37:
 455              	.L29:
 129:../src/uart.c **** 
 130:../src/uart.c **** 	while(1)
 131:../src/uart.c **** 	{
 132:../src/uart.c **** 		if (i > max_size)
 456              		.loc 1 132 0
 457 000a AC42     		cmp	r4, r5
 458 000c 0ADC     		bgt	.L27
 133:../src/uart.c ****       {
 134:../src/uart.c **** 				break;
 135:../src/uart.c **** 			}
 136:../src/uart.c **** 
 137:../src/uart.c **** 		single = uart_getchar(huart, 1); // Get one character
 459              		.loc 1 137 0
 460 000e 0121     		movs	r1, #1
 461 0010 3046     		mov	r0, r6
 462 0012 FFF7FEFF 		bl	uart_getchar
 463              	.LVL38:
 138:../src/uart.c **** 
 139:../src/uart.c ****   	if (single == '\n' || single == '\r') // Unix & co. use \n, Windows uses \r\n
 464              		.loc 1 139 0
 465 0016 0D28     		cmp	r0, #13
 466 0018 18BF     		it	ne
 467 001a 0A28     		cmpne	r0, #10
 468 001c 02D0     		beq	.L27
 140:../src/uart.c **** 			break;
 141:../src/uart.c ****   	else
 142:../src/uart.c **** 			input[i] = single;
 469              		.loc 1 142 0
 470 001e 3855     		strb	r0, [r7, r4]
 143:../src/uart.c ****   	i++;
 471              		.loc 1 143 0
 472 0020 0134     		adds	r4, r4, #1
 473              	.LVL39:
 132:../src/uart.c ****       {
 474              		.loc 1 132 0
 475 0022 F2E7     		b	.L29
 476              	.LVL40:
 477              	.L27:
 144:../src/uart.c **** 	}
 145:../src/uart.c ****   return i; // The way this is set up, it will always report the wrong size
 146:../src/uart.c **** }
 478              		.loc 1 146 0
 479 0024 2046     		mov	r0, r4
 480 0026 F8BD     		pop	{r3, r4, r5, r6, r7, pc}
 481              		.cfi_endproc
 482              	.LFE145:
 484              		.comm	USB_UART,112,4
 485              		.text
 486              	.Letext0:
 487              		.file 2 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 488              		.file 3 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 489              		.file 4 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include/core_cm7.h"
 490              		.file 5 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/system_stm
 491              		.file 6 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include/stm32f769x
 492              		.file 7 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 493              		.file 8 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 494              		.file 9 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.exte
 495              		.file 10 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
 496              		.file 11 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_def.
 497              		.file 12 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_gpio
 498              		.file 13 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_dma.
 499              		.file 14 "/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc/stm32f7xx_hal_uart
 500              		.file 15 "/Users/Qianqian/Desktop/MPS/Lab_4/LAB-04_Template/inc/uart.h"
 501              		.file 16 "/Users/Qianqian/Applications/SystemWorkbench.app/Contents/Eclipse/plugins/fr.ac6.mcu.ext
DEFINED SYMBOLS
                            *ABS*:0000000000000000 uart.c
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc2r03z0.s:17     .text.HAL_UART_MspInit:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc2r03z0.s:24     .text.HAL_UART_MspInit:0000000000000000 HAL_UART_MspInit
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc2r03z0.s:169    .text.HAL_UART_MspInit:00000000000000c0 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc2r03z0.s:178    .text.initUart:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc2r03z0.s:185    .text.initUart:0000000000000000 initUart
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc2r03z0.s:223    .text._write:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc2r03z0.s:230    .text._write:0000000000000000 _write
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc2r03z0.s:257    .text._write:0000000000000014 $d
                            *COM*:0000000000000070 USB_UART
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc2r03z0.s:262    .text._read:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc2r03z0.s:269    .text._read:0000000000000000 _read
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc2r03z0.s:298    .text._read:0000000000000018 $d
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc2r03z0.s:303    .text.uart_print:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc2r03z0.s:310    .text.uart_print:0000000000000000 uart_print
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc2r03z0.s:342    .text.uart_getchar:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc2r03z0.s:349    .text.uart_getchar:0000000000000000 uart_getchar
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc2r03z0.s:397    .text.uart_putchar:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc2r03z0.s:404    .text.uart_putchar:0000000000000000 uart_putchar
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc2r03z0.s:426    .text.uart_getline:0000000000000000 $t
/var/folders/21/b31ry591191b503m_84g15lc0000gn/T//cc2r03z0.s:433    .text.uart_getline:0000000000000000 uart_getline
                           .group:0000000000000000 wm4.0.1feba82c71ea6f90606b0f4a064b979b
                           .group:0000000000000000 wm4.stm32f769xx.h.53.fbb381ab180ffe54a92825512efacd7c
                           .group:0000000000000000 wm4._newlib_version.h.4.3572908597b70d672d181fc7fc501c19
                           .group:0000000000000000 wm4.features.h.33.d97f2d646536517df901beeb5b9993f5
                           .group:0000000000000000 wm4._default_types.h.15.247e5cd201eca3442cbf5404108c4935
                           .group:0000000000000000 wm4._intsup.h.10.cce27fed8484c08a33f522034c30d2b5
                           .group:0000000000000000 wm4._stdint.h.10.c24fa3af3bc1706662bb5593a907e841
                           .group:0000000000000000 wm4.stdint.h.23.d53047a68f4a85177f80b422d52785ed
                           .group:0000000000000000 wm4.core_cm7.h.74.fd1aa13295dc2a7b6cb68ba515ddee64
                           .group:0000000000000000 wm4.cmsis_gcc.h.36.39970cb43ce4b53c82644a1f9bc2eab9
                           .group:0000000000000000 wm4.core_cm7.h.223.3ba8e0c26e8c652fd61ebac634346018
                           .group:0000000000000000 wm4.stm32f769xx.h.1392.5beec6adeb9700b027ae21692fa8c3c5
                           .group:0000000000000000 wm4.stm32f7xx_hal_conf.h.42.3156784d5484408e6927d1d369303646
                           .group:0000000000000000 wm4.stm32f7xx.h.57.0a5c0849037a765b81edf98e7b917621
                           .group:0000000000000000 wm4.stm32f7xx.h.177.90d1aaec9345bde817d55cbd67a8e449
                           .group:0000000000000000 wm4.stm32_hal_legacy.h.41.ad2d6b636e1e97eb84d5e05e1c304f14
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
HAL_GPIO_Init
HAL_UART_Init
HAL_UART_Transmit
HAL_UART_Receive
strlen

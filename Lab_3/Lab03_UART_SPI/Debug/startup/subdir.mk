################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../startup/startup_stm32f769xx.s 

OBJS += \
./startup/startup_stm32f769xx.o 


# Each subdirectory must supply rules for building sources it contributes
startup/%.o: ../startup/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-d16 -I"/Users/Qianqian/Desktop/MPS/Lab_3/Lab03_UART_SPI/inc" -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



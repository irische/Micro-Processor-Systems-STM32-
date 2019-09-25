################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Lab04_adc.c \
../src/cool_fan.c \
../src/init.c \
../src/task3_1.c \
../src/uart.c 

OBJS += \
./src/Lab04_adc.o \
./src/cool_fan.o \
./src/init.o \
./src/task3_1.o \
./src/uart.o 

C_DEPS += \
./src/Lab04_adc.d \
./src/cool_fan.d \
./src/init.d \
./src/task3_1.d \
./src/uart.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-d16 -DUSE_HAL_DRIVER -DSTM32F769xx -DUSE_STM32F769I_DISCO -I"/Users/Qianqian/Desktop/MPS/Lab_4/LAB-04_Template/inc" -I"/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include" -I"/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc" -Og -g3 -Wall -fmessage-length=0 -Wdouble-promotion -Wa,-adhlns="$(@:%.o=%.asm)" -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



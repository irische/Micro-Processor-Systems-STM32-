################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Lab02_intrpt.c \
../src/init.c \
../src/task1.c \
../src/task1_hal.c \
../src/task1_register.c \
../src/task2.c \
../src/task3.c \
../src/task4.c \
../src/uart.c 

OBJS += \
./src/Lab02_intrpt.o \
./src/init.o \
./src/task1.o \
./src/task1_hal.o \
./src/task1_register.o \
./src/task2.o \
./src/task3.o \
./src/task4.o \
./src/uart.o 

C_DEPS += \
./src/Lab02_intrpt.d \
./src/init.d \
./src/task1.d \
./src/task1_hal.d \
./src/task1_register.d \
./src/task2.d \
./src/task3.d \
./src/task4.d \
./src/uart.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-d16 -DUSE_HAL_DRIVER -DSTM32F769xx -DUSE_STM32F769I_DISCO -I"/Users/Qianqian/Desktop/MPS/LAB-02-Template-2/inc" -I"/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/CMSIS/Include" -I"/Users/Qianqian/Desktop/MPS/stm32lib/Drivers/STM32F7xx_HAL_Driver/Inc" -Og -g3 -Wall -fmessage-length=0 -Wdouble-promotion -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



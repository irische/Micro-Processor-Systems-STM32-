################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include stm32lib/Drivers/STM32F7xx_HAL_Driver/Src/subdir.mk
-include stm32lib/Drivers/CMSIS/Device/ST/STM32F7xx/Source/Templates/subdir.mk
-include startup/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: LAB-03_Template.elf

# Tool invocations
LAB-03_Template.elf: $(OBJS) $(USER_OBJS) /Users/Qianqian/Desktop/MPS/Lab_3/Lab03_UART_SPI/LinkerScript.ld
	@echo 'Building target: $@'
	@echo 'Invoking: MCU GCC Linker'
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-d16 -specs=nosys.specs -specs=nano.specs -T"/Users/Qianqian/Desktop/MPS/Lab_3/Lab03_UART_SPI/LinkerScript.ld" -Wl,-Map=output.map -Wl,--gc-sections -o "LAB-03_Template.elf" @"objects.list" $(USER_OBJS) $(LIBS) -lm
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

post-build:
	-@echo 'Generating binary and Printing size information:'
	arm-none-eabi-objcopy -O binary "LAB-03_Template.elf" "LAB-03_Template.bin"
	arm-none-eabi-size "LAB-03_Template.elf"
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY: post-build

-include ../makefile.targets

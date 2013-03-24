################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../main.c \
../startup_gcc.c 

OBJS += \
./main.o \
./startup_gcc.o 

C_DEPS += \
./main.d \
./startup_gcc.d 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



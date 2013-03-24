################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/StellarisWare/driverlib/ELT240320TP.c \
C:/StellarisWare/driverlib/adc.c \
C:/StellarisWare/driverlib/can.c \
C:/StellarisWare/driverlib/comp.c \
C:/StellarisWare/driverlib/cpu.c \
C:/StellarisWare/driverlib/eeprom.c \
C:/StellarisWare/driverlib/epi.c \
C:/StellarisWare/driverlib/ethernet.c \
C:/StellarisWare/driverlib/fan.c \
C:/StellarisWare/driverlib/flash.c \
C:/StellarisWare/driverlib/fpu.c \
C:/StellarisWare/driverlib/gpio.c \
C:/StellarisWare/driverlib/hibernate.c \
C:/StellarisWare/driverlib/i2c.c \
C:/StellarisWare/driverlib/i2s.c \
C:/StellarisWare/driverlib/interrupt.c \
C:/StellarisWare/driverlib/lpc.c \
C:/StellarisWare/driverlib/mpu.c \
C:/StellarisWare/driverlib/peci.c \
C:/StellarisWare/driverlib/pwm.c \
C:/StellarisWare/driverlib/qei.c \
C:/StellarisWare/driverlib/ssi.c \
C:/StellarisWare/driverlib/sysctl.c \
C:/StellarisWare/driverlib/sysexc.c \
C:/StellarisWare/driverlib/systick.c \
C:/StellarisWare/driverlib/timer.c \
C:/StellarisWare/driverlib/uart.c \
C:/StellarisWare/driverlib/udma.c \
C:/StellarisWare/driverlib/usb.c \
C:/StellarisWare/driverlib/watchdog.c 

OBJS += \
./driverlib/ELT240320TP.o \
./driverlib/adc.o \
./driverlib/can.o \
./driverlib/comp.o \
./driverlib/cpu.o \
./driverlib/eeprom.o \
./driverlib/epi.o \
./driverlib/ethernet.o \
./driverlib/fan.o \
./driverlib/flash.o \
./driverlib/fpu.o \
./driverlib/gpio.o \
./driverlib/hibernate.o \
./driverlib/i2c.o \
./driverlib/i2s.o \
./driverlib/interrupt.o \
./driverlib/lpc.o \
./driverlib/mpu.o \
./driverlib/peci.o \
./driverlib/pwm.o \
./driverlib/qei.o \
./driverlib/ssi.o \
./driverlib/sysctl.o \
./driverlib/sysexc.o \
./driverlib/systick.o \
./driverlib/timer.o \
./driverlib/uart.o \
./driverlib/udma.o \
./driverlib/usb.o \
./driverlib/watchdog.o 

C_DEPS += \
./driverlib/ELT240320TP.d \
./driverlib/adc.d \
./driverlib/can.d \
./driverlib/comp.d \
./driverlib/cpu.d \
./driverlib/eeprom.d \
./driverlib/epi.d \
./driverlib/ethernet.d \
./driverlib/fan.d \
./driverlib/flash.d \
./driverlib/fpu.d \
./driverlib/gpio.d \
./driverlib/hibernate.d \
./driverlib/i2c.d \
./driverlib/i2s.d \
./driverlib/interrupt.d \
./driverlib/lpc.d \
./driverlib/mpu.d \
./driverlib/peci.d \
./driverlib/pwm.d \
./driverlib/qei.d \
./driverlib/ssi.d \
./driverlib/sysctl.d \
./driverlib/sysexc.d \
./driverlib/systick.d \
./driverlib/timer.d \
./driverlib/uart.d \
./driverlib/udma.d \
./driverlib/usb.d \
./driverlib/watchdog.d 


# Each subdirectory must supply rules for building sources it contributes
driverlib/ELT240320TP.o: C:/StellarisWare/driverlib/ELT240320TP.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/adc.o: C:/StellarisWare/driverlib/adc.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/can.o: C:/StellarisWare/driverlib/can.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/comp.o: C:/StellarisWare/driverlib/comp.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/cpu.o: C:/StellarisWare/driverlib/cpu.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/eeprom.o: C:/StellarisWare/driverlib/eeprom.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/epi.o: C:/StellarisWare/driverlib/epi.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/ethernet.o: C:/StellarisWare/driverlib/ethernet.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/fan.o: C:/StellarisWare/driverlib/fan.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/flash.o: C:/StellarisWare/driverlib/flash.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/fpu.o: C:/StellarisWare/driverlib/fpu.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/gpio.o: C:/StellarisWare/driverlib/gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/hibernate.o: C:/StellarisWare/driverlib/hibernate.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/i2c.o: C:/StellarisWare/driverlib/i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/i2s.o: C:/StellarisWare/driverlib/i2s.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/interrupt.o: C:/StellarisWare/driverlib/interrupt.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/lpc.o: C:/StellarisWare/driverlib/lpc.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/mpu.o: C:/StellarisWare/driverlib/mpu.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/peci.o: C:/StellarisWare/driverlib/peci.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/pwm.o: C:/StellarisWare/driverlib/pwm.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/qei.o: C:/StellarisWare/driverlib/qei.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/ssi.o: C:/StellarisWare/driverlib/ssi.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/sysctl.o: C:/StellarisWare/driverlib/sysctl.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/sysexc.o: C:/StellarisWare/driverlib/sysexc.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/systick.o: C:/StellarisWare/driverlib/systick.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/timer.o: C:/StellarisWare/driverlib/timer.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/uart.o: C:/StellarisWare/driverlib/uart.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/udma.o: C:/StellarisWare/driverlib/udma.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/usb.o: C:/StellarisWare/driverlib/usb.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

driverlib/watchdog.o: C:/StellarisWare/driverlib/watchdog.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



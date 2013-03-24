################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/StellarisWare/utils/cmdline.c \
C:/StellarisWare/utils/cpu_usage.c \
C:/StellarisWare/utils/crc.c \
C:/StellarisWare/utils/flash_pb.c \
C:/StellarisWare/utils/isqrt.c \
C:/StellarisWare/utils/ringbuf.c \
C:/StellarisWare/utils/scheduler.c \
C:/StellarisWare/utils/sine.c \
C:/StellarisWare/utils/softi2c.c \
C:/StellarisWare/utils/softssi.c \
C:/StellarisWare/utils/softuart.c \
C:/StellarisWare/utils/uartstdio.c \
C:/StellarisWare/utils/ustdlib.c 

OBJS += \
./utils/cmdline.o \
./utils/cpu_usage.o \
./utils/crc.o \
./utils/flash_pb.o \
./utils/isqrt.o \
./utils/ringbuf.o \
./utils/scheduler.o \
./utils/sine.o \
./utils/softi2c.o \
./utils/softssi.o \
./utils/softuart.o \
./utils/uartstdio.o \
./utils/ustdlib.o 

C_DEPS += \
./utils/cmdline.d \
./utils/cpu_usage.d \
./utils/crc.d \
./utils/flash_pb.d \
./utils/isqrt.d \
./utils/ringbuf.d \
./utils/scheduler.d \
./utils/sine.d \
./utils/softi2c.d \
./utils/softssi.d \
./utils/softuart.d \
./utils/uartstdio.d \
./utils/ustdlib.d 


# Each subdirectory must supply rules for building sources it contributes
utils/cmdline.o: C:/StellarisWare/utils/cmdline.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

utils/cpu_usage.o: C:/StellarisWare/utils/cpu_usage.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

utils/crc.o: C:/StellarisWare/utils/crc.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

utils/flash_pb.o: C:/StellarisWare/utils/flash_pb.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

utils/isqrt.o: C:/StellarisWare/utils/isqrt.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

utils/ringbuf.o: C:/StellarisWare/utils/ringbuf.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

utils/scheduler.o: C:/StellarisWare/utils/scheduler.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

utils/sine.o: C:/StellarisWare/utils/sine.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

utils/softi2c.o: C:/StellarisWare/utils/softi2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

utils/softssi.o: C:/StellarisWare/utils/softssi.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

utils/softuart.o: C:/StellarisWare/utils/softuart.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

utils/uartstdio.o: C:/StellarisWare/utils/uartstdio.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

utils/ustdlib.o: C:/StellarisWare/utils/ustdlib.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM Sourcery Windows GCC C Compiler'
	arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\IQmath" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -O0 -ffunction-sections -Wall -Wa,-adhlns="$@.lst" -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



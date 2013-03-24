@echo off
arm-none-eabi-gcc -Dgcc -I"C:\StellarisWare" -I"C:\StellarisWare\driverlib" -I"C:\StellarisWare\inc" -I"C:\StellarisWare\utils" -I"C:\StellarisWare\IQmath" -O0 -ffunction-sections -Wall -Wa,-adhlns="main.o.lst" -c -fmessage-length=0 -MMD -MP -MF"main.d" -MT"main.d" -mcpu=cortex-m3 -mthumb -g3 -gdwarf-2 -o "main.o" "../main.c"

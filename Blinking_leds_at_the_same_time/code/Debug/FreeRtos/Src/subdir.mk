################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../FreeRtos/Src/PollQ.c \
../FreeRtos/Src/croutine.c \
../FreeRtos/Src/event_groups.c \
../FreeRtos/Src/heap_1.c \
../FreeRtos/Src/integer.c \
../FreeRtos/Src/list.c \
../FreeRtos/Src/port.c \
../FreeRtos/Src/queue.c \
../FreeRtos/Src/tasks.c 

OBJS += \
./FreeRtos/Src/PollQ.o \
./FreeRtos/Src/croutine.o \
./FreeRtos/Src/event_groups.o \
./FreeRtos/Src/heap_1.o \
./FreeRtos/Src/integer.o \
./FreeRtos/Src/list.o \
./FreeRtos/Src/port.o \
./FreeRtos/Src/queue.o \
./FreeRtos/Src/tasks.o 

C_DEPS += \
./FreeRtos/Src/PollQ.d \
./FreeRtos/Src/croutine.d \
./FreeRtos/Src/event_groups.d \
./FreeRtos/Src/heap_1.d \
./FreeRtos/Src/integer.d \
./FreeRtos/Src/list.d \
./FreeRtos/Src/port.d \
./FreeRtos/Src/queue.d \
./FreeRtos/Src/tasks.d 


# Each subdirectory must supply rules for building sources it contributes
FreeRtos/Src/%.o: ../FreeRtos/Src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"F:\courses\Embded systems\workspaces\interfacing with sara\RTOS_test_applications\FreeRtos\Inc" -I"F:\courses\Embded systems\workspaces\interfacing with sara\RTOS_test_applications\LIB" -I"F:\courses\Embded systems\workspaces\interfacing with sara\RTOS_test_applications\DIO" -Wall -g2 -gstabs -O0 -fpack-struct -fshort-enums -ffunction-sections -fdata-sections -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega32 -DF_CPU=8000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



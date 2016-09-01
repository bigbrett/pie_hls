################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../solution1/frameSIPO.cpp 

OBJS += \
./source/frameSIPO.o 

CPP_DEPS += \
./source/frameSIPO.d 


# Each subdirectory must supply rules for building sources it contributes
source/frameSIPO.o: /home/brett/workspace/Vivado_WS/pie_hls/solution1/frameSIPO.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -I/opt/Xilinx/Vivado_HLS/2016.2/include/ap_sysc -I/opt/Xilinx/Vivado_HLS/2016.2/include -I/opt/Xilinx/Vivado_HLS/2016.2/lnx64/tools/systemc/include -I/opt/Xilinx/Vivado_HLS/2016.2/include/etc -I/home/brett/workspace/Vivado_WS -I/opt/Xilinx/Vivado_HLS/2016.2/lnx64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '



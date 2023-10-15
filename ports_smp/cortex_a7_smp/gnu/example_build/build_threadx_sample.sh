arm-none-eabi-gcc -v -c -g -I../../../../common_smp/inc -I../inc -mcpu=cortex-a7 sample_threadx.c
arm-none-eabi-gcc -v -c -g -mcpu=cortex-a7 startup.S
arm-none-eabi-gcc -v -c -g -mcpu=cortex-a7 MP_GIC.S
arm-none-eabi-gcc -v -c -g -mcpu=cortex-a7 MP_Mutexes.S
arm-none-eabi-gcc -v -c -g -mcpu=cortex-a7 v7.S
arm-none-eabi-gcc -v -T sample_threadx.ld -e Vectors -o sample_threadx.axf MP_GIC.o MP_Mutexes.o sample_threadx.o startup.o v7.o tx.a -Wl,-M > sample_threadx.map

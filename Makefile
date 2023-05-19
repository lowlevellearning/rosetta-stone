default: all

all: powerpc arm aarch64

powerpc:
	powerpc-linux-gnu-gcc -o ppc rosetta.c -static
	powerpc-linux-gnu-objdump -d -Mintel ./ppc > ppc-dump

arm:
	arm-linux-gnueabi-gcc -o arm rosetta.c -static
	arm-linux-gnueabi-objdump -d -Mintel ./arm > arm-dump

aarch64:
	aarch64-linux-gnu-gcc -o aarch64 rosetta.c -static
	aarch64-linux-gnu-objdump -d -Mintel ./aarch64 > aarch64-dump

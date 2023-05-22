default: all

all: powerpc arm aarch64 riscv64

powerpc:
	powerpc-linux-gnu-gcc -o ppc rosetta.c -static
	powerpc-linux-gnu-objdump -d -Mintel ./ppc > ppc-dump

arm:
	arm-linux-gnueabi-gcc -o arm rosetta.c -static
	arm-linux-gnueabi-objdump -d -Mintel ./arm > arm-dump

aarch64:
	aarch64-linux-gnu-gcc -o aarch64 rosetta.c -static
	aarch64-linux-gnu-objdump -d -Mintel ./aarch64 > aarch64-dump

riscv64:
	riscv64-linux-gnu-gcc -o riscv64 rosetta.c -static
	riscv64-linux-gnu-objdump -d -Mintel ./riscv64 > riscv64-dump

clean:
	rm -f ppc
	rm -f ppc-dump
	rm -f arm
	rm -f arm-dump
	rm -f aarch64
	rm -f aarch64-dump
	rm -f riscv64
	rm -f riscv64-dump

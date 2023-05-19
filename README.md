# The ASM Rosetta Stone
This respository contains the ASM Rosetta Stone, a small snippet of C
that you can use to learn a new assembly variant in a short amount of 
time.

## Getting Started
To get started with studying assembly languages using Rosetta Stone, follow these steps:

1. **Clone the repository**: Open a terminal and run the following command to clone the repository to your local machine:

```
git clone https://github.com/lowlevellearning/rosetta-stone.git
```
2. **Install necessary packages**: Install the necessary packages on your system by running the following command:
```
./setup.sh
```
3. **Makefile usage**: You can use the Makefile to compile the rosetta.c file into executables for different architectures. Run the following command to compile the code for all supported architectures (powerpc, arm, aarch64):
```
make all
```
Alternatively, you can compile the code for individual architectures using the respective target names:
* **PowerPC:**
```
make powerpc
```
* **ARM**
```
make arm
```
* **AArch64**
```
make aarch64
```
The compiled executables will be named ppc (for powerpc), arm (for arm), and aarch64 (for aarch64).

## Checklist
- registers
	- names []
	- width []
- stack memory
	- how is it used []
	- prolouge, epilouge []
- calling conventions
	- arguments []
	- return value []
	- return address []
- control flow
	- branching []
	- conditional branches[]
	- calls []
- syscall interface []







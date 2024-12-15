RISCV_ASSEMBLER := riscv-none-elf-as
RISCV_LINKER := riscv-none-elf-ld
RISCV_CROSS_COMPILE := riscv-none-elf-gcc
AS := $(RISCV_ASSEMBLER)
CC := $(RISCV_CROSS_COMPILE)
LD := $(RISCV_LINKER)
GCC := g++

AS_FLAGS := -march=rv32ima_zicsr_zifencei_zba_zbb_zbs_zbkb_zca_zcb -mabi=ilp32

.PHONY: all

all: examples

.PHONY: examples
examples:
	make -C ./examples

clean:
	rm elf2uf2
	make -C ./examples clean

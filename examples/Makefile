RISCV_ASSEMBLER := riscv-none-elf-as
RISCV_LINKER := riscv-none-elf-ld
AS := $(RISCV_ASSEMBLER)
LD := $(RISCV_LINKER)

AS_FLAGS := -march=rv32ima_zicsr_zifencei_zba_zbb_zbs_zbkb_zca_zcb -mabi=ilp32

.PHONY: all
all: hello_world_qemu hello_world_pico

hello_world_qemu: hello_world.o
	$(LD) -T qemu.lds -o hello_world_qemu hello_world.o

hello_world_qemu.o: hello_world.s default.lds
	$(AS) $(AS_FLAGS) -o hello_world.o hello_world.s

hello_world_pico: hello_world.o
	$(LD) -T pico.lds -o hello_world_pico hello_world.o

hello_world_pico.o: hello_world.s default.lds
	$(AS) $(AS_FLAGS) -o hello_world.o hello_world.s

clean:
	rm *.o
	rm hello_world

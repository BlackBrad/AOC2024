OUTPUT_ARCH( "riscv" )

ENTRY( _start )

MEMORY
{
  dram_space   (rwx) : ORIGIN = 0x80000000, LENGTH = 128M
}

SECTIONS {
  .text : {
    hello_world.o(.text.bios)
  } > dram_space
}

UART = 0x40070000;

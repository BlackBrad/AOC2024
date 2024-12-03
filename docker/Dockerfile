FROM alpine:3.20.3

RUN apk update
RUN apk upgrade
RUN apk add build-base
RUN apk add make
RUN apk add cmake
# RISC-V stuff for Pico2
RUN apk add binutils-riscv-none-elf
RUN apk add gcc-riscv-none-elf
RUN apk add newlib-riscv-none-elf
RUN apk add picolibc-riscv-none-elf
RUN apk add qemu-system-riscv32
RUN apk add qemu-system-riscv64
# ARM stuff for KB2040
RUN apk add binutils-arm-none-eabi
RUN apk add gcc-arm-none-eabi
RUN apk add newlib-arm-none-eabi
RUN apk add picolibc-arm-none-eabi
RUN apk add gcc-arm-none-eabi
RUN apk add qemu-system-arm
RUN apk add qemu-system-aarch64

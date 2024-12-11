.global _start

.section: .text

_start:
	li t0, 0x10000000
	la t1, helloworld

loop:
	lb t2, (t1)
	sb t2, (t0)
	addi t1, t1, 1
	bne t2, zero, loop
	j _start

.section .data
helloworld: .ascii "hello world"

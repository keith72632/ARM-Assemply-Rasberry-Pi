.global _start

_start:
	mov r1, #0x14
	mov r2, #0xA
	mov r3, #0xD
	mla r0, r1, r2, r3 @sub and and can be done in one line. multiply needs each number stored in register
	mov r7, #1
swi 0

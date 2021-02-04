.global _start
_start:
	mov r1, #9 @1001
	mov r2, #9 @1000
	tst r1, r2@uses and operator to test if bits are set
	beq _bit_set
	mov r0, #1
	b end
_bit_set:
	mov r0, #0
	b end
end:
	mov r7, #1
	swi 0

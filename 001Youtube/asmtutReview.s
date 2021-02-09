.global _start
_start:
	@stack
	mov r1, #5
	mov r2, #6

	stmdb sp!, {r1, r2}
	mov r1, #2
	mov r2, #3
	add r0, r1, r2

	ldmia sp!, {r1, r2}
	add r0, r1, r2

end:
	mov r7, #1
	swi 0

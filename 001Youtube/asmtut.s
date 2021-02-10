.global _start
_start:
	stmdb sp!, {r3-r5}
	mov r3, #3
	mov r4, #4
	mov r5, #5

	ldmia sp!, {r3-r5}
	add r0, r3, r4
	add r0, r0, r5
	mov r7, #1
	swi 0

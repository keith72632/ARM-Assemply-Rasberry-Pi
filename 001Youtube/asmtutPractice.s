.data
.balign 4
array:
	.word 1
	.word 2
	.word 3
	.word 4

.global _start
_start:
	ldr r1, =array
	stmdb sp!, {r3-r7}
	ldr r3, [r1, #0]
	ldr r4, [r1, #4]
	ldr r5, [r1, #8]
	ldr r6, [r1, #12]
	ldr r7, [r1, #16]

	ldmia sp!, {r3, r7}
	add r0, r3, r4
	add r0, r0, r5
	add r0, r0, r6
	add r0, r0, r7
	mov r7, #1
	swi 0

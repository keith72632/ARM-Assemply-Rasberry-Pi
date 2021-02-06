.data
.balign 4
five: .word 0
.balign 4
eight: .word 0

.global _start
_start:
	ldr r1, _five
	mov r3, #10
	str r3, [r1]	
	ldr r2, _eight
	mov r3, #5
	str r3, [r2]

	ldr r1, _five
	ldr r1, [r1]
	ldr r2, _eight
	ldr r2, [r2]

	add r0, r1, r2
	mov r4, #10
	cmp r0, r4
	blt end
	beq  _less
	mov r0, #6
_less:
	mov r0, #22

end:
	mov r7, #1
	swi 0

_five: .word five
_eight: .word eight

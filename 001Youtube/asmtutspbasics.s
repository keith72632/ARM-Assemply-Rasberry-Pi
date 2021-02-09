.global _start
_start:
	mov r1, #1
	mov r2, #2

	@store value of #1 (r1) in stack pointer, then descend 4 bytes within memory. ! right back updates regisert for another push onto stack
	str r1, [sp, #-4]!
	str r2, [sp, #-4]!
	
	@unlodaing first value in stack pointer
	ldr r0, [sp], #+4
	ldr r0, [sp], #+4
	@ stores values from top of stack. Loads values from bottom up

end:
	mov r7, #1
	swi 0


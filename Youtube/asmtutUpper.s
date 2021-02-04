.global _start

_start:
	mov r7, #3 @keyboard input
	mov r0, #0 @input stream is keyboard
	mov r2, #1 @read one character
	ldr r1, =character
	swi 0
_uppercase:
	ldr r1, =character
	ldr r0, [r1]

	@a : 0110 0001
	@bic:0010 0000
	@A : 0100 0001
	bic r0, r0, #32

	str r0, [r1]
_write:
	mov r7, #4 @output to screen
	mov r0, #1 @output to monito
	mov r2, #1 @number of characters
	ldr r1, =character
	swi 0
end: 
	mov r7, #1
	swi 0

.data
character:
	.ascii " "

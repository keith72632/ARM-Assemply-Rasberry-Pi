@ldrb load array of bytes. data should be in .byte format
.text
.global _start
_start:
	ldr r3, =numbers
	@ldrb r0, [r3]
	@ldrb r0, [r3, #1]
	ldrb r0, [r3, #4] 

end: 
	mov r7, #1
	swi 0

.data
numbers:
	.byte 1, 2, 3, 4, 5

.data
.balign 4
five: .word 0
.balign 4
eight: .word 0

.global _start
_start:
	mov r7, #3:

end:
	mov r7, #1
	swi 0

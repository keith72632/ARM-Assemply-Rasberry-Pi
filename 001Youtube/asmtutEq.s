.global _start
_start:
	mov r0, #two
	mov r7, #1
	swi 0

.data
.equ two, 2

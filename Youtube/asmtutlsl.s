.global _start
_start:
	mov r1, #20
	mov r0, r1, lsl #1
end:
	mov r7, #1
	swi 0

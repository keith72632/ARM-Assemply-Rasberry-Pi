.text
.global _start

_start:
	
	mov r1, #10
	mov r2, #4
	mov r3, #40
	mul r4, r1, r2
	cmp r4, r3
	beq vals_equl
	bgt r1_gt

r1_lt:
	mov r0, #1
	b      end
vals_equl:
	mov r0, #2
	b      end
r1_gt:
	mov r0, #3
end:
	mov r7, #1
	swi 0

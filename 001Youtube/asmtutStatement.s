.data
.balign 4
statement: .asciz "hello world\n"

.balign 4
lr_bu: .word 0

.text
.global main
main:
	ldr r1, addr_lr_bu
	str lr, [r1]

	ldr r0, addr_statement
	bl printf

	ldr lr, addr_lr_bu
	ldr lr, [lr]
	bx lr

addr_statement: .word statement
addr_lr_bu: .word lr_bu

.global printf

end:
	mov r7, #1
	swi 0 

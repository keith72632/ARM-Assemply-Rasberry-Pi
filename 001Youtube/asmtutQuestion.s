.data
.balign 4
@asciz adds zero byte at the end of the string
question: .asciz "whats is you favorite number?"

.balign 4
message: .asciz "%d is a great number\n"

.balign 4
pattern: .asciz "%d"

.balign 4
number: .word 0

.balign 4
lr_bu: .word 0
@link pointer backup

.text
.global main

main:
	@every function will involve storing link register. r0, r1, r2, and r3 are used to pass arguments to functions
	ldr r1, addr_lr_bu
	str lr, [r1]
	
	ldr r0, addr_question
	bl printf
	
	ldr r0, addr_pattern
	ldr r1, addr_number
	bl scanf

	ldr r0, addr_message
	ldr r1, addr_number
	ldr r1, [r1]
	bl printf
		

	ldr lr, addr_lr_bu 
	ldr lr, [lr]
	@think of bx like return
	bx lr


addr_question: .word question
addr_message: .word message
addr_pattern: .word pattern
addr_number: .word number
addr_lr_bu: .word lr_bu

.global printf
.global scanf

end:
	mov r7, #1
	swi 0


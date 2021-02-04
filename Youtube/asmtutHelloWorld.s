.global _start

_start:
	mov r7, #3 @4 is system call that writes info to screen, 3 is user input 
	mov r0, #0 @1 is output stream monitor, 0 is keyboard input stream 
	mov r2, #10 @length of string
	ldr r1, =message
SWI 0

_write:
	
	mov r7, #4 @4 is system call that writes info to screen, 3 is user input 
	mov r0, #1 @1 is output stream monitor, 0 is keyboard input stream 
	mov r2, #5 @length of string
	ldr r1, =message
	swi 0 

end:
	mov r7, #1
	swi 0

.data

message:
	.ascii " "

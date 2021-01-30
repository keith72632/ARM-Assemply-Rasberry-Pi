		.global main 
main:
//Assign A memory to regisetr 0. Move the number 5 to register 1. then value of register 1 to register 0
	LDR	R0, =A
	MOV	R1, #5
	STR	R1, [R0]
	
	LDR	R1, =D
	MOV 	R1, #4
	STR	R1, [R0]
	
	LDR	R0, =C
	MOV 	R1, #200
	STR	R1, [R0]

//terminates prgram and moves ccore back to operating system
	MOV R7, #1
	SVC 0


	.data
//allocate 4 bytes of memory to A, D and C
A:	.space		4
D:	.space		4
C:	.space		4
	.align
	.end

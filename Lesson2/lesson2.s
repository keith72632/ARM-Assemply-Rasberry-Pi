	.global _start

_start:
	MOV R0, #1
	MOV R1, #2
	MOV R2, #3
	MOV R3, #4
	MOV R4, #5
	MOV R7, #1

	SWI 0

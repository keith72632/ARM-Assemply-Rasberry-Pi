	.global _start
_start:
	MOV r0, #4
	MOV r1, #6
	ADD r0, r1
	MOV r7, #1

	SWI 0

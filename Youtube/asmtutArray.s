.data
primes:
	@words are four bytes long, so each value is indexed in increments of 4
	.word 2
	.word 3
	.word 5
	.word 7
.text
.global _start
_start:
	ldr r3, =primes
	@ldr r0, [r3] first number in array
	@ldr r0, [r3, #4]
	ldr r0, [r3, #12]
end:
	mov r7, #1
	swi 0


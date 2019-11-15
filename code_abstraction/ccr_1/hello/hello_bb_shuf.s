	.section	.text
	hlt	
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x4005c0

	.globl main
	.type main, @function
main:
	push	rax
	mov	edi, OFFSET FLAT:label_8
	mov	esi, OFFSET FLAT:label_9
	xor	eax, eax
	call	printf
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]

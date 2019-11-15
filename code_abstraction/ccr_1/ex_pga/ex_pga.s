	.section	.text
	.align	32
	#Procedure 0x4005c0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rdi, OFFSET FLAT:label_8
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], 0xa
	mov	dword ptr [rbp - 0xc], 0xb
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0xc]
	mov	al, 0
	call	printf
	lea	rdi, [rbp - 0x40]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	dword ptr [rdi], 0xe
	mov	rdi, qword ptr [rbp - 0x18]
	mov	dword ptr [rdi + 4], 0xf
	mov	rdi, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x44], eax
	call	foo
	xor	edx, edx
	mov	qword ptr [rbp - 0x50], rax
	mov	eax, edx
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x400630

	.globl foo
	.type foo, @function
foo:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rdi], 0xd
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rdi + 4], 0xc
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	

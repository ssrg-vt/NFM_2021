	.section	.text
	.align	32
	#Procedure 0x4004e9
	.globl sub_4004e9
	.type sub_4004e9, @function
sub_4004e9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4004ea
	.globl sub_4004ea
	.type sub_4004ea, @function
sub_4004ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x400522
	.globl sub_400522
	.type sub_400522, @function
sub_400522:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40056a
	.globl sub_40056a
	.type sub_40056a, @function
sub_40056a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40058c
	.globl sub_40058c
	.type sub_40058c, @function
sub_40058c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40059d
	.globl sub_40059d
	.type sub_40059d, @function
sub_40059d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4005b6
	.globl sub_4005b6
	.type sub_4005b6, @function
sub_4005b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4005c0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdi, OFFSET FLAT:label_8
	movabs	rax, OFFSET FLAT:label_9
	mov	dword ptr [rbp - 4], 0
	mov	qword ptr [rbp - 0x10], rax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, 0
	call	printf
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x14], eax
	mov	eax, ecx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4005ff
	.globl sub_4005ff
	.type sub_4005ff, @function
sub_4005ff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x400665
	.globl sub_400665
	.type sub_400665, @function
sub_400665:

	nop	
	nop	word ptr cs:[rax + rax]

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
	#Procedure 0x40062b
	.globl sub_40062b
	.type sub_40062b, @function
sub_40062b:

	nop	dword ptr [rax + rax]
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
	.section	.text
	.align	32
	#Procedure 0x400653
	.globl sub_400653
	.type sub_400653, @function
sub_400653:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4006c5
	.globl sub_4006c5
	.type sub_4006c5, @function
sub_4006c5:

	nop	
	nop	word ptr cs:[rax + rax]

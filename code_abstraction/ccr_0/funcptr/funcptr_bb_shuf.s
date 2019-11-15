	.section	.text
	.align	32
	#Procedure 0x400529
	.globl sub_400529
	.type sub_400529, @function
sub_400529:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40052a
	.globl sub_40052a
	.type sub_40052a, @function
sub_40052a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x400562
	.globl sub_400562
	.type sub_400562, @function
sub_400562:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4005aa
	.globl sub_4005aa
	.type sub_4005aa, @function
sub_4005aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4005cc
	.globl sub_4005cc
	.type sub_4005cc, @function
sub_4005cc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4005dd
	.globl sub_4005dd
	.type sub_4005dd, @function
sub_4005dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4005f6
	.globl sub_4005f6
	.type sub_4005f6, @function
sub_4005f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x400600

	.globl f1
	.type f1, @function
f1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_8
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x400622
	.globl sub_400622
	.type sub_400622, @function
sub_400622:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x400630

	.globl success
	.type success, @function
success:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_9
	movabs	rsi, OFFSET FLAT:label_10
	mov	dword ptr [rbp - 4], edi
	mov	edx, dword ptr [rbp - 4]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 8], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x400665
	.globl sub_400665
	.type sub_400665, @function
sub_400665:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x400670

	.globl f2
	.type f2, @function
f2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_11
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x400692
	.globl sub_400692
	.type sub_400692, @function
sub_400692:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4006a0

	.globl guest
	.type guest, @function
guest:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_9
	movabs	rsi, OFFSET FLAT:label_12
	mov	dword ptr [rbp - 4], edi
	mov	edx, dword ptr [rbp - 4]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 8], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4006d5
	.globl sub_4006d5
	.type sub_4006d5, @function
sub_4006d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4006e0

	.globl sub_4006e0
	.type sub_4006e0, @function
sub_4006e0:
	call	f1
	jmp	.label_13
	.section	.text
	.align	32
	#Procedure 0x4006ea

	.globl sub_4006ea
	.type sub_4006ea, @function
sub_4006ea:
	call	f2
	jmp	.label_13
	.section	.text
	.align	32
	#Procedure 0x4006f4

	.globl sub_4006f4
	.type sub_4006f4, @function
sub_4006f4:
	call	f2
	jmp	.label_13
	.section	.text
	.align	32
	#Procedure 0x4006fe

	.globl sub_4006fe
	.type sub_4006fe, @function
sub_4006fe:
	call	f1
	jmp	.label_13
	.section	.text
	.align	32
	#Procedure 0x400708

	.globl sub_400708
	.type sub_400708, @function
sub_400708:
	call	f1
	jmp	.label_13
	.section	.text
	.align	32
	#Procedure 0x400712

	.globl sub_400712
	.type sub_400712, @function
sub_400712:
	call	f1
	jmp	.label_13
	.section	.text
	.align	32
	#Procedure 0x40071c

	.globl sub_40071c
	.type sub_40071c, @function
sub_40071c:
	call	f2
	jmp	.label_13
.label_15:
	call	f3
.label_13:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x400731
	.globl sub_400731
	.type sub_400731, @function
sub_400731:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40073f

	.globl sub_40073f
	.type sub_40073f, @function
sub_40073f:
	call	f2
	jmp	.label_13
	.section	.text
	.align	32
	#Procedure 0x400749

	.globl switchcase
	.type switchcase, @function
switchcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	dec	edi
	mov	eax, edi
	sub	edi, 0x11
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_15
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_14]]
	jmp	rcx
	.section	.text
	.align	32
	#Procedure 0x400776

	.globl sub_400776
	.type sub_400776, @function
sub_400776:
	call	f1
	jmp	.label_13
	.section	.text
	.align	32
	#Procedure 0x400780

	.globl eastegg
	.type eastegg, @function
eastegg:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_9
	movabs	rsi, OFFSET FLAT:label_16
	mov	dword ptr [rbp - 4], edi
	mov	edx, dword ptr [rbp - 4]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 8], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4007b5
	.globl sub_4007b5
	.type sub_4007b5, @function
sub_4007b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4007c0

	.globl fail
	.type fail, @function
fail:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_9
	movabs	rsi, OFFSET FLAT:label_17
	mov	dword ptr [rbp - 4], edi
	mov	edx, dword ptr [rbp - 4]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 8], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4007f5
	.globl sub_4007f5
	.type sub_4007f5, @function
sub_4007f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x400800

	.globl f3
	.type f3, @function
f3:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_18
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x400822
	.globl sub_400822
	.type sub_400822, @function
sub_400822:

	nop	word ptr cs:[rax + rax]
.label_22:
	jmp	.label_19
.label_19:
	mov	dword ptr [rbp - 4], 0
.label_21:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x400845
	.globl sub_400845
	.type sub_400845, @function
sub_400845:

	nop	dword ptr [rax]
.label_26:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	al, 0
	call	atoi
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_23
	cmp	dword ptr [rbp - 0x14], 4
	jge	.label_23
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rax,  qword ptr [word ptr [+ (rax * 8) + gate]]
	mov	edi, dword ptr [rbp - 0x14]
	call	rax
	jmp	.label_19
	.section	.text
	.align	32
	#Procedure 0x400888

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	dword ptr [rbp - 8], 2
	jl	.label_25
	cmp	dword ptr [rbp - 8], 2
	jle	.label_26
.label_25:
	movabs	rdi, OFFSET FLAT:label_27
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_21
.label_23:
	cmp	dword ptr [rbp - 0x14], 4
	jne	.label_24
	mov	edi, dword ptr [rbp - 0x14]
	call	switchcase
	jmp	.label_22
.label_24:
	movabs	rdi, OFFSET FLAT:label_20
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_21
	.section	.text
	.align	32
	#Procedure 0x400975
	.globl sub_400975
	.type sub_400975, @function
sub_400975:

	nop	
	nop	word ptr cs:[rax + rax]

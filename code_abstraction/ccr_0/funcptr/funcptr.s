	.section	.text
	.align	32
	#Procedure 0x400620

	.globl success
	.type success, @function
success:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_8
	movabs	rsi, OFFSET FLAT:label_9
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
	#Procedure 0x400660

	.globl fail
	.type fail, @function
fail:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_8
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
	#Procedure 0x4006a0

	.globl eastegg
	.type eastegg, @function
eastegg:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_8
	movabs	rsi, OFFSET FLAT:label_11
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
	#Procedure 0x4006e0

	.globl guest
	.type guest, @function
guest:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, OFFSET FLAT:label_8
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
	#Procedure 0x400720

	.globl f1
	.type f1, @function
f1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_13
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x400750

	.globl f2
	.type f2, @function
f2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_14
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x400780

	.globl f3
	.type f3, @function
f3:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_15
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4007b0

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
	jl	.label_20
	cmp	dword ptr [rbp - 8], 2
	jle	.label_16
.label_20:
	movabs	rdi, OFFSET FLAT:label_22
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_17
.label_16:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	al, 0
	call	atoi
	mov	dword ptr [rbp - 0x14], eax
	cmp	dword ptr [rbp - 0x14], 0
	jl	.label_18
	cmp	dword ptr [rbp - 0x14], 4
	jge	.label_18
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rax,  qword ptr [word ptr [+ (rax * 8) + gate]]
	mov	edi, dword ptr [rbp - 0x14]
	call	rax
	jmp	.label_19
.label_18:
	cmp	dword ptr [rbp - 0x14], 4
	jne	.label_24
	mov	edi, dword ptr [rbp - 0x14]
	call	switchcase
	jmp	.label_23
.label_24:
	movabs	rdi, OFFSET FLAT:label_21
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_17
.label_23:
	jmp	.label_19
.label_19:
	mov	dword ptr [rbp - 4], 0
.label_17:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x400890

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
	ja	.label_26
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_27]]
	jmp	rcx
.label_42:
	call	f1
	jmp	.label_25
.label_43:
	call	f2
	jmp	.label_25
.label_44:
	call	f1
	jmp	.label_25
.label_45:
	call	f2
	jmp	.label_25
.label_46:
	call	f1
	jmp	.label_25
.label_47:
	call	f2
	jmp	.label_25
.label_48:
	call	f2
	jmp	.label_25
.label_49:
	call	f1
	jmp	.label_25
.label_50:
	call	f1
	jmp	.label_25
.label_26:
	call	f3
.label_25:
	add	rsp, 0x20
	pop	rbp
	ret	

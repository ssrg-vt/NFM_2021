	.section	.text
	.align	16
	#Procedure 0x400530

	.globl VLA_test
	.type VLA_test, @function
VLA_test:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:.str
	mov	dword ptr [rbp - 4], edi
	imul	edi, edi, 0x64
	mov	ecx, edi
	mov	rdx, rspsc
	mov	qword ptr [rbp - 0x10], rdx
	add	rcx, 0xf
	movabs	rdx, 0x1fffffff0
	and	rcx, rdx
	mov	rsi, rsp
	sub	rsi, rcx
	mov	rsp, rsi
	mov	edi, dword ptr [rbp - 4]
	add	edi, edi
	mov	ecx, edi
	lea	edi, [rcx + rcx*4]
	mov	ecx, edi
	add	rcx, 0xf
	and	rcx, rdx
	mov	rdx, rsp
	sub	rdx, rcx
	mov	rsp, rdx
	mov	byte ptr [rsi + 0x12b], 0x62
	mov	byte ptr [rdx], 0x61
	movsx	esi, byte ptr [rsi + 0x12b]
	movsx	edx, byte ptr [rdx]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rcx
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rbp
	pop	rbp
	ret
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4005c0

	.globl alloca_test
	.type alloca_test, @function
alloca_test:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, OFFSET FLAT:.str.1
	mov	dword ptr [rbp - 4], edi
	imul	edi, edi, 0x64
	movsxd	rcx, edi
	add	rcx, 0xf
	and	rcx, 0xfffffffffffffff0
	mov	rdx, rsp
	sub	rdx, rcx
	mov	rsp, rdx
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 4]
	add	edi, edi
	mov	ecx, edi
	lea	edi, [rcx + rcx*4]
	movsxd	rcx, edi
	add	rcx, 0xf
	and	rcx, 0xfffffffffffffff0
	mov	rdx, rsp
	sub	rdx, rcx
	mov	rsp, rdx
	mov	qword ptr [rbp - 0x18], rdx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + 0x12b], 0x61
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx], 0x62
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rcx + 0x12b]
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsp, rbp
	pop	rbp
	ret
	nop	dword ptr [rax + rax]
	.section .text
	.align	16
	#Procedure 0x400650

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 3
	mov	dword ptr [rbp - 4], 0
	call	VLA_test
	mov	edi, 3
	call	alloca_test
	xor	eax, eax
	add	rsp, 0x10
	pop	rbp
	ret
	nop	dword ptr [rax + rax]
	nop
	nop	word ptr cs:[rax + rax]

	.section	.text
	.align	32
	#Procedure 0x4016e9
	.globl sub_4016e9
	.type sub_4016e9, @function
sub_4016e9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4016ea
	.globl sub_4016ea
	.type sub_4016ea, @function
sub_4016ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401722
	.globl sub_401722
	.type sub_401722, @function
sub_401722:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40176a
	.globl sub_40176a
	.type sub_40176a, @function
sub_40176a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40178c
	.globl sub_40178c
	.type sub_40178c, @function
sub_40178c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40179d
	.globl sub_40179d
	.type sub_40179d, @function
sub_40179d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4017b6
	.globl sub_4017b6
	.type sub_4017b6, @function
sub_4017b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017c0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_9
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_11
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_11
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_14
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_14:
	mov	rbx, r14
.label_11:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_9:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_10
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401861
	.globl sub_401861
	.type sub_401861, @function
sub_401861:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401870
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_16:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_15
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_16
.label_15:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401896
	.globl sub_401896
	.type sub_401896, @function
sub_401896:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_18
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4018d0

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdi
	mov	rcx, qword ptr [r12]
	mov	r14, qword ptr [r12 + 0x18]
	sub	r14, qword ptr [r12 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r12 + 0x30]
	setb	al
	mov	rbx, r14
	shr	rbx, 3
	add	rbx, 0x64
	add	rbx, rdx
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	add	rsi, r14
	jb	.label_20
	test	al, al
	jne	.label_20
	mov	r15, qword ptr [r12 + 8]
	test	byte ptr [r12 + 0x50], 1
	jne	.label_19
	mov	rdi, rbx
	call	qword ptr [r12 + 0x38]
	jmp	.label_23
.label_19:
	mov	rdi, qword ptr [r12 + 0x48]
	mov	rsi, rbx
	call	qword ptr [r12 + 0x38]
.label_23:
	mov	r13, rax
	test	r13, r13
	je	.label_20
	mov	qword ptr [r12 + 8], r13
	mov	qword ptr [r13 + 8], r15
	add	rbx, r13
	mov	qword ptr [r12 + 0x20], rbx
	mov	qword ptr [r13], rbx
	mov	rsi, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [r12 + 0x30]
	lea	rbx, [rbp + r13 + 0x10]
	mov	qword ptr [rsp + 8], r15
	mov	r15, rbp
	not	r15
	and	rbx, r15
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, r14
	call	memcpy
	test	byte ptr [r12 + 0x50], 2
	jne	.label_22
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rbp + rax + 0x10]
	and	rax, r15
	cmp	qword ptr [rsp + 0x10], rax
	jne	.label_22
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, rax
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r12 + 0x50], 1
	mov	rsi, rcx
	jne	.label_21
	mov	rdi, rsi
	call	qword ptr [r12 + 0x40]
	jmp	.label_22
.label_21:
	mov	rdi, qword ptr [r12 + 0x48]
	call	qword ptr [r12 + 0x40]
.label_22:
	mov	qword ptr [r12 + 0x10], rbx
	add	r14, rbx
	mov	qword ptr [r12 + 0x18], r14
	and	byte ptr [r12 + 0x50], 0xfd
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_20:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr [rax + rax]
.label_26:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401a15
	.globl sub_401a15
	.type sub_401a15, @function
sub_401a15:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a1d
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_26
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_25
	test	rbx, rbx
	jne	.label_25
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_25:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_24
	test	rax, rax
	je	.label_26
.label_24:
	pop	rbx
	ret	
.label_27:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401a65
	.globl sub_401a65
	.type sub_401a65, @function
sub_401a65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a6f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_27
	call	rpl_calloc
	test	rax, rax
	je	.label_27
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a90
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_28:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_28
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x401ab1
	.globl sub_401ab1
	.type sub_401ab1, @function
sub_401ab1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ac0
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	eax, ecx
	shr	al, 5
	movzx	r8d, al
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	edi, r9d
	shr	edi, cl
	mov	eax, edi
	and	eax, 1
	xor	edi, edx
	and	edi, 1
	shl	edi, cl
	xor	edi, r9d
	mov	dword ptr [rsi + r8*4 + 8], edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401af6
	.globl sub_401af6
	.type sub_401af6, @function
sub_401af6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b00
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_29
	test	rax, rax
	je	.label_30
.label_29:
	pop	rbx
	ret	
.label_30:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401b1a
	.globl sub_401b1a
	.type sub_401b1a, @function
sub_401b1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b20
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b33
	.globl sub_401b33
	.type sub_401b33, @function
sub_401b33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b40

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_32
	test	rbx, rbx
	je	.label_32
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_32
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_32
	mov	edi, OFFSET FLAT:label_31
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_33
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_32
.label_33:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_32:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401bd4
	.globl sub_401bd4
	.type sub_401bd4, @function
sub_401bd4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401be0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_34
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_36:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_36
.label_34:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_37
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_38], OFFSET FLAT:slot0
.label_37:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_35
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_35:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c71
	.globl sub_401c71
	.type sub_401c71, @function
sub_401c71:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c80

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401c99
	.globl sub_401c99
	.type sub_401c99, @function
sub_401c99:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401ca0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_39]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_40]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_41]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x401cf4
	.globl sub_401cf4
	.type sub_401cf4, @function
sub_401cf4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d00

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	rbx, rbx
	je	.label_42
	test	r15, r15
	je	.label_43
.label_42:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_43:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401d3c
	.globl sub_401d3c
	.type sub_401d3c, @function
sub_401d3c:

	nop	dword ptr [rax]
.label_45:
	xor	eax, eax
.label_46:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d43
	.globl sub_401d43
	.type sub_401d43, @function
sub_401d43:

	nop	dword ptr [rax]
.label_44:
	mov	rcx, qword ptr [rcx + 8]
.label_47:
	test	rcx, rcx
	je	.label_45
	cmp	rcx, rsi
	jae	.label_44
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_44
	jmp	.label_46
	.section	.text
	.align	32
	#Procedure 0x401d60

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	mov	rcx, qword ptr [rdi + 8]
	jmp	.label_47
	.section	.text
	.align	32
	#Procedure 0x401d66
	.globl sub_401d66
	.type sub_401d66, @function
sub_401d66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d70

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_48
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_48:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x20
	lea	r8, [rsp]
	call	version_etc_va
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x401df3
	.globl sub_401df3
	.type sub_401df3, @function
sub_401df3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e00

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_50
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_49
	cmp	dword ptr [rbp], 0x20
	jne	.label_49
.label_50:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_53
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_53:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_51:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_52
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_49:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_51
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_18
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x401ec0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	je	.label_56
	test	r14, r14
	je	.label_55
.label_56:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_55:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401ef6
	.globl sub_401ef6
	.type sub_401ef6, @function
sub_401ef6:

	nop	word ptr cs:[rax + rax]
.label_58:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_57
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_57:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401f34
	.globl sub_401f34
	.type sub_401f34, @function
sub_401f34:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401f36

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_59
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_59
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_58
.label_59:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x401f70

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_60:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_60
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_64
	.section	.text
	.align	32
	#Procedure 0x401f93
	.globl sub_401f93
	.type sub_401f93, @function
sub_401f93:

	nop	word ptr cs:[rax + rax]
.label_63:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_64:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_63
	test	dl, dl
	je	.label_62
	mov	ecx, esi
	and	cl, 1
	je	.label_61
	xor	esi, esi
.label_61:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_63
.label_62:
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401fcc
	.globl sub_401fcc
	.type sub_401fcc, @function
sub_401fcc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401fd0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_65
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_66
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ff5
	.globl sub_401ff5
	.type sub_401ff5, @function
sub_401ff5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402000
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40200a
	.globl sub_40200a
	.type sub_40200a, @function
sub_40200a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402010

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rcx, qword ptr [rdi + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_67
	xor	eax, eax
	nop	dword ptr [rax]
.label_68:
	sub	rax, rcx
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_68
.label_67:
	ret	
	.section	.text
	.align	32
	#Procedure 0x402030

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_69
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_71
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_69
.label_71:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_69
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_70
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_70:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_69:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x4020a4
	.globl sub_4020a4
	.type sub_4020a4, @function
sub_4020a4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020b0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4020c8
	.globl sub_4020c8
	.type sub_4020c8, @function
sub_4020c8:

	nop	dword ptr [rax + rax]
.label_72:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4020d5
	.globl sub_4020d5
	.type sub_4020d5, @function
sub_4020d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020e3

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_72
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4020f0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_74
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_77
	mov	ecx, OFFSET FLAT:label_78
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x402164
	.globl sub_402164
	.type sub_402164, @function
sub_402164:

	nop	word ptr cs:[rax + rax]
.label_79:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402175
	.globl sub_402175
	.type sub_402175, @function
sub_402175:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40217b

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_80
	test	rax, rax
	je	.label_79
.label_80:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402190
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 8], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	xor	ebp, ebp
	test	rbx, rbx
	sete	bpl
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	test	rax, rax
	mov	ecx, dword ptr [rsp + 4]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_81
	mov	qword ptr [rax], rbx
.label_81:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40227c
	.globl sub_40227c
	.type sub_40227c, @function
sub_40227c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402280
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_82
	test	rdx, rdx
	je	.label_82
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_82:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4022ab
	.globl sub_4022ab
	.type sub_4022ab, @function
sub_4022ab:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022b0

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_83
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, dword ptr [rip + exit_failure]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4022eb
	.globl sub_4022eb
	.type sub_4022eb, @function
sub_4022eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_84
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_84
	test	byte ptr [rbx + 1], 1
	je	.label_84
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_84:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x402323
	.globl sub_402323
	.type sub_402323, @function
sub_402323:

	nop	word ptr cs:[rax + rax]
.label_85:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402335
	.globl sub_402335
	.type sub_402335, @function
sub_402335:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402339
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_85
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023a0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4023aa
	.globl sub_4023aa
	.type sub_4023aa, @function
sub_4023aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023b0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_39]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_40]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_41]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x402405
	.globl sub_402405
	.type sub_402405, @function
sub_402405:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402410
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 4], eax
	mov	r8, qword ptr [rbp]
	mov	r9, r8
	shr	r9, 0x20
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	push	qword ptr [rbp + 0x30]
	push	qword ptr [rbp + 0x28]
	lea	rax, [rbp + 8]
	push	rax
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rbx], ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402485
	.globl sub_402485
	.type sub_402485, @function
sub_402485:

	nop	word ptr cs:[rax + rax]
.label_86:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402495
	.globl sub_402495
	.type sub_402495, @function
sub_402495:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024a3
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	call	malloc
	mov	r15, rax
	inc	rbx
	je	.label_87
	test	r15, r15
	je	.label_86
.label_87:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024e0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rbx
	mov	r12, rdi
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r12
	mov	rcx, rbx
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	eax, dword ptr [rsp + 4]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025a1
	.globl sub_4025a1
	.type sub_4025a1, @function
sub_4025a1:

	nop	word ptr cs:[rax + rax]
.label_88:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025bc

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	qword ptr [rbx + 0x38], rcx
	mov	qword ptr [rbx + 0x40], r8
	mov	qword ptr [rbx + 0x48], r9
	or	byte ptr [rbx + 0x50], 1
	test	rdx, rdx
	mov	r14d, 0x10
	cmovne	r14, rdx
	test	rsi, rsi
	mov	eax, 0xfe0
	cmovne	rax, rsi
	mov	qword ptr [rbx], rax
	lea	r15, [r14 - 1]
	mov	qword ptr [rbx + 0x30], r15
	mov	rdi, r9
	mov	rsi, rax
	call	rcx
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_88
	lea	rcx, [rax + r15 + 0x10]
	neg	r14
	and	r14, rcx
	mov	qword ptr [rbx + 0x10], r14
	mov	qword ptr [rbx + 0x18], r14
	mov	rcx, qword ptr [rbx]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [rbx + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402640

	.globl dc_parse_stream
	.type dc_parse_stream, @function
dc_parse_stream:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x20], rsi
	mov	r15, rdi
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 0x30], 0
	mov	edi, OFFSET FLAT:label_110
	call	getenv
	test	rax, rax
	je	.label_123
	cmp	byte ptr [rax], 0
	jne	.label_125
.label_123:
	mov	eax, OFFSET FLAT:label_126
.label_125:
	mov	qword ptr [rsp + 0x38], rax
	mov	r12d, OFFSET FLAT:G_line
	mov	al, 1
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 3
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	mov	ebp, OFFSET FLAT:label_120
	lea	rbx, [rsp]
	jmp	.label_127
	.section	.text
	.align	32
	#Procedure 0x4026aa
	.globl sub_4026aa
	.type sub_4026aa, @function
sub_4026aa:

	nop	word ptr [rax + rax]
.label_137:
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	r14, rdx
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x20]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	ebp, OFFSET FLAT:label_120
	mov	r8, r13
	call	error
	mov	rdi, r14
	call	free
.label_127:
	test	r15, r15
	je	.label_89
	mov	edx, 0xa
	mov	rdi, rbx
	lea	rsi, [rsp + 0x30]
	mov	rcx, r15
	call	__getdelim
	test	rax, rax
	mov	rbp, qword ptr [rsp]
	jle	.label_101
	call	__ctype_b_loc
	mov	r14, rax
	nop	word ptr cs:[rax + rax]
.label_116:
	inc	r13
	mov	rax, qword ptr [r14]
	lea	rdi, [rbp - 1]
	add	rbp, 3
	nop	
.label_115:
	mov	rcx, rbp
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	lea	rbp, [rcx + 1]
	test	byte ptr [rax + rdx*2 + 1], 0x20
	jne	.label_115
	test	dl, dl
	je	.label_122
	cmp	dl, 0x23
	je	.label_122
	mov	rbp, rdi
	nop	dword ptr [rax]
.label_131:
	mov	rbx, rcx
	movzx	ecx, byte ptr [rbp + 1]
	inc	rbp
	test	rcx, rcx
	je	.label_90
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	lea	rcx, [rbx + 1]
	test	dx, dx
	je	.label_131
.label_90:
	mov	rsi, rbp
	sub	rsi, rdi
	call	xstrndup
	mov	rdx, rax
	cmp	byte ptr [rbp], 0
	mov	eax, 0
	je	.label_95
	mov	rdi, qword ptr [r14]
	nop	
.label_139:
	mov	rsi, rbx
	movzx	ecx, byte ptr [rbp + 1]
	inc	rbp
	lea	rbx, [rsi + 1]
	test	byte ptr [rdi + rcx*2 + 1], 0x20
	jne	.label_139
	test	cl, cl
	je	.label_141
	cmp	cl, 0x23
	mov	eax, 0
	je	.label_95
	mov	rbx, rdx
	mov	rdx, rbp
	jmp	.label_146
	.section	.text
	.align	32
	#Procedure 0x4027eb
	.globl sub_4027eb
	.type sub_4027eb, @function
sub_4027eb:

	nop	dword ptr [rax + rax]
.label_154:
	mov	cl, byte ptr [rdx + 1]
	inc	rdx
	inc	rsi
.label_146:
	cmp	cl, 0x23
	je	.label_96
	test	cl, cl
	jne	.label_154
	nop	word ptr cs:[rax + rax]
.label_96:
	movzx	ecx, byte ptr [rsi - 2]
	dec	rsi
	test	byte ptr [rdi + rcx*2 + 1], 0x20
	jne	.label_96
	sub	rsi, rbp
	mov	rdi, rbp
	call	xstrndup
	mov	rdx, rbx
	jmp	.label_95
.label_141:
	xor	eax, eax
.label_95:
	test	rdx, rdx
	lea	rbx, [rsp]
	jne	.label_106
.label_122:
	mov	edx, 0xa
	mov	rdi, rbx
	lea	rsi, [rsp + 0x30]
	mov	rcx, r15
	call	__getdelim
	test	rax, rax
	mov	rbp, qword ptr [rsp]
	jg	.label_116
	jmp	.label_101
	.section	.text
	.align	32
	#Procedure 0x402864
	.globl sub_402864
	.type sub_402864, @function
sub_402864:

	nop	word ptr cs:[rax + rax]
.label_89:
	cmp	r12, rbp
	je	.label_134
	call	__ctype_b_loc
	mov	r14, rax
	mov	qword ptr [rsp + 0x40], r15
	nop	word ptr cs:[rax + rax]
.label_133:
	inc	r13
	mov	rdi, r12
	call	strlen
	inc	rax
	mov	rcx, qword ptr [r14]
	lea	rdi, [r12 - 1]
	lea	rdx, [r12 + 3]
	nop	dword ptr [rax + rax]
.label_149:
	mov	rbx, rdx
	movzx	esi, byte ptr [rdi + 1]
	inc	rdi
	lea	rdx, [rbx + 1]
	test	byte ptr [rcx + rsi*2 + 1], 0x20
	jne	.label_149
	add	r12, rax
	test	sil, sil
	je	.label_140
	cmp	sil, 0x23
	je	.label_140
	mov	rbp, rdi
	nop	
.label_151:
	mov	r15, rbx
	movzx	eax, byte ptr [rbp + 1]
	inc	rbp
	test	rax, rax
	je	.label_145
	movzx	eax, word ptr [rcx + rax*2]
	and	eax, 0x2000
	lea	rbx, [r15 + 1]
	test	ax, ax
	je	.label_151
.label_145:
	mov	rsi, rbp
	sub	rsi, rdi
	call	xstrndup
	mov	rdx, rax
	cmp	byte ptr [rbp], 0
	mov	eax, 0
	je	.label_93
	mov	rdi, qword ptr [r14]
	nop	dword ptr [rax]
.label_103:
	mov	rsi, r15
	movzx	ecx, byte ptr [rbp + 1]
	inc	rbp
	lea	r15, [rsi + 1]
	test	byte ptr [rdi + rcx*2 + 1], 0x20
	jne	.label_103
	test	cl, cl
	je	.label_108
	cmp	cl, 0x23
	mov	eax, 0
	je	.label_93
	mov	rbx, rdx
	mov	rdx, rbp
	jmp	.label_132
	.section	.text
	.align	32
	#Procedure 0x40294b
	.globl sub_40294b
	.type sub_40294b, @function
sub_40294b:

	nop	dword ptr [rax + rax]
.label_119:
	mov	cl, byte ptr [rdx + 1]
	inc	rdx
	inc	rsi
.label_132:
	cmp	cl, 0x23
	je	.label_117
	test	cl, cl
	jne	.label_119
	nop	word ptr cs:[rax + rax]
.label_117:
	movzx	ecx, byte ptr [rsi - 2]
	dec	rsi
	test	byte ptr [rdi + rcx*2 + 1], 0x20
	jne	.label_117
	sub	rsi, rbp
	mov	rdi, rbp
	call	xstrndup
	mov	rdx, rbx
	jmp	.label_93
.label_108:
	xor	eax, eax
.label_93:
	test	rdx, rdx
	mov	r15, qword ptr [rsp + 0x40]
	mov	ebp, OFFSET FLAT:label_120
	jne	.label_121
.label_140:
	cmp	r12, rbp
	jne	.label_133
	jmp	.label_134
.label_106:
	mov	ebp, OFFSET FLAT:label_120
	jmp	.label_135
.label_121:
	lea	rbx, [rsp]
.label_135:
	test	rax, rax
	je	.label_137
	mov	qword ptr [rsp + 0x10], rax
	mov	esi, OFFSET FLAT:label_110
	mov	r14, rdx
	mov	rdi, rdx
	call	c_strcasecmp
	test	eax, eax
	je	.label_142
	mov	rax, qword ptr [rsp + 8]
	cmp	eax, 2
	mov	ecx, 1
	cmove	eax, ecx
	mov	qword ptr [rsp + 8], rax
	test	eax, eax
	je	.label_144
	mov	rdi, r14
	mov	al, byte ptr [rdi]
	cmp	al, 0x2a
	je	.label_153
	cmp	al, 0x2e
	jne	.label_92
	mov	rax, qword ptr [rip + label_91]
	cmp	qword ptr [rip + label_99],  rax
	jne	.label_112
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rdi, r14
	mov	rax, qword ptr [rip + label_91]
.label_112:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_91],  rcx
	mov	byte ptr [rax], 0x2a
.label_153:
	call	append_quoted
	mov	rax, qword ptr [rip + label_91]
	cmp	qword ptr [rip + label_99],  rax
	jne	.label_111
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_91]
.label_111:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_91],  rcx
	mov	byte ptr [rax], 0x3d
	mov	rdi, qword ptr [rsp + 0x10]
	call	append_quoted
	mov	rax, qword ptr [rip + label_91]
	cmp	qword ptr [rip + label_99],  rax
	je	.label_128
	jmp	.label_109
.label_142:
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x38]
	call	fnmatch
	test	eax, eax
	je	.label_152
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 8]
	cmp	ecx, 2
	sete	al
	add	eax, eax
	jmp	.label_124
.label_144:
	xor	eax, eax
	jmp	.label_124
.label_152:
	mov	eax, 2
.label_124:
	mov	qword ptr [rsp + 8], rax
	jmp	.label_97
.label_92:
	mov	esi, OFFSET FLAT:label_143
	mov	qword ptr [rsp + 0x18], rdi
	call	c_strcasecmp
	test	eax, eax
	je	.label_148
	mov	esi, OFFSET FLAT:label_147
	mov	rdi, qword ptr [rsp + 0x18]
	call	c_strcasecmp
	test	eax, eax
	je	.label_148
	mov	esi, OFFSET FLAT:label_94
	mov	rdi, qword ptr [rsp + 0x18]
	call	c_strcasecmp
	test	eax, eax
	je	.label_97
	mov	rbx, -0x128
.label_107:
	mov	rsi, qword ptr [rbx + label_102]
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_105
	add	rbx, 8
	jne	.label_107
	mov	rax, qword ptr [rsp + 8]
	lea	eax, [rax - 1]
	cmp	eax, 1
	ja	.label_114
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_118
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x20]
	call	quotearg_n_style_colon
	jmp	.label_130
.label_148:
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_113
.label_105:
	mov	rax, qword ptr [rip + label_91]
	cmp	qword ptr [rip + label_99],  rax
	jne	.label_129
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_91]
.label_129:
	mov	rbx, qword ptr [rbx + label_98]
	mov	cl, byte ptr [rbx]
	lea	rdx, [rax + 1]
	mov	qword ptr [rip + label_91],  rdx
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rip + label_91]
	cmp	qword ptr [rip + label_99],  rax
	jne	.label_100
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_91]
.label_100:
	mov	cl, byte ptr [rbx + 1]
	lea	rdx, [rax + 1]
	mov	qword ptr [rip + label_91],  rdx
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rip + label_91]
	cmp	qword ptr [rip + label_99],  rax
	jne	.label_150
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_91]
.label_150:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_91],  rcx
	mov	byte ptr [rax], 0x3d
	mov	rdi, qword ptr [rsp + 0x10]
	call	append_quoted
	mov	rax, qword ptr [rip + label_91]
	cmp	qword ptr [rip + label_99],  rax
	lea	rbx, [rsp]
	jne	.label_109
.label_128:
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_91]
.label_109:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_91],  rcx
	mov	byte ptr [rax], 0x3a
.label_97:
	mov	rdi, r14
.label_113:
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	jmp	.label_127
.label_114:
	lea	rbx, [rsp]
	jmp	.label_97
.label_118:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
.label_130:
	mov	rcx, rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	r8, r13
	mov	rbx, r14
	mov	r9, rbx
	call	error
	mov	rdi, rbx
	mov	ebp, OFFSET FLAT:label_120
	lea	rbx, [rsp]
	jmp	.label_113
.label_101:
	mov	rdi, rbp
	call	free
.label_134:
	mov	rax, qword ptr [rsp + 0x28]
	and	al, 1
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ced
	.globl sub_402ced
	.type sub_402ced, @function
sub_402ced:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402cf0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402cff
	.globl sub_402cff
	.type sub_402cff, @function
sub_402cff:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402d00
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402d18
	.globl sub_402d18
	.type sub_402d18, @function
sub_402d18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d20

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_65
	call	setlocale
	mov	edi, OFFSET FLAT:label_180
	mov	esi, OFFSET FLAT:label_181
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_180
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	ebp, 2
	xor	ecx, ecx
.label_168:
	mov	r15d, ecx
	mov	ebx, ebp
	jmp	.label_165
.label_173:
	mov	ebx, 1
	nop	dword ptr [rax]
.label_165:
	mov	ebp, ebx
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:label_155
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_162
	cmp	eax, 0x62
	je	.label_165
	mov	cl, 1
	cmp	eax, 0x70
	je	.label_168
	cmp	eax, 0x63
	je	.label_173
	jmp	.label_156
.label_162:
	cmp	eax, -1
	jne	.label_184
	movsxd	rax, dword ptr [rip + optind]
	test	r15b, r15b
	je	.label_179
	cmp	ebp, 2
	jne	.label_185
.label_179:
	sub	r14d, eax
	lea	r12, [r12 + rax*8]
	movzx	ebx, r15b
	xor	ebx, 1
	cmp	ebx, r14d
	jl	.label_186
	test	r15b, r15b
	je	.label_195
	mov	ebp, OFFSET FLAT:G_line
	mov	ebx, OFFSET FLAT:G_line
	nop	dword ptr [rax + rax]
.label_188:
	mov	rdi, rbx
	call	puts
	mov	rdi, rbx
	call	strlen
	lea	rbx, [rbx + rax + 1]
	mov	rcx, rbx
	sub	rcx, rbp
	xor	eax, eax
	cmp	rcx, 0x10c4
	jb	.label_188
	jmp	.label_157
.label_195:
	cmp	ebp, 2
	jne	.label_171
	mov	edi, OFFSET FLAT:label_174
	call	getenv
	test	rax, rax
	je	.label_175
	cmp	byte ptr [rax], 0
	je	.label_175
	mov	rdi, rax
	call	last_component
	cmp	byte ptr [rax], 0x63
	jne	.label_161
	cmp	byte ptr [rax + 1], 0x73
	jne	.label_161
	cmp	byte ptr [rax + 2], 0x68
	jne	.label_161
	mov	ebp, 1
	cmp	byte ptr [rax + 3], 0
	je	.label_171
.label_161:
	mov	esi, OFFSET FLAT:label_160
	mov	rdi, rax
	call	strcmp
	xor	ebp, ebp
	test	eax, eax
	sete	bpl
.label_171:
	mov	edi, OFFSET FLAT:lsc_obstack
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	test	r14d, r14d
	je	.label_163
	mov	rbx, qword ptr [r12]
	cmp	byte ptr [rbx], 0x2d
	jne	.label_166
	cmp	byte ptr [rbx + 1], 0
	je	.label_172
.label_166:
	mov	rdx, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:label_177
	mov	rdi, rbx
	call	freopen_safer
	test	rax, rax
	je	.label_197
.label_172:
	mov	rdi, qword ptr [rip + stdin]
	mov	rsi, rbx
	call	dc_parse_stream
	mov	r14d, eax
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	test	eax, eax
	je	.label_170
.label_197:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_18
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	eax, 1
	jmp	.label_157
.label_163:
	xor	edi, edi
	xor	esi, esi
	call	dc_parse_stream
	mov	ecx, eax
	mov	eax, 1
	test	cl, cl
	jne	.label_169
	jmp	.label_157
.label_170:
	mov	eax, 1
	test	r14b, r14b
	je	.label_157
.label_169:
	mov	rax, qword ptr [rip + label_91]
	mov	r14, qword ptr [rip + label_182]
	mov	r15, rax
	sub	r15, r14
	jne	.label_183
	or	byte ptr [rip + label_187],  2
.label_183:
	mov	rcx, qword ptr [rip + label_189]
	add	rax, rcx
	not	rcx
	and	rcx, rax
	mov	rax, qword ptr [rip + label_190]
	mov	rdx, rcx
	sub	rdx, rax
	mov	rsi, qword ptr [rip + label_99]
	mov	rdi, rsi
	sub	rdi, rax
	cmp	rdx, rdi
	cmova	rcx, rsi
	mov	qword ptr [rip + label_91],  rcx
	mov	qword ptr [rip + label_182],  rcx
	test	ebp, ebp
	mov	eax, OFFSET FLAT:label_191
	mov	edi, OFFSET FLAT:label_192
	cmove	rdi, rax
	mov	eax, OFFSET FLAT:label_193
	mov	ebx, OFFSET FLAT:label_194
	cmove	rbx, rax
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, r15
	call	fwrite_unlocked
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
	xor	eax, eax
.label_157:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_184:
	cmp	eax, 0xffffff7d
	je	.label_198
	cmp	eax, 0xffffff7e
	jne	.label_156
	xor	edi, edi
	call	usage
.label_198:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_158
	mov	edx, OFFSET FLAT:label_77
	mov	r8d, OFFSET FLAT:label_159
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_185:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_167
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_186:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [r12 + rbx*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	test	r15b, r15b
	je	.label_164
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_176
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_83
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_164:
	mov	edi, 1
	call	usage
.label_156:
	mov	edi, 1
	call	usage
.label_175:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403110

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	qword ptr [r14 + 0x38], rcx
	mov	qword ptr [r14 + 0x40], r8
	and	byte ptr [r14 + 0x50], 0xfe
	test	rdx, rdx
	mov	ebx, 0x10
	cmovne	rbx, rdx
	test	rsi, rsi
	mov	edi, 0xfe0
	cmovne	rdi, rsi
	mov	qword ptr [r14], rdi
	lea	r15, [rbx - 1]
	mov	qword ptr [r14 + 0x30], r15
	call	rcx
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_199
	lea	rcx, [rax + r15 + 0x10]
	neg	rbx
	and	rbx, rcx
	mov	qword ptr [r14 + 0x10], rbx
	mov	qword ptr [r14 + 0x18], rbx
	mov	rcx, qword ptr [r14]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [r14 + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_199:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr cs:[rax + rax]
.label_200:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4031a5
	.globl sub_4031a5
	.type sub_4031a5, @function
sub_4031a5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4031a9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_39]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_40]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_41]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_200
	test	rsi, rsi
	je	.label_200
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x403210
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_39]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_40]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_41]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_201
	test	rdx, rdx
	je	.label_201
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_201:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40327a
	.globl sub_40327a
	.type sub_40327a, @function
sub_40327a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403280
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403291
	.globl sub_403291
	.type sub_403291, @function
sub_403291:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032a0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_203
	cmp	byte ptr [rax], 0x43
	jne	.label_205
	cmp	byte ptr [rax + 1], 0
	je	.label_202
.label_205:
	mov	esi, OFFSET FLAT:label_204
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_203
.label_202:
	xor	ebx, ebx
.label_203:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032d1
	.globl sub_4032d1
	.type sub_4032d1, @function
sub_4032d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032e0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	32
	#Procedure 0x4032f7
	.globl sub_4032f7
	.type sub_4032f7, @function
sub_4032f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403300
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_206
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_206:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403361
	.globl sub_403361
	.type sub_403361, @function
sub_403361:

	nop	word ptr cs:[rax + rax]
.label_212:
	mov	rdi, qword ptr [r15 + 0x48]
	call	qword ptr [r15 + 0x40]
.label_209:
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsi, rbx
	jne	.label_211
.label_213:
	test	r14, r14
	je	.label_208
	call	abort
.label_210:
	mov	qword ptr [r15 + 0x18], r14
	mov	qword ptr [r15 + 0x10], r14
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_208:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033a8
	.globl sub_4033a8
	.type sub_4033a8, @function
sub_4033a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033b0

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 8]
	test	rsi, rsi
	je	.label_213
	nop	word ptr cs:[rax + rax]
.label_211:
	cmp	rsi, r14
	jae	.label_207
	cmp	qword ptr [rsi], r14
	jae	.label_210
.label_207:
	mov	rbx, qword ptr [rsi + 8]
	test	byte ptr [r15 + 0x50], 1
	jne	.label_212
	mov	rdi, rsi
	call	qword ptr [r15 + 0x40]
	jmp	.label_209
	.section	.text
	.align	32
	#Procedure 0x4033ee
	.globl sub_4033ee
	.type sub_4033ee, @function
sub_4033ee:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4033f0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_217
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_219
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_214
.label_217:
	test	rcx, rcx
	jne	.label_220
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_220:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_215
.label_214:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_216
	test	rbx, rbx
	jne	.label_216
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_216:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_218
	test	rax, rax
	je	.label_219
.label_218:
	pop	rbx
	ret	
.label_219:
	call	xalloc_die
.label_215:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403487
	.globl sub_403487
	.type sub_403487, @function
sub_403487:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403490
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40349e
	.globl sub_40349e
	.type sub_40349e, @function
sub_40349e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4034a0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	r12d, edi
	call	__errno_location
	mov	r13, rax
	test	r12d, r12d
	js	.label_221
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_224
	cmp	r12d, 0x7fffffff
	je	.label_226
	mov	ebx, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, rbx
	cmovne	rdi, rbp
	lea	r15d, [r12 + 1]
	movsxd	rsi, r12d
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, rbx
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_222
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_222:
	movsxd	rax, dword ptr [rip + nslots]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_224:
	movsxd	r13, r12d
	shl	r13, 4
	mov	r12, qword ptr [rbp + r13]
	mov	r14, qword ptr [rbp + r13 + 8]
	mov	r8d, dword ptr [rbx]
	mov	r9d, dword ptr [rbx + 4]
	or	r9d, 1
	lea	rax, [rbx + 8]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, r15
	mov	dword ptr [rsp + 0xc], r9d
	push	qword ptr [rbx + 0x30]
	push	qword ptr [rbx + 0x28]
	mov	rbx, rax
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	r15, rax
	cmp	r12, r15
	jbe	.label_227
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_223
.label_227:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_225
	mov	rdi, r14
	call	free
.label_225:
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rax]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	push	qword ptr [rax + 0x30]
	push	qword ptr [rax + 0x28]
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x18]
.label_223:
	mov	dword ptr [rax], ebp
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_221:
	call	abort
.label_226:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40365d
	.globl sub_40365d
	.type sub_40365d, @function
sub_40365d:

	nop	dword ptr [rax]
.label_231:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403665
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_228
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_232
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_229
	call	free
	xor	eax, eax
	jmp	.label_230
.label_228:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_231
	mov	qword ptr [rsi], rbx
.label_229:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_230
	test	rax, rax
	je	.label_231
.label_230:
	pop	rbx
	ret	
.label_232:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4036c4
	.globl sub_4036c4
	.type sub_4036c4, @function
sub_4036c4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036d0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_233
	test	rsi, rsi
	mov	ecx, 1
	je	.label_234
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_234
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_233:
	mov	ecx, 1
.label_234:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x40371b
	.globl sub_40371b
	.type sub_40371b, @function
sub_40371b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403720
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_235
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_235:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403788
	.globl sub_403788
	.type sub_403788, @function
sub_403788:

	nop	dword ptr [rax + rax]
.label_236:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403795
	.globl sub_403795
	.type sub_403795, @function
sub_403795:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403797
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_39]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_40]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_41]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_236
	test	rdx, rdx
	je	.label_236
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x403800
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40380f
	.globl sub_40380f
	.type sub_40380f, @function
sub_40380f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403810

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_241
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_247
	cmp	ecx, 0x55
	jne	.label_237
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_237
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_237
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_237
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_237
	cmp	byte ptr [rax + 5], 0
	jne	.label_237
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_245
	mov	eax, OFFSET FLAT:label_246
	jmp	.label_240
.label_247:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_237
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_237
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_237
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_237
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_237
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_237
	cmp	byte ptr [rax + 7], 0
	je	.label_242
.label_237:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_243
	mov	eax, OFFSET FLAT:label_244
.label_240:
	cmove	rax, rcx
.label_241:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_242:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_238
	mov	eax, OFFSET FLAT:label_239
	jmp	.label_240
	.section	.text
	.align	32
	#Procedure 0x4038d5
	.globl sub_4038d5
	.type sub_4038d5, @function
sub_4038d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038e8
	.globl sub_4038e8
	.type sub_4038e8, @function
sub_4038e8:

	nop	dword ptr [rax + rax]
.label_249:
	movzx	ecx, cl
	xor	eax, eax
.label_250:
	sub	eax, ecx
.label_248:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038f8
	.globl sub_4038f8
	.type sub_4038f8, @function
sub_4038f8:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4038fa

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	xor	eax, eax
	cmp	rdi, rsi
	je	.label_248
	nop	word ptr [rax + rax]
.label_251:
	movzx	ecx, byte ptr [rdi]
	lea	edx, [rcx - 0x41]
	lea	eax, [rcx + 0x20]
	cmp	edx, 0x1a
	cmovae	eax, ecx
	movzx	edx, byte ptr [rsi]
	lea	r8d, [rdx - 0x41]
	lea	ecx, [rdx + 0x20]
	cmp	r8d, 0x1a
	cmovae	ecx, edx
	and	eax, 0xff
	je	.label_249
	inc	rdi
	inc	rsi
	movzx	ecx, cl
	cmp	eax, ecx
	je	.label_251
	jmp	.label_250
	.section	.text
	.align	32
	#Procedure 0x403940

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_252
	mov	edx, OFFSET FLAT:label_262
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_268
.label_252:
	mov	edx, OFFSET FLAT:label_269
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_268:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_257
	jmp	qword ptr [(r12 * 8) + label_258]
.label_558:
	add	rsp, 8
	jmp	.label_256
.label_257:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_256
.label_559:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_560:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_266
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_561:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_263
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_562:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_260
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_256
.label_563:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_259
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_256
.label_564:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_261
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_256
.label_565:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_264
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_256
.label_567:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_256
.label_566:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_254
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_256:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c98
	.globl sub_403c98
	.type sub_403c98, @function
sub_403c98:

	nop	dword ptr [rax + rax]
.label_271:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403ca5
	.globl sub_403ca5
	.type sub_403ca5, @function
sub_403ca5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cb0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_271
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x70], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x34], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x24], xmm2
	movups	xmmword ptr [rsp + 0x14], xmm1
	movups	xmmword ptr [rsp + 4], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d40

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x9c], eax
	mov	dword ptr [rsp + 0x20], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x98], ebx
	mov	dil, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_290
	.section	.text
	.align	32
	#Procedure 0x403def
	.globl sub_403def
	.type sub_403def, @function
sub_403def:

	nop	
.label_287:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_279
	or	al, dl
	jne	.label_279
	test	dil, 1
	jne	.label_284
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_279
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_290
	jmp	.label_279
.label_586:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_298
	test	rbp, rbp
	je	.label_303
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_303:
	mov	r14d, 1
	jmp	.label_305
.label_587:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_243
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_307
.label_298:
	xor	r14d, r14d
.label_305:
	mov	eax, OFFSET FLAT:label_243
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_317
	.section	.text
	.align	32
	#Procedure 0x403ebf
	.globl sub_403ebf
	.type sub_403ebf, @function
sub_403ebf:

	nop	
.label_290:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_324
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_342]
.label_588:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_340
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_244
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_589:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_354
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_354
	xor	r14d, r14d
	nop	
.label_364:
	cmp	r14, rbp
	jae	.label_391
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_391:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_364
.label_354:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x50], rax
	mov	r8d, r15d
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13b, 1
	mov	sil, r12b
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r9d, dword ptr [rsp + 0x60]
	jmp	.label_307
.label_581:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_307
.label_584:
	mov	al, 1
.label_582:
	mov	r12b, 1
.label_585:
	test	r12b, 1
	mov	cl, 1
	je	.label_379
	mov	ecx, eax
.label_379:
	mov	al, cl
.label_583:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_380
	test	rbp, rbp
	je	.label_385
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_385:
	mov	r14d, 1
	jmp	.label_349
.label_380:
	xor	r14d, r14d
.label_349:
	mov	ecx, OFFSET FLAT:label_244
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_317:
	mov	sil, r12b
.label_307:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x33]
	mov	ebx, r15d
	mov	byte ptr [rsp + 0x1f], cl
	and	bl, cl
	cmp	qword ptr [rsp + 0x50], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x36], bl
	and	dl, bl
	mov	byte ptr [rsp + 0x37], dl
	mov	ebx, esi
	and	bl, 1
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x31], al
	mov	byte ptr [rsp + 0xf], bl
	and	r12b, bl
	mov	byte ptr [rsp + 0x35], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x27], dl
	mov	byte ptr [rsp + 0x34], r13b
	mov	qword ptr [rsp + 0xc0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x32], r13b
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x38], r8
	jmp	.label_396
	.section	.text
	.align	32
	#Procedure 0x404081
	.globl sub_404081
	.type sub_404081, @function
sub_404081:

	nop	word ptr cs:[rax + rax]
.label_278:
	inc	r12
.label_396:
	cmp	r11, -1
	je	.label_312
	cmp	r12, r11
	jne	.label_314
	jmp	.label_316
	.section	.text
	.align	32
	#Procedure 0x4040a3
	.globl sub_4040a3
	.type sub_4040a3, @function
sub_4040a3:

	nop	word ptr cs:[rax + rax]
.label_312:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_319
.label_314:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_325
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_329
	cmp	r11, -1
	jne	.label_329
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_329:
	cmp	rbx, r11
	jbe	.label_344
.label_325:
	xor	esi, esi
.label_299:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_345
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_350]
.label_603:
	test	r12, r12
	jne	.label_302
	jmp	.label_283
	.section	.text
	.align	32
	#Procedure 0x404136
	.globl sub_404136
	.type sub_404136, @function
sub_404136:

	nop	word ptr cs:[rax + rax]
.label_344:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_363
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_299
	jmp	.label_296
.label_363:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_299
.label_607:
	xor	eax, eax
	cmp	r11, -1
	je	.label_374
	test	r12, r12
	jne	.label_377
	cmp	r11, 1
	je	.label_283
	xor	r13d, r13d
	jmp	.label_281
.label_596:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_382
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_296
	cmp	r8d, 2
	jne	.label_387
	mov	eax, r9d
	and	al, 1
	jne	.label_387
	cmp	r14, rbp
	jae	.label_392
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_392:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_394
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_394:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_274
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_274:
	add	r14, 3
	mov	r9b, 1
.label_387:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_282
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_282:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_292
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_292
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_292
	cmp	r14, rbp
	jae	.label_294
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_294:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_357
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_357:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_281
.label_597:
	mov	bl, 0x62
	jmp	.label_313
.label_598:
	mov	cl, 0x74
	jmp	.label_308
.label_599:
	mov	bl, 0x76
	jmp	.label_313
.label_600:
	mov	bl, 0x66
	jmp	.label_313
.label_601:
	mov	cl, 0x72
	jmp	.label_308
.label_604:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_322
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_311
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_333
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_333:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_347
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_347:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_353
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_353:
	add	r14, 3
	xor	r9d, r9d
.label_322:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_281
.label_605:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_358
	cmp	r8d, 2
	jne	.label_302
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_302
	jmp	.label_311
.label_606:
	cmp	r8d, 2
	jne	.label_366
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_311
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_371
.label_345:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_372
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_393
.label_374:
	test	r12, r12
	jne	.label_388
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_388
.label_283:
	mov	dl, 1
.label_602:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_311
	xor	eax, eax
	mov	r13b, dl
.label_281:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_272
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_275
	jmp	.label_277
	.section	.text
	.align	32
	#Procedure 0x404414
	.globl sub_404414
	.type sub_404414, @function
sub_404414:

	nop	word ptr cs:[rax + rax]
.label_272:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_277
.label_275:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_339
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_291
	.section	.text
	.align	32
	#Procedure 0x40444d
	.globl sub_40444d
	.type sub_40444d, @function
sub_40444d:

	nop	dword ptr [rax]
.label_277:
	test	sil, sil
.label_291:
	mov	ebx, r15d
	je	.label_309
	jmp	.label_301
.label_339:
	mov	ebx, r15d
	jmp	.label_301
.label_382:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_278
	xor	r15d, r15d
	jmp	.label_302
.label_366:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_308
	xor	eax, eax
	mov	r15b, 0x5c
.label_371:
	xor	r13d, r13d
	jmp	.label_309
.label_308:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_311
.label_313:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_281
	nop	
.label_301:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_296
	cmp	r8d, 2
	jne	.label_323
	mov	eax, r9d
	and	al, 1
	jne	.label_323
	cmp	r14, rbp
	jae	.label_328
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_328:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_334
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_334:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_337
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_337:
	add	r14, 3
	mov	r9b, 1
.label_323:
	cmp	r14, rbp
	jae	.label_276
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_276:
	inc	r14
	jmp	.label_286
.label_372:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_351
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_351:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_361
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_356:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_367
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_375
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_306
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_383
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_338:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_297
	bt	rsi, rdx
	jb	.label_311
.label_297:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_338
.label_383:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_280
	xor	r13d, r13d
.label_280:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_356
	jmp	.label_293
.label_292:
	xor	r13d, r13d
	jmp	.label_281
.label_388:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_281
.label_358:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_302
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_302
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_302
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_310
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_373
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_273
	cmp	r14, rbp
	jae	.label_320
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_320:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_327
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_327:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_346
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_346:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_369
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_369:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_373:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_281
.label_302:
	xor	eax, eax
.label_377:
	xor	r13d, r13d
	jmp	.label_281
.label_361:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_378:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_288
	cmp	rbp, -1
	je	.label_365
	cmp	rbp, -2
	je	.label_367
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_370
	xor	r13d, r13d
.label_370:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_378
	jmp	.label_293
.label_367:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_352
	lea	rax, [r10 + r12]
.label_355:
	cmp	byte ptr [rax + rsi], 0
	je	.label_352
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_355
.label_352:
	mov	qword ptr [rsp + 0x40], rsi
.label_375:
	xor	r13d, r13d
	jmp	.label_306
.label_365:
	xor	r13d, r13d
.label_288:
	mov	r10, qword ptr [rsp + 0x28]
.label_306:
	mov	r12, qword ptr [rsp + 0x40]
.label_293:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_393:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_285
	test	al, al
	je	.label_285
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_281
.label_285:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_289
	.section	.text
	.align	32
	#Procedure 0x404847
	.globl sub_404847
	.type sub_404847, @function
sub_404847:

	nop	word ptr [rax + rax]
.label_376:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_289:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_300
	test	sil, 1
	je	.label_295
	cmp	r14, rbp
	jae	.label_304
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_304:
	inc	r14
	xor	esi, esi
	jmp	.label_295
	.section	.text
	.align	32
	#Procedure 0x404885
	.globl sub_404885
	.type sub_404885, @function
sub_404885:

	nop	word ptr cs:[rax + rax]
.label_300:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_296
	cmp	r8d, 2
	jne	.label_315
	mov	eax, r9d
	and	al, 1
	jne	.label_315
	cmp	r14, rbp
	jae	.label_318
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_318:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_326
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_326:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_389
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_389:
	add	r14, 3
	mov	r9b, 1
.label_315:
	cmp	r14, rbp
	jae	.label_336
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_336:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_330
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_330:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_348
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_348:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_295:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_309
	test	r9b, 1
	je	.label_359
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_386
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_362
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_362:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_368
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_368:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_359
	.section	.text
	.align	32
	#Procedure 0x404996
	.globl sub_404996
	.type sub_404996, @function
sub_404996:

	nop	word ptr cs:[rax + rax]
.label_386:
	mov	rbx, rcx
.label_359:
	cmp	r14, rbp
	jae	.label_376
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_376
	.section	.text
	.align	32
	#Procedure 0x4049be
	.globl sub_4049be
	.type sub_4049be, @function
sub_4049be:

	nop	
.label_309:
	test	r9b, 1
	je	.label_381
	and	al, 1
	jne	.label_381
	cmp	r14, rbp
	jae	.label_384
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_384:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_335
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_335:
	add	r14, 2
	xor	r9d, r9d
.label_381:
	mov	ebx, r15d
.label_286:
	cmp	r14, rbp
	jae	.label_395
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_395:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_278
.label_310:
	xor	r13d, r13d
	jmp	.label_281
	.section	.text
	.align	32
	#Procedure 0x404a21
	.globl sub_404a21
	.type sub_404a21, @function
sub_404a21:

	nop	word ptr cs:[rax + rax]
.label_316:
	mov	rcx, r12
.label_319:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_287
	or	al, dl
	jne	.label_287
	mov	r11, rcx
	jmp	.label_296
.label_311:
	mov	eax, 2
.label_331:
	mov	qword ptr [rsp + 0x38], rax
.label_296:
	mov	r9d, dword ptr [rsp + 0x20]
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rdx, r10
	mov	rcx, r11
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_390:
	mov	r14, rax
.label_360:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_279:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_321
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_332
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_332
	inc	rdx
	nop	dword ptr [rax + rax]
.label_343:
	cmp	r14, rbp
	jae	.label_341
	mov	byte ptr [rcx + r14], al
.label_341:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_343
	jmp	.label_332
.label_284:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	qword ptr [rsp + 0x118]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_390
.label_321:
	mov	rcx, qword ptr [rsp + 0x10]
.label_332:
	cmp	r14, rbp
	jae	.label_360
	mov	byte ptr [rcx + r14], 0
	jmp	.label_360
.label_273:
	mov	eax, 5
	jmp	.label_331
.label_324:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404b70
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_39]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_40]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_41]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	eax, ecx
	shr	al, 5
	movzx	eax, al
	mov	esi, dword ptr [rsp + rax*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rax*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, r8
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bde
	.globl sub_404bde
	.type sub_404bde, @function
sub_404bde:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404be0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_397
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_398
	test	rax, rax
	je	.label_397
.label_398:
	pop	rbx
	ret	
.label_397:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404c15
	.globl sub_404c15
	.type sub_404c15, @function
sub_404c15:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c20
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c28
	.globl sub_404c28
	.type sub_404c28, @function
sub_404c28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c30
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_39]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_40]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_41]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	edx, ecx
	shr	dl, 5
	movzx	edx, dl
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c9f
	.globl sub_404c9f
	.type sub_404c9f, @function
sub_404c9f:

	nop	
.label_574:
	not	al
	and	al, 1
	mov	ebx, eax
	jmp	.label_401
	.section	.text
	.align	32
	#Procedure 0x404cab
	.globl sub_404cab
	.type sub_404cab, @function
sub_404cab:

	nop	dword ptr [rax + rax]
.label_573:
	test	al, 1
	mov	bl, 1
	je	.label_401
	mov	rax, qword ptr [rip + label_91]
	cmp	qword ptr [rip + label_99],  rax
	jne	.label_407
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_91]
.label_407:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_91],  rcx
	mov	byte ptr [rax], 0x5c
	jmp	.label_399
	.section	.text
	.align	32
	#Procedure 0x404cf3
	.globl sub_404cf3
	.type sub_404cf3, @function
sub_404cf3:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cfc

	.globl append_quoted
	.type append_quoted, @function
append_quoted:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	cl, byte ptr [r14]
	test	cl, cl
	je	.label_409
	inc	r14
	mov	al, 1
	nop	word ptr [rax + rax]
.label_400:
	movsx	ecx, cl
	lea	edx, [rcx - 0x3a]
	cmp	edx, 0x24
	ja	.label_404
	mov	bl, 1
	jmp	qword ptr [(rdx * 8) + label_406]
.label_404:
	cmp	ecx, 0x27
	mov	bl, 1
	jne	.label_401
	mov	rax, qword ptr [rip + label_91]
	cmp	qword ptr [rip + label_99],  rax
	jne	.label_408
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_91]
.label_408:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_91],  rcx
	mov	byte ptr [rax], 0x27
	mov	rax, qword ptr [rip + label_91]
	cmp	qword ptr [rip + label_99],  rax
	jne	.label_405
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_91]
.label_405:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_91],  rcx
	mov	byte ptr [rax], 0x5c
	mov	rax, qword ptr [rip + label_91]
	cmp	qword ptr [rip + label_99],  rax
	jne	.label_402
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_91]
.label_402:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_91],  rcx
	mov	byte ptr [rax], 0x27
.label_399:
	mov	bl, 1
.label_401:
	mov	rax, qword ptr [rip + label_91]
	cmp	qword ptr [rip + label_99],  rax
	jne	.label_403
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_91]
.label_403:
	movzx	ecx, byte ptr [r14 - 1]
	lea	rdx, [rax + 1]
	mov	qword ptr [rip + label_91],  rdx
	mov	byte ptr [rax], cl
	movzx	ecx, byte ptr [r14]
	inc	r14
	test	cl, cl
	mov	eax, ebx
	jne	.label_400
.label_409:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e2a
	.globl sub_404e2a
	.type sub_404e2a, @function
sub_404e2a:

	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404e30

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_410
	test	rbx, rbx
	jne	.label_410
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_412:
	call	xalloc_die
.label_410:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_411
	test	rax, rax
	je	.label_412
.label_411:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e60

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_423
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_425
.label_423:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_425:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_414
	cmp	r10d, 0x29
	jae	.label_422
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_424
.label_422:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_424:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_414
	cmp	r10d, 0x29
	jae	.label_420
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_421
.label_420:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_421:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_414
	cmp	r10d, 0x29
	jae	.label_418
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_419
.label_418:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_419:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_414
	cmp	r10d, 0x29
	jae	.label_416
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_417
.label_416:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_417:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_414
	cmp	r10d, 0x29
	jae	.label_413
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_415
.label_413:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_415:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_414
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_414
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_414
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_414
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_414:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x405042
	.globl sub_405042
	.type sub_405042, @function
sub_405042:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405050
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_426
	mov	dword ptr [rsp + 0x40], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rax, [rsp + 0x40]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_426:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4050b8
	.globl sub_4050b8
	.type sub_4050b8, @function
sub_4050b8:

	nop	dword ptr [rax + rax]
.label_440:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_427
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4050f8
	.globl sub_4050f8
	.type sub_4050f8, @function
sub_4050f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050fd

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_440
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_429
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_434
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_431
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_433
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_439
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_438
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_77
	mov	ecx, OFFSET FLAT:label_78
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_428
	mov	esi, OFFSET FLAT:label_437
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_428
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_435
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_428:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_436
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_78
	mov	ecx, OFFSET FLAT:label_158
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_430
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_158
	mov	ecx, OFFSET FLAT:label_432
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x405280

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	je	.label_441
	cmp	r15, -2
	jb	.label_441
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_441
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_441:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052d6
	.globl sub_4052d6
	.type sub_4052d6, @function
sub_4052d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052e0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_39]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_40]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_41]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_442
	test	rsi, rsi
	je	.label_442
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_442:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405350

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	call	fileno
	xor	r12d, r12d
	test	eax, eax
	je	.label_451
	cmp	eax, 1
	je	.label_455
	cmp	eax, 2
	je	.label_456
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_456:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_449
.label_451:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_453
.label_455:
	xor	r15d, r15d
.label_449:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_445
	mov	edi, OFFSET FLAT:label_31
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_445
	mov	r13b, 1
	jmp	.label_444
.label_445:
	test	r12b, r12b
	je	.label_448
	mov	edi, OFFSET FLAT:label_31
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_454
.label_448:
	test	r15b, r15b
	je	.label_453
	mov	edi, OFFSET FLAT:label_31
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_444
.label_453:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_447
.label_454:
	mov	r12b, 1
.label_444:
	xor	r14d, r14d
	test	eax, eax
	js	.label_447
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_447:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_443
	mov	edi, 2
	call	close
.label_443:
	test	r12b, r12b
	je	.label_446
	mov	edi, 1
	call	close
.label_446:
	test	r13b, r13b
	je	.label_452
	xor	edi, edi
	call	close
.label_452:
	test	r14, r14
	jne	.label_450
	mov	dword ptr [rbx], ebp
.label_450:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405492
	.globl sub_405492
	.type sub_405492, @function
sub_405492:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054a0
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	cmove	rbx, rax
	mov	esi, 0x38
	mov	rdi, rbx
	call	xmemdup
	mov	dword ptr [r14], ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4054d3
	.globl sub_4054d3
	.type sub_4054d3, @function
sub_4054d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054e0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4054f9
	.globl sub_4054f9
	.type sub_4054f9, @function
sub_4054f9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405500

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	jne	.label_458
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_457
	test	cl, cl
	jne	.label_457
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_457
.label_458:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_457
	call	__errno_location
	mov	dword ptr [rax], 0
.label_457:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055c5
	.globl sub_4055c5
	.type sub_4055c5, @function
sub_4055c5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055d2
	.globl sub_4055d2
	.type sub_4055d2, @function
sub_4055d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055f6
	.globl sub_4055f6
	.type sub_4055f6, @function
sub_4055f6:

	nop	word ptr cs:[rax + rax]

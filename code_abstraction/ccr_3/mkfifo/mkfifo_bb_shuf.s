	.section	.text
	.align	32
	#Procedure 0x401389
	.globl sub_401389
	.type sub_401389, @function
sub_401389:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40138a
	.globl sub_40138a
	.type sub_40138a, @function
sub_40138a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4013c2
	.globl sub_4013c2
	.type sub_4013c2, @function
sub_4013c2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40140a
	.globl sub_40140a
	.type sub_40140a, @function
sub_40140a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40142c
	.globl sub_40142c
	.type sub_40142c, @function
sub_40142c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40143d
	.globl sub_40143d
	.type sub_40143d, @function
sub_40143d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401456
	.globl sub_401456
	.type sub_401456, @function
sub_401456:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401460
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
	#Procedure 0x401479
	.globl sub_401479
	.type sub_401479, @function
sub_401479:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401480

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_9
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_10
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4014a5
	.globl sub_4014a5
	.type sub_4014a5, @function
sub_4014a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4014b0
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
	#Procedure 0x4014e6
	.globl sub_4014e6
	.type sub_4014e6, @function
sub_4014e6:

	nop	word ptr cs:[rax + rax]
.label_11:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4014f5
	.globl sub_4014f5
	.type sub_4014f5, @function
sub_4014f5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4014fb

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_12
	test	rax, rax
	je	.label_11
.label_12:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401510
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
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
	#Procedure 0x401564
	.globl sub_401564
	.type sub_401564, @function
sub_401564:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401570

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_19
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_17
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_17
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_18
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_18:
	mov	rbx, r14
.label_17:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_19:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_20
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401611
	.globl sub_401611
	.type sub_401611, @function
sub_401611:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401620

	.globl mode_adjust
	.type mode_adjust, @function
mode_adjust:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	qword ptr [rsp - 8], r8
	and	edi, 0xfff
	mov	al, byte ptr [rcx + 1]
	xor	r13d, r13d
	test	al, al
	je	.label_22
	xor	r13d, r13d
	test	sil, sil
	mov	r9d, 0xc00
	cmove	r9d, r13d
	not	edx
	mov	r10d, r9d
	not	r10d
	movzx	r12d, sil
	mov	r14d, 0x92
	mov	r15d, 0x49
	nop	dword ptr [rax + rax]
.label_24:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	je	.label_28
	cmp	ebp, 3
	jne	.label_25
	and	esi, edi
	mov	ebp, esi
	and	ebp, 0x124
	mov	eax, 0x124
	cmovne	ebp, eax
	mov	r11d, esi
	and	r11d, 0x92
	cmovne	r11d, r14d
	or	r11d, esi
	and	esi, 0x49
	cmovne	esi, r15d
	or	esi, ebp
	or	esi, r11d
	jmp	.label_25
	.section	.text
	.align	32
	#Procedure 0x4016b8
	.globl sub_4016b8
	.type sub_4016b8, @function
sub_4016b8:

	nop	dword ptr [rax + rax]
.label_28:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_25:
	test	ebx, ebx
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	je	.label_23
	cmp	esi, 0x2d
	je	.label_26
	cmp	esi, 0x3d
	jne	.label_27
	not	r8d
	and	r8d, r9d
	test	ebx, ebx
	mov	eax, ebx
	not	eax
	cmove	eax, ebx
	or	eax, r8d
	mov	esi, eax
	not	esi
	and	esi, 0xfff
	or	r13d, esi
	and	eax, edi
	or	ebp, eax
	mov	edi, ebp
	jmp	.label_27
	.section	.text
	.align	32
	#Procedure 0x40171a
	.globl sub_40171a
	.type sub_40171a, @function
sub_40171a:

	nop	word ptr [rax + rax]
.label_23:
	or	r13d, ebp
	or	edi, ebp
.label_27:
	movzx	eax, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	test	al, al
	jne	.label_24
.label_22:
	mov	rax, qword ptr [rsp - 8]
	test	rax, rax
	je	.label_29
	mov	dword ptr [rax], r13d
.label_29:
	mov	eax, edi
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40174f
	.globl sub_40174f
	.type sub_40174f, @function
sub_40174f:

	nop	
.label_26:
	or	r13d, ebp
	not	ebp
	and	edi, ebp
	jmp	.label_27
	.section	.text
	.align	32
	#Procedure 0x401759
	.globl sub_401759
	.type sub_401759, @function
sub_401759:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401760
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_30
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_31
	test	rbx, rbx
	jne	.label_31
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_30:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401794
	.globl sub_401794
	.type sub_401794, @function
sub_401794:

	nop	dword ptr [rax + rax]
.label_31:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_32
	test	rax, rax
	je	.label_30
.label_32:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4017b0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
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
	#Procedure 0x40181e
	.globl sub_40181e
	.type sub_40181e, @function
sub_40181e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401820

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
	#Procedure 0x401837
	.globl sub_401837
	.type sub_401837, @function
sub_401837:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401840
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
	#Procedure 0x401873
	.globl sub_401873
	.type sub_401873, @function
sub_401873:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401880
	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:

	push	rbx
	sub	rsp, 0x90
	mov	rax, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, rax
	call	__xstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_33
	mov	ebx, dword ptr [rsp + 0x18]
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], ebx
	mov	dword ptr [rax + 0xc], 0xfff
	mov	byte ptr [rax + 0x11], 0
.label_33:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4018d7
	.globl sub_4018d7
	.type sub_4018d7, @function
sub_4018d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018e0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
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
	#Procedure 0x401935
	.globl sub_401935
	.type sub_401935, @function
sub_401935:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401940
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
	je	.label_35
	test	r15, r15
	je	.label_34
.label_35:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_34:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401982
	.globl sub_401982
	.type sub_401982, @function
sub_401982:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401990
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x401998
	.globl sub_401998
	.type sub_401998, @function
sub_401998:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019a0
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
	je	.label_37
	test	r14, r14
	je	.label_36
.label_37:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_36:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4019d6
	.globl sub_4019d6
	.type sub_4019d6, @function
sub_4019d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_48
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_50
.label_48:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_50:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_39
	cmp	r10d, 0x29
	jae	.label_47
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_49
.label_47:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_49:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_39
	cmp	r10d, 0x29
	jae	.label_45
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_46
.label_45:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_46:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_39
	cmp	r10d, 0x29
	jae	.label_43
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_44
.label_43:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_44:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_39
	cmp	r10d, 0x29
	jae	.label_41
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_42
.label_41:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_42:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_39
	cmp	r10d, 0x29
	jae	.label_38
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_40
.label_38:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_40:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_39
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_39
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_39
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_39
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_39:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x401bc2
	.globl sub_401bc2
	.type sub_401bc2, @function
sub_401bc2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401bd0
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
	#Procedure 0x401be8
	.globl sub_401be8
	.type sub_401be8, @function
sub_401be8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401bf0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_64
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_66
	mov	ecx, OFFSET FLAT:label_61
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_57
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_57
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_57:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_61
	mov	ecx, OFFSET FLAT:label_55
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_55
	mov	ecx, OFFSET FLAT:label_56
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_64:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
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
	#Procedure 0x401deb
	.globl sub_401deb
	.type sub_401deb, @function
sub_401deb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401df0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_70
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_70
	test	byte ptr [rbx + 1], 1
	je	.label_70
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_70:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x401e23
	.globl sub_401e23
	.type sub_401e23, @function
sub_401e23:

	nop	word ptr cs:[rax + rax]
.label_71:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401e35
	.globl sub_401e35
	.type sub_401e35, @function
sub_401e35:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e3b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_72
	test	rax, rax
	je	.label_71
.label_72:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e50

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
	je	.label_82
	mov	edx, OFFSET FLAT:label_88
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_75
.label_82:
	mov	edx, OFFSET FLAT:label_77
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_75:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
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
	mov	esi, OFFSET FLAT:label_78
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_83
	jmp	qword ptr [(r12 * 8) + label_84]
.label_462:
	add	rsp, 8
	jmp	.label_76
.label_83:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
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
	jmp	.label_76
.label_463:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
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
.label_464:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
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
.label_465:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
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
.label_466:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
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
	jmp	.label_76
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
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
	jmp	.label_76
.label_468:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
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
	jmp	.label_76
.label_469:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
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
	jmp	.label_76
.label_471:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
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
	jmp	.label_76
.label_470:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
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
.label_76:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4021a8
	.globl sub_4021a8
	.type sub_4021a8, @function
sub_4021a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021b0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4021ba
	.globl sub_4021ba
	.type sub_4021ba, @function
sub_4021ba:

	nop	word ptr [rax + rax]
.label_92:
	call	xalloc_die
.label_93:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_94
	test	rax, rax
	je	.label_92
.label_94:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4021d9

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_93
	test	rbx, rbx
	jne	.label_93
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4021f0
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
	je	.label_95
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
.label_95:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402251
	.globl sub_402251
	.type sub_402251, @function
sub_402251:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402260
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
	#Procedure 0x40226f
	.globl sub_40226f
	.type sub_40226f, @function
sub_40226f:

	nop	
.label_97:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_96
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_96:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022a4
	.globl sub_4022a4
	.type sub_4022a4, @function
sub_4022a4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4022a6

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
	jne	.label_98
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_98
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_97
.label_98:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x4022e0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_99
	test	rdx, rdx
	je	.label_99
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_99:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40234e
	.globl sub_40234e
	.type sub_40234e, @function
sub_40234e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402350
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
	#Procedure 0x40235f
	.globl sub_40235f
	.type sub_40235f, @function
sub_40235f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402360
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40236a
	.globl sub_40236a
	.type sub_40236a, @function
sub_40236a:

	nop	word ptr [rax + rax]
.label_100:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402375
	.globl sub_402375
	.type sub_402375, @function
sub_402375:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40237b
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_100
	test	rdx, rdx
	je	.label_100
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023e0
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
	#Procedure 0x4023f9
	.globl sub_4023f9
	.type sub_4023f9, @function
sub_4023f9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402400

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_102
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402430
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_103
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_104
	test	rax, rax
	je	.label_103
.label_104:
	pop	rbx
	ret	
.label_103:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402465
	.globl sub_402465
	.type sub_402465, @function
sub_402465:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402470
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_109
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_106
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_105
.label_110:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4024a2
	.globl sub_4024a2
	.type sub_4024a2, @function
sub_4024a2:

	nop	word ptr [rax + rax]
.label_109:
	test	rcx, rcx
	jne	.label_108
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_108:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_110
.label_105:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_107
	test	rbx, rbx
	jne	.label_107
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_107:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_111
	test	rax, rax
	je	.label_106
.label_111:
	pop	rbx
	ret	
.label_106:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402510

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_112
	test	rsi, rsi
	mov	ecx, 1
	je	.label_113
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_113
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_112:
	mov	ecx, 1
.label_113:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x40255b
	.globl sub_40255b
	.type sub_40255b, @function
sub_40255b:

	nop	dword ptr [rax + rax]
.label_114:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x40256c
	.globl sub_40256c
	.type sub_40256c, @function
sub_40256c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402578

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_114
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_116
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_114
.label_116:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_114
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_115
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_115:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025e0
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
	#Procedure 0x4026a1
	.globl sub_4026a1
	.type sub_4026a1, @function
sub_4026a1:

	nop	word ptr cs:[rax + rax]
.label_117:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4026b5
	.globl sub_4026b5
	.type sub_4026b5, @function
sub_4026b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026c0
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
	je	.label_117
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
	#Procedure 0x402750

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	bl, byte ptr [r14]
	mov	eax, ebx
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_136
	xor	eax, eax
	xor	r15d, r15d
	mov	rdx, r14
	nop	
.label_121:
	movsx	ecx, bl
	lea	r15d, [rcx + r15*8 - 0x30]
	cmp	r15d, 0xfff
	ja	.label_129
	movzx	ebx, byte ptr [rdx + 1]
	inc	rdx
	mov	ecx, ebx
	and	cl, 0xf8
	cmp	cl, 0x30
	je	.label_121
	xor	eax, eax
	test	bl, bl
	jne	.label_129
	sub	rdx, r14
	mov	eax, r15d
	and	eax, 0xc00
	or	eax, 0x3ff
	cmp	rdx, 5
	mov	ebx, 0xfff
	cmovl	ebx, eax
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], r15d
	mov	dword ptr [rax + 0xc], ebx
	mov	byte ptr [rax + 0x11], 0
	jmp	.label_129
.label_136:
	lea	rax, [r14 + 1]
	mov	edi, 1
	jmp	.label_140
	.section	.text
	.align	32
	#Procedure 0x4027ef
	.globl sub_4027ef
	.type sub_4027ef, @function
sub_4027ef:

	nop	
.label_120:
	add	rdi, rdx
	movzx	ebx, byte ptr [rax]
	inc	rax
.label_140:
	cmp	bl, 0x2c
	jle	.label_142
	cmp	bl, 0x2d
	je	.label_144
	cmp	bl, 0x3d
	mov	edx, 1
	je	.label_120
	jmp	.label_125
	.section	.text
	.align	32
	#Procedure 0x40280f
	.globl sub_40280f
	.type sub_40280f, @function
sub_40280f:

	nop	
.label_142:
	cmp	bl, 0x2b
	mov	edx, 1
	je	.label_120
	test	bl, bl
	je	.label_130
.label_125:
	xor	edx, edx
	jmp	.label_120
	.section	.text
	.align	32
	#Procedure 0x402822
	.globl sub_402822
	.type sub_402822, @function
sub_402822:

	nop	word ptr cs:[rax + rax]
.label_144:
	mov	edx, 1
	jmp	.label_120
.label_130:
	mov	rax, rdi
	shr	rax, 0x3b
	jne	.label_133
	shl	rdi, 4
	call	xmalloc
	xor	r9d, r9d
	movabs	r8, 0x2000280000000000
	jmp	.label_135
	.section	.text
	.align	32
	#Procedure 0x40285c

	.globl sub_40285c
	.type sub_40285c, @function
sub_40285c:
	inc	r14
	nop	
.label_135:
	xor	esi, esi
	jmp	.label_127
	.section	.text
	.align	32
	#Procedure 0x402864
	.globl sub_402864
	.type sub_402864, @function
sub_402864:

	nop	word ptr cs:[rax + rax]
.label_391:
	or	esi, 0x207
	inc	r14
.label_127:
	movzx	edx, byte ptr [r14]
	movsx	ecx, dl
	lea	edi, [rcx - 0x61]
	cmp	edi, 0x14
	ja	.label_143
	jmp	qword ptr [(rdi * 8) + label_122]
.label_389:
	or	esi, 0xfff
	inc	r14
	jmp	.label_127
	.section	.text
	.align	32
	#Procedure 0x40289a
	.globl sub_40289a
	.type sub_40289a, @function
sub_40289a:

	nop	word ptr [rax + rax]
.label_390:
	or	esi, 0x438
	inc	r14
	jmp	.label_127
	.section	.text
	.align	32
	#Procedure 0x4028ab
	.globl sub_4028ab
	.type sub_4028ab, @function
sub_4028ab:

	nop	dword ptr [rax + rax]
.label_392:
	or	esi, 0x9c0
	inc	r14
	jmp	.label_127
	.section	.text
	.align	32
	#Procedure 0x4028bb
	.globl sub_4028bb
	.type sub_4028bb, @function
sub_4028bb:

	nop	dword ptr [rax + rax]
.label_143:
	mov	edi, ecx
	cmp	ecx, 0x3d
	ja	.label_119
	bt	r8, rdi
	jae	.label_119
.label_386:
	lea	rbx, [r14 + 1]
	movsx	ecx, byte ptr [r14 + 1]
	mov	edi, ecx
	add	edi, -0x30
	cmp	edi, 0x45
	ja	.label_138
	jmp	qword ptr [(rdi * 8) + label_141]
.label_458:
	xor	edi, edi
	mov	r14, rbx
	nop	word ptr cs:[rax + rax]
.label_128:
	movsx	ecx, cl
	lea	edi, [rcx + rdi*8 - 0x30]
	cmp	edi, 0xfff
	ja	.label_119
	mov	cl, byte ptr [r14 + 1]
	inc	r14
	mov	ebx, ecx
	and	bl, 0xf8
	cmp	bl, 0x30
	je	.label_128
	test	esi, esi
	jne	.label_119
	mov	r11b, 1
	mov	esi, 0xfff
	test	cl, cl
	je	.label_123
	cmp	cl, 0x2c
	mov	r10d, 0xfff
	je	.label_134
	jmp	.label_119
.label_123:
	mov	r10d, 0xfff
	jmp	.label_134
.label_138:
	mov	r11b, 1
	xor	r10d, r10d
	mov	r14, rbx
	xor	edi, edi
	jmp	.label_124
	.section	.text
	.align	32
	#Procedure 0x402964
	.globl sub_402964
	.type sub_402964, @function
sub_402964:

	nop	word ptr cs:[rax + rax]
.label_137:
	mov	cl, byte ptr [r14 + 1]
	inc	r14
	mov	r11d, ebx
.label_124:
	movsx	ecx, cl
	add	ecx, -0x58
	cmp	ecx, 0x20
	ja	.label_134
	mov	bl, 2
	jmp	qword ptr [(rcx * 8) + label_131]
.label_363:
	or	edi, 0x124
	jmp	.label_126
.label_364:
	or	edi, 0xc00
	jmp	.label_126
.label_365:
	or	edi, 0x200
	jmp	.label_126
.label_366:
	or	edi, 0x92
	jmp	.label_126
.label_367:
	or	edi, 0x49
	nop	word ptr cs:[rax + rax]
.label_126:
	mov	ebx, r11d
	jmp	.label_137
.label_459:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 0x38
	jmp	.label_134
.label_460:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 7
	jmp	.label_134
.label_461:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 0x1c0
	nop	word ptr cs:[rax + rax]
.label_134:
	mov	rcx, r9
	shl	rcx, 4
	mov	byte ptr [rax + rcx], dl
	mov	byte ptr [rax + rcx + 1], r11b
	mov	dword ptr [rax + rcx + 4], esi
	mov	dword ptr [rax + rcx + 8], edi
	test	r10d, r10d
	jne	.label_118
	cmp	esi, 1
	sbb	r10d, r10d
	or	r10d, esi
	and	r10d, edi
.label_118:
	inc	r9
	mov	dword ptr [rax + rcx + 0xc], r10d
	mov	dl, byte ptr [r14]
	mov	ecx, edx
	add	cl, 0xd5
	movzx	ecx, cl
	cmp	cl, 0x12
	ja	.label_132
	jmp	qword ptr [(rcx * 8) + label_139]
.label_132:
	test	dl, dl
	jne	.label_119
	shl	r9, 4
	mov	byte ptr [rax + r9 + 1], 0
	jmp	.label_129
.label_119:
	mov	rdi, rax
	call	free
	xor	eax, eax
.label_129:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_133:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402a6c
	.globl sub_402a6c
	.type sub_402a6c, @function
sub_402a6c:

	nop	dword ptr [rax]
.label_145:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402a75
	.globl sub_402a75
	.type sub_402a75, @function
sub_402a75:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402a79
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_145
	test	rsi, rsi
	je	.label_145
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
	#Procedure 0x402ae0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ae8
	.globl sub_402ae8
	.type sub_402ae8, @function
sub_402ae8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402af0
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
	#Procedure 0x402b03
	.globl sub_402b03
	.type sub_402b03, @function
sub_402b03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b10
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
	je	.label_146
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
.label_146:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402b78
	.globl sub_402b78
	.type sub_402b78, @function
sub_402b78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b80

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_148
	cmp	byte ptr [rax], 0x43
	jne	.label_150
	cmp	byte ptr [rax + 1], 0
	je	.label_147
.label_150:
	mov	esi, OFFSET FLAT:label_149
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_148
.label_147:
	xor	ebx, ebx
.label_148:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bb1
	.globl sub_402bb1
	.type sub_402bb1, @function
sub_402bb1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bc0
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
	je	.label_151
	mov	qword ptr [rax], rbx
.label_151:
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
	#Procedure 0x402cac
	.globl sub_402cac
	.type sub_402cac, @function
sub_402cac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402cb0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_157
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_154
	cmp	dword ptr [rbp], 0x20
	jne	.label_154
.label_157:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_153
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_152:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_156
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_153:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_154:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_152
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_102
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_158:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402d75
	.globl sub_402d75
	.type sub_402d75, @function
sub_402d75:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402d79
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
	je	.label_158
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
	#Procedure 0x402de0
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
	#Procedure 0x402e55
	.globl sub_402e55
	.type sub_402e55, @function
sub_402e55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e60
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_159
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_161:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_161
.label_159:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_162
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_163], OFFSET FLAT:slot0
.label_162:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_160
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_160:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ef1
	.globl sub_402ef1
	.type sub_402ef1, @function
sub_402ef1:

	nop	word ptr cs:[rax + rax]
.label_164:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402f06
	.globl sub_402f06
	.type sub_402f06, @function
sub_402f06:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f0b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_164
	test	rdx, rdx
	je	.label_164
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f30

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
	jne	.label_166
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_165
	test	cl, cl
	jne	.label_165
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_165
.label_166:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_165
	call	__errno_location
	mov	dword ptr [rax], 0
.label_165:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f90
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
	#Procedure 0x402fa8
	.globl sub_402fa8
	.type sub_402fa8, @function
sub_402fa8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fb0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_167
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_167:
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
	#Procedure 0x403033
	.globl sub_403033
	.type sub_403033, @function
sub_403033:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403040
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_169
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_171
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_66
	mov	ecx, OFFSET FLAT:label_61
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_170
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x4030b4
	.globl sub_4030b4
	.type sub_4030b4, @function
sub_4030b4:

	nop	word ptr cs:[rax + rax]
.label_174:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4030c5
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_173
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_175
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_176
	call	free
	xor	eax, eax
	jmp	.label_172
.label_175:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4030fc
	.globl sub_4030fc
	.type sub_4030fc, @function
sub_4030fc:

	nop	word ptr cs:[rax + rax]
.label_173:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_174
	mov	qword ptr [rsi], rbx
.label_176:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_172
	test	rax, rax
	je	.label_174
.label_172:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403130

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
	jmp	.label_186
	.section	.text
	.align	32
	#Procedure 0x4031df
	.globl sub_4031df
	.type sub_4031df, @function
sub_4031df:

	nop	
.label_184:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_181
	or	al, dl
	jne	.label_181
	test	dil, 1
	jne	.label_183
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_181
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_186
	jmp	.label_181
.label_451:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_191
	test	rbp, rbp
	je	.label_196
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_196:
	mov	r14d, 1
	jmp	.label_199
.label_452:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_200
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_201
.label_191:
	xor	r14d, r14d
.label_199:
	mov	eax, OFFSET FLAT:label_200
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_274
	.section	.text
	.align	32
	#Procedure 0x4032af
	.globl sub_4032af
	.type sub_4032af, @function
sub_4032af:

	nop	
.label_186:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_221
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_228]
.label_453:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_236
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_293
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_454:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_249
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_249
	xor	r14d, r14d
	nop	
.label_294:
	cmp	r14, rbp
	jae	.label_262
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_262:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_294
.label_249:
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
	jmp	.label_201
.label_446:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_201
.label_449:
	mov	al, 1
.label_447:
	mov	r12b, 1
.label_450:
	test	r12b, 1
	mov	cl, 1
	je	.label_281
	mov	ecx, eax
.label_281:
	mov	al, cl
.label_448:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_283
	test	rbp, rbp
	je	.label_289
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_289:
	mov	r14d, 1
	jmp	.label_290
.label_283:
	xor	r14d, r14d
.label_290:
	mov	ecx, OFFSET FLAT:label_293
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_274:
	mov	sil, r12b
.label_201:
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
	jmp	.label_298
	.section	.text
	.align	32
	#Procedure 0x403471
	.globl sub_403471
	.type sub_403471, @function
sub_403471:

	nop	word ptr cs:[rax + rax]
.label_286:
	inc	r12
.label_298:
	cmp	r11, -1
	je	.label_208
	cmp	r12, r11
	jne	.label_210
	jmp	.label_212
	.section	.text
	.align	32
	#Procedure 0x403493
	.globl sub_403493
	.type sub_403493, @function
sub_403493:

	nop	word ptr cs:[rax + rax]
.label_208:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_215
.label_210:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_222
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_197
	cmp	r11, -1
	jne	.label_197
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_197:
	cmp	rbx, r11
	jbe	.label_239
.label_222:
	xor	esi, esi
.label_223:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_242
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_246]
.label_419:
	test	r12, r12
	jne	.label_195
	jmp	.label_230
	.section	.text
	.align	32
	#Procedure 0x403526
	.globl sub_403526
	.type sub_403526, @function
sub_403526:

	nop	word ptr cs:[rax + rax]
.label_239:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_265
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_223
	jmp	.label_190
.label_265:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_223
.label_423:
	xor	eax, eax
	cmp	r11, -1
	je	.label_277
	test	r12, r12
	jne	.label_279
	cmp	r11, 1
	je	.label_230
	xor	r13d, r13d
	jmp	.label_180
.label_412:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_285
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_190
	cmp	r8d, 2
	jne	.label_253
	mov	eax, r9d
	and	al, 1
	jne	.label_253
	cmp	r14, rbp
	jae	.label_245
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_245:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_295
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_295:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_301
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_301:
	add	r14, 3
	mov	r9b, 1
.label_253:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_182
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_182:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_188
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_188
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_188
	cmp	r14, rbp
	jae	.label_297
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_297:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_243
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_243:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_180
.label_413:
	mov	bl, 0x62
	jmp	.label_209
.label_414:
	mov	cl, 0x74
	jmp	.label_202
.label_415:
	mov	bl, 0x76
	jmp	.label_209
.label_416:
	mov	bl, 0x66
	jmp	.label_209
.label_417:
	mov	cl, 0x72
	jmp	.label_202
.label_420:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_218
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_207
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
	jae	.label_229
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_229:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_244
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_244:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_248
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_248:
	add	r14, 3
	xor	r9d, r9d
.label_218:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_180
.label_421:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_256
	cmp	r8d, 2
	jne	.label_195
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_195
	jmp	.label_207
.label_422:
	cmp	r8d, 2
	jne	.label_269
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_207
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_273
.label_242:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_275
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_282
.label_277:
	test	r12, r12
	jne	.label_291
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_291
.label_230:
	mov	dl, 1
.label_418:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_207
	xor	eax, eax
	mov	r13b, dl
.label_180:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_299
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_302
	jmp	.label_177
	.section	.text
	.align	32
	#Procedure 0x403804
	.globl sub_403804
	.type sub_403804, @function
sub_403804:

	nop	word ptr cs:[rax + rax]
.label_299:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_177
.label_302:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_211
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_187
	.section	.text
	.align	32
	#Procedure 0x40383d
	.globl sub_40383d
	.type sub_40383d, @function
sub_40383d:

	nop	dword ptr [rax]
.label_177:
	test	sil, sil
.label_187:
	mov	ebx, r15d
	je	.label_204
	jmp	.label_194
.label_211:
	mov	ebx, r15d
	jmp	.label_194
.label_285:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_286
	xor	r15d, r15d
	jmp	.label_195
.label_269:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_202
	xor	eax, eax
	mov	r15b, 0x5c
.label_273:
	xor	r13d, r13d
	jmp	.label_204
.label_202:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_207
.label_209:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_180
	nop	
.label_194:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_190
	cmp	r8d, 2
	jne	.label_220
	mov	eax, r9d
	and	al, 1
	jne	.label_220
	cmp	r14, rbp
	jae	.label_226
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_226:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_251
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_251:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_234
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_234:
	add	r14, 3
	mov	r9b, 1
.label_220:
	cmp	r14, rbp
	jae	.label_241
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_241:
	inc	r14
	jmp	.label_179
.label_275:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_247
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_247:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_240
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_233:
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
	je	.label_270
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_278
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_178
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_287
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_219:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_205
	bt	rsi, rdx
	jb	.label_207
.label_205:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_219
.label_287:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_258
	xor	r13d, r13d
.label_258:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_233
	jmp	.label_189
.label_188:
	xor	r13d, r13d
	jmp	.label_180
.label_291:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_180
.label_256:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_195
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_195
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_195
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_206
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_259
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_214
	cmp	r14, rbp
	jae	.label_216
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_216:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_224
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_224:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_192
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_192:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_250
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_250:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_259:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_180
.label_195:
	xor	eax, eax
.label_279:
	xor	r13d, r13d
	jmp	.label_180
.label_240:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_254:
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
	je	.label_266
	cmp	rbp, -1
	je	.label_268
	cmp	rbp, -2
	je	.label_270
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_272
	xor	r13d, r13d
.label_272:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_254
	jmp	.label_189
.label_270:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_235
	lea	rax, [r10 + r12]
.label_300:
	cmp	byte ptr [rax + rsi], 0
	je	.label_235
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_300
.label_235:
	mov	qword ptr [rsp + 0x40], rsi
.label_278:
	xor	r13d, r13d
	jmp	.label_178
.label_268:
	xor	r13d, r13d
.label_266:
	mov	r10, qword ptr [rsp + 0x28]
.label_178:
	mov	r12, qword ptr [rsp + 0x40]
.label_189:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_282:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_213
	test	al, al
	je	.label_213
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_180
.label_213:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_185
	.section	.text
	.align	32
	#Procedure 0x403c37
	.globl sub_403c37
	.type sub_403c37, @function
sub_403c37:

	nop	word ptr [rax + rax]
.label_255:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_185:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_193
	test	sil, 1
	je	.label_203
	cmp	r14, rbp
	jae	.label_198
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_198:
	inc	r14
	xor	esi, esi
	jmp	.label_203
	.section	.text
	.align	32
	#Procedure 0x403c75
	.globl sub_403c75
	.type sub_403c75, @function
sub_403c75:

	nop	word ptr cs:[rax + rax]
.label_193:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_190
	cmp	r8d, 2
	jne	.label_263
	mov	eax, r9d
	and	al, 1
	jne	.label_263
	cmp	r14, rbp
	jae	.label_303
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_303:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_217
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_217:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_280
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_280:
	add	r14, 3
	mov	r9b, 1
.label_263:
	cmp	r14, rbp
	jae	.label_232
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_232:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_276
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_276:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_292
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_292:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_203:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_204
	test	r9b, 1
	je	.label_260
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_257
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_264
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_264:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_271
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_271:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_260
	.section	.text
	.align	32
	#Procedure 0x403d86
	.globl sub_403d86
	.type sub_403d86, @function
sub_403d86:

	nop	word ptr cs:[rax + rax]
.label_257:
	mov	rbx, rcx
.label_260:
	cmp	r14, rbp
	jae	.label_255
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_255
	.section	.text
	.align	32
	#Procedure 0x403dae
	.globl sub_403dae
	.type sub_403dae, @function
sub_403dae:

	nop	
.label_204:
	test	r9b, 1
	je	.label_284
	and	al, 1
	jne	.label_284
	cmp	r14, rbp
	jae	.label_288
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_288:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_225
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_225:
	add	r14, 2
	xor	r9d, r9d
.label_284:
	mov	ebx, r15d
.label_179:
	cmp	r14, rbp
	jae	.label_296
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_296:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_286
.label_206:
	xor	r13d, r13d
	jmp	.label_180
	.section	.text
	.align	32
	#Procedure 0x403e11
	.globl sub_403e11
	.type sub_403e11, @function
sub_403e11:

	nop	word ptr cs:[rax + rax]
.label_212:
	mov	rcx, r12
.label_215:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_184
	or	al, dl
	jne	.label_184
	mov	r11, rcx
	jmp	.label_190
.label_207:
	mov	eax, 2
.label_267:
	mov	qword ptr [rsp + 0x38], rax
.label_190:
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
.label_252:
	mov	r14, rax
.label_261:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_181:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_227
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_231
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_231
	inc	rdx
	nop	dword ptr [rax + rax]
.label_238:
	cmp	r14, rbp
	jae	.label_237
	mov	byte ptr [rcx + r14], al
.label_237:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_238
	jmp	.label_231
.label_183:
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
	jmp	.label_252
.label_227:
	mov	rcx, qword ptr [rsp + 0x10]
.label_231:
	cmp	r14, rbp
	jae	.label_261
	mov	byte ptr [rcx + r14], 0
	jmp	.label_261
.label_214:
	mov	eax, 5
	jmp	.label_267
.label_221:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403f60
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_304:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_304
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x403f81
	.globl sub_403f81
	.type sub_403f81, @function
sub_403f81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f90

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
	je	.label_305
	cmp	r15, -2
	jb	.label_305
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_305
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_305:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403fe6
	.globl sub_403fe6
	.type sub_403fe6, @function
sub_403fe6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ff0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_306
	test	rsi, rsi
	je	.label_306
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_306:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404060
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_307
	call	rpl_calloc
	test	rax, rax
	je	.label_307
	pop	rcx
	ret	
.label_307:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404086
	.globl sub_404086
	.type sub_404086, @function
sub_404086:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404090

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
	je	.label_308
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
.label_308:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4040f8
	.globl sub_4040f8
	.type sub_4040f8, @function
sub_4040f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404100
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x404111
	.globl sub_404111
	.type sub_404111, @function
sub_404111:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404120

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_9
	call	setlocale
	mov	edi, OFFSET FLAT:label_311
	mov	esi, OFFSET FLAT:label_328
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_311
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	ebx, ebx
	jmp	.label_319
	.section	.text
	.align	32
	#Procedure 0x40416f
	.globl sub_40416f
	.type sub_40416f, @function
sub_40416f:

	nop	
.label_315:
	mov	rbx, qword ptr [rip + optarg]
.label_319:
	mov	edx, OFFSET FLAT:label_335
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x59
	jle	.label_312
	cmp	eax, 0x5a
	je	.label_313
	cmp	eax, 0x6d
	je	.label_315
	jmp	.label_316
	.section	.text
	.align	32
	#Procedure 0x4041a3
	.globl sub_4041a3
	.type sub_4041a3, @function
sub_4041a3:

	nop	word ptr cs:[rax + rax]
.label_313:
	cmp	qword ptr [rip + optarg],  0
	je	.label_319
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_319
.label_312:
	cmp	eax, -1
	jne	.label_332
	mov	eax, dword ptr [rip + optind]
	cmp	eax, r14d
	je	.label_333
	mov	r12d, 0x1b6
	test	rbx, rbx
	je	.label_334
	mov	rdi, rbx
	call	mode_compile
	mov	r13, rax
	test	r13, r13
	je	.label_310
	xor	edi, edi
	call	umask
	mov	ebp, eax
	mov	edi, ebp
	call	umask
	mov	edi, 0x1b6
	xor	esi, esi
	xor	r8d, r8d
	mov	edx, ebp
	mov	rcx, r13
	call	mode_adjust
	mov	r12d, eax
	mov	rdi, r13
	call	free
	cmp	r12d, 0x1ff
	ja	.label_327
	mov	eax, dword ptr [rip + optind]
.label_334:
	xor	ebp, ebp
	cmp	eax, r14d
	jge	.label_321
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_314
	nop	dword ptr [rax]
.label_318:
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	mov	esi, r12d
	call	mkfifo
	test	eax, eax
	je	.label_337
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rsi, qword ptr [r15 + rax*8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	jmp	.label_320
.label_337:
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8]
	mov	esi, r12d
	call	chmod
	test	eax, eax
	je	.label_331
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_317
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rsi, qword ptr [r15 + rax*8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_320:
	call	error
	mov	ebp, 1
.label_331:
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r14d
	jl	.label_318
	jmp	.label_321
	.section	.text
	.align	32
	#Procedure 0x404336
	.globl sub_404336
	.type sub_404336, @function
sub_404336:

	nop	word ptr cs:[rax + rax]
.label_314:
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	mov	esi, r12d
	call	mkfifo
	test	eax, eax
	je	.label_329
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rsi, qword ptr [r15 + rax*8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	ebp, 1
.label_329:
	mov	eax, dword ptr [rip + optind]
	inc	eax
	mov	dword ptr [rip + optind],  eax
	cmp	eax, r14d
	jl	.label_314
.label_321:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_332:
	cmp	eax, 0xffffff7d
	je	.label_325
	cmp	eax, 0xffffff7e
	jne	.label_316
	xor	edi, edi
	call	usage
.label_333:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
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
.label_325:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_55
	mov	edx, OFFSET FLAT:label_66
	mov	r8d, OFFSET FLAT:label_336
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_316:
	mov	edi, 1
	call	usage
.label_310:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
	jmp	.label_323
.label_327:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_326
.label_323:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404470
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_13]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_15]
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
	#Procedure 0x4044df
	.globl sub_4044df
	.type sub_4044df, @function
sub_4044df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4044e0

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
	je	.label_338
	test	r15, r15
	je	.label_339
.label_338:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_339:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40451c
	.globl sub_40451c
	.type sub_40451c, @function
sub_40451c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404520

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
	jne	.label_345
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_341
	cmp	ecx, 0x55
	jne	.label_340
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_340
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_340
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_340
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_340
	cmp	byte ptr [rax + 5], 0
	jne	.label_340
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_347
	mov	eax, OFFSET FLAT:label_348
	jmp	.label_344
.label_341:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_340
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_340
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_340
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_340
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_340
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_340
	cmp	byte ptr [rax + 7], 0
	je	.label_346
.label_340:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_200
	mov	eax, OFFSET FLAT:label_293
.label_344:
	cmove	rax, rcx
.label_345:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_346:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_342
	mov	eax, OFFSET FLAT:label_343
	jmp	.label_344
	.section	.text
	.align	32
	#Procedure 0x4045e5
	.globl sub_4045e5
	.type sub_4045e5, @function
sub_4045e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045f0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4045fe
	.globl sub_4045fe
	.type sub_4045fe, @function
sub_4045fe:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404600

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
	js	.label_349
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_352
	cmp	r12d, 0x7fffffff
	je	.label_354
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
	jne	.label_350
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_350:
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
.label_352:
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
	jbe	.label_355
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_351
.label_355:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_353
	mov	rdi, r14
	call	free
.label_353:
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
.label_351:
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
.label_349:
	call	abort
.label_354:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4047bd
	.globl sub_4047bd
	.type sub_4047bd, @function
sub_4047bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404825
	.globl sub_404825
	.type sub_404825, @function
sub_404825:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404832
	.globl sub_404832
	.type sub_404832, @function
sub_404832:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404856
	.globl sub_404856
	.type sub_404856, @function
sub_404856:

	nop	word ptr cs:[rax + rax]

	.section	.text
	.align	16
	#Procedure 0x401b19
	.globl sub_401b19
	.type sub_401b19, @function
sub_401b19:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401b1a
	.globl sub_401b1a
	.type sub_401b1a, @function
sub_401b1a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b52
	.globl sub_401b52
	.type sub_401b52, @function
sub_401b52:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b9a
	.globl sub_401b9a
	.type sub_401b9a, @function
sub_401b9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bbc
	.globl sub_401bbc
	.type sub_401bbc, @function
sub_401bbc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401bcd
	.globl sub_401bcd
	.type sub_401bcd, @function
sub_401bcd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401be6
	.globl sub_401be6
	.type sub_401be6, @function
sub_401be6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401bf0

	.globl dbg_printf
	.type dbg_printf, @function
dbg_printf:
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, rdi
	test	al, al
	je	.label_9
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_9:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 0x28], rsi
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_10
	mov	esi, 6
	mov	edx, 1
	call	fwrite
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 8
	mov	rdi, qword ptr [rip + stderr]
	lea	rcx, [rsp]
	mov	esi, 1
	mov	rdx, rbx
	call	__vfprintf_chk
	add	rsp, 0xd0
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401cb1
	.globl sub_401cb1
	.type sub_401cb1, @function
sub_401cb1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cc0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x401cca
	.globl sub_401cca
	.type sub_401cca, @function
sub_401cca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cd0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401cda
	.globl sub_401cda
	.type sub_401cda, @function
sub_401cda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ce0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_11
	test	rdx, rdx
	je	.label_11
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_11:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x401d0b
	.globl sub_401d0b
	.type sub_401d0b, @function
sub_401d0b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d10

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_12
	test	rax, rax
	je	.label_13
.label_12:
	pop	rbx
	ret	
.label_13:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401d2a
	.globl sub_401d2a
	.type sub_401d2a, @function
sub_401d2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d30
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_14
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_15
	test	rax, rax
	je	.label_14
.label_15:
	pop	rbx
	ret	
.label_14:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401d65
	.globl sub_401d65
	.type sub_401d65, @function
sub_401d65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d70

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_19
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_16:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_17
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_21
	cmp	qword ptr [rsp + 8], -1
	je	.label_22
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_18
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_17
.label_18:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_17
.label_22:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_17:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_16
	jmp	.label_20
.label_19:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_20:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_21:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e6d
	.globl sub_401e6d
	.type sub_401e6d, @function
sub_401e6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e70
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
	.align	16
	#Procedure 0x401ea6
	.globl sub_401ea6
	.type sub_401ea6, @function
sub_401ea6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401eb0

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_23
	nop	word ptr [rax + rax]
.label_24:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_24
.label_23:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ed2
	.globl sub_401ed2
	.type sub_401ed2, @function
sub_401ed2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ee0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	16
	#Procedure 0x401ef7
	.globl sub_401ef7
	.type sub_401ef7, @function
sub_401ef7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f00
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rsi, [rsp + 8]
	xor	edi, edi
	call	clock_gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f1f
	.globl sub_401f1f
	.type sub_401f1f, @function
sub_401f1f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401f20
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
	.align	16
	#Procedure 0x401f53
	.globl sub_401f53
	.type sub_401f53, @function
sub_401f53:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f60
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401f6a
	.globl sub_401f6a
	.type sub_401f6a, @function
sub_401f6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f70

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_25
	test	rsi, rsi
	mov	ecx, 1
	je	.label_26
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_26
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_25:
	mov	ecx, 1
.label_26:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x401fbb
	.globl sub_401fbb
	.type sub_401fbb, @function
sub_401fbb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fc0

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r15, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_27
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_28
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_31
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	localtime_r
	test	rax, rax
	je	.label_29
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x10]
	xor	rax, qword ptr [r15]
	xor	rcx, qword ptr [r15 + 8]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x18]
	xor	rax, qword ptr [r15 + 0x10]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [r15 + 0x20]
	mov	edx, dword ptr [rsp + 0x28]
	test	edi, edi
	sete	sil
	test	edx, edx
	sete	cl
	xor	cl, sil
	or	edx, edi
	setns	dl
	and	dl, cl
	movzx	ecx, dl
	or	ecx, eax
	jne	.label_29
.label_31:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_29
	mov	qword ptr [rsp], -1
.label_29:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_28
	mov	rax, qword ptr [rsp]
	jmp	.label_30
.label_28:
	mov	rax, -1
.label_30:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_27:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	.section	.text
	.align	16
	#Procedure 0x4020b4
	.globl sub_4020b4
	.type sub_4020b4, @function
sub_4020b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020c0

	.globl parse_datetime2
	.type parse_datetime2, @function
parse_datetime2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x3e8
	mov	qword ptr [rsp + 0x58], r9
	mov	r13, r8
	mov	r14d, ecx
	mov	r15, rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 0x60], rdi
	mov	rdi, r12
	call	strlen
	mov	qword ptr [rsp + 0x78], rax
	test	r15, r15
	jne	.label_87
	lea	r15, [rsp + 0x370]
	mov	rdi, r15
	call	gettime
.label_87:
	mov	rax, qword ptr [r15]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rsp + 0x50], rax
	movzx	eax, byte ptr [r12]
	add	eax, -9
	cmp	eax, 0x17
	mov	rbp, r12
	ja	.label_91
	mov	ecx, 0x80001f
	mov	rbp, r12
	nop	word ptr cs:[rax + rax]
.label_103:
	bt	ecx, eax
	jae	.label_91
	movzx	eax, byte ptr [rbp + 1]
	inc	rbp
	add	eax, -9
	cmp	eax, 0x18
	jb	.label_103
.label_91:
	mov	esi, OFFSET FLAT:label_105
	mov	edx, 4
	mov	rdi, rbp
	call	strncmp
	test	eax, eax
	jne	.label_110
	lea	rbx, [rbp + 4]
	mov	edi, 1
	mov	rax, rbx
	jmp	.label_111
	.section	.text
	.align	16
	#Procedure 0x402178
	.globl sub_402178
	.type sub_402178, @function
sub_402178:

	nop	dword ptr [rax + rax]
.label_128:
	inc	rax
	inc	rdi
.label_111:
	movzx	ecx, byte ptr [rax]
	cmp	cl, 0x5c
	je	.label_123
	test	cl, cl
	je	.label_110
	cmp	cl, 0x22
	jne	.label_128
	jmp	.label_131
	.section	.text
	.align	16
	#Procedure 0x40219c
	.globl sub_40219c
	.type sub_40219c, @function
sub_40219c:

	nop	dword ptr [rax]
.label_123:
	movzx	ecx, byte ptr [rax + 1]
	inc	rax
	cmp	cl, 0x22
	je	.label_128
	cmp	cl, 0x5c
	je	.label_128
.label_110:
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	mov	rbx, r13
.label_232:
	lea	rdx, [rsp + 0x300]
	mov	rdi, rbx
	mov	rsi, r15
	call	localtime_rz
	test	rax, rax
	je	.label_140
	movabs	r15, 0x7fffffffffffffff
	cmp	byte ptr [rbp], 0
	mov	eax, OFFSET FLAT:label_142
	cmovne	rax, rbp
	mov	qword ptr [rsp + 0x80], rax
	and	r14b, 1
	mov	byte ptr [rsp + 0x159], r14b
	movsxd	rax, dword ptr [rsp + 0x314]
	add	rax, 0x76c
	mov	qword ptr [rsp + 0xa8], rax
	mov	qword ptr [rsp + 0xb0], 0
	movsxd	rax, dword ptr [rsp + 0x310]
	inc	rax
	mov	qword ptr [rsp + 0xb8], rax
	movsxd	rax, dword ptr [rsp + 0x30c]
	mov	qword ptr [rsp + 0xc0], rax
	movsxd	rax, dword ptr [rsp + 0x308]
	mov	qword ptr [rsp + 0xc8], rax
	movsxd	rax, dword ptr [rsp + 0x304]
	mov	qword ptr [rsp + 0xd0], rax
	movsxd	rax, dword ptr [rsp + 0x300]
	mov	qword ptr [rsp + 0xd8], rax
	mov	rax, qword ptr [rsp + 0x50]
	cdqe	
	mov	qword ptr [rsp + 0xe0], rax
	mov	eax, dword ptr [rsp + 0x320]
	mov	dword ptr [rsp + 0x38], eax
	mov	dword ptr [rsp + 0x9c], 2
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x112], xmm0
	movups	xmmword ptr [rsp + 0x108], xmm0
	movups	xmmword ptr [rsp + 0xf8], xmm0
	movups	xmmword ptr [rsp + 0xe8], xmm0
	movups	xmmword ptr [rsp + 0x148], xmm0
	movups	xmmword ptr [rsp + 0x138], xmm0
	movups	xmmword ptr [rsp + 0x128], xmm0
	mov	byte ptr [rsp + 0x158], 0
	mov	byte ptr [rsp + 0x160], 0
	mov	word ptr [rsp + 0x15e], 0
	mov	dword ptr [rsp + 0x15a], 0
	mov	rcx, qword ptr [rsp + 0x330]
	mov	qword ptr [rsp + 0x168], rcx
	mov	dword ptr [rsp + 0x170], 0x10d
	mov	dword ptr [rsp + 0x174], eax
	mov	qword ptr [rsp + 0x178], 0
	lea	rax, [r15 - 0x76a700]
	mov	rbp, qword ptr [rsp + 0x10]
	cmp	rbp, rax
	jg	.label_37
	lea	rax, [rbp + 0x76a700]
	mov	qword ptr [rsp + 0x290], rax
	lea	rsi, [rsp + 0x290]
	lea	rdx, [rsp + 0x1d0]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_57
	mov	rax, qword ptr [rsp + 0x200]
	test	rax, rax
	je	.label_57
	mov	ecx, dword ptr [rsp + 0x1f0]
	cmp	ecx, dword ptr [rsp + 0x174]
	jne	.label_79
.label_57:
	lea	rax, [r15 - 0xed4e00]
	cmp	rbp, rax
	jg	.label_37
	lea	rax, [rbp + 0xed4e00]
	mov	qword ptr [rsp + 0x290], rax
	lea	rsi, [rsp + 0x290]
	lea	rdx, [rsp + 0x1d0]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_255
	mov	rax, qword ptr [rsp + 0x200]
	test	rax, rax
	je	.label_255
	mov	ecx, dword ptr [rsp + 0x1f0]
	cmp	ecx, dword ptr [rsp + 0x174]
	jne	.label_79
.label_255:
	lea	rax, [r15 - 0x163f500]
	cmp	rbp, rax
	jg	.label_37
	add	rbp, 0x163f500
	mov	qword ptr [rsp + 0x290], rbp
	lea	rsi, [rsp + 0x290]
	lea	rdx, [rsp + 0x1d0]
	mov	rdi, rbx
	call	localtime_rz
	test	rax, rax
	je	.label_37
	mov	rax, qword ptr [rsp + 0x200]
	test	rax, rax
	je	.label_37
	mov	ecx, dword ptr [rsp + 0x1f0]
	cmp	ecx, dword ptr [rsp + 0x174]
	je	.label_37
.label_79:
	mov	qword ptr [rsp + 0x178], rax
	mov	dword ptr [rsp + 0x180], 0x10d
	mov	dword ptr [rsp + 0x184], ecx
	mov	qword ptr [rsp + 0x188], 0
.label_37:
	mov	rdi, qword ptr [rsp + 0x168]
	test	rdi, rdi
	je	.label_55
	mov	rsi, qword ptr [rsp + 0x178]
	test	rsi, rsi
	je	.label_55
	call	strcmp
	test	eax, eax
	jne	.label_55
	mov	dword ptr [rsp + 0x174], 0xffffffff
	mov	qword ptr [rsp + 0x178], 0
.label_55:
	lea	rdi, [rsp + 0x80]
	call	yyparse
	test	eax, eax
	mov	al, byte ptr [rsp + 0x159]
	je	.label_70
	test	al, al
	je	.label_73
	add	r12, qword ptr [rsp + 0x78]
	cmp	r12, qword ptr [rsp + 0x80]
	jbe	.label_75
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	jmp	.label_78
.label_140:
	xor	ebp, ebp
	jmp	.label_67
.label_70:
	test	al, al
	mov	r12, qword ptr [rsp + 0x60]
	jne	.label_82
.label_208:
	cmp	byte ptr [rsp + 0x120], 0
	je	.label_86
	lea	rax, [rsp + 0xd8]
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r12], xmm0
.label_245:
	mov	rdi, qword ptr [rsp + 0x58]
	mov	bpl, 1
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_67
	test	rdi, rdi
	je	.label_93
	mov	esi, OFFSET FLAT:label_98
	mov	r14, rdi
	call	strcmp
	mov	r15, rbx
	xor	edi, edi
	test	eax, eax
	je	.label_101
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	call	dbg_printf
	jmp	.label_108
.label_73:
	xor	ebp, ebp
	jmp	.label_67
.label_131:
	xor	eax, eax
	cmp	rdi, 0x65
	jl	.label_112
	call	malloc
	mov	rsi, rax
	xor	ebp, ebp
	test	rsi, rsi
	mov	edi, 0
	jne	.label_117
	jmp	.label_127
.label_75:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
.label_78:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0x80]
	xor	ebp, ebp
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_67:
	cmp	rbx, r13
	je	.label_134
	mov	rdi, rbx
	call	tzfree
.label_134:
	mov	rdi, qword ptr [rsp + 0x70]
.label_127:
	call	free
	mov	eax, ebp
	add	rsp, 0x3e8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_86:
	mov	rax, qword ptr [rsp + 0x128]
	mov	rcx, qword ptr [rsp + 0x148]
	mov	rdx, rax
	or	rdx, rcx
	or	rdx, qword ptr [rsp + 0x130]
	or	rdx, qword ptr [rsp + 0x140]
	mov	rsi, qword ptr [rsp + 0x150]
	add	rsi, qword ptr [rsp + 0x138]
	or	rsi, rdx
	mov	r14b, byte ptr [rsp + 0x159]
	cmp	rsi, 2
	jl	.label_144
	test	r14b, r14b
	je	.label_158
	cmp	rcx, 2
	jl	.label_163
	mov	edi, OFFSET FLAT:label_167
	xor	eax, eax
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x128]
.label_163:
	cmp	rax, 2
	jl	.label_173
	mov	edi, OFFSET FLAT:label_174
	xor	eax, eax
	call	dbg_printf
.label_173:
	cmp	qword ptr [rsp + 0x130], 2
	jl	.label_176
	mov	edi, OFFSET FLAT:label_180
	xor	eax, eax
	call	dbg_printf
.label_176:
	cmp	qword ptr [rsp + 0x140], 2
	jl	.label_185
	mov	edi, OFFSET FLAT:label_188
	xor	eax, eax
	call	dbg_printf
.label_185:
	mov	rax, qword ptr [rsp + 0x150]
	add	rax, qword ptr [rsp + 0x138]
	xor	ebp, ebp
	cmp	rax, 2
	jl	.label_67
	mov	edi, OFFSET FLAT:label_194
	xor	eax, eax
	call	dbg_printf
	jmp	.label_67
.label_112:
	lea	rsi, [rsp + 0x380]
.label_117:
	mov	qword ptr [rsp + 0x70], rax
	mov	qword ptr [rsp + 0x68], r13
	mov	cl, byte ptr [rbx]
	mov	rax, rsi
	cmp	cl, 0x22
	jne	.label_198
	mov	r13, rbx
	jmp	.label_201
	.section	.text
	.align	16
	#Procedure 0x4026e1
	.globl sub_4026e1
	.type sub_4026e1, @function
sub_4026e1:

	nop	word ptr cs:[rax + rax]
.label_198:
	xor	edx, edx
	cmp	cl, 0x5c
	sete	dl
	movzx	ecx, byte ptr [rbx + rdx]
	mov	byte ptr [rax], cl
	inc	rax
	lea	r13, [rbx + rdx + 1]
	movzx	ecx, byte ptr [rbx + rdx + 1]
	cmp	cl, 0x22
	mov	rbx, r13
	jne	.label_198
.label_201:
	mov	byte ptr [rax], 0
	mov	qword ptr [rsp + 0x58], rsi
	mov	rdi, rsi
	call	tzalloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_213
	inc	r13
	mov	eax, 0x80001f
	nop	word ptr [rax + rax]
.label_226:
	mov	rbp, r13
	movzx	ecx, byte ptr [rbp]
	add	ecx, -9
	cmp	ecx, 0x17
	ja	.label_223
	lea	r13, [rbp + 1]
	bt	eax, ecx
	jb	.label_226
.label_223:
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_232
.label_144:
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, qword ptr [rsp + 0xa8]
	test	rbx, rbx
	js	.label_233
	cmp	qword ptr [rsp + 0xb0], 2
	jne	.label_237
	cmp	rbx, 0x45
	mov	eax, 0x7d0
	mov	ebp, 0x76c
	cmovl	rbp, rax
	add	rbp, rbx
	test	r14b, r14b
	je	.label_99
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	mov	rdx, rbp
	call	dbg_printf
.label_99:
	test	rbp, rbp
	jns	.label_256
	jmp	.label_258
.label_213:
	xor	ebp, ebp
	jmp	.label_134
.label_93:
	mov	r15, rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_262
	jmp	.label_263
.label_101:
	mov	esi, OFFSET FLAT:label_267
.label_263:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_108:
	mov	r14, qword ptr [r12]
	mov	ebx, dword ptr [r12 + 8]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	mov	edx, ebx
	call	dbg_printf
	lea	rsi, [rsp + 0x1d0]
	mov	rdi, r12
	call	gmtime_r
	test	rax, rax
	je	.label_46
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	r14, [rsp + 0x290]
	lea	rcx, [rsp + 0x1d0]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_53
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rdi, r14
	call	nstrftime
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, r14
	call	dbg_printf
.label_46:
	lea	rdx, [rsp + 0x338]
	mov	rbx, r15
	mov	rdi, rbx
	mov	rsi, r12
	call	localtime_rz
	test	rax, rax
	je	.label_67
	mov	r12, rbx
	movsxd	r15, dword ptr [rsp + 0x360]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rsp + 0x290]
	lea	rcx, [rsp + 0x338]
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_53
	xor	r8d, r8d
	xor	r9d, r9d
	call	nstrftime
	mov	eax, r15d
	shr	eax, 0x1f
	imul	rbx, r15, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, r15d
	mov	ecx, ebx
	shr	ecx, 0x1f
	sar	ebx, 0xb
	add	ebx, ecx
	mov	r9d, ebx
	neg	r9d
	cmp	r15, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebx
	lea	rdi, [rsp + 0x270]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_66
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebx, 0xe10
	mov	esi, r15d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r15d, edx
	je	.label_195
	cdqe	
	lea	rax, [rsp + rax + 0x270]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	imul	r8d, edx, 0x3c
	imul	rdi, r9, 0x1b4e81b5
	mov	rbx, rdi
	shr	rbx, 0x3f
	shr	rdi, 0x26
	movsxd	rdx, edx
	imul	rsi, rdx, 0x66666667
	mov	rcx, rsi
	shr	rcx, 0x3f
	sar	rsi, 0x22
	add	esi, ecx
	add	esi, esi
	lea	ecx, [rsi + rsi*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rdi + rbx + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_107
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	esi, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	esi, esi
	lea	ecx, [rsi + rsi*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_200
.label_158:
	xor	ebp, ebp
	jmp	.label_67
.label_233:
	mov	rbp, rbx
.label_258:
	lea	rdx, [rbp + r15]
	mov	ecx, 0x7ffff894
	mov	eax, 0xfffff894
	sub	eax, ebp
	cmp	rdx, -0x76c
	mov	rbx, qword ptr [rsp + 0x10]
	jl	.label_153
	sub	rcx, rbp
	shr	rcx, 0x20
	je	.label_162
	jmp	.label_153
.label_82:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	byte ptr [rsp + 0x120], 0
	jne	.label_175
	cmp	qword ptr [rsp + 0x150], 0
	jne	.label_181
	mov	rax, qword ptr [rsp + 0x58]
	test	rax, rax
	jne	.label_186
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_189
	jmp	.label_138
.label_237:
	mov	rbp, rbx
.label_256:
	lea	rcx, [rbp + 0x7ffff894]
	lea	eax, [rbp - 0x76c]
	shr	rcx, 0x20
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_162
.label_153:
	mov	dword ptr [rsp + 0x2c], eax
	test	r14b, r14b
	je	.label_197
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbp
	call	dbg_printf
	jmp	.label_197
.label_162:
	mov	dword ptr [rsp + 0x2c], eax
	mov	rax, qword ptr [rsp + 0xb8]
	lea	ecx, [rax - 1]
	cmp	rax, -0x7fffffff
	mov	dword ptr [rsp + 0x28], ecx
	jl	.label_197
	dec	rax
	cmp	rax, 0x7fffffff
	jg	.label_197
	mov	r12d, 0x80000000
	mov	rax, qword ptr [rsp + 0xc0]
	mov	dword ptr [rsp + 0x24], eax
	sub	rax, -0x80000000
	shr	rax, 0x20
	je	.label_177
.label_197:
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_210
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_231
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_67
.label_210:
	xor	ebp, ebp
	jmp	.label_67
.label_107:
	add	rax, 3
.label_200:
	mov	byte ptr [rax], 0
.label_195:
	lea	rsi, [rsp + 0x290]
	lea	rdx, [rsp + 0x270]
	xor	eax, eax
	mov	rdi, r14
	call	dbg_printf
	mov	rbx, r12
	jmp	.label_67
.label_175:
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
	jmp	.label_138
.label_177:
	mov	rax, qword ptr [rsp + 0x148]
	test	rax, rax
	jne	.label_250
	cmp	byte ptr [rsp + 0x121], 0
	je	.label_252
	mov	rcx, qword ptr [rsp + 0x130]
	or	rcx, qword ptr [rsp + 0x128]
	jne	.label_252
.label_250:
	mov	rdx, qword ptr [rsp + 0xc8]
	mov	ecx, dword ptr [rsp + 0x9c]
	test	ecx, ecx
	je	.label_261
	cmp	ecx, 1
	jne	.label_269
	lea	rdi, [rdx - 1]
	lea	rbp, [rdx + 0xc]
	cmp	rdx, 0xc
	mov	rsi, -1
	cmove	rsi, rdx
	cmp	rdi, 0xb
	cmovb	rsi, rbp
	jmp	.label_272
.label_181:
	mov	rbp, rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
.label_138:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	call	__fprintf_chk
.label_228:
	mov	rax, qword ptr [rsp + 0x150]
	cmp	qword ptr [rsp + 0x138], 0
	je	.label_49
	test	rax, rax
	mov	rbx, rbp
	jne	.label_54
	cmp	dword ptr [rsp + 0x94], 0
	jle	.label_56
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	call	__fprintf_chk
	mov	rax, qword ptr [rsp + 0x150]
	jmp	.label_54
.label_49:
	mov	rbx, rbp
.label_54:
	test	rax, rax
	je	.label_56
	mov	r12, rbx
	mov	r14, qword ptr [rip + stderr]
	movsxd	rbx, dword ptr [rsp + 0x98]
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp + 0x270]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_66
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	je	.label_90
	cdqe	
	lea	rax, [rsp + rax + 0x270]
	movsxd	rcx, ecx
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, ecx
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	imul	r8d, edx, 0x3c
	imul	rdi, rcx, 0x1b4e81b5
	mov	rbp, rdi
	shr	rbp, 0x3f
	shr	rdi, 0x26
	movsxd	rdx, edx
	imul	rbx, rdx, 0x66666667
	mov	rsi, rbx
	shr	rsi, 0x3f
	sar	rbx, 0x22
	add	ebx, esi
	add	ebx, ebx
	lea	esi, [rbx + rbx*4]
	sub	edx, esi
	add	edx, 0x30
	sub	ecx, r8d
	mov	byte ptr [rax], 0x3a
	lea	esi, [rdi + rbp + 0x30]
	mov	byte ptr [rax + 1], sil
	mov	byte ptr [rax + 2], dl
	jne	.label_92
	add	rax, 3
	jmp	.label_125
.label_186:
	mov	rbp, rbx
	cmp	rbx, r13
	jne	.label_130
	mov	esi, OFFSET FLAT:label_98
	mov	rdi, rax
	mov	r14, rax
	call	strcmp
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	test	eax, eax
	jne	.label_133
	mov	esi, OFFSET FLAT:label_137
	jmp	.label_138
.label_261:
	lea	rdi, [rdx - 1]
	xor	ebp, ebp
	cmp	rdx, 0xc
	mov	rsi, -1
	cmove	rsi, rbp
	cmp	rdi, 0xb
	jmp	.label_139
.label_269:
	cmp	rdx, 0x18
	mov	rsi, -1
.label_139:
	cmovb	rsi, rdx
.label_272:
	mov	dword ptr [rsp + 0x20], esi
	test	esi, esi
	js	.label_147
	mov	ecx, dword ptr [rsp + 0xd0]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	ecx, dword ptr [rsp + 0xd8]
	mov	dword ptr [rsp + 0x18], ecx
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_150
	mov	r12, r13
	xor	edi, edi
	test	rax, rax
	je	.label_156
	mov	esi, OFFSET FLAT:label_159
	jmp	.label_160
.label_147:
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_164
	cmp	ecx, 1
	mov	eax, OFFSET FLAT:label_169
	mov	edx, OFFSET FLAT:label_94
	cmove	rdx, rax
	test	ecx, ecx
	mov	ebx, OFFSET FLAT:label_170
	cmovne	rbx, rdx
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_171
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [rsp + 0xc8]
	xor	eax, eax
	mov	rdi, rcx
	mov	rdx, rbx
	mov	rbx, qword ptr [rsp + 0x10]
	call	dbg_printf
	jmp	.label_67
.label_92:
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rdx, ecx
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x30]
	mov	byte ptr [rax + 4], dl
	add	edi, edi
	lea	edx, [rdi + rdi*4]
	neg	edx
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
.label_125:
	mov	byte ptr [rax], 0
.label_90:
	lea	rcx, [rsp + 0x270]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_199
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x60]
.label_56:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	call	fputc
	jmp	.label_208
.label_252:
	mov	dword ptr [rsp + 0x18], 0
	mov	dword ptr [rsp + 0x1c], 0
	mov	dword ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0xe0], 0
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_150
	mov	edi, OFFSET FLAT:label_222
	xor	eax, eax
	call	dbg_printf
	jmp	.label_150
.label_130:
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_264
	mov	edx, 5
	mov	rbx, rax
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, rcx
	mov	rcx, rbx
	call	__fprintf_chk
	jmp	.label_228
.label_156:
	mov	esi, OFFSET FLAT:label_241
.label_160:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	r9d, dword ptr [rsp + 0x20]
	mov	ebx, dword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp + 0x1c]
	lea	r13, [rsp + 0x290]
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:label_246
	mov	eax, 0
	mov	rdi, r13
	push	rbx
	push	rbp
	call	__snprintf_chk
	add	rsp, 0x10
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, r13
	call	dbg_printf
	mov	r13, r12
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r12d, 0x80000000
.label_150:
	mov	rax, qword ptr [rsp + 0x130]
	or	rax, qword ptr [rsp + 0x128]
	or	rax, qword ptr [rsp + 0x148]
	je	.label_270
	mov	dword ptr [rsp + 0x38], 0xffffffff
.label_270:
	cmp	qword ptr [rsp + 0x138], 0
	je	.label_36
	mov	eax, dword ptr [rsp + 0x94]
	mov	dword ptr [rsp + 0x38], eax
	jmp	.label_40
.label_36:
	mov	eax, dword ptr [rsp + 0x38]
.label_40:
	mov	rcx, qword ptr [rsp + 0x18]
	mov	dword ptr [rsp + 0x198], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x19c], ecx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0x1a0], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x1a4], ecx
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rsp + 0x1a8], ecx
	shr	rcx, 0x20
	mov	dword ptr [rsp + 0x1ac], ecx
	mov	dword ptr [rsp + 0x1b8], eax
	mov	dword ptr [rsp + 0x30], 0xffffffff
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbx
	call	mktime_z
	mov	rbp, rax
	cmp	dword ptr [rsp + 0x30], 0
	js	.label_64
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	xor	rax, qword ptr [rsp + 0x198]
	xor	rcx, qword ptr [rsp + 0x1a0]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x28]
	xor	rax, qword ptr [rsp + 0x1a8]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	je	.label_247
.label_64:
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x50], rax
	test	rax, rax
	mov	qword ptr [rsp + 0x68], r13
	je	.label_83
	mov	byte ptr [rsp + 0x1d2], 0x58
	mov	word ptr [rsp + 0x1d0], 0x5858
	movsxd	rbx, dword ptr [rsp + 0x98]
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	rdi, [rsp + 0x1d3]
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_66
	xor	eax, eax
	call	__sprintf_chk
	imul	ecx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, ecx
	mov	edx, esi
	neg	edx
	cmovl	edx, esi
	cmp	ebx, ecx
	je	.label_132
	cdqe	
	lea	rcx, [rsp + rax + 0x1d3]
	movsxd	rax, edx
	imul	rdx, rax, -0x77777777
	shr	rdx, 0x20
	add	edx, eax
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	imul	r8d, edx, 0x3c
	imul	rdi, rax, 0x1b4e81b5
	mov	rbp, rdi
	shr	rbp, 0x3f
	shr	rdi, 0x26
	movsxd	rdx, edx
	imul	rbx, rdx, 0x66666667
	mov	rsi, rbx
	shr	rsi, 0x3f
	sar	rbx, 0x22
	add	ebx, esi
	add	ebx, ebx
	lea	esi, [rbx + rbx*4]
	sub	edx, esi
	add	edx, 0x30
	sub	eax, r8d
	mov	byte ptr [rcx], 0x3a
	lea	esi, [rdi + rbp + 0x30]
	mov	byte ptr [rcx + 1], sil
	mov	byte ptr [rcx + 2], dl
	lea	rcx, [rcx + 3]
	je	.label_118
	mov	byte ptr [rcx], 0x3a
	movsxd	rdx, eax
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x30]
	mov	byte ptr [rcx + 1], dl
	add	edi, edi
	lea	edx, [rdi + rdi*4]
	neg	edx
	lea	eax, [rax + rdx + 0x30]
	mov	byte ptr [rcx + 2], al
	add	rcx, 3
.label_118:
	mov	byte ptr [rcx], 0
.label_132:
	lea	rdi, [rsp + 0x1d0]
	call	tzalloc
	mov	r13, rax
	test	r13, r13
	je	.label_161
	mov	rax, qword ptr [rsp + 0x198]
	mov	dword ptr [rsp + 0x18], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x1c], eax
	mov	rax, qword ptr [rsp + 0x1a0]
	mov	dword ptr [rsp + 0x20], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x24], eax
	mov	rax, qword ptr [rsp + 0x1a8]
	mov	dword ptr [rsp + 0x28], eax
	shr	rax, 0x20
	mov	dword ptr [rsp + 0x2c], eax
	mov	eax, dword ptr [rsp + 0x1b8]
	mov	dword ptr [rsp + 0x38], eax
	mov	dword ptr [rsp + 0x30], 0xffffffff
	lea	rsi, [rsp + 0x18]
	mov	rdi, r13
	call	mktime_z
	mov	r14, rax
	cmp	dword ptr [rsp + 0x30], 0
	js	.label_192
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	xor	rax, qword ptr [rsp + 0x198]
	xor	rcx, qword ptr [rsp + 0x1a0]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rbx, qword ptr [rsp + 0x28]
	xor	rbx, qword ptr [rsp + 0x1a8]
	mov	ebp, ebx
	or	ebp, ecx
	or	ebp, edx
	shr	rbx, 0x20
	mov	rdi, r13
	call	tzfree
	or	ebx, ebp
	mov	rbp, r14
	mov	r13, qword ptr [rsp + 0x68]
	jne	.label_83
.label_247:
	cmp	qword ptr [rsp + 0x130], 0
	je	.label_207
	mov	rax, qword ptr [rsp + 0x128]
	test	rax, rax
	jne	.label_207
	mov	rcx, qword ptr [rsp + 0x88]
	test	rcx, rcx
	jle	.label_212
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, dword ptr [rsp + 0x90]
	setne	al
	jmp	.label_218
.label_161:
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_50
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_229
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsp + 0x1d0]
	xor	eax, eax
	mov	rdi, rcx
	jmp	.label_234
.label_164:
	xor	ebp, ebp
	jmp	.label_67
.label_133:
	mov	esi, OFFSET FLAT:label_239
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	mov	rcx, r14
	call	__fprintf_chk
	jmp	.label_228
.label_192:
	mov	rdi, r13
	call	tzfree
.label_83:
	mov	r10, qword ptr [rsp + 0x198]
	mov	rsi, qword ptr [rsp + 0x1a0]
	mov	r11, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	r10d, r11d
	sete	r8b
	mov	rax, r10
	shr	rax, 0x20
	mov	rcx, r11
	shr	rcx, 0x20
	mov	qword ptr [rsp + 0x268], rax
	mov	qword ptr [rsp + 0x260], rcx
	cmp	eax, ecx
	sete	cl
	mov	r14, rsi
	shr	r14, 0x20
	mov	rdi, rbx
	shr	rdi, 0x20
	cmp	r14d, edi
	sete	byte ptr [rsp + 0x58]
	mov	rbp, qword ptr [rsp + 0x1a8]
	mov	rax, qword ptr [rsp + 0x28]
	cmp	ebp, eax
	sete	dl
	mov	r13, rbp
	shr	r13, 0x20
	mov	r12, rax
	shr	r12, 0x20
	cmp	r13d, r12d
	sete	r15b
	mov	qword ptr [rsp + 0x78], rsi
	mov	qword ptr [rsp + 0x60], rbx
	cmp	esi, ebx
	setne	r9b
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_50
	and	dl, r15b
	and	r8b, r9b
	and	cl, r8b
	and	cl, byte ptr [rsp + 0x58]
	and	cl, dl
	mov	byte ptr [rsp + 0xf], cl
	mov	qword ptr [rsp + 0x240], rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	mov	qword ptr [rsp + 0x58], rbp
	mov	rbp, rax
	mov	qword ptr [rsp + 0x248], r10
	mov	qword ptr [rsp + 0x250], r11
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x198]
	lea	rsi, [rsp + 0x80]
	lea	r15, [rsp + 0x1d0]
	mov	rdx, r15
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x18]
	lea	rsi, [rsp + 0x80]
	mov	rdx, r15
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
	cmp	r13d, r12d
	mov	eax, OFFSET FLAT:label_94
	mov	r9d, OFFSET FLAT:label_95
	cmove	r9, rax
	mov	qword ptr [rsp + 0x238], rbp
	mov	rcx, qword ptr [rsp + 0x58]
	cmp	ecx, ebp
	mov	r12d, OFFSET FLAT:label_96
	mov	r10d, OFFSET FLAT:label_96
	cmove	r10, rax
	mov	qword ptr [rsp + 0x258], r14
	mov	r15, qword ptr [rsp + 0x240]
	mov	r13, r15
	cmp	r14d, r15d
	mov	r11d, OFFSET FLAT:label_96
	cmove	r11, rax
	mov	rcx, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x60]
	cmp	ecx, edx
	mov	ebx, OFFSET FLAT:label_96
	cmove	rbx, rax
	mov	rcx, qword ptr [rsp + 0x268]
	mov	rdx, qword ptr [rsp + 0x260]
	cmp	ecx, edx
	mov	ebp, OFFSET FLAT:label_96
	cmove	rbp, rax
	mov	rcx, qword ptr [rsp + 0x250]
	mov	rdx, qword ptr [rsp + 0x248]
	cmp	edx, ecx
	cmove	r12, rax
	sub	rsp, 8
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:label_97
	mov	eax, 0
	lea	rdi, [rsp + 0x1d8]
	push	r12
	push	rbp
	push	rbx
	push	r11
	push	r10
	call	__snprintf_chk
	add	rsp, 0x30
	test	eax, eax
	js	.label_146
	movabs	rcx, 0xffffffff00000000
	cmp	eax, 0x63
	mov	edx, 0x63
	cmovb	edx, eax
	inc	edx
	lea	rax, [rdx - 1]
	shl	rdx, 0x20
	add	rdx, rcx
.label_155:
	mov	rsi, rdx
	test	rax, rax
	jle	.label_154
	lea	rdx, [rsi + rcx]
	cmp	byte ptr [rsp + rax + 0x1cf], 0x20
	lea	rax, [rax - 1]
	je	.label_155
.label_154:
	sar	rsi, 0x20
	mov	byte ptr [rsp + rsi + 0x1d0], 0
.label_146:
	lea	rsi, [rsp + 0x1d0]
	mov	edi, OFFSET FLAT:label_165
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_172
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_179
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_183
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_179:
	mov	rax, qword ptr [rsp + 0x258]
	cmp	eax, r13d
	je	.label_193
	mov	rax, qword ptr [rsp + 0x58]
	mov	rcx, qword ptr [rsp + 0x238]
	cmp	eax, ecx
	je	.label_193
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_191
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_193:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	cmp	qword ptr [rsp + 0x50], 0
	je	.label_202
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_203
	jmp	.label_204
.label_202:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
.label_204:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:label_209
	xor	eax, eax
	mov	rsi, rcx
.label_234:
	call	dbg_printf
.label_50:
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x68]
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_67
.label_212:
	xor	eax, eax
.label_218:
	movzx	eax, al
	cmp	rcx, rax
	jge	.label_220
	test	rcx, rcx
	jle	.label_221
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, dword ptr [rsp + 0x90]
	setne	al
	jmp	.label_224
.label_220:
	test	rcx, rcx
	jle	.label_227
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, dword ptr [rsp + 0x90]
	setne	al
	jmp	.label_230
.label_221:
	xor	eax, eax
.label_224:
	movzx	eax, al
	mov	rdx, rcx
	sub	rdx, rax
	movabs	rax, 0xedb6db6db6db6db7
	cmp	rdx, rax
	jge	.label_236
	jmp	.label_51
.label_227:
	xor	eax, eax
.label_230:
	movzx	eax, al
	mov	rdx, rcx
	sub	rdx, rax
	movabs	rax, 0x1249249249249249
	cmp	rdx, rax
	jg	.label_51
.label_236:
	test	rcx, rcx
	jle	.label_249
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, dword ptr [rsp + 0x90]
	setne	al
	jmp	.label_251
.label_249:
	xor	eax, eax
.label_251:
	movzx	eax, al
	sub	rcx, rax
	lea	rax, [rcx*8]
	sub	rax, rcx
	js	.label_253
	mov	rsi, r15
	sub	rsi, rax
	mov	ecx, dword ptr [rsp + 0x90]
	mov	edx, dword ptr [rsp + 0x30]
	lea	edi, [rcx + 7]
	sub	edi, edx
	movsxd	rdi, edi
	imul	rbp, rdi, -0x6db6db6d
	shr	rbp, 0x20
	add	ebp, edi
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 2
	add	ebp, ebx
	lea	ebx, [rbp*8]
	sub	ebx, ebp
	sub	edi, ebx
	movsxd	rdi, edi
	jmp	.label_257
.label_253:
	mov	ecx, dword ptr [rsp + 0x90]
	mov	edx, dword ptr [rsp + 0x30]
	lea	esi, [rcx + 7]
	sub	esi, edx
	movsxd	rsi, esi
	imul	rdi, rsi, -0x6db6db6d
	shr	rdi, 0x20
	add	edi, esi
	mov	ebp, edi
	shr	ebp, 0x1f
	sar	edi, 2
	add	edi, ebp
	lea	ebp, [rdi*8]
	sub	ebp, edi
	sub	esi, ebp
	movsxd	rsi, esi
	lea	rdi, [r15 + 1]
	sub	rdi, rax
.label_257:
	cmp	rsi, rdi
	jl	.label_51
	add	ecx, 7
	sub	ecx, edx
	movsxd	rcx, ecx
	imul	rdx, rcx, -0x6db6db6d
	shr	rdx, 0x20
	add	edx, ecx
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	sub	ecx, esi
	movsxd	rcx, ecx
	add	rcx, rax
	movsxd	rax, dword ptr [rsp + 0x24]
	test	rax, rax
	js	.label_145
	mov	rdx, r15
	sub	rdx, rax
	cmp	rdx, rcx
	jge	.label_225
	jmp	.label_65
.label_145:
	lea	rdx, [r15 + 1]
	sub	rdx, rax
	cmp	rcx, rdx
	jl	.label_65
.label_225:
	lea	rdx, [rcx + r12]
	add	rdx, rax
	shr	rdx, 0x20
	je	.label_68
.label_65:
	add	ecx, eax
	mov	dword ptr [rsp + 0x24], ecx
.label_51:
	cmp	byte ptr [rsp + 0x159], 0
	jne	.label_74
	jmp	.label_43
.label_68:
	mov	rbp, r13
	add	ecx, eax
	mov	dword ptr [rsp + 0x24], ecx
	mov	dword ptr [rsp + 0x38], 0xffffffff
	lea	rsi, [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x10]
	call	mktime_z
	mov	cl, byte ptr [rsp + 0x159]
	mov	r14, rax
	cmp	rax, -1
	je	.label_85
	test	cl, cl
	je	.label_88
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	lea	r12, [rsp + 0x80]
	lea	rsi, [rsp + 0x1d0]
	mov	rdi, r12
	call	str_days
	mov	rbx, rax
	lea	rdi, [rsp + 0x18]
	lea	rdx, [rsp + 0x290]
	mov	rsi, r12
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, rcx
	call	dbg_printf
.label_88:
	mov	r13, rbp
	mov	r12d, 0x80000000
	mov	rbp, r14
.label_207:
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_109
	mov	rax, qword ptr [rsp + 0x128]
	mov	rcx, qword ptr [rsp + 0x130]
	mov	rdx, rcx
	or	rdx, rax
	jne	.label_114
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x50], rax
	movsxd	rax, dword ptr [rsp + 0x2c]
	xor	ecx, ecx
	cmp	rax, -0x76d
	setg	cl
	lea	rcx, qword ptr [rcx + label_135]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x13]
	mov	r8d, 0xffffffed
	sub	r8d, edi
	test	edx, edx
	cmovns	r8d, edx
	imul	edx, edi, 0x64
	sub	eax, edx
	mov	r9d, eax
	neg	r9d
	cmovl	r9d, eax
	lea	rdi, [rsp + 0x338]
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	call	__sprintf_chk
	mov	ebx, dword ptr [rsp + 0x24]
	mov	r10, rbp
	mov	ebp, dword ptr [rsp + 0x28]
	inc	ebp
	mov	r14, r13
	lea	r13, [rsp + 0x290]
	mov	esi, 0x64
	mov	edx, 1
	mov	ecx, 0x64
	mov	r8d, OFFSET FLAT:label_151
	mov	eax, 0
	mov	rdi, r13
	lea	r9, [rsp + 0x338]
	push	rbx
	push	rbp
	mov	rbp, r10
	call	__snprintf_chk
	add	rsp, 0x10
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r13
	mov	r13, r14
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0x128]
	mov	rcx, qword ptr [rsp + 0x130]
.label_114:
	test	rcx, rcx
	je	.label_184
	test	rax, rax
	je	.label_184
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_187
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsp + 0x1d0]
	call	str_days
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
.label_184:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x18]
	lea	rsi, [rsp + 0x80]
	lea	rdx, [rsp + 0x290]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
.label_109:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rax, qword ptr [rsp + 0xf8]
	or	rcx, qword ptr [rsp + 0xe8]
	mov	rdx, rcx
	or	rdx, rax
	je	.label_205
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_211
	test	rcx, rcx
	je	.label_216
	cmp	dword ptr [rsp + 0x24], 0xf
	je	.label_216
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_219
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	mov	rax, qword ptr [rsp + 0xf8]
.label_216:
	test	rax, rax
	je	.label_211
	cmp	dword ptr [rsp + 0x20], 0xc
	je	.label_211
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_235
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_211:
	mov	rbx, r13
	mov	r13, qword ptr [rsp + 0xe8]
	test	r13, r13
	js	.label_240
	mov	rcx, r15
	sub	rcx, r13
	movsxd	rax, dword ptr [rsp + 0x2c]
	cmp	rcx, rax
	jge	.label_244
	jmp	.label_35
.label_240:
	movsxd	rax, dword ptr [rsp + 0x2c]
	lea	rcx, [r15 + 1]
	sub	rcx, r13
	cmp	rax, rcx
	jl	.label_35
.label_244:
	movsxd	rcx, eax
	lea	rdx, [r13 + r12]
	add	rdx, rcx
	shr	rdx, 0x20
	jne	.label_35
	mov	rbp, qword ptr [rsp + 0xf0]
	test	rbp, rbp
	js	.label_260
	mov	rdx, r15
	sub	rdx, rbp
	movsxd	rcx, dword ptr [rsp + 0x28]
	cmp	rdx, rcx
	jge	.label_265
	jmp	.label_35
.label_260:
	movsxd	rcx, dword ptr [rsp + 0x28]
	lea	rdx, [r15 + 1]
	sub	rdx, rbp
	cmp	rcx, rdx
	jl	.label_35
.label_265:
	movsxd	rdx, ecx
	lea	rsi, [rbp + r12]
	add	rsi, rdx
	shr	rsi, 0x20
	jne	.label_35
	mov	rdx, qword ptr [rsp + 0xf8]
	mov	r8, rdx
	test	rdx, rdx
	js	.label_41
	mov	rsi, r15
	sub	rsi, r8
	movsxd	rdx, dword ptr [rsp + 0x24]
	cmp	rsi, rdx
	jmp	.label_44
.label_85:
	test	cl, cl
	mov	r13, rbp
	je	.label_43
.label_74:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x50], rax
	lea	r15, [rsp + 0x80]
	lea	rsi, [rsp + 0x1d0]
	mov	rdi, r15
	call	str_days
	mov	r12, rax
	mov	r14, r13
	mov	r13, qword ptr [rsp + 0x88]
	mov	ebx, dword ptr [rsp + 0x90]
	lea	rdi, [rsp + 0x18]
	lea	rdx, [rsp + 0x290]
	mov	rsi, r15
	call	debug_strfdatetime
	mov	rbp, rax
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, r12
	mov	rdx, r13
	mov	r13, r14
	mov	ecx, ebx
	mov	r8, rbp
	call	dbg_printf
	jmp	.label_43
.label_41:
	movsxd	rdx, dword ptr [rsp + 0x24]
	lea	rsi, [r15 + 1]
	sub	rsi, r8
	cmp	rdx, rsi
.label_44:
	mov	edi, 0x80000000
	jl	.label_35
	movsxd	rsi, edx
	add	rdi, r8
	add	rdi, rsi
	shr	rdi, 0x20
	je	.label_104
.label_35:
	cmp	byte ptr [rsp + 0x159], 0
	mov	r13, rbx
	je	.label_43
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, OFFSET FLAT:label_178
	mov	edx, 0x877
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_43
.label_104:
	add	r13d, eax
	add	ebp, ecx
	add	r8d, edx
	mov	dword ptr [rsp + 0x2c], r13d
	mov	dword ptr [rsp + 0x28], ebp
	mov	qword ptr [rsp + 0x50], r8
	mov	dword ptr [rsp + 0x24], r8d
	mov	eax, dword ptr [rsp + 0x1a0]
	mov	dword ptr [rsp + 0x20], eax
	mov	eax, dword ptr [rsp + 0x19c]
	mov	dword ptr [rsp + 0x1c], eax
	mov	eax, dword ptr [rsp + 0x198]
	mov	dword ptr [rsp + 0x18], eax
	mov	eax, dword ptr [rsp + 0x1b8]
	mov	dword ptr [rsp + 0x38], eax
	lea	rsi, [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x10]
	call	mktime_z
	mov	r14, rax
	cmp	rax, -1
	mov	al, byte ptr [rsp + 0x159]
	je	.label_121
	test	al, al
	je	.label_124
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0xe8]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	rcx, qword ptr [rsp + 0xf8]
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_141
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	lea	rdi, [rsp + 0x18]
	lea	rsi, [rsp + 0x80]
	lea	rdx, [rsp + 0x290]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r12
	mov	rsi, rcx
	call	dbg_printf
	mov	eax, dword ptr [rsp + 0x1b8]
	cmp	eax, -1
	je	.label_58
	cmp	dword ptr [rsp + 0x38], eax
	je	.label_58
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_58:
	cmp	qword ptr [rsp + 0xf8], 0
	jne	.label_124
	mov	rax, qword ptr [rsp + 0x50]
	cmp	dword ptr [rsp + 0x24], eax
	jne	.label_143
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_124
	cmp	dword ptr [rsp + 0x28], ebp
	je	.label_124
.label_143:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x78], rax
	xor	eax, eax
	cmp	r13d, 0xfffff893
	setg	al
	lea	rcx, qword ptr [rax + label_135]
	movsxd	rax, r13d
	imul	rax, rax, 0x51eb851f
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x25
	lea	esi, [rax + rdx]
	lea	eax, [rax + rdx + 0x13]
	mov	r12d, 0xffffffed
	mov	r8d, 0xffffffed
	sub	r8d, esi
	test	eax, eax
	cmovns	r8d, eax
	imul	eax, esi, 0x64
	sub	r13d, eax
	mov	r9d, r13d
	neg	r9d
	cmovl	r9d, r13d
	lea	r13, [rsp + 0x338]
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	mov	rdi, r13
	call	__sprintf_chk
	inc	ebp
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x78]
	mov	rsi, r13
	mov	edx, ebp
	mov	rcx, qword ptr [rsp + 0x50]
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rsp + 0x2c]
	xor	ecx, ecx
	cmp	rax, -0x76d
	setg	cl
	lea	rcx, qword ptr [rcx + label_135]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	lea	edi, [rdx + rsi]
	lea	edx, [rdx + rsi + 0x13]
	sub	r12d, edi
	test	edx, edx
	cmovns	r12d, edx
	imul	edx, edi, 0x64
	sub	eax, edx
	mov	r9d, eax
	neg	r9d
	cmovl	r9d, eax
	mov	esi, 1
	mov	edx, 0xd
	xor	eax, eax
	mov	rdi, r13
	mov	r8d, r12d
	call	__sprintf_chk
	mov	ecx, dword ptr [rsp + 0x24]
	mov	edx, dword ptr [rsp + 0x28]
	inc	edx
	xor	eax, eax
	mov	rdi, rbp
	mov	rsi, r13
	call	dbg_printf
.label_124:
	mov	r13, rbx
	mov	rbp, r14
.label_205:
	cmp	qword ptr [rsp + 0x150], 0
	je	.label_254
	movsxd	rax, dword ptr [rsp + 0x98]
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	js	.label_259
	lea	rsi, [r15 + 1]
	xor	rsi, rdx
	mov	ecx, 1
	cmp	rax, rsi
	jge	.label_266
	jmp	.label_271
.label_259:
	lea	rsi, [rdx + r15]
	mov	ecx, 1
	cmp	rsi, rax
	jl	.label_271
.label_266:
	xor	ecx, ecx
.label_271:
	sub	rax, rdx
	js	.label_33
	lea	rsi, [r15 + 1]
	xor	rsi, rax
	mov	edx, 1
	cmp	rbp, rsi
	jge	.label_34
	jmp	.label_39
.label_33:
	lea	rsi, [rax + r15]
	mov	edx, 1
	cmp	rsi, rbp
	jl	.label_39
.label_34:
	xor	edx, edx
.label_39:
	or	edx, ecx
	je	.label_42
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_43
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, dword ptr [rsp + 0x98]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	jmp	.label_43
.label_42:
	sub	rbp, rax
.label_254:
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_59
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x18]
	lea	rsi, [rsp + 0x80]
	lea	rdx, [rsp + 0x290]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	mov	rdx, rbp
	call	dbg_printf
.label_59:
	mov	rdi, rbp
	movsxd	r8, dword ptr [rsp + 0x118]
	mov	rsi, qword ptr [rsp + 0xe0]
	add	rsi, r8
	movabs	rbp, 0x112e0be826d694b3
	mov	rax, rsi
	imul	rbp
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	mov	rcx, rsi
	sub	rcx, rax
	add	rcx, 0x3b9aca00
	mov	rax, rcx
	imul	rbp
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	sub	rcx, rax
	sub	rsi, rcx
	mov	rax, rsi
	imul	rbp
	mov	rax, qword ptr [rsp + 0x100]
	test	rax, rax
	js	.label_48
	movabs	rsi, 0x91a2b3c4d5e6f
	cmp	rax, rsi
	jle	.label_100
	jmp	.label_76
.label_48:
	movabs	rsi, 0xfff6e5d4c3b2a191
	cmp	rax, rsi
	jl	.label_76
.label_100:
	imul	rbx, rax, 0xe10
	test	rbx, rbx
	js	.label_106
	mov	rsi, r15
	sub	rsi, rbx
	cmp	rsi, rdi
	jge	.label_268
	jmp	.label_76
.label_106:
	lea	rsi, [r15 + 1]
	sub	rsi, rbx
	cmp	rdi, rsi
	jl	.label_76
.label_268:
	mov	r12, r13
	mov	rsi, qword ptr [rsp + 0x108]
	test	rsi, rsi
	js	.label_122
	movabs	rbp, 0x222222222222222
	cmp	rsi, rbp
	mov	r13, r12
	jle	.label_129
	jmp	.label_76
.label_122:
	movabs	rbp, 0xfdddddddddddddde
	cmp	rsi, rbp
	mov	r13, r12
	jl	.label_76
.label_129:
	add	rbx, rdi
	imul	r14, rsi, 0x3c
	test	r14, r14
	js	.label_136
	mov	rbp, r15
	sub	rbp, r14
	cmp	rbp, rbx
	jmp	.label_45
.label_136:
	lea	rbp, [r15 + 1]
	sub	rbp, r14
	cmp	rbx, rbp
.label_45:
	mov	r13, r12
	jl	.label_76
	add	r14, rbx
	mov	rbx, qword ptr [rsp + 0x110]
	test	rbx, rbx
	js	.label_242
	mov	rbp, r15
	sub	rbp, rbx
	cmp	rbp, r14
	jmp	.label_149
.label_242:
	lea	rbp, [r15 + 1]
	sub	rbp, rbx
	cmp	r14, rbp
.label_149:
	mov	r13, r12
	jl	.label_76
	mov	rbp, rdx
	shr	rbp, 0x3f
	sar	rdx, 0x1a
	add	rdx, rbp
	add	r14, rbx
	movsxd	rdx, edx
	test	edx, edx
	js	.label_63
	sub	r15, rdx
	cmp	r15, r14
	jmp	.label_157
.label_121:
	test	al, al
	mov	r13, rbx
	je	.label_43
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_166
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0x18]
	lea	rsi, [rsp + 0x80]
	lea	rdx, [rsp + 0x290]
	call	debug_strfdatetime
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	dbg_printf
	jmp	.label_43
.label_63:
	inc	r15
	sub	r15, rdx
	cmp	r14, r15
.label_157:
	mov	r13, r12
	jge	.label_214
.label_76:
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_43
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_43:
	xor	ebp, ebp
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_67
.label_214:
	add	r14, rdx
	mov	rdx, qword ptr [rsp + 0x60]
	mov	qword ptr [rdx], r14
	mov	qword ptr [rdx + 8], rcx
	cmp	byte ptr [rsp + 0x159], 0
	je	.label_62
	or	rsi, rax
	or	rsi, rbx
	or	rsi, r8
	je	.label_62
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x100]
	mov	rdx, qword ptr [rsp + 0x108]
	mov	rcx, qword ptr [rsp + 0x110]
	mov	r8d, dword ptr [rsp + 0x118]
	xor	eax, eax
	call	dbg_printf
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_215
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, r14
	call	dbg_printf
	cmp	dword ptr [rsp + 0x38], -1
	je	.label_62
	lea	rdx, [rsp + 0x338]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x60]
	call	localtime_rz
	test	rax, rax
	je	.label_62
	mov	eax, dword ptr [rsp + 0x38]
	cmp	eax, dword ptr [rsp + 0x358]
	je	.label_62
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
.label_62:
	mov	r13, r12
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x60]
	jmp	.label_245
	.section	.text
	.align	16
	#Procedure 0x4043a7
	.globl sub_4043a7
	.type sub_4043a7, @function
sub_4043a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043b0

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	push	rax
	mov	eax, r9d
	mov	r10, r8
	sub	rsp, 8
	mov	r8d, 0
	mov	r9d, 0
	push	rax
	push	r10
	push	-1
	call	__strftime_internal
	add	rsp, 0x20
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043d7
	.globl sub_4043d7
	.type sub_4043d7, @function
sub_4043d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043e0
	.globl parse_datetime
	.type parse_datetime, @function
parse_datetime:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	edi, OFFSET FLAT:label_273
	call	getenv
	mov	r13, rax
	mov	rdi, r13
	call	tzalloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_275
	xor	ecx, ecx
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	mov	r8, rbx
	mov	r9, r13
	call	parse_datetime2
	mov	bpl, al
	mov	rdi, rbx
	call	tzfree
	jmp	.label_274
.label_275:
	xor	ebp, ebp
.label_274:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404447
	.globl sub_404447
	.type sub_404447, @function
sub_404447:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404450
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_276
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_279:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_279
.label_276:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_280
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_277], OFFSET FLAT:slot0
.label_280:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_278
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_278:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044e1
	.globl sub_4044e1
	.type sub_4044e1, @function
sub_4044e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044f0
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
	je	.label_281
	mov	qword ptr [rax], rbx
.label_281:
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
	.align	16
	#Procedure 0x4045dc
	.globl sub_4045dc
	.type sub_4045dc, @function
sub_4045dc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4045e0
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
	je	.label_283
	test	r15, r15
	je	.label_282
.label_283:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_282:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404622
	.globl sub_404622
	.type sub_404622, @function
sub_404622:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404630

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_284
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_285:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_285
	jmp	.label_286
.label_284:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_287:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_287
	mov	byte ptr [rsi], 0x2d
.label_286:
	mov	rax, rsi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046e3
	.globl sub_4046e3
	.type sub_4046e3, @function
sub_4046e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046f0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046ff
	.globl sub_4046ff
	.type sub_4046ff, @function
sub_4046ff:

	nop	
.label_291:
	xor	eax, eax
.label_290:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40470d
	.globl sub_40470d
	.type sub_40470d, @function
sub_40470d:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404716

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_289
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_291
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_288
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	ebp, eax
	xor	bpl, 1
.label_288:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_290
.label_289:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
	.section	.text
	.align	16
	#Procedure 0x404790

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4b8
	mov	dword ptr [rsp + 0x88], r9d
	mov	dword ptr [rsp + 0x8c], r8d
	mov	r11, rcx
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x48], rsi
	mov	r10, rdi
	mov	eax, dword ptr [r11 + 8]
	mov	rcx, qword ptr [r11 + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:label_94
	cmovne	rdx, rcx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	esi, 0xc
	cmovne	esi, eax
	cmp	eax, 0xc
	cmovg	esi, ecx
	mov	dword ptr [rsp + 0x7c], esi
	mov	al, byte ptr [rbp]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
	test	al, al
	je	.label_470
	mov	edi, dword ptr [rsp + 0x4f0]
	mov	qword ptr [rsp + 0x68], rdx
	lea	rcx, [rdx - 1]
	mov	qword ptr [rsp + 0x80], rcx
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x38], r11
	jmp	.label_363
.label_470:
	xor	r8d, r8d
	jmp	.label_299
.label_454:
	mov	rdx, r10
	mov	rsi, qword ptr [rsp + 0x80]
	mov	r9, r15
.label_360:
	movzx	ebx, byte ptr [rsi + rdx]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	ebx, byte ptr [rsi + rdx - 1]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	ebx, byte ptr [rsi + rdx - 2]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	ebx, byte ptr [rsi + rdx - 3]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 4], bl
	lea	rdx, [rdx - 4]
	cmp	rcx, rdx
	jne	.label_360
.label_458:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_320
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
.label_325:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_325
.label_320:
	add	r9, r10
	mov	rcx, r9
	jmp	.label_316
.label_309:
	mov	esi, 0x20
.label_312:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	mov	rdi, r12
	mov	r8, qword ptr [rsp + 0x18]
	add	rdi, r14
	mov	cl, byte ptr [rbp]
	mov	r14d, r15d
.label_304:
	mov	byte ptr [rdi], cl
	inc	rdi
	mov	rdx, rdi
.label_298:
	add	r8, rbx
	mov	r10, rdx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_311
.label_331:
	mov	edi, 3
	jmp	.label_344
	.section	.text
	.align	16
	#Procedure 0x4048fe
	.globl sub_4048fe
	.type sub_4048fe, @function
sub_4048fe:

	nop	
.label_363:
	cmp	al, 0x25
	jne	.label_348
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x8c]
	mov	r12b, cl
	xor	r9d, r9d
.label_1504:
	mov	ebx, eax
	mov	al, r12b
.label_368:
	mov	r12b, al
	inc	rbp
	jmp	.label_354
	.section	.text
	.align	16
	#Procedure 0x404924
	.globl sub_404924
	.type sub_404924, @function
sub_404924:

	nop	word ptr cs:[rax + rax]
.label_366:
	inc	rbp
	mov	r9d, edx
.label_354:
	mov	cl, byte ptr [rbp]
	movsx	edx, cl
	mov	al, 1
	lea	esi, [rdx - 0x23]
	cmp	esi, 0xd
	ja	.label_361
	jmp	qword ptr [(rsi * 8) + label_364]
	.section	.text
	.align	16
	#Procedure 0x40494d
	.globl sub_40494d
	.type sub_40494d, @function
sub_40494d:

	nop	dword ptr [rax]
.label_361:
	cmp	edx, 0x5f
	je	.label_366
	cmp	edx, 0x5e
	je	.label_368
.label_1505:
	add	edx, -0x30
	cmp	edx, 9
	ja	.label_369
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_380:
	mov	edi, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_372
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_375
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_372
.label_375:
	lea	eax, [rax + rax*4]
	lea	edi, [rcx + rax*2 - 0x30]
.label_372:
	movsx	ecx, byte ptr [rbp + 1]
	inc	rbp
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, edi
	jb	.label_380
.label_369:
	mov	qword ptr [rsp + 0x18], r8
	movsx	r8d, cl
	cmp	r8d, 0x4f
	je	.label_385
	cmp	r8d, 0x45
	jne	.label_414
.label_385:
	mov	cl, byte ptr [rbp + 1]
	inc	rbp
	jmp	.label_391
	.section	.text
	.align	16
	#Procedure 0x4049cc
	.globl sub_4049cc
	.type sub_4049cc, @function
sub_4049cc:

	nop	dword ptr [rax]
.label_348:
	test	edi, edi
	mov	ecx, edi
	mov	edx, 0
	cmovs	ecx, edx
	movsxd	rbx, ecx
	cmp	ebx, 1
	mov	edx, 1
	cmovbe	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x48]
	sub	rdx, r8
	mov	r15d, 1
	cmp	rbx, rdx
	jae	.label_471
	test	r10, r10
	mov	edx, 0
	je	.label_404
	cmp	ecx, 2
	jb	.label_406
	mov	dword ptr [rsp + 0x2c], r14d
	movsxd	r14, edi
	lea	rdx, [r14 - 1]
	mov	esi, 0x20
	mov	rdi, r10
	mov	r15, r8
	mov	r12, r10
	call	memset
	mov	r11, qword ptr [rsp + 0x38]
	mov	r10, r12
	mov	r8, r15
	lea	r10, [r10 + r14 - 1]
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	al, byte ptr [rbp]
.label_406:
	mov	byte ptr [r10], al
	inc	r10
	mov	rdx, r10
.label_404:
	add	r8, rbx
	xor	r15d, r15d
	mov	r10, rdx
.label_471:
	test	r15d, r15d
	mov	eax, 4
	cmove	r15d, eax
.label_345:
	or	r15d, 4
	cmp	r15d, 4
	je	.label_311
	jmp	.label_376
.label_414:
	xor	r8d, r8d
.label_391:
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 8], rdi
	movsx	esi, cl
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	esi, 0x7a
	ja	.label_317
	mov	r15d, OFFSET FLAT:label_423
	mov	dl, 0x72
	mov	r10d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [(rsi * 8) + label_424]
.label_1516:
	cmp	r8d, 0x45
	je	.label_317
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	eax, dword ptr [r11 + 0x14]
	mov	r9d, dword ptr [r11 + 0x18]
	mov	edx, eax
	sar	edx, 0x1f
	and	edx, 0x190
	lea	r10d, [rax + rdx - 0x64]
	mov	r11d, dword ptr [r11 + 0x1c]
	lea	edx, [r11 + 0x17e]
	sub	edx, r9d
	movsxd	rbx, edx
	imul	rdx, rbx, -0x6db6db6d
	shr	rdx, 0x20
	add	edx, ebx
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 2
	add	edx, edi
	lea	edi, [rdx*8]
	sub	edi, edx
	sub	ebx, edi
	lea	r12d, [r11 + 3]
	sub	r12d, ebx
	js	.label_432
	mov	ebx, 0x16d
	test	r10b, 3
	jne	.label_450
	movsxd	rdi, r10d
	imul	rdi, rdi, 0x51eb851f
	mov	rbx, rdi
	sar	rbx, 0x25
	mov	r14, rdi
	shr	r14, 0x3f
	add	ebx, r14d
	imul	r15d, ebx, 0x64
	sar	rdi, 0x27
	add	edi, r14d
	imul	ebx, edi, 0x190
	xor	edi, edi
	cmp	r10d, ebx
	sete	dil
	add	edi, 0x16d
	cmp	r10d, r15d
	mov	ebx, 0x16e
	cmove	ebx, edi
.label_450:
	sub	r11d, ebx
	lea	edi, [r11 + 0x17e]
	sub	edi, r9d
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	edi, edx
	add	r11d, 3
	sub	r11d, edi
	cmovns	r12d, r11d
	shr	r11d, 0x1f
	xor	r11d, 1
	jmp	.label_465
.label_1530:
	test	bl, bl
	je	.label_473
	mov	r12b, 1
.label_473:
	cmp	r8d, 0x45
	jne	.label_474
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_317
.label_1508:
	dec	rbp
	jmp	.label_317
.label_1509:
	test	r8d, r8d
	jne	.label_317
	mov	r15d, r14d
	xor	eax, eax
	mov	rsi, qword ptr [rsp + 8]
	test	esi, esi
	cmovns	eax, esi
	movsxd	rdx, eax
	cmp	edx, 1
	mov	ebx, 1
	cmova	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rdx, r8
	cmp	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_295
	xor	edx, edx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_298
	cmp	eax, 2
	jb	.label_304
	movsxd	r14, esi
	dec	r14
	cmp	r9d, 0x30
	je	.label_305
	cmp	r9d, 0x2b
	jne	.label_309
.label_305:
	mov	esi, 0x30
	jmp	.label_312
.label_1510:
	mov	edx, 1
	jmp	.label_314
	.section	.text
	.align	16
	#Procedure 0x404c5a
	.globl sub_404c5a
	.type sub_404c5a, @function
sub_404c5a:

	nop	word ptr [rax + rax]
.label_315:
	inc	rdx
.label_314:
	movzx	ebx, byte ptr [rbp + rdx]
	cmp	bl, 0x3a
	je	.label_315
	cmp	bl, 0x7a
	jne	.label_317
	add	rbp, rdx
	mov	qword ptr [rsp + 0x20], rdx
.label_1547:
	cmp	dword ptr [r11 + 0x20], 0
	js	.label_319
	mov	dword ptr [rsp + 0x30], r9d
	mov	rdx, r11
	mov	r11, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rdx + 0x28]
	mov	sil, 1
	test	r9d, r9d
	mov	r10, qword ptr [rsp + 0x20]
	js	.label_308
	test	r9d, r9d
	je	.label_292
	xor	esi, esi
	jmp	.label_308
.label_1511:
	test	r8d, r8d
	jne	.label_317
	test	bl, bl
	je	.label_335
	mov	r12b, 1
.label_335:
	xor	eax, eax
	mov	dl, 0x41
	jmp	.label_332
.label_1512:
	cmp	r8d, 0x45
	je	.label_317
	test	bl, bl
	je	.label_339
	mov	r12b, 1
.label_339:
	xor	eax, eax
	mov	dl, 0x42
	jmp	.label_332
.label_1513:
	cmp	r8d, 0x45
	jne	.label_341
	xor	eax, eax
	mov	dl, 0x43
	jmp	.label_332
.label_1514:
	test	r8d, r8d
	jne	.label_317
	mov	r15d, OFFSET FLAT:label_349
	mov	r10d, 0xffffffff
	jmp	.label_350
.label_1515:
	test	r8d, r8d
	jne	.label_317
	test	r9d, r9d
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_357
	test	ecx, ecx
	jns	.label_357
	mov	r15d, OFFSET FLAT:label_362
	mov	r9d, 0x2b
	mov	r10d, 4
	jmp	.label_350
.label_1517:
	cmp	r8d, 0x45
	je	.label_317
	mov	r13d, dword ptr [r11 + 8]
	jmp	.label_302
.label_1518:
	mov	edi, 2
	cmp	r8d, 0x45
	je	.label_317
	mov	edx, dword ptr [rsp + 0x7c]
	mov	r13d, edx
	jmp	.label_340
.label_1519:
	cmp	r8d, 0x45
	je	.label_317
	mov	r13d, dword ptr [r11 + 4]
	jmp	.label_302
.label_1520:
	cmp	r8d, 0x45
	je	.label_317
	mov	edi, 9
	mov	r11, qword ptr [rsp + 8]
	cmp	r11d, -1
	je	.label_381
	cmp	r11d, 8
	jg	.label_386
	mov	edx, 9
	sub	edx, r11d
	mov	esi, 8
	sub	esi, r11d
	and	edx, 3
	cmp	esi, 3
	mov	esi, dword ptr [rsp + 0x500]
	mov	r13d, esi
	mov	r10, qword ptr [rsp + 0x10]
	jb	.label_390
	lea	esi, [r11 + rdx - 9]
	mov	edi, dword ptr [rsp + 0x500]
	mov	r13d, edi
.label_400:
	movsxd	rdi, r13d
	imul	r13, rdi, 0x68db8bad
	mov	rdi, r13
	shr	rdi, 0x3f
	sar	r13, 0x2c
	add	r13d, edi
	add	esi, 4
	jne	.label_400
.label_390:
	test	edx, edx
	je	.label_407
	neg	edx
	nop	word ptr cs:[rax + rax]
.label_334:
	movsxd	rsi, r13d
	imul	r13, rsi, 0x66666667
	mov	rsi, r13
	shr	rsi, 0x3f
	sar	r13, 0x22
	add	r13d, esi
	inc	edx
	jne	.label_334
.label_407:
	mov	edi, r11d
	jmp	.label_409
.label_1521:
	mov	dil, 1
.label_1539:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	test	bl, bl
	je	.label_412
	mov	r12d, 0
.label_412:
	je	.label_416
	mov	dil, 1
.label_416:
	mov	dl, 0x70
	mov	al, dil
	jmp	.label_411
.label_1522:
	cmp	r8d, 0x45
	je	.label_317
	mov	r13d, dword ptr [r11]
	jmp	.label_302
.label_1523:
	mov	r15d, OFFSET FLAT:label_420
.label_350:
	mov	dword ptr [rsp + 0x2c], r14d
	mov	qword ptr [rsp + 0x58], r13
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x40], r12
	test	r12b, r12b
	setne	r8b
	sub	rsp, 8
	xor	r14d, r14d
	xor	edi, edi
	mov	rsi, -1
	mov	rdx, r15
	mov	rcx, r11
	mov	r13d, r9d
	mov	eax, dword ptr [rsp + 0x508]
	push	rax
	push	qword ptr [rsp + 0x508]
	mov	qword ptr [rsp + 0x38], r10
	push	r10
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	mov	rbx, rax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	r14d, edx
	movsxd	rax, r14d
	cmp	rbx, rax
	mov	r14, rbx
	cmovb	r14, rax
	mov	r12, qword ptr [rsp + 0x48]
	sub	r12, r8
	cmp	r14, r12
	jae	.label_295
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_446
	cmp	rbx, rax
	jae	.label_448
	movsxd	rcx, edx
	mov	qword ptr [rsp + 8], rbx
	sub	rcx, rbx
	mov	eax, r13d
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x30], rcx
	je	.label_425
	cmp	eax, 0x2b
	jne	.label_453
.label_425:
	mov	esi, 0x30
	jmp	.label_455
.label_1524:
	cmp	r8d, 0x45
	je	.label_317
	mov	edx, dword ptr [r11 + 0x1c]
	add	edx, 7
	sub	edx, dword ptr [r11 + 0x18]
	movsxd	r13, edx
	jmp	.label_460
.label_1525:
	cmp	r8d, 0x45
	je	.label_317
	mov	edx, dword ptr [r11 + 0x18]
	mov	esi, dword ptr [r11 + 0x1c]
	lea	edi, [rdx + 6]
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	lea	edx, [rbx + rdx + 6]
	mov	ebx, edx
	shr	ebx, 0x1f
	sar	edx, 2
	add	edx, ebx
	lea	ebx, [rdx*8]
	sub	ebx, edx
	sub	edi, ebx
	add	esi, 7
	sub	esi, edi
	movsxd	r13, esi
.label_460:
	imul	rdx, r13, -0x6db6db6d
	shr	rdx, 0x20
	add	r13d, edx
	mov	edx, r13d
	shr	edx, 0x1f
	sar	r13d, 2
	add	r13d, edx
	jmp	.label_302
.label_1526:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_317
	mov	dl, 0x58
	jmp	.label_337
.label_1527:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x45
	je	.label_477
	cmp	r8d, 0x4f
	je	.label_317
	mov	r13d, dword ptr [r11 + 0x14]
	cmp	r13d, 0xfffff894
	setl	sil
	add	r13d, 0x76c
	mov	r15d, 4
	jmp	.label_359
.label_1528:
	mov	r15d, r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	r12d, r14d
	mov	qword ptr [rsp + 0x58], r13
	mov	rdi, qword ptr [rsp + 0x68]
	call	strlen
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, rax
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	cdqe	
	cmp	r10, rax
	mov	r13, r10
	cmovb	r13, rax
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	r13, rcx
	jae	.label_295
	xor	ecx, ecx
	test	r9, r9
	mov	r14d, r12d
	je	.label_316
	cmp	r10, rax
	jae	.label_318
	movsxd	rax, edx
	mov	qword ptr [rsp + 0x20], r10
	sub	rax, r10
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_365
	cmp	r15d, 0x2b
	jne	.label_324
.label_365:
	mov	esi, 0x30
	jmp	.label_327
.label_1529:
	test	r8d, r8d
	jne	.label_317
	test	bl, bl
	je	.label_329
	mov	r12b, 1
.label_329:
	xor	eax, eax
	mov	dl, 0x61
	jmp	.label_332
.label_1531:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_317
	mov	dl, 0x63
	jmp	.label_337
.label_1532:
	cmp	r8d, 0x45
	je	.label_317
	mov	r13d, dword ptr [r11 + 0xc]
.label_302:
	mov	edi, 2
	jmp	.label_340
.label_1533:
	cmp	r8d, 0x45
	je	.label_317
	mov	edx, dword ptr [r11 + 0xc]
	jmp	.label_346
.label_1534:
	cmp	r8d, 0x45
	je	.label_317
	mov	r13d, dword ptr [r11 + 0x1c]
	cmp	r13d, -1
	setl	sil
	inc	r13d
	mov	edi, 3
	jmp	.label_351
.label_1535:
	cmp	r8d, 0x45
	je	.label_317
	mov	edx, dword ptr [r11 + 8]
	jmp	.label_346
.label_1536:
	cmp	r8d, 0x45
	mov	edx, dword ptr [rsp + 0x7c]
	je	.label_317
.label_346:
	test	r9d, r9d
	mov	esi, 0x5f
	cmove	r9d, esi
	mov	edi, 2
	mov	r13d, edx
	jmp	.label_340
.label_1537:
	cmp	r8d, 0x45
	je	.label_317
	mov	r13d, dword ptr [r11 + 0x10]
	cmp	r13d, -1
	setl	sil
	inc	r13d
	mov	edi, 2
.label_351:
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_374
.label_1538:
	mov	r15d, r14d
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_295
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_389
	cmp	eax, 2
	jb	.label_392
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_395
	cmp	r9d, 0x2b
	jne	.label_396
.label_395:
	mov	esi, 0x30
	jmp	.label_397
.label_1540:
	imul	r13d, dword ptr [r11 + 0x10], 0xb
	sar	r13d, 5
	inc	r13d
	mov	edi, 1
	xor	r14d, r14d
	xor	edx, edx
	xor	esi, esi
.label_374:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_342
.label_1541:
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp + 0xe0], rax
	movups	xmm0, xmmword ptr [r11]
	movups	xmm1, xmmword ptr [r11 + 0x10]
	movups	xmm2, xmmword ptr [r11 + 0x20]
	movaps	xmmword ptr [rsp + 0xd0], xmm2
	movaps	xmmword ptr [rsp + 0xc0], xmm1
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	lea	rsi, [rsp + 0xb0]
	mov	rdi, qword ptr [rsp + 0x4f8]
	call	mktime_z
	mov	rcx, rax
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r12, [rsp + 0xa7]
	nop	dword ptr [rax]
.label_422:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	mov	eax, ebx
	neg	eax
	test	rsi, rsi
	cmove	eax, ebx
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_422
	xor	edx, edx
	mov	r8, r14
	mov	r10, r15
	mov	ebx, 1
	mov	eax, dword ptr [rsp + 0x2c]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	jmp	.label_440
.label_1542:
	mov	r15d, r14d
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_295
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_389
	cmp	eax, 2
	jb	.label_457
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_459
	cmp	r9d, 0x2b
	jne	.label_461
.label_459:
	mov	esi, 0x30
	jmp	.label_464
.label_1543:
	mov	edx, dword ptr [r11 + 0x18]
	lea	esi, [rdx + 6]
	movsxd	r13, esi
	imul	rsi, r13, -0x6db6db6d
	shr	rsi, 0x20
	lea	edx, [rsi + rdx + 6]
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	sub	r13d, esi
	inc	r13d
	jmp	.label_466
.label_1544:
	cmp	r8d, 0x45
	je	.label_317
	mov	r13d, dword ptr [r11 + 0x18]
.label_466:
	mov	edi, 1
.label_340:
	mov	r11, qword ptr [rsp + 8]
.label_415:
	mov	r10, qword ptr [rsp + 0x10]
.label_409:
	mov	esi, r13d
	shr	esi, 0x1f
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_342
.label_1545:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_317
	mov	dl, 0x78
	jmp	.label_337
.label_1546:
	cmp	r8d, 0x45
	jne	.label_480
	xor	eax, eax
	mov	dl, 0x79
	jmp	.label_332
.label_474:
	xor	eax, eax
	mov	edx, ecx
.label_332:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_411
.label_448:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	mov	rdx, r15
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_293
.label_432:
	dec	r10d
	mov	r14d, 0x16d
	test	r10b, 3
	jne	.label_297
	movsxd	rdx, r10d
	imul	rdx, rdx, 0x51eb851f
	mov	rdi, rdx
	sar	rdi, 0x25
	mov	rbx, rdx
	shr	rbx, 0x3f
	add	edi, ebx
	imul	edi, edi, 0x64
	sar	rdx, 0x27
	add	edx, ebx
	imul	edx, edx, 0x190
	xor	ebx, ebx
	cmp	r10d, edx
	sete	bl
	add	ebx, 0x16d
	cmp	r10d, edi
	mov	r14d, 0x16e
	cmove	r14d, ebx
.label_297:
	lea	edi, [r14 + r11 + 0x17e]
	sub	edi, r9d
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	edi, edx
	lea	r12d, [r14 + r11 + 3]
	sub	r12d, edi
	mov	r11d, 0xffffffff
.label_465:
	cmp	esi, 0x47
	je	.label_328
	cmp	esi, 0x67
	jne	.label_330
	movsxd	rdx, eax
	imul	rdx, rdx, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	mov	esi, eax
	sub	esi, edx
	add	esi, r11d
	movsxd	r13, esi
	imul	rdx, r13, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	r13d, edx
	mov	r15d, 2
	jns	.label_333
	mov	edx, 0xfffff894
	sub	edx, r11d
	mov	esi, r13d
	neg	esi
	add	r13d, 0x64
	cmp	eax, edx
	cmovl	r13d, esi
.label_333:
	xor	esi, esi
	jmp	.label_353
.label_319:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_311
.label_341:
	movsxd	rdx, dword ptr [r11 + 0x14]
	cmp	rdx, -0x76c
	setl	sil
	setg	bl
	imul	r13, rdx, 0x51eb851f
	mov	rdi, r13
	shr	rdi, 0x3f
	sar	r13, 0x25
	add	r13d, edi
	imul	edi, r13d, 0x64
	cmp	edx, edi
	sets	dl
	and	dl, bl
	movzx	edx, dl
	sub	r13d, edx
	add	r13d, 0x13
	mov	r15d, 2
	jmp	.label_359
.label_480:
	movsxd	rdx, dword ptr [r11 + 0x14]
	imul	rsi, rdx, 0x51eb851f
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x25
	add	esi, edi
	imul	esi, esi, 0x64
	mov	r13d, edx
	sub	r13d, esi
	mov	r15d, 2
	jns	.label_373
	mov	esi, r13d
	neg	esi
	add	r13d, 0x64
	cmp	edx, 0xfffff894
	cmovl	r13d, esi
.label_373:
	xor	esi, esi
.label_359:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_379
.label_328:
	mov	edx, 0xfffff894
	sub	edx, r11d
	cmp	eax, edx
	setl	sil
	lea	r13d, [r11 + rax + 0x76c]
	mov	r15d, 4
.label_353:
	mov	r10, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
.label_379:
	test	r9d, r9d
	cmove	r9d, dword ptr [rsp + 0x88]
	xor	r14d, r14d
	cmp	r9d, 0x2b
	mov	edx, 0
	jne	.label_398
	cmp	r15d, 2
	mov	edx, 0x63
	mov	edi, 0x270f
	cmove	edi, edx
	cmp	edi, r13d
	setb	bl
	cmp	r15d, r11d
	setl	dl
	or	dl, bl
.label_398:
	mov	rdi, r15
.label_342:
	cmp	r8d, 0x4f
	jne	.label_347
	test	sil, sil
	jne	.label_347
	mov	qword ptr [rsp + 8], r11
	xor	eax, eax
	mov	edx, ecx
	mov	r11, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x20], rdi
	jmp	.label_411
.label_347:
	mov	qword ptr [rsp + 0x40], r12
	mov	eax, r13d
	neg	eax
	test	sil, sil
	cmove	eax, r13d
	lea	r12, [rsp + 0xa7]
	mov	rbx, rdi
	mov	r8, qword ptr [rsp + 0x18]
	nop	
.label_303:
	test	r14b, 1
	je	.label_476
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_476:
	sar	r14d, 1
	mov	ecx, eax
	mov	r13d, 0xcccccccd
	imul	r13, rcx
	shr	r13, 0x23
	lea	ecx, [r13 + r13]
	lea	ecx, [rcx + rcx*4]
	mov	edi, eax
	sub	edi, ecx
	or	edi, 0x30
	mov	byte ptr [r12 - 1], dil
	dec	r12
	cmp	eax, 9
	mov	eax, r13d
	ja	.label_303
	test	r14d, r14d
	mov	eax, r13d
	jne	.label_303
	xor	eax, eax
.label_440:
	cmp	ebx, r11d
	cmovl	ebx, r11d
	test	dl, dl
	je	.label_433
	mov	dl, 0x2b
.label_433:
	test	sil, sil
	mov	sil, 0x2d
	jne	.label_435
	mov	esi, edx
.label_435:
	cmp	r9d, 0x2d
	mov	dword ptr [rsp + 0x2c], eax
	mov	qword ptr [rsp + 0x58], r13
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x20], rbx
	jne	.label_439
	test	sil, sil
	je	.label_323
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_295
	xor	ecx, ecx
	test	r10, r10
	je	.label_434
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_322
	test	al, al
	jne	.label_322
	movsxd	r14, r11d
	lea	rdx, [r14 - 1]
	mov	byte ptr [rsp + 0x50], sil
	mov	esi, 0x20
	mov	rdi, r10
	mov	r15, r8
	mov	r13, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	mov	sil, byte ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	lea	r10, [r10 + r14 - 1]
	jmp	.label_322
.label_439:
	movsxd	rax, ebx
	mov	rcx, r12
	lea	rdx, [rsp + 0xa7]
	sub	rcx, rdx
	mov	edx, esi
	neg	dl
	sbb	r13, r13
	add	r13, rcx
	add	r13, rax
	test	r13d, r13d
	jle	.label_469
	cmp	r9d, 0x5f
	jne	.label_472
	movsxd	r14, r13d
	mov	rax, qword ptr [rsp + 0x48]
	sub	rax, r8
	cmp	r14, rax
	jae	.label_295
	xor	edx, edx
	test	r10, r10
	mov	r15d, 0
	je	.label_475
	mov	byte ptr [rsp + 0x50], sil
	mov	esi, 0x20
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r8
	mov	r15, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	xor	edx, edx
	mov	sil, byte ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 8]
	mov	r8, rbx
	add	r15, r14
.label_475:
	add	r8, r14
	sub	r11d, r13d
	cmovg	edx, r11d
	test	sil, sil
	je	.label_294
	xor	eax, eax
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_295
	xor	r10d, r10d
	test	r15, r15
	je	.label_310
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_313
	test	al, al
	jne	.label_313
	movsxd	r14, edx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdx, [r14 - 1]
	mov	byte ptr [rsp + 0x50], sil
	mov	esi, 0x20
	mov	rdi, r15
	mov	r13, r8
	call	memset
	mov	rdx, qword ptr [rsp + 0x18]
	mov	sil, byte ptr [rsp + 0x50]
	mov	r8, r13
	lea	r15, [r15 + r14 - 1]
.label_313:
	mov	byte ptr [r15], sil
	inc	r15
	mov	r10, r15
.label_310:
	add	r8, rbx
	mov	r11d, edx
	jmp	.label_323
.label_469:
	test	sil, sil
	je	.label_323
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_295
	xor	ecx, ecx
	test	r10, r10
	je	.label_434
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_322
	test	al, al
	jne	.label_322
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 8], r11
	mov	byte ptr [rsp + 0x50], sil
	je	.label_399
	cmp	eax, 0x2b
	jne	.label_352
.label_399:
	mov	esi, 0x30
	jmp	.label_356
.label_472:
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rax, rcx
	jae	.label_295
	test	sil, sil
	je	.label_462
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	r15d, 1
	cmova	r15, rdx
	cmp	r15, rcx
	jae	.label_295
	xor	ecx, ecx
	test	r10, r10
	je	.label_371
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_377
	test	al, al
	jne	.label_377
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	byte ptr [rsp + 0x50], sil
	je	.label_378
	cmp	eax, 0x2b
	jne	.label_382
.label_378:
	mov	esi, 0x30
	jmp	.label_428
.label_330:
	movsxd	rdx, r12d
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	edx, esi
	mov	esi, edx
	sar	esi, 2
	shr	edx, 0x1f
	lea	r13d, [rsi + rdx + 1]
	mov	edi, 2
	mov	r10, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	jmp	.label_409
.label_294:
	mov	r10, r15
	mov	r11d, edx
	jmp	.label_323
.label_477:
	mov	dl, 0x59
.label_337:
	xor	eax, eax
.label_411:
	mov	dword ptr [rsp + 0x40], eax
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x58], r13
	mov	r13, qword ptr [rsp + 0x10]
	mov	word ptr [rsp + 0x63], 0x2520
	test	r8d, r8d
	lea	rcx, [rsp + 0x65]
	je	.label_403
	mov	byte ptr [rsp + 0x65], r8b
	lea	rcx, [rsp + 0x66]
.label_403:
	mov	byte ptr [rcx], dl
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xb0]
	lea	rdx, [rsp + 0x63]
	mov	esi, 0x400
	mov	rcx, r11
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_413
	mov	rsi, qword ptr [rsp + 0x20]
	mov	r15, r12
	lea	r10, [rbx - 1]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	cdqe	
	cmp	r10, rax
	mov	r12, r10
	cmovb	r12, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	r12, rcx
	jae	.label_295
	xor	ecx, ecx
	mov	rdi, r13
	test	rdi, rdi
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_463
	cmp	r10, rax
	setae	al
	test	esi, esi
	jne	.label_426
	test	al, al
	jne	.label_426
	mov	dword ptr [rsp + 0x2c], r14d
	movsxd	r14, edx
	sub	r14, r10
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x50], r10
	je	.label_431
	cmp	eax, 0x2b
	jne	.label_436
.label_431:
	mov	esi, 0x30
	jmp	.label_437
.label_413:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, r13
	mov	r13, qword ptr [rsp + 0x58]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_311
.label_426:
	mov	eax, dword ptr [rsp + 0x40]
	jmp	.label_442
.label_436:
	mov	esi, 0x20
.label_437:
	mov	rdx, r14
	call	memset
	mov	r10, qword ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, r13
	mov	r8, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rsp + 0x40]
	add	rdi, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_442:
	test	al, 1
	jne	.label_451
	test	r15b, 1
	jne	.label_452
	lea	rsi, [rsp + 0xb1]
	mov	rdx, r10
	mov	rbx, rdi
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_307
.label_451:
	test	r10, r10
	je	.label_307
	mov	r13d, r14d
	mov	r14, rdi
	mov	r15, r10
	call	__ctype_tolower_loc
	mov	r10, r15
	mov	rdi, r14
	mov	rdx, rbx
	add	rdx, -2
	mov	r9d, r10d
	and	r9d, 3
	cmp	rdx, 3
	mov	rsi, r10
	jb	.label_467
	lea	r8, [r9 + 1]
	nop	
.label_370:
	movzx	esi, byte ptr [rsp + rbx + 0xaf]
	mov	rdx, qword ptr [rax]
	movzx	edx, byte ptr [rdx + rsi*4]
	mov	byte ptr [rdi + rbx - 2], dl
	movzx	edx, byte ptr [rsp + rbx + 0xae]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 3], dl
	movzx	edx, byte ptr [rsp + rbx + 0xad]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 4], dl
	movzx	edx, byte ptr [rsp + rbx + 0xac]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 5], dl
	add	rbx, -4
	cmp	r8, rbx
	jne	.label_370
	dec	rbx
	mov	rsi, rbx
.label_467:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_307
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	word ptr cs:[rax + rax]
.label_429:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_429
	jmp	.label_307
.label_452:
	test	r10, r10
	je	.label_307
	mov	r13d, r14d
	mov	r14, rdi
	mov	r15, r10
	call	__ctype_toupper_loc
	mov	r10, r15
	mov	rdi, r14
	mov	rdx, rbx
	add	rdx, -2
	mov	r9d, r10d
	and	r9d, 3
	cmp	rdx, 3
	mov	rsi, r10
	jb	.label_401
	lea	r8, [r9 + 1]
	nop	word ptr cs:[rax + rax]
.label_321:
	movzx	esi, byte ptr [rsp + rbx + 0xaf]
	mov	rdx, qword ptr [rax]
	movzx	edx, byte ptr [rdx + rsi*4]
	mov	byte ptr [rdi + rbx - 2], dl
	movzx	edx, byte ptr [rsp + rbx + 0xae]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 3], dl
	movzx	edx, byte ptr [rsp + rbx + 0xad]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 4], dl
	movzx	edx, byte ptr [rsp + rbx + 0xac]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 5], dl
	add	rbx, -4
	cmp	r8, rbx
	jne	.label_321
	dec	rbx
	mov	rsi, rbx
.label_401:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_307
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	dword ptr [rax]
.label_405:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_405
.label_307:
	add	rdi, r10
	mov	rcx, rdi
.label_463:
	add	r8, r12
	mov	r10, rcx
	jmp	.label_355
.label_318:
	mov	r15, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_358
.label_453:
	mov	esi, 0x20
.label_455:
	mov	rdx, rcx
	mov	rbx, rdi
	call	memset
	mov	rcx, qword ptr [rsp + 0x38]
	add	rbx, qword ptr [rsp + 0x30]
	mov	rdi, rbx
	mov	r9d, r13d
	mov	rdx, r15
	mov	r10, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 8]
.label_293:
	xor	r8d, r8d
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	setne	r8b
	sub	rsp, 8
	mov	rsi, r12
	mov	eax, dword ptr [rsp + 0x508]
	push	rax
	push	qword ptr [rsp + 0x508]
	push	r10
	mov	r15, rdi
	call	__strftime_internal
	add	rsp, 0x20
	add	rbx, r15
	mov	rcx, rbx
	mov	r8, qword ptr [rsp + 0x18]
.label_446:
	add	r8, r14
	jmp	.label_384
.label_292:
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	byte ptr [rdx], 0x2d
	sete	sil
.label_308:
	cmp	r10, 3
	ja	.label_387
	movsxd	rax, r9d
	imul	rbx, rax, -0x77777777
	shr	rbx, 0x20
	add	ebx, r9d
	mov	edi, ebx
	shr	edi, 0x1f
	sar	ebx, 5
	add	ebx, edi
	imul	r13, rax, -0x6e5d4c3b
	shr	r13, 0x20
	add	r13d, r9d
	mov	edi, r13d
	shr	edi, 0x1f
	sar	r13d, 0xb
	add	r13d, edi
	movsxd	rdi, ebx
	imul	rbx, rdi, -0x77777777
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 5
	add	ebx, edx
	imul	edx, ebx, 0x3c
	imul	ebx, edi, 0x3c
	sub	edi, edx
	sub	r9d, ebx
	jmp	qword ptr [(r10 * 8) + label_421]
.label_1592:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 5
.label_344:
	xor	r14d, r14d
	jmp	.label_410
.label_357:
	xor	eax, eax
	mov	r10d, ecx
	add	r10d, -6
	cmovs	r10d, eax
	mov	r15d, OFFSET FLAT:label_362
	jmp	.label_350
.label_381:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	r11d, 9
	jmp	.label_415
.label_387:
	xor	edi, edi
	mov	r15d, 0xe
	jmp	.label_418
.label_1595:
	test	r9d, r9d
	je	.label_419
.label_1594:
	imul	r13d, r13d, 0x2710
	imul	edx, edi, 0x64
	add	r13d, r9d
	add	r13d, edx
	mov	edi, 9
	mov	r14d, 0x14
	jmp	.label_410
.label_386:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	edi, r11d
	jmp	.label_415
.label_324:
	mov	esi, 0x20
.label_327:
	mov	rdi, r9
	mov	rdx, rax
	mov	r14, r9
	call	memset
	mov	r15, qword ptr [rsp + 0x68]
	add	r14, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r14
	mov	r14d, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x20]
.label_358:
	test	bl, bl
	je	.label_441
	test	r10, r10
	je	.label_320
	mov	r12, r9
	mov	rbx, r10
	call	__ctype_tolower_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_443
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	jmp	.label_447
.label_441:
	test	al, al
	je	.label_449
	test	r10, r10
	je	.label_320
	mov	r15, r9
	mov	rbx, r10
	call	__ctype_toupper_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_454
	mov	rdx, r10
	mov	r9, r15
	jmp	.label_458
.label_443:
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	nop	word ptr cs:[rax + rax]
.label_468:
	movzx	esi, byte ptr [r15 + rdx - 1]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	esi, byte ptr [r15 + rdx - 2]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	esi, byte ptr [r15 + rdx - 3]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	esi, byte ptr [r15 + rdx - 4]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 4], bl
	lea	rdx, [rdx - 4]
	cmp	rcx, rdx
	jne	.label_468
.label_447:
	test	rcx, rcx
	je	.label_320
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
	nop	word ptr [rax + rax]
.label_478:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_478
	jmp	.label_320
.label_396:
	mov	esi, 0x20
.label_397:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_392:
	mov	byte ptr [rdi], 0xa
	jmp	.label_326
.label_461:
	mov	esi, 0x20
.label_464:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_457:
	mov	byte ptr [rdi], 9
.label_326:
	inc	rdi
	mov	rcx, rdi
.label_389:
	add	r8, rbx
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_311
.label_352:
	mov	esi, 0x20
.label_356:
	mov	rdi, r10
	mov	rdx, r14
	mov	r15, r8
	mov	r13, r10
	call	memset
	mov	sil, byte ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	add	r10, r14
.label_322:
	mov	byte ptr [r10], sil
	inc	r10
	mov	rcx, r10
.label_434:
	add	r8, rbx
	mov	r10, rcx
	jmp	.label_323
.label_449:
	mov	rdi, r9
	mov	rsi, r15
	mov	rdx, r10
	mov	rbx, r9
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_320
.label_419:
	test	edi, edi
	je	.label_331
.label_1593:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 6
	mov	r14d, 4
.label_410:
	mov	r15d, 0x21
.label_418:
	mov	r10, r11
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	mov	ebx, r15d
	and	bl, 0x3f
	cmp	bl, 0xe
	je	.label_338
	mov	dl, 1
	cmp	bl, 0x21
	je	.label_342
	mov	r11, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_345
.label_338:
	mov	qword ptr [rsp + 0x20], rdi
.label_317:
	mov	r10, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	qword ptr [rsp + 0x58], r13
	lea	rax, [rbp - 2]
	xor	ecx, ecx
	xor	r15d, r15d
	mov	edx, 1
.label_430:
	mov	r12, rdx
	mov	r14, rax
	mov	r13, rcx
	mov	ebx, 1
	sub	rbx, r12
	lea	rdx, [r12 + 1]
	lea	rax, [r14 - 1]
	inc	r15b
	lea	rcx, [r13 - 1]
	cmp	byte ptr [rbp + rbx], 0x25
	jne	.label_430
	mov	r11, qword ptr [rsp + 8]
	test	r11d, r11d
	mov	eax, r11d
	mov	ecx, 0
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	cmova	ecx, r12d
	movsxd	rsi, ecx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rsi, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_295
	test	rdi, rdi
	mov	ecx, 0
	je	.label_444
	movsxd	rdx, r12d
	test	r10d, r10d
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x30], rsi
	jne	.label_383
	cmp	r12d, eax
	jae	.label_383
	movsxd	rax, r11d
	sub	rax, rdx
	cmp	r9d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_388
	cmp	r9d, 0x2b
	jne	.label_393
.label_388:
	mov	esi, 0x30
	jmp	.label_394
.label_393:
	mov	esi, 0x20
.label_394:
	mov	rdx, rax
	call	memset
	mov	rax, qword ptr [rsp + 0x10]
	add	rax, qword ptr [rsp + 8]
	mov	rdi, rax
	mov	rdx, qword ptr [rsp + 0x20]
.label_383:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	jne	.label_402
	add	rbx, rbp
	mov	rsi, rbx
	mov	rbx, rdi
	call	memcpy
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_301
.label_402:
	mov	rbx, rdi
	call	__ctype_toupper_loc
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	movsxd	rcx, r12d
	lea	rdx, [rcx - 1]
	and	ecx, 3
	cmp	rdx, 3
	mov	rdx, r10
	jb	.label_408
	movsxd	rdx, r12d
	add	r14, rdx
	and	r15b, 3
	movzx	esi, r15b
	mov	rdx, r10
	nop	word ptr cs:[rax + rax]
.label_417:
	movzx	edi, byte ptr [r14 + 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	edi, byte ptr [r14]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	edi, byte ptr [r14 - 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	edi, byte ptr [r14 - 2]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 4], bl
	add	rdx, -4
	add	r14, -4
	cmp	rsi, rdx
	jne	.label_417
.label_408:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_301
	lea	rcx, [r9 + rdx - 1]
	add	rdx, rbp
	lea	rdx, [r13 + rdx - 1]
	and	r12d, 3
	neg	r12
	nop	
.label_438:
	movzx	esi, byte ptr [rdx]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [rcx], bl
	dec	rcx
	dec	rdx
	inc	r12
	jne	.label_438
.label_301:
	add	r9, r10
	mov	rcx, r9
	mov	rsi, qword ptr [rsp + 0x30]
.label_444:
	add	r8, rsi
.label_384:
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x58]
	mov	r14d, dword ptr [rsp + 0x2c]
	jmp	.label_311
.label_382:
	mov	esi, 0x20
.label_428:
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r10
	call	memset
	mov	sil, byte ptr [rsp + 0x50]
	mov	r10, rbx
	mov	r8, qword ptr [rsp + 0x18]
	add	r10, r14
.label_377:
	mov	byte ptr [r10], sil
	inc	r10
	mov	rcx, r10
.label_371:
	add	r8, r15
	mov	r10, rcx
.label_462:
	xor	r11d, r11d
	test	r10, r10
	movsxd	r15, r13d
	mov	eax, 0
	je	.label_456
	mov	esi, 0x30
	mov	rdi, r10
	mov	rdx, r15
	mov	r14, r8
	mov	rbx, r10
	call	memset
	xor	r11d, r11d
	mov	r8, r14
	add	rbx, r15
	mov	rax, rbx
.label_456:
	add	r8, r15
	mov	r10, rax
.label_323:
	lea	r15, [rsp + 0xa7]
	sub	r15, r12
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	cdqe	
	cmp	r15, rax
	mov	r13, r15
	cmovb	r13, rax
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	r13, rcx
	jae	.label_295
	xor	ecx, ecx
	test	r10, r10
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_316
	cmp	r15, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_427
	test	al, al
	jne	.label_427
	mov	qword ptr [rsp + 0x18], r13
	mov	r13, r8
	movsxd	r14, r11d
	sub	r14, r15
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	je	.label_336
	cmp	eax, 0x2b
	jne	.label_479
.label_336:
	mov	esi, 0x30
	jmp	.label_481
.label_479:
	mov	esi, 0x20
.label_481:
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r10
	call	memset
	add	rbx, r14
	mov	r8, r13
	mov	r10, rbx
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	r13, qword ptr [rsp + 0x18]
.label_427:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_296
	test	r15, r15
	je	.label_300
	mov	r14, r8
	mov	rbx, r10
	call	__ctype_toupper_loc
	mov	r10, rbx
	lea	rcx, [rsp + 0xa7]
	sub	ecx, r12d
	lea	rdx, [rsp + 0xa6]
	sub	rdx, r12
	and	ecx, 3
	cmp	rdx, 3
	mov	rdx, r15
	jb	.label_306
	mov	r8, r12
	neg	r8
	mov	rdi, r10
	sub	rdi, r12
	dec	rdi
	mov	r9, -1
	sub	r8, rcx
	lea	rdx, [rsp + 0xa7]
	nop	word ptr [rax + rax]
.label_445:
	movzx	esi, byte ptr [r9 + rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx], bl
	movzx	esi, byte ptr [r9 + rdx - 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 1], bl
	movzx	esi, byte ptr [r9 + rdx - 2]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 2], bl
	movzx	esi, byte ptr [r9 + rdx - 3]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 3], bl
	add	rdx, -4
	mov	rsi, r8
	add	rsi, rdx
	jne	.label_445
	sub	rdx, r12
.label_306:
	test	rcx, rcx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_300
	lea	rsi, [r10 + rdx - 1]
	lea	rdx, [r12 + rdx - 1]
	neg	rcx
	nop	dword ptr [rax + rax]
.label_343:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_343
	jmp	.label_300
.label_296:
	mov	rdi, r10
	mov	rsi, r12
	mov	rdx, r15
	mov	r14, r8
	mov	rbx, r10
	call	memcpy
	mov	r10, rbx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_300:
	add	r10, r15
	mov	rcx, r10
.label_316:
	add	r8, r13
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
.label_355:
	mov	r13, qword ptr [rsp + 0x58]
	nop	
.label_311:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	mov	edi, 0xffffffff
	test	al, al
	jne	.label_363
.label_299:
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_367
	test	r10, r10
	je	.label_367
	mov	byte ptr [r10], 0
.label_367:
	mov	qword ptr [rsp + 0x70], r8
.label_376:
	mov	rax, qword ptr [rsp + 0x70]
	add	rsp, 0x4b8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_295:
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_376
	.section	.text
	.align	16
	#Procedure 0x406589
	.globl sub_406589
	.type sub_406589, @function
sub_406589:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406590

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, OFFSET FLAT:label_273
	call	getenv
	mov	r15, rax
	test	r15, r15
	mov	bl, byte ptr [r14 + 8]
	je	.label_488
	test	bl, bl
	je	.label_490
	lea	rdi, [r14 + 9]
	mov	rsi, r15
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_483
.label_490:
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	inc	r12
	mov	bpl, 1
	jmp	.label_485
.label_488:
	xor	ebp, ebp
	mov	eax, 1
	test	bl, bl
	mov	r12d, 0
	je	.label_483
.label_485:
	lea	rax, [r12 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r12, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_483
	mov	qword ptr [r13], 0
	mov	byte ptr [r13 + 8], bpl
	mov	byte ptr [r13 + 9], 0
	test	bpl, bpl
	je	.label_487
	lea	rbp, [r13 + 9]
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0
.label_487:
	test	bl, bl
	je	.label_484
	add	r14, 9
	mov	edi, OFFSET FLAT:label_273
	mov	edx, 1
	mov	rsi, r14
	call	setenv
	jmp	.label_489
.label_484:
	mov	edi, OFFSET FLAT:label_273
	call	unsetenv
.label_489:
	test	eax, eax
	je	.label_491
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	cmp	r13, 2
	jb	.label_482
	nop	dword ptr [rax]
.label_486:
	mov	rbx, qword ptr [r13]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_486
.label_482:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_483
.label_491:
	call	tzset
	mov	rax, r13
.label_483:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4066c2
	.globl sub_4066c2
	.type sub_4066c2, @function
sub_4066c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066d0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rdi
	mov	r12b, 1
	cmp	rbp, 1
	je	.label_494
	call	__errno_location
	mov	r14, rax
	mov	r15d, dword ptr [r14]
	cmp	byte ptr [rbp + 8], 0
	je	.label_493
	lea	rsi, [rbp + 9]
	mov	edi, OFFSET FLAT:label_273
	mov	edx, 1
	call	setenv
	jmp	.label_495
.label_493:
	mov	edi, OFFSET FLAT:label_273
	call	unsetenv
.label_495:
	test	eax, eax
	je	.label_496
	mov	r15d, dword ptr [r14]
	xor	r12d, r12d
	jmp	.label_497
.label_496:
	call	tzset
	mov	r12b, 1
.label_497:
	cmp	rbp, 2
	jb	.label_492
	nop	
.label_498:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_498
.label_492:
	mov	dword ptr [r14], r15d
.label_494:
	mov	eax, r12d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406753
	.globl sub_406753
	.type sub_406753, @function
sub_406753:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406760

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_499
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_499:
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
	.align	16
	#Procedure 0x4067e3
	.globl sub_4067e3
	.type sub_4067e3, @function
sub_4067e3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_500:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_500
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x406811
	.globl sub_406811
	.type sub_406811, @function
sub_406811:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406820

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x406831
	.globl sub_406831
	.type sub_406831, @function
sub_406831:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406840
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x406848
	.globl sub_406848
	.type sub_406848, @function
sub_406848:

	nop	dword ptr [rax + rax]
.label_506:
	test	rcx, rcx
	jne	.label_504
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_504:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_505
.label_507:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_502
	test	rbx, rbx
	jne	.label_502
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_503:
	call	xalloc_die
.label_502:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_501
	test	rax, rax
	je	.label_503
.label_501:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4068b5
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_506
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_503
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_507
.label_505:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4068e7
	.globl sub_4068e7
	.type sub_4068e7, @function
sub_4068e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068f0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_508]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_509]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_510]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_511
	test	rsi, rsi
	je	.label_511
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
.label_511:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40695c
	.globl sub_40695c
	.type sub_40695c, @function
sub_40695c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406960

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
	.align	16
	#Procedure 0x406979
	.globl sub_406979
	.type sub_406979, @function
sub_406979:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406980

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_94
	call	setlocale
	mov	edi, OFFSET FLAT:label_519
	mov	esi, OFFSET FLAT:label_520
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_519
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r14d, r14d
	xor	r13d, r13d
	xor	r15d, r15d
	jmp	.label_512
.label_1716:
	mov	r14b, 1
	mov	r13, qword ptr [rip + optarg]
	nop	word ptr cs:[rax + rax]
.label_512:
	mov	edx, OFFSET FLAT:short_options
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x48
	jle	.label_537
	add	eax, -0x49
	cmp	eax, 0x38
	ja	.label_523
	mov	ecx, OFFSET FLAT:rfc_email_format
	jmp	qword ptr [(rax * 8) + label_529]
.label_1711:
	mov	rsi, qword ptr [rip + optarg]
	xor	eax, eax
	test	rsi, rsi
	je	.label_534
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_557
	mov	edx, OFFSET FLAT:time_spec_string
	mov	ecx, OFFSET FLAT:time_spec
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + time_spec]
.label_534:
	mov	eax, eax
	shl	rax, 5
	lea	rcx, qword ptr [rax + main.iso_8601_format]
	jmp	.label_545
.label_1713:
	mov	r15, qword ptr [rip + optarg]
	jmp	.label_512
.label_1714:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_512
.label_1715:
	mov	r12, qword ptr [rip + optarg]
	jmp	.label_512
.label_1717:
	mov	edi, OFFSET FLAT:label_558
	call	putenv
	test	eax, eax
	je	.label_512
	jmp	.label_563
.label_1718:
	mov	rsi, qword ptr [rip + optarg]
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_565
	mov	edx, OFFSET FLAT:label_566
	mov	ecx, OFFSET FLAT:label_567
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + label_567]
	shl	rax, 5
	lea	rcx, qword ptr [rax + main.rfc_3339_format]
.label_545:
	test	rcx, rcx
	je	.label_512
.label_1712:
	cmp	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp + 8], rcx
	je	.label_512
	jmp	.label_521
.label_1719:
	or	byte ptr [rip + parse_datetime_flags],  1
	jmp	.label_512
.label_537:
	cmp	eax, -1
	jne	.label_525
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], r15
	test	r15, r15
	setne	al
	xor	r15d, r15d
	test	r12, r12
	setne	r15b
	cmp	qword ptr [rsp + 0x20], 1
	sbb	r15d, -1
	add	r15d, eax
	cmp	r15d, 2
	jae	.label_528
	test	r14b, r14b
	je	.label_541
	test	r15d, r15d
	jne	.label_542
.label_541:
	movsxd	rcx, dword ptr [rip + optind]
	cmp	ecx, ebp
	mov	qword ptr [rsp + 0x28], r14
	mov	qword ptr [rsp + 0x38], r13
	jge	.label_543
	lea	eax, [rcx + 1]
	cmp	eax, ebp
	jl	.label_547
	mov	rcx, qword ptr [rbx + rcx*8]
	cmp	byte ptr [rcx], 0x2b
	jne	.label_550
	cmp	qword ptr [rsp + 8], 0
	jne	.label_521
	mov	r14, r12
	mov	dword ptr [rip + optind],  eax
	inc	rcx
	jmp	.label_556
.label_550:
	test	r14b, r14b
	jne	.label_561
	test	r15d, r15d
	jne	.label_561
.label_543:
	mov	r14, r12
	cmp	qword ptr [rsp + 8], 0
	jne	.label_564
	mov	edi, 0x2006c
	call	rpl_nl_langinfo
	cmp	byte ptr [rax], 0
	mov	ecx, OFFSET FLAT:label_568
	cmovne	rcx, rax
.label_556:
	mov	qword ptr [rsp + 8], rcx
.label_564:
	mov	edi, OFFSET FLAT:label_273
	call	getenv
	mov	r13, rax
	mov	rdi, r13
	call	tzalloc
	mov	r12, rax
	mov	rdi, qword ptr [rsp + 0x20]
	test	rdi, rdi
	je	.label_574
	cmp	byte ptr [rdi], 0x2d
	jne	.label_515
	cmp	byte ptr [rdi + 1], 0
	je	.label_518
.label_515:
	mov	esi, OFFSET FLAT:label_551
	call	fopen
	mov	rbx, rax
	test	rbx, rbx
	je	.label_524
.label_546:
	mov	qword ptr [rsp + 0x10], 0
	mov	qword ptr [rsp + 0x30], 0
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsp + 0x30]
	mov	edx, 0xa
	mov	rcx, rbx
	call	__getdelim
	mov	rbp, rax
	mov	r14b, 1
	test	rbp, rbp
	js	.label_540
	mov	r14b, 1
	lea	r15, [rsp + 0x30]
	nop	dword ptr [rax]
.label_531:
	mov	rsi, qword ptr [rsp + 0x10]
	mov	ecx, dword ptr [rip + parse_datetime_flags]
	xor	edx, edx
	lea	rdi, [rsp + 0x48]
	mov	r8, r12
	mov	r9, r13
	call	parse_datetime2
	test	al, al
	je	.label_552
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 8]
	mov	rcx, r12
	call	show_date
	and	al, r14b
	mov	r14b, al
	jmp	.label_559
.label_552:
	mov	rax, qword ptr [rsp + 0x10]
	cmp	byte ptr [rax + rbp - 1], 0xa
	jne	.label_517
	mov	byte ptr [rax + rbp - 1], 0
.label_517:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_539
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x10]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_559:
	mov	edx, 0xa
	lea	rdi, [rsp + 0x10]
	mov	rsi, r15
	mov	rcx, rbx
	call	__getdelim
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_531
.label_540:
	mov	rdi, rbx
	call	rpl_fclose
	cmp	eax, -1
	je	.label_524
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	movzx	eax, r14b
	jmp	.label_530
.label_574:
	mov	rax, qword ptr [rsp + 0x28]
	test	al, al
	jne	.label_536
	test	r15d, r15d
	jne	.label_536
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, ebp
	jge	.label_538
	mov	rbp, qword ptr [rbx + rax*8]
	lea	rdi, [rsp + 0x10]
	mov	edx, 7
	mov	rsi, rbp
	call	posixtime
	mov	qword ptr [rsp + 0x18], 0
	test	al, al
	jne	.label_549
	jmp	.label_516
.label_536:
	test	r14, r14
	je	.label_548
	lea	rdx, [rsp + 0x48]
	mov	edi, 1
	mov	rsi, r14
	call	__xstat
	test	eax, eax
	jne	.label_555
	movups	xmm0, xmmword ptr [rsp + 0xa0]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	jmp	.label_560
.label_518:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_562
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x20], rax
	mov	rbx, qword ptr [rip + stdin]
	jmp	.label_546
.label_538:
	lea	rdi, [rsp + 0x10]
	call	gettime
.label_560:
	mov	rax, qword ptr [rsp + 0x28]
	jmp	.label_569
.label_548:
	mov	rax, qword ptr [rsp + 0x38]
	test	rax, rax
	mov	rbp, qword ptr [rsp + 0x40]
	cmovne	rbp, rax
	mov	ecx, dword ptr [rip + parse_datetime_flags]
	lea	rdi, [rsp + 0x10]
	xor	edx, edx
	mov	rsi, rbp
	mov	r8, r12
	mov	r9, r13
	call	parse_datetime2
	test	al, al
	mov	rax, qword ptr [rsp + 0x28]
	je	.label_516
.label_569:
	mov	ebp, 1
	test	al, al
	je	.label_527
.label_549:
	lea	rdi, [rsp + 0x10]
	call	settime
	mov	ebp, 1
	test	eax, eax
	je	.label_527
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_514
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_527:
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	rcx, r12
	call	show_date
	movzx	eax, al
	and	eax, ebp
.label_530:
	not	eax
	and	eax, 1
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_525:
	cmp	eax, 0xffffff7d
	je	.label_554
	cmp	eax, 0xffffff7e
	jne	.label_523
	xor	edi, edi
	call	usage
.label_554:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_571
	mov	edx, OFFSET FLAT:label_572
	mov	r8d, OFFSET FLAT:label_573
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_523:
	mov	edi, 1
	call	usage
.label_521:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_570
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_524:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x20]
.label_513:
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_522
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_563:
	call	xalloc_die
.label_528:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_532
	jmp	.label_533
.label_542:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_535
.label_533:
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
.label_547:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_544
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	jmp	.label_526
.label_561:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_553
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [rbx + rax*8]
.label_526:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_516:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_539
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_555:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	jmp	.label_513
	.section	.text
	.align	16
	#Procedure 0x407013
	.globl sub_407013
	.type sub_407013, @function
sub_407013:

	nop	word ptr cs:[rax + rax]
.label_575:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407025
	.globl sub_407025
	.type sub_407025, @function
sub_407025:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40702f
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
	je	.label_576
	test	r14, r14
	je	.label_575
.label_576:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x407060

	.globl __strftime_internal_0
	.type __strftime_internal_0, @function
__strftime_internal_0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4a8
	mov	r13d, r9d
	mov	dword ptr [rsp + 0x70], r8d
	mov	dword ptr [rsp + 0x74], ecx
	mov	rbx, rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	eax, dword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:label_94
	cmovne	rdx, rcx
	mov	qword ptr [rsp + 0x60], rdx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	edx, 0xc
	cmovne	edx, eax
	cmp	eax, 0xc
	cmovg	edx, ecx
	mov	dword ptr [rsp + 0x6c], edx
	mov	cl, byte ptr [r12]
	test	cl, cl
	mov	eax, 0
	je	.label_582
	lea	rax, [rsp + 0x80]
	mov	rdx, -0x17
	sub	rdx, rax
	mov	qword ptr [rsp + 0x78], rdx
	xor	r11d, r11d
	mov	qword ptr [rsp + 0x28], rbx
	jmp	.label_619
.label_614:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_588
.label_626:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_626
.label_588:
	movsx	edi, byte ptr [r12]
.label_584:
	mov	rsi, rbx
	call	fputc
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9d, dword ptr [rsp + 0x14]
.label_604:
	add	r11, r15
	mov	r8, qword ptr [rsp + 0x30]
	jmp	.label_677
.label_603:
	mov	eax, 3
	jmp	.label_636
	.section	.text
	.align	16
	#Procedure 0x407133
	.globl sub_407133
	.type sub_407133, @function
sub_407133:

	nop	word ptr cs:[rax + rax]
.label_619:
	cmp	cl, 0x25
	jne	.label_642
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x74]
	mov	dil, cl
	xor	r14d, r14d
.label_1695:
	mov	ebx, eax
	mov	al, dil
.label_655:
	mov	dil, al
	inc	r12
	jmp	.label_644
	.section	.text
	.align	16
	#Procedure 0x407162
	.globl sub_407162
	.type sub_407162, @function
sub_407162:

	nop	word ptr cs:[rax + rax]
.label_654:
	inc	r12
	mov	r14d, edx
.label_644:
	mov	cl, byte ptr [r12]
	movsx	edx, cl
	mov	al, 1
	lea	esi, [rdx - 0x23]
	cmp	esi, 0xd
	ja	.label_650
	jmp	qword ptr [(rsi * 8) + label_653]
	.section	.text
	.align	16
	#Procedure 0x40718e
	.globl sub_40718e
	.type sub_40718e, @function
sub_40718e:

	nop	
.label_650:
	cmp	edx, 0x5f
	je	.label_654
	cmp	edx, 0x5e
	je	.label_655
.label_1696:
	add	edx, -0x30
	cmp	edx, 9
	ja	.label_656
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_673:
	mov	r13d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_659
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_663
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_659
.label_663:
	lea	eax, [rax + rax*4]
	lea	r13d, [rcx + rax*2 - 0x30]
.label_659:
	movsx	ecx, byte ptr [r12 + 1]
	inc	r12
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r13d
	jb	.label_673
.label_656:
	movsx	r10d, cl
	cmp	r10d, 0x4f
	je	.label_676
	cmp	r10d, 0x45
	jne	.label_678
.label_676:
	mov	cl, byte ptr [r12 + 1]
	inc	r12
	jmp	.label_681
	.section	.text
	.align	16
	#Procedure 0x40720e
	.globl sub_40720e
	.type sub_40720e, @function
sub_40720e:

	nop	
.label_642:
	test	r13d, r13d
	mov	eax, r13d
	mov	edx, 0
	cmovs	eax, edx
	movsxd	r14, eax
	cmp	r14d, 1
	mov	edx, 1
	cmovbe	r14, rdx
	mov	rdx, r11
	not	rdx
	mov	edi, 1
	cmp	r14, rdx
	jae	.label_684
	cmp	qword ptr [rsp + 8], 0
	je	.label_697
	cmp	eax, 2
	mov	qword ptr [rsp + 0x30], r8
	mov	dword ptr [rsp + 0x14], r9d
	mov	r15, r11
	jb	.label_700
	movsxd	rbp, r13d
	dec	rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_701
	nop	word ptr cs:[rax + rax]
.label_707:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_707
	mov	cl, byte ptr [r12]
	jmp	.label_701
.label_678:
	xor	r10d, r10d
.label_681:
	mov	qword ptr [rsp + 0x48], rdi
	movsx	esi, cl
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	esi, 0x7a
	ja	.label_585
	mov	ebp, OFFSET FLAT:label_423
	mov	dl, 0x72
	mov	r15d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [(rsi * 8) + label_714]
.label_1624:
	cmp	r10d, 0x45
	je	.label_585
	mov	rax, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rax + 0x14]
	mov	r9d, dword ptr [rax + 0x18]
	mov	edx, r8d
	sar	edx, 0x1f
	and	edx, 0x190
	mov	rdi, rax
	lea	eax, [r8 + rdx - 0x64]
	mov	edi, dword ptr [rdi + 0x1c]
	lea	ebp, [rdi + 0x17e]
	sub	ebp, r9d
	movsxd	rbp, ebp
	imul	rbx, rbp, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, ebp
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	ebp, edx
	lea	r15d, [rdi + 3]
	sub	r15d, ebp
	js	.label_721
	mov	ebp, 0x16d
	test	al, 3
	jne	.label_731
	movsxd	rdx, eax
	imul	rdx, rdx, 0x51eb851f
	mov	rbp, rdx
	sar	rbp, 0x25
	mov	rbx, r11
	mov	r11, rdx
	shr	r11, 0x3f
	add	ebp, r11d
	imul	ebp, ebp, 0x64
	mov	dword ptr [rsp + 0x14], ebp
	sar	rdx, 0x27
	add	edx, r11d
	mov	r11, rbx
	imul	ebp, edx, 0x190
	xor	edx, edx
	cmp	eax, ebp
	sete	dl
	add	edx, 0x16d
	cmp	eax, dword ptr [rsp + 0x14]
	mov	ebp, 0x16e
	cmove	ebp, edx
.label_731:
	sub	edi, ebp
	lea	edx, [rdi + 0x17e]
	sub	edx, r9d
	movsxd	rdx, edx
	imul	rbp, rdx, -0x6db6db6d
	shr	rbp, 0x20
	add	ebp, edx
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 2
	add	ebp, ebx
	lea	ebx, [rbp*8]
	sub	ebx, ebp
	sub	edx, ebx
	add	edi, 3
	sub	edi, edx
	cmovns	r15d, edi
	shr	edi, 0x1f
	xor	edi, 1
	jmp	.label_742
.label_700:
	mov	rbx, qword ptr [rsp + 8]
.label_701:
	movsx	edi, cl
	mov	rsi, rbx
	call	fputc
	mov	r11, r15
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x14]
.label_697:
	add	r11, r14
	xor	edi, edi
.label_684:
	test	edi, edi
	mov	eax, 4
	cmove	edi, eax
.label_615:
	or	edi, 4
	cmp	edi, 4
	mov	eax, 0
	je	.label_677
	jmp	.label_582
.label_1638:
	test	bl, bl
	je	.label_605
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
.label_605:
	cmp	r10d, 0x45
	jne	.label_587
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_585
.label_1616:
	dec	r12
	jmp	.label_585
.label_1617:
	test	r10d, r10d
	jne	.label_585
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r15d, 1
	cmova	r15, rcx
	mov	rcx, r11
	not	rcx
	cmp	r15, rcx
	jae	.label_578
	cmp	qword ptr [rsp + 8], 0
	mov	r9d, dword ptr [rsp + 0x14]
	je	.label_604
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	mov	rbx, qword ptr [rsp + 8]
	jb	.label_588
	movsxd	rbp, r13d
	dec	rbp
	cmp	r14d, 0x30
	je	.label_612
	cmp	r14d, 0x2b
	jne	.label_614
.label_612:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_588
.label_620:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_620
	jmp	.label_588
.label_1618:
	mov	edx, 1
	jmp	.label_628
	.section	.text
	.align	16
	#Procedure 0x4074de
	.globl sub_4074de
	.type sub_4074de, @function
sub_4074de:

	nop	
.label_622:
	inc	rdx
.label_628:
	movzx	ebx, byte ptr [r12 + rdx]
	cmp	bl, 0x3a
	je	.label_622
	cmp	bl, 0x7a
	jne	.label_585
	add	r12, rdx
	mov	qword ptr [rsp + 0x18], rdx
.label_1655:
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	dword ptr [rbx + 0x20], 0
	js	.label_677
	mov	rdx, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 0x20], r11
	mov	eax, dword ptr [rbx + 0x28]
	mov	sil, 1
	test	eax, eax
	js	.label_630
	test	eax, eax
	je	.label_634
	xor	esi, esi
	jmp	.label_630
.label_1619:
	test	r10d, r10d
	jne	.label_585
	test	bl, bl
	je	.label_736
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
.label_736:
	xor	eax, eax
	mov	dl, 0x41
	jmp	.label_632
.label_1620:
	cmp	r10d, 0x45
	je	.label_585
	test	bl, bl
	je	.label_645
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
.label_645:
	xor	eax, eax
	mov	dl, 0x42
	jmp	.label_632
.label_1621:
	cmp	r10d, 0x45
	jne	.label_649
	xor	eax, eax
	mov	dl, 0x43
	jmp	.label_632
.label_1622:
	test	r10d, r10d
	jne	.label_585
	mov	ebp, OFFSET FLAT:label_349
	mov	r15d, 0xffffffff
	jmp	.label_586
.label_1623:
	test	r10d, r10d
	jne	.label_585
	test	r14d, r14d
	jne	.label_658
	test	r13d, r13d
	jns	.label_658
	mov	ebp, OFFSET FLAT:label_362
	mov	r14d, 0x2b
	mov	r15d, 4
	jmp	.label_586
.label_1625:
	cmp	r10d, 0x45
	je	.label_585
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 8]
	mov	edi, 2
	jmp	.label_590
.label_1626:
	mov	edi, 2
	cmp	r10d, 0x45
	je	.label_585
	mov	edx, dword ptr [rsp + 0x6c]
	mov	r8d, edx
	jmp	.label_590
.label_1627:
	cmp	r10d, 0x45
	je	.label_585
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 4]
	mov	edi, 2
	jmp	.label_590
.label_1628:
	cmp	r10d, 0x45
	je	.label_585
	mov	edi, 9
	cmp	r13d, -1
	je	.label_691
	cmp	r13d, 8
	jg	.label_695
	mov	edx, 9
	sub	edx, r13d
	mov	esi, 8
	sub	esi, r13d
	and	edx, 3
	cmp	esi, 3
	mov	esi, dword ptr [rsp + 0x4e8]
	mov	r8d, esi
	jb	.label_698
	lea	esi, [r13 + rdx - 9]
	mov	edi, dword ptr [rsp + 0x4e8]
	mov	r8d, edi
	nop	word ptr cs:[rax + rax]
.label_715:
	movsxd	rdi, r8d
	imul	r8, rdi, 0x68db8bad
	mov	rdi, r8
	shr	rdi, 0x3f
	sar	r8, 0x2c
	add	r8d, edi
	add	esi, 4
	jne	.label_715
.label_698:
	test	edx, edx
	je	.label_710
	neg	edx
	nop	word ptr [rax + rax]
.label_711:
	movsxd	rsi, r8d
	imul	r8, rsi, 0x66666667
	mov	rsi, r8
	shr	rsi, 0x3f
	sar	r8, 0x22
	add	r8d, esi
	inc	edx
	jne	.label_711
	jmp	.label_710
.label_1629:
	mov	dil, 1
.label_1647:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	test	bl, bl
	je	.label_720
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
.label_720:
	je	.label_722
	mov	dil, 1
.label_722:
	mov	dl, 0x70
	mov	al, dil
	jmp	.label_633
.label_1630:
	cmp	r10d, 0x45
	je	.label_585
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx]
	mov	edi, 2
	jmp	.label_590
.label_1631:
	mov	ebp, OFFSET FLAT:label_420
.label_586:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x48]
	test	al, al
	setne	cl
	xor	ebx, ebx
	xor	edi, edi
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r8d, r14d
	mov	r9d, r15d
	mov	eax, dword ptr [rsp + 0x4e8]
	push	rax
	push	qword ptr [rsp + 0x4e8]
	mov	qword ptr [rsp + 0x30], r11
	call	__strftime_internal
	mov	r11, qword ptr [rsp + 0x30]
	add	rsp, 0x10
	test	r13d, r13d
	cmovns	ebx, r13d
	movsxd	rcx, ebx
	cmp	rax, rcx
	mov	rsi, rax
	cmovb	rsi, rcx
	mov	rdx, r11
	not	rdx
	cmp	rsi, rdx
	jae	.label_578
	cmp	qword ptr [rsp + 8], 0
	mov	r9d, dword ptr [rsp + 0x14]
	je	.label_739
	mov	qword ptr [rsp + 0x40], rsi
	mov	dword ptr [rsp + 0x18], r15d
	cmp	rax, rcx
	mov	r15, qword ptr [rsp + 8]
	jae	.label_727
	movsxd	rbx, r13d
	sub	rbx, rax
	cmp	r14d, 0x30
	je	.label_686
	cmp	r14d, 0x2b
	jne	.label_745
.label_686:
	test	rbx, rbx
	mov	r15, qword ptr [rsp + 8]
	je	.label_727
	nop	word ptr cs:[rax + rax]
.label_749:
	mov	edi, 0x30
	mov	rsi, r15
	call	fputc
	dec	rbx
	jne	.label_749
	jmp	.label_727
.label_1632:
	cmp	r10d, 0x45
	je	.label_585
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 0x1c]
	add	edx, 7
	sub	edx, dword ptr [rbx + 0x18]
	movsxd	r8, edx
	jmp	.label_577
.label_1633:
	cmp	r10d, 0x45
	je	.label_585
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 0x18]
	mov	esi, dword ptr [rbx + 0x1c]
	lea	edi, [rdx + 6]
	movsxd	rdi, edi
	imul	rbp, rdi, -0x6db6db6d
	shr	rbp, 0x20
	lea	edx, [rbp + rdx + 6]
	mov	ebp, edx
	shr	ebp, 0x1f
	sar	edx, 2
	add	edx, ebp
	lea	ebp, [rdx*8]
	sub	ebp, edx
	sub	edi, ebp
	add	esi, 7
	sub	esi, edi
	movsxd	r8, esi
.label_577:
	imul	rdx, r8, -0x6db6db6d
	shr	rdx, 0x20
	add	r8d, edx
	mov	edx, r8d
	shr	edx, 0x1f
	sar	r8d, 2
	add	r8d, edx
	mov	edi, 2
	jmp	.label_590
.label_1634:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	r10d, 0x4f
	je	.label_585
	mov	dl, 0x58
	jmp	.label_609
.label_1635:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	r10d, 0x45
	je	.label_610
	cmp	r10d, 0x4f
	je	.label_585
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0x14]
	cmp	r8d, 0xfffff894
	setl	sil
	add	r8d, 0x76c
	jmp	.label_617
.label_1636:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	mov	rdi, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp + 0x20], r11
	call	strlen
	mov	r15, rax
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	cdqe	
	cmp	r15, rax
	mov	rdx, r15
	cmovb	rdx, rax
	mov	rcx, qword ptr [rsp + 0x20]
	not	rcx
	cmp	rdx, rcx
	jae	.label_578
	mov	qword ptr [rsp + 0x18], rdx
	cmp	qword ptr [rsp + 8], 0
	je	.label_611
	cmp	r15, rax
	jae	.label_635
	movsxd	rbp, r13d
	sub	rbp, r15
	cmp	r14d, 0x30
	je	.label_638
	cmp	r14d, 0x2b
	jne	.label_641
.label_638:
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 8]
	je	.label_635
	nop	word ptr cs:[rax + rax]
.label_648:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_648
	jmp	.label_635
.label_1637:
	test	r10d, r10d
	jne	.label_585
	test	bl, bl
	je	.label_652
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
.label_652:
	xor	eax, eax
	mov	dl, 0x61
	jmp	.label_632
.label_1639:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	r10d, 0x4f
	je	.label_585
	mov	dl, 0x63
	jmp	.label_609
.label_1640:
	cmp	r10d, 0x45
	je	.label_585
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0xc]
	mov	edi, 2
	jmp	.label_590
.label_1641:
	cmp	r10d, 0x45
	je	.label_585
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 0xc]
	jmp	.label_671
.label_1642:
	cmp	r10d, 0x45
	je	.label_585
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0x1c]
	cmp	r8d, -1
	setl	sil
	inc	r8d
	mov	eax, 3
	jmp	.label_675
.label_1643:
	cmp	r10d, 0x45
	je	.label_585
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 8]
	jmp	.label_671
.label_1644:
	cmp	r10d, 0x45
	mov	edx, dword ptr [rsp + 0x6c]
	je	.label_585
.label_671:
	test	r14d, r14d
	mov	esi, 0x5f
	cmove	r14d, esi
	mov	edi, 2
	mov	r8d, edx
	jmp	.label_590
.label_1645:
	cmp	r10d, 0x45
	je	.label_585
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0x10]
	cmp	r8d, -1
	setl	sil
	inc	r8d
	mov	eax, 2
.label_675:
	mov	qword ptr [rsp + 0x18], rax
	xor	r9d, r9d
	xor	edx, edx
	jmp	.label_600
.label_1646:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r15d, 1
	cmova	r15, rcx
	mov	rcx, r11
	not	rcx
	cmp	r15, rcx
	jae	.label_578
	cmp	qword ptr [rsp + 8], 0
	mov	r9d, dword ptr [rsp + 0x14]
	je	.label_604
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	mov	rbx, qword ptr [rsp + 8]
	jb	.label_712
	movsxd	rbp, r13d
	dec	rbp
	cmp	r14d, 0x30
	je	.label_718
	cmp	r14d, 0x2b
	jne	.label_623
.label_718:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_712
	nop	dword ptr [rax]
.label_723:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_723
	jmp	.label_712
.label_1648:
	mov	rbx, qword ptr [rsp + 0x28]
	imul	r8d, dword ptr [rbx + 0x10], 0xb
	sar	r8d, 5
	inc	r8d
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	xor	r9d, r9d
	xor	edx, edx
	xor	esi, esi
	jmp	.label_600
.label_1649:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	mov	rbx, r11
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xd0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xc0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	lea	rsi, [rsp + 0xa0]
	mov	rdi, qword ptr [rsp + 0x4e0]
	call	mktime_z
	mov	rcx, rax
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r15, [rsp + 0x97]
	nop	word ptr cs:[rax + rax]
.label_664:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebp, ecx
	sub	ebp, edi
	add	rdx, rax
	mov	eax, ebp
	neg	eax
	test	rsi, rsi
	cmove	eax, ebp
	add	eax, 0x30
	mov	byte ptr [r15 - 1], al
	dec	r15
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_664
	mov	edi, 1
	xor	edx, edx
	mov	r11, rbx
	mov	rbp, qword ptr [rsp + 0x30]
	mov	ebx, dword ptr [rsp + 0x14]
	jmp	.label_748
.label_1650:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	r15d, 1
	cmova	r15, rcx
	mov	rcx, r11
	not	rcx
	cmp	r15, rcx
	jae	.label_578
	cmp	qword ptr [rsp + 8], 0
	mov	r9d, dword ptr [rsp + 0x14]
	je	.label_604
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	mov	rbx, qword ptr [rsp + 8]
	jb	.label_593
	movsxd	rbp, r13d
	dec	rbp
	cmp	r14d, 0x30
	je	.label_597
	cmp	r14d, 0x2b
	jne	.label_602
.label_597:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_593
	nop	dword ptr [rax]
.label_608:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_608
	jmp	.label_593
.label_1651:
	mov	rbx, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rbx + 0x18]
	lea	esi, [rdx + 6]
	movsxd	r8, esi
	imul	rsi, r8, -0x6db6db6d
	shr	rsi, 0x20
	lea	edx, [rsi + rdx + 6]
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	sub	r8d, esi
	inc	r8d
	mov	edi, 1
	jmp	.label_590
.label_1652:
	cmp	r10d, 0x45
	je	.label_585
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rbx + 0x18]
	mov	edi, 1
	jmp	.label_590
.label_1653:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	cmp	r10d, 0x4f
	je	.label_585
	mov	dl, 0x78
	jmp	.label_609
.label_1654:
	cmp	r10d, 0x45
	jne	.label_629
	xor	eax, eax
	mov	dl, 0x79
	jmp	.label_632
.label_587:
	xor	eax, eax
	mov	edx, ecx
.label_632:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	jmp	.label_633
.label_721:
	mov	qword ptr [rsp + 0x20], r11
	dec	eax
	mov	r11d, 0x16d
	test	al, 3
	jne	.label_637
	movsxd	rdx, eax
	imul	rdx, rdx, 0x51eb851f
	mov	rbp, rdx
	sar	rbp, 0x25
	mov	rbx, rdx
	shr	rbx, 0x3f
	add	ebp, ebx
	imul	r11d, ebp, 0x64
	sar	rdx, 0x27
	add	edx, ebx
	imul	edx, edx, 0x190
	xor	ebp, ebp
	cmp	eax, edx
	sete	bpl
	add	ebp, 0x16d
	cmp	eax, r11d
	mov	r11d, 0x16e
	cmove	r11d, ebp
.label_637:
	lea	edx, [r11 + rdi + 0x17e]
	sub	edx, r9d
	movsxd	rdx, edx
	imul	rbp, rdx, -0x6db6db6d
	shr	rbp, 0x20
	add	ebp, edx
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 2
	add	ebp, ebx
	lea	ebx, [rbp*8]
	sub	ebx, ebp
	sub	edx, ebx
	lea	r15d, [r11 + rdi + 3]
	sub	r15d, edx
	mov	edi, 0xffffffff
	mov	r11, qword ptr [rsp + 0x20]
.label_742:
	cmp	esi, 0x47
	je	.label_665
	cmp	esi, 0x67
	jne	.label_670
	movsxd	rdx, r8d
	imul	rdx, rdx, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	mov	esi, r8d
	sub	esi, edx
	add	esi, edi
	mov	rax, r8
	movsxd	r8, esi
	imul	rdx, r8, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	r8d, edx
	jns	.label_672
	mov	edx, 0xfffff894
	sub	edx, edi
	mov	esi, r8d
	neg	esi
	add	r8d, 0x64
	cmp	eax, edx
	cmovl	r8d, esi
.label_672:
	xor	esi, esi
	jmp	.label_693
.label_649:
	mov	rax, qword ptr [rsp + 0x28]
	movsxd	rdx, dword ptr [rax + 0x14]
	cmp	rdx, -0x76c
	setl	sil
	setg	bl
	imul	r8, rdx, 0x51eb851f
	mov	rdi, r8
	shr	rdi, 0x3f
	sar	r8, 0x25
	add	r8d, edi
	imul	edi, r8d, 0x64
	cmp	edx, edi
	sets	dl
	and	dl, bl
	movzx	edx, dl
	sub	r8d, edx
	add	r8d, 0x13
.label_693:
	mov	eax, 2
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_624
.label_629:
	mov	rbx, qword ptr [rsp + 0x28]
	movsxd	rdx, dword ptr [rbx + 0x14]
	imul	rsi, rdx, 0x51eb851f
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x25
	add	esi, edi
	imul	esi, esi, 0x64
	mov	r8d, edx
	mov	eax, 2
	sub	r8d, esi
	js	.label_706
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_713
.label_665:
	mov	edx, 0xfffff894
	sub	edx, edi
	cmp	r8d, edx
	setl	sil
	lea	r8d, [rdi + r8 + 0x76c]
.label_617:
	mov	eax, 4
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_624
.label_670:
	movsxd	rdx, r15d
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	edx, esi
	mov	esi, edx
	sar	esi, 2
	shr	edx, 0x1f
	lea	r8d, [rsi + rdx + 1]
	mov	edi, 2
	jmp	.label_590
.label_610:
	mov	dl, 0x59
.label_609:
	xor	eax, eax
	jmp	.label_633
.label_745:
	test	rbx, rbx
	mov	r15, qword ptr [rsp + 8]
	je	.label_727
	nop	dword ptr [rax]
.label_726:
	mov	edi, 0x20
	mov	rsi, r15
	call	fputc
	dec	rbx
	jne	.label_726
.label_727:
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x48]
	test	al, al
	setne	cl
	mov	rdi, r15
	mov	rsi, rbp
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdx, rbx
	mov	r8d, r14d
	mov	r9d, dword ptr [rsp + 0x18]
	mov	eax, dword ptr [rsp + 0x4e8]
	push	rax
	push	qword ptr [rsp + 0x4e8]
	call	__strftime_internal
	add	rsp, 0x10
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	rsi, qword ptr [rsp + 0x40]
.label_739:
	add	r11, rsi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	.label_677
.label_634:
	mov	rsi, qword ptr [rsp + 0x60]
	cmp	byte ptr [rsi], 0x2d
	sete	sil
.label_630:
	mov	r11, rdx
	cmp	r11, 3
	ja	.label_743
	movsxd	rdi, eax
	imul	rbp, rdi, -0x77777777
	shr	rbp, 0x20
	add	ebp, eax
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 5
	add	ebp, ebx
	imul	r8, rdi, -0x6e5d4c3b
	shr	r8, 0x20
	add	r8d, eax
	mov	edi, r8d
	shr	edi, 0x1f
	sar	r8d, 0xb
	add	r8d, edi
	movsxd	rdi, ebp
	imul	rbp, rdi, -0x77777777
	shr	rbp, 0x20
	add	ebp, edi
	mov	ebx, ebp
	shr	ebx, 0x1f
	sar	ebp, 5
	add	ebp, ebx
	imul	ebp, ebp, 0x3c
	imul	ebx, edi, 0x3c
	sub	edi, ebp
	sub	eax, ebx
	jmp	qword ptr [(r11 * 8) + label_667]
.label_1736:
	imul	r8d, r8d, 0x64
	add	r8d, edi
	mov	eax, 5
.label_636:
	mov	qword ptr [rsp + 0x18], rax
	xor	r9d, r9d
	jmp	.label_581
.label_658:
	xor	eax, eax
	mov	r15d, r13d
	add	r15d, -6
	cmovs	r15d, eax
	mov	ebp, OFFSET FLAT:label_362
	jmp	.label_586
.label_691:
	mov	edx, dword ptr [rsp + 0x4e8]
	mov	r8d, edx
	mov	r13d, 9
	jmp	.label_590
.label_706:
	mov	qword ptr [rsp + 0x18], rax
	mov	esi, r8d
	neg	esi
	add	r8d, 0x64
	cmp	edx, 0xfffff894
	cmovl	r8d, esi
.label_713:
	xor	esi, esi
.label_624:
	test	r14d, r14d
	cmove	r14d, dword ptr [rsp + 0x70]
	xor	r9d, r9d
	cmp	r14d, 0x2b
	mov	edx, 0
	jne	.label_600
	mov	rbp, qword ptr [rsp + 0x18]
	cmp	ebp, 2
	mov	edx, 0x63
	mov	edi, 0x270f
	cmove	edi, edx
	cmp	edi, r8d
	setb	bl
	cmp	ebp, r13d
	setl	dl
	or	dl, bl
	jmp	.label_600
.label_743:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, 0x18
	jmp	.label_613
.label_1739:
	test	eax, eax
	je	.label_616
.label_1738:
	imul	r8d, r8d, 0x2710
	imul	edi, edi, 0x64
	add	r8d, eax
	add	r8d, edi
	mov	eax, 9
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 0x14
	jmp	.label_581
.label_695:
	mov	edx, dword ptr [rsp + 0x4e8]
	mov	r8d, edx
.label_710:
	mov	edi, r13d
.label_590:
	mov	esi, r8d
	shr	esi, 0x1f
	xor	r9d, r9d
	xor	edx, edx
	mov	eax, edi
	mov	qword ptr [rsp + 0x18], rax
.label_600:
	cmp	r10d, 0x4f
	jne	.label_625
	test	sil, sil
	jne	.label_625
	xor	eax, eax
	mov	edx, ecx
.label_633:
	mov	dword ptr [rsp + 0x40], eax
	mov	qword ptr [rsp + 0x30], r8
	mov	rbp, qword ptr [rsp + 0x18]
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x20], r11
	mov	word ptr [rsp + 0x5b], 0x2520
	test	r10d, r10d
	lea	rcx, [rsp + 0x5d]
	je	.label_607
	mov	byte ptr [rsp + 0x5d], r10b
	lea	rcx, [rsp + 0x5e]
.label_607:
	mov	byte ptr [rcx], dl
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xa0]
	lea	rdx, [rsp + 0x5b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x28]
	call	strftime
	test	rax, rax
	je	.label_646
	lea	rsi, [rax - 1]
	xor	ecx, ecx
	test	r13d, r13d
	cmovns	ecx, r13d
	movsxd	rdx, ecx
	cmp	rsi, rdx
	mov	r15, rsi
	cmovb	r15, rdx
	mov	rcx, qword ptr [rsp + 0x20]
	not	rcx
	cmp	r15, rcx
	jae	.label_578
	cmp	qword ptr [rsp + 8], 0
	je	.label_657
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x38], rsi
	cmp	rsi, rdx
	setae	al
	test	ebp, ebp
	jne	.label_595
	test	al, al
	jne	.label_595
	movsxd	rbx, r13d
	sub	rbx, qword ptr [rsp + 0x38]
	cmp	r14d, 0x30
	je	.label_668
	cmp	r14d, 0x2b
	jne	.label_674
.label_668:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_595
.label_680:
	mov	edi, 0x30
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_680
	jmp	.label_595
.label_625:
	mov	eax, r8d
	neg	eax
	test	sil, sil
	cmove	eax, r8d
	lea	r15, [rsp + 0x97]
	nop	dword ptr [rax + rax]
.label_692:
	test	r9b, 1
	je	.label_688
	mov	byte ptr [r15 - 1], 0x3a
	dec	r15
.label_688:
	sar	r9d, 1
	mov	ecx, eax
	mov	ebp, 0xcccccccd
	imul	rbp, rcx
	shr	rbp, 0x23
	lea	ecx, [rbp + rbp]
	lea	ecx, [rcx + rcx*4]
	mov	edi, eax
	sub	edi, ecx
	or	edi, 0x30
	mov	byte ptr [r15 - 1], dil
	dec	r15
	cmp	eax, 9
	mov	eax, ebp
	ja	.label_692
	test	r9d, r9d
	mov	eax, ebp
	jne	.label_692
	xor	ebx, ebx
	mov	rdi, qword ptr [rsp + 0x18]
.label_748:
	cmp	edi, r13d
	cmovl	edi, r13d
	test	dl, dl
	je	.label_702
	mov	dl, 0x2b
.label_702:
	test	sil, sil
	mov	sil, 0x2d
	jne	.label_704
	mov	esi, edx
.label_704:
	cmp	r14d, 0x2d
	mov	qword ptr [rsp + 0x30], rbp
	mov	dword ptr [rsp + 0x14], ebx
	jne	.label_705
	test	sil, sil
	je	.label_596
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_578
	cmp	qword ptr [rsp + 8], 0
	je	.label_579
	mov	qword ptr [rsp + 0x38], rdx
	mov	byte ptr [rsp + 0x40], sil
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x18], rdi
	test	edi, edi
	mov	rbx, qword ptr [rsp + 8]
	jne	.label_661
	test	al, al
	jne	.label_661
	movsxd	rbp, r13d
	jmp	.label_669
	.section	.text
	.align	16
	#Procedure 0x4082fc
	.globl sub_4082fc
	.type sub_4082fc, @function
sub_4082fc:

	nop	dword ptr [rax]
.label_725:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
.label_669:
	dec	rbp
	jne	.label_725
.label_661:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, rbx
	jmp	.label_703
.label_646:
	mov	r11, qword ptr [rsp + 0x20]
	mov	r9d, dword ptr [rsp + 0x14]
	mov	r8, qword ptr [rsp + 0x30]
	jmp	.label_677
.label_705:
	movsxd	rax, edi
	mov	rcx, r15
	lea	rdx, [rsp + 0x97]
	sub	rcx, rdx
	mov	edx, esi
	neg	dl
	sbb	rdx, rdx
	add	rdx, rcx
	add	rdx, rax
	test	edx, edx
	jle	.label_730
	cmp	r14d, 0x5f
	jne	.label_734
	movsxd	rcx, edx
	mov	rax, r11
	not	rax
	cmp	rcx, rax
	jae	.label_578
	mov	qword ptr [rsp + 0x50], r13
	mov	qword ptr [rsp + 0x38], rdx
	mov	byte ptr [rsp + 0x40], sil
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r11
	mov	rbx, qword ptr [rsp + 8]
	test	rbx, rbx
	je	.label_738
	test	rcx, rcx
	je	.label_738
	xor	ebp, ebp
	nop	
.label_717:
	mov	edi, 0x20
	mov	rsi, rbx
	mov	r13, rcx
	call	fputc
	mov	rcx, r13
	inc	rbp
	cmp	rbp, rcx
	jb	.label_717
.label_738:
	mov	r11, qword ptr [rsp + 0x20]
	add	r11, rcx
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x50]
	sub	r13d, ecx
	cmovle	r13d, eax
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_601
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	mov	rdi, qword ptr [rsp + 0x18]
	jae	.label_578
	cmp	qword ptr [rsp + 8], 0
	je	.label_579
	mov	qword ptr [rsp + 0x50], rdx
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	setb	al
	test	edi, edi
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_589
	test	al, al
	jne	.label_589
	movsxd	rax, r13d
	dec	rax
	je	.label_589
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x38], rax
	nop	word ptr cs:[rax + rax]
.label_599:
	mov	edi, 0x20
	mov	rsi, rbp
	call	fputc
	mov	rax, qword ptr [rsp + 0x38]
	inc	rbx
	cmp	rbx, rax
	jb	.label_599
.label_589:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, rbp
	call	fputc
	mov	r11, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x50]
	jmp	.label_579
.label_730:
	test	sil, sil
	je	.label_596
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_578
	cmp	qword ptr [rsp + 8], 0
	je	.label_579
	mov	qword ptr [rsp + 0x38], rdx
	mov	byte ptr [rsp + 0x40], sil
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x18], rdi
	test	edi, edi
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_583
	test	al, al
	jne	.label_583
	movsxd	rbx, r13d
	dec	rbx
	cmp	r14d, 0x30
	je	.label_666
	cmp	r14d, 0x2b
	jne	.label_627
.label_666:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_583
	nop	word ptr [rax + rax]
.label_647:
	mov	edi, 0x30
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_647
	jmp	.label_583
.label_734:
	mov	rcx, r11
	not	rcx
	cmp	rax, rcx
	jae	.label_578
	test	sil, sil
	je	.label_643
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	movsxd	rbp, eax
	cmp	ebp, 1
	mov	ebx, 1
	cmova	rbx, rbp
	cmp	rbx, rcx
	jae	.label_578
	cmp	qword ptr [rsp + 8], 0
	je	.label_732
	mov	qword ptr [rsp + 0x50], rbx
	mov	qword ptr [rsp + 0x38], rdx
	mov	byte ptr [rsp + 0x40], sil
	mov	qword ptr [rsp + 0x20], r11
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x18], rdi
	test	edi, edi
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_618
	test	al, al
	jne	.label_618
	movsxd	rbx, r13d
	dec	rbx
	cmp	r14d, 0x30
	je	.label_719
	cmp	r14d, 0x2b
	jne	.label_662
.label_719:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_618
	nop	word ptr cs:[rax + rax]
.label_679:
	mov	edi, 0x30
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_679
	jmp	.label_618
.label_674:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_595
	nop	word ptr cs:[rax + rax]
.label_687:
	mov	edi, 0x20
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_687
.label_595:
	mov	eax, dword ptr [rsp + 0x40]
	test	al, 1
	jne	.label_689
	mov	rax, qword ptr [rsp + 0x48]
	test	al, 1
	jne	.label_690
	mov	edx, 1
	lea	rdi, [rsp + 0xa1]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 8]
	call	fwrite
	jmp	.label_657
.label_689:
	cmp	qword ptr [rsp + 0x38], 0
	mov	r13, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x50]
	je	.label_657
	mov	ebx, 1
	sub	rbx, rax
	lea	rbp, [rsp + 0xa1]
	nop	word ptr [rax + rax]
.label_709:
	movzx	r14d, byte ptr [rbp]
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r14*4]
	mov	rsi, r13
	call	fputc
	inc	rbp
	inc	rbx
	jne	.label_709
	jmp	.label_657
.label_690:
	cmp	qword ptr [rsp + 0x38], 0
	mov	r13, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x50]
	je	.label_657
	mov	ebx, 1
	sub	rbx, rax
	lea	rbp, [rsp + 0xa1]
	nop	word ptr cs:[rax + rax]
.label_741:
	movzx	r14d, byte ptr [rbp]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r14*4]
	mov	rsi, r13
	call	fputc
	inc	rbp
	inc	rbx
	jne	.label_741
.label_657:
	mov	r11, qword ptr [rsp + 0x20]
	add	r11, r15
	jmp	.label_685
.label_601:
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_596
.label_641:
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 8]
	je	.label_635
	nop	word ptr cs:[rax + rax]
.label_728:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_728
.label_635:
	test	bl, bl
	je	.label_729
	test	r15, r15
	mov	r14, qword ptr [rsp + 8]
	je	.label_611
	mov	rbp, qword ptr [rsp + 0x60]
	nop	dword ptr [rax]
.label_735:
	movzx	ebx, byte ptr [rbp]
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + rbx*4]
	mov	rsi, r14
	call	fputc
	inc	rbp
	dec	r15
	jne	.label_735
	jmp	.label_611
.label_729:
	mov	rax, qword ptr [rsp + 0x48]
	test	al, al
	je	.label_737
	test	r15, r15
	mov	r14, qword ptr [rsp + 8]
	je	.label_611
	mov	rbp, qword ptr [rsp + 0x60]
	nop	word ptr cs:[rax + rax]
.label_744:
	movzx	ebx, byte ptr [rbp]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + rbx*4]
	mov	rsi, r14
	call	fputc
	inc	rbp
	dec	r15
	jne	.label_744
	jmp	.label_611
.label_623:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_712
	nop	
.label_747:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_747
.label_712:
	mov	edi, 0xa
	jmp	.label_584
.label_602:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp + 8]
	je	.label_593
	nop	word ptr cs:[rax + rax]
.label_580:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_580
.label_593:
	mov	edi, 9
	jmp	.label_584
.label_627:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_583
.label_591:
	mov	edi, 0x20
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_591
.label_583:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, rbp
.label_703:
	call	fputc
	mov	r11, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x38]
.label_579:
	add	r11, rdx
	jmp	.label_596
.label_737:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsi, r15
	jmp	.label_598
.label_616:
	test	edi, edi
	je	.label_603
.label_1737:
	imul	r8d, r8d, 0x64
	add	r8d, edi
	mov	eax, 6
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 4
.label_581:
	mov	edi, 0x4b
.label_613:
	mov	r11, qword ptr [rsp + 0x20]
	mov	ebx, edi
	and	bl, 0x7f
	cmp	bl, 0x18
	je	.label_585
	mov	dl, 1
	cmp	bl, 0x4b
	je	.label_600
	jmp	.label_615
.label_585:
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 0x30], r8
	xor	ebp, ebp
	xor	ebx, ebx
	movabs	rax, 0x100000000
	nop	dword ptr [rax]
.label_621:
	mov	r15, rbp
	add	rbx, rax
	lea	rbp, [r15 - 1]
	cmp	byte ptr [r12 + r15], 0x25
	jne	.label_621
	mov	rax, rbp
	neg	rax
	test	r13d, r13d
	mov	ecx, r13d
	mov	edx, 0
	cmovs	ecx, edx
	cmp	eax, ecx
	mov	edx, ecx
	cmova	edx, eax
	movsxd	rsi, edx
	mov	rdx, r11
	not	rdx
	cmp	rsi, rdx
	mov	rdx, qword ptr [rsp + 0x18]
	jae	.label_578
	mov	qword ptr [rsp + 0x40], rsi
	mov	qword ptr [rsp + 0x20], r11
	cmp	qword ptr [rsp + 8], 0
	je	.label_631
	sar	rbx, 0x20
	test	edx, edx
	jne	.label_639
	cmp	eax, ecx
	jae	.label_639
	movsxd	r13, r13d
	mov	rax, r13
	sub	rax, rbx
	cmp	r14d, 0x30
	je	.label_640
	cmp	r14d, 0x2b
	jne	.label_716
.label_640:
	test	rax, rax
	mov	r14, qword ptr [rsp + 8]
	je	.label_639
	mov	eax, 1
	sub	eax, r15d
	cdqe	
	sub	r13, rax
	nop	word ptr cs:[rax + rax]
.label_651:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	r13
	jne	.label_651
	jmp	.label_639
.label_716:
	test	rax, rax
	mov	r14, qword ptr [rsp + 8]
	je	.label_639
	mov	eax, 1
	sub	eax, r15d
	cdqe	
	sub	r13, rax
	nop	dword ptr [rax + rax]
.label_683:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	r13
	jne	.label_683
.label_639:
	lea	rbp, [r12 + rbp + 1]
	mov	rax, qword ptr [rsp + 0x48]
	test	al, 1
	jne	.label_660
	mov	edx, 1
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rcx, qword ptr [rsp + 8]
	call	fwrite
	jmp	.label_631
.label_660:
	mov	eax, 1
	sub	eax, r15d
	movsxd	rbx, eax
	neg	rbx
	mov	r15, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_682:
	movzx	r14d, byte ptr [rbp]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r14*4]
	mov	rsi, r15
	call	fputc
	inc	rbp
	inc	rbx
	jne	.label_682
.label_631:
	mov	r11, qword ptr [rsp + 0x20]
	add	r11, qword ptr [rsp + 0x40]
	jmp	.label_685
.label_662:
	test	rbx, rbx
	mov	rbp, qword ptr [rsp + 8]
	je	.label_618
.label_694:
	mov	edi, 0x20
	mov	rsi, rbp
	call	fputc
	dec	rbx
	jne	.label_694
.label_618:
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rsi, rbp
	call	fputc
	mov	r11, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rbx, qword ptr [rsp + 0x50]
.label_732:
	add	r11, rbx
.label_643:
	mov	r13, qword ptr [rsp + 8]
	test	r13, r13
	movsxd	rbx, edx
	je	.label_696
	xor	eax, eax
	test	rbx, rbx
	je	.label_708
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r11
	xor	ebp, ebp
.label_606:
	mov	edi, 0x30
	mov	rsi, r13
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_606
	mov	rax, rbx
	mov	r11, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_708
.label_696:
	mov	rax, rbx
.label_708:
	add	r11, rax
	xor	r13d, r13d
.label_596:
	lea	rbx, [rsp + 0x97]
	sub	rbx, r15
	xor	eax, eax
	test	r13d, r13d
	cmovns	eax, r13d
	cdqe	
	cmp	rbx, rax
	mov	rdx, rbx
	cmovb	rdx, rax
	mov	rcx, r11
	not	rcx
	cmp	rdx, rcx
	jae	.label_578
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x20], r11
	cmp	qword ptr [rsp + 8], 0
	je	.label_611
	cmp	rbx, rax
	setae	al
	test	edi, edi
	jne	.label_592
	test	al, al
	jne	.label_592
	movsxd	rbp, r13d
	sub	rbp, rbx
	cmp	r14d, 0x30
	je	.label_724
	cmp	r14d, 0x2b
	jne	.label_699
.label_724:
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 8]
	je	.label_592
	nop	dword ptr [rax]
.label_594:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_594
	jmp	.label_592
.label_699:
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 8]
	je	.label_592
	nop	
.label_746:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_746
.label_592:
	mov	rax, qword ptr [rsp + 0x48]
	test	al, al
	je	.label_733
	test	rbx, rbx
	mov	r14, qword ptr [rsp + 8]
	je	.label_611
	mov	rax, qword ptr [rsp + 0x78]
	lea	rbx, [rax + r15]
	nop	
.label_740:
	movzx	ebp, byte ptr [r15]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + rbp*4]
	mov	rsi, r14
	call	fputc
	inc	r15
	inc	rbx
	jne	.label_740
	jmp	.label_611
.label_733:
	mov	edx, 1
	mov	rdi, r15
	mov	rsi, rbx
.label_598:
	mov	rcx, qword ptr [rsp + 8]
	call	fwrite
.label_611:
	mov	r11, qword ptr [rsp + 0x20]
	add	r11, qword ptr [rsp + 0x18]
.label_685:
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x14]
.label_677:
	mov	cl, byte ptr [r12 + 1]
	inc	r12
	mov	r13d, 0xffffffff
	test	cl, cl
	mov	rax, r11
	jne	.label_619
	jmp	.label_582
.label_578:
	xor	eax, eax
.label_582:
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408be9
	.globl sub_408be9
	.type sub_408be9, @function
sub_408be9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408bf0

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	.section	.text
	.align	16
	#Procedure 0x408bfd
	.globl sub_408bfd
	.type sub_408bfd, @function
sub_408bfd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408c00
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
	je	.label_750
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
.label_750:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408c61
	.globl sub_408c61
	.type sub_408c61, @function
sub_408c61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c70
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x408c7e
	.globl sub_408c7e
	.type sub_408c7e, @function
sub_408c7e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x408c80

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
	js	.label_751
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_754
	cmp	r12d, 0x7fffffff
	je	.label_756
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
	jne	.label_752
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_752:
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
.label_754:
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
	jbe	.label_757
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_753
.label_757:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_755
	mov	rdi, r14
	call	free
.label_755:
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
.label_753:
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
.label_751:
	call	abort
.label_756:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408e3d
	.globl sub_408e3d
	.type sub_408e3d, @function
sub_408e3d:

	nop	dword ptr [rax]
.label_760:
	call	xalloc_die
.label_761:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_760
	mov	qword ptr [rsi], rbx
.label_759:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_758
	test	rax, rax
	je	.label_760
.label_758:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408e6d
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_761
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_762
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_759
	call	free
	xor	eax, eax
	jmp	.label_758
.label_762:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408ea4
	.globl sub_408ea4
	.type sub_408ea4, @function
sub_408ea4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408eb0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_763
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_764:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_763
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_764
.label_763:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f13
	.globl sub_408f13
	.type sub_408f13, @function
sub_408f13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f20
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
	.align	16
	#Procedure 0x408f38
	.globl sub_408f38
	.type sub_408f38, @function
sub_408f38:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f40

	.globl lookup_zone
	.type lookup_zone, @function
lookup_zone:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	esi, OFFSET FLAT:label_765
	mov	rdi, r14
	call	strcmp
	mov	r12d, OFFSET FLAT:universal_time_zone_table
	test	eax, eax
	je	.label_766
	mov	esi, OFFSET FLAT:label_768
	mov	rdi, r14
	call	strcmp
	mov	r12d, OFFSET FLAT:label_771
	test	eax, eax
	je	.label_766
	mov	esi, OFFSET FLAT:label_767
	mov	rdi, r14
	call	strcmp
	mov	r12d, OFFSET FLAT:label_770
	test	eax, eax
	je	.label_766
	mov	rsi, qword ptr [r15 + 0xe8]
	test	rsi, rsi
	je	.label_774
	add	r15, 0xe8
	mov	r12, r15
	nop	word ptr cs:[rax + rax]
.label_769:
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_766
	mov	rsi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	test	rsi, rsi
	jne	.label_769
.label_774:
	mov	ebx, OFFSET FLAT:time_zone_table
	mov	esi, OFFSET FLAT:label_773
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_775:
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_772
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_775
	jmp	.label_766
.label_772:
	mov	r12, rbx
.label_766:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40901d
	.globl sub_40901d
	.type sub_40901d, @function
sub_40901d:

	nop	dword ptr [rax]
.label_780:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_776
	mov	eax, OFFSET FLAT:label_777
	jmp	.label_778
	.section	.text
	.align	16
	#Procedure 0x40902f
	.globl sub_40902f
	.type sub_40902f, @function
sub_40902f:

	nop	word ptr cs:[rax + rax]
.label_784:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_779
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_779
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_779
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_779
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_779
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_779
	cmp	byte ptr [rax + 7], 0
	je	.label_780
.label_779:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_781
	mov	eax, OFFSET FLAT:label_782
.label_778:
	cmove	rax, rcx
.label_783:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409082

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
	jne	.label_783
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_784
	cmp	ecx, 0x55
	jne	.label_779
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_779
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_779
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_779
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_779
	cmp	byte ptr [rax + 5], 0
	jne	.label_779
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_785
	mov	eax, OFFSET FLAT:label_786
	jmp	.label_778
	.section	.text
	.align	16
	#Procedure 0x4090f0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4090ff
	.globl sub_4090ff
	.type sub_4090ff, @function
sub_4090ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409100
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_508]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_509]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_510]
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
	.align	16
	#Procedure 0x40916e
	.globl sub_40916e
	.type sub_40916e, @function
sub_40916e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x409170

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_787
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_787:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_788
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_788
	mov	r12, rbx
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_788:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4091f0

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
	je	.label_789
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
.label_789:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40925c
	.globl sub_40925c
	.type sub_40925c, @function
sub_40925c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409260
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
	.align	16
	#Procedure 0x409273
	.globl sub_409273
	.type sub_409273, @function
sub_409273:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409280

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_790
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_522
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_796:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_794
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4092d0
	.globl sub_4092d0
	.type sub_4092d0, @function
sub_4092d0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4092df

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_796
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_791
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_793
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_791
	mov	esi, OFFSET FLAT:label_792
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_795
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_795:
	mov	rbx, r14
.label_791:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x409360
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
	.align	16
	#Procedure 0x409378
	.globl sub_409378
	.type sub_409378, @function
sub_409378:

	nop	dword ptr [rax + rax]
.label_797:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40938c
	.globl sub_40938c
	.type sub_40938c, @function
sub_40938c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409398

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_797
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_799
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_797
.label_799:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_797
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_798
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_798:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_800:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x409405
	.globl sub_409405
	.type sub_409405, @function
sub_409405:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40940f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_800
	call	rpl_calloc
	test	rax, rax
	je	.label_800
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409430
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x409438
	.globl sub_409438
	.type sub_409438, @function
sub_409438:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409440

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
	jne	.label_802
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_801
	test	cl, cl
	jne	.label_801
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_801
.label_802:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_801
	call	__errno_location
	mov	dword ptr [rax], 0
.label_801:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4094a0

	.globl debug_print_relative_time
	.type debug_print_relative_time, @function
debug_print_relative_time:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [r14 + 0xd9], 0
	je	.label_816
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_824
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	call	dbg_printf
	mov	rcx, qword ptr [r14 + 0x68]
	test	rcx, rcx
	je	.label_811
	mov	rdi, qword ptr [rip + stderr]
	xor	ebx, ebx
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_814
	mov	r8d, OFFSET FLAT:label_815
	xor	eax, eax
	call	__fprintf_chk
	mov	rcx, qword ptr [r14 + 0x70]
	mov	al, 1
	test	rcx, rcx
	jne	.label_828
	jmp	.label_803
.label_816:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_811:
	mov	rcx, qword ptr [r14 + 0x70]
	mov	ebx, 1
	test	rcx, rcx
	je	.label_823
.label_828:
	mov	rdi, qword ptr [rip + stderr]
	lea	rdx, qword ptr [rbx + label_806]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_819
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_803:
	mov	rcx, qword ptr [r14 + 0x78]
	test	rcx, rcx
	je	.label_805
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_806]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_809
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_805:
	mov	rcx, qword ptr [r14 + 0x80]
	test	rcx, rcx
	je	.label_826
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_806]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_807
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_826:
	mov	rcx, qword ptr [r14 + 0x88]
	test	rcx, rcx
	je	.label_820
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_806]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_827
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_820:
	mov	rcx, qword ptr [r14 + 0x90]
	test	rcx, rcx
	je	.label_808
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_806]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_821
	xor	eax, eax
	call	__fprintf_chk
	mov	al, 1
.label_808:
	movsxd	rcx, dword ptr [r14 + 0x98]
	test	rcx, rcx
	je	.label_812
	mov	rdi, qword ptr [rip + stderr]
	movzx	eax, al
	xor	rax, 1
	lea	rdx, qword ptr [rax + label_806]
	mov	esi, 1
	mov	r8d, OFFSET FLAT:label_813
	xor	eax, eax
	call	__fprintf_chk
.label_812:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	fputc
.label_823:
	cmp	qword ptr [r14 + 0x78], 0
	je	.label_817
	xor	eax, eax
	jmp	.label_803
.label_817:
	cmp	qword ptr [r14 + 0x80], 0
	je	.label_822
	xor	eax, eax
	jmp	.label_803
.label_822:
	cmp	qword ptr [r14 + 0x88], 0
	je	.label_804
	xor	eax, eax
	jmp	.label_803
.label_804:
	cmp	qword ptr [r14 + 0x90], 0
	je	.label_810
	xor	eax, eax
	jmp	.label_803
.label_810:
	cmp	dword ptr [r14 + 0x98], 0
	je	.label_818
	xor	eax, eax
	jmp	.label_803
.label_818:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_825
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	fputs
	.section	.text
	.align	16
	#Procedure 0x4096dc
	.globl sub_4096dc
	.type sub_4096dc, @function
sub_4096dc:

	nop	dword ptr [rax]
.label_835:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_858
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
	.align	16
	#Procedure 0x409718
	.globl sub_409718
	.type sub_409718, @function
sub_409718:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40971a

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_835
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_841
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_834
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_855
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_832
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_856
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_865
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_857
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_836
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_829
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_854
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_850
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_838
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_849
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_839
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_837
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_840
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_859
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_842
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_864
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_843
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_860
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_844
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_861
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_845
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_862
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_846
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_863
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_847
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_572
	mov	ecx, OFFSET FLAT:label_833
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_852
	mov	esi, OFFSET FLAT:label_853
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_852
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_848
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_852:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_830
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_833
	mov	ecx, OFFSET FLAT:label_571
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_831
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_571
	mov	ecx, OFFSET FLAT:label_851
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x409b60

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_876
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_878
.label_876:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_878:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_867
	cmp	r10d, 0x29
	jae	.label_875
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_877
.label_875:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_877:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_867
	cmp	r10d, 0x29
	jae	.label_873
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_874
.label_873:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_874:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_867
	cmp	r10d, 0x29
	jae	.label_871
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_872
.label_871:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_872:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_867
	cmp	r10d, 0x29
	jae	.label_869
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_870
.label_869:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_870:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_867
	cmp	r10d, 0x29
	jae	.label_866
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_868
.label_866:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_868:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_867
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_867
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_867
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_867
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_867:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x409d42
	.globl sub_409d42
	.type sub_409d42, @function
sub_409d42:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d50

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_879
	mov	esi, OFFSET FLAT:label_880
	jmp	.label_881
.label_879:
	mov	esi, OFFSET FLAT:label_882
.label_881:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	16
	#Procedure 0x409dc0

	.globl apply_relative_time
	.type apply_relative_time, @function
apply_relative_time:
	lea	r8, [rsp + 8]
	movabs	r10, 0x7fffffffffffffff
	mov	edx, dword ptr [rsp + 0x38]
	test	esi, esi
	js	.label_926
	test	edx, edx
	js	.label_886
	mov	esi, 0x7fffffff
	sub	esi, edx
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	cmp	esi, eax
	jl	.label_931
	jmp	.label_892
.label_926:
	test	edx, edx
	js	.label_938
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	mov	esi, edx
	xor	esi, 0x80000000
	cmp	eax, esi
	jl	.label_940
	jmp	.label_890
.label_886:
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	mov	esi, 0x80000000
	sub	esi, edx
	cmp	eax, esi
	jge	.label_892
.label_931:
	add	edx, eax
	mov	dword ptr [rcx], edx
	mov	r9d, 1
	jmp	.label_897
.label_892:
	add	edx, eax
	mov	dword ptr [rcx], edx
	xor	r9d, r9d
.label_897:
	mov	rdx, qword ptr [r8 + 0x28]
	test	rdx, rdx
	js	.label_900
	mov	rsi, r10
	sub	rsi, rdx
	lea	rcx, [rdi + 0x90]
	mov	rax, qword ptr [rdi + 0x90]
	cmp	rsi, rax
	jl	.label_902
	jmp	.label_909
.label_900:
	lea	rcx, [rdi + 0x90]
	mov	rax, qword ptr [rdi + 0x90]
	lea	rsi, [r10 + 1]
	sub	rsi, rdx
	cmp	rax, rsi
	jge	.label_909
.label_902:
	add	rdx, rax
	mov	qword ptr [rcx], rdx
	mov	r11d, 1
	jmp	.label_916
.label_909:
	add	rdx, rax
	mov	qword ptr [rcx], rdx
	xor	r11d, r11d
.label_916:
	or	r11d, r9d
	mov	rsi, qword ptr [r8 + 0x20]
	test	rsi, rsi
	js	.label_917
	mov	rcx, r10
	sub	rcx, rsi
	lea	r9, [rdi + 0x88]
	mov	rax, qword ptr [rdi + 0x88]
	cmp	rcx, rax
	jl	.label_920
	jmp	.label_927
.label_917:
	lea	r9, [rdi + 0x88]
	mov	rax, qword ptr [rdi + 0x88]
	lea	rcx, [r10 + 1]
	sub	rcx, rsi
	cmp	rax, rcx
	jge	.label_927
.label_920:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	mov	eax, 1
	jmp	.label_933
.label_927:
	add	rsi, rax
	mov	qword ptr [r9], rsi
	xor	eax, eax
.label_933:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x18]
	test	rsi, rsi
	js	.label_925
	mov	rdx, r10
	sub	rdx, rsi
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	cmp	rdx, rax
	jl	.label_885
	jmp	.label_891
.label_925:
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	lea	rdx, [r10 + 1]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_891
.label_885:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	mov	eax, 1
	jmp	.label_896
.label_891:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	xor	eax, eax
.label_896:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x10]
	test	rsi, rsi
	js	.label_901
	mov	rdx, r10
	sub	rdx, rsi
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	cmp	rdx, rax
	jl	.label_904
	jmp	.label_908
.label_901:
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	lea	rdx, [r10 + 1]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_908
.label_904:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	mov	eax, 1
	jmp	.label_914
.label_908:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	xor	eax, eax
.label_914:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 8]
	test	rsi, rsi
	js	.label_913
	mov	rdx, r10
	sub	rdx, rsi
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	cmp	rdx, rax
	jl	.label_918
	jmp	.label_923
.label_913:
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	lea	rdx, [r10 + 1]
	sub	rdx, rsi
	cmp	rax, rdx
	jge	.label_923
.label_918:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	mov	eax, 1
	jmp	.label_928
.label_923:
	add	rsi, rax
	mov	qword ptr [rcx], rsi
	xor	eax, eax
.label_928:
	or	r11d, eax
	mov	rcx, qword ptr [r8]
	test	rcx, rcx
	js	.label_932
	sub	r10, rcx
	lea	rsi, [rdi + 0x68]
	mov	rax, qword ptr [rdi + 0x68]
	cmp	r10, rax
	jl	.label_935
	jmp	.label_939
.label_932:
	lea	rsi, [rdi + 0x68]
	mov	rax, qword ptr [rdi + 0x68]
	inc	r10
	sub	r10, rcx
	cmp	rax, r10
	jge	.label_939
.label_935:
	add	rcx, rax
	mov	qword ptr [rsi], rcx
	mov	eax, 1
	jmp	.label_888
.label_939:
	add	rcx, rax
	mov	qword ptr [rsi], rcx
	xor	eax, eax
.label_888:
	or	r11d, eax
	je	.label_893
	xor	eax, eax
	ret	
.label_938:
	lea	esi, [rdx + 0x7fffffff]
	lea	rcx, [rdi + 0x98]
	mov	eax, dword ptr [rdi + 0x98]
	cmp	esi, eax
	jge	.label_890
.label_940:
	sub	eax, edx
	mov	dword ptr [rcx], eax
	mov	r9d, 1
	jmp	.label_899
.label_890:
	sub	eax, edx
	mov	dword ptr [rcx], eax
	xor	r9d, r9d
.label_899:
	mov	rdx, qword ptr [r8 + 0x28]
	test	rdx, rdx
	js	.label_905
	lea	rcx, [rdi + 0x90]
	mov	rsi, qword ptr [rdi + 0x90]
	lea	rax, [r10 + 1]
	xor	rax, rdx
	cmp	rsi, rax
	jl	.label_907
	jmp	.label_912
.label_905:
	lea	rax, [rdx + r10]
	lea	rcx, [rdi + 0x90]
	mov	rsi, qword ptr [rdi + 0x90]
	cmp	rax, rsi
	jge	.label_912
.label_907:
	sub	rsi, rdx
	mov	qword ptr [rcx], rsi
	mov	r11d, 1
	jmp	.label_915
.label_912:
	sub	rsi, rdx
	mov	qword ptr [rcx], rsi
	xor	r11d, r11d
.label_915:
	or	r11d, r9d
	mov	rsi, qword ptr [r8 + 0x20]
	test	rsi, rsi
	js	.label_921
	lea	r9, [rdi + 0x88]
	mov	rcx, qword ptr [rdi + 0x88]
	lea	rax, [r10 + 1]
	xor	rax, rsi
	cmp	rcx, rax
	jl	.label_924
	jmp	.label_930
.label_921:
	lea	rax, [rsi + r10]
	lea	r9, [rdi + 0x88]
	mov	rcx, qword ptr [rdi + 0x88]
	cmp	rax, rcx
	jge	.label_930
.label_924:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	mov	eax, 1
	jmp	.label_936
.label_930:
	sub	rcx, rsi
	mov	qword ptr [r9], rcx
	xor	eax, eax
.label_936:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x18]
	test	rsi, rsi
	js	.label_883
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	lea	rdx, [r10 + 1]
	xor	rdx, rsi
	cmp	rax, rdx
	jl	.label_887
	jmp	.label_894
.label_883:
	lea	r9, [rsi + r10]
	mov	rcx, rdi
	sub	rcx, -0x80
	mov	rax, qword ptr [rdi + 0x80]
	cmp	r9, rax
	jge	.label_894
.label_887:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	mov	eax, 1
	jmp	.label_898
.label_894:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	xor	eax, eax
.label_898:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 0x10]
	test	rsi, rsi
	js	.label_903
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	lea	rdx, [r10 + 1]
	xor	rdx, rsi
	cmp	rax, rdx
	jl	.label_906
	jmp	.label_910
.label_903:
	lea	rdx, [rsi + r10]
	lea	rcx, [rdi + 0x78]
	mov	rax, qword ptr [rdi + 0x78]
	cmp	rdx, rax
	jge	.label_910
.label_906:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	mov	eax, 1
	jmp	.label_895
.label_910:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	xor	eax, eax
.label_895:
	or	r11d, eax
	mov	rsi, qword ptr [r8 + 8]
	test	rsi, rsi
	js	.label_922
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	lea	rdx, [r10 + 1]
	xor	rdx, rsi
	cmp	rax, rdx
	jl	.label_919
	jmp	.label_911
.label_922:
	lea	rdx, [rsi + r10]
	lea	rcx, [rdi + 0x70]
	mov	rax, qword ptr [rdi + 0x70]
	cmp	rdx, rax
	jge	.label_911
.label_919:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	mov	eax, 1
	jmp	.label_929
.label_911:
	sub	rax, rsi
	mov	qword ptr [rcx], rax
	xor	eax, eax
.label_929:
	or	r11d, eax
	mov	rcx, qword ptr [r8]
	test	rcx, rcx
	js	.label_934
	lea	r8, [rdi + 0x68]
	mov	rsi, qword ptr [rdi + 0x68]
	inc	r10
	xor	r10, rcx
	cmp	rsi, r10
	jl	.label_937
	jmp	.label_884
.label_934:
	add	r10, rcx
	lea	r8, [rdi + 0x68]
	mov	rsi, qword ptr [rdi + 0x68]
	cmp	r10, rsi
	jge	.label_884
.label_937:
	sub	rsi, rcx
	mov	qword ptr [r8], rsi
	mov	eax, 1
	jmp	.label_889
.label_884:
	sub	rsi, rcx
	mov	qword ptr [r8], rsi
	xor	eax, eax
.label_889:
	or	r11d, eax
	je	.label_893
	xor	eax, eax
	ret	
.label_893:
	mov	byte ptr [rdi + 0xa1], 1
	mov	al, 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a23c
	.globl sub_40a23c
	.type sub_40a23c, @function
sub_40a23c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a240
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
	.align	16
	#Procedure 0x40a2b5
	.globl sub_40a2b5
	.type sub_40a2b5, @function
sub_40a2b5:

	nop	word ptr cs:[rax + rax]
.label_941:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a2c5
	.globl sub_40a2c5
	.type sub_40a2c5, @function
sub_40a2c5:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40a2c7
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_508]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_509]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_510]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_941
	test	rdx, rdx
	je	.label_941
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
	.align	16
	#Procedure 0x40a330

	.globl fprintftime
	.type fprintftime, @function
fprintftime:
	push	rax
	mov	eax, r8d
	mov	r10, rcx
	mov	ecx, 0
	mov	r8d, 0
	mov	r9d, 0xffffffff
	push	rax
	push	r10
	call	__strftime_internal
	add	rsp, 0x10
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a356
	.globl sub_40a356
	.type sub_40a356, @function
sub_40a356:

	nop	word ptr cs:[rax + rax]
.label_942:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40a365
	.globl sub_40a365
	.type sub_40a365, @function
sub_40a365:

	nop	dword ptr [rax + rax]
.label_944:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_943
	test	rax, rax
	je	.label_942
.label_943:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a381
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_942
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_944
	test	rbx, rbx
	jne	.label_944
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a3b0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_945
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_946
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_948
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_572
	mov	ecx, OFFSET FLAT:label_833
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_947
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x40a424
	.globl sub_40a424
	.type sub_40a424, @function
sub_40a424:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a430

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_508]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_509]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_510]
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
	.align	16
	#Procedure 0x40a485
	.globl sub_40a485
	.type sub_40a485, @function
sub_40a485:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a490

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_954
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_951
	cmp	dword ptr [rbp], 0x20
	jne	.label_951
.label_954:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_950
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_952:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_953
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_951:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_949
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_952
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_522
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_950:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x40a550

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
	je	.label_955
	test	r15, r15
	je	.label_956
.label_955:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_956:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40a58c
	.globl sub_40a58c
	.type sub_40a58c, @function
sub_40a58c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a590
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_508]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_509]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_510]
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
	.align	16
	#Procedure 0x40a5ff
	.globl sub_40a5ff
	.type sub_40a5ff, @function
sub_40a5ff:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40a600

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_957
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_957
	test	byte ptr [rbx + 1], 1
	je	.label_957
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_957:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x40a633
	.globl sub_40a633
	.type sub_40a633, @function
sub_40a633:

	nop	word ptr cs:[rax + rax]
.label_958:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a645
	.globl sub_40a645
	.type sub_40a645, @function
sub_40a645:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a650

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
	je	.label_958
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
.label_959:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40a6e5
	.globl sub_40a6e5
	.type sub_40a6e5, @function
sub_40a6e5:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a6eb
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_508]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_509]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_510]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_959
	test	rdx, rdx
	je	.label_959
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
	.align	16
	#Procedure 0x40a750

	.globl show_date
	.type show_date, @function
show_date:
	push	r14
	push	rbx
	sub	rsp, 0x68
	mov	r14, rcx
	mov	rbx, rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rdx
	lea	rsi, [rsp + 8]
	lea	rdx, [rsp + 0x18]
	mov	rdi, r14
	call	localtime_rz
	test	rax, rax
	je	.label_965
	mov	eax, OFFSET FLAT:rfc_email_format
	cmp	rbx, rax
	je	.label_967
	mov	rdi, qword ptr [rip + stdout]
	mov	r8d, dword ptr [rsp + 0x10]
	lea	rdx, [rsp + 0x18]
	mov	rsi, rbx
	mov	rcx, r14
	call	fprintftime
	jmp	.label_961
.label_965:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_962
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsp + 0x50]
	call	imaxtostr
	mov	rdi, rax
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	jmp	.label_966
.label_967:
	mov	edi, 2
	mov	esi, OFFSET FLAT:label_963
	call	setlocale
	mov	rdi, qword ptr [rip + stdout]
	mov	r8d, dword ptr [rsp + 0x10]
	lea	rdx, [rsp + 0x18]
	mov	esi, OFFSET FLAT:rfc_email_format
	mov	rcx, r14
	call	fprintftime
	mov	edi, 2
	mov	esi, OFFSET FLAT:label_94
	call	setlocale
.label_961:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_960
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_964:
	mov	bl, 1
.label_966:
	mov	eax, ebx
	add	rsp, 0x68
	pop	rbx
	pop	r14
	ret	
.label_960:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_964
	.section	.text
	.align	16
	#Procedure 0x40a856
	.globl sub_40a856
	.type sub_40a856, @function
sub_40a856:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a860

	.globl yyparse
	.type yyparse, @function
yyparse:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x588
	mov	r14, rdi
	lea	r13, [rsp + 0x120]
	mov	word ptr [rsp + 0xf0], 0
	lea	rax, [r14 + 0x58]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [r14 + 0x50]
	mov	qword ptr [rsp + 0xd8], rax
	lea	rax, [r14 + 0x20]
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, 0xfffffffe
	movabs	r8, 0x8000000000000000
	movabs	rax, 0x3ffffff03ffffff
	movabs	rcx, 0x3ffffffffffffff
	and	rcx, rax
	mov	qword ptr [rsp + 0xe8], rcx
	mov	r15d, 0x80001f
	mov	r9d, 0xffffffff
	movabs	r10, 0xf333333333333334
	movabs	r11, 0xccccccccccccccc
	mov	eax, 0
	mov	edi, 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x98], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xe0], rcx
	mov	dword ptr [rsp + 0x94], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
	jmp	.label_999
	.section	.text
	.align	16
	#Procedure 0x40a931
	.globl sub_40a931
	.type sub_40a931, @function
sub_40a931:

	nop	word ptr cs:[rax + rax]
.label_1029:
	movsxd	rsi, eax
	movsx	edx, byte ptr [rsi + yypact]
	cmp	edx, -0x5d
	je	.label_1057
	cmp	r12d, -2
	jne	.label_1060
	mov	dword ptr [rsp + 0x58], edx
	mov	qword ptr [rsp + 0x50], rsi
	mov	qword ptr [rsp + 0x48], rdi
	mov	rdi, qword ptr [r14]
	mov	rdx, rdi
	jmp	.label_983
.label_1149:
	mov	rdi, rdx
	nop	word ptr cs:[rax + rax]
.label_983:
	mov	sil, byte ptr [rdx]
	movzx	eax, sil
	lea	ebp, [rax - 9]
	cmp	ebp, 0x17
	ja	.label_1065
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_1075:
	mov	rcx, rdx
	bt	r15d, ebp
	jae	.label_1108
	mov	qword ptr [r14], rcx
	mov	sil, byte ptr [rcx]
	movzx	eax, sil
	lea	ebp, [rax - 9]
	lea	rdx, [rcx + 1]
	cmp	ebp, 0x18
	mov	rdi, rcx
	jb	.label_1075
	dec	rdx
	mov	rdi, rcx
	jmp	.label_1065
	.section	.text
	.align	16
	#Procedure 0x40a9ca
	.globl sub_40a9ca
	.type sub_40a9ca, @function
sub_40a9ca:

	nop	word ptr [rax + rax]
.label_1108:
	dec	rcx
	mov	rdx, rcx
.label_1065:
	lea	ecx, [rax - 0x30]
	cmp	ecx, 0xa
	jb	.label_1087
	cmp	sil, 0x2d
	je	.label_1087
	cmp	sil, 0x2b
	jne	.label_1092
	nop	word ptr [rax + rax]
.label_1087:
	cmp	sil, 0x2d
	je	.label_1095
	xor	eax, eax
	cmp	sil, 0x2b
	jne	.label_1096
.label_1095:
	cmp	sil, 0x2d
	mov	eax, 1
	cmove	eax, r9d
	inc	rdx
	mov	rdi, rdx
	nop	word ptr cs:[rax + rax]
.label_1056:
	mov	rdx, rdi
	mov	qword ptr [r14], rdx
	mov	sil, byte ptr [rdx]
	movzx	ecx, sil
	lea	ebp, [rcx - 9]
	cmp	ebp, 0x17
	ja	.label_1113
	lea	rdi, [rdx + 1]
	bt	r15d, ebp
	jb	.label_1056
.label_1113:
	add	ecx, -0x30
	cmp	ecx, 9
	mov	rdi, rdx
	ja	.label_983
	jmp	.label_1096
.label_1092:
	add	eax, -0x41
	cmp	eax, 0x39
	ja	.label_1123
	movabs	rcx, 0x3ffffff03ffffff
	bt	rcx, rax
	jb	.label_1126
.label_1123:
	cmp	sil, 0x28
	jne	.label_1132
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x50]
	nop	word ptr cs:[rax + rax]
.label_1148:
	mov	rax, rdx
	lea	rdx, [rax + 1]
	mov	qword ptr [r14], rdx
	movzx	ebx, byte ptr [rax]
	cmp	bl, 0x28
	je	.label_1139
	cmp	bl, 0x29
	je	.label_1142
	xor	eax, eax
	test	bl, bl
	jne	.label_1144
	jmp	.label_1145
	.section	.text
	.align	16
	#Procedure 0x40aaaf
	.globl sub_40aaaf
	.type sub_40aaaf, @function
sub_40aaaf:

	nop	
.label_1142:
	dec	rcx
	jmp	.label_1144
	.section	.text
	.align	16
	#Procedure 0x40aab5
	.globl sub_40aab5
	.type sub_40aab5, @function
sub_40aab5:

	nop	word ptr cs:[rax + rax]
.label_1139:
	inc	rcx
.label_1144:
	test	rcx, rcx
	jne	.label_1148
	jmp	.label_1149
.label_1145:
	xor	r12d, r12d
	mov	edx, dword ptr [rsp + 0x58]
	jmp	.label_1055
.label_1096:
	add	rdx, 3
	xor	ecx, ecx
	nop	
.label_1189:
	mov	r12d, 0x3f
	test	rcx, rcx
	js	.label_1058
	cmp	rcx, r11
	jle	.label_1155
	jmp	.label_1157
	.section	.text
	.align	16
	#Procedure 0x40aaf5
	.globl sub_40aaf5
	.type sub_40aaf5, @function
sub_40aaf5:

	nop	word ptr cs:[rax + rax]
.label_1058:
	cmp	rcx, r10
	jl	.label_1157
.label_1155:
	add	rcx, rcx
	movzx	ebp, sil
	mov	ebx, 0x30
	sub	ebx, ebp
	add	ebp, -0x30
	test	eax, eax
	lea	rsi, [rcx + rcx*4]
	cmovs	ebp, ebx
	movsxd	rcx, ebp
	test	ecx, ecx
	js	.label_1168
	lea	rbp, [r8 - 1]
	sub	rbp, rcx
	mov	r12d, 0x3f
	cmp	rbp, rsi
	jge	.label_1177
	jmp	.label_1157
	.section	.text
	.align	16
	#Procedure 0x40ab41
	.globl sub_40ab41
	.type sub_40ab41, @function
sub_40ab41:

	nop	word ptr cs:[rax + rax]
.label_1168:
	mov	rbp, r8
	sub	rbp, rcx
	mov	r12d, 0x3f
	cmp	rsi, rbp
	jl	.label_1157
.label_1177:
	add	rcx, rsi
	movzx	esi, byte ptr [rdx - 2]
	mov	ebp, esi
	add	ebp, -0x30
	inc	rdx
	cmp	ebp, 0xa
	jb	.label_1189
	or	sil, 2
	cmp	sil, 0x2e
	jne	.label_1195
	movsx	esi, byte ptr [rdx - 2]
	add	esi, -0x30
	cmp	esi, 9
	ja	.label_1195
	lea	rdi, [rdx - 1]
	lea	esi, [rsi + rsi*4]
	movsx	ebp, byte ptr [rdx - 1]
	add	ebp, -0x30
	cmp	ebp, 0xa
	cmovb	rdi, rdx
	mov	ebx, 0
	cmovae	ebp, ebx
	lea	edx, [rbp + rsi*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rdi]
	add	esi, -0x30
	lea	rbp, [rdi + 1]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rbp]
	add	esi, -0x30
	lea	rdi, [rbp + 1]
	cmp	esi, 0xa
	cmovae	rdi, rbp
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rdi]
	add	esi, -0x30
	lea	rbp, [rdi + 1]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rbp]
	add	esi, -0x30
	lea	rdi, [rbp + 1]
	cmp	esi, 0xa
	cmovae	rdi, rbp
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rdi]
	add	esi, -0x30
	lea	rbp, [rdi + 1]
	cmp	esi, 0xa
	cmovae	rbp, rdi
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	edx, [rdx + rdx*4]
	movsx	esi, byte ptr [rbp]
	add	esi, -0x30
	lea	rdi, [rbp + 1]
	cmp	esi, 0xa
	cmovae	rdi, rbp
	cmovae	esi, ebx
	lea	edx, [rsi + rdx*2]
	lea	esi, [rdx + rdx*4]
	movsx	ebp, byte ptr [rdi]
	add	ebp, -0x30
	lea	rdx, [rdi + 1]
	cmp	ebp, 0xa
	cmovae	rdx, rdi
	cmovae	ebp, ebx
	lea	esi, [rbp + rsi*2]
	test	eax, eax
	jns	.label_1007
	movsx	ebp, byte ptr [rdx]
	mov	edi, ebp
	add	edi, -0x30
	cmp	edi, 9
	ja	.label_1007
	nop	
.label_1015:
	cmp	bpl, 0x30
	jne	.label_1013
	movsx	ebp, byte ptr [rdx + 1]
	inc	rdx
	mov	edi, ebp
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1015
	jmp	.label_1007
.label_1157:
	mov	rcx, qword ptr [rsp + 0x98]
	jmp	.label_1021
.label_1195:
	add	rdx, -3
	mov	esi, eax
	shr	esi, 0x1f
	mov	dword ptr [rsp + 0x94], esi
	mov	qword ptr [r14], rdx
	sub	rdx, rdi
	xor	r12d, r12d
	test	eax, eax
	sete	r12b
	or	r12d, 0x112
	mov	qword ptr [rsp + 0xe0], rdx
.label_1021:
	mov	rdi, qword ptr [rsp + 0x48]
.label_1135:
	mov	rsi, qword ptr [rsp + 0x50]
	mov	edx, dword ptr [rsp + 0x58]
	jmp	.label_1038
.label_1132:
	lea	rax, [rdx + 1]
	mov	qword ptr [r14], rax
	movzx	r12d, byte ptr [rdx]
	jmp	.label_1040
.label_1126:
	lea	rdi, [rsp + 0xa0]
	mov	rax, rdi
	mov	rbp, qword ptr [rsp + 0xe8]
	nop	
.label_1061:
	lea	rcx, [rsp + 0xb3]
	cmp	rax, rcx
	jae	.label_1147
	mov	byte ptr [rax], sil
	inc	rax
	mov	rdx, qword ptr [r14]
.label_1147:
	mov	rcx, rdx
	lea	rdx, [rcx + 1]
	mov	qword ptr [r14], rdx
	movzx	esi, byte ptr [rcx + 1]
	mov	ecx, esi
	add	ecx, -0x41
	cmp	ecx, 0x39
	ja	.label_1081
	mov	rbx, rbp
	shr	rbx, cl
	and	ebx, 1
	jmp	.label_1059
	.section	.text
	.align	16
	#Procedure 0x40ad59
	.globl sub_40ad59
	.type sub_40ad59, @function
sub_40ad59:

	nop	dword ptr [rax]
.label_1081:
	xor	ebx, ebx
.label_1059:
	cmp	sil, 0x2e
	je	.label_1061
	test	bl, bl
	jne	.label_1061
	mov	byte ptr [rax], 0
	mov	al, byte ptr [rsp + 0xa0]
	test	al, al
	je	.label_1063
	lea	rcx, [rsp + 0xa1]
	nop	word ptr cs:[rax + rax]
.label_1077:
	movzx	edx, al
	add	edx, -0x61
	cmp	edx, 0x1a
	jae	.label_1068
	add	al, 0xe0
.label_1068:
	mov	byte ptr [rcx - 1], al
	movzx	eax, byte ptr [rcx]
	inc	rcx
	test	al, al
	jne	.label_1077
.label_1063:
	mov	esi, OFFSET FLAT:label_1076
	mov	rbx, rdi
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:meridian_table
	je	.label_969
	mov	esi, OFFSET FLAT:label_1082
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1154
	je	.label_969
	mov	esi, OFFSET FLAT:label_1088
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1094
	je	.label_969
	mov	esi, OFFSET FLAT:label_1098
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1101
	je	.label_969
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	mov	r12b, 1
	cmp	rbp, 3
	je	.label_1110
	cmp	rbp, 4
	jne	.label_1041
	cmp	byte ptr [rsp + 0xa3], 0x2e
	sete	r12b
	jmp	.label_1110
.label_1013:
	inc	esi
.label_1007:
	dec	rdx
	nop	word ptr [rax + rax]
.label_1122:
	movsx	edi, byte ptr [rdx + 1]
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1122
	test	eax, eax
	jns	.label_1127
	test	esi, esi
	mov	rdi, qword ptr [rsp + 0x48]
	je	.label_1129
	mov	r12d, 0x3f
	cmp	rcx, r8
	jne	.label_1131
	mov	rcx, qword ptr [rsp + 0x98]
	jmp	.label_1135
.label_1131:
	dec	rcx
	mov	edi, 0x3b9aca00
	sub	edi, esi
	mov	esi, edi
.label_1127:
	mov	rdi, qword ptr [rsp + 0x48]
.label_1129:
	mov	rbx, rcx
	shr	rbx, 8
	mov	qword ptr [rsp + 0xc8], rbx
	mov	dword ptr [rsp + 0x94], ecx
	movsxd	rcx, esi
	mov	qword ptr [r14], rdx
	xor	r12d, r12d
	test	eax, eax
	sete	r12b
	or	r12d, 0x114
	jmp	.label_1135
.label_1041:
	xor	r12d, r12d
.label_1110:
	mov	esi, OFFSET FLAT:label_1150
	mov	ebx, OFFSET FLAT:month_and_day_table
	lea	rax, [rsp + 0xa0]
.label_1163:
	test	r12b, r12b
	je	.label_1153
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	jmp	.label_1156
.label_1153:
	mov	rdi, rax
	call	strcmp
.label_1156:
	test	eax, eax
	je	.label_1161
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	lea	rax, [rsp + 0xa0]
	jne	.label_1163
	mov	rdi, r14
	mov	rsi, rax
	mov	rbx, rax
	call	lookup_zone
	test	rax, rax
	jne	.label_969
	mov	esi, OFFSET FLAT:label_1178
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:dst_table
	je	.label_969
	mov	esi, OFFSET FLAT:label_996
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:time_units_table
	je	.label_969
	mov	esi, OFFSET FLAT:label_1008
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1184
	je	.label_969
	mov	esi, OFFSET FLAT:label_1016
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1019
	je	.label_969
	mov	esi, OFFSET FLAT:label_1024
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1030
	je	.label_969
	mov	esi, OFFSET FLAT:label_1032
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1035
	je	.label_969
	mov	esi, OFFSET FLAT:label_1037
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1039
	je	.label_969
	mov	esi, OFFSET FLAT:label_1206
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1045
	je	.label_969
	mov	esi, OFFSET FLAT:label_1047
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_971
	je	.label_969
	mov	esi, OFFSET FLAT:label_974
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_979
	je	.label_969
	mov	esi, OFFSET FLAT:label_1046
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_986
	je	.label_969
	cmp	byte ptr [rsp + rbp + 0x9f], 0x53
	jne	.label_990
	mov	byte ptr [rsp + rbp + 0x9f], 0
	mov	esi, OFFSET FLAT:label_996
	lea	rbx, [rsp + 0xa0]
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:time_units_table
	je	.label_969
	mov	esi, OFFSET FLAT:label_1008
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1184
	je	.label_969
	mov	esi, OFFSET FLAT:label_1016
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1019
	je	.label_969
	mov	esi, OFFSET FLAT:label_1024
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1030
	je	.label_969
	mov	esi, OFFSET FLAT:label_1032
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1035
	je	.label_969
	mov	esi, OFFSET FLAT:label_1037
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1039
	je	.label_969
	mov	esi, OFFSET FLAT:label_1206
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1045
	je	.label_969
	mov	esi, OFFSET FLAT:label_1047
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_971
	je	.label_969
	mov	esi, OFFSET FLAT:label_974
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_979
	je	.label_969
	mov	esi, OFFSET FLAT:label_1046
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_986
	je	.label_969
	mov	byte ptr [rsp + rbp + 0x9f], 0x53
.label_990:
	mov	esi, OFFSET FLAT:label_1023
	lea	rbx, [rsp + 0xa0]
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:relative_time_table
	je	.label_969
	mov	esi, OFFSET FLAT:label_1069
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1086
	je	.label_969
	mov	esi, OFFSET FLAT:label_1111
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1079
	je	.label_969
	mov	esi, OFFSET FLAT:label_1084
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1166
	je	.label_969
	mov	esi, OFFSET FLAT:label_1117
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1203
	je	.label_969
	mov	esi, OFFSET FLAT:label_1099
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1104
	je	.label_969
	mov	esi, OFFSET FLAT:label_1012
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1114
	je	.label_969
	mov	esi, OFFSET FLAT:label_1034
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1121
	je	.label_969
	mov	esi, OFFSET FLAT:label_1128
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1125
	je	.label_969
	mov	esi, OFFSET FLAT:label_1130
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1134
	je	.label_969
	mov	esi, OFFSET FLAT:label_1137
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1138
	je	.label_969
	mov	esi, OFFSET FLAT:label_1140
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1143
	je	.label_969
	mov	esi, OFFSET FLAT:label_1146
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_976
	je	.label_969
	mov	esi, OFFSET FLAT:label_1170
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1175
	je	.label_969
	mov	esi, OFFSET FLAT:label_1200
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1160
	je	.label_969
	mov	esi, OFFSET FLAT:label_1102
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1124
	je	.label_969
	mov	esi, OFFSET FLAT:label_1173
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1158
	je	.label_969
	mov	esi, OFFSET FLAT:label_1180
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1181
	je	.label_969
	mov	esi, OFFSET FLAT:label_1214
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1186
	je	.label_969
	mov	esi, OFFSET FLAT:label_1005
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	mov	eax, OFFSET FLAT:label_1031
	je	.label_969
	movzx	esi, word ptr [rsp + 0xa0]
	cmp	rbp, 1
	mov	ecx, esi
	jne	.label_1197
	cmp	cl, 0x41
	mov	eax, OFFSET FLAT:military_table
	lea	rdx, [rsp + 0xa0]
	je	.label_969
	cmp	cl, 0x42
	mov	eax, OFFSET FLAT:label_1106
	je	.label_969
	cmp	cl, 0x43
	mov	eax, OFFSET FLAT:label_1208
	je	.label_969
	cmp	cl, 0x44
	mov	eax, OFFSET FLAT:label_1211
	je	.label_969
	cmp	cl, 0x45
	mov	eax, OFFSET FLAT:label_1213
	je	.label_969
	cmp	cl, 0x46
	mov	eax, OFFSET FLAT:label_1216
	je	.label_969
	cmp	cl, 0x47
	mov	eax, OFFSET FLAT:label_1218
	je	.label_969
	cmp	cl, 0x48
	mov	eax, OFFSET FLAT:label_968
	je	.label_969
	cmp	cl, 0x49
	mov	eax, OFFSET FLAT:label_972
	je	.label_969
	cmp	cl, 0x4b
	mov	eax, OFFSET FLAT:label_977
	je	.label_969
	cmp	cl, 0x4c
	mov	eax, OFFSET FLAT:label_981
	je	.label_969
	cmp	cl, 0x4d
	mov	eax, OFFSET FLAT:label_985
	je	.label_969
	cmp	cl, 0x4e
	mov	eax, OFFSET FLAT:label_989
	je	.label_969
	cmp	cl, 0x4f
	mov	eax, OFFSET FLAT:label_995
	je	.label_969
	cmp	cl, 0x50
	mov	eax, OFFSET FLAT:label_998
	je	.label_969
	cmp	cl, 0x51
	mov	eax, OFFSET FLAT:label_1097
	je	.label_969
	cmp	cl, 0x52
	mov	eax, OFFSET FLAT:label_1002
	je	.label_969
	cmp	cl, 0x53
	mov	eax, OFFSET FLAT:label_1078
	je	.label_969
	cmp	cl, 0x54
	mov	eax, OFFSET FLAT:label_1010
	je	.label_969
	cmp	cl, 0x55
	mov	eax, OFFSET FLAT:label_1014
	je	.label_969
	cmp	cl, 0x56
	mov	eax, OFFSET FLAT:label_1204
	je	.label_969
	cmp	cl, 0x57
	mov	eax, OFFSET FLAT:label_1215
	je	.label_969
	cmp	cl, 0x58
	mov	eax, OFFSET FLAT:label_975
	je	.label_969
	cmp	cl, 0x59
	mov	eax, OFFSET FLAT:label_1026
	je	.label_969
	test	cl, cl
	je	.label_993
	cmp	cl, 0x5a
	mov	eax, OFFSET FLAT:label_1064
	je	.label_969
	jmp	.label_1033
.label_1161:
	mov	rax, rbx
.label_969:
	mov	r12d, dword ptr [rax + 8]
	mov	eax, dword ptr [rax + 0xc]
	mov	dword ptr [rsp + 0x94], eax
	sar	eax, 8
	cdqe	
	mov	qword ptr [rsp + 0xc8], rax
.label_1001:
	mov	r9d, 0xffffffff
	movabs	r8, 0x8000000000000000
	movabs	r10, 0xf333333333333334
	movabs	r11, 0xccccccccccccccc
.label_1040:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	edx, dword ptr [rsp + 0x58]
	nop	word ptr [rax + rax]
.label_1060:
	xor	eax, eax
	test	r12d, r12d
	jle	.label_1051
	mov	eax, 2
	cmp	r12d, 0x115
	mov	rcx, qword ptr [rsp + 0x98]
	ja	.label_1055
.label_1038:
	movsxd	rax, r12d
	movzx	eax, byte ptr [rax + yytranslate]
	mov	qword ptr [rsp + 0x98], rcx
	jmp	.label_1055
.label_1051:
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1055:
	add	edx, eax
	cmp	edx, 0x70
	ja	.label_1057
	movsxd	rcx, edx
	movsx	edx, byte ptr [rcx + yycheck]
	cmp	edx, eax
	jne	.label_1057
	movzx	eax, byte ptr [rcx + yytable]
	or	rcx, 4
	cmp	rcx, 0x6f
	jne	.label_1066
	neg	eax
	jmp	.label_1071
	.section	.text
	.align	16
	#Procedure 0x40b59e
	.globl sub_40b59e
	.type sub_40b59e, @function
sub_40b59e:

	nop	
.label_1057:
	movzx	eax, byte ptr [rsi + yydefact]
	test	eax, eax
	mov	ebp, 1
	je	.label_1028
.label_1071:
	movsxd	rdx, eax
	movzx	esi, byte ptr [rdx + yyr2]
	mov	eax, 1
	sub	rax, rsi
	imul	rax, rax, 0x38
	mov	rcx, qword ptr [r13 + rax]
	mov	qword ptr [rsp + 0x58], rcx
	mov	rcx, qword ptr [r13 + rax + 8]
	mov	qword ptr [rsp + 0x68], rcx
	mov	rcx, qword ptr [r13 + rax + 0x10]
	mov	qword ptr [rsp + 0x50], rcx
	mov	rcx, qword ptr [r13 + rax + 0x18]
	mov	qword ptr [rsp + 0x80], rcx
	mov	rcx, qword ptr [r13 + rax + 0x20]
	mov	qword ptr [rsp + 0x78], rcx
	mov	rcx, qword ptr [r13 + rax + 0x28]
	mov	qword ptr [rsp + 0x70], rcx
	mov	ecx, dword ptr [r13 + rax + 0x30]
	mov	dword ptr [rsp + 0x44], ecx
	mov	eax, dword ptr [r13 + rax + 0x34]
	mov	dword ptr [rsp + 0xd4], eax
	lea	eax, [rdx - 4]
	cmp	eax, 0x57
	ja	.label_987
	jmp	qword ptr [(rax * 8) + label_1116]
.label_1781:
	mov	rax, qword ptr [r13 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 0x10]
	movups	xmm2, xmmword ptr [r13 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	qword ptr [rsp + 0x60], rsi
	mov	esi, 1
	mov	qword ptr [rsp + 0x48], rdi
	mov	rdi, r14
	mov	rbx, rdx
	call	apply_relative_time
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, rbx
	mov	rdi, qword ptr [rsp + 0x48]
	movabs	r11, 0xccccccccccccccc
	movabs	r10, 0xf333333333333334
	mov	r9d, 0xffffffff
	movabs	r8, 0x8000000000000000
	jmp	.label_1152
.label_1066:
	mov	rcx, qword ptr [rsp + 0xc8]
	shl	rcx, 8
	mov	edx, dword ptr [rsp + 0x94]
	movzx	edx, dl
	or	rdx, rcx
	mov	qword ptr [r13 + 0x38], rdx
	mov	rcx, qword ptr [rsp + 0x98]
	mov	qword ptr [r13 + 0x40], rcx
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	qword ptr [r13 + 0x48], rcx
	pxor	xmm0, xmm0
	movdqu	xmmword ptr [r13 + 0x60], xmm0
	movdqu	xmmword ptr [r13 + 0x50], xmm0
	lea	rcx, [r13 + 0x38]
	mov	r12d, 0xfffffffe
	jmp	.label_1085
.label_1795:
	mov	rax, qword ptr [r13 - 0x30]
	jmp	.label_1165
.label_1802:
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	jmp	.label_987
.label_1783:
	mov	rax, qword ptr [r13 - 0x30]
	jmp	.label_1174
.label_1798:
	mov	rax, qword ptr [r13 - 0x30]
	jmp	.label_1176
.label_1786:
	mov	rax, qword ptr [r13 - 0x30]
	jmp	.label_1072
.label_1799:
	mov	rax, qword ptr [r13 - 0x38]
	mov	qword ptr [rsp + 0x70], rax
	mov	eax, dword ptr [r13 - 0x30]
	mov	dword ptr [rsp + 0x44], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x80], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	jmp	.label_987
.label_1790:
	mov	rax, qword ptr [r13]
	jmp	.label_1194
.label_1792:
	mov	rax, qword ptr [r13 - 0x30]
	jmp	.label_1196
.label_1804:
	mov	qword ptr [rsp + 0x48], rdi
	movdqu	xmm0, xmmword ptr [r13 - 0x38]
	mov	rdi, qword ptr [r13 - 0x28]
	mov	rax, qword ptr [r14 + 0xa8]
	test	rax, rax
	mov	qword ptr [rsp + 0x60], rsi
	je	.label_1198
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_1198
	cmp	byte ptr [r14 + 0xa1], 0
	je	.label_1205
.label_1198:
	mov	rbx, rdx
	cmp	rdi, 5
	jl	.label_1209
	inc	rax
	mov	qword ptr [r14 + 0xa8], rax
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movabs	rbp, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rbp
	mov	rsi, rdx
	add	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3f
	sar	rsi, 6
	add	rsi, rax
	imul	rax, rsi, 0x64
	mov	rdx, rcx
	sub	rdx, rax
	mov	qword ptr [r14 + 0x40], rdx
	mov	rax, rsi
	imul	rbp
	add	rdx, rsi
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x64
	sub	rsi, rax
	mov	qword ptr [r14 + 0x38], rsi
	movabs	rdx, 0x346dc5d63886594b
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0xb
	add	rdx, rax
	mov	qword ptr [r14 + 0x28], rdx
	add	rdi, -4
	mov	qword ptr [r14 + 0x30], rdi
	jmp	.label_1212
.label_1788:
	mov	rbx, qword ptr [r13]
	test	rbx, rbx
	mov	qword ptr [rsp + 0x50], rbx
	js	.label_1000
	lea	rcx, [r13 - 0x38]
	jmp	.label_1003
.label_1787:
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	jmp	.label_1006
.label_1780:
	mov	qword ptr [rsp + 0x60], rsi
	mov	esi, dword ptr [r13]
	mov	rax, qword ptr [r13 - 8]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r13 - 0x38]
	movups	xmm1, xmmword ptr [r13 - 0x28]
	movups	xmm2, xmmword ptr [r13 - 0x18]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	rbx, rdi
	mov	rdi, r14
	mov	rbp, rdx
	call	apply_relative_time
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, rbp
	mov	rdi, rbx
	movabs	r11, 0xccccccccccccccc
	movabs	r10, 0xf333333333333334
	mov	r9d, 0xffffffff
	movabs	r8, 0x8000000000000000
	mov	ebp, 1
.label_1152:
	test	al, al
	jne	.label_987
	jmp	.label_1028
.label_1779:
	mov	rax, qword ptr [r13 - 0x60]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [r13 - 0x70]
	movdqu	xmmword ptr [rcx], xmm0
	mov	rax, qword ptr [r13 - 0x30]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r8
	mov	qword ptr [r14 + 0x38], rcx
	mov	ebp, 1
	je	.label_1028
	mov	rax, qword ptr [r13 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r8
	mov	qword ptr [r14 + 0x40], rcx
	jne	.label_987
	jmp	.label_1028
.label_1777:
	mov	rax, qword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x40], rax
	mov	rax, qword ptr [r13]
	mov	qword ptr [r14 + 0x38], rax
	jmp	.label_987
.label_1805:
	mov	qword ptr [rsp + 0x58], -1
	jmp	.label_987
.label_1759:
	mov	dword ptr [r14 + 0x14], 1
	inc	qword ptr [r14 + 0xc0]
	jmp	.label_987
.label_1762:
	mov	eax, dword ptr [r13 - 0x38]
	mov	dword ptr [r14 + 0x18], eax
	jmp	.label_1070
.label_1754:
	mov	rax, qword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x48], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xd8]
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [r14 + 0x1c], 2
	jmp	.label_987
.label_1766:
	mov	eax, 0xe10
	add	eax, dword ptr [r13 - 0x38]
	mov	dword ptr [r14 + 0x18], eax
	jmp	.label_987
.label_1764:
	mov	qword ptr [rsp + 0x88], rdx
	mov	rdx, qword ptr [r13 - 0x30]
	imul	rcx, rdx, 0x64
	cmp	qword ptr [r13 - 0x28], 3
	mov	rax, qword ptr [r13]
	cmovge	rcx, rdx
	test	rax, rax
	cmovns	rcx, rdx
	js	.label_1091
	mov	rbx, rsi
	mov	dl, byte ptr [r13 - 0x38]
	test	rcx, rcx
	js	.label_1105
	movabs	rsi, 0x222222222222222
	cmp	rcx, rsi
	jg	.label_1112
	jmp	.label_1103
.label_1751:
	mov	rax, qword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x48], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xd8]
	movdqu	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_1118
.label_1774:
	mov	rax, qword ptr [r13 - 0x70]
	mov	qword ptr [r14 + 0x38], rax
	mov	rax, qword ptr [r13 - 0x30]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r8
	mov	qword ptr [r14 + 0x40], rcx
	mov	ebp, 1
	je	.label_1028
	mov	rax, qword ptr [r13 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r8
	mov	qword ptr [r14 + 0x28], rcx
	jne	.label_1136
	jmp	.label_1028
.label_1769:
	mov	rax, qword ptr [r13 - 0x38]
	jmp	.label_1141
.label_1763:
	mov	dword ptr [r14 + 0x18], 0x6270
.label_1070:
	mov	rax, qword ptr [r13 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 0x10]
	movups	xmm2, xmmword ptr [r13 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	qword ptr [rsp + 0x60], rsi
	mov	esi, 1
	mov	qword ptr [rsp + 0x48], rdi
	mov	rdi, r14
	mov	rbx, rdx
	call	apply_relative_time
	test	al, al
	je	.label_1028
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1048
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	debug_print_relative_time
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, rbx
	jmp	.label_1172
.label_1753:
	mov	rax, qword ptr [r13 - 0x110]
	mov	rcx, qword ptr [r13 - 0xa0]
	mov	rbx, rdx
	mov	rdx, qword ptr [r13 - 0x38]
	mov	rbp, rsi
	movsxd	rsi, dword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x48], rax
	mov	qword ptr [r14 + 0x50], rcx
	mov	qword ptr [r14 + 0x58], rdx
	mov	rdx, rbx
	mov	qword ptr [r14 + 0x60], rsi
	mov	rsi, rbp
	jmp	.label_1118
.label_1760:
	mov	eax, dword ptr [r13]
	mov	dword ptr [r14 + 0x18], eax
	jmp	.label_987
.label_1743:
	inc	qword ptr [r14 + 0xc8]
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_1190
	jmp	.label_997
.label_1770:
	mov	rax, qword ptr [r13 - 0x30]
.label_1141:
	mov	qword ptr [r14 + 8], rax
	mov	eax, dword ptr [r13]
	mov	dword ptr [r14 + 0x10], eax
	mov	byte ptr [r14 + 0xe0], 1
	jmp	.label_987
.label_1772:
	mov	rbp, qword ptr [r13 - 0xd0]
	mov	al, byte ptr [r14 + 0xd9]
	cmp	rbp, 4
	jl	.label_1202
	lea	rbx, [r13 - 0xe0]
	test	al, al
	je	.label_1207
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	qword ptr [rsp + 0x60], rsi
	mov	esi, OFFSET FLAT:label_1210
	mov	qword ptr [rsp + 0x88], rbx
	mov	rbx, rdx
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [r13 - 0xd8]
	xor	eax, eax
	mov	rdi, rcx
	mov	rdx, rbp
	call	dbg_printf
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdx, rbx
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rdi, qword ptr [rsp + 0x48]
	movabs	r11, 0xccccccccccccccc
	movabs	r10, 0xf333333333333334
	mov	r9d, 0xffffffff
	movabs	r8, 0x8000000000000000
.label_1207:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [rbx]
	movdqu	xmmword ptr [rcx], xmm0
.label_1771:
	mov	rax, qword ptr [r13 - 0x68]
	jmp	.label_992
.label_1746:
	inc	qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_571
	jmp	.label_997
.label_1752:
	mov	rax, qword ptr [r13 - 0xa0]
	mov	rcx, qword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x48], rax
	mov	qword ptr [r14 + 0x50], rcx
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
.label_1118:
	mov	eax, dword ptr [r13]
	mov	dword ptr [r14 + 0x1c], eax
	jmp	.label_987
.label_1765:
	mov	eax, 0xe10
	add	eax, dword ptr [r13]
	mov	dword ptr [r14 + 0x18], eax
	jmp	.label_987
.label_1741:
	movdqu	xmm0, xmmword ptr [r13]
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
	mov	byte ptr [r14 + 0xa0], 1
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_1025
	jmp	.label_997
.label_1742:
	inc	qword ptr [r14 + 0xc8]
	inc	qword ptr [r14 + 0xa8]
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_1036
	jmp	.label_997
.label_1747:
	inc	qword ptr [r14 + 0xb0]
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_1042
	jmp	.label_997
.label_1748:
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_1048
	jmp	.label_1049
.label_1755:
	mov	rax, qword ptr [r13 - 0xa0]
	mov	rcx, qword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x48], rax
	mov	qword ptr [r14 + 0x50], rcx
	jmp	.label_1052
.label_1784:
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_1100
.label_1756:
	mov	rax, qword ptr [r13 - 0x110]
	mov	rcx, qword ptr [r13 - 0xa0]
	mov	rbx, rdx
	mov	rdx, qword ptr [r13 - 0x38]
	mov	rbp, rsi
	movsxd	rsi, dword ptr [r13 - 0x30]
	mov	qword ptr [r14 + 0x48], rax
	mov	qword ptr [r14 + 0x50], rcx
	mov	qword ptr [r14 + 0x58], rdx
	mov	rdx, rbx
	mov	qword ptr [r14 + 0x60], rsi
	mov	rsi, rbp
	mov	dword ptr [r14 + 0x1c], 2
	jmp	.label_987
.label_1744:
	inc	qword ptr [r14 + 0xb8]
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_1074
	jmp	.label_997
.label_1745:
	inc	qword ptr [r14 + 0xd0]
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_1080
	jmp	.label_997
.label_1806:
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_987
.label_1778:
	mov	rax, qword ptr [r13 - 0x68]
	mov	qword ptr [r14 + 0x40], rax
	mov	rax, qword ptr [r13 - 0x38]
	mov	qword ptr [r14 + 0x38], rax
	jmp	.label_1093
.label_1785:
	mov	rax, qword ptr [r13 - 0x38]
.label_1072:
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_1100
.label_1750:
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_1107
.label_1049:
	mov	rbp, rdx
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	debug_print_relative_time
	jmp	.label_1119
.label_1791:
	mov	rax, qword ptr [r13 - 0x38]
.label_1196:
	mov	qword ptr [rsp + 0x80], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_1120
.label_1749:
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_1193
.label_997:
	mov	rbp, rdx
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	debug_print_current_time
.label_1119:
	mov	rsi, rbx
	mov	rdx, rbp
.label_1172:
	mov	rdi, qword ptr [rsp + 0x48]
	movabs	r11, 0xccccccccccccccc
	movabs	r10, 0xf333333333333334
	mov	r9d, 0xffffffff
	movabs	r8, 0x8000000000000000
	jmp	.label_987
.label_1758:
	mov	eax, dword ptr [r13]
	mov	dword ptr [r14 + 0x14], eax
	jmp	.label_987
.label_1775:
	mov	rax, qword ptr [r13 - 0x38]
.label_992:
	mov	qword ptr [r14 + 0x38], rax
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [r14 + 0x40], rax
	jmp	.label_987
.label_1757:
	mov	rbx, rdx
	inc	qword ptr [r14 + 0xd0]
	mov	rdx, qword ptr [r13 - 0x30]
	imul	rcx, rdx, 0x64
	cmp	qword ptr [r13 - 0x28], 3
	mov	rax, qword ptr [r13]
	cmovge	rcx, rdx
	test	rax, rax
	cmovns	rcx, rdx
	js	.label_1151
	mov	rbp, rsi
	mov	dl, byte ptr [r13 - 0x38]
	test	rcx, rcx
	js	.label_1162
	movabs	rsi, 0x222222222222222
	cmp	rcx, rsi
	jg	.label_1169
	jmp	.label_1159
.label_1782:
	mov	rax, qword ptr [r13 - 0x38]
.label_1174:
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
.label_1006:
	mov	qword ptr [rsp + 0x68], rax
.label_1100:
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_1179
.label_1761:
	mov	dword ptr [r14 + 0x18], 0x6270
	jmp	.label_987
.label_1797:
	mov	rax, qword ptr [r13 - 0x38]
.label_1176:
	mov	qword ptr [rsp + 0x70], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_1182
.label_1803:
	mov	qword ptr [rsp + 0x48], rdi
	movdqu	xmm0, xmmword ptr [r13]
	mov	rdi, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r14 + 0xa8]
	test	rax, rax
	je	.label_1187
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_1187
	cmp	byte ptr [r14 + 0xa1], 0
	je	.label_1044
.label_1187:
	cmp	rdi, 5
	jl	.label_1199
	inc	rax
	mov	qword ptr [r14 + 0xa8], rax
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	movabs	rbp, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	mov	qword ptr [rsp + 0x88], rdx
	imul	rbp
	mov	rbx, rsi
	mov	rsi, rdx
	add	rsi, rcx
	mov	rax, rsi
	shr	rax, 0x3f
	sar	rsi, 6
	add	rsi, rax
	imul	rax, rsi, 0x64
	mov	rdx, rcx
	sub	rdx, rax
	mov	qword ptr [r14 + 0x40], rdx
	mov	rax, rsi
	imul	rbp
	add	rdx, rsi
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x64
	sub	rsi, rax
	mov	qword ptr [r14 + 0x38], rsi
	mov	rsi, rbx
	movabs	rdx, 0x346dc5d63886594b
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0xb
	add	rdx, rax
	mov	qword ptr [r14 + 0x28], rdx
	mov	rdx, qword ptr [rsp + 0x88]
	add	rdi, -4
.label_1217:
	mov	qword ptr [r14 + 0x30], rdi
	mov	rdi, qword ptr [rsp + 0x48]
	jmp	.label_987
.label_1794:
	mov	rax, qword ptr [r13 - 0x38]
.label_1165:
	mov	qword ptr [rsp + 0x78], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_1090
.label_1793:
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x80], rax
.label_1120:
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_1004
.label_1768:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [r13 - 0x38]
	mov	dword ptr [r14 + 0x10], eax
	jmp	.label_987
.label_1767:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [r13]
	mov	dword ptr [r14 + 0x10], eax
	jmp	.label_987
.label_1776:
	mov	rax, qword ptr [r13 - 0xa8]
	jmp	.label_1022
.label_1773:
	mov	rax, qword ptr [r13 - 0x68]
	mov	qword ptr [r14 + 0x40], rax
	mov	rax, qword ptr [r13 - 0x38]
	mov	qword ptr [r14 + 0x38], rax
	mov	rax, qword ptr [r13 + 8]
	mov	rcx, rax
	neg	rcx
	cmp	rax, r8
	mov	qword ptr [r14 + 0x28], rcx
	mov	ebp, 1
	je	.label_1028
.label_1136:
	mov	rax, qword ptr [r13 + 0x10]
	mov	qword ptr [r14 + 0x30], rax
	jmp	.label_987
.label_1800:
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x70], rax
.label_1182:
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x80], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	jmp	.label_1043
.label_1801:
	mov	rbx, qword ptr [r13]
	test	rbx, rbx
	mov	qword ptr [rsp + 0x50], rbx
	jns	.label_1050
	mov	qword ptr [rsp + 0x60], rsi
	lea	rcx, [r13 - 0x30]
	mov	rsi, qword ptr [r13 - 0x30]
	test	rsi, rsi
	js	.label_1011
	cmp	rbx, -1
	mov	rbp, rbx
	jne	.label_970
	mov	rsi, qword ptr [rsp + 0x60]
	jmp	.label_973
.label_1789:
	mov	rbx, qword ptr [r13]
	test	rbx, rbx
	mov	qword ptr [rsp + 0x50], rbx
	js	.label_1062
.label_1050:
	lea	rcx, [r13 - 0x30]
.label_1003:
	test	rbx, rbx
	je	.label_973
	mov	qword ptr [rsp + 0x60], rsi
	mov	qword ptr [rsp + 0x88], rdx
	mov	rsi, qword ptr [rcx]
	test	rsi, rsi
	js	.label_1067
	lea	rax, [r8 - 1]
	xor	edx, edx
	div	rbx
	mov	ebp, 1
	cmp	rax, rsi
	jmp	.label_1073
.label_1796:
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x78], rax
.label_1090:
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x80], rax
	jmp	.label_1083
.label_1202:
	test	al, al
	je	.label_1183
	mov	qword ptr [rsp + 0x48], rdi
	xor	edi, edi
	mov	rbx, rsi
	mov	esi, OFFSET FLAT:label_1192
	mov	rbp, rdx
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsi, qword ptr [r13 - 0xd8]
	xor	eax, eax
	mov	rdi, rcx
	call	dbg_printf
	mov	rsi, rbx
	mov	rdx, rbp
	mov	rdi, qword ptr [rsp + 0x48]
	movabs	r11, 0xccccccccccccccc
	movabs	r10, 0xf333333333333334
	mov	r9d, 0xffffffff
	movabs	r8, 0x8000000000000000
.label_1183:
	mov	rax, qword ptr [r13 - 0xd8]
.label_1022:
	mov	qword ptr [r14 + 0x38], rax
	mov	rax, qword ptr [r13 - 0x68]
	mov	qword ptr [r14 + 0x40], rax
.label_1093:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	qword ptr [rcx + 0x10], rax
	movdqu	xmm0, xmmword ptr [r13]
	movdqu	xmmword ptr [rcx], xmm0
	jmp	.label_987
.label_1209:
	inc	qword ptr [r14 + 0xc8]
	xor	eax, eax
	cmp	rdi, 3
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	jl	.label_980
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rsi, rdx, 0x64
	mov	rax, rcx
	sub	rax, rsi
	mov	rcx, rdx
.label_980:
	mov	qword ptr [r14 + 0x48], rcx
	mov	qword ptr [r14 + 0x50], rax
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
	mov	dword ptr [r14 + 0x1c], 2
.label_1212:
	mov	rax, qword ptr [r13 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	movdqu	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 0x10]
	movups	xmm2, xmmword ptr [r13 + 0x20]
	movups	xmmword ptr [rsp + 0x20], xmm2
	movups	xmmword ptr [rsp + 0x10], xmm1
	movdqu	xmmword ptr [rsp], xmm0
	mov	ebp, 1
	mov	esi, 1
	mov	rdi, r14
	call	apply_relative_time
	test	al, al
	movabs	r8, 0x8000000000000000
	mov	r9d, 0xffffffff
	movabs	r10, 0xf333333333333334
	movabs	r11, 0xccccccccccccccc
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	mov	rsi, qword ptr [rsp + 0x60]
	jne	.label_987
	jmp	.label_1028
.label_1199:
	inc	qword ptr [r14 + 0xc8]
	xor	eax, eax
	cmp	rdi, 3
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	jl	.label_1185
	mov	rdi, rdx
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	mov	rbx, rsi
	imul	rsi, rdx, 0x64
	mov	rax, rcx
	sub	rax, rsi
	mov	rsi, rbx
	mov	rcx, rdx
	mov	rdx, rdi
.label_1185:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rcx
	mov	qword ptr [r14 + 0x50], rax
.label_1052:
	pxor	xmm0, xmm0
	mov	rax, qword ptr [rsp + 0xc0]
	movdqu	xmmword ptr [rax], xmm0
	mov	dword ptr [r14 + 0x1c], 2
	jmp	.label_987
.label_1067:
	mov	rax, r8
	cqo	
	idiv	rbx
	mov	ebp, 1
	cmp	rsi, rax
.label_1073:
	mov	rdx, qword ptr [rsp + 0x88]
	jmp	.label_1020
.label_1000:
	mov	qword ptr [rsp + 0x60], rsi
	lea	rcx, [r13 - 0x38]
	mov	rsi, qword ptr [r13 - 0x38]
	test	rsi, rsi
	js	.label_1011
	cmp	rbx, -1
	mov	rbp, rbx
	jne	.label_970
	mov	rsi, qword ptr [rsp + 0x60]
	jmp	.label_973
.label_1091:
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x3c
	imul	rdx, rdx, 0x64
	sub	rcx, rdx
	add	rcx, rax
	mov	al, 1
	jmp	.label_978
.label_1151:
	movabs	rdx, 0xa3d70a3d70a3d70b
	mov	rax, rcx
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 6
	add	rdx, rax
	imul	rax, rdx, 0x3c
	imul	rdx, rdx, 0x64
	sub	rcx, rdx
	add	rcx, rax
	mov	al, 1
	jmp	.label_994
.label_1062:
	mov	qword ptr [rsp + 0x60], rsi
	lea	rcx, [r13 - 0x30]
	mov	rsi, qword ptr [r13 - 0x30]
	test	rsi, rsi
	js	.label_1011
	cmp	rbx, -1
	mov	rbp, rbx
	je	.label_1017
.label_970:
	mov	rax, r8
	mov	qword ptr [rsp + 0x88], rdx
	cqo	
	idiv	rbp
	mov	rdx, qword ptr [rsp + 0x88]
	mov	ebp, 1
	cmp	rax, rsi
	jmp	.label_1020
.label_1011:
	lea	rax, [r8 - 1]
	mov	rbp, rbx
	mov	qword ptr [rsp + 0x88], rdx
	cqo	
	idiv	rbp
	mov	rdx, qword ptr [rsp + 0x88]
	mov	ebp, 1
	cmp	rsi, rax
.label_1020:
	mov	rsi, qword ptr [rsp + 0x60]
	jl	.label_1028
.label_973:
	mov	rax, qword ptr [rsp + 0x50]
	imul	rax, qword ptr [rcx]
.label_1194:
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
.label_1179:
	xor	eax, eax
	mov	qword ptr [rsp + 0x80], rax
.label_1004:
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
.label_1083:
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
.label_1043:
	mov	dword ptr [rsp + 0x44], 0
.label_987:
	sub	rdi, rsi
	neg	rsi
	imul	rax, rsi, 0x38
	lea	rcx, [r13 + rax + 0x38]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	qword ptr [r13 + rax + 0x38], rsi
	mov	rsi, qword ptr [rsp + 0x68]
	mov	qword ptr [r13 + rax + 0x40], rsi
	mov	rsi, qword ptr [rsp + 0x50]
	mov	qword ptr [r13 + rax + 0x48], rsi
	mov	rsi, qword ptr [rsp + 0x80]
	mov	qword ptr [r13 + rax + 0x50], rsi
	mov	rsi, qword ptr [rsp + 0x78]
	mov	qword ptr [r13 + rax + 0x58], rsi
	mov	rsi, qword ptr [rsp + 0x70]
	mov	qword ptr [r13 + rax + 0x60], rsi
	mov	esi, dword ptr [rsp + 0x44]
	mov	dword ptr [r13 + rax + 0x68], esi
	mov	esi, dword ptr [rsp + 0xd4]
	mov	dword ptr [r13 + rax + 0x6c], esi
	movzx	eax, byte ptr [rdx + yyr1]
	movsx	esi, byte ptr [rax + label_1053]
	movsx	edx, word ptr [rsp + rdi*2 + 0xf0]
	add	esi, edx
	cmp	esi, 0x70
	ja	.label_1054
	movsxd	rsi, esi
	mov	rbx, rdi
	movsx	edi, byte ptr [rsi + yycheck]
	cmp	edi, edx
	mov	rdi, rbx
	jne	.label_1054
	movzx	eax, byte ptr [rsi + yytable]
	jmp	.label_1085
	.section	.text
	.align	16
	#Procedure 0x40c5d3
	.globl sub_40c5d3
	.type sub_40c5d3, @function
sub_40c5d3:

	nop	word ptr cs:[rax + rax]
.label_1054:
	movsx	eax, byte ptr [rax + label_1089]
.label_1085:
	mov	word ptr [rsp + rdi*2 + 0xf2], ax
	inc	rdi
	mov	ebp, 2
	cmp	rdi, 0x12
	mov	r13, rcx
	jle	.label_999
	jmp	.label_1028
.label_1105:
	movabs	rsi, 0xfdddddddddddddde
	cmp	rcx, rsi
	jge	.label_1103
.label_1112:
	mov	sil, 1
	jmp	.label_1109
.label_1103:
	xor	esi, esi
.label_1109:
	imul	rcx, rcx, 0x3c
	test	dl, dl
	je	.label_1027
	mov	rdx, rax
	xor	rdx, r8
	cmp	rcx, rdx
	setl	dl
	sub	rcx, rax
	jmp	.label_1115
.label_1027:
	lea	rdx, [r8 - 1]
	sub	rdx, rax
	cmp	rdx, rcx
	setl	dl
	add	rcx, rax
.label_1115:
	or	dl, sil
	sete	al
	mov	rsi, rbx
.label_978:
	mov	ebp, 1
	test	al, al
	je	.label_1028
	lea	rax, [rcx + 0x5a0]
	cmp	rax, 0xb40
	ja	.label_1028
	mov	qword ptr [rsp + 0x60], rsi
	movabs	rsi, 0x3c00000000
	imul	eax, ecx, 0x3c
	mov	dword ptr [r14 + 0x18], eax
	mov	rdx, qword ptr [r13 - 0x70]
	test	rdx, rdx
	js	.label_1133
	mov	rbx, rdi
	lea	rdi, [r8 - 1]
	sub	rdi, rdx
	imul	rcx, rsi
	sar	rcx, 0x20
	cmp	rdi, rcx
	mov	rdi, rbx
	jge	.label_1188
	jmp	.label_1018
.label_1133:
	imul	rcx, rsi
	sar	rcx, 0x20
	mov	rsi, r8
	sub	rsi, rdx
	cmp	rcx, rsi
	jl	.label_1018
.label_1188:
	add	rcx, rdx
	sub	rcx, -0x80000000
	shr	rcx, 0x20
	jne	.label_1018
	add	edx, eax
	mov	dword ptr [r14 + 0x18], edx
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsi, qword ptr [rsp + 0x60]
	jmp	.label_987
.label_1162:
	movabs	rsi, 0xfdddddddddddddde
	cmp	rcx, rsi
	jge	.label_1159
.label_1169:
	mov	sil, 1
	jmp	.label_1164
.label_1159:
	xor	esi, esi
.label_1164:
	imul	rcx, rcx, 0x3c
	test	dl, dl
	je	.label_1167
	mov	rdx, rax
	xor	rdx, r8
	cmp	rcx, rdx
	setl	dl
	sub	rcx, rax
	jmp	.label_1171
.label_1167:
	lea	rdx, [r8 - 1]
	sub	rdx, rax
	cmp	rdx, rcx
	setl	dl
	add	rcx, rax
.label_1171:
	or	dl, sil
	sete	al
	mov	rsi, rbp
.label_994:
	mov	ebp, 1
	test	al, al
	mov	rdx, rbx
	je	.label_1028
	lea	rax, [rcx + 0x5a0]
	cmp	rax, 0xb40
	ja	.label_1028
	imul	eax, ecx, 0x3c
	mov	dword ptr [r14 + 0x18], eax
	jmp	.label_987
.label_1205:
	mov	rbx, rdx
	cmp	rdi, 2
	jg	.label_1191
	mov	rax, qword ptr [r14 + 0xc8]
	test	rax, rax
	jne	.label_1191
	mov	qword ptr [r14 + 0xc8], 1
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	xor	eax, eax
	jmp	.label_980
.label_1044:
	cmp	rdi, 2
	jg	.label_1201
	mov	rax, qword ptr [r14 + 0xc8]
	test	rax, rax
	jne	.label_1201
	mov	qword ptr [r14 + 0xc8], 1
	pshufd	xmm0, xmm0, 0x4e
	movq	rcx, xmm0
	xor	eax, eax
	jmp	.label_1185
.label_1017:
	mov	rsi, qword ptr [rsp + 0x60]
	jmp	.label_973
.label_1191:
	mov	byte ptr [r14 + 0xd8], 1
	movdqu	xmmword ptr [r14 + 0x20], xmm0
	mov	qword ptr [r14 + 0x30], rdi
	jmp	.label_1212
.label_1201:
	mov	byte ptr [r14 + 0xd8], 1
	movdqu	xmmword ptr [r14 + 0x20], xmm0
	jmp	.label_1217
.label_1197:
	test	cl, cl
	lea	rdx, [rsp + 0xa0]
	je	.label_993
.label_1033:
	shr	esi, 8
	cmp	cl, 0x2e
	sete	dil
	lea	rcx, [rsp + 0xa1]
	cmove	rcx, rdx
	mov	byte ptr [rcx], sil
	test	sil, sil
	je	.label_984
	lea	rax, [rsp + 0xa2]
.label_988:
	lea	rbp, [rcx + 1]
	movzx	edx, byte ptr [rax]
	cmp	byte ptr [rax - 1], 0x2e
	mov	sil, 1
	je	.label_982
	mov	esi, edi
.label_982:
	cmovne	rcx, rbp
	mov	byte ptr [rcx], dl
	inc	rax
	test	dl, dl
	mov	edi, esi
	jne	.label_988
	jmp	.label_991
.label_984:
	mov	esi, edi
.label_991:
	test	sil, 1
	lea	rsi, [rsp + 0xa0]
	je	.label_993
	mov	rdi, r14
	call	lookup_zone
	test	rax, rax
	jne	.label_969
.label_993:
	mov	r12d, 0x3f
	cmp	byte ptr [r14 + 0xd9], 0
	je	.label_1001
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1009
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	lea	rsi, [rsp + 0xa0]
	call	dbg_printf
	jmp	.label_1001
	.section	.text
	.align	16
	#Procedure 0x40c8b1
	.globl sub_40c8b1
	.type sub_40c8b1, @function
sub_40c8b1:

	nop	word ptr cs:[rax + rax]
.label_999:
	cmp	eax, 0xc
	jne	.label_1029
	xor	ebp, ebp
.label_1028:
	mov	eax, ebp
	add	rsp, 0x588
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1018:
	add	edx, eax
	mov	dword ptr [r14 + 0x18], edx
	jmp	.label_1028
	.section	.text
	.align	16
	#Procedure 0x40c8e7
	.globl sub_40c8e7
	.type sub_40c8e7, @function
sub_40c8e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c8f0

	.globl posixtime
	.type posixtime, @function
posixtime:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r13d, edx
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	xor	r12d, r12d
	test	r13b, 4
	je	.label_1223
	mov	esi, 0x2e
	mov	rdi, rbx
	call	strchr
	xor	r12d, r12d
	test	rax, rax
	je	.label_1223
	mov	rcx, rax
	sub	rcx, rbx
	sub	rbp, rcx
	cmp	rbp, 3
	mov	r12, rax
	mov	rbp, rcx
	jne	.label_1219
.label_1223:
	lea	rcx, [rbp - 8]
	mov	eax, ebp
	and	eax, 1
	cmp	rcx, 4
	ja	.label_1219
	test	rax, rax
	jne	.label_1219
	xor	r14d, r14d
	test	rbp, rbp
	je	.label_1225
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1222:
	movsx	ecx, byte ptr [rbx + rax]
	add	ecx, -0x30
	cmp	ecx, 0xa
	jae	.label_1219
	inc	rax
	cmp	rax, rbp
	jb	.label_1222
	xor	r14d, r14d
	shr	rbp, 1
	je	.label_1225
	mov	ecx, ebp
	and	ecx, 1
	xor	eax, eax
	cmp	rbp, 1
	je	.label_1226
	mov	rdx, rbp
	sub	rdx, rcx
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1229:
	movsx	esi, byte ptr [rbx + rax*2]
	lea	esi, [rsi + rsi*4]
	movsx	edi, byte ptr [rbx + rax*2 + 1]
	lea	esi, [rdi + rsi*2 - 0x210]
	mov	dword ptr [rsp + rax*4 + 0x10], esi
	movsx	esi, byte ptr [rbx + rax*2 + 2]
	lea	esi, [rsi + rsi*4]
	movsx	edi, byte ptr [rbx + rax*2 + 3]
	lea	esi, [rdi + rsi*2 - 0x210]
	mov	dword ptr [rsp + rax*4 + 0x14], esi
	add	rax, 2
	cmp	rdx, rax
	jne	.label_1229
.label_1226:
	test	rcx, rcx
	je	.label_1236
	movsx	ecx, byte ptr [rbx + rax*2]
	lea	ecx, [rcx + rcx*4]
	movsx	edx, byte ptr [rbx + rax*2 + 1]
	lea	ecx, [rdx + rcx*2 - 0x210]
	mov	dword ptr [rsp + rax*4 + 0x10], ecx
.label_1236:
	mov	r14, rbp
.label_1225:
	mov	r15d, r13d
	and	r15d, 1
	je	.label_1224
	lea	rax, [rsp + 0x10]
	jmp	.label_1230
.label_1224:
	movabs	rax, 0x7fffffffffffffff
	and	rax, r14
	cmp	rax, 4
	je	.label_1237
	cmp	rax, 6
	je	.label_1228
	cmp	rax, 5
	jne	.label_1221
	mov	r10d, dword ptr [rsp + 0x10]
	cmp	r10d, 0x44
	jg	.label_1220
	test	r13b, 8
	jne	.label_1219
	add	r10d, 0x64
	jmp	.label_1220
.label_1237:
	lea	rbp, [rsp + 0x50]
	mov	rdi, rbp
	call	time
	mov	rdi, rbp
	call	localtime
	test	rax, rax
	je	.label_1219
	mov	r10d, dword ptr [rax + 0x14]
	jmp	.label_1220
.label_1228:
	test	r13b, 2
	je	.label_1219
	mov	rax, qword ptr [rsp + 0x10]
	imul	ecx, eax, 0x64
	shr	rax, 0x20
	lea	r10d, [rax + rcx - 0x76c]
.label_1220:
	add	r14, -4
	lea	rax, [rsp + r14*4 + 0x10]
	mov	r14d, 4
.label_1230:
	mov	edi, dword ptr [rax]
	mov	r9d, dword ptr [rax + 4]
	mov	r8d, dword ptr [rax + 8]
	mov	esi, dword ptr [rax + 0xc]
	test	r15d, r15d
	je	.label_1227
	movabs	rcx, 0x7fffffffffffffff
	and	r14, rcx
	cmp	r14, 4
	je	.label_1231
	cmp	r14, 6
	je	.label_1234
	cmp	r14, 5
	jne	.label_1221
	mov	r10d, dword ptr [rax + 0x10]
	cmp	r10d, 0x44
	jg	.label_1227
	test	r13b, 8
	jne	.label_1219
	add	r10d, 0x64
	jmp	.label_1227
.label_1231:
	mov	dword ptr [rsp + 8], r9d
	mov	r15d, r8d
	mov	r14d, edi
	mov	ebp, esi
	lea	rdi, [rsp + 0x50]
	call	time
	lea	rdi, [rsp + 0x50]
	call	localtime
	test	rax, rax
	je	.label_1219
	mov	r10d, dword ptr [rax + 0x14]
	mov	esi, ebp
	mov	edi, r14d
	mov	r8d, r15d
	mov	r9d, dword ptr [rsp + 8]
	jmp	.label_1227
.label_1234:
	test	r13b, 2
	je	.label_1219
	imul	ecx, dword ptr [rax + 0x10], 0x64
	mov	eax, dword ptr [rax + 0x14]
	lea	r10d, [rax + rcx - 0x76c]
.label_1227:
	xor	eax, eax
	test	r12, r12
	je	.label_1233
	movsx	eax, byte ptr [r12 + 1]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_1219
	movsx	ecx, byte ptr [r12 + 2]
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_1219
	lea	eax, [rax + rax*4]
	lea	eax, [rcx + rax*2 - 0x30]
.label_1233:
	mov	dword ptr [rsp + 0xc], r13d
	dec	edi
	mov	dword ptr [rsp + 8], eax
	mov	dword ptr [rsp + 0x10], eax
	mov	dword ptr [rsp + 0x14], esi
	mov	dword ptr [rsp + 0x18], r8d
	mov	dword ptr [rsp + 0x1c], r9d
	mov	dword ptr [rsp + 0x20], edi
	mov	dword ptr [rsp + 0x24], r10d
	mov	dword ptr [rsp + 0x28], 0xffffffff
	mov	dword ptr [rsp + 0x30], 0xffffffff
	mov	r15d, edi
	lea	rdi, [rsp + 0x10]
	mov	ebp, esi
	mov	r12d, r8d
	mov	r14d, r9d
	mov	r13d, r10d
	call	mktime
	mov	rcx, rax
	cmp	dword ptr [rsp + 0x28], 0
	js	.label_1219
	xor	r13d, dword ptr [rsp + 0x24]
	xor	r15d, dword ptr [rsp + 0x20]
	xor	r14d, dword ptr [rsp + 0x1c]
	or	r14d, r13d
	xor	r12d, dword ptr [rsp + 0x18]
	or	r12d, r14d
	xor	ebp, dword ptr [rsp + 0x14]
	or	ebp, r12d
	or	ebp, r15d
	mov	eax, dword ptr [rsp + 0x10]
	mov	edx, dword ptr [rsp + 8]
	xor	eax, edx
	or	eax, ebp
	je	.label_1235
	cmp	edx, 0x3c
	jne	.label_1219
	lea	rbp, [rsp + 0x50]
	mov	edx, 0x10
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rcx
	call	__stpcpy_chk
	mov	byte ptr [rax], 0
	mov	word ptr [rax - 2], 0x3935
	lea	rdi, [rsp + 0x70]
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0xc]
	call	posixtime
	mov	rcx, rbx
	test	al, al
	je	.label_1219
.label_1235:
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [rax], rcx
	mov	al, 1
	jmp	.label_1232
.label_1219:
	xor	eax, eax
.label_1232:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1221:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40cc7e
	.globl sub_40cc7e
	.type sub_40cc7e, @function
sub_40cc7e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40cc80

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rsp + 0x100]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xa8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x90], eax
	mov	dword ptr [rsp + 0x18], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x8c], ebx
	mov	r10b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_1320:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_1318
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_1322]
.label_1824:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_1327
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_782
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1825:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_1341
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_1341
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1352:
	cmp	r14, r11
	jae	.label_1350
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_1350:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_1352
.label_1341:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x48], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 7]
	mov	r9d, dword ptr [rsp + 0x50]
	jmp	.label_1244
.label_1817:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_1244
.label_1820:
	mov	al, 1
.label_1818:
	mov	r12b, 1
.label_1821:
	test	r12b, 1
	mov	cl, 1
	je	.label_1249
	mov	ecx, eax
.label_1249:
	mov	al, cl
.label_1819:
	test	r12b, 1
	jne	.label_1251
	test	r11, r11
	je	.label_1252
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_1252:
	mov	r14d, 1
	jmp	.label_1255
.label_1251:
	xor	r14d, r14d
.label_1255:
	mov	ecx, OFFSET FLAT:label_782
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_1244
.label_1822:
	test	r12b, 1
	jne	.label_1270
	test	r11, r11
	je	.label_1274
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_1274:
	mov	r14d, 1
	jmp	.label_1279
.label_1823:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_781
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_1244
.label_1270:
	xor	r14d, r14d
.label_1279:
	mov	eax, OFFSET FLAT:label_781
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_1244:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2a]
	mov	edx, r15d
	mov	byte ptr [rsp + 0x17], cl
	and	dl, cl
	cmp	qword ptr [rsp + 0x40], 0
	setne	cl
	mov	ebx, ecx
	mov	byte ptr [rsp + 0x2e], dl
	and	bl, dl
	mov	byte ptr [rsp + 0x2f], bl
	mov	edx, esi
	and	dl, 1
	sete	bl
	and	al, dl
	mov	byte ptr [rsp + 0x2b], al
	mov	byte ptr [rsp + 6], dl
	and	r12b, dl
	mov	byte ptr [rsp + 0x2d], r12b
	or	bl, r15b
	mov	byte ptr [rsp + 0x1f], bl
	mov	byte ptr [rsp + 0x2c], r13b
	mov	qword ptr [rsp + 0xb0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x29], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_1300
	.section	.text
	.align	16
	#Procedure 0x40cf6d
	.globl sub_40cf6d
	.type sub_40cf6d, @function
sub_40cf6d:

	nop	dword ptr [rax]
.label_1254:
	inc	rsi
.label_1300:
	cmp	rbp, -1
	je	.label_1335
	cmp	rsi, rbp
	jne	.label_1336
	jmp	.label_1337
	.section	.text
	.align	16
	#Procedure 0x40cf83
	.globl sub_40cf83
	.type sub_40cf83, @function
sub_40cf83:

	nop	word ptr cs:[rax + rax]
.label_1335:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_1343
.label_1336:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_1345
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_1257
	cmp	rbp, -1
	jne	.label_1257
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x38]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_1257:
	cmp	rbx, rbp
	jbe	.label_1356
.label_1345:
	xor	r8d, r8d
.label_1293:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_1349
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_1240]
.label_1836:
	test	rsi, rsi
	jne	.label_1245
	jmp	.label_1248
	.section	.text
	.align	16
	#Procedure 0x40d025
	.globl sub_40d025
	.type sub_40d025, @function
sub_40d025:

	nop	word ptr cs:[rax + rax]
.label_1356:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_1260
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_1293
	jmp	.label_1278
.label_1260:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1293
.label_1840:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_1288
	test	rsi, rsi
	jne	.label_1290
	cmp	rbp, 1
	je	.label_1248
	xor	r13d, r13d
	jmp	.label_1243
.label_1829:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_1297
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1299
	cmp	r12d, 2
	jne	.label_1304
	mov	eax, r9d
	and	al, 1
	jne	.label_1304
	cmp	r14, r11
	jae	.label_1308
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1308:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1311
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_1311:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1330
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1330:
	add	r14, 3
	mov	r9b, 1
.label_1304:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_1321
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_1321:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_1324
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_1324
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_1324
	cmp	r14, r11
	jae	.label_1287
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_1287:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_1344
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_1344:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_1243
.label_1830:
	mov	bl, 0x62
	jmp	.label_1347
.label_1831:
	mov	cl, 0x74
	jmp	.label_1268
.label_1832:
	mov	bl, 0x76
	jmp	.label_1347
.label_1833:
	mov	bl, 0x66
	jmp	.label_1347
.label_1834:
	mov	cl, 0x72
	jmp	.label_1268
.label_1837:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_1351
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1239
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_1355
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1355:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1246
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_1246:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1250
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1250:
	add	r14, 3
	xor	r9d, r9d
.label_1351:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_1243
.label_1838:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_1258
	cmp	r12d, 2
	jne	.label_1245
	cmp	byte ptr [rsp + 6], 0
	je	.label_1245
	jmp	.label_1239
.label_1839:
	cmp	r12d, 2
	jne	.label_1271
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1239
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_1261
.label_1349:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_1284
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	r12d, 1
.label_1264:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_1303
	test	r8b, r8b
	je	.label_1303
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_1243
.label_1288:
	test	rsi, rsi
	jne	.label_1265
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_1265
.label_1248:
	mov	dl, 1
.label_1835:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_1239
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_1243:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_1331
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_1267
	jmp	.label_1334
	.section	.text
	.align	16
	#Procedure 0x40d374
	.globl sub_40d374
	.type sub_40d374, @function
sub_40d374:

	nop	word ptr cs:[rax + rax]
.label_1331:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_1334
.label_1267:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_1339
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_1261
	jmp	.label_1275
	.section	.text
	.align	16
	#Procedure 0x40d3bd
	.globl sub_40d3bd
	.type sub_40d3bd, @function
sub_40d3bd:

	nop	dword ptr [rax]
.label_1334:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_1275
	jmp	.label_1261
.label_1339:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_1275
.label_1297:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_1254
	xor	r15d, r15d
	jmp	.label_1245
.label_1271:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_1268
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_1261
.label_1268:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_1239
.label_1347:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_1243
	nop	word ptr cs:[rax + rax]
.label_1275:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1299
	cmp	r12d, 2
	jne	.label_1253
	mov	eax, r9d
	and	al, 1
	jne	.label_1253
	cmp	r14, r11
	jae	.label_1346
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1346:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1262
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_1262:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1272
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1272:
	add	r14, 3
	mov	r9b, 1
.label_1253:
	cmp	r14, r11
	jae	.label_1276
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_1276:
	inc	r14
	jmp	.label_1282
.label_1284:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_1285
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_1285:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_1353:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1309
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_1313
	cmp	rbp, -2
	je	.label_1317
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_1305
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_1295:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_1280
	bt	rsi, rdx
	jb	.label_1333
.label_1280:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_1295
.label_1305:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_1298
	xor	r13d, r13d
.label_1298:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_1353
	jmp	.label_1264
.label_1324:
	xor	r13d, r13d
	jmp	.label_1243
.label_1265:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_1243
.label_1258:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_1245
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_1245
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_1245
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_1289
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_1273
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1301
	cmp	r14, r11
	jae	.label_1307
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_1307:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1338
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_1338:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1259
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_1259:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_1269
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_1269:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_1243
.label_1245:
	xor	eax, eax
.label_1290:
	xor	r13d, r13d
	jmp	.label_1243
.label_1303:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1283
	.section	.text
	.align	16
	#Procedure 0x40d6a2
	.globl sub_40d6a2
	.type sub_40d6a2, @function
sub_40d6a2:

	nop	word ptr cs:[rax + rax]
.label_1354:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_1283:
	test	r8b, r8b
	je	.label_1291
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_1292
	cmp	r14, r11
	jae	.label_1294
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_1294:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_1292
	.section	.text
	.align	16
	#Procedure 0x40d6ec
	.globl sub_40d6ec
	.type sub_40d6ec, @function
sub_40d6ec:

	nop	dword ptr [rax]
.label_1291:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1278
	cmp	r12d, 2
	jne	.label_1241
	mov	eax, r9d
	and	al, 1
	jne	.label_1241
	cmp	r14, r11
	jae	.label_1312
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1312:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1315
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_1315:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1319
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_1319:
	add	r14, 3
	mov	r9b, 1
.label_1241:
	cmp	r14, r11
	jae	.label_1342
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_1342:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1328
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_1328:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1332
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_1332:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_1292:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_1261
	test	r9b, 1
	je	.label_1256
	mov	ebx, eax
	and	bl, 1
	jne	.label_1256
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_1357
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_1357:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_1325
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_1325:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_1256:
	cmp	r14, r11
	jae	.label_1354
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_1354
	.section	.text
	.align	16
	#Procedure 0x40d7f3
	.globl sub_40d7f3
	.type sub_40d7f3, @function
sub_40d7f3:

	nop	word ptr cs:[rax + rax]
.label_1261:
	test	r9b, 1
	je	.label_1238
	and	al, 1
	jne	.label_1238
	cmp	r14, r11
	jae	.label_1242
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1242:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1348
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1348:
	add	r14, 2
	xor	r9d, r9d
.label_1238:
	mov	ebx, r15d
.label_1282:
	cmp	r14, r11
	jae	.label_1323
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_1323:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_1254
.label_1313:
	xor	r13d, r13d
.label_1309:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_1264
.label_1317:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_1277
	mov	rsi, qword ptr [rsp + 0x58]
.label_1314:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_1281
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_1314
	xor	r13d, r13d
	jmp	.label_1264
.label_1277:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_1264
.label_1281:
	xor	r13d, r13d
	jmp	.label_1264
.label_1289:
	xor	r13d, r13d
	jmp	.label_1243
.label_1273:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_1243
	.section	.text
	.align	16
	#Procedure 0x40d8c8
	.globl sub_40d8c8
	.type sub_40d8c8, @function
sub_40d8c8:

	nop	dword ptr [rax + rax]
.label_1337:
	mov	rcx, rsi
.label_1343:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_1296
	or	al, dl
	je	.label_1302
.label_1296:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_1306
	or	al, dl
	jne	.label_1306
	test	r10b, 1
	jne	.label_1316
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_1306
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_1320
.label_1306:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_1326
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_1329
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_1329
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_1340:
	cmp	r14, r11
	jae	.label_1310
	mov	byte ptr [rcx + r14], al
.label_1310:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_1340
	jmp	.label_1329
.label_1299:
	mov	qword ptr [rsp + 0x20], rbp
.label_1278:
	mov	rdx, rdi
	jmp	.label_1247
.label_1239:
	mov	qword ptr [rsp + 0x20], rbp
.label_1333:
	mov	rdx, rdi
	mov	eax, 2
.label_1286:
	mov	qword ptr [rsp + 0x38], rax
.label_1247:
	mov	r9d, dword ptr [rsp + 0x18]
	cmp	byte ptr [rsp + 0x17], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r11
	mov	rcx, qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_1263:
	mov	r14, rax
.label_1266:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1302:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_1247
.label_1316:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_1263
.label_1326:
	mov	rcx, qword ptr [rsp + 8]
.label_1329:
	cmp	r14, r11
	jae	.label_1266
	mov	byte ptr [rcx + r14], 0
	jmp	.label_1266
.label_1301:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_1286
.label_1318:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40da87
	.globl sub_40da87
	.type sub_40da87, @function
sub_40da87:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da90

	.globl settime
	.type settime, @function
settime:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rdi
	xor	ebp, ebp
	xor	edi, edi
	mov	rsi, r14
	call	clock_settime
	mov	ebx, eax
	test	ebx, ebx
	je	.label_1358
	call	__errno_location
	cmp	dword ptr [rax], 1
	mov	ebp, ebx
	je	.label_1358
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp], rax
	movabs	rax, 0x20c49ba5e353f7cf
	imul	qword ptr [r14 + 8]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 8], rdx
	lea	rdi, [rsp]
	xor	esi, esi
	call	settimeofday
	mov	ebp, eax
.label_1358:
	mov	eax, ebp
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40daf9
	.globl sub_40daf9
	.type sub_40daf9, @function
sub_40daf9:

	nop	dword ptr [rax]
.label_1360:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1359
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1359:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40db34
	.globl sub_40db34
	.type sub_40db34, @function
sub_40db34:

	nop	
	.section	.text
	.align	16
	#Procedure 0x40db36

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
	jne	.label_1361
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1361
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1360
.label_1361:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	16
	#Procedure 0x40db70

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r15 + 0x30]
	mov	r14b, 1
	test	rbx, rbx
	je	.label_1365
	cmp	r15, rbx
	ja	.label_1363
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_1365
.label_1363:
	mov	ebp, OFFSET FLAT:label_94
	cmp	byte ptr [rbx], 0
	je	.label_1367
	lea	rbp, [r12 + 9]
	jmp	.label_1371
.label_1362:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	cmovne	r12, rax
.label_1371:
	lea	r13, [r12 + 9]
.label_1373:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_1367
	cmp	byte ptr [rbp], 0
	jne	.label_1364
	cmp	rbp, r13
	jne	.label_1369
	cmp	byte ptr [r12 + 8], 0
	je	.label_1370
.label_1364:
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rbp + rax + 1]
	cmp	byte ptr [rbp + rax + 1], 0
	mov	rbp, rcx
	jne	.label_1373
	jmp	.label_1362
.label_1370:
	mov	rbp, r13
.label_1369:
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbp
	sub	rcx, r13
	mov	rsi, rcx
	not	rsi
	cmp	rdx, rsi
	jbe	.label_1366
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_1368:
	xor	r14d, r14d
	jmp	.label_1365
.label_1366:
	add	rcx, rdx
	cmp	rcx, 0x76
	ja	.label_1374
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	jmp	.label_1367
.label_1374:
	add	rax, 0x12
	and	rax, 0xfffffffffffffff8
	mov	r13, rdx
	cmp	rdx, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	test	rax, rax
	je	.label_1372
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	mov	rbp, rax
	add	rbp, 9
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r13
	mov	rbx, rax
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_1367:
	mov	qword ptr [r15 + 0x30], rbp
.label_1365:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1372:
	mov	qword ptr [r12], 0
	jmp	.label_1368
	.section	.text
	.align	16
	#Procedure 0x40dcd5
	.globl sub_40dcd5
	.type sub_40dcd5, @function
sub_40dcd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dce0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_94
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1375
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40dd05
	.globl sub_40dd05
	.type sub_40dd05, @function
sub_40dd05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dd10
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
	.align	16
	#Procedure 0x40ddd1
	.globl sub_40ddd1
	.type sub_40ddd1, @function
sub_40ddd1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dde0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	rbp, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1376
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_1381
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_1378:
	test	r15, r15
	je	.label_1380
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_1377
.label_1380:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1382
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_1379
	.section	.text
	.align	16
	#Procedure 0x40de72
	.globl sub_40de72
	.type sub_40de72, @function
sub_40de72:

	nop	word ptr cs:[rax + rax]
.label_1377:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1383
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_1379:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_1378
.label_1381:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1384
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1384:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	.section	.text
	.align	16
	#Procedure 0x40df01
	.globl sub_40df01
	.type sub_40df01, @function
sub_40df01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40df10

	.globl debug_print_current_time
	.type debug_print_current_time, @function
debug_print_current_time:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x70
	mov	r15, rsi
	mov	rbx, rdi
	cmp	byte ptr [r15 + 0xd9], 0
	jne	.label_1389
.label_1400:
	add	rsp, 0x70
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_1389:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_824
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rcx
	mov	rsi, rbx
	call	dbg_printf
	cmp	qword ptr [r15 + 0xa8], 0
	je	.label_1391
	cmp	byte ptr [r15 + 0xda], 0
	jne	.label_1407
	mov	rdi, qword ptr [rip + stderr]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	r8, qword ptr [r15 + 0x38]
	mov	r9, qword ptr [r15 + 0x40]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1398
	xor	eax, eax
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xda], 1
	mov	r12b, 1
	jmp	.label_1391
.label_1407:
	xor	r12d, r12d
.label_1391:
	mov	rax, qword ptr [r15 + 0xd8]
	mov	rcx, rax
	shr	rcx, 0x38
	cmp	al, cl
	je	.label_1394
	test	r12b, r12b
	je	.label_1404
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_1404:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1402
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15 + 0x28]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rax, qword ptr [r15 + 0xd8]
	mov	byte ptr [r15 + 0xdf], al
	mov	r12b, 1
.label_1394:
	cmp	qword ptr [r15 + 0xc8], 0
	je	.label_1388
	shr	rax, 0x28
	test	al, al
	jne	.label_1388
	mov	r9, qword ptr [r15 + 0x58]
	mov	rdi, qword ptr [rip + stderr]
	xor	r12b, 1
	movzx	eax, r12b
	lea	rdx, qword ptr [rax + label_1405]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	r8, qword ptr [r15 + 0x50]
	mov	esi, 1
	xor	eax, eax
	call	__fprintf_chk
	mov	rcx, qword ptr [r15 + 0x60]
	test	rcx, rcx
	je	.label_1403
	mov	rdi, qword ptr [rip + stderr]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1397
	xor	eax, eax
	call	__fprintf_chk
.label_1403:
	cmp	dword ptr [r15 + 0x1c], 1
	jne	.label_1411
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_169
	mov	esi, 2
	mov	edx, 1
	call	fwrite
.label_1411:
	mov	byte ptr [r15 + 0xdd], 1
	mov	r12b, 1
.label_1388:
	cmp	qword ptr [r15 + 0xb0], 0
	je	.label_1393
	cmp	byte ptr [r15 + 0xdb], 0
	jne	.label_1393
	test	r12b, r12b
	je	.label_1399
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_1399:
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1401
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsp]
	mov	rdi, r15
	call	str_days
	mov	rcx, rax
	mov	r8, qword ptr [r15 + 8]
	mov	r9d, dword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, rbx
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xdb], 1
	mov	r12b, 1
.label_1393:
	cmp	qword ptr [r15 + 0xb8], 0
	je	.label_1392
	cmp	byte ptr [r15 + 0xdc], 0
	jne	.label_1392
	mov	rdi, qword ptr [rip + stderr]
	xor	r12b, 1
	movzx	eax, r12b
	lea	rdx, qword ptr [rax + label_1395]
	cmp	qword ptr [r15 + 0xc0], 0
	mov	ecx, dword ptr [r15 + 0x14]
	mov	eax, OFFSET FLAT:label_1396
	mov	r8d, OFFSET FLAT:label_94
	cmovne	r8, rax
	mov	esi, 1
	xor	eax, eax
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xdc], 1
	mov	r12b, 1
.label_1392:
	cmp	qword ptr [r15 + 0xd0], 0
	je	.label_1387
	cmp	byte ptr [r15 + 0xde], 0
	jne	.label_1387
	mov	r14, qword ptr [rip + stderr]
	xor	r12b, 1
	movsxd	r13, dword ptr [r15 + 0x18]
	mov	eax, r13d
	shr	eax, 0x1f
	imul	rbx, r13, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, r13d
	mov	ecx, ebx
	shr	ecx, 0x1f
	sar	ebx, 0xb
	add	ebx, ecx
	mov	r9d, ebx
	neg	r9d
	cmp	r13, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebx
	lea	rdi, [rsp]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_66
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebx, 0xe10
	mov	esi, r13d
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	r13d, edx
	movzx	edx, r12b
	lea	rdx, qword ptr [rdx + label_1409]
	je	.label_1410
	cdqe	
	lea	rax, [rsp + rax]
	movsxd	r9, ecx
	imul	rsi, r9, -0x77777777
	shr	rsi, 0x20
	add	esi, r9d
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 5
	add	esi, edi
	imul	r8d, esi, 0x3c
	imul	rbx, r9, 0x1b4e81b5
	mov	r10, rbx
	shr	r10, 0x3f
	shr	rbx, 0x26
	movsxd	rsi, esi
	imul	rcx, rsi, 0x66666667
	mov	rdi, rcx
	shr	rdi, 0x3f
	sar	rcx, 0x22
	add	ecx, edi
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	sub	esi, ecx
	add	esi, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbx + r10 + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], sil
	jne	.label_1390
	add	rax, 3
	jmp	.label_1385
.label_1390:
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rsi, rcx
	shr	rsi, 0x3f
	sar	rcx, 0x22
	lea	edi, [rcx + rsi]
	lea	ecx, [rcx + rsi + 0x30]
	mov	byte ptr [rax + 4], cl
	add	edi, edi
	lea	ecx, [rdi + rdi*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
.label_1385:
	mov	byte ptr [rax], 0
.label_1410:
	lea	rcx, [rsp]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	mov	byte ptr [r15 + 0xde], 1
	mov	r12b, 1
.label_1387:
	cmp	byte ptr [r15 + 0xa0], 0
	je	.label_1406
	mov	r14, qword ptr [r15 + 0x58]
	test	r12b, r12b
	je	.label_1408
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0x20
	call	fputc
.label_1408:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1386
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rdx, rcx
	mov	rcx, r14
	call	__fprintf_chk
.label_1406:
	mov	rsi, qword ptr [rip + stderr]
	mov	edi, 0xa
	call	fputc
	jmp	.label_1400
	.section	.text
	.align	16
	#Procedure 0x40e347
	.globl sub_40e347
	.type sub_40e347, @function
sub_40e347:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e350

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
	je	.label_1412
	cmp	r15, -2
	jb	.label_1412
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1412
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1412:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e3a6
	.globl sub_40e3a6
	.type sub_40e3a6, @function
sub_40e3a6:

	nop	word ptr cs:[rax + rax]
.label_1416:
	mov	byte ptr [r14], 0
	xor	eax, eax
	jmp	.label_1413
	.section	.text
	.align	16
	#Procedure 0x40e3b8

	.globl str_days
	.type str_days, @function
str_days:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0xe0], 0
	je	.label_1416
	mov	r9, qword ptr [rbx + 8]
	lea	rax, [r9 + 1]
	cmp	rax, 0xd
	ja	.label_1418
	imul	rax, rax, 0xb
	lea	r9, qword ptr [rax + str_days.ordinal_values]
	mov	esi, 0x64
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_522
	jmp	.label_1417
.label_1418:
	mov	esi, 0x64
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_1419
.label_1417:
	xor	eax, eax
	mov	rdi, r14
	call	__snprintf_chk
.label_1413:
	movsxd	rcx, dword ptr [rbx + 0x10]
	test	rcx, rcx
	js	.label_1415
	cmp	eax, 0x63
	ja	.label_1415
	cmp	ecx, 6
	jg	.label_1415
	movsxd	rdi, eax
	add	rdi, r14
	mov	edx, 0x64
	sub	edx, eax
	movsxd	rsi, edx
	mov	r8d, OFFSET FLAT:label_1414
	cmp	eax, 1
	adc	r8, 0
	lea	r9, qword ptr [(rcx * 4) + str_days.days_values]
	mov	edx, 1
	mov	rcx, -1
	xor	eax, eax
	call	__snprintf_chk
.label_1415:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e474
	.globl sub_40e474
	.type sub_40e474, @function
sub_40e474:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e480
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
	.align	16
	#Procedure 0x40e499
	.globl sub_40e499
	.type sub_40e499, @function
sub_40e499:

	nop	dword ptr [rax]
.label_1420:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40e4a5
	.globl sub_40e4a5
	.type sub_40e4a5, @function
sub_40e4a5:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e4ad
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
	je	.label_1420
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
	.section	.text
	.align	16
	#Procedure 0x40e510

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1422
	cmp	byte ptr [rax], 0x43
	jne	.label_1424
	cmp	byte ptr [rax + 1], 0
	je	.label_1421
.label_1424:
	mov	esi, OFFSET FLAT:label_1423
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1422
.label_1421:
	xor	ebx, ebx
.label_1422:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e541
	.globl sub_40e541
	.type sub_40e541, @function
sub_40e541:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e550

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_1425
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_1425:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e5b8
	.globl sub_40e5b8
	.type sub_40e5b8, @function
sub_40e5b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e5c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1426
	test	rbx, rbx
	jne	.label_1426
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1426:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1428
	test	rax, rax
	je	.label_1427
.label_1428:
	pop	rbx
	ret	
.label_1427:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40e5f0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1429
	test	rax, rax
	je	.label_1430
.label_1429:
	pop	rbx
	ret	
.label_1430:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40e60a
	.globl sub_40e60a
	.type sub_40e60a, @function
sub_40e60a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e610

	.globl debug_strfdatetime
	.type debug_strfdatetime, @function
debug_strfdatetime:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r15, rdx
	mov	rbx, rsi
	mov	rax, rdi
	mov	esi, 0x64
	mov	edx, OFFSET FLAT:label_53
	xor	r8d, r8d
	xor	r9d, r9d
	mov	rdi, r15
	mov	rcx, rax
	call	nstrftime
	test	rbx, rbx
	je	.label_1431
	cmp	eax, 0x63
	jg	.label_1431
	cmp	qword ptr [rbx + 0xd0], 0
	je	.label_1431
	movsxd	rbx, dword ptr [rbx + 0x18]
	cdqe	
	lea	r14, [r15 + rax]
	mov	r12d, 0x64
	sub	r12d, eax
	mov	eax, ebx
	shr	eax, 0x1f
	imul	rbp, rbx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, ebx
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	mov	r9d, ebp
	neg	r9d
	cmp	rbx, -0xe10
	lea	r8d, [rax + rax + 0x2b]
	cmovg	r9d, ebp
	lea	rdi, [rsp]
	mov	esi, 1
	mov	edx, 0x1b
	mov	ecx, OFFSET FLAT:label_66
	xor	eax, eax
	call	__sprintf_chk
	imul	edx, ebp, 0xe10
	mov	esi, ebx
	sub	esi, edx
	mov	ecx, esi
	neg	ecx
	cmovl	ecx, esi
	cmp	ebx, edx
	movsxd	rsi, r12d
	je	.label_1435
	cdqe	
	lea	rax, [rsp + rax]
	movsxd	r9, ecx
	imul	rdx, r9, -0x77777777
	shr	rdx, 0x20
	add	edx, r9d
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	r8d, edx, 0x3c
	imul	rbp, r9, 0x1b4e81b5
	mov	rbx, rbp
	shr	rbx, 0x3f
	shr	rbp, 0x26
	movsxd	rdx, edx
	imul	rdi, rdx, 0x66666667
	mov	rcx, rdi
	shr	rcx, 0x3f
	sar	rdi, 0x22
	add	edi, ecx
	add	edi, edi
	lea	ecx, [rdi + rdi*4]
	sub	edx, ecx
	add	edx, 0x30
	sub	r9d, r8d
	mov	byte ptr [rax], 0x3a
	lea	ecx, [rbp + rbx + 0x30]
	mov	byte ptr [rax + 1], cl
	mov	byte ptr [rax + 2], dl
	je	.label_1434
	mov	byte ptr [rax + 3], 0x3a
	movsxd	rcx, r9d
	imul	rcx, rcx, 0x66666667
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x22
	lea	edi, [rcx + rdx]
	lea	ecx, [rcx + rdx + 0x30]
	mov	byte ptr [rax + 4], cl
	add	edi, edi
	lea	ecx, [rdi + rdi*4]
	neg	ecx
	lea	ecx, [r9 + rcx + 0x30]
	mov	byte ptr [rax + 5], cl
	add	rax, 6
	jmp	.label_1432
.label_1434:
	add	rax, 3
.label_1432:
	mov	byte ptr [rax], 0
.label_1435:
	lea	r9, [rsp]
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_1433
	xor	eax, eax
	mov	rdi, r14
	call	__snprintf_chk
.label_1431:
	mov	rax, r15
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e7b4
	.globl sub_40e7b4
	.type sub_40e7b4, @function
sub_40e7b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e7c0
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
	je	.label_1436
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
.label_1436:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40e828
	.globl sub_40e828
	.type sub_40e828, @function
sub_40e828:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e830
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_508]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_509]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_510]
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
	.align	16
	#Procedure 0x40e884
	.globl sub_40e884
	.type sub_40e884, @function
sub_40e884:

	nop	word ptr cs:[rax + rax]
.label_1437:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40e895
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_508]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_509]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_510]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1437
	test	rsi, rsi
	je	.label_1437
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e900

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
	je	.label_1438
	mov	edx, OFFSET FLAT:label_1448
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1454
.label_1438:
	mov	edx, OFFSET FLAT:label_1455
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1454:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1441
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
	mov	esi, OFFSET FLAT:label_1456
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1443
	jmp	qword ptr [(r12 * 8) + label_1444]
.label_1490:
	add	rsp, 8
	jmp	.label_1442
.label_1443:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1451
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
	jmp	.label_1442
.label_1491:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1439
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
.label_1492:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1452
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
.label_1493:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1449
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
.label_1494:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1446
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
	jmp	.label_1442
.label_1495:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1445
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
	jmp	.label_1442
.label_1496:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1447
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
	jmp	.label_1442
.label_1497:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1450
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
	jmp	.label_1442
.label_1499:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1453
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
	jmp	.label_1442
.label_1498:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1440
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
.label_1442:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ec58
	.globl sub_40ec58
	.type sub_40ec58, @function
sub_40ec58:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ecc5
	.globl sub_40ecc5
	.type sub_40ecc5, @function
sub_40ecc5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ecd2
	.globl sub_40ecd2
	.type sub_40ecd2, @function
sub_40ecd2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ecf6
	.globl sub_40ecf6
	.type sub_40ecf6, @function
sub_40ecf6:

	nop	word ptr cs:[rax + rax]

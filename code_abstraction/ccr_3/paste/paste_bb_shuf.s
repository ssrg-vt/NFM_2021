	.section	.text
	.align	32
	#Procedure 0x401469
	.globl sub_401469
	.type sub_401469, @function
sub_401469:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40146a
	.globl sub_40146a
	.type sub_40146a, @function
sub_40146a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4014a2
	.globl sub_4014a2
	.type sub_4014a2, @function
sub_4014a2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4014ea
	.globl sub_4014ea
	.type sub_4014ea, @function
sub_4014ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40150c
	.globl sub_40150c
	.type sub_40150c, @function
sub_40150c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40151d
	.globl sub_40151d
	.type sub_40151d, @function
sub_40151d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401536
	.globl sub_401536
	.type sub_401536, @function
sub_401536:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401540

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_12
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_10
	cmp	dword ptr [rbp], 0x20
	jne	.label_10
.label_12:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_15
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_9:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_11
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_10:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_9
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_14
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_15:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x401600

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_16
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_16:
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
	#Procedure 0x401683
	.globl sub_401683
	.type sub_401683, @function
sub_401683:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401690

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_26
	call	setlocale
	mov	edi, OFFSET FLAT:label_30
	mov	esi, OFFSET FLAT:label_31
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_30
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + have_read_stdin],  0
	mov	byte ptr [rip + serial_merge],  0
	mov	ebx, OFFSET FLAT:label_40
	mov	r15d, OFFSET FLAT:label_41
	jmp	.label_29
.label_23:
	mov	byte ptr [rip + line_delim],  1
	nop	dword ptr [rax + rax]
.label_29:
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x63
	jle	.label_21
	cmp	eax, 0x7a
	je	.label_23
	cmp	eax, 0x73
	je	.label_25
	cmp	eax, 0x64
	jne	.label_27
	mov	rbx, qword ptr [rip + optarg]
	cmp	byte ptr [rbx], 0
	cmove	rbx, r15
	jmp	.label_29
.label_25:
	mov	byte ptr [rip + serial_merge],  1
	jmp	.label_29
.label_21:
	cmp	eax, -1
	jne	.label_33
	movsxd	rax, dword ptr [rip + optind]
	sub	ebp, eax
	jne	.label_34
	mov	qword ptr [r14 + (rax * 8)], OFFSET FLAT:label_24
	mov	ebp, 1
.label_34:
	mov	rdi, rbx
	call	xstrdup
	mov	qword ptr [rip + delims],  rax
	mov	dl, byte ptr [rbx]
	test	dl, dl
	je	.label_45
	mov	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_19:
	lea	rsi, [rcx + 1]
	cmp	dl, 0x5c
	jne	.label_42
	movzx	edx, byte ptr [rsi]
	movsx	esi, dl
	lea	edi, [rsi - 0x30]
	cmp	edi, 0x46
	ja	.label_22
	jmp	qword ptr [(rdi * 8) + label_44]
.label_493:
	mov	byte ptr [rax], 0
	jmp	.label_28
	.section	.text
	.align	32
	#Procedure 0x4017b3
	.globl sub_4017b3
	.type sub_4017b3, @function
sub_4017b3:

	nop	word ptr cs:[rax + rax]
.label_42:
	mov	byte ptr [rax], dl
	jmp	.label_18
.label_495:
	mov	byte ptr [rax], 0x5c
	jmp	.label_28
.label_496:
	mov	byte ptr [rax], 8
	jmp	.label_28
.label_497:
	mov	byte ptr [rax], 0xc
	jmp	.label_28
.label_498:
	mov	byte ptr [rax], 0xa
	jmp	.label_28
.label_499:
	mov	byte ptr [rax], 0xd
	jmp	.label_28
.label_500:
	mov	byte ptr [rax], 9
	jmp	.label_28
.label_501:
	mov	byte ptr [rax], 0xb
	jmp	.label_28
.label_22:
	test	esi, esi
	je	.label_43
.label_494:
	mov	byte ptr [rax], dl
	nop	word ptr cs:[rax + rax]
.label_28:
	add	rcx, 2
	mov	rsi, rcx
.label_18:
	inc	rax
	movzx	edx, byte ptr [rsi]
	test	dl, dl
	mov	rcx, rsi
	jne	.label_19
.label_45:
	mov	qword ptr [rip + delim_end],  rax
	mov	al, byte ptr [rip + serial_merge]
	mov	ecx, OFFSET FLAT:paste_serial
	mov	edx, OFFSET FLAT:paste_parallel
	test	al, al
	cmovne	rdx, rcx
	movsxd	rdi, ebp
	movsxd	rax, dword ptr [rip + optind]
	lea	rsi, [r14 + rax*8]
	call	rdx
	mov	ebx, eax
	mov	rdi, qword ptr [rip + delims]
	call	free
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_35
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_46
.label_35:
	movzx	eax, bl
	xor	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_43:
	mov	qword ptr [rip + delim_end],  rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 6
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_33:
	cmp	eax, 0xffffff7d
	je	.label_32
	cmp	eax, 0xffffff7e
	jne	.label_27
	xor	edi, edi
	call	usage
.label_32:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_36
	mov	edx, OFFSET FLAT:label_37
	mov	r8d, OFFSET FLAT:label_38
	mov	r9d, OFFSET FLAT:label_39
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_27:
	mov	edi, 1
	call	usage
.label_46:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	xor	eax, eax
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401940
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401948
	.globl sub_401948
	.type sub_401948, @function
sub_401948:

	nop	dword ptr [rax + rax]
.label_48:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x40195c
	.globl sub_40195c
	.type sub_40195c, @function
sub_40195c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401968

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_48
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_47
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_48
.label_47:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_48
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_49
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_49:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019d0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_26
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_50
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019f5
	.globl sub_4019f5
	.type sub_4019f5, @function
sub_4019f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a00
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
	#Procedure 0x401a19
	.globl sub_401a19
	.type sub_401a19, @function
sub_401a19:

	nop	dword ptr [rax]
.label_51:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401a25
	.globl sub_401a25
	.type sub_401a25, @function
sub_401a25:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401a27
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_52]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_53]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_54]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_51
	test	rdx, rdx
	je	.label_51
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
	#Procedure 0x401a90
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x401a9a
	.globl sub_401a9a
	.type sub_401a9a, @function
sub_401a9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401aa0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_56
	cmp	byte ptr [rax], 0x43
	jne	.label_58
	cmp	byte ptr [rax + 1], 0
	je	.label_55
.label_58:
	mov	esi, OFFSET FLAT:label_57
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_56
.label_55:
	xor	ebx, ebx
.label_56:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ad1
	.globl sub_401ad1
	.type sub_401ad1, @function
sub_401ad1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ae0

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
	je	.label_60
	test	r15, r15
	je	.label_59
.label_60:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_59:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401b22
	.globl sub_401b22
	.type sub_401b22, @function
sub_401b22:

	nop	word ptr cs:[rax + rax]
.label_61:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401b35
	.globl sub_401b35
	.type sub_401b35, @function
sub_401b35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b44
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
	je	.label_61
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
	.section	.text
	.align	32
	#Procedure 0x401ba0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_52]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_53]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_54]
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
	#Procedure 0x401c0e
	.globl sub_401c0e
	.type sub_401c0e, @function
sub_401c0e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401c10
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
	#Procedure 0x401cd1
	.globl sub_401cd1
	.type sub_401cd1, @function
sub_401cd1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ce0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_62
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_62
	test	byte ptr [rbx + 1], 1
	je	.label_62
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_62:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x401d13
	.globl sub_401d13
	.type sub_401d13, @function
sub_401d13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d20
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
	je	.label_63
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
.label_63:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401d8c
	.globl sub_401d8c
	.type sub_401d8c, @function
sub_401d8c:

	nop	dword ptr [rax]
.label_65:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401d95
	.globl sub_401d95
	.type sub_401d95, @function
sub_401d95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d9f
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
	je	.label_64
	test	r14, r14
	je	.label_65
.label_64:
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
	.align	32
	#Procedure 0x401dd0

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
	jne	.label_70
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_76
	cmp	ecx, 0x55
	jne	.label_66
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_66
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_66
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_66
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_66
	cmp	byte ptr [rax + 5], 0
	jne	.label_66
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_74
	mov	eax, OFFSET FLAT:label_75
	jmp	.label_69
.label_76:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_66
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_66
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_66
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_66
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_66
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_66
	cmp	byte ptr [rax + 7], 0
	je	.label_71
.label_66:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_72
	mov	eax, OFFSET FLAT:label_73
.label_69:
	cmove	rax, rcx
.label_70:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_71:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_67
	mov	eax, OFFSET FLAT:label_68
	jmp	.label_69
	.section	.text
	.align	32
	#Procedure 0x401e95
	.globl sub_401e95
	.type sub_401e95, @function
sub_401e95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ea0

	.globl paste_parallel
	.type paste_parallel, @function
paste_parallel:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x10], rsi
	mov	r12, rdi
	lea	rdi, [r12 + 2]
	call	xmalloc
	mov	qword ptr [rsp + 0x20], rax
	lea	rdi, [r12 + 1]
	mov	rax, rdi
	shr	rax, 0x3c
	jne	.label_115
	shl	rdi, 3
	call	xmalloc
	mov	rbp, rax
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	test	r12, r12
	je	.label_91
	xor	edi, edi
	xor	r14d, r14d
	jmp	.label_106
.label_87:
	mov	byte ptr [rip + have_read_stdin],  1
	mov	rax, qword ptr [rip + stdin]
	mov	rdi, r13
	mov	qword ptr [rbp + rdi*8], rax
	jmp	.label_121
	.section	.text
	.align	32
	#Procedure 0x401f11
	.globl sub_401f11
	.type sub_401f11, @function
sub_401f11:

	nop	word ptr cs:[rax + rax]
.label_106:
	mov	rax, qword ptr [rsp + 0x10]
	mov	r13, rdi
	mov	rdx, rdi
	mov	rdi, qword ptr [rax + rdx*8]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_84
	cmp	byte ptr [rdi + 1], 0
	je	.label_87
.label_84:
	mov	esi, OFFSET FLAT:label_88
	call	fopen
	mov	rcx, rbp
	mov	rbp, rax
	mov	rbx, rcx
	mov	qword ptr [rcx + r13*8], rbp
	test	rbp, rbp
	je	.label_92
	mov	rdi, rbp
	call	fileno
	test	eax, eax
	mov	r15b, 1
	je	.label_97
	mov	r15d, r14d
.label_97:
	mov	esi, 2
	mov	rdi, rbp
	call	fadvise
	mov	r14b, r15b
	mov	rdi, r13
	mov	rbp, rbx
.label_121:
	inc	rdi
	cmp	rdi, r12
	jb	.label_106
	test	r14b, 1
	je	.label_107
	cmp	byte ptr [rip + have_read_stdin],  1
	je	.label_108
.label_107:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x30], r12
	mov	qword ptr [rsp + 0x40], rbp
	nop	dword ptr [rax]
.label_98:
	test	rdi, rdi
	je	.label_100
	test	r12, r12
	je	.label_100
	mov	rbx, qword ptr [rip + delims]
	xor	r15d, r15d
	xor	edx, edx
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	nop	word ptr cs:[rax + rax]
.label_120:
	mov	r13, qword ptr [rbp + r15*8]
	test	r13, r13
	je	.label_118
	mov	r12, rdx
	mov	qword ptr [rsp + 0x28], rdi
	mov	rax, qword ptr [r13 + 8]
	cmp	rax, qword ptr [r13 + 0x10]
	jae	.label_119
	lea	rcx, [rax + 1]
	mov	qword ptr [r13 + 8], rcx
	movzx	r14d, byte ptr [rax]
.label_77:
	call	__errno_location
	mov	rbp, rax
	mov	eax, dword ptr [rbp]
	mov	dword ptr [rsp + 0x3c], eax
	mov	rdx, r12
	test	rdx, rdx
	je	.label_80
	cmp	r14d, -1
	je	.label_80
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r12, rbp
	mov	rbp, rbx
	mov	rbx, rdx
	call	fwrite_unlocked
	cmp	rax, rbx
	mov	rbx, rbp
	mov	rbp, r12
	mov	edx, 0
	jne	.label_78
.label_80:
	cmp	r14d, -1
	mov	esi, 0
	je	.label_95
	mov	al, byte ptr [rip + line_delim]
	test	al, al
	mov	eax, 0xa
	cmovne	eax, esi
	cmp	r14d, eax
	mov	eax, r14d
	mov	r12, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x40]
	je	.label_103
	nop	word ptr cs:[rax + rax]
.label_117:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_116
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r14b
.label_89:
	mov	rax, qword ptr [r13 + 8]
	cmp	rax, qword ptr [r13 + 0x10]
	jae	.label_79
	lea	rcx, [rax + 1]
	mov	qword ptr [r13 + 8], rcx
	movzx	r14d, byte ptr [rax]
.label_102:
	movzx	eax, byte ptr [rip + line_delim]
	test	al, al
	mov	eax, 0xa
	cmovne	eax, esi
	cmp	r14d, eax
	mov	eax, r14d
	jne	.label_117
	jmp	.label_103
.label_116:
	movzx	esi, r14b
	mov	r14, rdx
	call	__overflow
	mov	rdx, r14
	xor	esi, esi
	test	eax, eax
	jns	.label_89
	jmp	.label_78
.label_79:
	mov	rdi, r13
	mov	r14, rdx
	call	__uflow
	mov	rdx, r14
	xor	esi, esi
	mov	r14d, eax
	mov	eax, 0xffffffff
	cmp	r14d, -1
	jne	.label_102
	nop	word ptr cs:[rax + rax]
.label_103:
	inc	r15
	cmp	r15, r12
	jne	.label_85
	mov	cl, byte ptr [rip + line_delim]
	test	cl, cl
	mov	ecx, 0xa
	cmovne	ecx, esi
	cmp	eax, -1
	cmovne	ecx, eax
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_90
	lea	rsi, [rax + 1]
	mov	qword ptr [rdi + 0x28], rsi
	mov	byte ptr [rax], cl
	jmp	.label_99
	.section	.text
	.align	32
	#Procedure 0x402176
	.globl sub_402176
	.type sub_402176, @function
sub_402176:

	nop	word ptr cs:[rax + rax]
.label_95:
	mov	r14, rdx
	test	byte ptr [r13], 0x20
	je	.label_105
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rax + r15*8]
	mov	dword ptr [rsp + 0xc], 0
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_14
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x3c]
	call	error
.label_105:
	cmp	r13, qword ptr [rip + stdin]
	je	.label_114
	mov	rdi, r13
	call	rpl_fclose
	cmp	eax, -1
	mov	r12, qword ptr [rsp + 0x30]
	jne	.label_86
	mov	ebp, dword ptr [rbp]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rax + r15*8]
	mov	dword ptr [rsp + 0xc], 0
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_14
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_86
.label_85:
	mov	cl, byte ptr [rip + line_delim]
	test	cl, cl
	mov	ecx, 0xa
	cmovne	ecx, esi
	cmp	eax, -1
	je	.label_81
	cmp	eax, ecx
	je	.label_81
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_113
	lea	rsi, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rsi
	mov	byte ptr [rcx], al
.label_81:
	movzx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_82
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_94
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_82:
	inc	rbx
	cmp	rbx, qword ptr [rip + delim_end]
	cmove	rbx, qword ptr [rip + delims]
.label_99:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	rdi, qword ptr [rsp + 0x28]
	jmp	.label_83
.label_114:
	mov	rdi, r13
	call	clearerr_unlocked
	mov	r12, qword ptr [rsp + 0x30]
.label_86:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbp + r15*8], 0
	mov	rdi, qword ptr [rsp + 0x28]
	dec	rdi
	mov	rdx, r14
.label_118:
	inc	r15
	cmp	r15, r12
	je	.label_101
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_111
	mov	rcx, qword ptr [rsp + 0x20]
	mov	byte ptr [rcx + rdx], al
	inc	rdx
.label_111:
	inc	rbx
	cmp	rbx, qword ptr [rip + delim_end]
	cmove	rbx, qword ptr [rip + delims]
.label_83:
	test	rdi, rdi
	je	.label_100
	cmp	r15, r12
	jb	.label_120
	jmp	.label_100
.label_119:
	mov	rdi, r13
	call	__uflow
	mov	r14d, eax
	jmp	.label_77
.label_90:
	movzx	esi, cl
	mov	r14, rdx
	call	__overflow
	mov	rdx, r14
	mov	cl, 1
	mov	qword ptr [rsp + 0x18], rcx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x28]
	jns	.label_83
	jmp	.label_78
.label_94:
	mov	r14, rdx
	call	__overflow
	mov	rdx, r14
	test	eax, eax
	jns	.label_82
	jmp	.label_78
.label_113:
	movzx	esi, al
	mov	r14, rdx
	call	__overflow
	mov	rdx, r14
	test	eax, eax
	jns	.label_81
	jmp	.label_78
.label_101:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, 1
	je	.label_100
	mov	r14, rbp
	test	rdx, rdx
	je	.label_104
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rdx
	call	fwrite_unlocked
	mov	rdi, rbx
	cmp	rax, rbp
	jne	.label_78
.label_104:
	mov	al, byte ptr [rip + line_delim]
	mov	rbx, rdi
	test	al, al
	jne	.label_109
	mov	al, 0xa
	jmp	.label_110
.label_109:
	xor	eax, eax
.label_110:
	mov	rbp, r14
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_112
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	mov	rdi, rbx
	nop	word ptr cs:[rax + rax]
.label_100:
	test	rdi, rdi
	jne	.label_98
	jmp	.label_91
.label_112:
	movzx	esi, al
	call	__overflow
	test	eax, eax
	mov	rdi, rbx
	jns	.label_100
	call	write_error
.label_91:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, dword ptr [rsp + 0xc]
	and	al, 1
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_78:
	call	write_error
.label_92:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rax + r13*8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_14
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_115:
	call	xalloc_die
.label_108:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
.label_123:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
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
	#Procedure 0x4024c8
	.globl sub_4024c8
	.type sub_4024c8, @function
sub_4024c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024cd

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_123
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_133
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_37
	mov	ecx, OFFSET FLAT:label_132
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_129
	mov	esi, OFFSET FLAT:label_130
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_129
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_129:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_137
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_132
	mov	ecx, OFFSET FLAT:label_36
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_36
	mov	ecx, OFFSET FLAT:label_124
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4026b0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_52]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_53]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_54]
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
	#Procedure 0x402705
	.globl sub_402705
	.type sub_402705, @function
sub_402705:

	nop	word ptr cs:[rax + rax]
.label_141:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402715
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_143
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_139
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_142
	call	free
	xor	eax, eax
	jmp	.label_140
.label_143:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_141
	mov	qword ptr [rsi], rbx
.label_142:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_140
	test	rax, rax
	je	.label_141
.label_140:
	pop	rbx
	ret	
.label_139:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402774
	.globl sub_402774
	.type sub_402774, @function
sub_402774:

	nop	word ptr cs:[rax + rax]
.label_150:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402785
	.globl sub_402785
	.type sub_402785, @function
sub_402785:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40278e
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_146
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_149
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_145
.label_149:
	call	xalloc_die
.label_146:
	test	rcx, rcx
	jne	.label_144
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_144:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_150
.label_145:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_147
	test	rbx, rbx
	jne	.label_147
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_147:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_148
	test	rax, rax
	je	.label_149
.label_148:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402820

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_151
	test	rsi, rsi
	mov	ecx, 1
	je	.label_152
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_152
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_151:
	mov	ecx, 1
.label_152:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x40286b
	.globl sub_40286b
	.type sub_40286b, @function
sub_40286b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402870
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
	#Procedure 0x402888
	.globl sub_402888
	.type sub_402888, @function
sub_402888:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402890
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
	#Procedure 0x4028c6
	.globl sub_4028c6
	.type sub_4028c6, @function
sub_4028c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028d0
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
	je	.label_153
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
.label_153:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402938
	.globl sub_402938
	.type sub_402938, @function
sub_402938:

	nop	dword ptr [rax + rax]
.label_154:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402945
	.globl sub_402945
	.type sub_402945, @function
sub_402945:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40294b
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_155
	test	rax, rax
	je	.label_154
.label_155:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402960
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_156
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_157
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_159
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_37
	mov	ecx, OFFSET FLAT:label_132
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x4029d4
	.globl sub_4029d4
	.type sub_4029d4, @function
sub_4029d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_160:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_160
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x402a01
	.globl sub_402a01
	.type sub_402a01, @function
sub_402a01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a10

	.globl write_error
	.type write_error, @function
write_error:
	push	rbx
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402a40
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x402a45
	.globl sub_402a45
	.type sub_402a45, @function
sub_402a45:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a50
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
	je	.label_161
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
.label_161:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402ab8
	.globl sub_402ab8
	.type sub_402ab8, @function
sub_402ab8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ac0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_162
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_164
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_166
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_164
	mov	esi, OFFSET FLAT:label_165
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_167
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_167:
	mov	rbx, r14
.label_164:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_162:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_163
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402b61
	.globl sub_402b61
	.type sub_402b61, @function
sub_402b61:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b70

	.globl paste_serial
	.type paste_serial, @function
paste_serial:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rsi
	mov	rbx, rdi
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	test	rbx, rbx
	je	.label_194
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_190:
	mov	rdi, qword ptr [r15]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_175
	cmp	byte ptr [rdi + 1], 0
	je	.label_180
.label_175:
	mov	esi, OFFSET FLAT:label_88
	call	fopen
	mov	rbp, rax
	test	rbp, rbp
	je	.label_185
	mov	qword ptr [rsp + 0x10], rbx
	mov	esi, 2
	mov	rdi, rbp
	call	fadvise
	xor	ebx, ebx
	jmp	.label_192
	.section	.text
	.align	32
	#Procedure 0x402bd6
	.globl sub_402bd6
	.type sub_402bd6, @function
sub_402bd6:

	nop	word ptr cs:[rax + rax]
.label_185:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_197
.label_180:
	mov	qword ptr [rsp + 0x10], rbx
	mov	byte ptr [rip + have_read_stdin],  1
	mov	bl, 1
	mov	rbp, qword ptr [rip + stdin]
.label_192:
	mov	r13, qword ptr [rip + delims]
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_169
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	r14d, byte ptr [rax]
	call	__errno_location
.label_195:
	mov	qword ptr [rsp + 0x20], rax
	mov	dword ptr [rsp + 0x1c], ebx
	jmp	.label_179
	.section	.text
	.align	32
	#Procedure 0x402c32
	.globl sub_402c32
	.type sub_402c32, @function
sub_402c32:

	nop	word ptr cs:[rax + rax]
.label_174:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
.label_179:
	mov	ebx, r14d
.label_172:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_191
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	r14d, byte ptr [rax]
.label_178:
	movzx	eax, byte ptr [rip + line_delim]
	test	al, al
	mov	eax, 0xa
	cmovne	eax, r12d
	cmp	ebx, eax
	je	.label_196
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_174
	movzx	esi, bl
	call	__overflow
	test	eax, eax
	mov	ebx, r14d
	jns	.label_172
	jmp	.label_193
.label_191:
	mov	rdi, rbp
	call	__uflow
	mov	r14d, eax
	cmp	r14d, -1
	jne	.label_178
	jmp	.label_183
.label_196:
	movzx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_184
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_186
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_184:
	inc	r13
	cmp	r13, qword ptr [rip + delim_end]
	cmove	r13, qword ptr [rip + delims]
	jmp	.label_179
.label_186:
	call	__overflow
	test	eax, eax
	jns	.label_184
	jmp	.label_171
	.section	.text
	.align	32
	#Procedure 0x402cfb
	.globl sub_402cfb
	.type sub_402cfb, @function
sub_402cfb:

	nop	dword ptr [rax + rax]
.label_183:
	mov	r14, qword ptr [rsp + 0x20]
	mov	r13d, dword ptr [r14]
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_168
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
.label_170:
	mov	al, byte ptr [rip + line_delim]
	test	al, al
	jne	.label_177
	mov	al, 0xa
	jmp	.label_182
	.section	.text
	.align	32
	#Procedure 0x402d31
	.globl sub_402d31
	.type sub_402d31, @function
sub_402d31:

	nop	word ptr cs:[rax + rax]
.label_177:
	xor	eax, eax
.label_182:
	movzx	esi, al
	cmp	ebx, esi
	mov	ebx, dword ptr [rsp + 0x1c]
	jne	.label_189
	jmp	.label_181
.label_169:
	mov	rdi, rbp
	call	__uflow
	mov	r14d, eax
	call	__errno_location
	cmp	r14d, -1
	jne	.label_195
	mov	r13d, dword ptr [rax]
	mov	cl, byte ptr [rip + line_delim]
	test	cl, cl
	mov	r14, rax
	jne	.label_198
	mov	al, 0xa
	jmp	.label_199
.label_168:
	movzx	esi, bl
	call	__overflow
	test	eax, eax
	jns	.label_170
	jmp	.label_171
.label_198:
	xor	eax, eax
.label_199:
	movzx	esi, al
	nop	word ptr cs:[rax + rax]
.label_189:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_188
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_181:
	test	byte ptr [rbp], 0x20
	je	.label_187
	mov	rdx, qword ptr [r15]
	mov	dword ptr [rsp + 0xc], 0
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_14
	xor	eax, eax
	mov	esi, r13d
	call	error
.label_187:
	mov	rdi, rbp
	test	bl, bl
	je	.label_176
	call	clearerr_unlocked
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_173
	.section	.text
	.align	32
	#Procedure 0x402e03
	.globl sub_402e03
	.type sub_402e03, @function
sub_402e03:

	nop	word ptr cs:[rax + rax]
.label_176:
	call	rpl_fclose
	cmp	eax, -1
	mov	rbx, qword ptr [rsp + 0x10]
	jne	.label_173
	mov	ebp, dword ptr [r14]
.label_197:
	mov	rdx, qword ptr [r15]
	mov	dword ptr [rsp + 0xc], 0
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_14
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_173:
	add	r15, 8
	dec	rbx
	jne	.label_190
	jmp	.label_194
.label_188:
	call	__overflow
	test	eax, eax
	jns	.label_181
.label_171:
	call	write_error
.label_194:
	mov	eax, dword ptr [rsp + 0xc]
	and	al, 1
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_193:
	call	write_error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e90
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
	#Procedure 0x402ea8
	.globl sub_402ea8
	.type sub_402ea8, @function
sub_402ea8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402eb0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402ec1
	.globl sub_402ec1
	.type sub_402ec1, @function
sub_402ec1:

	nop	word ptr cs:[rax + rax]
.label_200:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402ed5
	.globl sub_402ed5
	.type sub_402ed5, @function
sub_402ed5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ee0

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
	je	.label_200
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
	#Procedure 0x402f70
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_52]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_53]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_54]
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
	#Procedure 0x402fdf
	.globl sub_402fdf
	.type sub_402fdf, @function
sub_402fdf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402fe0

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
	je	.label_201
	test	r15, r15
	je	.label_202
.label_201:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_202:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40301c
	.globl sub_40301c
	.type sub_40301c, @function
sub_40301c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403020
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_203
	call	rpl_calloc
	test	rax, rax
	je	.label_203
	pop	rcx
	ret	
.label_203:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403046
	.globl sub_403046
	.type sub_403046, @function
sub_403046:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403050
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40305e
	.globl sub_40305e
	.type sub_40305e, @function
sub_40305e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403060

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
	js	.label_204
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_207
	cmp	r12d, 0x7fffffff
	je	.label_209
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
	jne	.label_205
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_205:
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
.label_207:
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
	jbe	.label_210
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_206
.label_210:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_208
	mov	rdi, r14
	call	free
.label_208:
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
.label_206:
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
.label_204:
	call	abort
.label_209:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40321d
	.globl sub_40321d
	.type sub_40321d, @function
sub_40321d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403220

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_221
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_223
.label_221:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_223:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_212
	cmp	r10d, 0x29
	jae	.label_220
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_222
.label_220:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_222:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_212
	cmp	r10d, 0x29
	jae	.label_218
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_219
.label_218:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_219:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_212
	cmp	r10d, 0x29
	jae	.label_216
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_217
.label_216:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_217:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_212
	cmp	r10d, 0x29
	jae	.label_214
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_215
.label_214:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_215:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_212
	cmp	r10d, 0x29
	jae	.label_211
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_213
.label_211:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_213:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_212
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_212
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_212
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_212
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_212:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x403402
	.globl sub_403402
	.type sub_403402, @function
sub_403402:

	nop	word ptr cs:[rax + rax]
.label_224:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403415
	.globl sub_403415
	.type sub_403415, @function
sub_403415:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403420
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_224
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_225
	test	rax, rax
	je	.label_224
.label_225:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403450
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_226
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_228:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_228
.label_226:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_230
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_229], OFFSET FLAT:slot0
.label_230:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_227
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_227:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034e1
	.globl sub_4034e1
	.type sub_4034e1, @function
sub_4034e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034f0

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
	jne	.label_231
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_231
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_232
.label_231:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_232:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_233
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_233:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40355e
	.globl sub_40355e
	.type sub_40355e, @function
sub_40355e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403560
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_52]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_53]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_54]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_234
	test	rdx, rdx
	je	.label_234
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_234:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4035ca
	.globl sub_4035ca
	.type sub_4035ca, @function
sub_4035ca:

	nop	word ptr [rax + rax]
.label_237:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4035d5

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_236
	test	rbx, rbx
	jne	.label_236
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_236:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_235
	test	rax, rax
	je	.label_237
.label_235:
	pop	rbx
	ret	
.label_238:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403606
	.globl sub_403606
	.type sub_403606, @function
sub_403606:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40360b
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_238
	test	rdx, rdx
	je	.label_238
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_239:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403635
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_52]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_53]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_54]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_239
	test	rsi, rsi
	je	.label_239
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
	.align	32
	#Procedure 0x4036a0

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
	jne	.label_241
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_240
	test	cl, cl
	jne	.label_240
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_240
.label_241:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_240
	call	__errno_location
	mov	dword ptr [rax], 0
.label_240:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403700
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
	#Procedure 0x403733
	.globl sub_403733
	.type sub_403733, @function
sub_403733:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403740
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_52]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_53]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_54]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_242
	test	rsi, rsi
	je	.label_242
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
.label_242:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4037ac
	.globl sub_4037ac
	.type sub_4037ac, @function
sub_4037ac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4037b0

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
	je	.label_259
	mov	edx, OFFSET FLAT:label_249
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_256
.label_259:
	mov	edx, OFFSET FLAT:label_257
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_256:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_261
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
	mov	esi, OFFSET FLAT:label_258
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_245
	jmp	qword ptr [(r12 * 8) + label_246]
.label_437:
	add	rsp, 8
	jmp	.label_244
.label_245:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
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
	jmp	.label_244
.label_438:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_254
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
.label_439:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
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
.label_440:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
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
.label_441:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
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
	jmp	.label_244
.label_442:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
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
	jmp	.label_244
.label_443:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
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
	jmp	.label_244
.label_444:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
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
	jmp	.label_244
.label_446:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
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
	jmp	.label_244
.label_445:
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
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_244:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b08
	.globl sub_403b08
	.type sub_403b08, @function
sub_403b08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b10
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
	je	.label_262
	mov	qword ptr [rax], rbx
.label_262:
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
	#Procedure 0x403bfc
	.globl sub_403bfc
	.type sub_403bfc, @function
sub_403bfc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c00
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_52]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_53]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_54]
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
	#Procedure 0x403c54
	.globl sub_403c54
	.type sub_403c54, @function
sub_403c54:

	nop	word ptr cs:[rax + rax]
.label_265:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_263
	test	rax, rax
	je	.label_264
.label_263:
	pop	rbx
	ret	
.label_264:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403c79
	.globl sub_403c79
	.type sub_403c79, @function
sub_403c79:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c81
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_264
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_265
	test	rbx, rbx
	jne	.label_265
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403cb0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_266
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_14
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403ce0

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
	jmp	.label_348
	.section	.text
	.align	32
	#Procedure 0x403d8f
	.globl sub_403d8f
	.type sub_403d8f, @function
sub_403d8f:

	nop	
.label_383:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_331
	or	al, dl
	jne	.label_331
	test	dil, 1
	jne	.label_380
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_331
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_348
	jmp	.label_331
.label_409:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_389
	test	rbp, rbp
	je	.label_268
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_268:
	mov	r14d, 1
	jmp	.label_272
.label_410:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_72
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_274
.label_389:
	xor	r14d, r14d
.label_272:
	mov	eax, OFFSET FLAT:label_72
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_291
	.section	.text
	.align	32
	#Procedure 0x403e5f
	.globl sub_403e5f
	.type sub_403e5f, @function
sub_403e5f:

	nop	
.label_348:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_301
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_363]
.label_411:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_312
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_73
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_412:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_325
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_325
	xor	r14d, r14d
	nop	
.label_387:
	cmp	r14, rbp
	jae	.label_374
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_374:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_387
.label_325:
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
	jmp	.label_274
.label_404:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_274
.label_407:
	mov	al, 1
.label_405:
	mov	r12b, 1
.label_408:
	test	r12b, 1
	mov	cl, 1
	je	.label_355
	mov	ecx, eax
.label_355:
	mov	al, cl
.label_406:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_357
	test	rbp, rbp
	je	.label_361
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_361:
	mov	r14d, 1
	jmp	.label_328
.label_357:
	xor	r14d, r14d
.label_328:
	mov	ecx, OFFSET FLAT:label_73
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_291:
	mov	sil, r12b
.label_274:
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
	jmp	.label_371
	.section	.text
	.align	32
	#Procedure 0x404021
	.globl sub_404021
	.type sub_404021, @function
sub_404021:

	nop	word ptr cs:[rax + rax]
.label_273:
	inc	r12
.label_371:
	cmp	r11, -1
	je	.label_284
	cmp	r12, r11
	jne	.label_287
	jmp	.label_288
	.section	.text
	.align	32
	#Procedure 0x404043
	.globl sub_404043
	.type sub_404043, @function
sub_404043:

	nop	word ptr cs:[rax + rax]
.label_284:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_294
.label_287:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_302
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_308
	cmp	r11, -1
	jne	.label_308
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_308:
	cmp	rbx, r11
	jbe	.label_316
.label_302:
	xor	esi, esi
.label_341:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_317
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_289]
.label_464:
	test	r12, r12
	jne	.label_267
	jmp	.label_326
	.section	.text
	.align	32
	#Procedure 0x4040d6
	.globl sub_4040d6
	.type sub_4040d6, @function
sub_4040d6:

	nop	word ptr cs:[rax + rax]
.label_316:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_339
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_341
	jmp	.label_322
.label_339:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_341
.label_468:
	xor	eax, eax
	cmp	r11, -1
	je	.label_350
	test	r12, r12
	jne	.label_353
	cmp	r11, 1
	je	.label_326
	xor	r13d, r13d
	jmp	.label_277
.label_457:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_359
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_322
	cmp	r8d, 2
	jne	.label_365
	mov	eax, r9d
	and	al, 1
	jne	.label_365
	cmp	r14, rbp
	jae	.label_367
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_367:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_368
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_368:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_375
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_375:
	add	r14, 3
	mov	r9b, 1
.label_365:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_379
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_379:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_382
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_382
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_382
	cmp	r14, rbp
	jae	.label_285
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_285:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_388
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_388:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_277
.label_458:
	mov	bl, 0x62
	jmp	.label_286
.label_459:
	mov	cl, 0x74
	jmp	.label_275
.label_460:
	mov	bl, 0x76
	jmp	.label_286
.label_461:
	mov	bl, 0x66
	jmp	.label_286
.label_462:
	mov	cl, 0x72
	jmp	.label_275
.label_465:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_299
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_282
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
	jae	.label_307
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_307:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_320
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_320:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_324
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_324:
	add	r14, 3
	xor	r9d, r9d
.label_299:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_277
.label_466:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_334
	cmp	r8d, 2
	jne	.label_267
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_267
	jmp	.label_282
.label_467:
	cmp	r8d, 2
	jne	.label_343
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_282
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_346
.label_317:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_347
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_319
.label_350:
	test	r12, r12
	jne	.label_366
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_366
.label_326:
	mov	dl, 1
.label_463:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_282
	xor	eax, eax
	mov	r13b, dl
.label_277:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_373
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_376
	jmp	.label_377
	.section	.text
	.align	32
	#Procedure 0x4043b4
	.globl sub_4043b4
	.type sub_4043b4, @function
sub_4043b4:

	nop	word ptr cs:[rax + rax]
.label_373:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_377
.label_376:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_364
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_386
	.section	.text
	.align	32
	#Procedure 0x4043ed
	.globl sub_4043ed
	.type sub_4043ed, @function
sub_4043ed:

	nop	dword ptr [rax]
.label_377:
	test	sil, sil
.label_386:
	mov	ebx, r15d
	je	.label_278
	jmp	.label_391
.label_364:
	mov	ebx, r15d
	jmp	.label_391
.label_359:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_273
	xor	r15d, r15d
	jmp	.label_267
.label_343:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_275
	xor	eax, eax
	mov	r15b, 0x5c
.label_346:
	xor	r13d, r13d
	jmp	.label_278
.label_275:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_282
.label_286:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_277
	nop	
.label_391:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_322
	cmp	r8d, 2
	jne	.label_300
	mov	eax, r9d
	and	al, 1
	jne	.label_300
	cmp	r14, rbp
	jae	.label_304
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_304:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_327
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_327:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_310
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_310:
	add	r14, 3
	mov	r9b, 1
.label_300:
	cmp	r14, rbp
	jae	.label_381
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_381:
	inc	r14
	jmp	.label_370
.label_347:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_323
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_323:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_330
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_337:
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
	je	.label_344
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_351
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_276
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_311
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_296:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_362
	bt	rsi, rdx
	jb	.label_282
.label_362:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_296
.label_311:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_378
	xor	r13d, r13d
.label_378:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_337
	jmp	.label_352
.label_382:
	xor	r13d, r13d
	jmp	.label_277
.label_366:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_277
.label_334:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_267
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_267
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_267
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_279
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_356
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_293
	cmp	r14, rbp
	jae	.label_297
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_297:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_303
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_303:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_281
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_281:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_349
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_349:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_356:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_277
.label_267:
	xor	eax, eax
.label_353:
	xor	r13d, r13d
	jmp	.label_277
.label_330:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_354:
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
	je	.label_340
	cmp	rbp, -1
	je	.label_342
	cmp	rbp, -2
	je	.label_344
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_345
	xor	r13d, r13d
.label_345:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_354
	jmp	.label_352
.label_344:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_295
	lea	rax, [r10 + r12]
.label_332:
	cmp	byte ptr [rax + rsi], 0
	je	.label_295
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_332
.label_295:
	mov	qword ptr [rsp + 0x40], rsi
.label_351:
	xor	r13d, r13d
	jmp	.label_276
.label_342:
	xor	r13d, r13d
.label_340:
	mov	r10, qword ptr [rsp + 0x28]
.label_276:
	mov	r12, qword ptr [rsp + 0x40]
.label_352:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_319:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_318
	test	al, al
	je	.label_318
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_277
.label_318:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_385
	.section	.text
	.align	32
	#Procedure 0x4047e7
	.globl sub_4047e7
	.type sub_4047e7, @function
sub_4047e7:

	nop	word ptr [rax + rax]
.label_280:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_385:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_390
	test	sil, 1
	je	.label_271
	cmp	r14, rbp
	jae	.label_270
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_270:
	inc	r14
	xor	esi, esi
	jmp	.label_271
	.section	.text
	.align	32
	#Procedure 0x404825
	.globl sub_404825
	.type sub_404825, @function
sub_404825:

	nop	word ptr cs:[rax + rax]
.label_390:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_322
	cmp	r8d, 2
	jne	.label_290
	mov	eax, r9d
	and	al, 1
	jne	.label_290
	cmp	r14, rbp
	jae	.label_292
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_292:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_298
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_298:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_372
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_372:
	add	r14, 3
	mov	r9b, 1
.label_290:
	cmp	r14, rbp
	jae	.label_309
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_309:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_314
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_314:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_321
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_321:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_271:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_278
	test	r9b, 1
	je	.label_335
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_283
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_338
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_338:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_384
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_384:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_335
	.section	.text
	.align	32
	#Procedure 0x404936
	.globl sub_404936
	.type sub_404936, @function
sub_404936:

	nop	word ptr cs:[rax + rax]
.label_283:
	mov	rbx, rcx
.label_335:
	cmp	r14, rbp
	jae	.label_280
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_280
	.section	.text
	.align	32
	#Procedure 0x40495e
	.globl sub_40495e
	.type sub_40495e, @function
sub_40495e:

	nop	
.label_278:
	test	r9b, 1
	je	.label_358
	and	al, 1
	jne	.label_358
	cmp	r14, rbp
	jae	.label_360
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_360:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_329
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_329:
	add	r14, 2
	xor	r9d, r9d
.label_358:
	mov	ebx, r15d
.label_370:
	cmp	r14, rbp
	jae	.label_369
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_369:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_273
.label_279:
	xor	r13d, r13d
	jmp	.label_277
	.section	.text
	.align	32
	#Procedure 0x4049c1
	.globl sub_4049c1
	.type sub_4049c1, @function
sub_4049c1:

	nop	word ptr cs:[rax + rax]
.label_288:
	mov	rcx, r12
.label_294:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_383
	or	al, dl
	jne	.label_383
	mov	r11, rcx
	jmp	.label_322
.label_282:
	mov	eax, 2
.label_269:
	mov	qword ptr [rsp + 0x38], rax
.label_322:
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
.label_333:
	mov	r14, rax
.label_336:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_331:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_305
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_306
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_306
	inc	rdx
	nop	dword ptr [rax + rax]
.label_315:
	cmp	r14, rbp
	jae	.label_313
	mov	byte ptr [rcx + r14], al
.label_313:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_315
	jmp	.label_306
.label_380:
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
	jmp	.label_333
.label_305:
	mov	rcx, qword ptr [rsp + 0x10]
.label_306:
	cmp	r14, rbp
	jae	.label_336
	mov	byte ptr [rcx + r14], 0
	jmp	.label_336
.label_293:
	mov	eax, 5
	jmp	.label_269
.label_301:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404b10
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
	#Procedure 0x404b85
	.globl sub_404b85
	.type sub_404b85, @function
sub_404b85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b90
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
	#Procedure 0x404b9f
	.globl sub_404b9f
	.type sub_404b9f, @function
sub_404b9f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404ba0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_392
	test	rax, rax
	je	.label_393
.label_392:
	pop	rbx
	ret	
.label_393:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404bba
	.globl sub_404bba
	.type sub_404bba, @function
sub_404bba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0
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
	#Procedure 0x404bd3
	.globl sub_404bd3
	.type sub_404bd3, @function
sub_404bd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404be0
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
	#Procedure 0x404bef
	.globl sub_404bef
	.type sub_404bef, @function
sub_404bef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404bf0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bf8
	.globl sub_404bf8
	.type sub_404bf8, @function
sub_404bf8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c00

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_394
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_394:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c1d
	.globl sub_404c1d
	.type sub_404c1d, @function
sub_404c1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404c20
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x404c2a
	.globl sub_404c2a
	.type sub_404c2a, @function
sub_404c2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c30

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
	je	.label_395
	cmp	r15, -2
	jb	.label_395
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_395
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_395:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c86
	.globl sub_404c86
	.type sub_404c86, @function
sub_404c86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c90
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
	#Procedure 0x404ca9
	.globl sub_404ca9
	.type sub_404ca9, @function
sub_404ca9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404cb0

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
	#Procedure 0x404cc7
	.globl sub_404cc7
	.type sub_404cc7, @function
sub_404cc7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d35
	.globl sub_404d35
	.type sub_404d35, @function
sub_404d35:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d42
	.globl sub_404d42
	.type sub_404d42, @function
sub_404d42:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d66
	.globl sub_404d66
	.type sub_404d66, @function
sub_404d66:

	nop	word ptr cs:[rax + rax]

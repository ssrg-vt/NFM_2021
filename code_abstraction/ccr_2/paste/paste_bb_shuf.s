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
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x401548
	.globl sub_401548
	.type sub_401548, @function
sub_401548:

	nop	dword ptr [rax + rax]
.label_14:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_10
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_11
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x401591

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_13
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_14
	cmp	dword ptr [rbp], 0x20
	jne	.label_14
.label_13:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_15
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_15:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_10:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_12
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401610
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_20
	mov	ecx, OFFSET FLAT:label_21
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x401684
	.globl sub_401684
	.type sub_401684, @function
sub_401684:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401690

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
	je	.label_22
	test	r15, r15
	je	.label_23
.label_22:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_23:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4016cc
	.globl sub_4016cc
	.type sub_4016cc, @function
sub_4016cc:

	nop	dword ptr [rax]
.label_24:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4016d5
	.globl sub_4016d5
	.type sub_4016d5, @function
sub_4016d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016e3

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
	je	.label_25
	test	r15, r15
	je	.label_24
.label_25:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_29:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401725
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_26]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_29
	test	rsi, rsi
	je	.label_29
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
	#Procedure 0x401790
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
	je	.label_30
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
.label_30:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4017f8
	.globl sub_4017f8
	.type sub_4017f8, @function
sub_4017f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401800
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_31
	test	rax, rax
	je	.label_32
.label_31:
	pop	rbx
	ret	
.label_32:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40181a
	.globl sub_40181a
	.type sub_40181a, @function
sub_40181a:

	nop	word ptr [rax + rax]
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
	#Procedure 0x40184f
	.globl sub_40184f
	.type sub_40184f, @function
sub_40184f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401850
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x401858
	.globl sub_401858
	.type sub_401858, @function
sub_401858:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401860

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
	je	.label_33
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
.label_33:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4018f5
	.globl sub_4018f5
	.type sub_4018f5, @function
sub_4018f5:

	nop	word ptr cs:[rax + rax]
.label_34:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401905
	.globl sub_401905
	.type sub_401905, @function
sub_401905:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40190f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_34
	call	rpl_calloc
	test	rax, rax
	je	.label_34
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401930

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
	mov	esi, OFFSET FLAT:label_47
	call	setlocale
	mov	edi, OFFSET FLAT:label_52
	mov	esi, OFFSET FLAT:label_53
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_52
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + have_read_stdin],  0
	mov	byte ptr [rip + serial_merge],  0
	mov	ebx, OFFSET FLAT:label_62
	mov	r15d, OFFSET FLAT:label_63
	jmp	.label_51
.label_44:
	mov	byte ptr [rip + line_delim],  1
	nop	dword ptr [rax + rax]
.label_51:
	mov	edx, OFFSET FLAT:label_38
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x63
	jle	.label_42
	cmp	eax, 0x7a
	je	.label_44
	cmp	eax, 0x73
	je	.label_46
	cmp	eax, 0x64
	jne	.label_48
	mov	rbx, qword ptr [rip + optarg]
	cmp	byte ptr [rbx], 0
	cmove	rbx, r15
	jmp	.label_51
.label_46:
	mov	byte ptr [rip + serial_merge],  1
	jmp	.label_51
.label_42:
	cmp	eax, -1
	jne	.label_56
	movsxd	rax, dword ptr [rip + optind]
	sub	ebp, eax
	jne	.label_57
	mov	qword ptr [r14 + (rax * 8)], OFFSET FLAT:label_45
	mov	ebp, 1
.label_57:
	mov	rdi, rbx
	call	xstrdup
	mov	qword ptr [rip + delims],  rax
	mov	dl, byte ptr [rbx]
	test	dl, dl
	je	.label_55
	mov	rcx, rbx
	nop	word ptr cs:[rax + rax]
.label_40:
	lea	rsi, [rcx + 1]
	cmp	dl, 0x5c
	jne	.label_41
	movzx	edx, byte ptr [rsi]
	movsx	esi, dl
	lea	edi, [rsi - 0x30]
	cmp	edi, 0x46
	ja	.label_43
	jmp	qword ptr [(rdi * 8) + label_49]
.label_439:
	mov	byte ptr [rax], 0
	jmp	.label_35
	.section	.text
	.align	32
	#Procedure 0x401a53
	.globl sub_401a53
	.type sub_401a53, @function
sub_401a53:

	nop	word ptr cs:[rax + rax]
.label_41:
	mov	byte ptr [rax], dl
	jmp	.label_54
.label_441:
	mov	byte ptr [rax], 0x5c
	jmp	.label_35
.label_442:
	mov	byte ptr [rax], 8
	jmp	.label_35
.label_443:
	mov	byte ptr [rax], 0xc
	jmp	.label_35
.label_444:
	mov	byte ptr [rax], 0xa
	jmp	.label_35
.label_445:
	mov	byte ptr [rax], 0xd
	jmp	.label_35
.label_446:
	mov	byte ptr [rax], 9
	jmp	.label_35
.label_447:
	mov	byte ptr [rax], 0xb
	jmp	.label_35
.label_43:
	test	esi, esi
	je	.label_36
.label_440:
	mov	byte ptr [rax], dl
	nop	word ptr cs:[rax + rax]
.label_35:
	add	rcx, 2
	mov	rsi, rcx
.label_54:
	inc	rax
	movzx	edx, byte ptr [rsi]
	test	dl, dl
	mov	rcx, rsi
	jne	.label_40
.label_55:
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
	jne	.label_58
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_37
.label_58:
	movzx	eax, bl
	xor	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_36:
	mov	qword ptr [rip + delim_end],  rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
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
.label_56:
	cmp	eax, 0xffffff7d
	je	.label_39
	cmp	eax, 0xffffff7e
	jne	.label_48
	xor	edi, edi
	call	usage
.label_39:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_59
	mov	edx, OFFSET FLAT:label_20
	mov	r8d, OFFSET FLAT:label_60
	mov	r9d, OFFSET FLAT:label_61
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_48:
	mov	edi, 1
	call	usage
.label_37:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_45
	xor	eax, eax
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401be0
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
	je	.label_64
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
.label_64:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401c4c
	.globl sub_401c4c
	.type sub_401c4c, @function
sub_401c4c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c50
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_26]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_28]
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
	#Procedure 0x401ca4
	.globl sub_401ca4
	.type sub_401ca4, @function
sub_401ca4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401cb0
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
	je	.label_65
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
.label_65:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401d11
	.globl sub_401d11
	.type sub_401d11, @function
sub_401d11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d20
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_26]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_28]
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
	#Procedure 0x401d8f
	.globl sub_401d8f
	.type sub_401d8f, @function
sub_401d8f:

	nop	
.label_69:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_66
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401db0
	.globl sub_401db0
	.type sub_401db0, @function
sub_401db0:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401dbf

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_69
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_68
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_68
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_67
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_67:
	mov	rbx, r14
.label_68:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e40
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
	#Procedure 0x401e58
	.globl sub_401e58
	.type sub_401e58, @function
sub_401e58:

	nop	dword ptr [rax + rax]
.label_73:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_72
	call	__errno_location
	mov	dword ptr [rax], 0
.label_72:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e7b

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
	jne	.label_73
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_72
	test	cl, cl
	jne	.label_72
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_72
	.section	.text
	.align	32
	#Procedure 0x401ec0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_74
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_74:
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
	#Procedure 0x401f43
	.globl sub_401f43
	.type sub_401f43, @function
sub_401f43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f50
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
	#Procedure 0x401f63
	.globl sub_401f63
	.type sub_401f63, @function
sub_401f63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f70
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_75
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_77:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_77
.label_75:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_78
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_79], OFFSET FLAT:slot0
.label_78:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_76
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_76:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402001
	.globl sub_402001
	.type sub_402001, @function
sub_402001:

	nop	word ptr cs:[rax + rax]
.label_82:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_80
	test	rax, rax
	je	.label_81
.label_80:
	pop	rbx
	ret	
.label_81:
	call	xalloc_die
.label_83:
	test	rcx, rcx
	jne	.label_86
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_86:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_85
.label_84:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_82
	test	rbx, rbx
	jne	.label_82
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_85:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40207a
	.globl sub_40207a
	.type sub_40207a, @function
sub_40207a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402083
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_83
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_81
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_84
	.section	.text
	.align	32
	#Procedure 0x4020b0

	.globl write_error
	.type write_error, @function
write_error:
	push	rbx
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
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
	#Procedure 0x4020e0
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
	#Procedure 0x402116
	.globl sub_402116
	.type sub_402116, @function
sub_402116:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402120
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_87
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_88
	test	rax, rax
	je	.label_87
.label_88:
	pop	rbx
	ret	
.label_87:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402155
	.globl sub_402155
	.type sub_402155, @function
sub_402155:

	nop	word ptr cs:[rax + rax]
.label_90:
	mov	ecx, 1
.label_89:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x402170
	.globl sub_402170
	.type sub_402170, @function
sub_402170:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402175

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_90
	test	rsi, rsi
	mov	ecx, 1
	je	.label_89
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_89
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_91:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4021b5
	.globl sub_4021b5
	.type sub_4021b5, @function
sub_4021b5:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4021b9
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_26]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_91
	test	rsi, rsi
	je	.label_91
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
	#Procedure 0x402220
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
	je	.label_93
	test	r14, r14
	je	.label_92
.label_93:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_92:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402256
	.globl sub_402256
	.type sub_402256, @function
sub_402256:

	nop	word ptr cs:[rax + rax]
.label_94:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x40226c
	.globl sub_40226c
	.type sub_40226c, @function
sub_40226c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402278

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_94
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_96
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_94
.label_96:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_94
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_95
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_95:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022e0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_97
	test	rax, rax
	je	.label_98
.label_97:
	pop	rbx
	ret	
.label_98:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4022fa
	.globl sub_4022fa
	.type sub_4022fa, @function
sub_4022fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402300
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
	je	.label_99
	mov	qword ptr [rax], rbx
.label_99:
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
	#Procedure 0x4023ec
	.globl sub_4023ec
	.type sub_4023ec, @function
sub_4023ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4023f0

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
	jne	.label_100
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_100
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_101
.label_100:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_101:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_102
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_102:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40245e
	.globl sub_40245e
	.type sub_40245e, @function
sub_40245e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402460

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_11
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402490

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_47
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_104
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024b5
	.globl sub_4024b5
	.type sub_4024b5, @function
sub_4024b5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024c0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4024ca
	.globl sub_4024ca
	.type sub_4024ca, @function
sub_4024ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024d0

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
	je	.label_105
	cmp	r15, -2
	jb	.label_105
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_105
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_105:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402526
	.globl sub_402526
	.type sub_402526, @function
sub_402526:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402530
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_106
	test	rdx, rdx
	je	.label_106
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_106:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40255b
	.globl sub_40255b
	.type sub_40255b, @function
sub_40255b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402560
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_107:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_107
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x402581
	.globl sub_402581
	.type sub_402581, @function
sub_402581:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402590

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_112
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_115
.label_112:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_115:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_114
	cmp	r10d, 0x29
	jae	.label_111
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_113
.label_111:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_113:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_114
	cmp	r10d, 0x29
	jae	.label_109
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_110
.label_109:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_110:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_114
	cmp	r10d, 0x29
	jae	.label_120
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_108
.label_120:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_108:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_114
	cmp	r10d, 0x29
	jae	.label_118
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_119
.label_118:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_119:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_114
	cmp	r10d, 0x29
	jae	.label_116
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_117
.label_116:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_117:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_114
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_114
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_114
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_114
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_114:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x402772
	.globl sub_402772
	.type sub_402772, @function
sub_402772:

	nop	word ptr cs:[rax + rax]
.label_121:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402782
	.globl sub_402782
	.type sub_402782, @function
sub_402782:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402785

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_121
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x4027a0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_26]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_28]
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
	#Procedure 0x4027f5
	.globl sub_4027f5
	.type sub_4027f5, @function
sub_4027f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402800

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
	jne	.label_123
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_130
	cmp	ecx, 0x55
	jne	.label_122
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_122
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_122
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_122
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_122
	cmp	byte ptr [rax + 5], 0
	jne	.label_122
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_127
	mov	eax, OFFSET FLAT:label_128
	jmp	.label_129
.label_130:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_122
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_122
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_122
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_122
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_122
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_122
	cmp	byte ptr [rax + 7], 0
	je	.label_124
.label_122:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_125
	mov	eax, OFFSET FLAT:label_126
.label_129:
	cmove	rax, rcx
.label_123:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_124:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_131
	mov	eax, OFFSET FLAT:label_132
	jmp	.label_129
	.section	.text
	.align	32
	#Procedure 0x4028c5
	.globl sub_4028c5
	.type sub_4028c5, @function
sub_4028c5:

	nop	word ptr cs:[rax + rax]
.label_133:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4028d5
	.globl sub_4028d5
	.type sub_4028d5, @function
sub_4028d5:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4028d7
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_26]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_133
	test	rdx, rdx
	je	.label_133
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
	#Procedure 0x402940
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x402945
	.globl sub_402945
	.type sub_402945, @function
sub_402945:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402950
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_26]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_28]
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
	#Procedure 0x4029be
	.globl sub_4029be
	.type sub_4029be, @function
sub_4029be:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4029c0
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
	#Procedure 0x402a35
	.globl sub_402a35
	.type sub_402a35, @function
sub_402a35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a40
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
	#Procedure 0x402b01
	.globl sub_402b01
	.type sub_402b01, @function
sub_402b01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b10

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_134
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_134
	test	byte ptr [rbx + 1], 1
	je	.label_134
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_134:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x402b43
	.globl sub_402b43
	.type sub_402b43, @function
sub_402b43:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b50

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_136
	cmp	byte ptr [rax], 0x43
	jne	.label_138
	cmp	byte ptr [rax + 1], 0
	je	.label_135
.label_138:
	mov	esi, OFFSET FLAT:label_137
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_136
.label_135:
	xor	ebx, ebx
.label_136:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b81
	.globl sub_402b81
	.type sub_402b81, @function
sub_402b81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b90
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
	#Procedure 0x402ba8
	.globl sub_402ba8
	.type sub_402ba8, @function
sub_402ba8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bb0

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
	je	.label_144
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_140:
	mov	rdi, qword ptr [r15]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_162
	cmp	byte ptr [rdi + 1], 0
	je	.label_165
.label_162:
	mov	esi, OFFSET FLAT:label_167
	call	fopen
	mov	rbp, rax
	test	rbp, rbp
	je	.label_169
	mov	qword ptr [rsp + 0x10], rbx
	mov	esi, 2
	mov	rdi, rbp
	call	fadvise
	xor	ebx, ebx
	jmp	.label_142
	.section	.text
	.align	32
	#Procedure 0x402c16
	.globl sub_402c16
	.type sub_402c16, @function
sub_402c16:

	nop	word ptr cs:[rax + rax]
.label_169:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_148
.label_165:
	mov	qword ptr [rsp + 0x10], rbx
	mov	byte ptr [rip + have_read_stdin],  1
	mov	bl, 1
	mov	rbp, qword ptr [rip + stdin]
.label_142:
	mov	r13, qword ptr [rip + delims]
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_157
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	r14d, byte ptr [rax]
	call	__errno_location
.label_145:
	mov	qword ptr [rsp + 0x20], rax
	mov	dword ptr [rsp + 0x1c], ebx
	jmp	.label_143
	.section	.text
	.align	32
	#Procedure 0x402c72
	.globl sub_402c72
	.type sub_402c72, @function
sub_402c72:

	nop	word ptr cs:[rax + rax]
.label_153:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
.label_143:
	mov	ebx, r14d
.label_159:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_141
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	r14d, byte ptr [rax]
.label_164:
	movzx	eax, byte ptr [rip + line_delim]
	test	al, al
	mov	eax, 0xa
	cmovne	eax, r12d
	cmp	ebx, eax
	je	.label_147
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_153
	movzx	esi, bl
	call	__overflow
	test	eax, eax
	mov	ebx, r14d
	jns	.label_159
	jmp	.label_161
.label_141:
	mov	rdi, rbp
	call	__uflow
	mov	r14d, eax
	cmp	r14d, -1
	jne	.label_164
	jmp	.label_168
.label_147:
	movzx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_150
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_170
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_150:
	inc	r13
	cmp	r13, qword ptr [rip + delim_end]
	cmove	r13, qword ptr [rip + delims]
	jmp	.label_143
.label_170:
	call	__overflow
	test	eax, eax
	jns	.label_150
	jmp	.label_152
	.section	.text
	.align	32
	#Procedure 0x402d3b
	.globl sub_402d3b
	.type sub_402d3b, @function
sub_402d3b:

	nop	dword ptr [rax + rax]
.label_168:
	mov	r14, qword ptr [rsp + 0x20]
	mov	r13d, dword ptr [r14]
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_156
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
.label_158:
	mov	al, byte ptr [rip + line_delim]
	test	al, al
	jne	.label_163
	mov	al, 0xa
	jmp	.label_166
	.section	.text
	.align	32
	#Procedure 0x402d71
	.globl sub_402d71
	.type sub_402d71, @function
sub_402d71:

	nop	word ptr cs:[rax + rax]
.label_163:
	xor	eax, eax
.label_166:
	movzx	esi, al
	cmp	ebx, esi
	mov	ebx, dword ptr [rsp + 0x1c]
	jne	.label_139
	jmp	.label_154
.label_157:
	mov	rdi, rbp
	call	__uflow
	mov	r14d, eax
	call	__errno_location
	cmp	r14d, -1
	jne	.label_145
	mov	r13d, dword ptr [rax]
	mov	cl, byte ptr [rip + line_delim]
	test	cl, cl
	mov	r14, rax
	jne	.label_149
	mov	al, 0xa
	jmp	.label_160
.label_156:
	movzx	esi, bl
	call	__overflow
	test	eax, eax
	jns	.label_158
	jmp	.label_152
.label_149:
	xor	eax, eax
.label_160:
	movzx	esi, al
	nop	word ptr cs:[rax + rax]
.label_139:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_151
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_154:
	test	byte ptr [rbp], 0x20
	je	.label_171
	mov	rdx, qword ptr [r15]
	mov	dword ptr [rsp + 0xc], 0
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_11
	xor	eax, eax
	mov	esi, r13d
	call	error
.label_171:
	mov	rdi, rbp
	test	bl, bl
	je	.label_146
	call	clearerr_unlocked
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_155
	.section	.text
	.align	32
	#Procedure 0x402e43
	.globl sub_402e43
	.type sub_402e43, @function
sub_402e43:

	nop	word ptr cs:[rax + rax]
.label_146:
	call	rpl_fclose
	cmp	eax, -1
	mov	rbx, qword ptr [rsp + 0x10]
	jne	.label_155
	mov	ebp, dword ptr [r14]
.label_148:
	mov	rdx, qword ptr [r15]
	mov	dword ptr [rsp + 0xc], 0
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_11
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_155:
	add	r15, 8
	dec	rbx
	jne	.label_140
	jmp	.label_144
.label_151:
	call	__overflow
	test	eax, eax
	jns	.label_154
.label_152:
	call	write_error
.label_144:
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
.label_161:
	call	write_error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ed0

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
.label_266:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_264
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_268]
.label_410:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_273
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_126
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_411:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_281
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_281
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_182:
	cmp	r14, r11
	jae	.label_178
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_178:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_182
.label_281:
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
	jmp	.label_189
.label_403:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_189
.label_406:
	mov	al, 1
.label_404:
	mov	r12b, 1
.label_407:
	test	r12b, 1
	mov	cl, 1
	je	.label_206
	mov	ecx, eax
.label_206:
	mov	al, cl
.label_405:
	test	r12b, 1
	jne	.label_208
	test	r11, r11
	je	.label_253
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_253:
	mov	r14d, 1
	jmp	.label_212
.label_208:
	xor	r14d, r14d
.label_212:
	mov	ecx, OFFSET FLAT:label_126
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_189
.label_408:
	test	r12b, 1
	jne	.label_221
	test	r11, r11
	je	.label_223
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_223:
	mov	r14d, 1
	jmp	.label_226
.label_409:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_125
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_189
.label_221:
	xor	r14d, r14d
.label_226:
	mov	eax, OFFSET FLAT:label_125
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_189:
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
	jmp	.label_245
	.section	.text
	.align	32
	#Procedure 0x4031bd
	.globl sub_4031bd
	.type sub_4031bd, @function
sub_4031bd:

	nop	dword ptr [rax]
.label_183:
	inc	rsi
.label_245:
	cmp	rbp, -1
	je	.label_282
	cmp	rsi, rbp
	jne	.label_283
	jmp	.label_284
	.section	.text
	.align	32
	#Procedure 0x4031d3
	.globl sub_4031d3
	.type sub_4031d3, @function
sub_4031d3:

	nop	word ptr cs:[rax + rax]
.label_282:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_288
.label_283:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_290
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_199
	cmp	rbp, -1
	jne	.label_199
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
.label_199:
	cmp	rbx, rbp
	jbe	.label_190
.label_290:
	xor	r8d, r8d
.label_174:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_191
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_195]
.label_461:
	test	rsi, rsi
	jne	.label_185
	jmp	.label_204
	.section	.text
	.align	32
	#Procedure 0x403275
	.globl sub_403275
	.type sub_403275, @function
sub_403275:

	nop	word ptr cs:[rax + rax]
.label_190:
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
	jne	.label_215
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_174
	jmp	.label_225
.label_215:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_174
.label_465:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_235
	test	rsi, rsi
	jne	.label_238
	cmp	rbp, 1
	je	.label_204
	xor	r13d, r13d
	jmp	.label_181
.label_454:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_244
	cmp	byte ptr [rsp + 6], 0
	jne	.label_236
	cmp	r12d, 2
	jne	.label_249
	mov	eax, r9d
	and	al, 1
	jne	.label_249
	cmp	r14, r11
	jae	.label_254
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_254:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_257
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_257:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_242
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_242:
	add	r14, 3
	mov	r9b, 1
.label_249:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_237
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_237:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_270
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_270
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_270
	cmp	r14, r11
	jae	.label_209
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_209:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_172
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_172:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_181
.label_455:
	mov	bl, 0x62
	jmp	.label_173
.label_456:
	mov	cl, 0x74
	jmp	.label_193
.label_457:
	mov	bl, 0x76
	jmp	.label_173
.label_458:
	mov	bl, 0x66
	jmp	.label_173
.label_459:
	mov	cl, 0x72
	jmp	.label_193
.label_462:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_179
	cmp	byte ptr [rsp + 6], 0
	jne	.label_184
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
	jae	.label_187
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_187:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_200
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_200:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_207
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_207:
	add	r14, 3
	xor	r9d, r9d
.label_179:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_181
.label_463:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_213
	cmp	r12d, 2
	jne	.label_185
	cmp	byte ptr [rsp + 6], 0
	je	.label_185
	jmp	.label_184
.label_464:
	cmp	r12d, 2
	jne	.label_222
	cmp	byte ptr [rsp + 6], 0
	jne	.label_184
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_180
.label_191:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_229
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
.label_177:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_248
	test	r8b, r8b
	je	.label_248
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_181
.label_235:
	test	rsi, rsi
	jne	.label_250
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_250
.label_204:
	mov	dl, 1
.label_460:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_184
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_181:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_275
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_277
	jmp	.label_227
	.section	.text
	.align	32
	#Procedure 0x4035c4
	.globl sub_4035c4
	.type sub_4035c4, @function
sub_4035c4:

	nop	word ptr cs:[rax + rax]
.label_275:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_227
.label_277:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_286
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_180
	jmp	.label_176
	.section	.text
	.align	32
	#Procedure 0x40360d
	.globl sub_40360d
	.type sub_40360d, @function
sub_40360d:

	nop	dword ptr [rax]
.label_227:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_176
	jmp	.label_180
.label_286:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_176
.label_244:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_183
	xor	r15d, r15d
	jmp	.label_185
.label_222:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_193
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_180
.label_193:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_184
.label_173:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_181
	nop	word ptr cs:[rax + rax]
.label_176:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_236
	cmp	r12d, 2
	jne	.label_210
	mov	eax, r9d
	and	al, 1
	jne	.label_210
	cmp	r14, r11
	jae	.label_269
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_269:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_217
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_217:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_196
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_196:
	add	r14, 3
	mov	r9b, 1
.label_210:
	cmp	r14, r11
	jae	.label_233
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_233:
	inc	r14
	jmp	.label_211
.label_229:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_231
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_231:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_278:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_256
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_259
	cmp	rbp, -2
	je	.label_263
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_224
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_234:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_198
	bt	rsi, rdx
	jb	.label_280
.label_198:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_234
.label_224:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_251
	xor	r13d, r13d
.label_251:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_278
	jmp	.label_177
.label_270:
	xor	r13d, r13d
	jmp	.label_181
.label_250:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_181
.label_213:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_185
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_185
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_185
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_289
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_232
	cmp	byte ptr [rsp + 6], 0
	jne	.label_272
	cmp	r14, r11
	jae	.label_230
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_230:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_260
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_260:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_214
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_214:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_188
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_188:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_181
.label_185:
	xor	eax, eax
.label_238:
	xor	r13d, r13d
	jmp	.label_181
.label_248:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_228
	.section	.text
	.align	32
	#Procedure 0x4038f2
	.globl sub_4038f2
	.type sub_4038f2, @function
sub_4038f2:

	nop	word ptr cs:[rax + rax]
.label_186:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_228:
	test	r8b, r8b
	je	.label_239
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_240
	cmp	r14, r11
	jae	.label_246
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_246:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_240
	.section	.text
	.align	32
	#Procedure 0x40393c
	.globl sub_40393c
	.type sub_40393c, @function
sub_40393c:

	nop	dword ptr [rax]
.label_239:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_225
	cmp	r12d, 2
	jne	.label_255
	mov	eax, r9d
	and	al, 1
	jne	.label_255
	cmp	r14, r11
	jae	.label_258
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_258:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_261
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_261:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_265
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_265:
	add	r14, 3
	mov	r9b, 1
.label_255:
	cmp	r14, r11
	jae	.label_175
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_175:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_274
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_274:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_279
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_279:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_240:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_180
	test	r9b, 1
	je	.label_203
	mov	ebx, eax
	and	bl, 1
	jne	.label_203
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_291
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_291:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_276
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_276:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_203:
	cmp	r14, r11
	jae	.label_186
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_186
	.section	.text
	.align	32
	#Procedure 0x403a43
	.globl sub_403a43
	.type sub_403a43, @function
sub_403a43:

	nop	word ptr cs:[rax + rax]
.label_180:
	test	r9b, 1
	je	.label_194
	and	al, 1
	jne	.label_194
	cmp	r14, r11
	jae	.label_197
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_197:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_205
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_205:
	add	r14, 2
	xor	r9d, r9d
.label_194:
	mov	ebx, r15d
.label_211:
	cmp	r14, r11
	jae	.label_241
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_241:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_183
.label_259:
	xor	r13d, r13d
.label_256:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_177
.label_263:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_220
	mov	rsi, qword ptr [rsp + 0x58]
.label_267:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_216
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_267
	xor	r13d, r13d
	jmp	.label_177
.label_220:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_177
.label_216:
	xor	r13d, r13d
	jmp	.label_177
.label_289:
	xor	r13d, r13d
	jmp	.label_181
.label_232:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_181
	.section	.text
	.align	32
	#Procedure 0x403b18
	.globl sub_403b18
	.type sub_403b18, @function
sub_403b18:

	nop	dword ptr [rax + rax]
.label_284:
	mov	rcx, rsi
.label_288:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_243
	or	al, dl
	je	.label_247
.label_243:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_252
	or	al, dl
	jne	.label_252
	test	r10b, 1
	jne	.label_262
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_252
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_266
.label_252:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_271
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_192
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_192
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_287:
	cmp	r14, r11
	jae	.label_285
	mov	byte ptr [rcx + r14], al
.label_285:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_287
	jmp	.label_192
.label_236:
	mov	qword ptr [rsp + 0x20], rbp
.label_225:
	mov	rdx, rdi
	jmp	.label_201
.label_184:
	mov	qword ptr [rsp + 0x20], rbp
.label_280:
	mov	rdx, rdi
	mov	eax, 2
.label_202:
	mov	qword ptr [rsp + 0x38], rax
.label_201:
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
.label_218:
	mov	r14, rax
.label_219:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_247:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_201
.label_262:
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
	jmp	.label_218
.label_271:
	mov	rcx, qword ptr [rsp + 8]
.label_192:
	cmp	r14, r11
	jae	.label_219
	mov	byte ptr [rcx + r14], 0
	jmp	.label_219
.label_272:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_202
.label_264:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403cd7
	.globl sub_403cd7
	.type sub_403cd7, @function
sub_403cd7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ce0
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
	#Procedure 0x403cef
	.globl sub_403cef
	.type sub_403cef, @function
sub_403cef:

	nop	
.label_294:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_292
	test	rax, rax
	je	.label_293
.label_292:
	pop	rbx
	ret	
.label_293:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403d09

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_294
	test	rbx, rbx
	jne	.label_294
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_295:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403d25
	.globl sub_403d25
	.type sub_403d25, @function
sub_403d25:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d2d
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
	je	.label_295
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
.label_299:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403d95
	.globl sub_403d95
	.type sub_403d95, @function
sub_403d95:

	nop	word ptr cs:[rax + rax]
.label_300:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_296
	mov	qword ptr [rsi], rbx
.label_298:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_297
	test	rax, rax
	je	.label_296
.label_297:
	pop	rbx
	ret	
.label_296:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403dce
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_300
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_299
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_298
	call	free
	xor	eax, eax
	jmp	.label_297
.label_302:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_303
	test	rax, rax
	je	.label_301
.label_303:
	pop	rbx
	ret	
.label_301:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403e19
	.globl sub_403e19
	.type sub_403e19, @function
sub_403e19:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e21
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_301
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_302
	test	rbx, rbx
	jne	.label_302
	call	free
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e50
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
	#Procedure 0x403e69
	.globl sub_403e69
	.type sub_403e69, @function
sub_403e69:

	nop	dword ptr [rax]
.label_312:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_304
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
	#Procedure 0x403ea8
	.globl sub_403ea8
	.type sub_403ea8, @function
sub_403ea8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ead

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_312
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_317
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_307
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_309
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_310
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_305
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_318
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_319
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_20
	mov	ecx, OFFSET FLAT:label_21
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_306
	mov	esi, OFFSET FLAT:label_311
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_306
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_314
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_306:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_59
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_59
	mov	ecx, OFFSET FLAT:label_313
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x404090
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_26]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_27]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_28]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_321
	test	rdx, rdx
	je	.label_321
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_321:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4040fa
	.globl sub_4040fa
	.type sub_4040fa, @function
sub_4040fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404100

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
	je	.label_322
	mov	edx, OFFSET FLAT:label_332
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_338
.label_322:
	mov	edx, OFFSET FLAT:label_339
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_338:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_325
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
	mov	esi, OFFSET FLAT:label_340
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_327
	jmp	qword ptr [(r12 * 8) + label_328]
.label_428:
	add	rsp, 8
	jmp	.label_326
.label_327:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_335
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
	jmp	.label_326
.label_429:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
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
.label_430:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
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
.label_431:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
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
.label_432:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
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
	jmp	.label_326
.label_433:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
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
	jmp	.label_326
.label_434:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
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
	jmp	.label_326
.label_435:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
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
	jmp	.label_326
.label_437:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
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
	jmp	.label_326
.label_436:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
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
.label_326:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404458
	.globl sub_404458
	.type sub_404458, @function
sub_404458:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404460
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x404471
	.globl sub_404471
	.type sub_404471, @function
sub_404471:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404480
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
	#Procedure 0x404499
	.globl sub_404499
	.type sub_404499, @function
sub_404499:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4044a0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4044aa
	.globl sub_4044aa
	.type sub_4044aa, @function
sub_4044aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044b0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4044be
	.globl sub_4044be
	.type sub_4044be, @function
sub_4044be:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4044c0

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
	js	.label_341
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_344
	cmp	r12d, 0x7fffffff
	je	.label_346
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
	jne	.label_342
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_342:
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
.label_344:
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
	jbe	.label_347
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_343
.label_347:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_345
	mov	rdi, r14
	call	free
.label_345:
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
.label_343:
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
.label_341:
	call	abort
.label_346:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40467d
	.globl sub_40467d
	.type sub_40467d, @function
sub_40467d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404680
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
	#Procedure 0x4046b3
	.globl sub_4046b3
	.type sub_4046b3, @function
sub_4046b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046c0

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
	jne	.label_387
	shl	rdi, 3
	call	xmalloc
	mov	rbp, rax
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	test	r12, r12
	je	.label_349
	xor	edi, edi
	xor	r14d, r14d
	jmp	.label_353
.label_367:
	mov	byte ptr [rip + have_read_stdin],  1
	mov	rax, qword ptr [rip + stdin]
	mov	rdi, r13
	mov	qword ptr [rbp + rdi*8], rax
	jmp	.label_355
	.section	.text
	.align	32
	#Procedure 0x404731
	.globl sub_404731
	.type sub_404731, @function
sub_404731:

	nop	word ptr cs:[rax + rax]
.label_353:
	mov	rax, qword ptr [rsp + 0x10]
	mov	r13, rdi
	mov	rdx, rdi
	mov	rdi, qword ptr [rax + rdx*8]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_365
	cmp	byte ptr [rdi + 1], 0
	je	.label_367
.label_365:
	mov	esi, OFFSET FLAT:label_167
	call	fopen
	mov	rcx, rbp
	mov	rbp, rax
	mov	rbx, rcx
	mov	qword ptr [rcx + r13*8], rbp
	test	rbp, rbp
	je	.label_370
	mov	rdi, rbp
	call	fileno
	test	eax, eax
	mov	r15b, 1
	je	.label_376
	mov	r15d, r14d
.label_376:
	mov	esi, 2
	mov	rdi, rbp
	call	fadvise
	mov	r14b, r15b
	mov	rdi, r13
	mov	rbp, rbx
.label_355:
	inc	rdi
	cmp	rdi, r12
	jb	.label_353
	test	r14b, 1
	je	.label_390
	cmp	byte ptr [rip + have_read_stdin],  1
	je	.label_381
.label_390:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	qword ptr [rsp + 0x30], r12
	mov	qword ptr [rsp + 0x40], rbp
	nop	dword ptr [rax]
.label_371:
	test	rdi, rdi
	je	.label_350
	test	r12, r12
	je	.label_350
	mov	rbx, qword ptr [rip + delims]
	xor	r15d, r15d
	xor	edx, edx
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	nop	word ptr cs:[rax + rax]
.label_354:
	mov	r13, qword ptr [rbp + r15*8]
	test	r13, r13
	je	.label_348
	mov	r12, rdx
	mov	qword ptr [rsp + 0x28], rdi
	mov	rax, qword ptr [r13 + 8]
	cmp	rax, qword ptr [r13 + 0x10]
	jae	.label_352
	lea	rcx, [rax + 1]
	mov	qword ptr [r13 + 8], rcx
	movzx	r14d, byte ptr [rax]
.label_357:
	call	__errno_location
	mov	rbp, rax
	mov	eax, dword ptr [rbp]
	mov	dword ptr [rsp + 0x3c], eax
	mov	rdx, r12
	test	rdx, rdx
	je	.label_360
	cmp	r14d, -1
	je	.label_360
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
	jne	.label_364
.label_360:
	cmp	r14d, -1
	mov	esi, 0
	je	.label_374
	mov	al, byte ptr [rip + line_delim]
	test	al, al
	mov	eax, 0xa
	cmovne	eax, esi
	cmp	r14d, eax
	mov	eax, r14d
	mov	r12, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x40]
	je	.label_378
	nop	word ptr cs:[rax + rax]
.label_389:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_375
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r14b
.label_362:
	mov	rax, qword ptr [r13 + 8]
	cmp	rax, qword ptr [r13 + 0x10]
	jae	.label_373
	lea	rcx, [rax + 1]
	mov	qword ptr [r13 + 8], rcx
	movzx	r14d, byte ptr [rax]
.label_358:
	movzx	eax, byte ptr [rip + line_delim]
	test	al, al
	mov	eax, 0xa
	cmovne	eax, esi
	cmp	r14d, eax
	mov	eax, r14d
	jne	.label_389
	jmp	.label_378
.label_375:
	movzx	esi, r14b
	mov	r14, rdx
	call	__overflow
	mov	rdx, r14
	xor	esi, esi
	test	eax, eax
	jns	.label_362
	jmp	.label_364
.label_373:
	mov	rdi, r13
	mov	r14, rdx
	call	__uflow
	mov	rdx, r14
	xor	esi, esi
	mov	r14d, eax
	mov	eax, 0xffffffff
	cmp	r14d, -1
	jne	.label_358
	nop	word ptr cs:[rax + rax]
.label_378:
	inc	r15
	cmp	r15, r12
	jne	.label_366
	mov	cl, byte ptr [rip + line_delim]
	test	cl, cl
	mov	ecx, 0xa
	cmovne	ecx, esi
	cmp	eax, -1
	cmovne	ecx, eax
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_368
	lea	rsi, [rax + 1]
	mov	qword ptr [rdi + 0x28], rsi
	mov	byte ptr [rax], cl
	jmp	.label_377
	.section	.text
	.align	32
	#Procedure 0x404996
	.globl sub_404996
	.type sub_404996, @function
sub_404996:

	nop	word ptr cs:[rax + rax]
.label_374:
	mov	r14, rdx
	test	byte ptr [r13], 0x20
	je	.label_380
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rax + r15*8]
	mov	dword ptr [rsp + 0xc], 0
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_11
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x3c]
	call	error
.label_380:
	cmp	r13, qword ptr [rip + stdin]
	je	.label_386
	mov	rdi, r13
	call	rpl_fclose
	cmp	eax, -1
	mov	r12, qword ptr [rsp + 0x30]
	jne	.label_359
	mov	ebp, dword ptr [rbp]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rax + r15*8]
	mov	dword ptr [rsp + 0xc], 0
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_11
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_359
.label_366:
	mov	cl, byte ptr [rip + line_delim]
	test	cl, cl
	mov	ecx, 0xa
	cmovne	ecx, esi
	cmp	eax, -1
	je	.label_361
	cmp	eax, ecx
	je	.label_361
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_382
	lea	rsi, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rsi
	mov	byte ptr [rcx], al
.label_361:
	movzx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_369
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_372
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_369:
	inc	rbx
	cmp	rbx, qword ptr [rip + delim_end]
	cmove	rbx, qword ptr [rip + delims]
.label_377:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	rdi, qword ptr [rsp + 0x28]
	jmp	.label_363
.label_386:
	mov	rdi, r13
	call	clearerr_unlocked
	mov	r12, qword ptr [rsp + 0x30]
.label_359:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbp + r15*8], 0
	mov	rdi, qword ptr [rsp + 0x28]
	dec	rdi
	mov	rdx, r14
.label_348:
	inc	r15
	cmp	r15, r12
	je	.label_356
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_388
	mov	rcx, qword ptr [rsp + 0x20]
	mov	byte ptr [rcx + rdx], al
	inc	rdx
.label_388:
	inc	rbx
	cmp	rbx, qword ptr [rip + delim_end]
	cmove	rbx, qword ptr [rip + delims]
.label_363:
	test	rdi, rdi
	je	.label_350
	cmp	r15, r12
	jb	.label_354
	jmp	.label_350
.label_352:
	mov	rdi, r13
	call	__uflow
	mov	r14d, eax
	jmp	.label_357
.label_368:
	movzx	esi, cl
	mov	r14, rdx
	call	__overflow
	mov	rdx, r14
	mov	cl, 1
	mov	qword ptr [rsp + 0x18], rcx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x28]
	jns	.label_363
	jmp	.label_364
.label_372:
	mov	r14, rdx
	call	__overflow
	mov	rdx, r14
	test	eax, eax
	jns	.label_369
	jmp	.label_364
.label_382:
	movzx	esi, al
	mov	r14, rdx
	call	__overflow
	mov	rdx, r14
	test	eax, eax
	jns	.label_361
	jmp	.label_364
.label_356:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, 1
	je	.label_350
	mov	r14, rbp
	test	rdx, rdx
	je	.label_379
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rdx
	call	fwrite_unlocked
	mov	rdi, rbx
	cmp	rax, rbp
	jne	.label_364
.label_379:
	mov	al, byte ptr [rip + line_delim]
	mov	rbx, rdi
	test	al, al
	jne	.label_383
	mov	al, 0xa
	jmp	.label_384
.label_383:
	xor	eax, eax
.label_384:
	mov	rbp, r14
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_385
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	mov	rdi, rbx
	nop	word ptr cs:[rax + rax]
.label_350:
	test	rdi, rdi
	jne	.label_371
	jmp	.label_349
.label_385:
	movzx	esi, al
	call	__overflow
	test	eax, eax
	mov	rdi, rbx
	jns	.label_350
	call	write_error
.label_349:
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
.label_364:
	call	write_error
.label_370:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rax + r13*8]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_387:
	call	xalloc_die
.label_381:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d15
	.globl sub_404d15
	.type sub_404d15, @function
sub_404d15:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d22
	.globl sub_404d22
	.type sub_404d22, @function
sub_404d22:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d46
	.globl sub_404d46
	.type sub_404d46, @function
sub_404d46:

	nop	word ptr cs:[rax + rax]

	.section	.text
	hlt	
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b20

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	
	.section	.text
	.align	32
	#Procedure 0x401d50

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.29
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.15
	call	strcmp
	test	eax, eax
	je	.label_9
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_10
.label_9:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.15
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.15
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.15
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.43
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e70

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
	mov	r13, rsi
	mov	ebp, edi
	mov	dword ptr [rsp + 0xd4], 0xffffffff
	mov	dword ptr [rsp + 0xd0], 0xffffffff
	mov	dword ptr [rsp + 0xcc], 0xffffffff
	mov	dword ptr [rsp + 0xc8], 0xffffffff
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.17_0
	mov	esi, OFFSET FLAT:.str.18_0
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.17_0
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rdi, [rsp + 0xa0]
	call	chopt_init
	mov	r15d, 0x10
	mov	r12d, 0xffffffff
.label_916:
	xor	r14d, r14d
	jmp	.label_11
.label_31:
	mov	dword ptr [rsp + 0xa0], 1
	nop	word ptr cs:[rax + rax]
.label_11:
	mov	edx, OFFSET FLAT:.str.19
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r13
	call	getopt_long
	cmp	eax, 0x65
	jg	.label_15
	cmp	eax, 0x4f
	jg	.label_16
	cmp	eax, 0x47
	jle	.label_18
	mov	r15d, 0x11
	cmp	eax, 0x48
	je	.label_11
	cmp	eax, 0x4c
	jne	.label_14
	mov	r15d, 2
	jmp	.label_11
	nop	word ptr cs:[rax + rax]
.label_15:
	lea	ecx, [rax - 0x76]
	cmp	ecx, 0xe
	ja	.label_25
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_26]]
.label_913:
	mov	dword ptr [rsp + 0xa0], 0
	jmp	.label_11
	nop	dword ptr [rax]
.label_16:
	cmp	eax, 0x50
	je	.label_28
	cmp	eax, 0x52
	je	.label_29
	cmp	eax, 0x63
	je	.label_31
	jmp	.label_14
.label_25:
	cmp	eax, 0x66
	je	.label_33
	cmp	eax, 0x68
	jne	.label_14
	xor	r12d, r12d
	jmp	.label_11
.label_28:
	mov	r15d, 0x10
	jmp	.label_11
.label_29:
	mov	byte ptr [rsp + 0xa4], 1
	jmp	.label_11
.label_914:
	mov	r12d, 1
	jmp	.label_11
.label_915:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	ecx, ecx
	xor	r8d, r8d
	lea	rsi, [rsp + 0xcc]
	lea	rdx, [rsp + 0xc8]
	call	parse_user_spec
	mov	rbx, rax
	test	rbx, rbx
	je	.label_11
	jmp	.label_13
.label_917:
	mov	r14b, 1
	jmp	.label_11
.label_918:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + reference_file]],  rax
	jmp	.label_11
.label_33:
	mov	byte ptr [rsp + 0xb1], 1
	jmp	.label_11
.label_18:
	mov	qword ptr [rsp + 8], r14
	cmp	eax, -1
	jne	.label_17
	mov	r14d, 0x10
	cmp	byte ptr [rsp + 0xa4], 0
	je	.label_20
	cmp	r15d, 0x10
	jne	.label_22
	cmp	r12d, 1
	mov	r12d, 0
	jne	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_22:
	mov	r14d, r15d
.label_20:
	test	r12d, r12d
	setne	byte ptr [rsp + 0xb0]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	edx, ebp
	sub	edx, eax
	mov	rcx,  qword ptr [word ptr [rip + reference_file]]
	cmp	rcx, 1
	mov	esi, 1
	adc	esi, 0
	cmp	edx, esi
	jl	.label_30
	test	rcx, rcx
	je	.label_35
	mov	rdi,  qword ptr [word ptr [rip + reference_file]]
	lea	rsi, [rsp + 0x10]
	call	stat
	test	eax, eax
	jne	.label_37
	mov	edi, dword ptr [rsp + 0x2c]
	mov	dword ptr [rsp + 0xd4], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0xd0], eax
	call	uid_to_name
	mov	qword ptr [rsp + 0xb8], rax
	mov	edi, dword ptr [rsp + 0x30]
	call	gid_to_name
	mov	qword ptr [rsp + 0xc0], rax
	jmp	.label_24
.label_35:
	mov	rdi, qword ptr [r13 + rax*8]
	lea	rcx, [rsp + 0xb8]
	lea	r8, [rsp + 0xc0]
	lea	rsi, [rsp + 0xd4]
	lea	rdx, [rsp + 0xd0]
	call	parse_user_spec
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_19
	cmp	qword ptr [rsp + 0xb8], 0
	jne	.label_21
	mov	rax, qword ptr [rsp + 0xc0]
	test	rax, rax
	je	.label_21
	mov	edi, OFFSET FLAT:.str_0
	call	xstrdup
	mov	qword ptr [rsp + 0xb8], rax
.label_21:
	inc	dword ptr [dword ptr [rip + optind]]
.label_24:
	mov	rax, qword ptr [rsp + 8]
	test	al, al
	je	.label_27
	mov	al, byte ptr [rsp + 0xa4]
	test	al, al
	je	.label_27
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0xa8], rax
	test	rax, rax
	je	.label_32
.label_27:
	or	r14d, 0x400
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [r13 + rax*8]
	mov	edx, dword ptr [rsp + 0xd4]
	mov	ecx, dword ptr [rsp + 0xd0]
	mov	r8d, dword ptr [rsp + 0xcc]
	mov	r9d, dword ptr [rsp + 0xc8]
	lea	rax, [rsp + 0xa0]
	mov	qword ptr [rsp], rax
	mov	esi, r14d
	call	chown_files
	movzx	eax, al
	xor	eax, 1
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_17:
	cmp	eax, 0xffffff7d
	je	.label_12
	cmp	eax, 0xffffff7e
	jne	.label_14
	xor	edi, edi
	call	usage
.label_12:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.22
	mov	r9d, OFFSET FLAT:.str.23
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_14:
	mov	edi, 1
	call	usage
.label_30:
	xor	edi, edi
	cmp	eax, ebp
	jge	.label_23
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [r13 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_13:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_34
.label_37:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + reference_file]]
	mov	edi, 4
	jmp	.label_36
.label_32:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str_1
.label_36:
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_23:
	mov	esi, OFFSET FLAT:.str.25
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
.label_19:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r13 + rax*8]
.label_34:
	call	quote
	mov	rbp, rax
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x402380

	.globl chopt_init
	.type chopt_init, @function
chopt_init:
	mov	dword ptr [rdi], 2
	mov	qword ptr [rdi + 8], 0
	mov	byte ptr [rdi + 0x10], 1
	mov	byte ptr [rdi + 4], 0
	mov	byte ptr [rdi + 0x11], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x18], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023b0
	.globl chopt_free
	.type chopt_free, @function
chopt_free:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x20]
	pop	rbx
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023d0

	.globl gid_to_name
	.type gid_to_name, @function
gid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getgrgid
	test	rax, rax
	je	.label_39
	mov	rdi, qword ptr [rax]
	jmp	.label_38
.label_39:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_38:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402400

	.globl uid_to_name
	.type uid_to_name, @function
uid_to_name:
	push	rbx
	sub	rsp, 0x20
	mov	ebx, edi
	call	getpwuid
	test	rax, rax
	je	.label_41
	mov	rdi, qword ptr [rax]
	jmp	.label_40
.label_41:
	mov	edi, ebx
	lea	rsi, [rsp]
	call	umaxtostr
	mov	rdi, rax
.label_40:
	call	xstrdup
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402430

	.globl chown_files
	.type chown_files, @function
chown_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	ebp, r9d
	mov	r14d, ecx
	mov	r15d, edx
	mov	r12, qword ptr [rsp + 0x50]
	mov	ebx, ebp
	and	ebx, r8d
	xor	eax, eax
	cmp	ebx, -1
	je	.label_47
	mov	dword ptr [rsp + 0x10], r8d
	jmp	.label_44
.label_47:
	mov	dword ptr [rsp + 0x10], r8d
	cmp	byte ptr [r12 + 0x10], 0
	jne	.label_44
	xor	eax, eax
	cmp	dword ptr [r12], 2
	jne	.label_44
	mov	eax, 8
.label_44:
	or	eax, esi
	xor	edx, edx
	mov	esi, eax
	call	xfts_open
	mov	r13, rax
	mov	rdi, r13
	call	rpl_fts_read
	mov	bl, 1
	test	rax, rax
	je	.label_42
	mov	dword ptr [rsp + 0x14], r14d
	mov	r14d, dword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_43:
	mov	qword ptr [rsp], r12
	mov	rdi, r13
	mov	rsi, rax
	mov	edx, r15d
	mov	ecx, dword ptr [rsp + 0x14]
	mov	r8d, r14d
	mov	r9d, ebp
	call	change_file_owner
	and	bl, al
	mov	rdi, r13
	call	rpl_fts_read
	test	rax, rax
	jne	.label_43
.label_42:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	je	.label_46
	cmp	byte ptr [r12 + 0x11], 0
	je	.label_48
	xor	ebx, ebx
	jmp	.label_46
.label_48:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_46:
	mov	rdi, r13
	call	rpl_fts_close
	test	eax, eax
	je	.label_45
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_45:
	mov	al, bl
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402560

	.globl change_file_owner
	.type change_file_owner, @function
change_file_owner:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	r12d, r8d
	mov	r8d, ecx
	mov	r11d, edx
	mov	rbx, rdi
	mov	rbp, qword ptr [rsp + 0x100]
	mov	r13, qword ptr [rsi + 0x30]
	mov	rax, qword ptr [rsi + 0x38]
	mov	qword ptr [rsp + 0x30], rax
	movzx	eax, word ptr [rsi + 0x70]
	dec	eax
	cmp	eax, 9
	ja	.label_70
	jmp	qword ptr [word ptr [+ (rax * 8) + label_79]]
.label_839:
	cmp	byte ptr [rbp + 4], 0
	je	.label_70
	mov	rax, qword ptr [rbp + 8]
	mov	r15b, 1
	test	rax, rax
	je	.label_56
	mov	rcx, qword ptr [rsi + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_56
	mov	rcx, qword ptr [rsi + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_56
	mov	rbp, rbx
	mov	r13, rsi
	mov	rbx, qword ptr [rsp + 0x30]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	jne	.label_86
	cmp	byte ptr [rbx + 1], 0
	je	.label_90
.label_86:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r12, rbp
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_1
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, rbp
	mov	rbp, r12
	mov	r8, rbx
	call	error
	jmp	.label_69
.label_840:
	mov	rdi, rbx
	mov	rbp, rsi
	mov	r14d, r8d
	mov	r15d, r11d
	mov	dword ptr [rsp + 0x28], r12d
	mov	r12d, r9d
	call	cycle_warning_required
	mov	r9d, r12d
	mov	r12d, dword ptr [rsp + 0x28]
	mov	r11d, r15d
	mov	rsi, rbp
	mov	r8d, r14d
	mov	rdx, qword ptr [rsp + 0x100]
	mov	rbp, rdx
	test	al, al
	je	.label_70
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_56
.label_841:
	mov	qword ptr [rsp + 0x28], rbx
	mov	bl, 1
	xor	r12d, r12d
	cmp	byte ptr [rbp + 0x11], 0
	jne	.label_64
	mov	r15d, dword ptr [rsi + 0x40]
	mov	qword ptr [rsp + 0x20], rsi
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	jmp	.label_88
.label_842:
	mov	r15b, 1
	cmp	byte ptr [rbp + 4], 0
	je	.label_56
.label_70:
	mov	eax, r9d
	and	eax, r12d
	cmp	eax, -1
	jne	.label_54
	cmp	dword ptr [rbp], 2
	jne	.label_54
	cmp	qword ptr [rbp + 8], 0
	jne	.label_54
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_60
.label_54:
	lea	r14, [rsi + 0x78]
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_62
	mov	eax, 0xf000
	and	eax, dword ptr [rsi + 0x90]
	cmp	eax, 0xa000
	jne	.label_62
	mov	edi, dword ptr [rbx + 0x2c]
	lea	r14, [rsp + 0x38]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rsi
	mov	rsi, r13
	mov	rdx, r14
	mov	dword ptr [rsp + 0x28], r12d
	mov	r12d, r8d
	mov	r15d, r11d
	mov	ebp, r9d
	call	fstatat
	mov	r9d, ebp
	mov	r11d, r15d
	mov	rsi, qword ptr [rsp + 0x20]
	mov	r8d, r12d
	mov	r12d, dword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x100]
	test	eax, eax
	je	.label_62
	mov	qword ptr [rsp + 0x28], rbx
	mov	bl, 1
	lea	r13, [rsp + 0x38]
	cmp	byte ptr [rbp + 0x11], 0
	jne	.label_73
	mov	dword ptr [rsp + 0x1c], r8d
	mov	r14d, r11d
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
	mov	bl, 1
	mov	r11d, r14d
	mov	r8d, dword ptr [rsp + 0x1c]
	xor	r15d, r15d
	jmp	.label_59
.label_62:
	cmp	r12d, -1
	je	.label_52
	mov	eax, dword ptr [r14 + 0x1c]
	cmp	eax, r12d
	sete	dl
	cmp	r9d, -1
	je	.label_57
	cmp	eax, r12d
	je	.label_61
	jmp	.label_57
.label_843:
	mov	qword ptr [rsp + 0x28], rbx
	mov	bl, 1
	xor	r12d, r12d
	cmp	byte ptr [rbp + 0x11], 0
	jne	.label_64
	mov	r14d, dword ptr [rsi + 0x40]
	mov	qword ptr [rsp + 0x20], rsi
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, 3
	mov	r15, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	mov	ebp, r8d
	mov	r12d, r11d
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, r14d
	call	error
	mov	bl, 1
	mov	r11d, r12d
	mov	r8d, ebp
	mov	rbp, r15
	jmp	.label_73
.label_844:
	cmp	qword ptr [rsi + 0x58], 0
	jne	.label_76
	cmp	qword ptr [rsi + 0x20], 0
	je	.label_77
.label_76:
	mov	qword ptr [rsp + 0x28], rbx
	mov	bl, 1
	xor	r12d, r12d
	cmp	byte ptr [rbp + 0x11], 0
	je	.label_78
.label_64:
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x20], rsi
	xor	r15d, r15d
	jmp	.label_59
.label_52:
	mov	dl, 1
	cmp	r9d, -1
	je	.label_57
.label_61:
	cmp	dword ptr [r14 + 0x20], r9d
	sete	dl
.label_57:
	movzx	eax, word ptr [rsi + 0x70]
	cmp	eax, 6
	ja	.label_50
	mov	ecx, 0x56
	bt	ecx, eax
	jae	.label_50
	mov	rax, qword ptr [rbp + 8]
	test	rax, rax
	je	.label_50
	mov	rcx, qword ptr [r14 + 8]
	cmp	rcx, qword ptr [rax]
	jne	.label_50
	mov	rcx, qword ptr [r14]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_50
	mov	rbp, qword ptr [rsp + 0x30]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2f
	jne	.label_55
	cmp	byte ptr [rbp + 1], 0
	je	.label_58
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:.str_1
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	jmp	.label_71
.label_50:
	test	dl, dl
	je	.label_72
	mov	byte ptr [rsp + 0x1b], dl
	mov	qword ptr [rsp + 0x20], rsi
	mov	edi, dword ptr [rbx + 0x2c]
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_74
	mov	qword ptr [rsp + 0x28], rbx
	mov	dword ptr [rsp], r9d
	mov	rsi, r13
	mov	qword ptr [rsp + 0x10], r13
	mov	rdx, r14
	mov	r13, r14
	mov	ecx, r11d
	mov	dword ptr [rsp + 0x1c], r11d
	mov	r14d, r8d
	mov	r9d, r12d
	call	restricted_chown
	add	eax, -2
	cmp	eax, 4
	ja	.label_80
	mov	bl, 1
	xor	r15d, r15d
	xor	r12d, r12d
	mov	rdx, qword ptr [rsp + 0x100]
	mov	rbp, rdx
	mov	r8d, r14d
	mov	r11d, dword ptr [rsp + 0x1c]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_83]]
.label_932:
	mov	bl, 1
	mov	al, byte ptr [rsp + 0x1b]
	mov	r12b, al
	mov	r15b, 1
	jmp	.label_59
.label_72:
	mov	r13, r14
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x28], rbx
	mov	bl, 1
	xor	r12d, r12d
	mov	r15b, 1
	jmp	.label_59
.label_74:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rsi, r13
	mov	edx, r11d
	mov	dword ptr [rsp + 0x1c], r11d
	mov	ecx, r8d
	mov	r12d, r8d
	call	lchownat
	test	eax, eax
	sete	r15b
	mov	bl, 1
	mov	r13, r14
	je	.label_63
	call	__errno_location
	cmp	dword ptr [rax], 0x5f
	setne	bl
	mov	al, 1
	je	.label_66
	mov	al, r15b
.label_66:
	mov	r15b, al
.label_63:
	mov	rdx, qword ptr [rsp + 0x100]
	mov	rbp, rdx
	mov	r8d, r12d
	mov	r11d, dword ptr [rsp + 0x1c]
	jmp	.label_68
.label_78:
	mov	r15d, dword ptr [rsi + 0x40]
	mov	qword ptr [rsp + 0x20], rsi
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
.label_88:
	mov	edx, 5
	mov	r14d, r8d
	mov	r12d, r11d
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
	mov	bl, 1
	mov	r11d, r12d
	mov	r8d, r14d
	mov	rbp, qword ptr [rsp + 0x100]
.label_73:
	xor	r12d, r12d
	xor	r15d, r15d
.label_59:
	cmp	dword ptr [rbp], 2
	je	.label_82
	mov	al, r15b
	and	al, 1
	test	r12b, r12b
	je	.label_84
	mov	cl, bl
	and	cl, r15b
	je	.label_84
	cmp	r11d, -1
	je	.label_87
	cmp	dword ptr [r13 + 0x1c], r11d
	jne	.label_89
.label_87:
	cmp	r8d, -1
	je	.label_84
	cmp	dword ptr [r13 + 0x20], r8d
	jne	.label_89
.label_84:
	cmp	dword ptr [rbp], 0
	jne	.label_82
	test	al, al
	movzx	eax, bl
	lea	eax, [rax + rax*2 + 1]
	mov	r14d, 3
	cmovne	r14d, eax
	xor	r12d, r12d
	test	r13, r13
	mov	ebx, 0
	jne	.label_49
	jmp	.label_81
.label_89:
	movzx	ecx, bl
	inc	ecx
	test	al, al
	mov	r14d, 3
	cmovne	r14d, ecx
.label_49:
	mov	edi, dword ptr [r13 + 0x1c]
	mov	rbx, rbp
	call	uid_to_name
	mov	r12, rax
	mov	edi, dword ptr [r13 + 0x20]
	call	gid_to_name
	mov	rbp, rbx
	mov	rbx, rax
.label_81:
	mov	r8, qword ptr [rbp + 0x18]
	mov	r9, qword ptr [rbp + 0x20]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, r14d
	mov	rdx, r12
	mov	rcx, rbx
	call	describe_change
	mov	rdi, r12
	call	free
	mov	rdi, rbx
	call	free
.label_82:
	cmp	byte ptr [rbp + 4], 0
	mov	rdi, qword ptr [rsp + 0x28]
	jne	.label_53
	mov	edx, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	rpl_fts_set
.label_53:
	and	r15b, 1
.label_56:
	mov	al, r15b
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_77:
	mov	qword ptr [rsi + 0x20], 1
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fts_set
	mov	r15b, 1
	jmp	.label_56
.label_933:
	mov	rax, qword ptr [rsp + 0x28]
	mov	edi, dword ptr [rax + 0x2c]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	r14, rbp
	mov	edx, r11d
	mov	ecx, r8d
	mov	ebp, r8d
	mov	r15d, r11d
	call	chownat
	mov	bl, 1
	mov	r11d, r15d
	mov	r8d, ebp
	mov	rbp, r14
	test	eax, eax
	sete	r15b
.label_68:
	mov	cl, byte ptr [rsp + 0x1b]
	test	cl, cl
	je	.label_85
	mov	al, r15b
	and	al, 1
	jne	.label_51
	mov	r14d, r11d
	cmp	byte ptr [rbp + 0x11], 0
	je	.label_65
	mov	r12b, cl
	mov	r11d, r14d
	jmp	.label_59
.label_85:
	mov	r12b, cl
	jmp	.label_59
.label_51:
	mov	r12b, cl
	jmp	.label_59
.label_65:
	mov	r12b, cl
	mov	byte ptr [rsp + 0x10], bl
	mov	dword ptr [rsp + 0x1c], r8d
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	cmp	r14d, -1
	je	.label_75
	mov	esi, OFFSET FLAT:.str.11_0
	jmp	.label_67
.label_60:
	lea	r14, [rsi + 0x78]
	mov	dl, 1
	jmp	.label_57
.label_58:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_71:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_56
.label_75:
	mov	esi, OFFSET FLAT:.str.12_0
.label_67:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	rdx, qword ptr [rsp + 0x100]
	mov	rbp, rdx
	mov	r8d, dword ptr [rsp + 0x1c]
	mov	r11d, r14d
	mov	bl, byte ptr [rsp + 0x10]
	jmp	.label_59
.label_90:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	call	error
.label_69:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edx, 4
	mov	rdi, rbp
	mov	rsi, r13
	call	rpl_fts_set
	mov	rdi, rbp
	call	rpl_fts_read
	jmp	.label_56
.label_80:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x402d80

	.globl restricted_chown
	.type restricted_chown, @function
restricted_chown:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r13d, r9d
	mov	rbp, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	eax, dword ptr [rsp + 0xd0]
	and	eax, r13d
	mov	ebx, 5
	cmp	eax, -1
	je	.label_91
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x18]
	mov	r12d, 0x900
	cmp	eax, 0x8000
	je	.label_98
	cmp	eax, 0x4000
	jne	.label_91
	mov	r12d, 0x10900
.label_98:
	mov	dword ptr [rsp], ecx
	mov	dword ptr [rsp + 4], r8d
	xor	eax, eax
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r12d
	call	openat
	test	eax, eax
	jns	.label_97
	call	__errno_location
	mov	rcx, rax
	cmp	dword ptr [rcx], 0xd
	jne	.label_94
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x18]
	cmp	eax, 0x8000
	jne	.label_94
	or	r12d, 1
	xor	eax, eax
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r12d
	mov	rbx, rcx
	call	openat
	mov	rcx, rbx
	test	eax, eax
	js	.label_94
.label_97:
	lea	rsi, [rsp + 8]
	mov	edi, eax
	mov	r15d, edi
	call	__fstat
	mov	ebx, 6
	test	eax, eax
	jne	.label_93
	mov	rax, qword ptr [rbp + 8]
	mov	ebx, 4
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_93
	mov	rax, qword ptr [rbp]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_93
	cmp	r13d, -1
	je	.label_96
	mov	ebx, 2
	cmp	dword ptr [rsp + 0x24], r13d
	jne	.label_93
.label_96:
	cmp	dword ptr [rsp + 0xd0], -1
	je	.label_92
	mov	ebx, 2
	mov	eax, dword ptr [rsp + 0xd0]
	cmp	dword ptr [rsp + 0x28], eax
	jne	.label_93
.label_92:
	mov	edi, r15d
	mov	esi, dword ptr [rsp]
	mov	edx, dword ptr [rsp + 4]
	call	fchown
	test	eax, eax
	mov	ebx, 6
	je	.label_95
.label_93:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, r15d
	call	close
	mov	dword ptr [rbp], r14d
	jmp	.label_91
.label_94:
	mov	ebx, 5
	cmp	dword ptr [rcx], 0xd
	je	.label_91
	mov	ebx, 6
.label_91:
	mov	eax, ebx
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_95:
	mov	edi, r15d
	call	close
	test	eax, eax
	setne	al
	movzx	eax, al
	lea	ebx, [rax*4 + 2]
	jmp	.label_91
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f10

	.globl describe_change
	.type describe_change, @function
describe_change:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r9
	mov	r14, r8
	mov	rbx, rcx
	mov	rbp, rdx
	mov	r15d, esi
	mov	r12, rdi
	cmp	r15d, 1
	jne	.label_103
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__printf_chk
.label_103:
	mov	qword ptr [rsp + 0x10], r12
	mov	rdi, r14
	mov	rsi, r13
	call	user_group_str
	mov	qword ptr [rsp + 8], rax
	test	r14, r14
	cmove	rbp, r14
	test	r13, r13
	cmove	rbx, r13
	mov	rdi, rbp
	mov	rsi, rbx
	call	user_group_str
	mov	r12, rax
	cmp	r15d, 4
	je	.label_111
	cmp	r15d, 3
	je	.label_113
	cmp	r15d, 2
	jne	.label_115
	test	r14, r14
	je	.label_99
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
	jmp	.label_100
.label_111:
	xor	edi, edi
	test	r14, r14
	je	.label_105
	mov	esi, OFFSET FLAT:.str.22_0
	jmp	.label_100
.label_113:
	test	r12, r12
	je	.label_107
	test	r14, r14
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_109
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_1
	jmp	.label_112
.label_99:
	test	r13, r13
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_114
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15_0
	jmp	.label_112
.label_105:
	test	r13, r13
	je	.label_101
	mov	esi, OFFSET FLAT:.str.23_0
	jmp	.label_100
.label_107:
	test	r14, r14
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_104
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	jmp	.label_108
.label_109:
	xor	edi, edi
	test	r13, r13
	je	.label_110
	mov	esi, OFFSET FLAT:.str.18_1
	jmp	.label_112
.label_114:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	jmp	.label_112
.label_101:
	mov	esi, OFFSET FLAT:.str.24_0
.label_100:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_102
.label_104:
	xor	edi, edi
	test	r13, r13
	je	.label_106
	mov	esi, OFFSET FLAT:.str.21
	jmp	.label_108
.label_110:
	mov	esi, OFFSET FLAT:.str.19_0
.label_112:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_102
.label_106:
	mov	esi, OFFSET FLAT:.str.19_0
.label_108:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rbp, qword ptr [rsp + 8]
	mov	rdi, r12
	call	free
	mov	r12, rbp
	xor	ebp, ebp
.label_102:
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	mov	rcx, r12
	mov	r8, rbp
	call	__printf_chk
	mov	rdi, r12
	call	free
	mov	rdi, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_115:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403100

	.globl user_group_str
	.type user_group_str, @function
user_group_str:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_116
	test	r14, r14
	je	.label_117
	mov	rdi, rbx
	call	strlen
	mov	r15, rax
	mov	rdi, r14
	call	strlen
	lea	rdi, [r15 + rax + 2]
	call	xmalloc
	mov	r15, rax
	mov	rdi, r15
	mov	rsi, rbx
	call	stpcpy
	mov	word ptr [rax], 0x3a
	lea	rdi, [rax + 1]
	mov	rsi, r14
	call	stpcpy
	jmp	.label_118
.label_116:
	xor	r15d, r15d
	test	r14, r14
	je	.label_118
	mov	rdi, r14
	jmp	.label_119
.label_118:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_117:
	mov	rdi, rbx
.label_119:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403180
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403190
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_122
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_120
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_120
.label_122:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_123
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_120:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_4
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_121
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_123:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_121:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403260

	.globl chownat
	.type chownat, @function
chownat:
	xor	r8d, r8d
	jmp	fchownat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403270

	.globl lchownat
	.type lchownat, @function
lchownat:
	mov	r8d, 0x100
	jmp	fchownat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403280

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_124:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_124
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032d0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_126
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_125
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_125
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_127
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_127:
	mov	rbx, r14
.label_125:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_126:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_5
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403380
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033c0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4033d0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4033e0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	al, cl
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403420
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403440

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_128
	test	rdx, rdx
	je	.label_128
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_128:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403470
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rdx, [rbp + 8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034f0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	ebx, r9d
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	shr	r15b, 1
	and	r15b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	xor	r11d, r11d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_248:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_228
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_235]]
.label_927:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11_1
	mov	esi, r13d
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	edi, OFFSET FLAT:.str.12_1
	mov	esi, r13d
	call	gettext_quote
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x88], rax
.label_928:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_138
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_138
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_168:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_156
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_156:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_168
.label_138:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rdi, rbx
	mov	r12, r10
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, rbp
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r11d, dword ptr [rsp + 0xb8]
	jmp	.label_169
.label_920:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_169
.label_923:
	mov	al, 1
.label_921:
	mov	r15b, 1
.label_924:
	test	r15b, 1
	mov	cl, 1
	je	.label_196
	mov	cl, al
.label_196:
	mov	al, cl
.label_922:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_199
	test	r10, r10
	je	.label_201
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_202
.label_199:
	xor	ecx, ecx
	jmp	.label_202
.label_925:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_206
	test	r10, r10
	je	.label_226
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_212
.label_926:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_169
.label_201:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_202:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_169
.label_206:
	xor	eax, eax
	jmp	.label_212
.label_226:
	mov	eax, 1
.label_212:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_169:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	cmp	qword ptr [rsp + 0x140], 0
	setne	bl
	cmp	r14d, 2
	setne	r15b
	sete	dl
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	and	al, 1
	mov	byte ptr [rsp + 0xcf], al
	sete	cl
	and	dl, al
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	and	sil, dil
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	xor	esi, esi
	jmp	.label_129
	nop	dword ptr [rax + rax]
.label_216:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_129:
	cmp	rbp, -1
	je	.label_178
	cmp	rsi, rbp
	jne	.label_180
	jmp	.label_183
	nop	dword ptr [rax]
.label_178:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_183
.label_180:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_187
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_189
	cmp	rbp, -1
	jne	.label_189
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rdi, r9
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r14
	mov	r12, r9
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	r14, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_189:
	cmp	rbx, rbp
	jbe	.label_209
.label_187:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_131:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_213
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_215]]
.label_900:
	test	rsi, rsi
	jne	.label_173
	jmp	.label_221
	nop	word ptr cs:[rax + rax]
.label_209:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	mov	r13, r14
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rdx, qword ptr [rsp + 0xd0]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_240
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_131
	jmp	.label_132
.label_240:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_131
.label_904:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_144
	test	rsi, rsi
	jne	.label_150
	cmp	rbp, 1
	je	.label_221
	xor	r15d, r15d
	jmp	.label_152
.label_893:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_155
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_132
	cmp	edi, 2
	jne	.label_162
	mov	al, r11b
	and	al, 1
	jne	.label_166
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_170
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_170:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_195
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_195:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_179
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_179:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_204
.label_894:
	mov	bl, 0x62
	jmp	.label_198
.label_895:
	mov	cl, 0x74
	jmp	.label_193
.label_896:
	mov	bl, 0x76
	jmp	.label_198
.label_897:
	mov	bl, 0x66
	jmp	.label_198
.label_898:
	mov	cl, 0x72
	jmp	.label_193
.label_901:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_200
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_141
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_208
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_208:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_223
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_223:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_230
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_230:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_238
.label_902:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_244
	cmp	r14d, 2
	jne	.label_197
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_141
.label_197:
	mov	rdi, r14
	jmp	.label_173
.label_903:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_245
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_141
	mov	rdi, r14
	jmp	.label_136
.label_213:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_139
	mov	r14, r9
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	shr	r15d, 0xe
	and	r15b, 1
	mov	ebx, 1
.label_182:
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r11d, dword ptr [rsp + 0xb8]
	ja	.label_158
	test	dl, dl
	je	.label_158
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_152
.label_144:
	test	rsi, rsi
	jne	.label_176
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_176
.label_221:
	mov	dl, 1
.label_899:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_132
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_152
.label_155:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_173
	mov	r14, rdi
	inc	rsi
	jmp	.label_129
.label_200:
	mov	rdi, r14
.label_238:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_152
.label_245:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_193
.label_136:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_135
.label_193:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_132
.label_198:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_152
	jmp	.label_145
.label_139:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_210
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_210:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_160:
	lea	rax, [rbx + rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_246
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_239
	cmp	rbp, -2
	je	.label_247
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_249
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_147:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_140
	bt	rsi, rdx
	jb	.label_143
.label_140:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_147
.label_249:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_211
	xor	r15d, r15d
.label_211:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_160
	jmp	.label_182
.label_176:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_152
.label_244:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_173
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_173
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_173
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_181
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_186
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_132
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_191
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_191:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_185
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_185:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_207
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_207:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_222
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_222:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_152
.label_173:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_152:
	test	r12b, r12b
	je	.label_188
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_227
	jmp	.label_232
	nop	word ptr cs:[rax + rax]
.label_188:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_232
.label_227:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_236
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_135
	jmp	.label_145
	nop	word ptr cs:[rax + rax]
.label_232:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_145
	jmp	.label_135
.label_236:
	mov	bl, r13b
	mov	rsi, r14
.label_145:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_132
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_142
	mov	al, r11b
	and	al, 1
	jne	.label_142
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_148
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_148:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_250
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_250:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_163
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_163:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_142:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_174
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_174:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_177
.label_150:
	xor	r15d, r15d
	jmp	.label_152
.label_158:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_184
	nop	word ptr cs:[rax + rax]
.label_167:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_184:
	test	dl, dl
	je	.label_192
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_194
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_233
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_233:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_194
	nop	word ptr [rax + rax]
.label_192:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_141
	cmp	r14d, 2
	jne	.label_146
	mov	al, r11b
	and	al, 1
	jne	.label_146
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_218
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_218:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_203
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_203:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_217
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_217:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_146:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_149
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_149:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_224
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_224:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_137
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_137:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_194:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_135
	test	r11b, 1
	je	.label_159
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_161
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_165
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_165:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_225
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_225:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_161
	nop	word ptr cs:[rax + rax]
.label_159:
	mov	r14, rdi
.label_161:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_167
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_167
.label_135:
	test	r11b, 1
	je	.label_130
	and	al, 1
	jne	.label_130
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_151
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_151:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_205
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_205:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_177
	nop	dword ptr [rax + rax]
.label_130:
	mov	bl, r13b
	mov	r14, rdi
.label_177:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_216
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_216
.label_162:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_204
.label_166:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_204:
	cmp	rcx, r10
	jae	.label_234
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_234:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_231
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_241
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_214
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_133
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_133:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_153
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_153:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_152
.label_231:
	xor	r15d, r15d
	jmp	.label_152
.label_241:
	xor	r15d, r15d
	jmp	.label_152
.label_214:
	xor	r15d, r15d
	jmp	.label_152
.label_246:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_154
.label_239:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_157
.label_247:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_164
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_175:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_172
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_175
	xor	r15d, r15d
	jmp	.label_154
.label_164:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_157:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_154:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_182
.label_172:
	xor	r15d, r15d
	jmp	.label_154
.label_181:
	xor	r15d, r15d
	jmp	.label_152
.label_186:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_152
	nop	dword ptr [rax + rax]
.label_183:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_190
	or	dl, al
	je	.label_141
.label_190:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_171
	or	dl, al
	jne	.label_171
	test	r8b, 1
	jne	.label_219
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_171
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_248
.label_171:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_220
	test	cl, cl
	jne	.label_220
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_220
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_237:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_229
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_229:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_237
.label_220:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_243
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_243
.label_132:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_134:
	test	r8b, 1
	mov	r8d, 4
	cmove	r8d, r14d
	cmp	r14d, 2
	cmovne	r8d, r14d
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rcx, rbp
.label_242:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_243:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_143:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_134
.label_141:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_134
.label_219:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_242
.label_228:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404700
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404710

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	sete	al
	movzx	ebp, al
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_251
	mov	qword ptr [rax], rbx
.label_251:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404810
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_252
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_254:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_254
.label_252:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_255
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_256]], OFFSET FLAT:slot0
.label_255:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_253
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_253:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048b0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4048c0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rcx
	mov	r14, rdx
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_257
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_260
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_263
.label_260:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_259
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	lea	r15d, [rbx + 1]
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_258
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_258:
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_263:
	mov	qword ptr [rsp + 0x38], r14
	movsxd	r13, ebx
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	mov	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	lea	rdx, [rcx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, r14
	mov	r9d, r12d
	call	quotearg_buffer_restyled
	mov	r14, rax
	cmp	r15, r14
	ja	.label_261
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_262
	mov	rdi, rbx
	call	free
.label_262:
	mov	rdi, r14
	call	xcharalloc
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rcx]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	call	quotearg_buffer_restyled
.label_261:
	mov	rax, qword ptr [rsp + 0x30]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_257:
	call	abort
.label_259:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a90

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404aa0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ab0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
	.section	.text
	.align	32
	#Procedure 0x404ac0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	rbx, rdx
	mov	ebp, edi
	lea	r14, [rsp + 8]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b00

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_264
	mov	dword ptr [rdi], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	movups	xmmword ptr [rdi + 4], xmm0
	mov	rax, rdi
	add	rsp, 0x38
	ret	
.label_264:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b60

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, rcx
	mov	rbx, rdx
	mov	ebp, edi
	lea	r15, [rsp]
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ba0

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404be0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	eax, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_265]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_266]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_267]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	edx, 1
	mov	rdi, r15
	mov	esi, eax
	call	set_char_quoting
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404c50

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404c60

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c70
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c80

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	quoting_options_from_style
	mov	esi, 0x3a
	mov	edx, 1
	mov	rdi, rbx
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, r14
	mov	rcx, rbx
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404cd0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ce0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_265]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_266]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_267]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d50
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rax, rdx
	mov	rcx, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d70
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	xor	edi, edi
	mov	r8, rax
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d90

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404da0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x404db0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404dc0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404dd0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_269
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rsp], 0
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_268
	mov	eax, OFFSET FLAT:.str.14_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_269
	mov	eax, OFFSET FLAT:.str.15_1
	jmp	.label_269
.label_268:
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_270
	mov	eax, OFFSET FLAT:.str.17_2
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_269
	mov	eax, OFFSET FLAT:.str.18_2
	jmp	.label_269
.label_270:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_1
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_269:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404eb0

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	test	al, al
	je	.label_272
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_273
	jmp	.label_271
.label_272:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_271
.label_273:
	mov	eax, 1
	test	bpl, bpl
	je	.label_271
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_271:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f40

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	test	al, al
	je	.label_275
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_274
	jmp	.label_276
.label_275:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_276
.label_274:
	mov	eax, 1
	test	bpl, bpl
	je	.label_276
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	movsx	r9d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq2
.label_276:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404fd0

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_277
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_279
	jmp	.label_278
.label_277:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_278
.label_279:
	mov	eax, 1
	test	bpl, bpl
	je	.label_278
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq3
.label_278:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405050

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	r12d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 3]
	test	al, al
	je	.label_282
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_281
	jmp	.label_280
.label_282:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_280
.label_281:
	mov	eax, 1
	test	bpl, bpl
	je	.label_280
	movsx	esi, r12b
	movsx	edx, r15b
	movsx	ecx, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_280:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4050c0

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	r15d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 4]
	test	al, al
	je	.label_285
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_283
	jmp	.label_284
.label_285:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_284
.label_283:
	mov	eax, 1
	test	bpl, bpl
	je	.label_284
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_284:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405130

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	test	al, al
	je	.label_286
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_288
	jmp	.label_287
.label_286:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_287
.label_288:
	mov	eax, 1
	test	bpl, bpl
	je	.label_287
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_287:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405180

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	je	.label_291
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_290
	jmp	.label_289
.label_291:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_289
.label_290:
	mov	eax, 1
	test	bpl, bpl
	je	.label_289
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_289:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051d0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_293
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_294
	jmp	.label_292
.label_293:
	mov	eax, 1
	test	cl, cl
	je	.label_292
.label_294:
	xor	eax, eax
.label_292:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405200

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	mov	edi, OFFSET FLAT:.str_1
	call	__lstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_295
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_295:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405240

	.globl parse_user_spec
	.type parse_user_spec, @function
parse_user_spec:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, r8
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r13, rdi
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_296
	mov	esi, 0x3a
	mov	rdi, r13
	call	strchr
	mov	r14, rax
.label_296:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, rbp
	mov	qword ptr [rsp], rbp
	call	parse_with_separator
	mov	rbp, rax
	test	rbx, rbx
	je	.label_298
	test	r14, r14
	jne	.label_298
	test	rbp, rbp
	je	.label_298
	mov	esi, 0x2e
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_298
	mov	rdi, r13
	mov	rsi, rax
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, qword ptr [rsp]
	call	parse_with_separator
	test	rax, rax
	cmovne	rax, rbp
	jmp	.label_297
.label_298:
	mov	rax, rbp
.label_297:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052f0

	.globl parse_with_separator
	.type parse_with_separator, @function
parse_with_separator:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbp, r8
	mov	r15, rsi
	mov	eax, dword ptr [rdx]
	mov	esi, 0xffffffff
	test	rcx, rcx
	je	.label_325
	mov	esi, dword ptr [rcx]
.label_325:
	test	rbp, rbp
	je	.label_303
	mov	qword ptr [rbp], 0
.label_303:
	mov	qword ptr [rsp + 0x28], rcx
	test	r9, r9
	je	.label_312
	mov	qword ptr [r9], 0
.label_312:
	test	r15, r15
	je	.label_307
	mov	qword ptr [rsp + 0x10], rsi
	mov	dword ptr [rsp + 0x24], eax
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x18], r9
	xor	r13d, r13d
	mov	rbx, r15
	sub	rbx, rdi
	je	.label_313
	lea	rsi, [rbx + 1]
	call	xmemdup
	mov	r13, rax
	mov	byte ptr [r13 + rbx], 0
.label_313:
	xor	r12d, r12d
	cmp	byte ptr [r15 + 1], 0
	je	.label_322
	lea	r12, [r15 + 1]
	jmp	.label_322
.label_307:
	xor	r14d, r14d
	cmp	byte ptr [rdi], 0
	je	.label_327
	mov	qword ptr [rsp + 0x10], rsi
	mov	dword ptr [rsp + 0x24], eax
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x18], r9
	call	xstrdup
	mov	r13, rax
	xor	r12d, r12d
.label_322:
	xor	r14d, r14d
	test	r13, r13
	je	.label_306
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2b
	je	.label_308
	mov	rdi, r13
	call	getpwnam
	test	rax, rax
	je	.label_308
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rsp + 0x24], ecx
	xor	r14d, r14d
	test	r15, r15
	je	.label_314
	test	r12, r12
	jne	.label_314
	mov	ebx, dword ptr [rax + 0x14]
	mov	edi, ebx
	call	getgrgid
	test	rax, rax
	je	.label_323
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp], rbp
	mov	rdi, qword ptr [rax]
	jmp	.label_326
.label_308:
	mov	qword ptr [rsp], rbp
	mov	ebp, OFFSET FLAT:.str.2_1
	xor	r14d, r14d
	test	r15, r15
	je	.label_299
	test	r12, r12
	je	.label_304
.label_299:
	lea	rcx, [rsp + 0x30]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, r13
	call	xstrtoul
	test	eax, eax
	jne	.label_310
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_310
	xor	ebp, ebp
	cmp	eax, -1
	jne	.label_309
.label_310:
	mov	ebp, OFFSET FLAT:.str_6
	mov	eax, dword ptr [rsp + 0x24]
.label_309:
	xor	r14d, r14d
	mov	dword ptr [rsp + 0x24], eax
	jmp	.label_304
.label_306:
	mov	qword ptr [rsp], rbp
	xor	r13d, r13d
	xor	ebp, ebp
	jmp	.label_320
.label_327:
	mov	dword ptr [rsp + 0x24], eax
	mov	qword ptr [rsp + 8], rdx
	xor	r13d, r13d
	mov	rax, qword ptr [rsp + 0x28]
	jmp	.label_324
.label_314:
	mov	qword ptr [rsp], rbp
	jmp	.label_301
.label_323:
	mov	qword ptr [rsp], rbp
	lea	rsi, [rsp + 0x30]
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x10], rbx
	call	umaxtostr
	mov	rdi, rax
.label_326:
	call	xstrdup
	mov	r14, rax
	call	endgrent
.label_301:
	xor	ebp, ebp
.label_304:
	call	endpwent
.label_320:
	test	r12, r12
	je	.label_311
	test	rbp, rbp
	jne	.label_311
	movzx	eax, byte ptr [r12]
	cmp	eax, 0x2b
	je	.label_318
	mov	rdi, r12
	call	getgrnam
	test	rax, rax
	je	.label_318
	mov	ebx, dword ptr [rax + 0x10]
	jmp	.label_305
.label_311:
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	jmp	.label_319
.label_318:
	lea	rcx, [rsp + 0x30]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, r12
	call	xstrtoul
	test	eax, eax
	jne	.label_300
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rax, rbx
	shr	rax, 0x20
	jne	.label_300
	cmp	ebx, -1
	jne	.label_305
.label_300:
	mov	ebp, OFFSET FLAT:.str.1_3
	mov	rbx, qword ptr [rsp + 0x10]
.label_305:
	call	endgrent
	mov	rdi, r12
	call	xstrdup
	mov	r14, rax
	mov	esi, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x28]
.label_319:
	test	rbp, rbp
	je	.label_315
	xor	ebx, ebx
	jmp	.label_316
.label_315:
	mov	rbp, qword ptr [rsp]
.label_324:
	mov	rcx, qword ptr [rsp + 8]
	mov	edx, dword ptr [rsp + 0x24]
	mov	dword ptr [rcx], edx
	test	rax, rax
	je	.label_317
	mov	dword ptr [rax], esi
.label_317:
	test	rbp, rbp
	je	.label_321
	mov	qword ptr [rbp], r13
	xor	r13d, r13d
.label_321:
	mov	bl, 1
	xor	ebp, ebp
	test	r9, r9
	je	.label_316
	mov	qword ptr [r9], r14
	xor	ebp, ebp
	xor	r14d, r14d
.label_316:
	mov	rdi, r13
	call	free
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	bl, bl
	jne	.label_302
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbp
	call	dcgettext
.label_302:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4055c0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_328
	mov	edx, OFFSET FLAT:.str_7
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_337
.label_328:
	mov	edx, OFFSET FLAT:.str.1_4
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_337:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_331
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_333]]
.label_868:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_331:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_330
.label_869:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_870:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_871:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_336
.label_872:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_329
.label_873:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_335
.label_874:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_2
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_335:
	mov	qword ptr [rsp + 0x10], rdi
.label_329:
	mov	qword ptr [rsp + 8], rsi
.label_336:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_332
.label_876:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_330:
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	r11, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_334
.label_875:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_2
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rax
.label_334:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_332:
	call	__fprintf_chk
.label_867:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_338:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_338
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_340:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_339
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_341
	nop	dword ptr [rax]
.label_339:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_341:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_342
	inc	r9
	cmp	r9, 0xa
	jb	.label_340
.label_342:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405940

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_343
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_343:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	call	version_etc_va
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4059d0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_2
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_2
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_1
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405a50
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_344
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_344:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a80

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_345
	test	rax, rax
	je	.label_346
.label_345:
	pop	rbx
	ret	
.label_346:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405aa0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_347
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_347:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ad0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_348
	test	rbx, rbx
	jne	.label_348
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_348:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_350
	test	rax, rax
	je	.label_349
.label_350:
	pop	rbx
	ret	
.label_349:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405b00

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_351
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_354
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_352
.label_351:
	test	rcx, rcx
	jne	.label_355
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_355:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_353
.label_352:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_354:
	call	xalloc_die
.label_353:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b80

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b90
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ba0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rdi, rbx
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bd0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_356
	call	rpl_calloc
	test	rax, rax
	je	.label_356
	pop	rcx
	ret	
.label_356:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c00

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c30

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	pop	rbx
	jmp	xmemdup
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c50

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405c80

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_358
	pop	rcx
	ret	
.label_358:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_357
	mov	edi, OFFSET FLAT:.str_8
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xfts_open
	call	__assert_fail
.label_357:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cc0

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_359
	cmp	ecx, 0x11
	jne	.label_360
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_359:
	ret	
.label_360:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405ce0

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_380
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_371:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_371
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	movzx	eax, al
	mov	r15d, 4
	cmp	eax, 0x2d
	je	.label_362
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	mov	edx, r14d
	call	strtoul
	mov	rcx, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_383
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_384
	cmp	eax, 0x22
	jne	.label_362
	mov	r12d, 1
.label_384:
	test	rbp, rbp
	jne	.label_365
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jmp	.label_367
.label_383:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_362
	mov	rbx, rcx
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_362
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_362
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_365:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_381
	mov	r13, rcx
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_361
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_375
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_368
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r14d, 1
	mov	rbx, r13
	test	rax, rax
	je	.label_373
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	je	.label_377
	cmp	ecx, 0x44
	je	.label_377
	cmp	ecx, 0x69
	jne	.label_373
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	cmp	eax, 0x42
	je	.label_373
	mov	r14d, 1
	jmp	.label_373
.label_377:
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_373:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_364
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_366
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_369]]
.label_833:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_370
.label_364:
	cmp	eax, 0x73
	jg	.label_372
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_374
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_378]]
.label_891:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_370
.label_366:
	cmp	eax, 0x54
	je	.label_379
	cmp	eax, 0x59
	jne	.label_361
	lea	rdi, [rsp + 8]
	mov	edx, 8
	jmp	.label_363
.label_372:
	cmp	eax, 0x74
	je	.label_379
	cmp	eax, 0x77
	jne	.label_361
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_370:
	call	bkm_scale
	jmp	.label_382
.label_835:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	jmp	.label_363
.label_836:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	jmp	.label_363
.label_837:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	jmp	.label_363
.label_379:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	jmp	.label_363
.label_374:
	cmp	eax, 0x5a
	jne	.label_361
	lea	rdi, [rsp + 8]
	mov	edx, 7
	jmp	.label_363
.label_361:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_376
.label_834:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_363
.label_838:
	lea	rdi, [rsp + 8]
	mov	edx, 5
.label_363:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_382:
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	cmp	byte ptr [rcx + r14], 0
	je	.label_385
	or	eax, 2
.label_385:
	mov	r12d, eax
.label_381:
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_367:
	mov	qword ptr [rcx], rax
.label_376:
	mov	r15d, r12d
.label_362:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_375:
	mov	rbx, r13
	jmp	.label_373
.label_368:
	mov	rbx, r13
	jmp	.label_373
.label_380:
	mov	edi, OFFSET FLAT:.str_9
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ff0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406020

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebx, ebx
	test	ebp, ebp
	je	.label_386
	nop	word ptr cs:[rax + rax]
.label_387:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebx, eax
	dec	ebp
	jne	.label_387
.label_386:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406060

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_388
	test	rsi, rsi
	mov	ecx, 1
	je	.label_389
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_389
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_388:
	mov	ecx, 1
.label_389:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060b0

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbp, rdx
	mov	r14d, esi
	mov	r15, rdi
	cmp	r14d, 0x1000
	jae	.label_397
	mov	eax, r14d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_397
	test	r14b, 0x12
	je	.label_397
	mov	edi, 0x80
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_396
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x70], xmm0
	movups	xmmword ptr [r13 + 0x60], xmm0
	movups	xmmword ptr [r13 + 0x50], xmm0
	movups	xmmword ptr [r13 + 0x40], xmm0
	movups	xmmword ptr [r13 + 0x30], xmm0
	movups	xmmword ptr [r13 + 0x20], xmm0
	movups	xmmword ptr [r13 + 0x10], xmm0
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x40], rbp
	mov	eax, r14d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r14b, 2
	cmove	eax, r14d
	mov	dword ptr [r13 + 0x48], eax
	mov	dword ptr [r13 + 0x2c], 0xffffff9c
	mov	rdi, r15
	call	fts_maxarglen
	cmp	rax, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rax
	mov	rdi, r13
	call	fts_palloc
	test	al, al
	je	.label_407
	xor	r12d, r12d
	cmp	qword ptr [r15], 0
	je	.label_408
	mov	esi, OFFSET FLAT:.str_0
	xor	edx, edx
	mov	rdi, r13
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_391
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_408:
	mov	byte ptr [rsp + 0x27], 1
	test	rbp, rbp
	je	.label_398
	mov	al, byte ptr [r13 + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0x27], al
.label_398:
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	test	r13, r13
	je	.label_401
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x10], rbp
	and	r14d, 0x800
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_393:
	mov	rdi, r13
	call	strlen
	test	r14d, r14d
	jne	.label_392
	cmp	rax, 3
	jb	.label_392
	cmp	rax, 2
	jb	.label_392
	movzx	ecx, byte ptr [rax + r13 - 1]
	cmp	ecx, 0x2f
	jne	.label_392
	nop	word ptr cs:[rax + rax]
.label_399:
	movzx	ecx, byte ptr [r13 + rax - 2]
	cmp	ecx, 0x2f
	jne	.label_392
	dec	rax
	cmp	rax, 1
	ja	.label_399
	nop	word ptr cs:[rax + rax]
.label_392:
	mov	rsi, qword ptr [r15]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_406
	mov	qword ptr [rbp + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbp + 8], rax
	mov	rax, rbp
	add	rax, 0x108
	mov	qword ptr [rbp + 0x30], rax
	mov	rbx, qword ptr [rsp + 0x30]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0x27]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_409
	mov	word ptr [rbp + 0x70], 0xb
	mov	esi, 1
	mov	rdi, rbp
	call	fts_set_stat_required
	jmp	.label_400
.label_409:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
.label_400:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_402
	mov	qword ptr [rbp + 0x10], rbx
	mov	qword ptr [rsp + 0x30], rbp
	jmp	.label_403
.label_402:
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	je	.label_404
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 0x10], rbp
	mov	qword ptr [rsp + 8], rbp
	jmp	.label_403
.label_404:
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x30], rbp
	nop	word ptr [rax + rax]
.label_403:
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	add	r15, 8
	test	r13, r13
	jne	.label_393
	cmp	qword ptr [rsp + 0x10], 0
	mov	rdi, qword ptr [rsp + 0x28]
	je	.label_390
	cmp	r12, 2
	jb	.label_390
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r12
	call	fts_sort
	mov	qword ptr [rsp + 0x30], rax
.label_390:
	mov	r12, qword ptr [rsp + 0x18]
.label_401:
	mov	esi, OFFSET FLAT:.str_0
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_405
	mov	rbx, qword ptr [rsp + 0x30]
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	call	setup_dir
	test	al, al
	je	.label_394
	movzx	eax, word ptr [r13 + 0x48]
	test	ax, 0x204
	jne	.label_395
	mov	esi, OFFSET FLAT:.str_10
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	test	eax, eax
	jns	.label_395
	or	byte ptr [r13 + 0x48], 4
.label_395:
	mov	rdi, r13
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r13
	jmp	.label_396
.label_397:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
.label_396:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_406:
	mov	r12, qword ptr [rsp + 0x18]
.label_405:
	mov	rbx, qword ptr [rsp + 0x30]
.label_394:
	mov	rdi, rbx
	call	fts_lfree
	mov	rdi, r12
	call	free
.label_391:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_407:
	mov	rdi, r13
	call	free
	xor	eax, eax
	jmp	.label_396
	.section	.text
	.align	32
	#Procedure 0x406430

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	mov	r14d, 1
	test	rdi, rdi
	je	.label_410
	add	rbx, 8
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_411:
	call	strlen
	cmp	rax, r14
	cmova	r14, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_411
	inc	r14
.label_410:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406480

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	add	rsi, 0x100
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_412
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	xor	eax, eax
	pop	rbx
	ret	
.label_412:
	mov	qword ptr [rbx + 0x30], rsi
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_413
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	pop	rbx
	ret	
.label_413:
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4064e0

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	lea	rdi, [r15 + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_414
	mov	rdi, rbx
	add	rdi, 0x108
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [rbx + r15 + 0x108], 0
	mov	qword ptr [rbx + 0x60], r15
	mov	qword ptr [rbx + 0x50], r14
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	rax, rbx
.label_414:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406570

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	movzx	eax, word ptr [rdi + 0x70]
	cmp	eax, 0xb
	jne	.label_415
	movzx	eax, sil
	inc	rax
	mov	qword ptr [rdi + 0xa8], rax
	ret	
.label_415:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x406590

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_420
	test	byte ptr [r14 + 0x48], 1
	je	.label_420
	mov	dl, 1
.label_420:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_422
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_422
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_418
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_419
.label_422:
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	stat
	test	eax, eax
	je	.label_418
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 2
	jne	.label_425
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	__lstat
	test	eax, eax
	je	.label_417
.label_425:
	mov	eax, dword ptr [r14]
.label_419:
	mov	dword ptr [r15 + 0x40], eax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_416:
	movzx	eax, ax
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_418:
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	mov	ax, 0xc
	cmp	ecx, 0xa000
	je	.label_416
	cmp	ecx, 0x8000
	je	.label_421
	cmp	ecx, 0x4000
	jne	.label_424
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_423
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_423
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_423:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	movzx	ecx, byte ptr [r15 + 0x108]
	cmp	ecx, 0x2e
	jne	.label_416
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	je	.label_426
	movzx	ecx, cl
	cmp	ecx, 0x2e
	jne	.label_416
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_416
.label_426:
	mov	ax, 1
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_416
	mov	ax, 5
	jmp	.label_416
.label_421:
	mov	ax, 8
	jmp	.label_416
.label_424:
	mov	ax, 3
	jmp	.label_416
.label_417:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_416
	nop	
	.section	.text
	.align	32
	#Procedure 0x406720

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r12, qword ptr [r15 + 0x40]
	cmp	qword ptr [r15 + 0x38], r14
	jae	.label_427
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_432
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	test	rax, rax
	je	.label_432
	mov	qword ptr [r15 + 0x10], rax
.label_427:
	test	rbx, rbx
	je	.label_429
	mov	rax, qword ptr [r15 + 0x10]
	nop	
.label_433:
	mov	qword ptr [rax], rbx
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_433
.label_429:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r12
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	cmp	r14, 1
	je	.label_431
	mov	ecx, 1
	sub	rcx, r14
	dec	r14
	lea	rdx, [rax + 8]
.label_428:
	mov	rsi, qword ptr [rdx - 8]
	mov	rdi, qword ptr [rdx]
	mov	qword ptr [rsi + 0x10], rdi
	add	rdx, 8
	inc	rcx
	jne	.label_428
	lea	rax, [rax + r14*8]
.label_431:
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_430
.label_432:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_430:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406800

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_434
	xor	r14d, r14d
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_437
	jmp	.label_436
.label_434:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_435
	mov	rdi, rax
	call	cycle_check_init
.label_437:
	mov	r14b, 1
	jmp	.label_436
.label_435:
	xor	r14d, r14d
.label_436:
	mov	al, r14b
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406870

	.globl diropen
	.type diropen, @function
diropen:
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_438
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	jmp	open_safer
.label_438:
	mov	edi, dword ptr [rdi + 0x2c]
	xor	eax, eax
	jmp	openat_safer
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4068a0

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_439
	nop	dword ptr [rax]
.label_441:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_440
	call	closedir
.label_440:
	mov	rdi, rbx
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_441
.label_439:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068e0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_450
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_452
	nop	word ptr cs:[rax + rax]
.label_447:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_442
	mov	rbx, qword ptr [rdi + 8]
.label_442:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_447
	jmp	.label_449
.label_452:
	mov	rbx, rdi
.label_449:
	mov	rdi, rbx
	call	free
.label_450:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_451
	call	fts_lfree
.label_451:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_444
	xor	ebx, ebx
	test	al, 4
	jne	.label_446
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	test	eax, eax
	je	.label_443
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_443:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebx, ebx
	je	.label_445
	jmp	.label_446
.label_444:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_446
	call	close
.label_445:
	test	eax, eax
	je	.label_446
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_446:
	lea	rdi, [r14 + 0x60]
	call	fd_ring_clear
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_448
	call	hash_free
.label_448:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebx, ebx
	je	.label_453
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_453:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069e0

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	mov	rbx, rdi
	jmp	.label_454
	nop	word ptr cs:[rax + rax]
.label_455:
	mov	edi, eax
	call	close
.label_454:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_456
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_455
	jmp	.label_454
.label_456:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a20

	.globl free_dir
	.type free_dir, @function
free_dir:
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_457
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	je	.label_458
	jmp	hash_free
.label_457:
	mov	rdi, qword ptr [rdi + 0x58]
	jmp	free
.label_458:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a50

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_461
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_461
	movzx	eax, word ptr [rbx + 0x74]
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	je	.label_482
	movzx	ecx, ax
	cmp	ecx, 1
	jne	.label_483
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	mov	r15, rbx
	jmp	.label_461
.label_482:
	movzx	ecx, word ptr [rbx + 0x70]
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_483
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_494
	test	byte ptr [r14 + 0x48], 4
	jne	.label_496
	mov	esi, OFFSET FLAT:.str_10
	mov	rdi, r14
	call	diropen
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_498
	or	byte ptr [rbx + 0x72], 2
	mov	r15, rbx
	jmp	.label_463
.label_483:
	movzx	ecx, word ptr [rbx + 0x70]
	cmp	ecx, 1
	jne	.label_459
	movzx	eax, ax
	cmp	eax, 4
	je	.label_462
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_464
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_462
.label_464:
	cmp	qword ptr [r14 + 8], 0
	je	.label_469
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 0x10
	jne	.label_472
	cmp	qword ptr [r14 + 8], 0
	je	.label_469
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_475
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_491
	nop	word ptr [rax + rax]
.label_459:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_484
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_486
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	je	.label_488
.label_484:
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_492
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	rbx, r15
	je	.label_459
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_471
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_460
	test	byte ptr [r14 + 0x48], 4
	jne	.label_460
	mov	esi, OFFSET FLAT:.str_10
	mov	rdi, r14
	call	diropen
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_465
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_460
.label_474:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_491:
	test	rax, rax
	jne	.label_474
	jmp	.label_475
.label_462:
	test	byte ptr [rbx + 0x72], 2
	je	.label_476
	mov	edi, dword ptr [rbx + 0x44]
	call	close
.label_476:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_478
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_478:
	mov	word ptr [rbx + 0x70], 6
.label_477:
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
	mov	r15, rbx
	jmp	.label_461
.label_492:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	je	.label_485
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_461
.label_494:
	mov	r15, rbx
	jmp	.label_463
.label_496:
	mov	r15, rbx
	jmp	.label_463
.label_486:
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_495
	mov	rdi, rbx
	call	free
	jmp	.label_471
.label_485:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	mov	rdi, r14
	call	setup_dir
	jmp	.label_463
.label_472:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_469:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_468
.label_475:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_471
.label_468:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_461
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_477
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	je	.label_477
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_477
.label_498:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_463
.label_495:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_461
.label_488:
	mov	r15, qword ptr [rbx + 8]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_489
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_473
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_493
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_497
	test	al, 1
	jne	.label_467
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_3
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_500
.label_489:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_461
.label_493:
	mov	rdi, r14
	call	restore_initial_cwd
.label_500:
	test	eax, eax
	je	.label_467
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_467
.label_497:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_479
	test	ah, 2
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_499
	mov	edi, esi
	call	fchdir
	test	eax, eax
	je	.label_479
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_479
.label_465:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_460:
	mov	word ptr [r15 + 0x74], 3
.label_471:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	movzx	edx, byte ptr [rdx + rcx - 1]
	cmp	edx, 0x2f
	jne	.label_487
	dec	rcx
.label_487:
	lea	rdi, [rax + rcx + 1]
	mov	byte ptr [rax + rcx], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_463:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_470
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_466
	cmp	rax, 2
	jne	.label_473
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_480
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_480
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	leaf_optimization
	cmp	eax, 2
	je	.label_466
.label_480:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_470
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_466
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_466
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_466:
	movzx	eax, word ptr [r15 + 0x70]
.label_470:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_461
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_481
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_481:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_461
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_461
.label_499:
	mov	edx, 1
	mov	rdi, r14
	call	cwd_advance_fd
.label_479:
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_467:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_490
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0
	setne	cl
	movzx	ecx, cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_490
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_490:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_461:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_473:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407000

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_501
	mov	rax, qword ptr [rsi + 0x78]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_503
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_501:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_502
	cmp	qword ptr [rax + 0x58], 0
	js	.label_502
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_503
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_502
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_502
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_502:
	add	rsp, 0x18
	ret	
.label_503:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070a0

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	r13d, edx
	mov	r14, rdi
	test	rbx, rbx
	je	.label_508
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_511
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_511
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_511:
	test	eax, eax
	sete	r15b
	jmp	.label_515
.label_508:
	xor	r15d, r15d
.label_515:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_506
	test	r13d, r13d
	jns	.label_518
	mov	cl, r15b
	xor	cl, 1
	jne	.label_519
	and	eax, 0x200
	je	.label_504
	mov	qword ptr [rsp], rsi
	lea	rbp, [r14 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_509
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
	jmp	.label_509
.label_506:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_505
	and	eax, 0x200
	je	.label_505
	mov	edi, r13d
	call	close
	jmp	.label_505
.label_504:
	mov	qword ptr [rsp], rsi
	jmp	.label_509
.label_518:
	mov	qword ptr [rsp], rsi
	jmp	.label_509
.label_519:
	mov	qword ptr [rsp], rsi
.label_509:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_516
	mov	rdi, r14
	mov	rsi, rbx
	call	diropen
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_505
.label_516:
	test	byte ptr [r14 + 0x48], 2
	jne	.label_513
	test	rbx, rbx
	je	.label_507
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2e
	jne	.label_507
	movzx	eax, byte ptr [rbx + 1]
	cmp	eax, 0x2e
	jne	.label_507
	cmp	byte ptr [rbx + 2], 0
	jne	.label_507
.label_513:
	lea	rsi, [rsp + 8]
	mov	edi, r12d
	call	__fstat
	test	eax, eax
	jne	.label_510
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_512
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_512
.label_507:
	test	byte ptr [r14 + 0x49], 2
	jne	.label_514
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_517
.label_514:
	test	r15b, r15b
	sete	al
	movzx	edx, al
	mov	rdi, r14
	mov	esi, r12d
	call	cwd_advance_fd
	xor	ebp, ebp
	jmp	.label_505
.label_512:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_510:
	mov	ebp, 0xffffffff
.label_517:
	test	r13d, r13d
	jns	.label_505
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_505:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407250

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r12d, esi
	mov	r14, rdi
	mov	rbp, qword ptr [r14]
	mov	qword ptr [rsp + 0x48], rbp
	mov	r15, qword ptr [rbp + 0x18]
	mov	qword ptr [rsp + 0x60], r15
	test	r15, r15
	je	.label_573
	mov	rdi, r15
	call	dirfd
	mov	dword ptr [rsp + 0x84], eax
	test	eax, eax
	js	.label_554
	mov	qword ptr [rsp + 0x38], -1
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_558
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x38], rax
.label_558:
	lea	rax, [r14 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	jmp	.label_534
.label_573:
	mov	eax, 0x204
	and	eax, dword ptr [r14 + 0x48]
	mov	edi, 0xffffff9c
	cmp	eax, 0x200
	jne	.label_568
	mov	edi, dword ptr [r14 + 0x2c]
.label_568:
	mov	rsi, qword ptr [rbp + 0x30]
	mov	eax, dword ptr [r14 + 0x48]
	xor	edx, edx
	test	al, 0x10
	je	.label_571
	test	al, 1
	je	.label_574
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_571
.label_574:
	mov	edx, 0x20000
.label_571:
	lea	rcx, [rsp + 0x84]
	call	opendirat
	mov	qword ptr [rbp + 0x18], rax
	test	rax, rax
	je	.label_524
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 0xb
	jne	.label_529
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_533
.label_554:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
.label_524:
	xor	r13d, r13d
	cmp	r12d, 3
	jne	.label_523
	mov	word ptr [rbp + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
	xor	r13d, r13d
	jmp	.label_523
.label_529:
	test	byte ptr [r14 + 0x49], 1
	je	.label_533
	mov	rdi, r14
	mov	rsi, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbp
	call	fts_stat
	mov	rdi, r14
	mov	rsi, rbp
	call	enter_dir
	test	al, al
	je	.label_555
.label_533:
	mov	qword ptr [rsp + 0x38], -1
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_557
	mov	eax, 0x186a0
	mov	qword ptr [rsp + 0x38], rax
.label_557:
	lea	rax, [r14 + 0x40]
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	test	r15, r15
	jne	.label_534
	cmp	r12d, 2
	jne	.label_567
	mov	r13d, r12d
	xor	r12d, r12d
	jmp	.label_569
.label_567:
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_532
	cmp	qword ptr [rbp + 0x88], 2
	jne	.label_532
	mov	r13d, r12d
	mov	esi, dword ptr [rsp + 0x84]
	mov	rdi, rbp
	call	leaf_optimization
	test	eax, eax
	setne	r12b
	jmp	.label_576
.label_555:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r13d, r13d
	jmp	.label_523
.label_532:
	mov	r13d, r12d
	xor	r12d, r12d
.label_576:
	xor	r12b, 1
.label_569:
	cmp	r13d, 3
	je	.label_531
	test	r12b, r12b
	jne	.label_531
	mov	dword ptr [rsp + 0x18], r12d
	mov	r12d, r13d
	jmp	.label_534
.label_531:
	mov	qword ptr [rsp + 0x60], r15
	test	byte ptr [r14 + 0x49], 2
	mov	ebx, dword ptr [rsp + 0x84]
	je	.label_540
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp + 0x84], ebx
.label_540:
	test	ebx, ebx
	js	.label_546
	xor	ecx, ecx
	mov	rdi, r14
	mov	rsi, rbp
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_550
.label_546:
	cmp	r13d, 3
	jne	.label_520
	test	r12b, r12b
	je	.label_520
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
.label_520:
	or	byte ptr [rbp + 0x72], 1
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	je	.label_559
	mov	edi, dword ptr [rsp + 0x84]
	test	edi, edi
	js	.label_559
	call	close
.label_559:
	mov	qword ptr [rbp + 0x18], 0
	mov	dword ptr [rsp + 0x18], 0
.label_550:
	mov	r12d, r13d
	mov	r15, qword ptr [rsp + 0x60]
.label_534:
	mov	rax, qword ptr [rbp + 0x38]
	mov	rdx, qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rax + rdx - 1]
	cmp	eax, 0x2f
	jne	.label_570
	dec	rdx
.label_570:
	mov	dword ptr [rsp + 0x1c], r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	test	byte ptr [r14 + 0x48], 4
	je	.label_575
	mov	rax, qword ptr [r14 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x50], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_575:
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 0x68], rax
	mov	rcx, qword ptr [r14 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	mov	rax, qword ptr [rbp + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x28], rax
	add	rdx, 2
	mov	qword ptr [rsp + 8], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r12d, r12d
	xor	ebx, ebx
	xor	r13d, r13d
.label_528:
	cmp	qword ptr [rbp + 0x18], 0
	je	.label_542
	mov	qword ptr [rsp + 0x70], rbx
	mov	qword ptr [rsp + 0x78], r13
	call	__errno_location
	mov	r13, rax
	nop	dword ptr [rax]
.label_564:
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [rbp + 0x18]
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_552
	test	byte ptr [r14 + 0x48], 0x20
	jne	.label_543
	movzx	eax, byte ptr [r15 + 0x13]
	cmp	eax, 0x2e
	jne	.label_543
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	eax, 0x2e
	je	.label_560
	test	al, al
	je	.label_561
	jmp	.label_543
	nop	
.label_560:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_543
.label_561:
	cmp	qword ptr [rbp + 0x18], 0
	jne	.label_564
	jmp	.label_565
	nop	word ptr cs:[rax + rax]
.label_543:
	mov	qword ptr [rsp + 0x20], r12
	mov	rbx, r15
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rbp
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_572
	cmp	rbp, qword ptr [rsp + 0x40]
	jae	.label_525
	mov	rbx, qword ptr [rsp + 0x68]
	jmp	.label_526
	nop	
.label_525:
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rax + rbp]
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	je	.label_572
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	je	.label_536
	mov	rbx, qword ptr [rsp + 0x68]
	add	rax, rbx
	test	byte ptr [r14 + 0x48], 4
	mov	rcx, qword ptr [rsp + 0x50]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x50], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_538
.label_536:
	mov	rbx, qword ptr [rsp + 0x68]
.label_538:
	mov	rax, qword ptr [r14 + 0x30]
	sub	rax, rbx
	mov	qword ptr [rsp + 0x40], rax
.label_526:
	add	rbp, rbx
	jb	.label_553
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbp
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [r14 + 0x48], 4
	jne	.label_549
	lea	rax, [r12 + 0x108]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_545
	nop	dword ptr [rax]
.label_549:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x50]
	call	memmove
.label_545:
	mov	rbp, qword ptr [rsp + 0x48]
	mov	r13, qword ptr [rsp + 0x78]
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	je	.label_551
	test	byte ptr [r14 + 0x49], 4
	jne	.label_551
	mov	qword ptr [rsp + 0x68], rbx
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_521
	nop	word ptr [rax + rax]
.label_551:
	mov	qword ptr [rsp + 0x68], rbx
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_541
	movzx	eax, byte ptr [r15 + 0x12]
	cmp	eax, 4
	setne	cl
	test	al, al
	setne	bl
	and	bl, cl
	jmp	.label_535
.label_541:
	xor	ebx, ebx
.label_535:
	mov	word ptr [r12 + 0x70], 0xb
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	mov	rdi, r12
	call	fts_set_stat_required
.label_521:
	mov	r15, qword ptr [rsp + 0x60]
	mov	qword ptr [r12 + 0x10], 0
	test	r13, r13
	mov	rax, r12
	je	.label_537
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, r13
.label_537:
	mov	r13, rax
	mov	rbx, qword ptr [rsp + 0x70]
	cmp	rbx, 0x2710
	jne	.label_539
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rax], 0
	jne	.label_539
	mov	esi, dword ptr [rsp + 0x84]
	mov	rdi, rbp
	call	dirent_inode_sort_may_be_useful
	mov	qword ptr [rsp + 0x10], rax
.label_539:
	inc	rbx
	cmp	qword ptr [rsp + 0x38], rbx
	ja	.label_528
	jmp	.label_542
.label_552:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r15, qword ptr [rsp + 0x60]
	mov	rbx, qword ptr [rsp + 0x70]
	je	.label_566
	mov	dword ptr [rbp + 0x40], eax
	mov	rax, r15
	or	rax, rbx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [rbp + 0x70], cx
.label_566:
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	mov	r13, qword ptr [rsp + 0x78]
	je	.label_542
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	jmp	.label_542
.label_565:
	mov	r15, qword ptr [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0x78]
	mov	rbx, qword ptr [rsp + 0x70]
.label_542:
	mov	rax, qword ptr [rsp + 0x30]
	test	al, 1
	je	.label_530
	mov	rdi, r14
	mov	rsi, r13
	call	fts_padjust
.label_530:
	test	byte ptr [r14 + 0x48], 4
	mov	r12d, dword ptr [rsp + 0x1c]
	je	.label_522
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	rdx, qword ptr [r14 + 0x30]
	cmove	rcx, rax
	test	rbx, rbx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_522:
	test	r15, r15
	jne	.label_544
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	je	.label_544
	cmp	r12d, 1
	je	.label_547
	test	rbx, rbx
	jne	.label_544
.label_547:
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_548
	mov	rsi, qword ptr [rbp + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:.str.2_3
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_556
.label_548:
	mov	rdi, r14
	call	restore_initial_cwd
.label_556:
	test	eax, eax
	je	.label_544
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_527
.label_544:
	test	rbx, rbx
	je	.label_562
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	je	.label_563
	mov	rbp, qword ptr [rsp + 0x58]
	mov	qword ptr [word ptr [rbp]], OFFSET FLAT:fts_compare_ino
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	fts_sort
	mov	r13, rax
	mov	qword ptr [rbp], 0
.label_563:
	cmp	rbx, 2
	jb	.label_523
	mov	rax, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_523
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	fts_sort
	mov	r13, rax
	jmp	.label_523
.label_562:
	cmp	r12d, 3
	jne	.label_527
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 4
	je	.label_527
	movzx	eax, ax
	cmp	eax, 7
	je	.label_527
	mov	word ptr [rbp + 0x70], 6
.label_527:
	mov	rdi, r13
	call	fts_lfree
	xor	r13d, r13d
.label_523:
	mov	rax, r13
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_572:
	mov	ebx, dword ptr [r13]
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	fts_lfree
	mov	rbp, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], ebx
	xor	r13d, r13d
	jmp	.label_523
.label_553:
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 0x78]
	call	fts_lfree
	mov	rbx, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], 0x24
	xor	r13d, r13d
	jmp	.label_523
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079d0

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_577
	test	ah, 2
	jne	.label_579
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_578
.label_577:
	xor	eax, eax
	jmp	.label_578
.label_579:
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rdi, rbx
	call	cwd_advance_fd
	xor	eax, eax
.label_578:
	movzx	ebp, al
	add	rbx, 0x60
	mov	rdi, rbx
	call	fd_ring_clear
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a30

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14, rdi
	mov	rdx, qword ptr [r12 + 0x60]
	mov	qword ptr [r12 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_581
	cmp	rbx, r15
	jne	.label_580
	cmp	byte ptr [rbx + 1], 0
	je	.label_581
.label_580:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r15
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r12 + 0x60], r13
.label_581:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	qword ptr [r12 + 0x30], rax
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ac0

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rax
	call	filesystem_type
	cmp	rax, 0x52654972
	jle	.label_585
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_586
	cmp	rax, 0x52654973
	je	.label_584
	cmp	rax, 0x5346414f
	je	.label_583
	jmp	.label_582
.label_585:
	test	rax, rax
	je	.label_583
	cmp	rax, 0x6969
	je	.label_583
	cmp	rax, 0x9fa0
	je	.label_583
	jmp	.label_582
.label_586:
	cmp	rax, 0x58465342
	je	.label_584
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_582
.label_583:
	xor	ecx, ecx
	jmp	.label_584
.label_582:
	mov	ecx, 1
.label_584:
	mov	eax, ecx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b30

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_590
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_591
	mov	rax, qword ptr [r14 + 0x78]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r14 + 0x80]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_587
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_589
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_588
.label_590:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_587
	mov	qword ptr [r14], r14
.label_588:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_587
.label_591:
	xor	ebp, ebp
	jmp	.label_587
.label_589:
	xor	ebp, ebp
.label_587:
	mov	al, bpl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407bd0

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x2c]
	cmp	esi, ebp
	jne	.label_593
	cmp	esi, -0x64
	jne	.label_596
.label_593:
	test	dl, dl
	je	.label_592
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_594
	mov	edi, eax
	jmp	.label_595
.label_592:
	test	esi, esi
	js	.label_594
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	jne	.label_594
	mov	edi, esi
.label_595:
	call	close
.label_594:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_596:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c20

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_597
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_597:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c50
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, esi
	mov	rbx, rdi
	mov	eax, ebp
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_600
	mov	r12, qword ptr [rbx]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 0x20
	jne	.label_602
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_598
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_602
	mov	rax, qword ptr [r12 + 0x10]
	jmp	.label_602
.label_600:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_602
.label_598:
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_607
	call	fts_lfree
.label_607:
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_601
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_601:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_604
	mov	rax, qword ptr [r12 + 0x30]
	movzx	eax, byte ptr [rax]
	cmp	eax, 0x2f
	je	.label_604
	test	byte ptr [rbx + 0x48], 4
	jne	.label_604
	mov	esi, OFFSET FLAT:.str_10
	mov	rdi, rbx
	call	diropen
	mov	ebp, eax
	test	ebp, ebp
	js	.label_599
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	jne	.label_603
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_605
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_602
.label_604:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
.label_602:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_599:
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	jmp	.label_602
.label_603:
	mov	edx, 1
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_606
.label_605:
	mov	edi, ebp
	call	close
.label_606:
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_602
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407d90

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407da0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_608
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_608:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407dc0

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 2
	je	.label_609
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_611
	xor	r12d, r12d
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	mov	r14d, 0
	je	.label_612
.label_611:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_613
	mov	rax, qword ptr [rax + 8]
	jmp	.label_609
.label_613:
	mov	r12b, 1
	mov	r14, rbp
.label_612:
	xor	eax, eax
	test	r15d, r15d
	js	.label_609
	lea	rsi, [rsp + 0x10]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_609
	test	r12b, r12b
	je	.label_610
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_610
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_614
	cmp	rax, rbp
	je	.label_610
	call	abort
.label_614:
	mov	rdi, rbp
	call	free
.label_610:
	mov	rax, qword ptr [rsp + 0x10]
.label_609:
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ed0

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407ee0

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ef0

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	dec	esi
	xor	eax, eax
	cmp	esi, 0xb
	ja	.label_615
	movsxd	rax, esi
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_616]]
.label_615:
	mov	dword ptr [rdi + 0x18], eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f10

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	je	.label_617
	cmp	rcx, 0x1021994
	je	.label_617
	mov	edx, 0xff534d42
	cmp	rcx, rdx
	je	.label_617
	mov	al, 1
.label_617:
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f40

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	jmp	.label_618
	nop	word ptr [rax + rax]
.label_621:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_618:
	test	rcx, rcx
	je	.label_622
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	je	.label_621
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_621
.label_622:
	cmp	qword ptr [rsi + 0x58], 0
	js	.label_623
	nop	word ptr cs:[rax + rax]
.label_624:
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_619
	sub	rcx, qword ptr [rsi + 0x38]
	add	rcx, rax
	mov	qword ptr [rsi + 0x30], rcx
.label_619:
	mov	qword ptr [rsi + 0x38], rax
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_620
	mov	rcx, qword ptr [rsi + 8]
.label_620:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	jns	.label_624
.label_623:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407fd0

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	cmp	rcx, rax
	sbb	edx, edx
	and	edx, 1
	cmp	rax, rcx
	mov	eax, 0xffffffff
	cmovae	eax, edx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408000
	.globl fts_compar
	.type fts_compar, @function
fts_compar:

	push	rax
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x50]
	call	qword ptr [rax + 0x40]
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408010

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
	je	.label_625
	cmp	r15, -2
	jb	.label_625
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_625
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_625:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408070
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_626
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_626
.label_627:
	ret	
.label_626:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_627
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080a0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_628
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_628:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4080c0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080d0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4080e0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_629
.label_630:
	ret	
.label_629:
	cmp	edi, 0x7f
	je	.label_630
	xor	eax, eax
	jmp	.label_630
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408100
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408110
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408120
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408130
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408140
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_631
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_631
.label_632:
	ret	
.label_631:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_632
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408170
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_633
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_633:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408190

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081a0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_634
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_634:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4081c0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4081d0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4081e0

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	rdi, rbx
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	test	ebp, ebp
	je	.label_635
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_636
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_636
.label_635:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_636
	test	cl, cl
	jne	.label_636
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_636:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408250

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	32
	#Procedure 0x408260

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_637
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_639
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	jne	.label_639
	mov	rcx, qword ptr [r14]
	mov	al, 1
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_640
.label_639:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	call	is_zero_or_power_of_two
	test	al, al
	je	.label_638
	mov	al, 1
	test	rbx, rbx
	je	.label_640
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	qword ptr [r15], rax
.label_638:
	xor	eax, eax
.label_640:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_637:
	mov	edi, OFFSET FLAT:.str_11
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cycle_check
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4082e0

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	lea	rax, [rdi - 1]
	test	rax, rdi
	sete	al
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4082f0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_641
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_641:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_644
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_643
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_642
.label_643:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_642:
	mov	edx, dword ptr [rax]
.label_644:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083d0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_646
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_647
	cmp	byte ptr [rax + 1], 0
	je	.label_645
.label_647:
	mov	esi, OFFSET FLAT:.str.1_9
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_646
.label_645:
	xor	ebx, ebx
.label_646:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x408410

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408420

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408430

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408440

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_648
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_650:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_649
	nop	
.label_651:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_651
	cmp	rsi, rax
	cmova	rax, rsi
.label_649:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_650
.label_648:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408490
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	ecx, ecx
	cmp	rsi, qword ptr [rdi + 8]
	mov	edx, 0
	jae	.label_652
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_657:
	cmp	qword ptr [rsi], 0
	mov	rax, rsi
	je	.label_654
	nop	dword ptr [rax]
.label_655:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_655
	inc	rdx
.label_654:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_657
.label_652:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_653
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_656
.label_653:
	xor	eax, eax
.label_656:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4084f0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	rbx, rdi
	call	hash_get_n_entries
	mov	rbp, rax
	mov	rdi, rbx
	call	hash_get_n_buckets
	mov	r12, rax
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	r15, rax
	mov	rdi, rbx
	call	hash_get_max_bucket_length
	mov	r14, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_12
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_10
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_658]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_659]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_660]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_4
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_2
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4085e0

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	cmp	qword ptr [rbx], 0
	je	.label_661
	test	rbx, rbx
	je	.label_661
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_663:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_662
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_662
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_663
	jmp	.label_661
.label_662:
	mov	r15, qword ptr [rbx]
.label_661:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x408640

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_664
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_664:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408670
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_665
	mov	rcx, qword ptr [rdi]
	jmp	.label_667
	nop	
.label_668:
	add	rcx, 0x10
.label_667:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_666
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_668
.label_665:
	ret	
.label_666:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4086a0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_673:
	cmp	qword ptr [rcx], rbx
	jne	.label_669
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_670
.label_669:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_673
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_672:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_671
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_672
	jmp	.label_671
.label_670:
	mov	rcx, qword ptr [rdx]
.label_671:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408710
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	jmp	.label_674
	nop	word ptr [rax + rax]
.label_675:
	add	r8, 0x10
.label_674:
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_676
	cmp	qword ptr [r8], 0
	je	.label_675
	test	r8, r8
	mov	r9, r8
	je	.label_675
	nop	dword ptr [rax + rax]
.label_677:
	cmp	rax, rdx
	jae	.label_676
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_677
	jmp	.label_675
.label_676:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408760
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

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
	mov	r13, qword ptr [r12]
	xor	ebx, ebx
	jmp	.label_678
	nop	dword ptr [rax]
.label_679:
	add	r13, 0x10
.label_678:
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_680
	cmp	qword ptr [r13], 0
	je	.label_679
	test	r13, r13
	mov	rbp, r13
	je	.label_679
	nop	word ptr [rax + rax]
.label_681:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_680
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_681
	jmp	.label_679
.label_680:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4087d0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_682
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_683:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_683
.label_682:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408810
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_684]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408830

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, r8
	mov	r12, rsi
	mov	r15, rdi
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	r14d, OFFSET FLAT:raw_comparator
	cmovne	r14, rcx
	mov	edi, 0x50
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_686
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_685
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_685
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_685
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	mov	rax, r13
	jmp	.label_686
.label_685:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_686:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408910

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbx, rsi
	mov	esi, 3
	call	rotr_sz
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408930

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408940

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_687
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_688]]
	jbe	.label_689
	movss	xmm1,  dword ptr [dword ptr [rip + label_692]]
	ucomiss	xmm1, xmm0
	jbe	.label_689
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_691]]
	jbe	.label_689
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_689
	addss	xmm1,  dword ptr [dword ptr [rip + label_688]]
	ucomiss	xmm0, xmm1
	jbe	.label_689
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_690]]
	ucomiss	xmm2, xmm0
	jb	.label_689
	ucomiss	xmm0, xmm1
	ja	.label_687
.label_689:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_687:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089c0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_693
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_698
	cvtsi2ss	xmm0, rdi
	jmp	.label_694
.label_698:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_694:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_695]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_696]]
	jae	.label_697
.label_693:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_697:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408a40
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_699
	nop	dword ptr [rax]
.label_704:
	add	r14, 0x10
.label_699:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_702
	cmp	qword ptr [r14], 0
	je	.label_704
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_700
	nop	word ptr cs:[rax + rax]
.label_701:
	test	cl, 1
	je	.label_705
	mov	rdi, qword ptr [rbx]
	call	rax
.label_705:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_701
.label_700:
	test	cl, cl
	je	.label_703
	mov	rdi, qword ptr [r14]
	call	rax
.label_703:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_704
.label_702:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ae0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_710
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_710
	mov	r14, qword ptr [r15]
	jmp	.label_715
	nop	dword ptr [rax + rax]
.label_709:
	add	r14, 0x10
.label_715:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_710
	cmp	qword ptr [r14], 0
	je	.label_709
	test	r14, r14
	mov	rbx, r14
	je	.label_709
	nop	dword ptr [rax + rax]
.label_711:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_711
	jmp	.label_709
.label_710:
	mov	r14, qword ptr [r15]
	jmp	.label_713
	nop	word ptr [rax + rax]
.label_708:
	add	r14, 0x10
.label_713:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_706
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_708
	nop	word ptr cs:[rax + rax]
.label_712:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_712
	jmp	.label_708
.label_706:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_714
	nop	dword ptr [rax]
.label_707:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_707
.label_714:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bb0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x50
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsi, rax
	call	compute_bucket_size
	mov	rbp, rax
	test	rbp, rbp
	je	.label_716
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_717
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_716
	mov	qword ptr [rsp + 0x10], rbp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	mov	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rbx + 0x38]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	test	al, al
	je	.label_718
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_717
.label_718:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_719
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_719
	mov	rdi, qword ptr [rsp]
	call	free
.label_716:
	xor	r14d, r14d
.label_717:
	mov	al, r14b
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_719:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ce0

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	mov	r15, qword ptr [r12]
	mov	al, 1
	cmp	r15, qword ptr [r12 + 8]
	jae	.label_725
	mov	dword ptr [rsp + 4], edx
	nop	word ptr cs:[rax + rax]
.label_722:
	cmp	qword ptr [r15], 0
	je	.label_721
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_724
	nop	word ptr cs:[rax + rax]
.label_728:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_729
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_720
	nop	word ptr cs:[rax + rax]
.label_729:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_720:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_728
.label_724:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_721
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_723
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_726
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_727
.label_723:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_727:
	mov	qword ptr [r15], 0
	dec	qword ptr [r12 + 0x18]
.label_721:
	add	r15, 0x10
	cmp	r15, qword ptr [r12 + 8]
	jb	.label_722
	mov	al, 1
	jmp	.label_725
.label_726:
	xor	eax, eax
.label_725:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e00

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_730
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_742
	test	rbx, rbx
	je	.label_733
	mov	qword ptr [rbx], rax
	jmp	.label_733
.label_742:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_732
	cvtsi2ss	xmm0, rcx
	jmp	.label_737
.label_732:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_737:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_741
	cvtsi2ss	xmm1, rax
	jmp	.label_744
.label_741:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_744:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_736
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_739
	cvtsi2ss	xmm2, rcx
	jmp	.label_743
.label_739:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_743:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_734
	cvtsi2ss	xmm0, rax
	jmp	.label_738
.label_734:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_738:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_736
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_731
	mulss	xmm0, xmm1
.label_731:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_696]]
	jae	.label_733
	movss	xmm1,  dword ptr [dword ptr [rip + label_695]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	je	.label_733
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_730
.label_736:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_740
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_733
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_735
.label_740:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_735:
	mov	ebp, 1
.label_733:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_730:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408fd0

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_748
	cmp	rsi, r13
	je	.label_746
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_749
.label_746:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_748
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_751
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_747
.label_749:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_748
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_750:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_745
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_745
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_750
	jmp	.label_748
.label_751:
	mov	qword ptr [rbx], 0
	jmp	.label_748
.label_745:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_748
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_747:
	mov	rdi, r14
	call	free_entry
.label_748:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4090a0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_752
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_752:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4090d0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_753
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_753:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409100

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdi
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_760
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_756
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_766
	cvtsi2ss	xmm0, rax
	jmp	.label_758
.label_766:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_758:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_763
	cvtsi2ss	xmm1, rcx
	jmp	.label_765
.label_763:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_765:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_756
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_762
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_755
.label_762:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_755:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_759
	cvtsi2ss	xmm0, rax
	jmp	.label_761
.label_759:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_761:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_756
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_754
	mulss	xmm0, dword ptr [rcx + 8]
.label_754:
	movss	xmm1,  dword ptr [dword ptr [rip + label_695]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_756
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_757
	nop	word ptr cs:[rax + rax]
.label_764:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_764
.label_757:
	mov	qword ptr [r15 + 0x48], 0
.label_756:
	mov	rax, r14
.label_760:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409290

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	r14
	push	rbx
	push	rax
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	or	rbx, 1
	mov	r14, -1
	jmp	.label_767
	nop	
.label_768:
	add	rbx, 2
.label_767:
	cmp	rbx, -1
	je	.label_769
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_768
	mov	r14, rbx
.label_769:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092e0

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	cmp	r8, 0xa
	jb	.label_770
	nop	dword ptr [rax + rax]
.label_771:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_770
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_771
.label_770:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409330

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x409350

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	
.label_772:
	mov	dword ptr [rdi + rax*4], esi
	inc	rax
	cmp	rax, 4
	jne	.label_772
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x409370

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409380

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	mov	al, byte ptr [rdi + 0x1c]
	xor	al, 1
	movzx	edx, al
	add	edx, dword ptr [rdi + 0x14]
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	ecx, dword ptr [rdi + 0x18]
	cmp	edx, ecx
	jne	.label_773
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_773:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093c0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbx
	mov	rbx, rdi
	call	i_ring_empty
	test	al, al
	jne	.label_774
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	dword ptr [rbx + rdx*4], ecx
	mov	ecx, dword ptr [rbx + 0x14]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_775
	mov	byte ptr [rbx + 0x1c], 1
	pop	rbx
	ret	
.label_775:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	pop	rbx
	ret	
.label_774:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409400

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_11
	cmp	byte ptr [rcx], 0
	je	.label_776
	mov	rax, rcx
.label_776:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409430

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_777
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_777:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_779
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_778
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_780
.label_778:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_780:
	mov	ecx, dword ptr [rax]
.label_779:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x409510

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rcx
	or	edx, 0x90900
	xor	ebx, ebx
	xor	eax, eax
	call	openat_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_782
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_781
	mov	dword ptr [r14], ebp
	jmp	.label_782
.label_781:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_782:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409560

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_783
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_784
.label_783:
	mov	eax, ebx
.label_784:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095b0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_785
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_787
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_785
.label_787:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_785
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_786
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_786:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_785:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409630

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	je	.label_797
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_797:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_790
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_799
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_788
	test	esi, esi
	jne	.label_790
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_791
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_789
.label_790:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_798
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_788
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_792
.label_799:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_788:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_795
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_794
.label_795:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_794:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_792:
	cmp	eax, 6
	jne	.label_798
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_800
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_801
.label_798:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_793
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_796
.label_791:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_789:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	ret	
.label_800:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_801:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	ret	
.label_793:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_796:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409840

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409850

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_804
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_806
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_806
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_803
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_802
.label_806:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_802
.label_804:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_802:
	test	ebx, ebx
	js	.label_803
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_803
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_805
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_803
.label_805:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_803:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409920

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_807
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_807
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_807:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409950

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_808
	ret	
.label_808:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409970

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
	jne	.label_809
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_809
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_810
.label_809:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_810:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_811
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_811:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4099e0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a00
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a10
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a20
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	cl, sil
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a30
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	cl, sil
	ror	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a40
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a50

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a60
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	movzx	eax, di
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a80
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	movzx	eax, di
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409aa0
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ac0
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ae0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409ba0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x409bb0

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
	.section	.text
	.align	32
	#Procedure 0x409bc0

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section .text
	.align	32
	#Procedure 0x409bd0

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
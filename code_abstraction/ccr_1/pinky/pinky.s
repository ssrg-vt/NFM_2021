	.section	.text
	.align	16
	#Procedure 0x401a30

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_15
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_15:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b60

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_18
	nop	
.label_31:
	mov	edi, OFFSET FLAT:label_22
	call	strcmp
	test	eax, eax
	je	.label_29
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_31
.label_29:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_22
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
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
	je	.label_19
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_19
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_19:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_22
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_26
	mov	ecx, OFFSET FLAT:label_27
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
	.align	16
	#Procedure 0x401c80

	.globl main
	.type main, @function
main:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_27
	call	setlocale
	mov	edi, OFFSET FLAT:label_39
	mov	esi, OFFSET FLAT:label_40
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_39
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_32
.label_460:
	mov	byte ptr [byte ptr [rip + include_home_and_shell]],  1
	nop	dword ptr [rax]
.label_32:
	mov	edx, OFFSET FLAT:label_37
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_44
	add	eax, -0x62
	cmp	eax, 0x15
	ja	.label_43
	jmp	qword ptr [word ptr [+ (rax * 8) + label_46]]
.label_461:
	mov	byte ptr [byte ptr [rip + include_heading]],  1
	jmp	.label_32
.label_462:
	mov	byte ptr [byte ptr [rip + include_project]],  1
	jmp	.label_32
.label_463:
	mov	byte ptr [byte ptr [rip + include_fullname]],  1
	mov	byte ptr [byte ptr [rip + include_where]],  1
	jmp	.label_32
.label_464:
	mov	byte ptr [byte ptr [rip + do_short_format]],  1
	jmp	.label_32
.label_465:
	mov	byte ptr [byte ptr [rip + include_plan]],  1
	jmp	.label_32
.label_466:
	mov	byte ptr [byte ptr [rip + include_fullname]],  1
	mov	byte ptr [byte ptr [rip + include_where]],  1
	mov	byte ptr [byte ptr [rip + include_idle]],  1
	jmp	.label_32
.label_467:
	mov	byte ptr [byte ptr [rip + do_short_format]],  0
	jmp	.label_32
.label_468:
	mov	byte ptr [byte ptr [rip + include_fullname]],  1
	jmp	.label_32
.label_44:
	cmp	eax, -1
	jne	.label_41
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebx, eax
	mov	cl,  byte ptr [byte ptr [rip + do_short_format]]
	cmp	cl, 1
	jne	.label_45
	test	ebx, ebx
	je	.label_42
.label_45:
	lea	rsi, [r14 + rax*8]
	mov	edi, ebx
	test	cl, cl
	je	.label_47
	call	long_pinky
	jmp	.label_36
.label_47:
	call	short_pinky
.label_36:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_41:
	cmp	eax, 0xffffff7d
	je	.label_38
	cmp	eax, 0xffffff7e
	jne	.label_43
	xor	edi, edi
	call	usage
.label_38:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_22
	mov	edx, OFFSET FLAT:label_20
	mov	r8d, OFFSET FLAT:label_33
	mov	r9d, OFFSET FLAT:label_34
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_35
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_43:
	mov	edi, 1
	call	usage
.label_42:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e30

	.globl short_pinky
	.type short_pinky, @function
short_pinky:
	push	rbp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	ebp, edi
	mov	qword ptr [rsp + 8], 0
	lea	rsi, [rsp + 0x10]
	lea	rdx, [rsp + 8]
	mov	edi, OFFSET FLAT:label_11
	xor	ecx, ecx
	call	read_utmp
	test	eax, eax
	jne	.label_50
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	mov	edx, ebp
	mov	rcx, rbx
	call	scan_entries
	add	rsp, 0x18
	pop	rbx
	pop	rbp
	ret	
.label_50:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	edx, OFFSET FLAT:label_11
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401eb0

	.globl long_pinky
	.type long_pinky, @function
long_pinky:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	test	ebp, ebp
	jle	.label_51
	nop	dword ptr [rax]
.label_52:
	mov	rdi, qword ptr [rbx]
	call	print_long_entry
	add	rbx, 8
	dec	ebp
	jne	.label_52
.label_51:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ee0

	.globl scan_entries
	.type scan_entries, @function
scan_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	dword ptr [rsp + 4], edx
	mov	rbp, rsi
	mov	r12, rdi
	mov	edi, 2
	call	hard_locale
	mov	ecx, OFFSET FLAT:label_54
	mov	edx, OFFSET FLAT:label_55
	test	al, al
	cmovne	rdx, rcx
	movzx	eax, al
	lea	eax, [rax*4 + 0xc]
	mov	qword ptr [word ptr [rip + time_format]],  rdx
	mov	dword ptr [dword ptr [rip + time_format_width]],  eax
	mov	al,  byte ptr [byte ptr [rip + include_heading]]
	test	al, al
	jne	.label_56
	call	print_heading
.label_56:
	test	r12, r12
	je	.label_60
	movsxd	r13, dword ptr [rsp + 4]
	nop	word ptr cs:[rax + rax]
.label_53:
	dec	r12
	cmp	byte ptr [rbp + 0x2c], 0
	je	.label_57
	movzx	eax, word ptr [rbp]
	cmp	eax, 7
	jne	.label_57
	lea	rbx, [rbp + 0x2c]
	cmp	dword ptr [rsp + 4], 0
	je	.label_58
	jle	.label_57
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_59:
	mov	rsi, qword ptr [r15 + r14*8]
	mov	edx, 0x20
	mov	rdi, rbx
	call	strncmp
	test	eax, eax
	je	.label_58
	inc	r14
	cmp	r14, r13
	jl	.label_59
	jmp	.label_57
.label_58:
	mov	rdi, rbp
	call	print_entry
	nop	word ptr [rax + rax]
.label_57:
	add	rbp, 0x180
	test	r12, r12
	jne	.label_53
.label_60:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fd0

	.globl print_heading
	.type print_heading, @function
print_heading:
	push	rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_61
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	mov	al,  byte ptr [byte ptr [rip + include_fullname]]
	test	al, al
	jne	.label_73
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_72
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_73:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_74
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	mov	al,  byte ptr [byte ptr [rip + include_idle]]
	test	al, al
	jne	.label_71
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_68
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_71:
	mov	ebx,  dword ptr [dword ptr [rip + time_format_width]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_65
	xor	eax, eax
	mov	edx, ebx
	call	__printf_chk
	mov	al,  byte ptr [byte ptr [rip + include_where]]
	test	al, al
	jne	.label_70
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_67
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_70:
	mov	edi, 0xa
	pop	rbx
	jmp	putchar_unlocked
	nop	
	.section	.text
	.align	16
	#Procedure 0x4020f0

	.globl print_entry
	.type print_entry, @function
print_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1c8
	mov	r13, rdi
	lea	r14, [r13 + 8]
	cmp	byte ptr [r13 + 8], 0x2f
	jne	.label_96
	lea	rdi, [rsp]
	jmp	.label_78
.label_96:
	lea	rdi, [rsp + 5]
	mov	word ptr [rsp + 4], 0x2f
	mov	dword ptr [rsp], 0x7665642f
.label_78:
	mov	edx, 0x20
	mov	rsi, r14
	call	stzncpy
	lea	rdi, [rsp]
	lea	rsi, [rsp + 0x30]
	call	stat
	mov	r12d, 0x3f
	xor	r15d, r15d
	test	eax, eax
	jne	.label_86
	test	byte ptr [rsp + 0x48], 0x10
	mov	eax, 0x20
	mov	r12d, 0x2a
	cmovne	r12d, eax
	mov	r15, qword ptr [rsp + 0x78]
.label_86:
	lea	rbp, [r13 + 0x2c]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 0x20
	xor	eax, eax
	mov	rcx, rbp
	call	__printf_chk
	mov	al,  byte ptr [byte ptr [rip + include_fullname]]
	test	al, al
	jne	.label_77
	lea	rbx, [rsp + 0xc0]
	mov	edx, 0x20
	mov	rdi, rbx
	mov	rsi, rbp
	call	stzncpy
	mov	rdi, rbx
	call	getpwnam
	mov	rbp, rax
	test	rbp, rbp
	je	.label_84
	mov	rdi, qword ptr [rbp + 0x18]
	mov	esi, 0x2c
	call	strchr
	test	rax, rax
	je	.label_89
	mov	byte ptr [rax], 0
.label_89:
	mov	rsi, qword ptr [rbp]
	mov	rdi, qword ptr [rbp + 0x18]
	call	create_fullname
	mov	rbx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_93
	xor	eax, eax
	mov	rdx, rbx
	call	__printf_chk
	mov	rdi, rbx
	call	free
	jmp	.label_77
.label_84:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_79
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_77:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_83
	mov	ecx, 0x20
	xor	eax, eax
	mov	edx, r12d
	mov	r8, r14
	call	__printf_chk
	mov	al,  byte ptr [byte ptr [rip + include_idle]]
	test	al, al
	jne	.label_87
	test	r15, r15
	je	.label_90
	mov	rdi, r15
	call	idle_string
	jmp	.label_91
.label_90:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
.label_91:
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_68
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_87:
	mov	rdi, r13
	call	time_string
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_67
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	mov	al,  byte ptr [byte ptr [rip + include_where]]
	test	al, al
	jne	.label_82
	cmp	byte ptr [r13 + 0x4c], 0
	je	.label_82
	add	r13, 0x4c
	lea	r14, [rsp + 0xc0]
	mov	edx, 0x100
	mov	rdi, r14
	mov	rsi, r13
	call	stzncpy
	mov	esi, 0x3a
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	test	rax, rax
	je	.label_94
	mov	rbx, rax
	inc	rbx
	mov	byte ptr [rax], 0
.label_94:
	xor	ebp, ebp
	cmp	byte ptr [rsp + 0xc0], 0
	je	.label_88
	lea	rdi, [rsp + 0xc0]
	call	canon_host
	mov	rbp, rax
.label_88:
	test	rbp, rbp
	cmovne	r14, rbp
	mov	edi, 1
	test	rbx, rbx
	je	.label_80
	mov	esi, OFFSET FLAT:label_81
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbx
	call	__printf_chk
	jmp	.label_85
.label_80:
	mov	esi, OFFSET FLAT:label_67
	xor	eax, eax
	mov	rdx, r14
	call	__printf_chk
.label_85:
	test	rbp, rbp
	je	.label_82
	mov	rdi, r14
	call	free
.label_82:
	mov	edi, 0xa
	call	putchar_unlocked
	add	rsp, 0x1c8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402370

	.globl stzncpy
	.type stzncpy, @function
stzncpy:
	test	rdx, rdx
	jle	.label_97
	add	rdx, rsi
	nop	dword ptr [rax + rax]
.label_98:
	movzx	eax, byte ptr [rsi]
	test	al, al
	je	.label_97
	inc	rsi
	mov	byte ptr [rdi], al
	inc	rdi
	cmp	rsi, rdx
	jb	.label_98
.label_97:
	mov	byte ptr [rdi], 0
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023a0

	.globl create_fullname
	.type create_fullname, @function
create_fullname:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r13, rdi
	call	strlen
	mov	r15, rax
	inc	r15
	mov	rdi, r13
	call	count_ampersands
	mov	r12, rax
	test	r12, r12
	je	.label_99
	mov	rdi, r14
	call	strlen
	mov	rcx, rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r12
	cmp	rax, rcx
	jb	.label_103
	imul	rcx, r12
	mov	rax, rcx
	sub	rax, r12
	add	r15, rax
	cmp	r15, rcx
	jb	.label_103
.label_99:
	mov	rdi, r15
	call	xmalloc
	mov	r15, rax
	lea	r12, [r14 + 1]
	mov	rbx, r15
	jmp	.label_100
	nop	dword ptr [rax]
.label_101:
	inc	r13
.label_100:
	mov	al, byte ptr [r13]
	cmp	al, 0x26
	je	.label_105
	test	al, al
	je	.label_107
	mov	byte ptr [rbx], al
	inc	rbx
	inc	r13
	jmp	.label_100
	nop	dword ptr [rax]
.label_105:
	movsx	edi, byte ptr [r14]
	call	to_uchar
	movzx	ebp, al
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + rbp*2 + 1], 2
	jne	.label_102
	mov	rax, r14
	jmp	.label_104
.label_102:
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + rbp*4]
	mov	byte ptr [rbx], al
	inc	rbx
	mov	rax, r12
.label_104:
	mov	cl, byte ptr [rax]
	test	cl, cl
	je	.label_101
	inc	rax
	nop	dword ptr [rax]
.label_106:
	mov	byte ptr [rbx], cl
	inc	rbx
	movzx	ecx, byte ptr [rax]
	inc	rax
	test	cl, cl
	jne	.label_106
	jmp	.label_101
.label_107:
	mov	byte ptr [rbx], 0
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_103:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024b0

	.globl idle_string
	.type idle_string, @function
idle_string:
	push	rbx
	mov	rbx, rdi
	cmp	qword ptr [word ptr [rip + idle_string.now]],  0
	jne	.label_108
	mov	edi, OFFSET FLAT:idle_string.now
	call	time
.label_108:
	mov	rcx,  qword ptr [word ptr [rip + idle_string.now]]
	sub	rcx, rbx
	mov	ebx, OFFSET FLAT:label_112
	cmp	rcx, 0x3c
	jl	.label_111
	cmp	rcx, 0x1517f
	jg	.label_109
	mov	rax, rcx
	shr	rax, 4
	movabs	rdx, 0x91a2b3c4d5e6f81
	mul	rdx
	mov	r8, rdx
	shr	r8, 3
	imul	rax, r8, 0xe10
	sub	rcx, rax
	movabs	rdx, 0x8888888888888889
	mov	rax, rcx
	mul	rdx
	mov	r9, rdx
	shr	r9, 5
	mov	ebx, OFFSET FLAT:idle_string.buf
	mov	edi, OFFSET FLAT:idle_string.buf
	mov	esi, 1
	mov	edx, 0x16
	mov	ecx, OFFSET FLAT:label_113
	xor	eax, eax
	call	__sprintf_chk
	jmp	.label_111
.label_109:
	movabs	rdx, 0xc22e450672894ab7
	mov	rax, rcx
	mul	rdx
	mov	r8, rdx
	shr	r8, 0x10
	mov	ebx, OFFSET FLAT:idle_string.buf
	mov	edi, OFFSET FLAT:idle_string.buf
	mov	esi, 1
	mov	edx, 0x16
	mov	ecx, OFFSET FLAT:label_110
	xor	eax, eax
	call	__sprintf_chk
.label_111:
	mov	rax, rbx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402590

	.globl time_string
	.type time_string, @function
time_string:
	push	rbx
	sub	rsp, 0x10
	movsxd	rax, dword ptr [rdi + 0x154]
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rsp + 8]
	call	localtime
	test	rax, rax
	je	.label_114
	mov	rdx,  qword ptr [word ptr [rip + time_format]]
	mov	ebx, OFFSET FLAT:time_string.buf
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	jmp	.label_115
.label_114:
	mov	rdi, qword ptr [rsp + 8]
	call	timetostr
	mov	rbx, rax
.label_115:
	mov	rax, rbx
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025f0

	.globl count_ampersands
	.type count_ampersands, @function
count_ampersands:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_116:
	movzx	ecx, byte ptr [rdi]
	xor	edx, edx
	cmp	cl, 0x26
	sete	dl
	add	rax, rdx
	inc	rdi
	test	cl, cl
	jne	.label_116
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402620

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402630

	.globl timetostr
	.type timetostr, @function
timetostr:
	mov	esi, OFFSET FLAT:time_string.buf
	jmp	imaxtostr
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402640

	.globl print_long_entry
	.type print_long_entry, @function
print_long_entry:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x408
	mov	rbx, rdi
	call	getpwnam
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_130
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_136
	xor	eax, eax
	mov	rdx, rbx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	test	r15, r15
	je	.label_124
	mov	rdi, qword ptr [r15 + 0x18]
	mov	esi, 0x2c
	call	strchr
	test	rax, rax
	je	.label_128
	mov	byte ptr [rax], 0
.label_128:
	mov	rsi, qword ptr [r15]
	mov	rdi, qword ptr [r15 + 0x18]
	call	create_fullname
	mov	rbx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_67
	xor	eax, eax
	mov	rdx, rbx
	call	__printf_chk
	mov	rdi, rbx
	call	free
	mov	edi, 0xa
	call	putchar_unlocked
	mov	al,  byte ptr [byte ptr [rip + include_home_and_shell]]
	test	al, al
	jne	.label_118
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdx, qword ptr [r15 + 0x20]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_125
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdx, qword ptr [r15 + 0x28]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_67
	xor	eax, eax
	call	__printf_chk
	mov	edi, 0xa
	call	putchar_unlocked
.label_118:
	mov	al,  byte ptr [byte ptr [rip + include_project]]
	test	al, al
	jne	.label_119
	mov	rdi, qword ptr [r15 + 0x20]
	call	strlen
	lea	rdi, [rax + 0xa]
	call	xmalloc
	mov	r14, rax
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, r14
	call	stpcpy
	movabs	rcx, 0x63656a6f72702e2f
	mov	qword ptr [rax], rcx
	mov	word ptr [rax + 8], 0x74
	mov	esi, OFFSET FLAT:label_123
	mov	rdi, r14
	call	fopen
	mov	r12, rax
	test	r12, r12
	je	.label_121
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_133
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	lea	rdi, [rsp]
	mov	esi, 1
	mov	edx, 0x400
	mov	rcx, r12
	call	fread_unlocked
	test	rax, rax
	je	.label_122
	lea	rbx, [rsp]
	nop	dword ptr [rax + rax]
.label_132:
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, rax
	call	fwrite_unlocked
	mov	esi, 1
	mov	edx, 0x400
	mov	rdi, rbx
	mov	rcx, r12
	call	fread_unlocked
	test	rax, rax
	jne	.label_132
.label_122:
	mov	rdi, r12
	call	rpl_fclose
.label_121:
	mov	rdi, r14
	call	free
.label_119:
	mov	al,  byte ptr [byte ptr [rip + include_plan]]
	test	al, al
	jne	.label_135
	mov	rdi, qword ptr [r15 + 0x20]
	call	strlen
	lea	rdi, [rax + 7]
	call	xmalloc
	mov	r14, rax
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, r14
	call	stpcpy
	mov	byte ptr [rax + 6], 0
	mov	word ptr [rax + 4], 0x6e61
	mov	dword ptr [rax], 0x6c702e2f
	mov	esi, OFFSET FLAT:label_123
	mov	rdi, r14
	call	fopen
	mov	r15, rax
	test	r15, r15
	je	.label_126
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	lea	rdi, [rsp]
	mov	esi, 1
	mov	edx, 0x400
	mov	rcx, r15
	call	fread_unlocked
	test	rax, rax
	je	.label_117
	lea	rbx, [rsp]
	nop	dword ptr [rax + rax]
.label_131:
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, rax
	call	fwrite_unlocked
	mov	esi, 1
	mov	edx, 0x400
	mov	rdi, rbx
	mov	rcx, r15
	call	fread_unlocked
	test	rax, rax
	jne	.label_131
.label_117:
	mov	rdi, r15
	call	rpl_fclose
.label_126:
	mov	rdi, r14
	call	free
.label_135:
	mov	edi, 0xa
	call	putchar_unlocked
	add	rsp, 0x408
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_124:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_137
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_67
	xor	eax, eax
	mov	rdx, rcx
	add	rsp, 0x408
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__printf_chk
	.section	.text
	.align	16
	#Procedure 0x4029a0

	.globl canon_host
	.type canon_host, @function
canon_host:
	mov	esi, OFFSET FLAT:last_cherror
	jmp	canon_host_r
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029b0

	.globl canon_host_r
	.type canon_host_r, @function
canon_host_r:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], 0
	mov	dword ptr [dword ptr [rip + canon_host_r.hints]],  2
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, OFFSET FLAT:canon_host_r.hints
	call	getaddrinfo
	test	eax, eax
	je	.label_140
	xor	ebx, ebx
	test	r14, r14
	je	.label_138
	mov	dword ptr [r14], eax
	xor	ebx, ebx
	jmp	.label_138
.label_140:
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax + 0x20]
	test	rax, rax
	cmovne	rbx, rax
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	test	r14, r14
	je	.label_139
	test	rbx, rbx
	jne	.label_139
	mov	dword ptr [r14], 0xfffffff6
.label_139:
	mov	rdi, qword ptr [rsp]
	call	freeaddrinfo
.label_138:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402a30
	.globl ch_strerror
	.type ch_strerror, @function
ch_strerror:

	mov	edi,  dword ptr [dword ptr [rip + last_cherror]]
	jmp	gai_strerror
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a40
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a50
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a60

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_143
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_141
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_141
.label_143:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_144
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_141:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_142
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_144:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_142:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_145
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b20

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b60

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_151
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_152:
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
	ja	.label_152
	jmp	.label_154
.label_151:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_153:
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
	ja	.label_153
	mov	byte ptr [rsi], 0x2d
.label_154:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c20

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_155
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_157
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_159
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_157
	mov	esi, OFFSET FLAT:label_158
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_160
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_160:
	mov	rbx, r14
.label_157:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_155:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_156
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cd0
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
	.align	16
	#Procedure 0x402d10
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
	.align	16
	#Procedure 0x402d20
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
	.align	16
	#Procedure 0x402d30

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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d70
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
	.align	16
	#Procedure 0x402d90

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_161
	test	rdx, rdx
	je	.label_161
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_161:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402dc0
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e40

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
	mov	qword ptr [rsp + 0xb0], rax
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
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_215:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_218
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_222]]
.label_416:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_228
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_162
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_417:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_238
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_238
	xor	r14d, r14d
.label_251:
	cmp	r14, r11
	jae	.label_249
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_249:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_251
.label_238:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x40], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_163
.label_409:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_163
.label_412:
	mov	al, 1
.label_410:
	mov	r12b, 1
.label_413:
	test	r12b, 1
	mov	cl, 1
	je	.label_267
	mov	ecx, eax
.label_267:
	mov	al, cl
.label_411:
	test	r12b, 1
	jne	.label_270
	test	r11, r11
	je	.label_272
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_272:
	mov	r14d, 1
	jmp	.label_276
.label_270:
	xor	r14d, r14d
.label_276:
	mov	ecx, OFFSET FLAT:label_162
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_163
.label_414:
	test	r12b, 1
	jne	.label_171
	test	r11, r11
	je	.label_174
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_174:
	mov	r14d, 1
	jmp	.label_177
.label_415:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_180
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_163
.label_171:
	xor	r14d, r14d
.label_177:
	mov	eax, OFFSET FLAT:label_180
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_163:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	bl
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2b]
	mov	eax, r15d
	mov	byte ptr [rsp + 0x1e], cl
	and	al, cl
	cmp	qword ptr [rsp + 0x38], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x2e], al
	and	dl, al
	mov	byte ptr [rsp + 0x2f], dl
	mov	eax, esi
	and	al, 1
	sete	dl
	and	bl, al
	mov	byte ptr [rsp + 0x2c], bl
	mov	byte ptr [rsp + 7], al
	and	r12b, al
	mov	byte ptr [rsp + 0x2d], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d], r13b
	mov	qword ptr [rsp + 0xa8], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x2a], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_231
	nop	dword ptr [rax]
.label_210:
	inc	rsi
.label_231:
	cmp	rbp, -1
	je	.label_232
	cmp	rsi, rbp
	jne	.label_234
	jmp	.label_236
	nop	word ptr cs:[rax + rax]
.label_232:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_236
.label_234:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_240
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_244
	cmp	rbp, -1
	jne	.label_244
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x68]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_244:
	cmp	rbx, rbp
	jbe	.label_254
.label_240:
	xor	r8d, r8d
.label_192:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_256
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_260]]
.label_505:
	test	rsi, rsi
	jne	.label_164
	jmp	.label_187
	nop	
.label_254:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_274
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_192
	jmp	.label_172
.label_274:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_192
.label_509:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_182
	test	rsi, rsi
	jne	.label_184
	cmp	rbp, 1
	je	.label_187
	xor	r13d, r13d
	jmp	.label_173
.label_498:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_191
	cmp	byte ptr [rsp + 7], 0
	jne	.label_168
	cmp	r12d, 2
	jne	.label_196
	mov	eax, r9d
	and	al, 1
	jne	.label_196
	cmp	r14, r11
	jae	.label_198
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_198:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_202
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_202:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_207
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_207:
	add	r14, 3
	mov	r9b, 1
.label_196:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_214
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_214:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_217
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_217
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_217
	cmp	r14, r11
	jae	.label_229
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_229:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_246
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_246:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_173
.label_499:
	mov	bl, 0x62
	jmp	.label_237
.label_500:
	mov	cl, 0x74
	jmp	.label_239
.label_501:
	mov	bl, 0x76
	jmp	.label_237
.label_502:
	mov	bl, 0x66
	jmp	.label_237
.label_503:
	mov	cl, 0x72
	jmp	.label_239
.label_506:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_247
	cmp	byte ptr [rsp + 7], 0
	jne	.label_168
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x60], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_252
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_252:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_262
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_262:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_264
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_264:
	add	r14, 3
	xor	r9d, r9d
.label_247:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_173
.label_507:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_273
	cmp	r12d, 2
	jne	.label_164
	cmp	byte ptr [rsp + 7], 0
	je	.label_164
	jmp	.label_168
.label_508:
	cmp	r12d, 2
	jne	.label_169
	cmp	byte ptr [rsp + 7], 0
	jne	.label_168
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_223
.label_256:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_241
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
.label_178:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_195
	test	r8b, r8b
	je	.label_195
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_173
.label_182:
	test	rsi, rsi
	jne	.label_216
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_216
.label_187:
	mov	dl, 1
.label_504:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_168
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_173:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_224
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_226
	jmp	.label_230
	nop	word ptr cs:[rax + rax]
.label_224:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_230
.label_226:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_233
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_223
	jmp	.label_181
	nop	dword ptr [rax]
.label_230:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_181
	jmp	.label_223
.label_233:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_181
.label_191:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_210
	xor	r15d, r15d
	jmp	.label_164
.label_169:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_239
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_223
.label_239:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_168
.label_237:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_173
	nop	word ptr cs:[rax + rax]
.label_181:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_168
	cmp	r12d, 2
	jne	.label_268
	mov	eax, r9d
	and	al, 1
	jne	.label_268
	cmp	r14, r11
	jae	.label_271
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_271:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_203
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_203:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_166
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_166:
	add	r14, 3
	mov	r9b, 1
.label_268:
	cmp	r14, r11
	jae	.label_170
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_170:
	inc	r14
	jmp	.label_175
.label_241:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_179
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_179:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_255:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_200
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_205
	cmp	rbp, -2
	je	.label_209
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_211
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_193:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_263
	bt	rsi, rdx
	jb	.label_172
.label_263:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_193
.label_211:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_235
	xor	r13d, r13d
.label_235:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_255
	jmp	.label_178
.label_217:
	xor	r13d, r13d
	jmp	.label_173
.label_216:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_173
.label_273:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_164
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_164
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_164
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_258
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_261
	cmp	byte ptr [rsp + 7], 0
	jne	.label_168
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_265
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_265:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_245
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_245:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_275
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_275:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_165
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_165:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_173
.label_164:
	xor	eax, eax
.label_184:
	xor	r13d, r13d
	jmp	.label_173
.label_195:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_176
	nop	word ptr cs:[rax + rax]
.label_250:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_176:
	test	r8b, r8b
	je	.label_185
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_186
	cmp	r14, r11
	jae	.label_188
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_188:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_186
	nop	dword ptr [rax]
.label_185:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_172
	cmp	r12d, 2
	jne	.label_199
	mov	eax, r9d
	and	al, 1
	jne	.label_199
	cmp	r14, r11
	jae	.label_204
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_204:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_206
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_206:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_212
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_212:
	add	r14, 3
	mov	r9b, 1
.label_199:
	cmp	r14, r11
	jae	.label_242
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_242:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_220
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_220:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_227
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_227:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_186:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_223
	test	r9b, 1
	je	.label_253
	mov	ebx, eax
	and	bl, 1
	jne	.label_253
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_243
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_243:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_201
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_201:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_253:
	cmp	r14, r11
	jae	.label_250
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_250
	nop	word ptr cs:[rax + rax]
.label_223:
	test	r9b, 1
	je	.label_197
	and	al, 1
	jne	.label_197
	cmp	r14, r11
	jae	.label_259
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_259:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_183
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_183:
	add	r14, 2
	xor	r9d, r9d
.label_197:
	mov	ebx, r15d
.label_175:
	cmp	r14, r11
	jae	.label_266
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_266:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_210
.label_205:
	xor	r13d, r13d
.label_200:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_178
.label_209:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_167
	mov	rsi, qword ptr [rsp + 0x50]
.label_225:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_208
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_225
	xor	r13d, r13d
	jmp	.label_178
.label_167:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_178
.label_208:
	xor	r13d, r13d
	jmp	.label_178
.label_258:
	xor	r13d, r13d
	jmp	.label_173
.label_261:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_173
	nop	dword ptr [rax + rax]
.label_236:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_190
	or	dl, al
	je	.label_172
.label_190:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_189
	or	dl, al
	jne	.label_189
	test	r10b, 1
	jne	.label_194
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_189
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_215
.label_189:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_219
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_213
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_213
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_221:
	cmp	r14, r11
	jae	.label_257
	mov	byte ptr [rcx + r14], al
.label_257:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_221
	jmp	.label_213
.label_168:
	mov	qword ptr [rsp + 0x20], rbp
.label_172:
	mov	rdx, rdi
	mov	r9d, dword ptr [rsp + 0x18]
	test	byte ptr [rsp + 0x1d], 1
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x68]
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
.label_269:
	mov	r14, rax
.label_248:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_194:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_269
.label_219:
	mov	rcx, qword ptr [rsp + 8]
.label_213:
	cmp	r14, r11
	jae	.label_248
	mov	byte ptr [rcx + r14], 0
	jmp	.label_248
.label_218:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c00
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c10

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
	call	xcharalloc
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
	je	.label_277
	mov	qword ptr [rax], rbx
.label_277:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d00
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_278
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_280:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_280
.label_278:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_282
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_281]], OFFSET FLAT:slot0
.label_282:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_279
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_279:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403da0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403db0

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
	js	.label_286
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_289
	cmp	r12d, 0x7fffffff
	je	.label_284
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_287
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_287:
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
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_289:
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
	jbe	.label_285
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_288
.label_285:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_283
	mov	rdi, r14
	call	free
.label_283:
	mov	rdi, r15
	call	xcharalloc
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
.label_288:
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
.label_286:
	call	abort
.label_284:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f70

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f80
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f90
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
	.align	16
	#Procedure 0x403fa0

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
	.align	16
	#Procedure 0x403fe0

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
	je	.label_290
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
.label_290:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404040

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
	.align	16
	#Procedure 0x404080
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
	.align	16
	#Procedure 0x4040a0
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
	.align	16
	#Procedure 0x4040c0

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
	mov	rcx,  qword ptr [word ptr [rip + label_291]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_292]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_293]]
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
	.align	16
	#Procedure 0x404130

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404140

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404150
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404160

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
	.align	16
	#Procedure 0x4041b0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4041c0

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
	mov	rax,  qword ptr [word ptr [rip + label_291]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_292]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_293]]
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
	.align	16
	#Procedure 0x404230
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
	.align	16
	#Procedure 0x404250
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
	.align	16
	#Procedure 0x404270

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404280
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
	.align	16
	#Procedure 0x404290

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4042a0
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042b0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_298
	call	locale_charset
	mov	rbp, rax
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	push	0
	push	0
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_294
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_299
	mov	eax, OFFSET FLAT:label_300
	jmp	.label_297
.label_294:
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	push	0x30
	push	0x33
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_301
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_295
	mov	eax, OFFSET FLAT:label_296
	jmp	.label_297
.label_301:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_180
	mov	eax, OFFSET FLAT:label_162
.label_297:
	cmove	rax, rcx
.label_298:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404370

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
	je	.label_302
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_304
	jmp	.label_303
.label_302:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_303
.label_304:
	mov	eax, 1
	test	bpl, bpl
	je	.label_303
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
.label_303:
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
	.align	16
	#Procedure 0x4043f0

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
	je	.label_307
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_305
	jmp	.label_306
.label_307:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_306
.label_305:
	mov	eax, 1
	test	bpl, bpl
	je	.label_306
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
.label_306:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404480

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
	je	.label_308
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_310
	jmp	.label_309
.label_308:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_309
.label_310:
	mov	eax, 1
	test	bpl, bpl
	je	.label_309
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
.label_309:
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
	.align	16
	#Procedure 0x404500

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
	je	.label_313
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_312
	jmp	.label_311
.label_313:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_311
.label_312:
	mov	eax, 1
	test	bpl, bpl
	je	.label_311
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
.label_311:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404570

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
	je	.label_316
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_314
	jmp	.label_315
.label_316:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_315
.label_314:
	mov	eax, 1
	test	bpl, bpl
	je	.label_315
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_315:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4045d0

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
	je	.label_317
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_319
	jmp	.label_318
.label_317:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_318
.label_319:
	mov	eax, 1
	test	bpl, bpl
	je	.label_318
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_318:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404620

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
	je	.label_322
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_321
	jmp	.label_320
.label_322:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_320
.label_321:
	mov	eax, 1
	test	bpl, bpl
	je	.label_320
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_320:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404670

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_325
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_324
	jmp	.label_323
.label_325:
	mov	eax, 1
	test	cl, cl
	je	.label_323
.label_324:
	xor	eax, eax
.label_323:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4046a0

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
	je	.label_338
	mov	edx, OFFSET FLAT:label_329
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_335
.label_338:
	mov	edx, OFFSET FLAT:label_336
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_335:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
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
	mov	esi, OFFSET FLAT:label_337
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_341
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_342]]
.label_476:
	add	rsp, 8
	jmp	.label_328
.label_341:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
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
	jmp	.label_328
.label_477:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_327
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
.label_478:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
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
.label_479:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
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
.label_480:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
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
	jmp	.label_328
.label_481:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
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
	jmp	.label_328
.label_482:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_326
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
	jmp	.label_328
.label_483:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
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
	jmp	.label_328
.label_485:
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
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_328
.label_484:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_339
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
.label_328:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_345:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_345
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a30

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_348:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_346
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_347
	nop	dword ptr [rax]
.label_346:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_347:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_349
	inc	r9
	cmp	r9, 0xa
	jb	.label_348
.label_349:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404a90

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_350
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_350:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b20
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_352
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_354
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_20
	mov	ecx, OFFSET FLAT:label_21
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ba0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_355
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_355:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bd0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_356
	test	rax, rax
	je	.label_357
.label_356:
	pop	rbx
	ret	
.label_357:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bf0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_358
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_358:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c20

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_359
	test	rbx, rbx
	jne	.label_359
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_359:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_361
	test	rax, rax
	je	.label_360
.label_361:
	pop	rbx
	ret	
.label_360:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404c50

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_362
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_365
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_363
.label_362:
	test	rcx, rcx
	jne	.label_366
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_366:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_364
.label_363:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_365:
	call	xalloc_die
.label_364:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404cd0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ce0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cf0
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
	.align	16
	#Procedure 0x404d20
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_367
	call	rpl_calloc
	test	rax, rax
	je	.label_367
	pop	rcx
	ret	
.label_367:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d50

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
	.align	16
	#Procedure 0x404d80
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
	.section	.text
	.align	16
	#Procedure 0x404da0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_368
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_49
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404dd0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_369
	test	rsi, rsi
	mov	ecx, 1
	je	.label_370
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_370
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_369:
	mov	ecx, 1
.label_370:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e20

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_371
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_373
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_371
.label_373:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_371
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_372
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_372:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_371:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ea0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_374
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_374
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_374:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ed0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_375
	ret	
.label_375:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ef0

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
	jne	.label_376
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_376
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_377
.label_376:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_377:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_378
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_378:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404f60

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
	je	.label_379
	cmp	r15, -2
	jb	.label_379
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_379
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_379:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fc0
	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x21
	call	xmalloc
	mov	rbx, rax
	lea	rsi, [r14 + 0x2c]
	mov	edx, 0x20
	mov	rdi, rbx
	call	strncpy
	mov	byte ptr [rbx + 0x20], 0
	mov	rdi, rbx
	call	strlen
	test	rax, rax
	jle	.label_380
	add	rax, rbx
	nop	dword ptr [rax]
.label_381:
	cmp	byte ptr [rax - 1], 0x20
	jne	.label_380
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	jb	.label_381
.label_380:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405020

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	ebp, ecx
	mov	r14, rdx
	mov	r15, rsi
	mov	qword ptr [rsp], 0
	call	utmpxname
	call	setutxent
	xor	r13d, r13d
	xor	r12d, r12d
	jmp	.label_383
.label_382:
	lea	rdi, [r12 + r12*2]
	inc	r12
	shl	rdi, 7
	add	rdi, r13
	mov	edx, 0x180
	mov	rsi, rbx
	call	memcpy
	nop	dword ptr [rax + rax]
.label_383:
	call	getutxent
	mov	rbx, rax
	test	rbx, rbx
	je	.label_384
	mov	rdi, rbx
	mov	esi, ebp
	call	desirable_utmp_entry
	test	al, al
	je	.label_383
	cmp	r12, qword ptr [rsp]
	jne	.label_382
	mov	edx, 0x180
	mov	rdi, r13
	lea	rsi, [rsp]
	call	x2nrealloc
	mov	r13, rax
	jmp	.label_382
.label_384:
	call	endutxent
	mov	qword ptr [r15], r12
	mov	qword ptr [r14], r13
	xor	eax, eax
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
	.align	16
	#Procedure 0x4050d0

	.globl desirable_utmp_entry
	.type desirable_utmp_entry, @function
desirable_utmp_entry:
	cmp	byte ptr [rdi + 0x2c], 0
	je	.label_388
	movzx	eax, word ptr [rdi]
	cmp	eax, 7
	sete	al
	jmp	.label_389
.label_388:
	xor	eax, eax
.label_389:
	push	rax
	test	sil, 2
	je	.label_385
	test	al, al
	jne	.label_385
	xor	eax, eax
	jmp	.label_387
.label_385:
	test	sil, 1
	je	.label_386
	xor	al, 1
	jne	.label_386
	mov	edi, dword ptr [rdi + 4]
	test	edi, edi
	jle	.label_386
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_386
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_386
	xor	eax, eax
	jmp	.label_387
.label_386:
	mov	al, 1
.label_387:
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405120
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_390
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_390
.label_391:
	ret	
.label_390:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_391
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405150
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_392
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_392:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405170
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405180
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
	.align	16
	#Procedure 0x405190
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_393
.label_394:
	ret	
.label_393:
	cmp	edi, 0x7f
	je	.label_394
	xor	eax, eax
	jmp	.label_394
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051b0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051c0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051d0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051e0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051f0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_395
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_396]]
.label_397:
	ret	
.label_395:
	xor	eax, eax
	jmp	.label_397
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405210
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_398
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_398:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405230

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405240
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_399
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_399:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405260
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
	.align	16
	#Procedure 0x405270
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
	.align	16
	#Procedure 0x405280

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
	je	.label_400
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_401
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_401
.label_400:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_401
	test	cl, cl
	jne	.label_401
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_401:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052f0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_27
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_402
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405320

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]

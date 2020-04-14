	.section	.text
	.align	16
	#Procedure 0x401870

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	sub	rsp, 0x28
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
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
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp], rdx
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	mov	r9, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_7
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.30
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.30
	mov	ecx, OFFSET FLAT:.str.69
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_8:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d90

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r14, rsi
	mov	r12d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	r15, rax
	mov	edi, OFFSET FLAT:.str.32
	mov	esi, OFFSET FLAT:.str.33
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.32
	call	textdomain
	mov	edi, 0x10000
	call	rpl_nl_langinfo
	mov	qword ptr [word ptr [rip + decimal_point]],  rax
	test	rax, rax
	je	.label_69
	cmp	byte ptr [rax], 0
	jne	.label_70
.label_69:
	mov	qword ptr [word ptr [rip + decimal_point]], OFFSET FLAT:.str.34
	mov	eax, OFFSET FLAT:.str.34
.label_70:
	mov	rdi, rax
	call	strlen
	mov	dword ptr [dword ptr [rip + decimal_point_length]],  eax
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_16
.label_739:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.43
	mov	edx, OFFSET FLAT:inval_args
	mov	ecx, OFFSET FLAT:inval_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + inval_types]]
	mov	dword ptr [dword ptr [rip + inval_style]],  eax
	nop	word ptr cs:[rax + rax]
.label_16:
	mov	edx, OFFSET FLAT:.str.35
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x63
	jle	.label_29
	lea	ecx, [rax - 0x7a]
	cmp	ecx, 0x13
	ja	.label_31
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_32]]
.label_725:
	mov	byte ptr [byte ptr [rip + line_delim]],  1
	jmp	.label_16
.label_31:
	cmp	eax, 0x64
	jne	.label_59
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	movsx	eax, byte ptr [rcx]
	test	eax, eax
	je	.label_34
	cmp	byte ptr [rcx + 1], 0
	jne	.label_36
.label_34:
	mov	dword ptr [dword ptr [rip + delimiter]],  eax
	jmp	.label_16
.label_726:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.36
	mov	edx, OFFSET FLAT:scale_from_args
	mov	ecx, OFFSET FLAT:scale_from_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + scale_from_types]]
	mov	dword ptr [dword ptr [rip + scale_from]],  eax
	jmp	.label_16
.label_727:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	unit_to_umax
	mov	qword ptr [word ptr [rip + from_unit_size]],  rax
	jmp	.label_16
.label_728:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.37
	mov	edx, OFFSET FLAT:scale_to_args
	mov	ecx, OFFSET FLAT:scale_to_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + scale_to_types]]
	mov	dword ptr [dword ptr [rip + scale_to]],  eax
	jmp	.label_16
.label_729:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	unit_to_umax
	mov	qword ptr [word ptr [rip + to_unit_size]],  rax
	jmp	.label_16
.label_730:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.38
	mov	edx, OFFSET FLAT:round_args
	mov	ecx, OFFSET FLAT:round_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + round_types]]
	mov	dword ptr [dword ptr [rip + round_style]],  eax
	jmp	.label_16
.label_731:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + suffix]],  rax
	jmp	.label_16
.label_732:
	mov	byte ptr [byte ptr [rip + grouping]],  1
	jmp	.label_16
.label_733:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	mov	ecx, OFFSET FLAT:padding_width
	mov	r8d, OFFSET FLAT:.str_0
	call	xstrtol
	test	eax, eax
	jne	.label_68
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	test	rax, rax
	je	.label_68
	jns	.label_16
	mov	byte ptr [byte ptr [rip + padding_alignment]],  1
	neg	rax
	mov	qword ptr [word ptr [rip + padding_width]],  rax
	jmp	.label_16
.label_734:
	cmp	qword ptr [word ptr [rip + n_frp]],  0
	jne	.label_13
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 1
	call	set_fields
	jmp	.label_16
.label_735:
	mov	byte ptr [byte ptr [rip + debug]],  1
	jmp	.label_16
.label_736:
	mov	byte ptr [byte ptr [rip + dev_debug]],  1
	mov	byte ptr [byte ptr [rip + debug]],  1
	jmp	.label_16
.label_737:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_25
	xor	esi, esi
	mov	edx, 0xa
	mov	ecx, OFFSET FLAT:header
	mov	r8d, OFFSET FLAT:.str_0
	call	xstrtoumax
	test	eax, eax
	jne	.label_28
	mov	rax,  qword ptr [word ptr [rip + header]]
	test	rax, rax
	jne	.label_16
	jmp	.label_28
.label_738:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + format_str]],  rax
	jmp	.label_16
.label_25:
	mov	qword ptr [word ptr [rip + header]],  1
	jmp	.label_16
.label_29:
	cmp	eax, -1
	jne	.label_24
	mov	rbx,  qword ptr [word ptr [rip + format_str]]
	mov	al,  byte ptr [byte ptr [rip + grouping]]
	test	rbx, rbx
	je	.label_57
	test	al, 1
	jne	.label_39
.label_57:
	mov	cl,  byte ptr [byte ptr [rip + debug]]
	test	r15, r15
	jne	.label_40
	mov	dl, cl
	xor	dl, 1
	test	dl, 1
	jne	.label_40
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	cl,  byte ptr [byte ptr [rip + debug]]
	mov	al,  byte ptr [byte ptr [rip + grouping]]
	mov	rbx,  qword ptr [word ptr [rip + format_str]]
.label_40:
	test	rbx, rbx
	jne	.label_47
	mov	rdx,  qword ptr [word ptr [rip + padding_width]]
	test	rdx, rdx
	jne	.label_47
	test	cl, 1
	je	.label_47
	mov	ecx,  dword ptr [dword ptr [rip + scale_to]]
	or	ecx,  dword ptr [dword ptr [rip + scale_from]]
	jne	.label_47
	xor	al, 1
	test	al, 1
	je	.label_47
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rbx,  qword ptr [word ptr [rip + format_str]]
.label_47:
	test	rbx, rbx
	je	.label_52
	mov	qword ptr [rsp + 0x40], 0
	xor	r13d, r13d
	xor	ebp, ebp
	jmp	.label_56
.label_63:
	movzx	eax, al
	cmp	eax, 0x25
	sete	al
	inc	r13
	movzx	eax, al
	lea	rbp, [rax + rbp + 1]
.label_56:
	movzx	eax, byte ptr [rbx + rbp]
	cmp	eax, 0x25
	jne	.label_61
	movzx	ecx, byte ptr [rbx + rbp + 1]
	cmp	ecx, 0x25
	je	.label_63
	jmp	.label_66
	nop	dword ptr [rax]
.label_61:
	test	al, al
	jne	.label_63
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.105
	jmp	.label_14
.label_66:
	mov	qword ptr [rsp + 0x30], r14
	inc	rbp
	xor	esi, esi
	jmp	.label_18
	nop	dword ptr [rax]
.label_12:
	mov	byte ptr [byte ptr [rip + grouping]],  1
	inc	rbp
.label_18:
	lea	rcx, [rbx + rbp]
	mov	rax, -1
	nop	word ptr cs:[rax + rax]
.label_9:
	movzx	edx, byte ptr [rcx + rax + 1]
	inc	rax
	cmp	edx, 0x20
	je	.label_9
	add	rbp, rax
	movzx	ecx, byte ptr [rbx + rbp]
	cmp	ecx, 0x27
	je	.label_12
	movzx	ecx, cl
	cmp	ecx, 0x30
	je	.label_15
	test	rax, rax
	jne	.label_18
	jmp	.label_19
.label_15:
	inc	rbp
	mov	sil, 1
	jmp	.label_18
.label_19:
	mov	dword ptr [rsp + 0x28], esi
	add	rbp, rbx
	call	__errno_location
	mov	r15, rax
	mov	qword ptr [rsp + 0x20], r15
	mov	dword ptr [r15], 0
	lea	rsi, [rsp + 0x40]
	mov	edx, 0xa
	mov	rdi, rbp
	call	strtol
	mov	r14, rax
	cmp	dword ptr [r15], 0x22
	je	.label_20
	mov	r15, qword ptr [rsp + 0x40]
	test	r14, r14
	je	.label_26
	cmp	r15, rbp
	je	.label_26
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_30
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	test	rax, rax
	je	.label_30
	mov	eax, dword ptr [rsp + 0x28]
	test	al, al
	je	.label_53
	test	r14, r14
	jg	.label_30
.label_53:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.108
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_30:
	test	r14, r14
	js	.label_37
	mov	eax, dword ptr [rsp + 0x28]
	test	al, al
	je	.label_38
	mov	qword ptr [word ptr [rip + zero_padding_width]],  r14
	jmp	.label_26
.label_37:
	mov	byte ptr [byte ptr [rip + padding_alignment]],  1
	neg	r14
.label_38:
	mov	qword ptr [word ptr [rip + padding_width]],  r14
.label_26:
	movzx	eax, byte ptr [r15]
	sub	r15, rbx
	cmp	eax, 0x2e
	je	.label_42
	test	al, al
	jne	.label_44
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
	jmp	.label_14
.label_42:
	mov	rbp, qword ptr [rsp + 0x20]
	mov	dword ptr [rbp], 0
	lea	r14, [r15 + rbx + 1]
	lea	rsi, [rsp + 0x40]
	mov	edx, 0xa
	mov	rdi, r14
	call	strtol
	mov	qword ptr [word ptr [rip + user_precision]],  rax
	test	rax, rax
	js	.label_48
	cmp	dword ptr [rbp], 0x22
	je	.label_48
	movsx	rbp, byte ptr [r14]
	call	__ctype_b_loc
	cmp	rbp, 0x2b
	je	.label_48
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	and	eax, 1
	test	ax, ax
	jne	.label_48
	mov	r15, qword ptr [rsp + 0x40]
	mov	al, byte ptr [r15]
	sub	r15, rbx
.label_44:
	movzx	eax, al
	cmp	eax, 0x66
	jne	.label_51
	inc	r15
	mov	rax, r15
	jmp	.label_46
	nop	dword ptr [rax + rax]
.label_65:
	movzx	ecx, cl
	cmp	ecx, 0x25
	sete	cl
	movzx	ecx, cl
	lea	rax, [rcx + rax + 1]
.label_46:
	movzx	ecx, byte ptr [rbx + rax]
	cmp	ecx, 0x25
	je	.label_60
	test	cl, cl
	jne	.label_65
	jmp	.label_64
.label_60:
	movzx	edx, byte ptr [rax + rbx + 1]
	cmp	edx, 0x25
	je	.label_65
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.112
.label_14:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_64:
	test	r13, r13
	je	.label_55
	mov	rdi, rbx
	mov	rsi, r13
	call	xstrndup
	mov	qword ptr [word ptr [rip + format_str_prefix]],  rax
.label_55:
	cmp	byte ptr [rbx + r15], 0
	je	.label_11
	add	r15, rbx
	mov	rdi, r15
	call	xstrdup
	mov	qword ptr [word ptr [rip + format_str_suffix]],  rax
.label_11:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_33
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp + 0x28], rax
	xor	edi, edi
	mov	rsi, rbx
	call	quote_n
	mov	qword ptr [rsp + 0x20], rax
	mov	al,  byte ptr [byte ptr [rip + grouping]]
	and	al, 1
	mov	eax, OFFSET FLAT:.str.114
	mov	ebp, OFFSET FLAT:.str.115
	cmovne	rbp, rax
	mov	r13,  qword ptr [word ptr [rip + padding_width]]
	mov	al,  byte ptr [byte ptr [rip + padding_alignment]]
	and	al, 1
	mov	eax, OFFSET FLAT:.str.116
	mov	r15d, OFFSET FLAT:.str.117
	cmovne	r15, rax
	mov	rsi,  qword ptr [word ptr [rip + format_str_prefix]]
	test	rsi, rsi
	mov	ebx, OFFSET FLAT:.str_0
	cmove	rsi, rbx
	mov	edi, 1
	call	quote_n
	mov	r14, rax
	mov	rax,  qword ptr [word ptr [rip + format_str_suffix]]
	test	rax, rax
	cmovne	rbx, rax
	mov	edi, 2
	mov	rsi, rbx
	call	quote_n
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp], r15
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.113
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8, rbp
	mov	r9, r13
	call	__fprintf_chk
.label_33:
	mov	r14, qword ptr [rsp + 0x30]
.label_52:
	movzx	eax,  byte ptr [byte ptr [rip + grouping]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_43
	cmp	dword ptr [dword ptr [rip + scale_to]],  0
	jne	.label_45
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_43
	mov	edi, 0x10001
	call	rpl_nl_langinfo
	cmp	byte ptr [rax], 0
	jne	.label_43
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_43:
	mov	rsi,  qword ptr [word ptr [rip + padding_width]]
	cmp	qword ptr [word ptr [rip + padding_buffer_size]],  rsi
	ja	.label_49
	inc	rsi
	mov	qword ptr [word ptr [rip + padding_buffer_size]],  rsi
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	call	xrealloc
	mov	qword ptr [word ptr [rip + padding_buffer]],  rax
	mov	rsi,  qword ptr [word ptr [rip + padding_width]]
.label_49:
	test	rsi, rsi
	sete	al
	cmp	dword ptr [dword ptr [rip + delimiter]],  0x80
	sete	cl
	and	cl, al
	movzx	eax, cl
	mov	dword ptr [dword ptr [rip + auto_padding]],  eax
	cmp	dword ptr [dword ptr [rip + inval_style]],  0
	je	.label_54
	mov	byte ptr [byte ptr [rip + conv_exit_code]],  1
.label_54:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r12d
	jge	.label_62
	movzx	ecx,  byte ptr [byte ptr [rip + debug]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_67
	mov	rcx,  qword ptr [word ptr [rip + header]]
	test	rcx, rcx
	je	.label_67
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	eax,  dword ptr [dword ptr [rip + optind]]
.label_67:
	mov	ebx, 1
	cmp	eax, r12d
	jge	.label_58
	nop	dword ptr [rax]
.label_17:
	cdqe	
	mov	rdi, qword ptr [r14 + rax*8]
	mov	esi, 1
	call	process_line
	and	ebx, eax
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r12d
	jl	.label_17
	jmp	.label_21
.label_62:
	mov	qword ptr [rsp + 0x40], 0
	mov	qword ptr [rsp + 0x38], 0
	mov	rax,  qword ptr [word ptr [rip + header]]
	lea	rcx, [rax - 1]
	mov	qword ptr [word ptr [rip + header]],  rcx
	test	rax, rax
	je	.label_22
	xor	r14d, r14d
	lea	rbx, [rsp + 0x40]
	lea	rbp, [rsp + 0x38]
.label_35:
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	edx, 0xa
	cmovne	edx, r14d
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, rbx
	mov	rsi, rbp
	call	getdelim
	test	rax, rax
	jle	.label_22
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rax,  qword ptr [word ptr [rip + header]]
	lea	rcx, [rax - 1]
	mov	qword ptr [word ptr [rip + header]],  rcx
	test	rax, rax
	jne	.label_35
.label_22:
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	xor	ebp, ebp
	and	al, 1
	mov	edx, 0xa
	cmovne	edx, ebp
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rsp + 0x40]
	lea	rsi, [rsp + 0x38]
	call	getdelim
	mov	ebx, 1
	test	rax, rax
	jle	.label_41
	lea	r14, [rsp + 0x40]
	lea	r15, [rsp + 0x38]
	nop	dword ptr [rax]
.label_50:
	mov	rdi, qword ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rax + rdi - 1]
	mov	dl,  byte ptr [byte ptr [rip + line_delim]]
	and	dl, 1
	mov	edx, 0xa
	cmovne	edx, ebp
	cmp	ecx, edx
	jne	.label_10
	mov	byte ptr [rdi + rax - 1], 0
	mov	rdi, qword ptr [rsp + 0x40]
.label_10:
	cmp	ecx, edx
	sete	al
	movzx	esi, al
	call	process_line
	and	ebx, eax
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	edx, 0xa
	cmovne	edx, ebp
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, r14
	mov	rsi, r15
	call	getdelim
	test	rax, rax
	jg	.label_50
.label_41:
	mov	rax,  qword ptr [word ptr [rip + stdin]]
	test	byte ptr [rax], 0x20
	je	.label_21
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_21:
	test	ebx, ebx
	jne	.label_58
	mov	al,  byte ptr [byte ptr [rip + debug]]
	xor	al, 1
	test	al, 1
	jne	.label_58
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_58:
	mov	eax,  dword ptr [dword ptr [rip + inval_style]]
	and	eax, 0xfffffffe
	cmp	eax, 2
	setne	al
	movzx	ecx, al
	add	ecx, ecx
	xor	eax, eax
	test	ebx, ebx
	cmove	eax, ecx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_24:
	cmp	eax, 0xffffff7d
	je	.label_71
	cmp	eax, 0xffffff7e
	jne	.label_59
	xor	edi, edi
	call	usage
.label_71:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, OFFSET FLAT:.str.17_0
	mov	r8d, OFFSET FLAT:.str.45
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_59:
	mov	edi, 1
	call	usage
.label_39:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	jmp	.label_23
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.107
	jmp	.label_14
.label_48:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.110
	jmp	.label_14
.label_51:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.111
	jmp	.label_14
.label_45:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	jmp	.label_23
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	jmp	.label_27
.label_13:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	jmp	.label_23
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
.label_27:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
.label_23:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x4028e0

	.globl unit_to_umax
	.type unit_to_umax, @function
unit_to_umax:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x10], 0
	mov	r8d, OFFSET FLAT:.str.93
	xor	r15d, r15d
	test	rbx, rbx
	mov	rdi, r14
	je	.label_73
	movsx	eax, byte ptr [rbx + r14 - 1]
	add	eax, -0x30
	mov	r8d, OFFSET FLAT:.str.93
	xor	r15d, r15d
	cmp	eax, 0xa
	mov	rdi, r14
	jb	.label_73
	lea	rdi, [rbx + 2]
	call	xmalloc
	mov	r15, rax
	lea	r12, [r15 + rbx - 1]
	mov	qword ptr [rsp + 0x10], r12
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	cmp	rbx, 2
	jb	.label_72
	movzx	eax, byte ptr [r15 + rbx - 1]
	cmp	eax, 0x69
	jne	.label_72
	movsx	eax, byte ptr [r12 - 1]
	add	eax, -0x30
	cmp	eax, 0xa
	jae	.label_74
.label_72:
	mov	byte ptr [r12 + 1], 0x42
	lea	rax, [r12 + 2]
	mov	qword ptr [rsp + 0x10], rax
	mov	byte ptr [r12 + 2], 0
	mov	r8d, OFFSET FLAT:.str.94
	jmp	.label_76
.label_74:
	mov	byte ptr [r12], 0
	mov	r8d, OFFSET FLAT:.str.93
.label_76:
	mov	rdi, r15
.label_73:
	lea	rsi, [rsp + 0x10]
	lea	rcx, [rsp + 8]
	mov	edx, 0xa
	call	xstrtoumax
	test	eax, eax
	jne	.label_75
	mov	rax, qword ptr [rsp + 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_75
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_75
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_75:
	mov	rdi, r15
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.95
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a20

	.globl process_line
	.type process_line, @function
process_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, esi
	mov	r13, rdi
	mov	r12b, 1
	xor	r15d, r15d
	jmp	.label_85
	nop	dword ptr [rax]
.label_81:
	inc	rbp
	mov	r13, rbp
	mov	r12b, bl
.label_85:
	inc	r15
	mov	eax,  dword ptr [dword ptr [rip + delimiter]]
	mov	bl, byte ptr [r13]
	cmp	eax, 0x80
	jne	.label_80
	test	bl, bl
	je	.label_78
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rbp, r13
.label_82:
	movzx	ecx, bl
	cmp	ecx, 0xa
	je	.label_86
	movzx	edx, word ptr [rax + rcx*2]
	mov	esi, edx
	and	esi, 1
	test	si, si
	je	.label_92
.label_86:
	mov	bl, byte ptr [rbp + 1]
	inc	rbp
	test	bl, bl
	jne	.label_82
	jmp	.label_78
	nop	word ptr cs:[rax + rax]
.label_80:
	test	bl, bl
	je	.label_77
	movsx	ecx, bl
	cmp	ecx, eax
	mov	rbp, r13
	je	.label_88
	nop	
.label_91:
	movsx	ecx, bl
	cmp	ecx, eax
	je	.label_88
	mov	bl, byte ptr [rbp + 1]
	inc	rbp
	test	bl, bl
	jne	.label_91
	jmp	.label_78
	nop	word ptr cs:[rax + rax]
.label_92:
	cmp	ecx, 0xa
	je	.label_83
	and	edx, 1
	test	dx, dx
	jne	.label_83
	nop	dword ptr [rax]
.label_90:
	movzx	ecx, byte ptr [rbp + 1]
	test	rcx, rcx
	je	.label_78
	inc	rbp
	cmp	ecx, 0xa
	je	.label_83
	movzx	ecx, word ptr [rax + rcx*2]
	and	ecx, 1
	test	cx, cx
	je	.label_90
	jmp	.label_83
.label_77:
	mov	rbp, r13
.label_88:
	test	bl, bl
	je	.label_78
.label_83:
	mov	byte ptr [rbp], 0
	mov	rdi, r13
	mov	rsi, r15
	call	process_field
	mov	bl, al
	test	bl, bl
	je	.label_84
	mov	bl, r12b
.label_84:
	mov	eax,  dword ptr [dword ptr [rip + delimiter]]
	cmp	eax, 0x80
	mov	ecx, 0x20
	cmove	eax, ecx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_87
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	jmp	.label_81
.label_87:
	movzx	esi, al
	call	__overflow
	jmp	.label_81
.label_78:
	mov	rdi, r13
	mov	rsi, r15
	call	process_field
	mov	bl, al
	test	r14b, r14b
	je	.label_79
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	xor	ecx, ecx
	and	al, 1
	mov	esi, 0xa
	cmovne	esi, ecx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_89
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_79:
	and	r12b, 1
	movzx	ecx, r12b
	xor	eax, eax
	test	bl, bl
	cmovne	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_89:
	call	__overflow
	jmp	.label_79
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bd0

	.globl process_field
	.type process_field, @function
process_field:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x248
	mov	rbp, rsi
	mov	r12, rdi
	mov	rax,  qword ptr [word ptr [rip + frp]]
	test	rax, rax
	je	.label_165
	mov	rcx, qword ptr [rax]
	cmp	rcx, -1
	je	.label_111
	add	rax, 0x10
	nop	word ptr cs:[rax + rax]
.label_106:
	cmp	rcx, rbp
	ja	.label_190
	cmp	qword ptr [rax - 8], rbp
	jae	.label_102
.label_190:
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	cmp	rcx, -1
	jne	.label_106
	jmp	.label_111
.label_165:
	cmp	rbp, 1
	jne	.label_111
.label_102:
	mov	r14,  qword ptr [word ptr [rip + suffix]]
	test	r14, r14
	je	.label_115
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	mov	rdi, r14
	call	strlen
	cmp	rbx, rax
	jbe	.label_115
	add	rbx, r12
	sub	rbx, rax
	mov	rdi, r14
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_134
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_115
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.119
	xor	eax, eax
	call	__fprintf_chk
	jmp	.label_115
.label_111:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r12
	call	fputs_unlocked
	mov	bl, 1
.label_122:
	mov	al, bl
	add	rsp, 0x248
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_134:
	mov	byte ptr [rbx], 0
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_115
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.118
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_115:
	mov	bl, byte ptr [r12]
	test	bl, bl
	mov	r15, r12
	je	.label_171
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	r15, r12
	nop	dword ptr [rax]
.label_175:
	movzx	ecx, bl
	test	byte ptr [rax + rcx*2], 1
	je	.label_171
	mov	bl, byte ptr [r15 + 1]
	inc	r15
	test	bl, bl
	jne	.label_175
.label_171:
	cmp	dword ptr [dword ptr [rip + auto_padding]],  0
	je	.label_181
	cmp	rbp, 1
	jg	.label_186
	mov	eax, r12d
	sub	eax, r15d
	jne	.label_186
	mov	qword ptr [word ptr [rip + padding_width]],  0
	jmp	.label_188
.label_186:
	mov	rdi, r12
	call	strlen
	mov	qword ptr [word ptr [rip + padding_width]],  rax
	cmp	qword ptr [word ptr [rip + padding_buffer_size]],  rax
	ja	.label_188
	inc	rax
	mov	qword ptr [word ptr [rip + padding_buffer_size]],  rax
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [word ptr [rip + padding_buffer]],  rax
.label_188:
	mov	al,  byte ptr [byte ptr [rip + dev_debug]]
	and	al, 1
	je	.label_212
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rcx,  qword ptr [word ptr [rip + padding_width]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.120
	xor	eax, eax
	call	__fprintf_chk
.label_181:
	mov	eax,  dword ptr [dword ptr [rip + scale_from]]
	mov	qword ptr [rsp + 0x30], rax
	lea	eax, [rax - 3]
	cmp	eax, 2
	mov	eax, 0x400
	mov	ecx, 0x3e8
	cmovb	ecx, eax
	mov	dword ptr [rsp + 0x40], ecx
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_222
	mov	qword ptr [rsp + 0x50], r12
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	rsi, r15
	call	quote_n
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + decimal_point]]
	mov	edi, 1
	call	quote_n
	mov	rbp, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.123
	mov	r9d, 0x12
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, rbp
	call	__fprintf_chk
	jmp	.label_114
.label_222:
	mov	qword ptr [rsp + 0x50], r12
	jmp	.label_114
.label_212:
	mov	qword ptr [rsp + 0x50], r12
	mov	eax,  dword ptr [dword ptr [rip + scale_from]]
	mov	qword ptr [rsp + 0x30], rax
	lea	eax, [rax - 3]
	cmp	eax, 2
	mov	eax, 0x400
	mov	ecx, 0x3e8
	cmovb	ecx, eax
	mov	dword ptr [rsp + 0x40], ecx
.label_114:
	movzx	ebx, byte ptr [r15]
	lea	r13, [r15 + 1]
	cmp	ebx, 0x2d
	cmovne	r13, r15
	xor	r12d, r12d
	test	r13, r13
	mov	r14d, 0
	fldz	
	je	.label_129
	fstp	st(0)
	movsx	eax, byte ptr [r13]
	add	eax, -0x30
	fldz	
	cmp	eax, 0xa
	mov	r14, r13
	jae	.label_129
	mov	ebp, ebx
	fldz	
	xor	ecx, ecx
	mov	edi, 1
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_161:
	mov	esi, edx
	fxch	st(1)
	fucomi	st(1)
	setp	dl
	setne	bl
	or	bl, dl
	test	eax, eax
	setne	dl
	or	dl, bl
	movzx	edx, dl
	add	edx, esi
	cmp	edx, 0x1b
	ja	.label_108
	cmp	edx, 0x12
	cmova	r12d, edi
	fmul	dword ptr [dword ptr [rip + label_95]]
	mov	dword ptr [rsp + 0x17c], eax
	fiadd	dword ptr [rsp + 0x17c]
	movsx	eax, byte ptr [r13 + 1]
	inc	r13
	add	eax, -0x30
	cmp	eax, 9
	fxch	st(1)
	jbe	.label_161
	fstp	st(0)
	movzx	eax, bpl
	cmp	eax, 0x2d
	fld	st(0)
	fchs	
	fxch	st(1)
	fcmove	st(0), st(1)
	fstp	st(1)
	xor	ecx, ecx
	cmp	r12d, 1
	ja	.label_143
	mov	dword ptr [rsp + 0x24], ebp
	fstp	xword ptr [rsp + 0x58]
	mov	rbp,  qword ptr [word ptr [rip + decimal_point]]
	mov	eax,  dword ptr [dword ptr [rip + decimal_point_length]]
	mov	r14, r13
	jmp	.label_177
.label_129:
	fstp	st(0)
	mov	rbp,  qword ptr [word ptr [rip + decimal_point]]
	mov	eax,  dword ptr [dword ptr [rip + decimal_point_length]]
	mov	dword ptr [rsp + 0x28], eax
	movsxd	rdx, eax
	mov	rdi, r14
	mov	rsi, rbp
	call	strncmp
	fldz	
	xor	r12d, r12d
	test	eax, eax
	mov	ecx, 0
	jne	.label_199
	fstp	st(0)
	movzx	eax, bl
	mov	dword ptr [rsp + 0x24], ebx
	cmp	eax, 0x2d
	fldz	
	fld	st(0)
	fchs	
	fxch	st(1)
	fcmove	st(0), st(1)
	fstp	st(1)
	fstp	xword ptr [rsp + 0x58]
	mov	eax, dword ptr [rsp + 0x28]
.label_177:
	movsxd	rbx, eax
	mov	rdi, r14
	mov	rsi, rbp
	mov	rdx, rbx
	call	strncmp
	xor	ecx, ecx
	test	eax, eax
	je	.label_221
	fld	xword ptr [rsp + 0x58]
.label_144:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, r13
	jne	.label_220
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	st(0)
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.124
	xor	eax, eax
	fstp	xword ptr [rsp + 0x58]
	mov	rbx, rcx
	call	__fprintf_chk
	mov	rcx, rbx
	fld	xword ptr [rsp + 0x58]
	mov	rbp, r13
.label_220:
	movzx	ebx, byte ptr [rbp]
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_236
	mov	r14, rcx
	fstp	xword ptr [rsp + 0x58]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	jmp	.label_96
	nop	dword ptr [rax]
.label_182:
	movzx	ebx, byte ptr [rbp + 1]
	inc	rbp
.label_96:
	test	byte ptr [rax + rbx*2], 1
	jne	.label_182
	movsx	ebx, bl
	mov	edi, OFFSET FLAT:.str.93
	mov	edx, 9
	mov	esi, ebx
	call	memchr
	test	rax, rax
	je	.label_183
	mov	rax, qword ptr [rsp + 0x30]
	test	eax, eax
	fld	xword ptr [rsp + 0x58]
	mov	rcx, r14
	je	.label_121
	cmp	ebx, 0x53
	jg	.label_126
	add	ebx, -0x45
	cmp	ebx, 0xb
	ja	.label_98
	mov	r14d, 1
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_131]]
.label_793:
	mov	r14d, 6
	jmp	.label_135
.label_221:
	mov	rsi, rbp
	movzx	r9d, byte ptr [r14 + rbx]
	cmp	r9d, 0x2d
	lea	r13, [r14 + rbx + 1]
	lea	r10, [r14 + rbx]
	cmovne	r13, r10
	xor	ebp, ebp
	test	r13, r13
	mov	edi, 0
	fldz	
	je	.label_138
	fstp	st(0)
	movsx	eax, byte ptr [r13]
	add	eax, -0x30
	fldz	
	cmp	eax, 0xa
	mov	rdi, r13
	jae	.label_138
	fldz	
	xor	ecx, ecx
	mov	r8d, 1
	xor	esi, esi
	fld	xword ptr [rsp + 0x58]
	nop	
.label_168:
	mov	edi, esi
	fxch	st(2)
	fucomi	st(1)
	setp	bl
	setne	dl
	or	dl, bl
	test	eax, eax
	setne	bl
	or	bl, dl
	movzx	esi, bl
	add	esi, edi
	cmp	esi, 0x1b
	ja	.label_237
	cmp	esi, 0x12
	cmova	ebp, r8d
	fmul	dword ptr [dword ptr [rip + label_95]]
	mov	dword ptr [rsp + 0x178], eax
	fiadd	dword ptr [rsp + 0x178]
	movsx	eax, byte ptr [r13 + 1]
	inc	r13
	add	eax, -0x30
	cmp	eax, 9
	fxch	st(2)
	jbe	.label_168
	fstp	st(1)
	movzx	eax, r9b
	cmp	eax, 0x2d
	fld	st(1)
	fchs	
	fxch	st(2)
	fcmove	st(0), st(2)
	fstp	st(2)
	xor	ecx, ecx
	cmp	ebp, 1
	jbe	.label_156
	fstp	st(1)
	mov	r12d, ebp
	jmp	.label_143
.label_138:
	fstp	st(0)
	mov	qword ptr [rsp + 0x28], r10
	mov	r14d, r9d
	mov	rdx, rbx
	call	strncmp
	xor	ebp, ebp
	test	eax, eax
	je	.label_197
	xor	ecx, ecx
	fld	xword ptr [rsp + 0x58]
	jmp	.label_199
.label_236:
	mov	rax, qword ptr [rsp + 0x30]
	jmp	.label_166
.label_183:
	fld	xword ptr [rsp + 0x58]
	mov	rcx, r14
	jmp	.label_205
.label_197:
	mov	r9d, r14d
	movzx	eax, r9b
	cmp	eax, 0x2d
	fldz	
	fld	st(0)
	fchs	
	fxch	st(1)
	fcmove	st(0), st(1)
	fstp	st(1)
	fld	xword ptr [rsp + 0x58]
	mov	r10, qword ptr [rsp + 0x28]
.label_156:
	movzx	eax, r9b
	cmp	ebp, 1
	cmove	r12d, ebp
	xor	ecx, ecx
	cmp	eax, 0x2d
	jne	.label_217
	fstp	st(1)
	jmp	.label_199
.label_217:
	mov	rcx, r13
	sub	rcx, r10
	fld1	
	test	ecx, ecx
	mov	edi, dword ptr [rsp + 0x24]
	fldz	
	fldz	
	je	.label_119
	fstp	st(2)
	fstp	st(0)
	fstp	st(0)
	mov	eax, ecx
	dec	eax
	fld	dword ptr [dword ptr [rip + label_95]]
	fldz	
	fldz	
	je	.label_119
	fstp	st(2)
	fstp	st(0)
	fstp	st(0)
	mov	esi, r13d
	sub	esi, r10d
	lea	edx, [rsi + 7]
	add	esi, -2
	fld	dword ptr [dword ptr [rip + label_95]]
	fldz	
	test	dl, 7
	je	.label_235
	fstp	st(0)
	fstp	st(0)
	mov	edx, r13d
	sub	edx, r10d
	add	dl, 7
	movzx	edx, dl
	and	edx, 7
	neg	edx
	fld	dword ptr [dword ptr [rip + label_95]]
	fldz	
	fxch	st(1)
.label_110:
	fstp	st(1)
	fmul	dword ptr [dword ptr [rip + label_95]]
	dec	eax
	inc	edx
	fld	st(0)
	fxch	st(1)
	jne	.label_110
.label_235:
	cmp	esi, 7
	fldz	
	fxch	st(1)
	fxch	st(2)
	fxch	st(1)
	jb	.label_119
	fstp	st(2)
	fstp	st(1)
	fld	dword ptr [dword ptr [rip + label_95]]
	fldz	
	fxch	st(1)
.label_128:
	fstp	st(1)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	add	eax, -8
	fldz	
	fxch	st(1)
	jne	.label_128
.label_119:
	fstp	st(1)
	fstp	st(0)
	movzx	eax, dil
	cmp	eax, 0x2d
	fdivp	st(2)
	fld	st(1)
	fchs	
	fxch	st(2)
	fcmove	st(0), st(2)
	fstp	st(2)
	faddp	st(1)
	cmp	r12d, 1
	ja	.label_143
	jmp	.label_144
.label_126:
	cmp	ebx, 0x54
	je	.label_210
	cmp	ebx, 0x59
	je	.label_219
	cmp	ebx, 0x5a
	jne	.label_98
	mov	r14d, 7
	jmp	.label_135
.label_237:
	fstp	st(0)
.label_108:
	fstp	st(0)
.label_754:
	mov	esi, OFFSET FLAT:.str.128
	mov	r12d, 2
	jmp	.label_152
.label_794:
	mov	r14d, 3
	jmp	.label_135
.label_795:
	mov	r14d, 2
	jmp	.label_135
.label_796:
	mov	r14d, 5
	jmp	.label_135
.label_210:
	mov	r14d, 4
	jmp	.label_135
.label_219:
	mov	r14d, 8
	jmp	.label_135
.label_98:
	xor	r14d, r14d
.label_135:
	lea	r13, [rbp + 1]
	xor	ecx, ecx
	cmp	eax, 1
	jne	.label_166
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x69
	jne	.label_228
	add	rbp, 2
	mov	dword ptr [rsp + 0x40], 0x400
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_109
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	xor	ebx, ebx
	mov	dword ptr [rsp + 0x40], 0x400
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.125
	mov	ecx, 0x400
	xor	eax, eax
	fstp	xword ptr [rsp + 0x58]
	call	__fprintf_chk
	fld	xword ptr [rsp + 0x58]
	mov	r13, rbp
	jmp	.label_200
.label_166:
	cmp	eax, 4
	jne	.label_194
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x69
	jne	.label_240
	mov	rbx, rcx
	inc	r13
	jmp	.label_200
.label_194:
	mov	rbx, rcx
	jmp	.label_200
.label_228:
	xor	ebx, ebx
	jmp	.label_200
.label_109:
	xor	ebx, ebx
	mov	r13, rbp
.label_200:
	mov	eax, dword ptr [rsp + 0x40]
	mov	dword ptr [rsp + 0x174], eax
	fild	dword ptr [rsp + 0x174]
	fld1	
	test	r14d, r14d
	fldz	
	je	.label_209
	fstp	st(0)
	fstp	st(0)
	mov	eax, r14d
	dec	eax
	je	.label_214
	lea	edx, [r14 + 7]
	lea	ecx, [r14 - 2]
	fldz	
	test	dl, 7
	je	.label_218
	fstp	st(0)
	and	edx, 7
	neg	edx
	fld	st(0)
	fldz	
	nop	dword ptr [rax + rax]
.label_226:
	fstp	st(0)
	fmul	st(1)
	dec	eax
	inc	edx
	fld	st(0)
	jne	.label_226
	jmp	.label_230
.label_214:
	fldz	
	fldz	
	fxch	st(1)
	fxch	st(2)
	fxch	st(1)
	jmp	.label_209
.label_218:
	fld	st(1)
.label_230:
	cmp	ecx, 7
	jb	.label_209
	fstp	st(1)
	fldz	
	nop	word ptr cs:[rax + rax]
.label_238:
	fstp	st(0)
	fmul	st(1)
	fmul	st(1)
	fmul	st(1)
	fmul	st(1)
	fmul	st(1)
	fmul	st(1)
	fmul	st(1)
	fmul	st(1)
	add	eax, -8
	fldz	
	jne	.label_238
.label_209:
	fstp	st(2)
	fstp	st(1)
	mov	al,  byte ptr [byte ptr [rip + dev_debug]]
	and	al, 1
	je	.label_153
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	st(0)
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.126
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x40]
	mov	r8d, r14d
	fxch	st(1)
	fstp	xword ptr [rsp + 0x58]
	fstp	xword ptr [rsp + 0x40]
	call	__fprintf_chk
	fld	xword ptr [rsp + 0x58]
	fld	xword ptr [rsp + 0x40]
	fmulp	st(1)
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_124
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	st(0)
	fstp	xword ptr [rsp + 0x10]
	fld	st(0)
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.127
	xor	eax, eax
	fstp	xword ptr [rsp + 0x58]
	call	__fprintf_chk
	fld	xword ptr [rsp + 0x58]
	jmp	.label_124
.label_153:
	fmulp	st(1)
.label_124:
	mov	rcx, rbx
	cmp	r12d, 2
	jb	.label_142
.label_143:
	xor	esi, esi
	mov	eax, r12d
	cmp	r12d, 6
	ja	.label_152
	jmp	qword ptr [word ptr [+ (rax * 8) + label_150]]
.label_199:
	mov	esi, OFFSET FLAT:.str.129
	mov	r12d, 3
.label_152:
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	je	.label_100
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	and	al, 1
	sete	al
	movzx	ebp, al
	add	ebp, ebp
	xor	edi, edi
	mov	edx, 5
	fstp	xword ptr [rsp + 0x58]
	mov	rbx, rcx
	call	dcgettext
	mov	r14, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, r14
.label_227:
	call	error
	mov	rcx, rbx
.label_216:
	fld	xword ptr [rsp + 0x58]
.label_100:
	mov	rdx,  qword ptr [word ptr [rip + from_unit_size]]
	cmp	rdx, 1
	mov	rax,  qword ptr [word ptr [rip + to_unit_size]]
	jne	.label_174
	cmp	rax, 1
	je	.label_176
.label_174:
	mov	qword ptr [rsp + 0x160], rdx
	test	rdx, rdx
	setns	dl
	movzx	edx, dl
	fild	qword ptr [rsp + 0x160]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_178]]
	fmulp	st(1)
	mov	qword ptr [rsp + 0x168], rax
	test	rax, rax
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0x168]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_178]]
	fdivp	st(1)
.label_176:
	or	r12d, 1
	cmp	r12d, 1
	sete	bl
	jne	.label_125
	mov	rax,  qword ptr [word ptr [rip + user_precision]]
	cmp	rax, -1
	cmovne	rcx, rax
	fld	xword ptr [word ptr [rip + label_206]]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	setae	al
	fld	xword ptr [word ptr [rip + label_207]]
	fucomip	st(1)
	setae	bl
	and	bl, al
	xor	eax, eax
	movzx	edx, bl
	cmp	edx, 1
	fldz	
	fldz	
	fldz	
	jne	.label_208
	fstp	st(2)
	fstp	st(0)
	fstp	st(0)
	fldz	
	fucomi	st(1)
	fld	st(1)
	fchs	
	fld	st(2)
	fcmovnbe	st(0), st(1)
	fstp	st(1)
	xor	eax, eax
	fld	dword ptr [dword ptr [rip + label_95]]
	fxch	st(1)
	fucomip	st(1)
	jae	.label_103
	fstp	st(1)
	fstp	st(0)
	fldz	
	fldz	
	fldz	
	jmp	.label_208
.label_103:
	fld	st(2)
	nop	
.label_234:
	inc	eax
	fdiv	st(1)
	fxch	st(2)
	fucomi	st(2)
	fld	st(2)
	fchs	
	fld	st(3)
	fcmovnbe	st(0), st(1)
	fstp	st(1)
	fucomip	st(2)
	fxch	st(2)
	jae	.label_234
.label_208:
	fstp	st(2)
	fstp	st(0)
	fstp	st(0)
	mov	r12d,  dword ptr [dword ptr [rip + scale_to]]
	test	r12d, r12d
	jne	.label_97
	mov	edx, eax
	add	rdx, rcx
	cmp	rdx, 0x13
	jb	.label_97
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	jne	.label_140
	fstp	st(0)
	xor	ebx, ebx
	jmp	.label_93
.label_97:
	cmp	eax, 0x1b
	jb	.label_112
	fstp	xword ptr [rsp + 0x58]
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	jne	.label_179
	xor	ebx, ebx
	jmp	.label_93
.label_112:
	mov	r13b,  byte ptr [byte ptr [rip + grouping]]
	and	r13b, 1
	mov	r15d,  dword ptr [dword ptr [rip + round_style]]
	mov	byte ptr [rsp + 0x200], 0x25
	movzx	eax, r13b
	mov	rbp, rcx
	cmp	eax, 1
	jne	.label_123
	lea	r14, [rsp + 0x202]
	mov	byte ptr [rsp + 0x201], 0x27
	jmp	.label_133
.label_179:
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	and	al, 1
	sete	al
	movzx	ebp, al
	add	ebp, ebp
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.135
.label_184:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	fld	xword ptr [rsp + 0x58]
	fstp	xword ptr [rsp]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rcx
	call	error
	jmp	.label_93
.label_123:
	lea	r14, [rsp + 0x201]
.label_133:
	mov	r9,  qword ptr [word ptr [rip + zero_padding_width]]
	test	r9, r9
	je	.label_157
	fstp	xword ptr [rsp + 0x58]
	mov	esi, 0x3e
	mov	edx, 1
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:.str.138
	xor	eax, eax
	mov	rdi, r14
	call	__snprintf_chk
	cdqe	
	add	r14, rax
	jmp	.label_170
.label_205:
	mov	esi, OFFSET FLAT:.str.131
	mov	r12d, 5
	jmp	.label_152
.label_157:
	fstp	xword ptr [rsp + 0x58]
.label_170:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_130
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.139
	xor	eax, eax
	call	__fprintf_chk
.label_130:
	test	r12d, r12d
	fld	xword ptr [rsp + 0x58]
	mov	r9, rbp
	je	.label_192
	lea	eax, [r12 - 3]
	cmp	eax, 2
	mov	ecx, 0x400
	mov	eax, 0x3e8
	cmovb	eax, ecx
	xor	ebp, ebp
	test	bl, bl
	fld	st(0)
	fldz	
	fldz	
	je	.label_189
	fstp	st(1)
	fstp	st(0)
	fstp	st(0)
	fldz	
	fucomi	st(1)
	fld	st(1)
	fchs	
	fld	st(2)
	fcmovnbe	st(0), st(1)
	fstp	st(1)
	mov	ecx, eax
	mov	qword ptr [rsp + 0x158], rcx
	fild	qword ptr [rsp + 0x158]
	xor	ebp, ebp
	fxch	st(1)
	fucomip	st(1)
	jae	.label_201
	fstp	st(1)
	fstp	st(0)
	fld	st(0)
	fldz	
	fldz	
	jmp	.label_189
.label_192:
	fld1	
	test	r9d, r9d
	fldz	
	fldz	
	je	.label_137
	fstp	st(2)
	fstp	st(0)
	fstp	st(0)
	mov	eax, r9d
	dec	eax
	fld	dword ptr [dword ptr [rip + label_95]]
	fldz	
	fldz	
	je	.label_137
	fstp	st(2)
	fstp	st(0)
	fstp	st(0)
	lea	edx, [r9 + 7]
	lea	ecx, [r9 - 2]
	fld	dword ptr [dword ptr [rip + label_95]]
	fldz	
	test	dl, 7
	je	.label_162
	fstp	st(0)
	fstp	st(0)
	mov	dl, r9b
	add	dl, 7
	movzx	edx, dl
	and	edx, 7
	neg	edx
	fld	dword ptr [dword ptr [rip + label_95]]
	fldz	
	fxch	st(1)
.label_233:
	fstp	st(1)
	fmul	dword ptr [dword ptr [rip + label_95]]
	dec	eax
	inc	edx
	fld	st(0)
	fxch	st(1)
	jne	.label_233
.label_162:
	cmp	ecx, 7
	fldz	
	fxch	st(1)
	fxch	st(2)
	fxch	st(1)
	jb	.label_137
	fstp	st(2)
	fstp	st(1)
	fld	dword ptr [dword ptr [rip + label_95]]
	fldz	
	fxch	st(1)
.label_116:
	fstp	st(1)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	add	eax, -8
	fldz	
	fxch	st(1)
	jne	.label_116
.label_137:
	fstp	st(1)
	fstp	st(0)
	fmul	st(1)
	fld	xword ptr [word ptr [rip + label_202]]
	fld	st(1)
	fdiv	st(1)
	fnstcw	word ptr [rsp + 0x7e]
	mov	ax, word ptr [rsp + 0x7e]
	mov	word ptr [rsp + 0x7e], 0xc7f
	fldcw	word ptr [rsp + 0x7e]
	mov	word ptr [rsp + 0x7e], ax
	fistp	qword ptr [rsp + 0xd8]
	fldcw	word ptr [rsp + 0x7e]
	mov	rax, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp + 0xe0], rax
	fild	qword ptr [rsp + 0xe0]
	fmulp	st(1)
	fsub	st(1), st(0)
	fldz	
	mov	eax, r15d
	cmp	r15d, 4
	ja	.label_231
	fstp	st(0)
	jmp	qword ptr [word ptr [+ (rax * 8) + label_232]]
.label_756:
	fnstcw	word ptr [rsp + 0x7c]
	mov	ax, word ptr [rsp + 0x7c]
	mov	word ptr [rsp + 0x7c], 0xc7f
	fldcw	word ptr [rsp + 0x7c]
	mov	word ptr [rsp + 0x7c], ax
	fld	st(1)
	fistp	qword ptr [rsp + 0x88]
	fldcw	word ptr [rsp + 0x7c]
	mov	rcx, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x90], rcx
	fild	qword ptr [rsp + 0x90]
	jmp	.label_120
.label_121:
	mov	esi, OFFSET FLAT:.str.130
	mov	r12d, 4
	jmp	.label_152
.label_142:
	test	r13, r13
	je	.label_147
	cmp	byte ptr [r13], 0
	je	.label_147
	mov	r12d, 5
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	je	.label_100
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	and	al, 1
	sete	al
	movzx	r14d, al
	add	r14d, r14d
	mov	r12d, 5
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.122
	mov	edx, 5
	fstp	xword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x40], rcx
	call	dcgettext
	mov	qword ptr [rsp + 0x30], rax
	xor	edi, edi
	mov	rsi, r15
	call	quote_n
	mov	rbx, rax
	mov	edi, 1
	mov	rsi, r13
	call	quote_n
	mov	rbp, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, r14d
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	mov	rcx, qword ptr [rsp + 0x40]
	jmp	.label_216
.label_240:
	mov	esi, OFFSET FLAT:.str.132
	mov	r12d, 6
	jmp	.label_152
.label_140:
	fstp	xword ptr [rsp + 0x58]
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	and	al, 1
	sete	al
	movzx	ebp, al
	add	ebp, ebp
	xor	ebx, ebx
	xor	edi, edi
	test	rcx, rcx
	je	.label_223
	mov	esi, OFFSET FLAT:.str.133
	mov	edx, 5
	mov	r14, rcx
	call	dcgettext
	mov	rcx, rax
	fld	xword ptr [rsp + 0x58]
	fstp	xword ptr [rsp]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rcx
	mov	rcx, r14
	call	error
	jmp	.label_93
.label_147:
	cmp	r12d, 1
	jne	.label_107
	mov	r12d, 1
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_100
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.121
	mov	edx, 5
	fstp	xword ptr [rsp + 0x58]
	mov	rbx, rcx
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	jmp	.label_227
.label_201:
	fld	st(2)
	fxch	st(2)
	fxch	st(1)
	nop	word ptr cs:[rax + rax]
.label_148:
	inc	ebp
	fdiv	st(2), st(0)
	fxch	st(1)
	fucomi	st(2)
	fld	st(2)
	fchs	
	fld	st(3)
	fcmovnbe	st(0), st(1)
	fstp	st(1)
	fucomip	st(2)
	fxch	st(1)
	jae	.label_148
.label_189:
	fstp	st(1)
	fstp	st(0)
	fxch	st(1)
	fstp	xword ptr [rsp + 0x58]
	cvtsi2sd	xmm0, eax
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_141
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	st(0)
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.144
	mov	al, 1
	movsd	qword ptr [rsp + 0x40], xmm0
	movsd	xmm0, qword ptr [rsp + 0x40]
	mov	ecx, ebp
	fstp	xword ptr [rsp + 0x30]
	call	__fprintf_chk
	fld	xword ptr [rsp + 0x30]
	movsd	xmm0, qword ptr [rsp + 0x40]
.label_141:
	mov	rcx,  qword ptr [word ptr [rip + user_precision]]
	cmp	rcx, -1
	je	.label_164
	lea	eax, [rbp + rbp*2]
	cmp	rax, rcx
	cmovge	eax, ecx
	fld1	
	test	eax, eax
	je	.label_211
	fstp	st(0)
	fld	dword ptr [dword ptr [rip + label_95]]
	cmp	eax, 1
	je	.label_173
	fstp	st(0)
	not	rcx
	lea	edx, [rbp + rbp*2]
	not	rdx
	cmp	rcx, rdx
	cmovg	edx, ecx
	add	edx, 2
	fld	dword ptr [dword ptr [rip + label_95]]
	nop	word ptr cs:[rax + rax]
.label_185:
	fmul	dword ptr [dword ptr [rip + label_95]]
	inc	edx
	jne	.label_185
	jmp	.label_173
.label_164:
	fldz	
	fucomip	st(1)
	fld	st(0)
	fchs	
	fld	st(1)
	fcmovnbe	st(0), st(1)
	fstp	st(1)
	fld1	
	fld	dword ptr [dword ptr [rip + label_95]]
	fucomi	st(2)
	fstp	st(2)
	jbe	.label_187
	fstp	st(0)
	mov	eax, 1
.label_173:
	xor	ecx, ecx
	jmp	.label_241
.label_187:
	fstp	st(1)
.label_211:
	xor	eax, eax
	mov	cl, 1
.label_241:
	fmulp	st(1)
	fld	xword ptr [word ptr [rip + label_202]]
	fld	st(1)
	fdiv	st(1)
	fnstcw	word ptr [rsp + 0x70]
	mov	dx, word ptr [rsp + 0x70]
	mov	word ptr [rsp + 0x70], 0xc7f
	fldcw	word ptr [rsp + 0x70]
	mov	word ptr [rsp + 0x70], dx
	fistp	qword ptr [rsp + 0x148]
	fldcw	word ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x150], rdx
	fild	qword ptr [rsp + 0x150]
	fmulp	st(1)
	fsub	st(1), st(0)
	fldz	
	mov	edx, r15d
	cmp	r15d, 4
	ja	.label_203
	fstp	st(0)
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_146]]
.label_719:
	fnstcw	word ptr [rsp + 0x6e]
	mov	dx, word ptr [rsp + 0x6e]
	mov	word ptr [rsp + 0x6e], 0xc7f
	fldcw	word ptr [rsp + 0x6e]
	mov	word ptr [rsp + 0x6e], dx
	fld	st(1)
	fistp	qword ptr [rsp + 0xf8]
	fldcw	word ptr [rsp + 0x6e]
	mov	rsi, qword ptr [rsp + 0xf8]
	mov	qword ptr [rsp + 0x100], rsi
	fild	qword ptr [rsp + 0x100]
	jmp	.label_160
.label_720:
	fxch	st(1)
	fchs	
	fnstcw	word ptr [rsp + 0x6c]
	mov	dx, word ptr [rsp + 0x6c]
	mov	word ptr [rsp + 0x6c], 0xc7f
	fldcw	word ptr [rsp + 0x6c]
	mov	word ptr [rsp + 0x6c], dx
	fld	st(0)
	fistp	qword ptr [rsp + 0x108]
	fldcw	word ptr [rsp + 0x6c]
	mov	rsi, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x110], rsi
	fild	qword ptr [rsp + 0x110]
	jmp	.label_99
.label_721:
	fldz	
	fucomip	st(2)
	jbe	.label_127
	fxch	st(1)
	fchs	
	fnstcw	word ptr [rsp + 0x6a]
	mov	dx, word ptr [rsp + 0x6a]
	mov	word ptr [rsp + 0x6a], 0xc7f
	fldcw	word ptr [rsp + 0x6a]
	mov	word ptr [rsp + 0x6a], dx
	fld	st(0)
	fistp	qword ptr [rsp + 0x118]
	fldcw	word ptr [rsp + 0x6a]
	mov	rsi, qword ptr [rsp + 0x118]
	mov	qword ptr [rsp + 0x120], rsi
	fild	qword ptr [rsp + 0x120]
.label_99:
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	seta	dl
	movzx	edx, dl
	add	rdx, rsi
	neg	rdx
	jmp	.label_117
.label_722:
	fnstcw	word ptr [rsp + 0x66]
	mov	dx, word ptr [rsp + 0x66]
	mov	word ptr [rsp + 0x66], 0xc7f
	fldcw	word ptr [rsp + 0x66]
	mov	word ptr [rsp + 0x66], dx
	fxch	st(1)
	fistp	qword ptr [rsp + 0x138]
	fldcw	word ptr [rsp + 0x66]
	mov	rdx, qword ptr [rsp + 0x138]
	jmp	.label_117
.label_723:
	fldz	
	fucomip	st(2)
	seta	dl
	movzx	edx, dl
	shl	rdx, 4
	fld	xword ptr [word ptr [rdx + label_104]]
	faddp	st(2)
	fnstcw	word ptr [rsp + 0x64]
	mov	dx, word ptr [rsp + 0x64]
	mov	word ptr [rsp + 0x64], 0xc7f
	fldcw	word ptr [rsp + 0x64]
	mov	word ptr [rsp + 0x64], dx
	fxch	st(1)
	fistp	qword ptr [rsp + 0x140]
	fldcw	word ptr [rsp + 0x64]
	mov	rdx, qword ptr [rsp + 0x140]
	jmp	.label_117
.label_223:
	mov	esi, OFFSET FLAT:.str.134
	jmp	.label_184
.label_107:
	xor	r12d, r12d
	jmp	.label_100
.label_757:
	fxch	st(1)
	fchs	
	fnstcw	word ptr [rsp + 0x7a]
	mov	ax, word ptr [rsp + 0x7a]
	mov	word ptr [rsp + 0x7a], 0xc7f
	fldcw	word ptr [rsp + 0x7a]
	mov	word ptr [rsp + 0x7a], ax
	fld	st(0)
	fistp	qword ptr [rsp + 0x98]
	fldcw	word ptr [rsp + 0x7a]
	mov	rcx, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0xa0], rcx
	fild	qword ptr [rsp + 0xa0]
	jmp	.label_213
.label_758:
	fldz	
	fucomip	st(2)
	jbe	.label_180
	fxch	st(1)
	fchs	
	fnstcw	word ptr [rsp + 0x78]
	mov	ax, word ptr [rsp + 0x78]
	mov	word ptr [rsp + 0x78], 0xc7f
	fldcw	word ptr [rsp + 0x78]
	mov	word ptr [rsp + 0x78], ax
	fld	st(0)
	fistp	qword ptr [rsp + 0xa8]
	fldcw	word ptr [rsp + 0x78]
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	qword ptr [rsp + 0xb0], rcx
	fild	qword ptr [rsp + 0xb0]
.label_213:
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	add	rax, rcx
	neg	rax
	jmp	.label_105
.label_759:
	fnstcw	word ptr [rsp + 0x74]
	mov	ax, word ptr [rsp + 0x74]
	mov	word ptr [rsp + 0x74], 0xc7f
	fldcw	word ptr [rsp + 0x74]
	mov	word ptr [rsp + 0x74], ax
	fxch	st(1)
	fistp	qword ptr [rsp + 0xc8]
	fldcw	word ptr [rsp + 0x74]
	mov	rax, qword ptr [rsp + 0xc8]
	jmp	.label_105
.label_760:
	fldz	
	fucomip	st(2)
	seta	al
	movzx	eax, al
	shl	rax, 4
	fld	xword ptr [word ptr [rax + label_104]]
	faddp	st(2)
	fnstcw	word ptr [rsp + 0x72]
	mov	ax, word ptr [rsp + 0x72]
	mov	word ptr [rsp + 0x72], 0xc7f
	fldcw	word ptr [rsp + 0x72]
	mov	word ptr [rsp + 0x72], ax
	fxch	st(1)
	fistp	qword ptr [rsp + 0xd0]
	fldcw	word ptr [rsp + 0x72]
	mov	rax, qword ptr [rsp + 0xd0]
	jmp	.label_105
.label_127:
	fnstcw	word ptr [rsp + 0x68]
	mov	dx, word ptr [rsp + 0x68]
	mov	word ptr [rsp + 0x68], 0xc7f
	fldcw	word ptr [rsp + 0x68]
	mov	word ptr [rsp + 0x68], dx
	fld	st(1)
	fistp	qword ptr [rsp + 0x128]
	fldcw	word ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x128]
	mov	qword ptr [rsp + 0x130], rsi
	fild	qword ptr [rsp + 0x130]
.label_160:
	fxch	st(2)
	fucomip	st(2)
	fstp	st(1)
	seta	dl
	movzx	edx, dl
	add	rdx, rsi
.label_117:
	mov	qword ptr [rsp + 0xf0], rdx
	fild	qword ptr [rsp + 0xf0]
	faddp	st(1)
	fldz	
	fldz	
	fxch	st(2)
.label_203:
	fstp	st(1)
	fstp	st(1)
	fld1	
	test	cl, cl
	fldz	
	fldz	
	jne	.label_158
	fstp	st(2)
	fstp	st(0)
	fstp	st(0)
	mov	ecx, eax
	dec	ecx
	fld	dword ptr [dword ptr [rip + label_95]]
	fldz	
	fldz	
	je	.label_158
	fstp	st(2)
	fstp	st(0)
	fstp	st(0)
	lea	edx, [rax + 7]
	add	eax, -2
	fld	dword ptr [dword ptr [rip + label_95]]
	fldz	
	test	dl, 7
	je	.label_167
	fstp	st(0)
	fstp	st(0)
	and	edx, 7
	neg	edx
	fld	dword ptr [dword ptr [rip + label_95]]
	fldz	
	fxch	st(1)
	nop	dword ptr [rax]
.label_225:
	fstp	st(1)
	fmul	dword ptr [dword ptr [rip + label_95]]
	dec	ecx
	inc	edx
	fld	st(0)
	fxch	st(1)
	jne	.label_225
.label_167:
	cmp	eax, 7
	fldz	
	fxch	st(1)
	fxch	st(2)
	fxch	st(1)
	jb	.label_158
	fstp	st(2)
	fstp	st(1)
	fld	dword ptr [dword ptr [rip + label_95]]
	fldz	
	fxch	st(1)
	nop	dword ptr [rax]
.label_195:
	fstp	st(1)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	add	ecx, -8
	fldz	
	fxch	st(1)
	jne	.label_195
.label_158:
	fstp	st(1)
	fstp	st(0)
	fdivp	st(1)
	fldz	
	fucomi	st(1)
	fld	st(1)
	fchs	
	fld	st(2)
	fcmovnbe	st(0), st(1)
	fstp	st(1)
	movsd	qword ptr [rsp + 0xe8], xmm0
	fld	qword ptr [rsp + 0xe8]
	fxch	st(1)
	fucomip	st(1)
	jae	.label_204
	fstp	st(0)
	jmp	.label_215
.label_204:
	fdivp	st(2)
	inc	ebp
.label_215:
	fxch	st(1)
	fucomi	st(1)
	jne	.label_172
	jp	.label_172
	jmp	.label_198
.label_172:
	fxch	st(1)
	fucomip	st(1)
	fld	st(0)
	fchs	
	fld	st(1)
	fcmovnbe	st(0), st(1)
	fstp	st(1)
	fld	dword ptr [dword ptr [rip + label_95]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_191
	test	ebp, ebp
	setne	bl
	jmp	.label_149
.label_198:
	fstp	st(1)
	xor	ebx, ebx
	jmp	.label_149
.label_191:
	xor	ebx, ebx
.label_149:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_132
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	st(0)
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.145
	mov	al, 1
	mov	ecx, ebp
	fstp	xword ptr [rsp + 0x40]
	call	__fprintf_chk
	fld	xword ptr [rsp + 0x40]
.label_132:
	mov	byte ptr [r14 + 6], 0
	mov	word ptr [r14 + 4], 0x7325
	mov	dword ptr [r14], 0x664c2a2e
	mov	r9,  qword ptr [word ptr [rip + user_precision]]
	cmp	r9, -1
	movzx	eax, bl
	cmove	r9d, eax
	mov	eax, OFFSET FLAT:.str.157
	cmp	ebp, 8
	ja	.label_155
	movsxd	rax, ebp
	mov	rax,  qword ptr [word ptr [+ (rax * 8) + label_118]]
.label_155:
	mov	qword ptr [rsp + 0x10], rax
	fld	st(0)
	fstp	xword ptr [rsp]
	lea	rdi, [rsp + 0x180]
	lea	r8, [rsp + 0x200]
	mov	esi, 0x7f
	mov	edx, 1
	mov	ecx, 0x80
	xor	eax, eax
	fstp	xword ptr [rsp + 0x40]
	call	__snprintf_chk
	cmp	eax, 0x7f
	jae	.label_136
	cmp	r12d, 4
	jne	.label_139
	test	ebp, ebp
	je	.label_139
	cdqe	
	mov	edx, 0x7f
	sub	rdx, rax
	lea	rdi, [rsp + 0x180]
	mov	esi, OFFSET FLAT:.str.147
	mov	ecx, 0x80
	call	__strncat_chk
.label_139:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_151
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rsp + 0x180]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.148
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	jmp	.label_151
.label_180:
	fnstcw	word ptr [rsp + 0x76]
	mov	ax, word ptr [rsp + 0x76]
	mov	word ptr [rsp + 0x76], 0xc7f
	fldcw	word ptr [rsp + 0x76]
	mov	word ptr [rsp + 0x76], ax
	fld	st(1)
	fistp	qword ptr [rsp + 0xb8]
	fldcw	word ptr [rsp + 0x76]
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	qword ptr [rsp + 0xc0], rcx
	fild	qword ptr [rsp + 0xc0]
.label_120:
	fxch	st(2)
	fucomip	st(2)
	fstp	st(1)
	seta	al
	movzx	eax, al
	add	rax, rcx
.label_105:
	mov	qword ptr [rsp + 0x80], rax
	fild	qword ptr [rsp + 0x80]
	faddp	st(1)
	fldz	
	fldz	
	fxch	st(2)
.label_231:
	fstp	st(1)
	fstp	st(1)
	test	r9d, r9d
	fld1	
	fldz	
	fldz	
	je	.label_193
	fstp	st(2)
	fstp	st(0)
	fstp	st(0)
	mov	eax, r9d
	dec	eax
	fld	dword ptr [dword ptr [rip + label_95]]
	fldz	
	fldz	
	je	.label_193
	fstp	st(2)
	fstp	st(0)
	fstp	st(0)
	lea	edx, [r9 + 7]
	lea	ecx, [r9 - 2]
	fld	dword ptr [dword ptr [rip + label_95]]
	fldz	
	test	dl, 7
	je	.label_154
	fstp	st(0)
	fstp	st(0)
	mov	dl, r9b
	add	dl, 7
	movzx	edx, dl
	and	edx, 7
	neg	edx
	fld	dword ptr [dword ptr [rip + label_95]]
	fldz	
	fxch	st(1)
.label_169:
	fstp	st(1)
	fmul	dword ptr [dword ptr [rip + label_95]]
	dec	eax
	inc	edx
	fld	st(0)
	fxch	st(1)
	jne	.label_169
.label_154:
	cmp	ecx, 7
	fldz	
	fxch	st(1)
	fxch	st(2)
	fxch	st(1)
	jb	.label_193
	fstp	st(2)
	fstp	st(1)
	fld	dword ptr [dword ptr [rip + label_95]]
	fldz	
	fxch	st(1)
.label_196:
	fstp	st(1)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	add	eax, -8
	fldz	
	fxch	st(1)
	jne	.label_196
.label_193:
	fstp	st(1)
	fstp	st(0)
	fxch	st(2)
	fstp	xword ptr [rsp + 0x58]
	fdivrp	st(1)
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_239
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	eax, OFFSET FLAT:.str.140
	mov	edx, OFFSET FLAT:.str.141
	test	r13b, r13b
	cmovne	rdx, rax
	fld	st(0)
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	mov	ecx, r9d
	mov	rbx, r9
	fstp	xword ptr [rsp + 0x40]
	call	__fprintf_chk
	fld	xword ptr [rsp + 0x40]
	mov	r9, rbx
.label_239:
	fld	st(0)
	fstp	xword ptr [rsp + 0x40]
	mov	byte ptr [r14 + 4], 0
	mov	dword ptr [r14], 0x664c2a2e
	fstp	xword ptr [rsp]
	lea	rdi, [rsp + 0x180]
	lea	r8, [rsp + 0x200]
	mov	esi, 0x80
	mov	edx, 1
	mov	ecx, 0x80
	xor	eax, eax
	call	__snprintf_chk
	cmp	eax, 0x80
	jae	.label_136
.label_151:
	mov	rbx,  qword ptr [word ptr [rip + suffix]]
	test	rbx, rbx
	je	.label_145
	lea	rbp, [rsp + 0x180]
	mov	rdi, rbp
	call	strlen
	mov	edx, 0x7f
	sub	rdx, rax
	mov	ecx, 0x80
	mov	rdi, rbp
	mov	rsi, rbx
	call	__strncat_chk
.label_145:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_159
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rsp + 0x180]
	call	quote
	mov	rcx, rax
	fld	xword ptr [rsp + 0x58]
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.136
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_159:
	mov	rbx,  qword ptr [word ptr [rip + padding_width]]
	test	rbx, rbx
	je	.label_163
	lea	rdi, [rsp + 0x180]
	call	strlen
	cmp	rax, rbx
	jae	.label_163
	mov	qword ptr [rsp + 0x200], rbx
	mov	rsi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rdx,  qword ptr [word ptr [rip + padding_buffer_size]]
	movzx	r8d,  byte ptr [byte ptr [rip + padding_alignment]]
	and	r8d, 1
	xor	r8d, 1
	lea	rdi, [rsp + 0x180]
	lea	rcx, [rsp + 0x200]
	mov	r9d, 2
	call	mbsalign
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_113
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.137
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	jmp	.label_113
.label_163:
	lea	rdi, [rsp + 0x180]
	call	strlen
	lea	rcx, [rax + 1]
	cmp	qword ptr [word ptr [rip + padding_buffer_size]],  rcx
	jbe	.label_224
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	jmp	.label_229
.label_224:
	add	rax, 2
	mov	qword ptr [word ptr [rip + padding_buffer_size]],  rax
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rsi, rax
	call	xrealloc
	mov	rdi, rax
	mov	qword ptr [word ptr [rip + padding_buffer]],  rdi
.label_229:
	lea	rsi, [rsp + 0x180]
	call	strcpy
.label_113:
	mov	bl, 1
.label_93:
	fldz	
.label_125:
	fstp	st(0)
	test	bl, bl
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_94
	mov	rdi,  qword ptr [word ptr [rip + format_str_prefix]]
	test	rdi, rdi
	je	.label_101
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_101:
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rdi,  qword ptr [word ptr [rip + format_str_suffix]]
	test	rdi, rdi
	je	.label_122
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	jmp	.label_122
.label_94:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	xor	ebx, ebx
	jmp	.label_122
.label_136:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.143
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	fld	xword ptr [rsp + 0x40]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_753:
	fstp	st(0)
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4044b0

	.globl set_fields
	.type set_fields, @function
set_fields:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdi
	xor	r14d, r14d
	mov	eax, esi
	and	eax, 1
	mov	dword ptr [rsp + 0x10], eax
	mov	ebp, 0
	je	.label_296
	mov	dword ptr [rsp + 0xc], esi
	movzx	edx, byte ptr [rbx]
	lea	rax, [rbx + 1]
	mov	ecx, 0x2d
	sub	ecx, edx
	jne	.label_306
	movzx	ecx, byte ptr [rax]
	neg	ecx
.label_306:
	test	ecx, ecx
	sete	bpl
	movzx	r14d, bpl
	cmove	rbx, rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	dword ptr [rsp + 0x20], 0
	mov	al, bpl
	mov	dword ptr [rsp + 0x24], eax
	jmp	.label_247
.label_296:
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	dword ptr [rsp + 0xc], esi
	mov	dword ptr [rsp + 0x20], 0
	mov	dword ptr [rsp + 0x24], 0
	jmp	.label_247
	nop	word ptr cs:[rax + rax]
.label_260:
	mov	dword ptr [rsp + 0x24], edx
	inc	rbx
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x18], r15
.label_247:
	mov	dword ptr [rsp + 0x14], ebp
	mov	r13b, bpl
	and	r13b, 1
	xor	r15d, r15d
	movabs	r12, 0x1999999999999999
	jmp	.label_270
	nop	dword ptr [rax]
.label_248:
	inc	rbx
	mov	r15b, 1
.label_270:
	movzx	ebp, byte ptr [rbx]
	cmp	rbp, 0x2c
	je	.label_279
	movzx	eax, bpl
	cmp	eax, 0x2d
	je	.label_284
	call	__ctype_b_loc
	test	bpl, bpl
	je	.label_279
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	and	eax, 1
	test	ax, ax
	jne	.label_279
	movsx	eax, bpl
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_297
	mov	rbp,  qword ptr [word ptr [rip + set_fields.num_start]]
	test	rbp, rbp
	setne	al
	test	r15b, al
	jne	.label_286
	mov	qword ptr [word ptr [rip + set_fields.num_start]],  rbx
	mov	rbp, rbx
.label_286:
	mov	al, 1
	test	r13b, r13b
	je	.label_308
	mov	dword ptr [rsp + 0x20], eax
	jmp	.label_309
	nop	word ptr [rax + rax]
.label_308:
	mov	dword ptr [rsp + 0x24], eax
.label_309:
	cmp	r14, r12
	ja	.label_304
	lea	rax, [r14 + r14*4]
	movsx	rcx, byte ptr [rbx]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, r14
	cmovae	r14, rax
	jb	.label_304
	cmp	r14, -1
	jne	.label_248
	jmp	.label_304
	nop	word ptr cs:[rax + rax]
.label_279:
	test	r13b, r13b
	jne	.label_259
	test	r14, r14
	je	.label_261
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	cmp	rcx,  qword ptr [word ptr [rip + n_frp_allocated]]
	mov	ebp, dword ptr [rsp + 0x14]
	jne	.label_263
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	test	rdi, rdi
	je	.label_244
	movabs	rax, 0x555555555555555
	cmp	rcx, rax
	jae	.label_255
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	mov	r15, qword ptr [rsp + 0x18]
	jmp	.label_281
	nop	
.label_259:
	mov	eax, dword ptr [rsp + 0x20]
	mov	ecx, dword ptr [rsp + 0x24]
	or	cl, al
	and	cl, 1
	mov	r15d, 1
	cmovne	r15, qword ptr [rsp + 0x18]
	cmp	dword ptr [rsp + 0x10], 0
	jne	.label_274
	test	cl, cl
	je	.label_307
.label_274:
	test	al, 1
	jne	.label_299
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	cmp	rcx,  qword ptr [word ptr [rip + n_frp_allocated]]
	jne	.label_302
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	test	rdi, rdi
	je	.label_314
	movabs	rax, 0x555555555555555
	cmp	rcx, rax
	jae	.label_255
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_313
	nop	word ptr [rax + rax]
.label_284:
	test	r13b, r13b
	jne	.label_245
	mov	edx, dword ptr [rsp + 0x24]
	mov	al, dl
	and	al, 1
	sete	cl
	test	r14, r14
	jne	.label_249
	test	cl, cl
	je	.label_256
.label_249:
	test	al, al
	mov	r15d, 1
	cmovne	r15, r14
	mov	bpl, 1
	jmp	.label_260
.label_263:
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	r15, qword ptr [rsp + 0x18]
	jmp	.label_266
.label_299:
	cmp	r14, r15
	jb	.label_271
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	cmp	rcx,  qword ptr [word ptr [rip + n_frp_allocated]]
	jne	.label_275
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	test	rdi, rdi
	je	.label_277
	movabs	rax, 0x555555555555555
	cmp	rcx, rax
	jae	.label_255
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_290
.label_302:
	mov	rax,  qword ptr [word ptr [rip + frp]]
	jmp	.label_293
.label_275:
	mov	rax,  qword ptr [word ptr [rip + frp]]
	jmp	.label_295
.label_244:
	test	rcx, rcx
	mov	esi, 8
	cmovne	rsi, rcx
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	mov	r15, qword ptr [rsp + 0x18]
	ja	.label_300
.label_281:
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
.label_266:
	shl	rcx, 4
	mov	qword ptr [rax + rcx], r14
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r14
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	inc	rsi
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
	jmp	.label_315
.label_314:
	test	rcx, rcx
	mov	esi, 8
	cmovne	rsi, rcx
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_257
.label_313:
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
.label_293:
	shl	rcx, 4
	mov	qword ptr [rax + rcx], r15
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], -1
	jmp	.label_276
.label_277:
	test	rcx, rcx
	mov	esi, 8
	cmovne	rsi, rcx
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_285
.label_290:
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
.label_295:
	shl	rcx, 4
	mov	qword ptr [rax + rcx], r15
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r14
.label_276:
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	inc	rsi
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
	xor	ebp, ebp
.label_315:
	cmp	byte ptr [rbx], 0
	je	.label_310
	mov	dword ptr [rsp + 0x20], 0
	xor	edx, edx
	jmp	.label_260
.label_310:
	test	rsi, rsi
	je	.label_242
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:compare_ranges
	mov	rdi, rax
	call	qsort
	mov	rbx,  qword ptr [word ptr [rip + n_frp]]
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_251
	nop	
.label_264:
	lea	rbp, [r14 + 1]
	jmp	.label_311
	nop	word ptr cs:[rax + rax]
.label_288:
	lea	rsi, [rax + rsi + 8]
	lea	rdi, [rax + rcx]
	mov	rbx, qword ptr [rax + rcx + 8]
	cmp	rbx, rdx
	cmova	rdx, rbx
	mov	qword ptr [rsi], rdx
	lea	rsi, [rax + rcx + 0x10]
	mov	rdx,  qword ptr [word ptr [rip + n_frp]]
	sub	rdx, rbp
	shl	rdx, 4
	add	rdx, -0x10
	call	memmove
	mov	rbx,  qword ptr [word ptr [rip + n_frp]]
	dec	rbx
	mov	qword ptr [word ptr [rip + n_frp]],  rbx
.label_311:
	cmp	rbp, rbx
	jae	.label_253
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	rcx, rbp
	shl	rcx, 4
	mov	rsi, r14
	shl	rsi, 4
	mov	rdx, qword ptr [rax + rsi + 8]
	cmp	qword ptr [rax + rcx], rdx
	jbe	.label_288
.label_253:
	cmp	rbp, rbx
	mov	r14, rbp
	jb	.label_264
	jmp	.label_298
.label_251:
	xor	ebx, ebx
.label_298:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 2
	je	.label_273
	mov	r14,  qword ptr [word ptr [rip + frp]]
	mov	qword ptr [word ptr [rip + frp]],  0
	mov	qword ptr [word ptr [rip + n_frp]],  0
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  0
	mov	rbp, qword ptr [r14]
	xor	esi, esi
	cmp	rbp, 2
	jb	.label_303
	dec	rbp
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  8
	xor	edi, edi
	mov	esi, 0x80
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	qword ptr [rax + rcx], 1
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], rbp
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	inc	rsi
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
	jmp	.label_246
.label_303:
	xor	eax, eax
.label_246:
	cmp	rbx, 2
	jb	.label_287
	lea	rbp, [r14 + 0x10]
	mov	r15d, 1
	nop	word ptr cs:[rax + rax]
.label_252:
	mov	r12, qword ptr [rbp - 8]
	mov	r13, qword ptr [rbp]
	inc	r12
	cmp	r12, r13
	je	.label_292
	cmp	rsi,  qword ptr [word ptr [rip + n_frp_allocated]]
	jne	.label_305
	test	rax, rax
	je	.label_289
	movabs	rcx, 0x555555555555555
	cmp	rsi, rcx
	jae	.label_255
	mov	rcx, rsi
	shr	rcx, 1
	lea	rsi, [rsi + rcx + 1]
	jmp	.label_294
.label_289:
	test	rsi, rsi
	mov	ecx, 8
	cmove	rsi, rcx
	movabs	rcx, 0x7ffffffffffffff
	cmp	rsi, rcx
	ja	.label_262
.label_294:
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rsi
	shl	rsi, 4
	mov	rdi, rax
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
.label_305:
	dec	r13
	shl	rsi, 4
	mov	qword ptr [rax + rsi], r12
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r13
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	inc	rsi
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
.label_292:
	inc	r15
	add	rbp, 0x10
	cmp	r15, rbx
	jb	.label_252
.label_287:
	shl	rbx, 4
	mov	rbx, qword ptr [rbx + r14 - 8]
	cmp	rbx, -1
	je	.label_258
	cmp	rsi,  qword ptr [word ptr [rip + n_frp_allocated]]
	jne	.label_265
	test	rax, rax
	je	.label_301
	movabs	rcx, 0x555555555555555
	cmp	rsi, rcx
	jae	.label_255
	mov	rcx, rsi
	shr	rcx, 1
	lea	rcx, [rsi + rcx + 1]
	jmp	.label_278
.label_301:
	test	rsi, rsi
	mov	ecx, 8
	cmovne	rcx, rsi
	movabs	rdx, 0x7ffffffffffffff
	cmp	rcx, rdx
	ja	.label_291
.label_278:
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rcx
	shl	rcx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
.label_265:
	inc	rbx
	shl	rsi, 4
	mov	qword ptr [rax + rsi], rbx
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], -1
	inc	qword ptr [word ptr [rip + n_frp]]
.label_258:
	mov	rdi, r14
	call	free
	mov	rbx,  qword ptr [word ptr [rip + n_frp]]
.label_273:
	inc	rbx
	mov	qword ptr [word ptr [rip + n_frp]],  rbx
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	shl	rbx, 4
	mov	rsi, rbx
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	qword ptr [rcx + rax - 8], -1
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	qword ptr [rcx + rax - 0x10], -1
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_304:
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rdi, rbp
	call	strspn
	mov	rdi, rbp
	mov	rsi, rax
	call	xstrndup
	mov	rbx, rax
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_272
	mov	esi, OFFSET FLAT:.str.9_0
	jmp	.label_282
.label_297:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_268
	mov	esi, OFFSET FLAT:.str.11_0
	jmp	.label_280
.label_272:
	mov	esi, OFFSET FLAT:.str.8_0
.label_282:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	rdi, rbx
	call	free
	mov	edi, 1
	call	usage
.label_268:
	mov	esi, OFFSET FLAT:.str.10_0
.label_280:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_261:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_312
	mov	esi, OFFSET FLAT:.str.4_0
	jmp	.label_243
.label_307:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	jmp	.label_243
.label_255:
	call	xalloc_die
.label_245:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_269
	mov	esi, OFFSET FLAT:.str.2_0
	jmp	.label_250
.label_256:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_254
	mov	esi, OFFSET FLAT:.str.4_0
	jmp	.label_250
.label_271:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
	jmp	.label_243
.label_312:
	mov	esi, OFFSET FLAT:.str.3_0
.label_243:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	jmp	.label_267
.label_269:
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_250
.label_254:
	mov	esi, OFFSET FLAT:.str.3_0
.label_250:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_267:
	call	error
	mov	edi, 1
	call	usage
.label_300:
	call	xalloc_die
.label_257:
	call	xalloc_die
.label_285:
	call	xalloc_die
.label_242:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_283
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_243
.label_262:
	call	xalloc_die
.label_283:
	mov	esi, OFFSET FLAT:.str.12_0
	jmp	.label_243
.label_291:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dc0

	.globl compare_ranges
	.type compare_ranges, @function
compare_ranges:
	mov	eax, dword ptr [rdi]
	cmp	eax, dword ptr [rsi]
	setg	al
	movzx	ecx, al
	mov	eax, 0xffffffff
	cmovge	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404de0
	.globl reset_fields
	.type reset_fields, @function
reset_fields:

	push	rax
	mov	qword ptr [word ptr [rip + n_frp]],  0
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  0
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	call	free
	mov	qword ptr [word ptr [rip + frp]],  0
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e10

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e20

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
	mov	qword ptr [rsp + 0x20], rbp
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_317
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_316:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_322
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_319
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_321
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_320
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_322
.label_320:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_322
.label_321:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_322:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_316
	jmp	.label_318
.label_317:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_318:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_319:
	mov	rax, rbp
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
	#Procedure 0x404f20
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
	je	.label_323
	mov	esi, OFFSET FLAT:.str.1_1
	jmp	.label_324
.label_323:
	mov	esi, OFFSET FLAT:.str_1
.label_324:
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
	#Procedure 0x404f90

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
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbx]
	test	rbx, rbx
	je	.label_326
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_329:
	test	r15, r15
	je	.label_325
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_328
.label_325:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_330
	nop	word ptr cs:[rax + rax]
.label_328:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_1
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_330:
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_329
.label_326:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_327
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
.label_327:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050c0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_332
	mov	qword ptr [rsp + 0x10], rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_333
	mov	esi, OFFSET FLAT:.str.1_1
	jmp	.label_331
.label_333:
	mov	esi, OFFSET FLAT:.str_1
.label_331:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r14
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	rbx
	mov	rax, -1
.label_332:
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
	.align	16
	#Procedure 0x405180
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
	je	.label_334
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_335:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_334
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_335
.label_334:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4051f0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405200
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405210

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_339
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_338
	cmp	dword ptr [rbp], 0x20
	jne	.label_338
.label_339:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_337
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_338:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_336
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_337:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_336:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052d0

	.globl mbsalign
	.type mbsalign, @function
mbsalign:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	ebp, r9d
	mov	dword ptr [rsp + 0x28], r8d
	mov	r15, rcx
	mov	r12, rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbx, rdi
	call	strlen
	mov	r14, rax
	test	bpl, 2
	jne	.label_352
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_352
	xor	edi, edi
	xor	edx, edx
	mov	rsi, rbx
	call	mbstowcs
	xor	edi, edi
	mov	r13, rax
	cmp	r13, -1
	je	.label_345
	lea	rdi, [r13*4 + 4]
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_345
	mov	dword ptr [rsp + 0x2c], ebp
	mov	qword ptr [rsp], r15
	lea	rbp, [r13 + 1]
	mov	rsi, rbx
	mov	rdx, rbp
	mov	r15, rdi
	call	mbstowcs
	test	rax, rax
	je	.label_357
	mov	qword ptr [rsp + 0x30], rbp
	mov	qword ptr [rsp + 0x10], r12
	mov	dword ptr [r15 + r13*4], 0
	mov	edi, dword ptr [r15]
	test	edi, edi
	je	.label_358
	mov	qword ptr [rsp + 0x20], rbx
	mov	rbx, r15
	mov	r13, r15
	add	rbx, 4
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_349:
	call	iswprint
	test	eax, eax
	jne	.label_361
	mov	dword ptr [rbx - 4], 0xfffd
	mov	bpl, 1
.label_361:
	mov	edi, dword ptr [rbx]
	add	rbx, 4
	test	edi, edi
	jne	.label_349
	jmp	.label_359
.label_352:
	mov	dword ptr [rsp + 0x2c], ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	mov	qword ptr [rsp + 0x20], rbx
	xor	edi, edi
	mov	rbx, r14
.label_341:
	mov	rbp, r15
	mov	r15, qword ptr [rbp]
	cmp	rbx, r15
	cmova	rbx, r15
	cmova	r14, r15
	xor	r13d, r13d
	sub	r15, rbx
	cmovbe	r15, r13
	mov	qword ptr [rbp], rbx
	mov	eax, dword ptr [rsp + 0x28]
	test	eax, eax
	je	.label_340
	cmp	eax, 1
	jne	.label_362
	mov	r13, r15
	xor	r15d, r15d
	jmp	.label_340
.label_362:
	mov	rax, r15
	shr	rax, 1
	and	r15d, 1
	add	r15, rax
	mov	r13, r15
	mov	r15, rax
.label_340:
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x2c]
	test	cl, 4
	cmovne	r13, rax
	test	cl, 8
	cmovne	r15, rax
	test	r12, r12
	je	.label_344
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rsp + 0x18]
	lea	rbx, [rax + r12 - 1]
	mov	qword ptr [rsp + 0x10], r12
	cmp	rbx, rax
	mov	rdi, rax
	jbe	.label_350
	test	r13, r13
	mov	rdi, rax
	je	.label_350
	mov	rbp, r13
	neg	rbp
	mov	rdx, rax
	sub	rdx, rbx
	cmp	rdx, rbp
	cmovb	rdx, rbp
	neg	rdx
	mov	esi, 0x20
	mov	rdi, rax
	mov	r12, rax
	call	memset
	mov	eax, 1
	sub	rax, qword ptr [rsp + 0x10]
	cmp	rax, rbp
	cmovb	rax, rbp
	mov	rdi, r12
	sub	rdi, rax
	mov	rax, r12
.label_350:
	mov	r12, rax
	mov	byte ptr [rdi], 0
	mov	rdx, rbx
	sub	rdx, rdi
	cmp	r14, rdx
	cmovb	rdx, r14
	mov	rcx, -1
	mov	rsi, qword ptr [rsp + 0x20]
	call	__mempcpy_chk
	mov	rbp, rax
	test	r15, r15
	je	.label_353
	mov	rdx, rbp
	sub	rdx, rbx
	jae	.label_353
	mov	rbx, r15
	neg	rbx
	cmp	rdx, rbx
	cmovb	rdx, rbx
	neg	rdx
	mov	esi, 0x20
	mov	rdi, rbp
	call	memset
	mov	eax, 1
	sub	rax, r12
	sub	rax, qword ptr [rsp + 0x10]
	add	rax, rbp
	cmp	rax, rbx
	cmovb	rax, rbx
	sub	rbp, rax
.label_353:
	mov	rdi, qword ptr [rsp + 8]
	mov	byte ptr [rbp], 0
.label_344:
	add	r13, r14
	add	r13, r15
.label_354:
	call	free
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	rax, r13
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_345:
	mov	qword ptr [rsp + 0x20], rbx
	mov	r13, -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	test	bpl, 1
	mov	dword ptr [rsp + 0x2c], ebp
	mov	rbx, r14
	jne	.label_341
	jmp	.label_354
.label_357:
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	mov	qword ptr [rsp + 0x20], rbx
	mov	rbx, r14
	mov	rdi, r15
	jmp	.label_347
.label_358:
	mov	qword ptr [rsp + 0x20], rbx
	mov	r13, r15
	xor	ebp, ebp
.label_359:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x30]
	call	wcswidth
	movsxd	rbx, eax
	test	bpl, 1
	jne	.label_342
	mov	r15, r13
	mov	rax, qword ptr [rsp]
	cmp	rbx, qword ptr [rax]
	mov	r13, r14
	mov	r12, qword ptr [rsp + 0x10]
	ja	.label_343
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, r15
	jmp	.label_347
.label_342:
	xor	edi, edi
	xor	edx, edx
	mov	rsi, r13
	mov	r15, r13
	call	wcstombs
	mov	r13, rax
	mov	r12, qword ptr [rsp + 0x10]
.label_343:
	inc	r13
	mov	rdi, r13
	call	malloc
	test	rax, rax
	je	.label_355
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, r15
	mov	edi, dword ptr [rax]
	xor	r15d, r15d
	test	edi, edi
	je	.label_356
	mov	qword ptr [rsp + 0x10], r12
	mov	rcx, qword ptr [rsp]
	mov	r14, qword ptr [rcx]
	mov	rbp, rax
	mov	qword ptr [rsp + 8], rax
	nop	word ptr [rax + rax]
.label_348:
	call	wcwidth
	cmp	eax, -1
	jne	.label_360
	mov	dword ptr [rbp], 0xfffd
	mov	eax, 1
.label_360:
	movsxd	rbx, eax
	add	rbx, r15
	cmp	rbx, r14
	ja	.label_346
	mov	edi, dword ptr [rbp + 4]
	add	rbp, 4
	test	edi, edi
	mov	r15, rbx
	jne	.label_348
	jmp	.label_351
.label_355:
	mov	r13, -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	mov	eax, dword ptr [rsp + 0x2c]
	test	al, 1
	mov	rdi, r15
	mov	r15, qword ptr [rsp]
	jne	.label_341
	jmp	.label_354
.label_356:
	mov	qword ptr [rsp + 0x10], r12
	xor	ebx, ebx
	mov	rbp, rax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_351
.label_346:
	mov	rbx, r15
.label_351:
	mov	dword ptr [rbp], 0
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rdi, rbp
	mov	r14, qword ptr [rsp + 8]
	mov	rsi, r14
	mov	rdx, r13
	call	wcstombs
	mov	rdi, r14
	mov	r14, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	r12, qword ptr [rsp + 0x10]
.label_347:
	mov	r15, qword ptr [rsp]
	jmp	.label_341
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056c0
	.globl ambsalign
	.type ambsalign, @function
ambsalign:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], ecx
	mov	dword ptr [rsp], edx
	mov	r13, rsi
	mov	r12, rdi
	mov	r15, qword ptr [r13]
	xor	ebp, ebp
	mov	rax, r15
	mov	rbx, r15
	nop	word ptr cs:[rax + rax]
.label_365:
	cmp	rax, rbx
	jb	.label_363
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbp
	mov	rsi, rbx
	call	realloc
	mov	r14, rax
	test	r14, r14
	je	.label_364
	mov	qword ptr [r13], r15
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r13
	mov	r8d, dword ptr [rsp]
	mov	r9d, dword ptr [rsp + 4]
	call	mbsalign
	cmp	rax, -1
	mov	rbp, r14
	jne	.label_365
	mov	rdi, r14
	jmp	.label_366
.label_364:
	mov	rdi, rbp
.label_366:
	call	free
	xor	ebp, ebp
.label_363:
	mov	rax, rbp
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
	#Procedure 0x405760

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_367
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_368
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_368
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_369
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_369:
	mov	rbx, r14
.label_368:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_367:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405810
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
	#Procedure 0x405850
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
	#Procedure 0x405860
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
	#Procedure 0x405870
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
	.align	16
	#Procedure 0x4058b0
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
	#Procedure 0x4058d0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_370
	test	rdx, rdx
	je	.label_370
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_370:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405900
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
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	mov	rcx, qword ptr [rbp + 0x30]
	add	rbp, 8
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rbp
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405980

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
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0xa8], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x98], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0xa0], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r12b, bl
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xc8], rax
	mov	eax, 0
	mov	dword ptr [rsp + 0xd8], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_453:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_383
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_388]]
.label_771:
	mov	edi, OFFSET FLAT:.str.11_1
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_1
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_772:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_409
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_409
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_436:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_426
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_426:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_436
.label_409:
	mov	rbp, qword ptr [rsp + 0x98]
	mov	rdi, rbp
	mov	rbx, r10
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xc8], rax
	mov	r9d, r15d
	mov	qword ptr [rsp + 0xb8], rbp
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r11, qword ptr [rsp + 0xa8]
	jmp	.label_378
.label_764:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_378
.label_767:
	mov	al, 1
.label_765:
	mov	r12b, 1
.label_768:
	test	r12b, 1
	mov	cl, 1
	je	.label_462
	mov	cl, al
.label_462:
	mov	al, cl
.label_766:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_467
	test	r10, r10
	je	.label_472
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_473
.label_467:
	xor	ecx, ecx
	jmp	.label_473
.label_769:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_418
	test	r10, r10
	je	.label_484
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_387
.label_770:
	mov	dil, 1
	mov	r9d, 5
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_378
.label_472:
	mov	ecx, 1
.label_473:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_378
.label_418:
	xor	eax, eax
	jmp	.label_387
.label_484:
	mov	eax, 1
.label_387:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_378:
	mov	qword ptr [rsp + 0x80], rsi
	mov	byte ptr [rsp + 0x8f], dil
	cmp	qword ptr [rsp + 0x140], 0
	setne	dl
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	and	cl, 1
	mov	byte ptr [rsp + 0xb6], cl
	sete	byte ptr [rsp + 0x6b]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0xd7], bl
	cmp	qword ptr [rsp + 0xc8], 0
	setne	r13b
	mov	r12b, r13b
	and	r12b, bl
	mov	byte ptr [rsp + 0xc6], r12b
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc7], bl
	sete	cl
	and	al, bl
	mov	byte ptr [rsp + 0x7f], al
	and	dl, bl
	mov	byte ptr [rsp + 0xc5], dl
	or	cl, r15b
	mov	byte ptr [rsp + 0xb7], cl
	and	dil, sil
	and	dil, r13b
	mov	byte ptr [rsp + 0x6a], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xd8]
	jmp	.label_399
.label_459:
	inc	rdi
.label_399:
	cmp	rbp, -1
	je	.label_441
	cmp	rdi, rbp
	jne	.label_444
	jmp	.label_445
	nop	word ptr cs:[rax + rax]
.label_441:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_451
.label_444:
	test	r12b, r12b
	je	.label_455
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_456
	cmp	rbp, -1
	jne	.label_456
	mov	eax, r14d
	mov	r14, rdi
	mov	rdi, r11
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xd8], eax
	mov	r12, r11
	call	strlen
	mov	rdi, r14
	mov	r11, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	r14d, dword ptr [rsp + 0xd8]
	mov	r9, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_456:
	cmp	rbx, rbp
	jbe	.label_477
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_379
	nop	word ptr [rax + rax]
.label_455:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_379
.label_477:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	r12, rbp
	mov	r13, r9
	mov	r15b, r8b
	mov	rbx, r10
	mov	r14, rdi
	lea	rdi, [r11 + r14]
	mov	rbp, r11
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_377
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_379
	jmp	.label_371
.label_377:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_379:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_493
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_404]]
.label_708:
	test	rdi, rdi
	jne	.label_390
	jmp	.label_412
.label_712:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_413
	test	rdi, rdi
	jne	.label_415
	cmp	rbp, 1
	je	.label_412
	xor	r13d, r13d
	jmp	.label_376
.label_701:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_420
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_371
	cmp	r9d, 2
	jne	.label_428
	mov	al, r14b
	and	al, 1
	jne	.label_432
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_435
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_435:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_443
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_443:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_464
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_464:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_384
.label_702:
	mov	bl, 0x62
	jmp	.label_452
.label_703:
	mov	cl, 0x74
	jmp	.label_461
.label_704:
	mov	bl, 0x76
	jmp	.label_452
.label_705:
	mov	bl, 0x66
	jmp	.label_452
.label_706:
	mov	cl, 0x72
	jmp	.label_461
.label_709:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_470
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_474
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x90], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_479
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_479:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_373
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_373:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_416
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_416:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_470:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_376
.label_710:
	cmp	r9d, 5
	je	.label_389
	cmp	r9d, 2
	jne	.label_390
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_390
	jmp	.label_395
.label_711:
	cmp	r9d, 2
	jne	.label_397
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_400
	jmp	.label_405
.label_493:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_406
	mov	r13d, r14d
	mov	r14, r11
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	eax, 1
.label_385:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_422
	test	cl, cl
	je	.label_422
	xor	eax, eax
	jmp	.label_376
.label_413:
	test	rdi, rdi
	jne	.label_439
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_439
.label_412:
	mov	dl, 1
.label_707:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_427
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_376
.label_420:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_459
	jmp	.label_390
.label_397:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_461
.label_400:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_381
.label_461:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_457
.label_452:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_376
	jmp	.label_382
.label_406:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_465
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_465:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_411:
	mov	qword ptr [rsp + 0xd8], rax
	mov	qword ptr [rsp + 0x50], rdi
	lea	rax, [rax + rdi]
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_372
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_375
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_380
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_463
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_396:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_392
	bt	rsi, rdx
	jb	.label_401
.label_392:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_396
.label_463:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_450
	xor	r13d, r13d
.label_450:
	mov	rax, qword ptr [rsp + 0xd8]
	add	rax, rbp
	mov	rdi, rbx
	mov	rbp, rax
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_411
	jmp	.label_385
.label_439:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_376
.label_389:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_390
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_390
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_390
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_433
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_437
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_448
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_446
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_446:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_454
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_454:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_458
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_458:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_487
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_487:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_376
.label_390:
	xor	eax, eax
	xor	r13d, r13d
.label_376:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_481
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_483
	jmp	.label_486
	nop	word ptr [rax + rax]
.label_481:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_486
.label_483:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_490
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_374
	nop	word ptr cs:[rax + rax]
.label_486:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_374:
	mov	bl, r15b
	je	.label_381
	jmp	.label_382
.label_490:
	mov	bl, r15b
.label_382:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_371
	cmp	r9d, 2
	jne	.label_386
	mov	al, r14b
	and	al, 1
	jne	.label_386
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_491
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_491:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_408
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_408:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_403
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_403:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_386:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_414
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_414:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_469
.label_415:
	xor	r13d, r13d
	jmp	.label_376
.label_422:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_423
	nop	word ptr [rax + rax]
.label_417:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_423:
	test	cl, cl
	je	.label_438
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_424
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_442
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_442:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_424
	nop	word ptr [rax + rax]
.label_438:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_371
	cmp	r9d, 2
	jne	.label_410
	mov	al, r14b
	and	al, 1
	jne	.label_410
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_460
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_460:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_468
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_468:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_478
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_478:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_410:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_489
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_489:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_495
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_495:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_429
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_429:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_424:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_381
	test	r14b, 1
	je	.label_394
	mov	bl, al
	and	bl, 1
	jne	.label_394
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_421
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_421:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_407
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_407:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_394:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_417
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_417
	nop	dword ptr [rax]
.label_381:
	test	r14b, 1
	je	.label_434
	and	al, 1
	jne	.label_434
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_393
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_393:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_492
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_492:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_434:
	mov	bl, r15b
.label_469:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_431
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_431:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_459
.label_428:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_384
.label_432:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_384:
	cmp	rcx, r10
	jae	.label_471
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_471:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_476
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_482
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_485
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_488
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_488:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_494
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_494:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_376
.label_476:
	xor	r13d, r13d
	jmp	.label_376
.label_482:
	xor	r13d, r13d
	jmp	.label_376
.label_485:
	xor	r13d, r13d
	jmp	.label_376
.label_375:
	xor	r13d, r13d
.label_372:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_385
.label_380:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_391
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_440:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_398
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_440
	xor	r13d, r13d
	jmp	.label_385
.label_391:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_385
.label_398:
	xor	r13d, r13d
	jmp	.label_385
.label_433:
	xor	r13d, r13d
	jmp	.label_376
.label_437:
	xor	r13d, r13d
	jmp	.label_376
	nop	dword ptr [rax]
.label_445:
	mov	r13, rdi
.label_451:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_419
	or	al, dl
	je	.label_449
.label_419:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	qword ptr [rsp + 0xa8], r11
	cmp	r9d, 2
	setne	al
	cmp	byte ptr [rsp + 0xc7], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x8f]
	mov	rsi, qword ptr [rsp + 0x80]
	je	.label_430
	or	al, dl
	jne	.label_430
	test	r8b, 1
	jne	.label_447
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_430
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_453
.label_430:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_425
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_425
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_425
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_475:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_466
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_466:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_475
.label_425:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_480
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_480
.label_427:
	mov	r9d, 2
	jmp	.label_371
.label_401:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_371
.label_449:
	mov	rbp, r13
	jmp	.label_371
.label_457:
	mov	r9d, 2
.label_371:
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r8d, 4
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x6c]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rdx, r11
	mov	rcx, rbp
.label_402:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_480:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_447:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_402
.label_474:
	mov	r9d, 2
	jmp	.label_371
.label_405:
	mov	r9d, 2
	jmp	.label_371
.label_395:
	mov	r9d, 2
	jmp	.label_371
.label_448:
	mov	r9d, 5
	jmp	.label_371
.label_383:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406b10
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], rbx
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x34], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	eax, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x38
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
	#Procedure 0x406be0
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
	call	xmalloc
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
	je	.label_496
	mov	qword ptr [rax], rbx
.label_496:
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
	.align	16
	#Procedure 0x406ce0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_497
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_500:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_500
.label_497:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_501
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_498]], OFFSET FLAT:slot0
.label_501:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_499
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_499:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d80
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x406d90

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
	js	.label_502
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_507
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_503
.label_507:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_506
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
	jne	.label_505
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_505:
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
.label_503:
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
	ja	.label_508
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_504
	mov	rdi, rbx
	call	free
.label_504:
	mov	rdi, r14
	call	xmalloc
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
.label_508:
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
.label_502:
	call	abort
.label_506:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f60
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f70
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406f90
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406fb0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_509
	mov	dword ptr [rsp + 8], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_509:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x407020
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_510
	mov	dword ptr [rsp + 8], esi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rax, [rsp + 8]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_510:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407090
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_511
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_511:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407100
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_512
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_512:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407170
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_513]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_514]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_515]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	al, cl
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x4071e0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_513]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_514]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_515]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
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
	nop	
	.section	.text
	.align	16
	#Procedure 0x407250

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_513]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_514]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_515]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072b0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_513]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_514]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_515]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407310
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	sub	rsp, 0xa8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0xa0], 0
	cmp	esi, 0xa
	je	.label_516
	mov	ecx, dword ptr [rsp + 0xa0]
	mov	dword ptr [rsp + 0x30], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmm2, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0x20], xmm2
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x38], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x6c], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x5c], xmm2
	movups	xmmword ptr [rsp + 0x4c], xmm1
	movups	xmmword ptr [rsp + 0x3c], xmm0
	or	byte ptr [rsp + 0x47], 4
	lea	rcx, [rsp + 0x38]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0xa8
	ret	
.label_516:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4073c0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_513]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_514]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_515]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_517
	test	rdx, rdx
	je	.label_517
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_517:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x407430
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_513]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_514]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_515]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_518
	test	rdx, rdx
	je	.label_518
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_518:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4074a0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_513]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_514]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_515]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_519
	test	rsi, rsi
	je	.label_519
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_519:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407510
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_513]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_514]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_515]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_520
	test	rsi, rsi
	je	.label_520
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
.label_520:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407580
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407590
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075b0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075d0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4075f0

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
	jne	.label_522
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_523
	cmp	ecx, 0x55
	jne	.label_521
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_521
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_521
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_521
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_521
	cmp	byte ptr [rax + 5], 0
	jne	.label_521
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_522
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_522
.label_523:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_521
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_521
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_521
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_521
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_521
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_521
	cmp	byte ptr [rax + 7], 0
	je	.label_524
.label_521:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_1
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_522:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_524:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_522
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_522
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4076e0

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
	je	.label_531
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_529
.label_531:
	mov	edx, OFFSET FLAT:.str.1_4
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_529:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
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
	mov	esi, OFFSET FLAT:.str.3_2
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_534
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_525]]
.label_812:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_2
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
.label_534:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_533
.label_813:
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
.label_814:
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
.label_815:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_530
.label_816:
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
	jmp	.label_532
.label_817:
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
	jmp	.label_528
.label_818:
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
.label_528:
	mov	qword ptr [rsp + 0x10], rdi
.label_532:
	mov	qword ptr [rsp + 8], rsi
.label_530:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_526
.label_820:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_533:
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
	jmp	.label_527
.label_819:
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
.label_527:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_526:
	call	__fprintf_chk
.label_811:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079d0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_535:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_535
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a00
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_538:
	cmp	r10d, 0x28
	ja	.label_536
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_537
	nop	word ptr cs:[rax + rax]
.label_536:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_537:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_539
	inc	r9
	cmp	r9, 0xa
	jb	.label_538
.label_539:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407a60

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_540
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_540:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x130]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	xor	r9d, r9d
	mov	r8d, dword ptr [rsp + 0xb0]
	nop	word ptr cs:[rax + rax]
.label_544:
	cmp	r8d, 0x28
	ja	.label_541
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_543
	nop	
.label_541:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_543:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_542
	inc	r9
	cmp	r9, 0xa
	jb	.label_544
.label_542:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b60
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x407be0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_545
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_546
	test	rax, rax
	je	.label_545
.label_546:
	pop	rbx
	ret	
.label_545:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c20

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_547
	test	rax, rax
	je	.label_548
.label_547:
	pop	rbx
	ret	
.label_548:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c40
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_549
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_550
	test	rbx, rbx
	jne	.label_550
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_550:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_551
	test	rax, rax
	je	.label_549
.label_551:
	pop	rbx
	ret	
.label_549:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c90

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_552
	test	rbx, rbx
	jne	.label_552
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_552:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_554
	test	rax, rax
	je	.label_553
.label_554:
	pop	rbx
	ret	
.label_553:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x407cc0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_555
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_559
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_556
.label_555:
	test	rcx, rcx
	jne	.label_560
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_560:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_558
.label_556:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_557
	test	rbx, rbx
	jne	.label_557
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_557:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_561
	test	rax, rax
	je	.label_559
.label_561:
	pop	rbx
	ret	
.label_559:
	call	xalloc_die
.label_558:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d60
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_562
	test	rax, rax
	je	.label_563
.label_562:
	pop	rbx
	ret	
.label_563:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d80
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_564
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_567
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_568
	call	free
	xor	eax, eax
	jmp	.label_565
.label_564:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_566
	mov	qword ptr [rsi], rbx
.label_568:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_565
	test	rax, rax
	je	.label_566
.label_565:
	pop	rbx
	ret	
.label_566:
	call	xalloc_die
.label_567:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407df0
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
	je	.label_570
	test	r14, r14
	je	.label_569
.label_570:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_569:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e30
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_571
	call	rpl_calloc
	test	rax, rax
	je	.label_571
	pop	rcx
	ret	
.label_571:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e60

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
	je	.label_572
	test	r15, r15
	je	.label_573
.label_572:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_573:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407ea0

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
	je	.label_575
	test	r15, r15
	je	.label_574
.label_575:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_574:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407ef0

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
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x407f20

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_576
	pop	rcx
	ret	
.label_576:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407f40

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	ebp, edx
	mov	r13, rdi
	cmp	ebp, 0x25
	jae	.label_591
	test	rsi, rsi
	lea	r15, [rsp + 0x20]
	cmovne	r15, rsi
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	mov	rdi, r13
	mov	rsi, r15
	mov	edx, ebp
	call	strtol
	mov	r12, rax
	mov	rcx, qword ptr [r15]
	cmp	rcx, r13
	je	.label_609
	mov	eax, dword ptr [rbx]
	xor	ebp, ebp
	test	eax, eax
	je	.label_613
	mov	ebp, 4
	cmp	eax, 0x22
	jne	.label_594
	mov	ebp, 1
.label_613:
	test	r14, r14
	je	.label_585
	mov	edx, ebp
	jmp	.label_617
.label_609:
	mov	ebp, 4
	test	r14, r14
	je	.label_594
	mov	rbx, rcx
	movsx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_594
	mov	rdi, r14
	call	strchr
	xor	edx, edx
	mov	r12d, 1
	test	rax, rax
	mov	rcx, rbx
	je	.label_594
.label_617:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_632
	mov	dword ptr [rsp + 0xc], edx
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_579
	mov	r8d, 1
	mov	r11d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_577
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_577
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r8d, 1
	mov	r11d, 0x400
	test	rax, rax
	je	.label_577
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	r8d, 1
	mov	r11d, 0x400
	cmp	eax, 0x42
	je	.label_601
	cmp	eax, 0x44
	je	.label_601
	cmp	eax, 0x69
	jne	.label_577
	mov	rax, qword ptr [rsp + 0x10]
	movzx	eax, byte ptr [rax + 2]
	cmp	eax, 0x42
	mov	r8d, 3
	je	.label_612
	mov	r8d, 1
.label_612:
	mov	r11d, 0x400
	jmp	.label_577
.label_585:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], r12
	jmp	.label_594
.label_632:
	mov	r13, r12
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_619
.label_601:
	mov	r8d, 2
	mov	r11d, 0x3e8
.label_577:
	movabs	r10, 0x7fffffffffffffff
	cmp	r13d, 0x59
	jg	.label_624
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_629
	jmp	qword ptr [word ptr [+ (rax * 8) + label_631]]
.label_748:
	movabs	rax, 0xffe0000000000000
	cmp	r12, rax
	jl	.label_592
	mov	r13, r12
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_597
.label_624:
	cmp	r13d, 0x73
	jg	.label_584
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	ja	.label_587
	xor	ebx, ebx
	mov	r13, r12
	jmp	qword ptr [word ptr [+ (rax * 8) + label_590]]
.label_695:
	movabs	rax, 0xffc0000000000000
	cmp	r12, rax
	jl	.label_592
	mov	r13, r12
	shl	r13, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_597
.label_629:
	cmp	r13d, 0x54
	je	.label_602
	cmp	r13d, 0x59
	jne	.label_579
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_608
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	cmovl	rbx, r10
	movzx	edi, al
.label_608:
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_618
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_618:
	or	ecx, edi
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	mov	edi, 1
	jl	.label_627
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_627:
	or	edi, ecx
	cmp	rbp, r9
	mov	rsi, r13
	jl	.label_581
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ebx, al
.label_581:
	or	ebx, edi
	cmp	rsi, r9
	mov	edi, 1
	mov	rbp, r13
	mov	ecx, 1
	jl	.label_596
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	ecx, al
.label_596:
	or	ecx, ebx
	cmp	rbp, r9
	mov	rsi, r13
	jl	.label_600
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	edi, al
.label_600:
	or	edi, ecx
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	mov	ecx, 1
	jl	.label_611
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	ecx, al
.label_611:
	or	ecx, edi
	cmp	rbp, r9
	jl	.label_604
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rbp
	cmp	rax, rbp
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_604:
	or	ebx, ecx
	jmp	.label_578
.label_584:
	cmp	r13d, 0x74
	je	.label_602
	cmp	r13d, 0x77
	jne	.label_579
	movabs	rax, 0xc000000000000000
	cmp	r12, rax
	jge	.label_634
.label_592:
	inc	r10
	mov	ebx, 1
	mov	r13, r10
	jmp	.label_578
.label_696:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	rdi, rax
	cmp	r12, rdi
	mov	ecx, 1
	mov	rbp, r13
	mov	ebx, 1
	jl	.label_583
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, r12
	imul	rbp, r11
	cmp	rax, r12
	setl	al
	cmovl	rbp, r10
	movzx	ebx, al
.label_583:
	cmp	rbp, rdi
	mov	rsi, r13
	jl	.label_598
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_598:
	or	ecx, ebx
	cmp	rsi, rdi
	mov	ebx, 1
	jl	.label_607
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_607:
	or	ebx, ecx
	jmp	.label_578
.label_697:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	cmp	r12, rax
	mov	ebx, 1
	jl	.label_578
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, r12
	cmp	rax, r12
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
	jmp	.label_578
.label_698:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	rdi, rax
	cmp	r12, rdi
	mov	ebx, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_630
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, r12
	imul	rsi, r11
	cmp	rax, r12
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_630:
	cmp	rsi, rdi
	jl	.label_586
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_586:
	or	ebx, ecx
	jmp	.label_578
.label_602:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_593
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	cmovl	rbx, r10
	movzx	edi, al
.label_593:
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_610
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_610:
	or	ecx, edi
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	mov	edi, 1
	jl	.label_615
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_615:
	or	edi, ecx
	cmp	rbp, r9
	jl	.label_626
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rbp
	cmp	rax, rbp
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_626:
	or	ebx, edi
	jmp	.label_578
.label_587:
	cmp	r13d, 0x5a
	jne	.label_579
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_582
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	cmovl	rbx, r10
	movzx	edi, al
.label_582:
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_595
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_595:
	or	ecx, edi
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	mov	edi, 1
	jl	.label_620
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_620:
	or	edi, ecx
	cmp	rbp, r9
	mov	rsi, r13
	jl	.label_614
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ebx, al
.label_614:
	or	ebx, edi
	cmp	rsi, r9
	mov	edi, 1
	mov	rbp, r13
	mov	ecx, 1
	jl	.label_622
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	ecx, al
.label_622:
	or	ecx, ebx
	cmp	rbp, r9
	mov	rsi, r13
	jl	.label_633
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	edi, al
.label_633:
	or	edi, ecx
	cmp	rsi, r9
	mov	ebx, 1
	jl	.label_588
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_588:
	or	ebx, edi
	jmp	.label_578
.label_579:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], r12
	mov	eax, dword ptr [rsp + 0xc]
	or	eax, 2
	mov	ebp, eax
	jmp	.label_594
.label_749:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ebx, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_599
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, r12
	imul	rsi, r11
	cmp	rax, r12
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_599:
	cmp	rsi, r9
	mov	rdi, r13
	jl	.label_603
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	movzx	ebx, al
.label_603:
	or	ebx, ecx
	cmp	rdi, r9
	mov	r14d, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_621
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rdi
	imul	rsi, r11
	cmp	rax, rdi
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_621:
	or	ecx, ebx
	cmp	rsi, r9
	mov	rdi, r13
	jl	.label_623
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	movzx	r14d, al
.label_623:
	or	r14d, ecx
	cmp	rdi, r9
	mov	ebx, 1
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_635
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rdi
	imul	rsi, r11
	cmp	rax, rdi
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_635:
	or	ecx, r14d
	cmp	rsi, r9
	jl	.label_628
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_628:
	or	ebx, ecx
	jmp	.label_578
.label_750:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	mov	r9, rax
	cmp	r12, r9
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_605
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	cmovl	rbx, r10
	movzx	edi, al
.label_605:
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_616
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_616:
	or	ecx, edi
	cmp	rsi, r9
	mov	r14d, 1
	mov	rdi, r13
	mov	ebx, 1
	jl	.label_625
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	movzx	ebx, al
.label_625:
	or	ebx, ecx
	cmp	rdi, r9
	mov	rcx, r13
	jl	.label_580
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rcx, rdi
	imul	rcx, r11
	cmp	rax, rdi
	setl	al
	cmovl	rcx, r10
	movzx	r14d, al
.label_580:
	or	r14d, ebx
	cmp	rcx, r9
	mov	ebx, 1
	jl	.label_589
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rcx
	cmp	rax, rcx
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_589:
	or	ebx, r14d
	jmp	.label_578
.label_634:
	lea	r13, [r12 + r12]
	movabs	rax, 0x3fffffffffffffff
.label_597:
	cmp	r12, rax
	setg	al
	cmovg	r13, r10
	movzx	ebx, al
.label_578:
	or	ebx, dword ptr [rsp + 0xc]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rax, [rcx + r8]
	mov	qword ptr [r15], rax
	cmp	byte ptr [rcx + r8], 0
	je	.label_606
	or	ebx, 2
.label_606:
	mov	rax, qword ptr [rsp + 0x18]
	mov	edx, ebx
.label_619:
	mov	qword ptr [rax], r13
	mov	ebp, edx
.label_594:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_591:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x4088d0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_651
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_648:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_648
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_639
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rbp, rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	rcx, rbp
	mov	rbp, rax
	mov	r12, qword ptr [rcx]
	cmp	r12, rbx
	je	.label_656
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_658
	cmp	eax, 0x22
	jne	.label_639
	mov	dword ptr [rsp + 4], 1
.label_658:
	test	r14, r14
	jne	.label_637
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_639
.label_656:
	test	r14, r14
	je	.label_639
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_639
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_639
.label_637:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_654
	mov	r15, rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_636
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_642
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_642
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_642
	movsx	eax, byte ptr [r12 + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_647
	cmp	eax, 0x44
	je	.label_647
	cmp	eax, 0x69
	jne	.label_642
	movzx	eax, byte ptr [r12 + 2]
	cmp	eax, 0x42
	mov	ecx, 3
	je	.label_661
	mov	ecx, 1
.label_661:
	mov	esi, 0x400
	jmp	.label_642
.label_654:
	mov	rax, qword ptr [rsp + 8]
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_662
.label_647:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_642:
	cmp	r13d, 0x59
	jg	.label_660
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_643
	jmp	qword ptr [word ptr [+ (rax * 8) + label_644]]
.label_797:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_645
.label_660:
	cmp	r13d, 0x73
	jg	.label_646
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_649
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_652]]
.label_821:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_645:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_653
.label_643:
	cmp	r13d, 0x54
	je	.label_655
	cmp	r13d, 0x59
	jne	.label_636
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_640
.label_646:
	cmp	r13d, 0x74
	je	.label_655
	cmp	r13d, 0x77
	jne	.label_636
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rdx, -1
	cmovns	rdx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_653
.label_799:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_641
.label_800:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_657
.label_801:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_638
.label_655:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, r9
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bl, bl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_650
.label_649:
	cmp	r13d, 0x5a
	jne	.label_636
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, bl
.label_640:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_657
.label_636:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	mov	r13d, eax
	jmp	.label_639
.label_798:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	jmp	.label_638
.label_802:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
.label_650:
	or	dl, r10b
.label_641:
	or	dl, bl
.label_638:
	and	dl, 1
	movzx	eax, dl
.label_657:
	mov	rbp, rsi
.label_653:
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	cmp	byte ptr [r12 + rcx], 0
	je	.label_659
	or	eax, 2
.label_659:
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 8]
.label_662:
	mov	qword ptr [rax], rbp
.label_639:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_651:
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x408f80

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_663
	test	rsi, rsi
	mov	ecx, 1
	je	.label_664
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_664
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_663:
	mov	ecx, 1
.label_664:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408fd0

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
	je	.label_665
	cmp	r15, -2
	jb	.label_665
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_665
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_665:
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
	#Procedure 0x409030

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
	.align	16
	#Procedure 0x409050

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
	jne	.label_667
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_666
	test	cl, cl
	jne	.label_666
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_666
.label_667:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_666
	call	__errno_location
	mov	dword ptr [rax], 0
.label_666:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4090b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_669
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_670
	cmp	byte ptr [rax + 1], 0
	je	.label_668
.label_670:
	mov	esi, OFFSET FLAT:.str.1_8
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_669
.label_668:
	xor	ebx, ebx
.label_669:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4090f0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_9
	cmp	byte ptr [rcx], 0
	je	.label_671
	mov	rax, rcx
.label_671:
	add	rsp, 8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409120

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_672
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_673
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_672
.label_673:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_672
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_674
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_674:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_672:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4091a0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_675
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_675
	test	byte ptr [rbx + 1], 1
	je	.label_675
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_675:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	16
	#Procedure 0x4091e0

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
	jne	.label_676
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_676
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_677
.label_676:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_677:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_678
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_678:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401870

	.globl usage
	.type usage, @function
usage:
	mov	rsp, rsp
	push	rbp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x28
	mov	ebp, edi
	mov	rsp, rsp
	test	ebp, ebp
	nop	
	jne	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	rsp, rsp
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rcx
	call	__printf_chk
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.6
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
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
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.16
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.17_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.26
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.28
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rdx
	nop	
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rdx
	nop	
	mov	qword ptr [rsp], rdx
	nop	
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	lea	rsi, [rsi]
	mov	r8, rdx
	mov	r9, rdx
	mov	rbp, rbp
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	mov	rsp, rsp
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_7
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_7
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rsi, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.30
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	nop	
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.30
	mov	ecx, OFFSET FLAT:.str.69
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ed0

	.globl main
	.type main, @function
main:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x48
	lea	rdi, [rdi]
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	r12d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	rbp, rbp
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	r15, rax
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.32
	mov	esi, OFFSET FLAT:.str.33
	call	bindtextdomain
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.32
	lea	rdi, [rdi]
	call	textdomain
	lea	rdi, [rdi]
	mov	edi, 0x10000
	lea	rdi, [rdi]
	call	rpl_nl_langinfo
	mov	qword ptr [word ptr [rip + decimal_point]],  rax
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_55
	cmp	byte ptr [rax], 0
	jne	.label_58
.label_55:
	mov	qword ptr [word ptr [rip + decimal_point]], OFFSET FLAT:.str.34
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.34
.label_58:
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	dword ptr [dword ptr [rip + decimal_point_length]],  eax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:close_stdout
	lea	rdi, [rdi]
	call	atexit
	jmp	.label_16
.label_777:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.43
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:inval_args
	mov	ecx, OFFSET FLAT:inval_types
	mov	r8d, 4
	mov	rbp, rbp
	call	__xargmatch_internal
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + inval_types]]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + inval_style]],  eax
	nop	word ptr cs:[rax + rax]
.label_16:
	mov	edx, OFFSET FLAT:.str.35
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:longopts
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	rsp, rsp
	mov	edi, r12d
	mov	rsi, r14
	lea	rdi, [rdi]
	call	getopt_long
	cmp	eax, 0x63
	lea	rdi, [rdi]
	jle	.label_10
	lea	ecx, [rax - 0x7a]
	cmp	ecx, 0x13
	ja	.label_12
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_13]]
.label_763:
	mov	byte ptr [byte ptr [rip + line_delim]],  1
	lea	rsi, [rsi]
	jmp	.label_16
.label_12:
	mov	rsp, rsp
	cmp	eax, 0x64
	jne	.label_51
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rcx]
	mov	rsp, rsp
	test	eax, eax
	nop	
	je	.label_21
	cmp	byte ptr [rcx + 1], 0
	mov	rbp, rbp
	jne	.label_25
.label_21:
	mov	dword ptr [dword ptr [rip + delimiter]],  eax
	mov	rbp, rbp
	jmp	.label_16
.label_764:
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	nop	
	mov	edi, OFFSET FLAT:.str.36
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:scale_from_args
	mov	ecx, OFFSET FLAT:scale_from_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + scale_from_types]]
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + scale_from]],  eax
	jmp	.label_16
.label_765:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	call	unit_to_umax
	mov	qword ptr [word ptr [rip + from_unit_size]],  rax
	lea	rsi, [rsi]
	jmp	.label_16
.label_766:
	nop	
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.37
	mov	edx, OFFSET FLAT:scale_to_args
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:scale_to_types
	mov	r8d, 4
	call	__xargmatch_internal
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + scale_to_types]]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + scale_to]],  eax
	jmp	.label_16
.label_767:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	call	unit_to_umax
	mov	qword ptr [word ptr [rip + to_unit_size]],  rax
	jmp	.label_16
.label_768:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.38
	mov	edx, OFFSET FLAT:round_args
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:round_types
	mov	r8d, 4
	lea	rsi, [rsi]
	call	__xargmatch_internal
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + round_types]]
	mov	dword ptr [dword ptr [rip + round_style]],  eax
	lea	rsi, [rsi]
	jmp	.label_16
.label_769:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + suffix]],  rax
	lea	rdi, [rdi]
	jmp	.label_16
.label_770:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + grouping]],  1
	jmp	.label_16
.label_771:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	edx, 0xa
	mov	ecx, OFFSET FLAT:padding_width
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	call	xstrtol
	test	eax, eax
	jne	.label_67
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_67
	jns	.label_16
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + padding_alignment]],  1
	neg	rax
	mov	qword ptr [word ptr [rip + padding_width]],  rax
	jmp	.label_16
.label_772:
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + n_frp]],  0
	nop	
	jne	.label_9
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	esi, 1
	mov	rsp, rsp
	call	set_fields
	jmp	.label_16
.label_773:
	mov	byte ptr [byte ptr [rip + debug]],  1
	lea	rdi, [rdi]
	jmp	.label_16
.label_774:
	nop	
	mov	byte ptr [byte ptr [rip + dev_debug]],  1
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + debug]],  1
	lea	rdi, [rdi]
	jmp	.label_16
.label_775:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_26
	nop	
	xor	esi, esi
	mov	edx, 0xa
	mov	ecx, OFFSET FLAT:header
	mov	r8d, OFFSET FLAT:.str_0
	call	xstrtoumax
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_28
	nop	
	mov	rax,  qword ptr [word ptr [rip + header]]
	test	rax, rax
	jne	.label_16
	jmp	.label_28
.label_776:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + format_str]],  rax
	jmp	.label_16
.label_26:
	mov	qword ptr [word ptr [rip + header]],  1
	lea	rdi, [rdi]
	jmp	.label_16
.label_10:
	cmp	eax, -1
	jne	.label_40
	mov	rbx,  qword ptr [word ptr [rip + format_str]]
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + grouping]]
	test	rbx, rbx
	je	.label_42
	test	al, 1
	jne	.label_44
.label_42:
	mov	rsp, rsp
	mov	cl,  byte ptr [byte ptr [rip + debug]]
	test	r15, r15
	jne	.label_46
	nop	
	mov	dl, cl
	xor	dl, 1
	mov	rbp, rbp
	test	dl, 1
	jne	.label_46
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.47
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	error
	lea	rdi, [rdi]
	mov	cl,  byte ptr [byte ptr [rip + debug]]
	mov	al,  byte ptr [byte ptr [rip + grouping]]
	mov	rbx,  qword ptr [word ptr [rip + format_str]]
.label_46:
	mov	rbp, rbp
	test	rbx, rbx
	jne	.label_30
	mov	rdx,  qword ptr [word ptr [rip + padding_width]]
	mov	rsp, rsp
	test	rdx, rdx
	mov	rbp, rbp
	jne	.label_30
	test	cl, 1
	lea	rsi, [rsi]
	je	.label_30
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [rip + scale_to]]
	mov	rsp, rsp
	or	ecx,  dword ptr [dword ptr [rip + scale_from]]
	jne	.label_30
	xor	al, 1
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	je	.label_30
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + format_str]]
.label_30:
	mov	rsp, rsp
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_68
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], 0
	mov	rbp, rbp
	xor	r13d, r13d
	xor	ebp, ebp
	mov	rbp, rbp
	jmp	.label_69
	nop	dword ptr [rax + rax]
.label_17:
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0x25
	mov	rsp, rsp
	sete	al
	inc	r13
	movzx	eax, al
	lea	rbp, [rax + rbp + 1]
.label_69:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbx + rbp]
	cmp	eax, 0x25
	jne	.label_15
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbx + rbp + 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x25
	mov	rsp, rsp
	je	.label_17
	jmp	.label_20
	nop	dword ptr [rax + rax]
.label_15:
	nop	
	test	al, al
	mov	rbp, rbp
	jne	.label_17
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.105
	jmp	.label_22
.label_20:
	mov	qword ptr [rsp + 0x20], r14
	nop	
	inc	rbp
	mov	rbp, rbp
	xor	esi, esi
	jmp	.label_39
	nop	word ptr [rax + rax]
.label_34:
	mov	byte ptr [byte ptr [rip + grouping]],  1
	inc	rbp
.label_39:
	lea	rcx, [rbx + rbp]
	mov	rax, -1
	nop	word ptr cs:[rax + rax]
.label_31:
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax + 1]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	edx, 0x20
	je	.label_31
	add	rbp, rax
	nop	
	movzx	ecx, byte ptr [rbx + rbp]
	mov	rbp, rbp
	cmp	ecx, 0x27
	je	.label_34
	movzx	ecx, cl
	cmp	ecx, 0x30
	nop	
	je	.label_37
	mov	rsp, rsp
	test	rax, rax
	jne	.label_39
	lea	rsi, [rsi]
	jmp	.label_41
.label_37:
	mov	rsp, rsp
	inc	rbp
	mov	rsp, rsp
	mov	sil, 1
	mov	rsp, rsp
	jmp	.label_39
.label_41:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x40], esi
	add	rbp, rbx
	call	__errno_location
	mov	r15, rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r15
	lea	rsi, [rsi]
	mov	dword ptr [r15], 0
	lea	rsi, [rsp + 0x30]
	mov	rsp, rsp
	mov	edx, 0xa
	lea	rdi, [rdi]
	mov	rdi, rbp
	call	strtol
	mov	rbp, rbp
	mov	r14, rax
	cmp	dword ptr [r15], 0x22
	je	.label_52
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x30]
	nop	
	test	r14, r14
	je	.label_38
	lea	rsi, [rsi]
	cmp	r15, rbp
	je	.label_38
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_59
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + padding_width]]
	nop	
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_59
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	test	al, al
	je	.label_60
	lea	rdi, [rdi]
	test	r14, r14
	jg	.label_59
.label_60:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.108
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
.label_59:
	test	r14, r14
	mov	rbp, rbp
	js	.label_24
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x40]
	test	al, al
	je	.label_66
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + zero_padding_width]],  r14
	nop	
	jmp	.label_38
.label_24:
	mov	byte ptr [byte ptr [rip + padding_alignment]],  1
	mov	rbp, rbp
	neg	r14
.label_66:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + padding_width]],  r14
.label_38:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r15]
	nop	
	sub	r15, rbx
	cmp	eax, 0x2e
	je	.label_70
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	jne	.label_71
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.109
	jmp	.label_22
.label_70:
	mov	rbp, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	dword ptr [rbp], 0
	lea	r14, [r15 + rbx + 1]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x30]
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	rdi, r14
	call	strtol
	nop	
	mov	qword ptr [word ptr [rip + user_precision]],  rax
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_23
	nop	
	cmp	dword ptr [rbp], 0x22
	je	.label_23
	lea	rsi, [rsi]
	movsx	rbp, byte ptr [r14]
	call	__ctype_b_loc
	cmp	rbp, 0x2b
	lea	rdi, [rdi]
	je	.label_23
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movzx	eax, word ptr [rax + rbp*2]
	and	eax, 1
	test	ax, ax
	jne	.label_23
	nop	
	mov	r15, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	al, byte ptr [r15]
	lea	rdi, [rdi]
	sub	r15, rbx
.label_71:
	mov	rbp, rbp
	movzx	eax, al
	nop	
	cmp	eax, 0x66
	jne	.label_35
	inc	r15
	mov	rax, r15
	jmp	.label_27
	nop	word ptr cs:[rax + rax]
.label_45:
	movzx	ecx, cl
	cmp	ecx, 0x25
	nop	
	sete	cl
	movzx	ecx, cl
	lea	rax, [rcx + rax + 1]
.label_27:
	movzx	ecx, byte ptr [rbx + rax]
	cmp	ecx, 0x25
	lea	rdi, [rdi]
	je	.label_43
	lea	rsi, [rsi]
	test	cl, cl
	mov	rsp, rsp
	jne	.label_45
	nop	
	jmp	.label_47
	nop	dword ptr [rax + rax]
.label_43:
	movzx	edx, byte ptr [rax + rbx + 1]
	mov	rsp, rsp
	cmp	edx, 0x25
	mov	rbp, rbp
	je	.label_45
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.112
.label_22:
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_47:
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_57
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r13
	lea	rsi, [rsi]
	call	xstrndup
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + format_str_prefix]],  rax
.label_57:
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + r15], 0
	je	.label_61
	add	r15, rbx
	mov	rsp, rsp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	xstrdup
	mov	qword ptr [word ptr [rip + format_str_suffix]],  rax
.label_61:
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_63
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp + 0x40], rax
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rsp, rsp
	call	quote_n
	nop	
	mov	qword ptr [rsp + 0x28], rax
	mov	al,  byte ptr [byte ptr [rip + grouping]]
	and	al, 1
	mov	eax, OFFSET FLAT:.str.114
	mov	rbp, rbp
	mov	ebp, OFFSET FLAT:.str.115
	nop	
	cmovne	rbp, rax
	mov	r13,  qword ptr [word ptr [rip + padding_width]]
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + padding_alignment]]
	and	al, 1
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.116
	nop	
	mov	r15d, OFFSET FLAT:.str.117
	cmovne	r15, rax
	mov	rsi,  qword ptr [word ptr [rip + format_str_prefix]]
	test	rsi, rsi
	mov	ebx, OFFSET FLAT:.str_0
	cmove	rsi, rbx
	lea	rsi, [rsi]
	mov	edi, 1
	call	quote_n
	mov	r14, rax
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + format_str_suffix]]
	test	rax, rax
	nop	
	cmovne	rbx, rax
	mov	edi, 2
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	quote_n
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp], r15
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.113
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, rbp
	mov	r9, r13
	call	__fprintf_chk
.label_63:
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x20]
.label_68:
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + grouping]]
	and	eax, 1
	nop	
	cmp	eax, 1
	jne	.label_29
	cmp	dword ptr [dword ptr [rip + scale_to]],  0
	jne	.label_32
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	mov	rbp, rbp
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_29
	lea	rsi, [rsi]
	mov	edi, 0x10001
	mov	rsp, rsp
	call	rpl_nl_langinfo
	cmp	byte ptr [rax], 0
	jne	.label_29
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	error
.label_29:
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + padding_width]]
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + padding_buffer_size]],  rsi
	ja	.label_48
	inc	rsi
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + padding_buffer_size]],  rsi
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	lea	rsi, [rsi]
	call	xrealloc
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + padding_buffer]],  rax
	mov	rsi,  qword ptr [word ptr [rip + padding_width]]
.label_48:
	test	rsi, rsi
	mov	rsp, rsp
	sete	al
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + delimiter]],  0x80
	nop	
	sete	cl
	nop	
	and	cl, al
	movzx	eax, cl
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + auto_padding]],  eax
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + inval_style]],  0
	je	.label_53
	mov	byte ptr [byte ptr [rip + conv_exit_code]],  1
.label_53:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	cmp	eax, r12d
	lea	rsi, [rsi]
	jge	.label_62
	movzx	ecx,  byte ptr [byte ptr [rip + debug]]
	and	ecx, 1
	mov	rbp, rbp
	cmp	ecx, 1
	jne	.label_64
	nop	
	mov	rcx,  qword ptr [word ptr [rip + header]]
	test	rcx, rcx
	je	.label_64
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.51
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + optind]]
.label_64:
	mov	ebx, 1
	lea	rdi, [rdi]
	cmp	eax, r12d
	lea	rdi, [rdi]
	jge	.label_11
	nop	word ptr [rax + rax]
.label_14:
	mov	rsp, rsp
	cdqe	
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + rax*8]
	lea	rdi, [rdi]
	mov	esi, 1
	call	process_line
	and	ebx, eax
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	lea	rsi, [rsi]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r12d
	jl	.label_14
	jmp	.label_18
.label_62:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], 0
	mov	qword ptr [rsp + 0x38], 0
	mov	rax,  qword ptr [word ptr [rip + header]]
	lea	rcx, [rax - 1]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + header]],  rcx
	test	rax, rax
	je	.label_19
	xor	r14d, r14d
	lea	rbx, [rsp + 0x30]
	mov	rsp, rsp
	lea	rbp, [rsp + 0x38]
	nop	word ptr cs:[rax + rax]
.label_36:
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	nop	
	and	al, 1
	mov	rsp, rsp
	mov	edx, 0xa
	cmovne	edx, r14d
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rdi]
	mov	rdi, rbx
	nop	
	mov	rsi, rbp
	call	getdelim
	test	rax, rax
	mov	rsp, rsp
	jle	.label_19
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rax,  qword ptr [word ptr [rip + header]]
	lea	rcx, [rax - 1]
	mov	qword ptr [word ptr [rip + header]],  rcx
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_36
.label_19:
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	xor	ebp, ebp
	and	al, 1
	lea	rdi, [rdi]
	mov	edx, 0xa
	cmovne	edx, ebp
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	nop	
	lea	rdi, [rsp + 0x30]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x38]
	call	getdelim
	lea	rdi, [rdi]
	mov	ebx, 1
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	jle	.label_50
	lea	r14, [rsp + 0x30]
	lea	rdi, [rdi]
	lea	r15, [rsp + 0x38]
	nop	word ptr [rax + rax]
.label_65:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax + rdi - 1]
	mov	dl,  byte ptr [byte ptr [rip + line_delim]]
	nop	
	and	dl, 1
	mov	edx, 0xa
	cmovne	edx, ebp
	cmp	ecx, edx
	jne	.label_54
	mov	byte ptr [rdi + rax - 1], 0
	mov	rdi, qword ptr [rsp + 0x30]
.label_54:
	cmp	ecx, edx
	sete	al
	mov	rsp, rsp
	movzx	esi, al
	lea	rsi, [rsi]
	call	process_line
	lea	rsi, [rsi]
	and	ebx, eax
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	edx, 0xa
	mov	rbp, rbp
	cmovne	edx, ebp
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + stdin]]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r15
	call	getdelim
	test	rax, rax
	nop	
	jg	.label_65
.label_50:
	mov	rax,  qword ptr [word ptr [rip + stdin]]
	mov	rsp, rsp
	test	byte ptr [rax], 0x20
	mov	rsp, rsp
	je	.label_18
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	rdx, rcx
	nop	
	call	error
.label_18:
	mov	rsp, rsp
	test	ebx, ebx
	mov	rbp, rbp
	jne	.label_11
	mov	al,  byte ptr [byte ptr [rip + debug]]
	lea	rsi, [rsi]
	xor	al, 1
	mov	rsp, rsp
	test	al, 1
	jne	.label_11
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.53
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	rdx, rcx
	call	error
.label_11:
	mov	eax,  dword ptr [dword ptr [rip + inval_style]]
	and	eax, 0xfffffffe
	cmp	eax, 2
	lea	rdi, [rdi]
	setne	al
	mov	rbp, rbp
	movzx	ecx, al
	add	ecx, ecx
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	test	ebx, ebx
	cmove	eax, ecx
	nop	
	add	rsp, 0x48
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
.label_40:
	lea	rdi, [rdi]
	cmp	eax, 0xffffff7d
	je	.label_33
	lea	rdi, [rdi]
	cmp	eax, 0xffffff7e
	mov	rsp, rsp
	jne	.label_51
	xor	edi, edi
	call	usage
.label_33:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.45
	xor	r9d, r9d
	lea	rdi, [rdi]
	xor	eax, eax
	call	version_etc
	mov	rbp, rbp
	xor	edi, edi
	call	exit
.label_51:
	mov	edi, 1
	call	usage
.label_44:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	lea	rdi, [rdi]
	jmp	.label_49
.label_52:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.107
	lea	rsi, [rsi]
	jmp	.label_22
.label_23:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.110
	mov	rbp, rbp
	jmp	.label_22
.label_35:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.111
	jmp	.label_22
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	jmp	.label_49
.label_67:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	rsp, rsp
	jmp	.label_56
.label_9:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.40
	nop	
	jmp	.label_49
.label_28:
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.42
.label_56:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	error
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
.label_49:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402de0

	.globl unit_to_umax
	.type unit_to_umax, @function
unit_to_umax:
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	nop	
	mov	r14, rdi
	call	strlen
	mov	rsp, rsp
	mov	rbx, rax
	mov	qword ptr [rsp + 8], 0
	mov	r8d, OFFSET FLAT:.str.93
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	mov	rdi, r14
	mov	rbp, rbp
	je	.label_75
	nop	
	movsx	eax, byte ptr [rbx + r14 - 1]
	mov	rbp, rbp
	add	eax, -0x30
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str.93
	xor	r15d, r15d
	cmp	eax, 0xa
	mov	rdi, r14
	mov	rsp, rsp
	jb	.label_75
	lea	rdi, [rbx + 2]
	call	xmalloc
	lea	rsi, [rsi]
	mov	r15, rax
	lea	rsi, [rsi]
	lea	r12, [r15 + rbx - 1]
	mov	qword ptr [rsp + 8], r12
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	cmp	rbx, 2
	nop	
	jb	.label_73
	mov	rbp, rbp
	movzx	eax, byte ptr [r15 + rbx - 1]
	cmp	eax, 0x69
	mov	rbp, rbp
	jne	.label_73
	movsx	eax, byte ptr [r12 - 1]
	mov	rsp, rsp
	add	eax, -0x30
	cmp	eax, 0xa
	mov	rsp, rsp
	jae	.label_74
.label_73:
	mov	byte ptr [r12 + 1], 0x42
	lea	rax, [r12 + 2]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	byte ptr [r12 + 2], 0
	mov	r8d, OFFSET FLAT:.str.94
	mov	rsp, rsp
	jmp	.label_76
.label_74:
	mov	byte ptr [r12], 0
	mov	r8d, OFFSET FLAT:.str.93
.label_76:
	mov	rbp, rbp
	mov	rdi, r15
.label_75:
	lea	rsi, [rsi]
	lea	rsi, [rsp + 8]
	mov	rsp, rsp
	lea	rcx, [rsp + 0x10]
	lea	rdi, [rdi]
	mov	edx, 0xa
	mov	rsp, rsp
	call	xstrtoumax
	test	eax, eax
	nop	
	jne	.label_72
	mov	rax, qword ptr [rsp + 8]
	cmp	byte ptr [rax], 0
	jne	.label_72
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_72
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	add	rsp, 0x18
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_72:
	mov	rsp, rsp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.95
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	nop	
	call	quote
	mov	rcx, rax
	nop	
	mov	edi, 1
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f90

	.globl process_line
	.type process_line, @function
process_line:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	r13, rdi
	mov	r12b, 1
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	
	jmp	.label_89
	nop	word ptr [rax + rax]
.label_85:
	inc	rbp
	mov	rsp, rsp
	mov	r13, rbp
	mov	r12b, bl
.label_89:
	inc	r15
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + delimiter]]
	mov	bl, byte ptr [r13]
	lea	rdi, [rdi]
	cmp	eax, 0x80
	lea	rdi, [rdi]
	jne	.label_81
	nop	
	test	bl, bl
	je	.label_79
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rbp, r13
	nop	
.label_91:
	movzx	ecx, bl
	mov	rbp, rbp
	cmp	ecx, 0xa
	je	.label_77
	lea	rsi, [rsi]
	movzx	edx, word ptr [rax + rcx*2]
	lea	rdi, [rdi]
	mov	esi, edx
	mov	rsp, rsp
	and	esi, 1
	mov	rsp, rsp
	test	si, si
	lea	rsi, [rsi]
	je	.label_80
.label_77:
	nop	
	mov	bl, byte ptr [rbp + 1]
	mov	rsp, rsp
	inc	rbp
	lea	rdi, [rdi]
	test	bl, bl
	jne	.label_91
	lea	rsi, [rsi]
	jmp	.label_79
	nop	word ptr cs:[rax + rax]
.label_81:
	test	bl, bl
	je	.label_82
	nop	
	movsx	ecx, bl
	cmp	ecx, eax
	mov	rbp, r13
	mov	rbp, rbp
	je	.label_86
	nop	word ptr [rax + rax]
.label_92:
	lea	rdi, [rdi]
	movsx	ecx, bl
	nop	
	cmp	ecx, eax
	lea	rsi, [rsi]
	je	.label_86
	lea	rsi, [rsi]
	mov	bl, byte ptr [rbp + 1]
	inc	rbp
	nop	
	test	bl, bl
	mov	rsp, rsp
	jne	.label_92
	jmp	.label_79
	nop	word ptr cs:[rax + rax]
.label_80:
	mov	rbp, rbp
	cmp	ecx, 0xa
	mov	rbp, rbp
	je	.label_88
	mov	rsp, rsp
	and	edx, 1
	test	dx, dx
	mov	rbp, rbp
	jne	.label_88
	nop	dword ptr [rax]
.label_87:
	movzx	ecx, byte ptr [rbp + 1]
	test	rcx, rcx
	nop	
	je	.label_79
	lea	rdi, [rdi]
	inc	rbp
	mov	rsp, rsp
	cmp	ecx, 0xa
	je	.label_88
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	ecx, 1
	test	cx, cx
	je	.label_87
	mov	rsp, rsp
	jmp	.label_88
.label_82:
	mov	rbp, r13
.label_86:
	nop	
	test	bl, bl
	mov	rbp, rbp
	je	.label_79
.label_88:
	mov	byte ptr [rbp], 0
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsi, r15
	lea	rsi, [rsi]
	call	process_field
	mov	bl, al
	mov	rbp, rbp
	test	bl, bl
	lea	rsi, [rsi]
	je	.label_83
	mov	bl, r12b
.label_83:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + delimiter]]
	cmp	eax, 0x80
	lea	rsi, [rsi]
	mov	ecx, 0x20
	lea	rdi, [rdi]
	cmove	eax, ecx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_90
	mov	rsp, rsp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	jmp	.label_85
.label_90:
	mov	rsp, rsp
	movzx	esi, al
	mov	rsp, rsp
	call	__overflow
	jmp	.label_85
.label_79:
	nop	
	mov	rdi, r13
	nop	
	mov	rsi, r15
	call	process_field
	mov	rsp, rsp
	mov	bl, al
	lea	rsi, [rsi]
	test	r14b, r14b
	je	.label_78
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	xor	ecx, ecx
	and	al, 1
	lea	rdi, [rdi]
	mov	esi, 0xa
	mov	rbp, rbp
	cmovne	esi, ecx
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_84
	nop	
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_78:
	mov	rbp, rbp
	and	r12b, 1
	nop	
	movzx	ecx, r12b
	mov	rsp, rsp
	xor	eax, eax
	nop	
	test	bl, bl
	cmovne	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_84:
	call	__overflow
	jmp	.label_78
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403210

	.globl process_field
	.type process_field, @function
process_field:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x278
	mov	rsp, rsp
	mov	rbp, rsi
	nop	
	mov	r12, rdi
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + frp]]
	test	rax, rax
	je	.label_101
	mov	rcx, qword ptr [rax]
	mov	rsp, rsp
	cmp	rcx, -1
	lea	rsi, [rsi]
	je	.label_124
	add	rax, 0x10
	nop	word ptr cs:[rax + rax]
.label_149:
	cmp	rcx, rbp
	lea	rdi, [rdi]
	ja	.label_144
	cmp	qword ptr [rax - 8], rbp
	jae	.label_147
.label_144:
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	add	rax, 0x10
	cmp	rcx, -1
	mov	rbp, rbp
	jne	.label_149
	lea	rdi, [rdi]
	jmp	.label_124
.label_101:
	cmp	rbp, 1
	nop	
	jne	.label_124
.label_147:
	mov	r14,  qword ptr [word ptr [rip + suffix]]
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_165
	mov	rdi, r12
	mov	rsp, rsp
	call	strlen
	mov	rbx, rax
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsi]
	cmp	rbx, rax
	jbe	.label_165
	mov	rbp, rbp
	add	rbx, r12
	sub	rbx, rax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, rbx
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	je	.label_230
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_165
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.119
	xor	eax, eax
	call	__fprintf_chk
	jmp	.label_165
.label_124:
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, r12
	nop	
	call	fputs_unlocked
	mov	bl, 1
.label_211:
	mov	al, bl
	mov	rbp, rbp
	add	rsp, 0x278
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	nop	
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_230:
	mov	byte ptr [rbx], 0
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	mov	rbp, rbp
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_165
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	mov	rdi, r14
	call	quote
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.118
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	call	__fprintf_chk
.label_165:
	nop	
	mov	bl, byte ptr [r12]
	test	bl, bl
	mov	rbp, rbp
	mov	r15, r12
	je	.label_224
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	mov	r15, r12
	nop	word ptr cs:[rax + rax]
.label_235:
	movzx	ecx, bl
	mov	rsp, rsp
	test	byte ptr [rax + rcx*2], 1
	je	.label_224
	mov	bl, byte ptr [r15 + 1]
	mov	rsp, rsp
	inc	r15
	mov	rbp, rbp
	test	bl, bl
	mov	rsp, rsp
	jne	.label_235
.label_224:
	cmp	dword ptr [dword ptr [rip + auto_padding]],  0
	je	.label_240
	cmp	rbp, 1
	jg	.label_94
	mov	rbp, rbp
	mov	eax, r12d
	mov	rbp, rbp
	sub	eax, r15d
	mov	rsp, rsp
	jne	.label_94
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + padding_width]],  0
	nop	
	jmp	.label_106
.label_94:
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	call	strlen
	mov	qword ptr [word ptr [rip + padding_width]],  rax
	cmp	qword ptr [word ptr [rip + padding_buffer_size]],  rax
	ja	.label_106
	inc	rax
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + padding_buffer_size]],  rax
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xrealloc
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + padding_buffer]],  rax
.label_106:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + dev_debug]]
	and	al, 1
	mov	rsp, rsp
	je	.label_143
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rcx,  qword ptr [word ptr [rip + padding_width]]
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.120
	xor	eax, eax
	call	__fprintf_chk
.label_240:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + scale_from]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x1b0], rax
	mov	rbp, rbp
	lea	eax, [rax - 3]
	cmp	eax, 2
	mov	eax, 0x400
	mov	ecx, 0x3e8
	nop	
	cmovb	ecx, eax
	mov	dword ptr [rsp + 0x150], ecx
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	nop	
	jne	.label_167
	mov	qword ptr [rsp + 0xe0], r12
	nop	
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	rsp, rsp
	mov	rsi, r15
	lea	rsi, [rsi]
	call	quote_n
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + decimal_point]]
	mov	edi, 1
	call	quote_n
	mov	rbp, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.123
	mov	r9d, 0x12
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rcx, rbx
	nop	
	mov	r8, rbp
	call	__fprintf_chk
	jmp	.label_207
.label_167:
	mov	qword ptr [rsp + 0xe0], r12
	jmp	.label_207
.label_143:
	mov	qword ptr [rsp + 0xe0], r12
	nop	
	mov	eax,  dword ptr [dword ptr [rip + scale_from]]
	mov	qword ptr [rsp + 0x1b0], rax
	lea	eax, [rax - 3]
	cmp	eax, 2
	mov	rsp, rsp
	mov	eax, 0x400
	lea	rsi, [rsi]
	mov	ecx, 0x3e8
	nop	
	cmovb	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x150], ecx
.label_207:
	movzx	ebx, byte ptr [r15]
	mov	rsp, rsp
	lea	r13, [r15 + 1]
	lea	rsi, [rsi]
	cmp	ebx, 0x2d
	nop	
	cmovne	r13, r15
	lea	rdi, [rdi]
	xor	r12d, r12d
	test	r13, r13
	lea	rdi, [rdi]
	mov	r14d, 0
	lea	rsi, [rsi]
	fldz	
	lea	rdi, [rdi]
	je	.label_219
	fstp	st(0)
	mov	rsp, rsp
	movsx	eax, byte ptr [r13]
	add	eax, -0x30
	lea	rdi, [rdi]
	fldz	
	cmp	eax, 0xa
	mov	r14, r13
	mov	rsp, rsp
	jae	.label_219
	mov	rbp, rbp
	mov	ebp, ebx
	lea	rsi, [rsi]
	fldz	
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	edi, 1
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_119:
	mov	esi, edx
	fxch	st(1)
	fucomi	st(1)
	setp	dl
	setne	bl
	or	bl, dl
	test	eax, eax
	setne	dl
	or	dl, bl
	lea	rsi, [rsi]
	movzx	edx, dl
	add	edx, esi
	cmp	edx, 0x1b
	ja	.label_138
	cmp	edx, 0x12
	mov	rsp, rsp
	cmova	r12d, edi
	mov	rbp, rbp
	fmul	dword ptr [dword ptr [rip + label_111]]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xdc], eax
	lea	rsi, [rsi]
	fiadd	dword ptr [rsp + 0xdc]
	movsx	eax, byte ptr [r13 + 1]
	nop	
	inc	r13
	add	eax, -0x30
	mov	rsp, rsp
	cmp	eax, 9
	fxch	st(1)
	jbe	.label_119
	mov	rbp, rbp
	fstp	st(0)
	movzx	eax, bpl
	nop	
	cmp	eax, 0x2d
	fld	st(0)
	lea	rdi, [rdi]
	fchs	
	lea	rsi, [rsi]
	fxch	st(1)
	fcmove	st(0), st(1)
	mov	rsp, rsp
	fstp	st(1)
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	r12d, 1
	lea	rsi, [rsi]
	ja	.label_170
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x138], ebp
	mov	rsp, rsp
	fstp	xword ptr [rsp + 0x19c]
	mov	rsp, rsp
	mov	rbp,  qword ptr [word ptr [rip + decimal_point]]
	mov	eax,  dword ptr [dword ptr [rip + decimal_point_length]]
	lea	rdi, [rdi]
	mov	r14, r13
	jmp	.label_166
.label_219:
	lea	rsi, [rsi]
	fstp	st(0)
	mov	rbp,  qword ptr [word ptr [rip + decimal_point]]
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + decimal_point_length]]
	mov	dword ptr [rsp + 0x128], eax
	movsxd	rdx, eax
	mov	rdi, r14
	nop	
	mov	rsi, rbp
	nop	
	call	strncmp
	nop	
	fldz	
	lea	rdi, [rdi]
	xor	r12d, r12d
	mov	rbp, rbp
	test	eax, eax
	mov	ecx, 0
	lea	rdi, [rdi]
	jne	.label_107
	fstp	st(0)
	lea	rdi, [rdi]
	movzx	eax, bl
	mov	dword ptr [rsp + 0x138], ebx
	mov	rbp, rbp
	cmp	eax, 0x2d
	lea	rdi, [rdi]
	fldz	
	fld	st(0)
	fchs	
	mov	rsp, rsp
	fxch	st(1)
	fcmove	st(0), st(1)
	fstp	st(1)
	nop	
	fstp	xword ptr [rsp + 0x19c]
	mov	eax, dword ptr [rsp + 0x128]
.label_166:
	movsxd	rbx, eax
	nop	
	mov	rdi, r14
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rdx, rbx
	nop	
	call	strncmp
	mov	rbp, rbp
	xor	ecx, ecx
	test	eax, eax
	mov	rsp, rsp
	je	.label_210
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x19c]
.label_233:
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	mov	rbp, r13
	mov	rbp, rbp
	jne	.label_214
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	fld	st(0)
	lea	rsi, [rsi]
	fstp	xword ptr [rsp]
	nop	
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.124
	nop	
	xor	eax, eax
	mov	rsp, rsp
	fstp	xword ptr [rsp + 0x19c]
	nop	
	mov	rbx, rcx
	nop	
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	rcx, rbx
	fld	xword ptr [rsp + 0x19c]
	nop	
	mov	rbp, r13
.label_214:
	lea	rdi, [rdi]
	movzx	ebx, byte ptr [rbp]
	mov	rbp, rbp
	xor	r14d, r14d
	lea	rsi, [rsi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_238
	mov	r14, rcx
	nop	
	fstp	xword ptr [rsp + 0x19c]
	lea	rdi, [rdi]
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	jmp	.label_153
	nop	
.label_114:
	movzx	ebx, byte ptr [rbp + 1]
	lea	rdi, [rdi]
	inc	rbp
.label_153:
	nop	
	test	byte ptr [rax + rbx*2], 1
	lea	rdi, [rdi]
	jne	.label_114
	movsx	ebx, bl
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.93
	lea	rsi, [rsi]
	mov	edx, 9
	mov	rbp, rbp
	mov	esi, ebx
	call	memchr
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_128
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x1b0]
	test	eax, eax
	fld	xword ptr [rsp + 0x19c]
	lea	rdi, [rdi]
	mov	rcx, r14
	lea	rsi, [rsi]
	je	.label_137
	cmp	ebx, 0x53
	jg	.label_152
	mov	rbp, rbp
	add	ebx, -0x45
	cmp	ebx, 0xb
	lea	rdi, [rdi]
	ja	.label_156
	nop	
	mov	r14d, 1
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_125]]
.label_758:
	mov	r14d, 6
	jmp	.label_95
.label_210:
	lea	rsi, [rsi]
	mov	rsi, rbp
	lea	rsi, [rsi]
	movzx	r9d, byte ptr [r14 + rbx]
	cmp	r9d, 0x2d
	nop	
	lea	r13, [r14 + rbx + 1]
	lea	r10, [r14 + rbx]
	cmovne	r13, r10
	nop	
	xor	ebp, ebp
	test	r13, r13
	mov	edi, 0
	mov	rbp, rbp
	fldz	
	mov	rbp, rbp
	je	.label_172
	fstp	st(0)
	lea	rsi, [rsi]
	movsx	eax, byte ptr [r13]
	add	eax, -0x30
	lea	rsi, [rsi]
	fldz	
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rbp, rbp
	mov	rdi, r13
	mov	rsp, rsp
	jae	.label_172
	lea	rsi, [rsi]
	fldz	
	xor	ecx, ecx
	nop	
	mov	r8d, 1
	xor	esi, esi
	lea	rdi, [rdi]
	fld	xword ptr [rsp + 0x19c]
	nop	word ptr cs:[rax + rax]
.label_213:
	mov	rsp, rsp
	mov	edi, esi
	fxch	st(2)
	nop	
	fucomi	st(1)
	mov	rsp, rsp
	setp	bl
	setne	dl
	lea	rdi, [rdi]
	or	dl, bl
	lea	rdi, [rdi]
	test	eax, eax
	setne	bl
	or	bl, dl
	mov	rsp, rsp
	movzx	esi, bl
	add	esi, edi
	cmp	esi, 0x1b
	lea	rsi, [rsi]
	ja	.label_206
	mov	rsp, rsp
	cmp	esi, 0x12
	cmova	ebp, r8d
	lea	rdi, [rdi]
	fmul	dword ptr [dword ptr [rip + label_111]]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x18c], eax
	fiadd	dword ptr [rsp + 0x18c]
	movsx	eax, byte ptr [r13 + 1]
	inc	r13
	add	eax, -0x30
	cmp	eax, 9
	fxch	st(2)
	jbe	.label_213
	fstp	st(1)
	mov	rbp, rbp
	movzx	eax, r9b
	mov	rsp, rsp
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	fld	st(1)
	fchs	
	lea	rsi, [rsi]
	fxch	st(2)
	lea	rdi, [rdi]
	fcmove	st(0), st(2)
	nop	
	fstp	st(2)
	xor	ecx, ecx
	mov	rsp, rsp
	cmp	ebp, 1
	mov	rbp, rbp
	jbe	.label_225
	mov	rsp, rsp
	fstp	st(1)
	lea	rsi, [rsi]
	mov	r12d, ebp
	lea	rdi, [rdi]
	jmp	.label_170
.label_172:
	lea	rsi, [rsi]
	fstp	st(0)
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x128], r10
	mov	r14d, r9d
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	strncmp
	xor	ebp, ebp
	test	eax, eax
	je	.label_102
	xor	ecx, ecx
	lea	rdi, [rdi]
	fld	xword ptr [rsp + 0x19c]
	jmp	.label_107
.label_238:
	mov	rax, qword ptr [rsp + 0x1b0]
	lea	rsi, [rsi]
	jmp	.label_113
.label_128:
	lea	rdi, [rdi]
	fld	xword ptr [rsp + 0x19c]
	mov	rcx, r14
	jmp	.label_120
.label_102:
	lea	rsi, [rsi]
	mov	r9d, r14d
	movzx	eax, r9b
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	nop	
	fldz	
	fld	st(0)
	fchs	
	mov	rbp, rbp
	fxch	st(1)
	fcmove	st(0), st(1)
	mov	rbp, rbp
	fstp	st(1)
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x19c]
	mov	r10, qword ptr [rsp + 0x128]
.label_225:
	movzx	eax, r9b
	mov	rsp, rsp
	cmp	ebp, 1
	cmove	r12d, ebp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	jne	.label_150
	fstp	st(1)
	jmp	.label_107
.label_150:
	mov	rcx, r13
	mov	rsp, rsp
	sub	rcx, r10
	fld1	
	lea	rdi, [rdi]
	test	ecx, ecx
	nop	
	mov	edi, dword ptr [rsp + 0x138]
	mov	rbp, rbp
	fldz	
	mov	rbp, rbp
	fldz	
	lea	rdi, [rdi]
	je	.label_161
	nop	
	fstp	st(2)
	nop	
	fstp	st(0)
	fstp	st(0)
	lea	rdi, [rdi]
	mov	eax, ecx
	mov	rsp, rsp
	dec	eax
	fld	dword ptr [dword ptr [rip + label_111]]
	fldz	
	mov	rsp, rsp
	fldz	
	nop	
	je	.label_161
	fstp	st(2)
	fstp	st(0)
	lea	rsi, [rsi]
	fstp	st(0)
	mov	rbp, rbp
	mov	esi, r13d
	lea	rdi, [rdi]
	sub	esi, r10d
	lea	edx, [rsi + 7]
	add	esi, -2
	fld	dword ptr [dword ptr [rip + label_111]]
	fldz	
	test	dl, 7
	je	.label_188
	fstp	st(0)
	fstp	st(0)
	mov	edx, r13d
	mov	rbp, rbp
	sub	edx, r10d
	add	dl, 7
	lea	rsi, [rsi]
	movzx	edx, dl
	and	edx, 7
	mov	rsp, rsp
	neg	edx
	nop	
	fld	dword ptr [dword ptr [rip + label_111]]
	fldz	
	fxch	st(1)
.label_215:
	lea	rdi, [rdi]
	fstp	st(1)
	lea	rdi, [rdi]
	fmul	dword ptr [dword ptr [rip + label_111]]
	dec	eax
	inc	edx
	mov	rbp, rbp
	fld	st(0)
	mov	rbp, rbp
	fxch	st(1)
	jne	.label_215
.label_188:
	cmp	esi, 7
	fldz	
	fxch	st(1)
	fxch	st(2)
	fxch	st(1)
	nop	
	jb	.label_161
	lea	rdi, [rdi]
	fstp	st(2)
	mov	rbp, rbp
	fstp	st(1)
	fld	dword ptr [dword ptr [rip + label_111]]
	fldz	
	fxch	st(1)
.label_185:
	fstp	st(1)
	mov	rsp, rsp
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	nop	
	fmul	st(1), st(0)
	mov	rsp, rsp
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	add	eax, -8
	mov	rbp, rbp
	fldz	
	fxch	st(1)
	jne	.label_185
.label_161:
	fstp	st(1)
	fstp	st(0)
	movzx	eax, dil
	cmp	eax, 0x2d
	nop	
	fdivp	st(2)
	mov	rbp, rbp
	fld	st(1)
	lea	rdi, [rdi]
	fchs	
	fxch	st(2)
	fcmove	st(0), st(2)
	fstp	st(2)
	lea	rsi, [rsi]
	faddp	st(1)
	cmp	r12d, 1
	lea	rdi, [rdi]
	ja	.label_170
	jmp	.label_233
.label_152:
	mov	rbp, rbp
	cmp	ebx, 0x54
	lea	rsi, [rsi]
	je	.label_234
	cmp	ebx, 0x59
	nop	
	je	.label_237
	cmp	ebx, 0x5a
	jne	.label_156
	mov	r14d, 7
	jmp	.label_95
.label_206:
	fstp	st(0)
.label_138:
	fstp	st(0)
.label_745:
	mov	esi, OFFSET FLAT:.str.128
	mov	r12d, 2
	mov	rsp, rsp
	jmp	.label_122
.label_759:
	mov	r14d, 3
	nop	
	jmp	.label_95
.label_760:
	mov	r14d, 2
	mov	rsp, rsp
	jmp	.label_95
.label_761:
	lea	rsi, [rsi]
	mov	r14d, 5
	jmp	.label_95
.label_234:
	mov	rsp, rsp
	mov	r14d, 4
	lea	rsi, [rsi]
	jmp	.label_95
.label_237:
	mov	r14d, 8
	jmp	.label_95
.label_156:
	xor	r14d, r14d
.label_95:
	lea	r13, [rbp + 1]
	xor	ecx, ecx
	mov	rsp, rsp
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_113
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x69
	mov	rsp, rsp
	jne	.label_135
	add	rbp, 2
	mov	dword ptr [rsp + 0x150], 0x400
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	lea	rdi, [rdi]
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 1
	jne	.label_163
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	
	mov	dword ptr [rsp + 0x150], 0x400
	nop	
	mov	esi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.125
	mov	ecx, 0x400
	xor	eax, eax
	fstp	xword ptr [rsp + 0x19c]
	call	__fprintf_chk
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x19c]
	nop	
	mov	r13, rbp
	jmp	.label_110
.label_113:
	cmp	eax, 4
	jne	.label_184
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x69
	lea	rsi, [rsi]
	jne	.label_186
	mov	rbp, rbp
	mov	rbx, rcx
	mov	rsp, rsp
	inc	r13
	lea	rsi, [rsi]
	jmp	.label_110
.label_184:
	mov	rsp, rsp
	mov	rbx, rcx
	jmp	.label_110
.label_135:
	xor	ebx, ebx
	jmp	.label_110
.label_163:
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r13, rbp
.label_110:
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x150]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x108], eax
	fild	dword ptr [rsp + 0x108]
	fld1	
	test	r14d, r14d
	fldz	
	je	.label_187
	fstp	st(0)
	mov	rsp, rsp
	fstp	st(0)
	mov	rsp, rsp
	mov	eax, r14d
	dec	eax
	nop	
	je	.label_203
	lea	edx, [r14 + 7]
	mov	rbp, rbp
	lea	ecx, [r14 - 2]
	fldz	
	lea	rsi, [rsi]
	test	dl, 7
	je	.label_136
	fstp	st(0)
	and	edx, 7
	lea	rsi, [rsi]
	neg	edx
	mov	rsp, rsp
	fld	st(0)
	lea	rdi, [rdi]
	fldz	
	nop	word ptr cs:[rax + rax]
.label_209:
	fstp	st(0)
	mov	rbp, rbp
	fmul	st(1)
	dec	eax
	mov	rsp, rsp
	inc	edx
	fld	st(0)
	mov	rsp, rsp
	jne	.label_209
	lea	rdi, [rdi]
	jmp	.label_236
.label_203:
	fldz	
	lea	rdi, [rdi]
	fldz	
	mov	rbp, rbp
	fxch	st(1)
	fxch	st(2)
	fxch	st(1)
	lea	rsi, [rsi]
	jmp	.label_187
.label_136:
	lea	rdi, [rdi]
	fld	st(1)
.label_236:
	nop	
	cmp	ecx, 7
	jb	.label_187
	mov	rsp, rsp
	fstp	st(1)
	fldz	
	nop	word ptr cs:[rax + rax]
.label_202:
	mov	rsp, rsp
	fstp	st(0)
	fmul	st(1)
	mov	rsp, rsp
	fmul	st(1)
	fmul	st(1)
	nop	
	fmul	st(1)
	mov	rbp, rbp
	fmul	st(1)
	fmul	st(1)
	fmul	st(1)
	nop	
	fmul	st(1)
	mov	rbp, rbp
	add	eax, -8
	fldz	
	jne	.label_202
.label_187:
	lea	rdi, [rdi]
	fstp	st(2)
	fstp	st(1)
	mov	al,  byte ptr [byte ptr [rip + dev_debug]]
	nop	
	and	al, 1
	mov	rbp, rbp
	je	.label_96
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	st(0)
	mov	rbp, rbp
	fstp	xword ptr [rsp]
	nop	
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.126
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, dword ptr [rsp + 0x150]
	mov	rbp, rbp
	mov	r8d, r14d
	mov	rsp, rsp
	fxch	st(1)
	fstp	xword ptr [rsp + 0x19c]
	fstp	xword ptr [rsp + 0x150]
	mov	rsp, rsp
	call	__fprintf_chk
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x19c]
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x150]
	lea	rdi, [rdi]
	fmulp	st(1)
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_142
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	fld	st(0)
	fstp	xword ptr [rsp + 0x10]
	fld	st(0)
	fstp	xword ptr [rsp]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.127
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	fstp	xword ptr [rsp + 0x19c]
	lea	rdi, [rdi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	fld	xword ptr [rsp + 0x19c]
	mov	rbp, rbp
	jmp	.label_142
.label_96:
	fmulp	st(1)
.label_142:
	mov	rcx, rbx
	lea	rsi, [rsi]
	cmp	r12d, 2
	jb	.label_182
.label_170:
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	eax, r12d
	lea	rsi, [rsi]
	cmp	r12d, 6
	lea	rdi, [rdi]
	ja	.label_122
	jmp	qword ptr [word ptr [+ (rax * 8) + label_193]]
.label_107:
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.129
	nop	
	mov	r12d, 3
.label_122:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	nop	
	je	.label_118
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	and	al, 1
	sete	al
	lea	rsi, [rsi]
	movzx	ebp, al
	add	ebp, ebp
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	edx, 5
	fstp	xword ptr [rsp + 0x19c]
	nop	
	mov	rbx, rcx
	mov	rsp, rsp
	call	dcgettext
	mov	r14, rax
	mov	rdi, r15
	lea	rsi, [rsi]
	call	quote
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rbp, rbp
	mov	rdx, r14
.label_196:
	call	error
	mov	rcx, rbx
.label_229:
	mov	rbp, rbp
	fld	xword ptr [rsp + 0x19c]
.label_118:
	mov	rdx,  qword ptr [word ptr [rip + from_unit_size]]
	cmp	rdx, 1
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + to_unit_size]]
	jne	.label_218
	cmp	rax, 1
	mov	rbp, rbp
	je	.label_222
.label_218:
	nop	
	mov	qword ptr [rsp + 0x258], rdx
	mov	rsp, rsp
	test	rdx, rdx
	setns	dl
	movzx	edx, dl
	fild	qword ptr [rsp + 0x258]
	nop	
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_239]]
	fmulp	st(1)
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x110], rax
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	setns	al
	movzx	eax, al
	nop	
	fild	qword ptr [rsp + 0x110]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_239]]
	nop	
	fdivp	st(1)
.label_222:
	or	r12d, 1
	mov	rsp, rsp
	cmp	r12d, 1
	sete	bl
	mov	rbp, rbp
	jne	.label_232
	mov	rax,  qword ptr [word ptr [rip + user_precision]]
	lea	rdi, [rdi]
	cmp	rax, -1
	cmovne	rcx, rax
	nop	
	fld	xword ptr [word ptr [rip + label_103]]
	nop	
	fxch	st(1)
	nop	
	fucomi	st(1)
	mov	rbp, rbp
	fstp	st(1)
	setae	al
	fld	xword ptr [word ptr [rip + label_104]]
	nop	
	fucomip	st(1)
	setae	bl
	mov	rbp, rbp
	and	bl, al
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	movzx	edx, bl
	cmp	edx, 1
	fldz	
	lea	rsi, [rsi]
	fldz	
	mov	rbp, rbp
	fldz	
	jne	.label_105
	fstp	st(2)
	mov	rbp, rbp
	fstp	st(0)
	nop	
	fstp	st(0)
	fldz	
	nop	
	fucomi	st(1)
	mov	rsp, rsp
	fld	st(1)
	fchs	
	nop	
	fld	st(2)
	fcmovnbe	st(0), st(1)
	fstp	st(1)
	xor	eax, eax
	lea	rsi, [rsi]
	fld	dword ptr [dword ptr [rip + label_111]]
	lea	rsi, [rsi]
	fxch	st(1)
	mov	rsp, rsp
	fucomip	st(1)
	nop	
	jae	.label_140
	lea	rsi, [rsi]
	fstp	st(1)
	mov	rsp, rsp
	fstp	st(0)
	fldz	
	mov	rbp, rbp
	fldz	
	mov	rbp, rbp
	fldz	
	jmp	.label_105
.label_140:
	mov	rsp, rsp
	fld	st(2)
	nop	dword ptr [rax]
.label_176:
	lea	rdi, [rdi]
	inc	eax
	fdiv	st(1)
	lea	rdi, [rdi]
	fxch	st(2)
	nop	
	fucomi	st(2)
	fld	st(2)
	mov	rbp, rbp
	fchs	
	fld	st(3)
	fcmovnbe	st(0), st(1)
	nop	
	fstp	st(1)
	mov	rsp, rsp
	fucomip	st(2)
	fxch	st(2)
	jae	.label_176
.label_105:
	lea	rsi, [rsi]
	fstp	st(2)
	mov	rsp, rsp
	fstp	st(0)
	lea	rsi, [rsi]
	fstp	st(0)
	nop	
	mov	r12d,  dword ptr [dword ptr [rip + scale_to]]
	mov	rsp, rsp
	test	r12d, r12d
	mov	rbp, rbp
	jne	.label_191
	mov	edx, eax
	mov	rsp, rsp
	add	rdx, rcx
	cmp	rdx, 0x13
	jb	.label_191
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	jne	.label_195
	fstp	st(0)
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_177
.label_191:
	lea	rsi, [rsi]
	cmp	eax, 0x1b
	mov	rsp, rsp
	jb	.label_197
	lea	rsi, [rsi]
	fstp	xword ptr [rsp + 0x19c]
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	lea	rsi, [rsi]
	jne	.label_201
	xor	ebx, ebx
	jmp	.label_177
.label_197:
	mov	r13b,  byte ptr [byte ptr [rip + grouping]]
	lea	rdi, [rdi]
	and	r13b, 1
	mov	r15d,  dword ptr [dword ptr [rip + round_style]]
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x1e0], 0x25
	movzx	eax, r13b
	mov	rsp, rsp
	mov	rbp, rcx
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_208
	mov	rbp, rbp
	lea	r14, [rsp + 0x1e2]
	mov	byte ptr [rsp + 0x1e1], 0x27
	jmp	.label_217
.label_201:
	nop	
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	and	al, 1
	mov	rsp, rsp
	sete	al
	mov	rsp, rsp
	movzx	ebp, al
	add	ebp, ebp
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.135
.label_227:
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	fld	xword ptr [rsp + 0x19c]
	nop	
	fstp	xword ptr [rsp]
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebp
	mov	rsp, rsp
	mov	rdx, rcx
	call	error
	nop	
	jmp	.label_177
.label_208:
	nop	
	lea	r14, [rsp + 0x1e1]
.label_217:
	mov	rsp, rsp
	mov	r9,  qword ptr [word ptr [rip + zero_padding_width]]
	test	r9, r9
	je	.label_108
	lea	rsi, [rsi]
	fstp	xword ptr [rsp + 0x19c]
	mov	esi, 0x3e
	mov	edx, 1
	nop	
	mov	rcx, -1
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str.138
	xor	eax, eax
	mov	rdi, r14
	mov	rbp, rbp
	call	__snprintf_chk
	cdqe	
	mov	rbp, rbp
	add	r14, rax
	jmp	.label_123
.label_120:
	mov	esi, OFFSET FLAT:.str.131
	mov	r12d, 5
	mov	rsp, rsp
	jmp	.label_122
.label_108:
	nop	
	fstp	xword ptr [rsp + 0x19c]
.label_123:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_141
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	esi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.139
	mov	rsp, rsp
	xor	eax, eax
	call	__fprintf_chk
.label_141:
	mov	rbp, rbp
	test	r12d, r12d
	fld	xword ptr [rsp + 0x19c]
	mov	rbp, rbp
	mov	r9, rbp
	mov	rbp, rbp
	je	.label_226
	mov	rbp, rbp
	lea	eax, [r12 - 3]
	mov	rbp, rbp
	cmp	eax, 2
	lea	rsi, [rsi]
	mov	ecx, 0x400
	mov	eax, 0x3e8
	nop	
	cmovb	eax, ecx
	nop	
	xor	ebp, ebp
	mov	rbp, rbp
	test	bl, bl
	fld	st(0)
	nop	
	fldz	
	lea	rsi, [rsi]
	fldz	
	mov	rbp, rbp
	je	.label_174
	fstp	st(1)
	lea	rsi, [rsi]
	fstp	st(0)
	lea	rdi, [rdi]
	fstp	st(0)
	lea	rsi, [rsi]
	fldz	
	lea	rsi, [rsi]
	fucomi	st(1)
	mov	rsp, rsp
	fld	st(1)
	lea	rdi, [rdi]
	fchs	
	lea	rdi, [rdi]
	fld	st(2)
	lea	rdi, [rdi]
	fcmovnbe	st(0), st(1)
	mov	rsp, rsp
	fstp	st(1)
	mov	ecx, eax
	mov	qword ptr [rsp + 0x180], rcx
	nop	
	fild	qword ptr [rsp + 0x180]
	lea	rdi, [rdi]
	xor	ebp, ebp
	fxch	st(1)
	lea	rdi, [rdi]
	fucomip	st(1)
	lea	rdi, [rdi]
	jae	.label_189
	nop	
	fstp	st(1)
	fstp	st(0)
	fld	st(0)
	fldz	
	fldz	
	lea	rdi, [rdi]
	jmp	.label_174
.label_226:
	lea	rdi, [rdi]
	fld1	
	lea	rdi, [rdi]
	test	r9d, r9d
	mov	rbp, rbp
	fldz	
	lea	rdi, [rdi]
	fldz	
	lea	rdi, [rdi]
	je	.label_98
	lea	rsi, [rsi]
	fstp	st(2)
	lea	rdi, [rdi]
	fstp	st(0)
	mov	rsp, rsp
	fstp	st(0)
	mov	eax, r9d
	lea	rdi, [rdi]
	dec	eax
	fld	dword ptr [dword ptr [rip + label_111]]
	nop	
	fldz	
	nop	
	fldz	
	mov	rsp, rsp
	je	.label_98
	fstp	st(2)
	mov	rsp, rsp
	fstp	st(0)
	fstp	st(0)
	mov	rsp, rsp
	lea	edx, [r9 + 7]
	lea	ecx, [r9 - 2]
	lea	rsi, [rsi]
	fld	dword ptr [dword ptr [rip + label_111]]
	lea	rsi, [rsi]
	fldz	
	lea	rdi, [rdi]
	test	dl, 7
	nop	
	je	.label_223
	fstp	st(0)
	fstp	st(0)
	mov	dl, r9b
	lea	rsi, [rsi]
	add	dl, 7
	movzx	edx, dl
	and	edx, 7
	nop	
	neg	edx
	lea	rsi, [rsi]
	fld	dword ptr [dword ptr [rip + label_111]]
	fldz	
	fxch	st(1)
.label_181:
	fstp	st(1)
	fmul	dword ptr [dword ptr [rip + label_111]]
	lea	rdi, [rdi]
	dec	eax
	inc	edx
	fld	st(0)
	fxch	st(1)
	nop	
	jne	.label_181
.label_223:
	cmp	ecx, 7
	fldz	
	fxch	st(1)
	fxch	st(2)
	fxch	st(1)
	nop	
	jb	.label_98
	nop	
	fstp	st(2)
	fstp	st(1)
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_111]]
	fldz	
	fxch	st(1)
.label_115:
	mov	rbp, rbp
	fstp	st(1)
	nop	
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	lea	rdi, [rdi]
	fmul	st(1), st(0)
	mov	rsp, rsp
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	lea	rsi, [rsi]
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	nop	
	fmul	st(1), st(0)
	lea	rdi, [rdi]
	add	eax, -8
	fldz	
	fxch	st(1)
	mov	rsp, rsp
	jne	.label_115
.label_98:
	lea	rdi, [rdi]
	fstp	st(1)
	lea	rsi, [rsi]
	fstp	st(0)
	lea	rsi, [rsi]
	fmul	st(1)
	mov	rsp, rsp
	fld	xword ptr [word ptr [rip + label_132]]
	mov	rsp, rsp
	fld	st(1)
	fdiv	st(1)
	mov	rsp, rsp
	fnstcw	word ptr [rsp + 0xfe]
	mov	ax, word ptr [rsp + 0xfe]
	nop	
	mov	word ptr [rsp + 0xfe], 0xc7f
	fldcw	word ptr [rsp + 0xfe]
	mov	word ptr [rsp + 0xfe], ax
	fistp	qword ptr [rsp + 0x230]
	fldcw	word ptr [rsp + 0xfe]
	mov	rax, qword ptr [rsp + 0x230]
	mov	qword ptr [rsp + 0xb0], rax
	mov	rsp, rsp
	fild	qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	fmulp	st(1)
	mov	rbp, rbp
	fsub	st(1), st(0)
	fldz	
	lea	rsi, [rsi]
	mov	eax, r15d
	lea	rsi, [rsi]
	cmp	r15d, 4
	mov	rbp, rbp
	ja	.label_133
	nop	
	fstp	st(0)
	nop	
	jmp	qword ptr [word ptr [+ (rax * 8) + label_116]]
.label_715:
	nop	
	fnstcw	word ptr [rsp + 0x276]
	mov	ax, word ptr [rsp + 0x276]
	mov	word ptr [rsp + 0x276], 0xc7f
	fldcw	word ptr [rsp + 0x276]
	lea	rdi, [rdi]
	mov	word ptr [rsp + 0x276], ax
	mov	rsp, rsp
	fld	st(1)
	fistp	qword ptr [rsp + 0xd0]
	fldcw	word ptr [rsp + 0x276]
	nop	
	mov	rcx, qword ptr [rsp + 0xd0]
	mov	qword ptr [rsp + 0xf0], rcx
	fild	qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	jmp	.label_190
.label_137:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.130
	mov	r12d, 4
	jmp	.label_122
.label_182:
	mov	rsp, rsp
	test	r13, r13
	je	.label_154
	cmp	byte ptr [r13], 0
	je	.label_154
	mov	rsp, rsp
	mov	r12d, 5
	cmp	dword ptr [dword ptr [rip + inval_style]],  3
	mov	rbp, rbp
	je	.label_118
	nop	
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	and	al, 1
	mov	rsp, rsp
	sete	al
	movzx	r14d, al
	add	r14d, r14d
	mov	r12d, 5
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.122
	mov	edx, 5
	lea	rdi, [rdi]
	fstp	xword ptr [rsp + 0x19c]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x150], rcx
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	qword ptr [rsp + 0x1b0], rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	rsi, r15
	call	quote_n
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsi, r13
	call	quote_n
	mov	rbp, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, r14d
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x1b0]
	mov	rcx, rbx
	nop	
	mov	r8, rbp
	mov	rbp, rbp
	call	error
	mov	rcx, qword ptr [rsp + 0x150]
	nop	
	jmp	.label_229
.label_186:
	mov	esi, OFFSET FLAT:.str.132
	mov	r12d, 6
	jmp	.label_122
.label_195:
	mov	rbp, rbp
	fstp	xword ptr [rsp + 0x19c]
	mov	al,  byte ptr [byte ptr [rip + conv_exit_code]]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	sete	al
	movzx	ebp, al
	add	ebp, ebp
	nop	
	xor	ebx, ebx
	xor	edi, edi
	mov	rsp, rsp
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_126
	mov	esi, OFFSET FLAT:.str.133
	lea	rdi, [rdi]
	mov	edx, 5
	mov	r14, rcx
	lea	rdi, [rdi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 0x19c]
	lea	rsi, [rsi]
	fstp	xword ptr [rsp]
	mov	rsp, rsp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	rcx, r14
	call	error
	jmp	.label_177
.label_154:
	cmp	r12d, 1
	jne	.label_180
	lea	rdi, [rdi]
	mov	r12d, 1
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + debug]]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_118
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.121
	mov	rbp, rbp
	mov	edx, 5
	fstp	xword ptr [rsp + 0x19c]
	mov	rbp, rbp
	mov	rbx, rcx
	call	dcgettext
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	lea	rdi, [rdi]
	jmp	.label_196
.label_189:
	lea	rsi, [rsi]
	fld	st(2)
	nop	
	fxch	st(2)
	nop	
	fxch	st(1)
	nop	dword ptr [rax]
.label_221:
	inc	ebp
	fdiv	st(2), st(0)
	fxch	st(1)
	lea	rdi, [rdi]
	fucomi	st(2)
	fld	st(2)
	fchs	
	mov	rsp, rsp
	fld	st(3)
	fcmovnbe	st(0), st(1)
	fstp	st(1)
	fucomip	st(2)
	fxch	st(1)
	jae	.label_221
.label_174:
	fstp	st(1)
	fstp	st(0)
	mov	rsp, rsp
	fxch	st(1)
	mov	rsp, rsp
	fstp	xword ptr [rsp + 0x19c]
	lea	rdi, [rdi]
	cvtsi2sd	xmm0, eax
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	lea	rdi, [rdi]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	nop	
	jne	.label_158
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	fld	st(0)
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.144
	mov	al, 1
	mov	rsp, rsp
	movsd	qword ptr [rsp + 0x150], xmm0
	mov	rbp, rbp
	movsd	xmm0, qword ptr [rsp + 0x150]
	mov	ecx, ebp
	lea	rdi, [rdi]
	fstp	xword ptr [rsp + 0x1b0]
	call	__fprintf_chk
	nop	
	fld	xword ptr [rsp + 0x1b0]
	movsd	xmm0, qword ptr [rsp + 0x150]
.label_158:
	mov	rcx,  qword ptr [word ptr [rip + user_precision]]
	mov	rsp, rsp
	cmp	rcx, -1
	je	.label_241
	lea	eax, [rbp + rbp*2]
	cmp	rax, rcx
	mov	rbp, rbp
	cmovge	eax, ecx
	fld1	
	nop	
	test	eax, eax
	mov	rbp, rbp
	je	.label_97
	mov	rsp, rsp
	fstp	st(0)
	fld	dword ptr [dword ptr [rip + label_111]]
	mov	rsp, rsp
	cmp	eax, 1
	je	.label_112
	nop	
	fstp	st(0)
	not	rcx
	lea	rdi, [rdi]
	lea	edx, [rbp + rbp*2]
	not	rdx
	lea	rdi, [rdi]
	cmp	rcx, rdx
	cmovg	edx, ecx
	lea	rdi, [rdi]
	add	edx, 2
	lea	rdi, [rdi]
	fld	dword ptr [dword ptr [rip + label_111]]
	nop	
.label_212:
	mov	rbp, rbp
	fmul	dword ptr [dword ptr [rip + label_111]]
	inc	edx
	mov	rsp, rsp
	jne	.label_212
	mov	rsp, rsp
	jmp	.label_112
.label_241:
	nop	
	fldz	
	fucomip	st(1)
	mov	rbp, rbp
	fld	st(0)
	lea	rdi, [rdi]
	fchs	
	lea	rdi, [rdi]
	fld	st(1)
	fcmovnbe	st(0), st(1)
	fstp	st(1)
	fld1	
	fld	dword ptr [dword ptr [rip + label_111]]
	fucomi	st(2)
	lea	rdi, [rdi]
	fstp	st(2)
	mov	rsp, rsp
	jbe	.label_146
	fstp	st(0)
	mov	eax, 1
.label_112:
	xor	ecx, ecx
	lea	rsi, [rsi]
	jmp	.label_169
.label_146:
	nop	
	fstp	st(1)
.label_97:
	xor	eax, eax
	mov	cl, 1
.label_169:
	fmulp	st(1)
	fld	xword ptr [word ptr [rip + label_132]]
	lea	rdi, [rdi]
	fld	st(1)
	fdiv	st(1)
	mov	rsp, rsp
	fnstcw	word ptr [rsp + 0x136]
	mov	rbp, rbp
	mov	dx, word ptr [rsp + 0x136]
	nop	
	mov	word ptr [rsp + 0x136], 0xc7f
	fldcw	word ptr [rsp + 0x136]
	mov	word ptr [rsp + 0x136], dx
	fistp	qword ptr [rsp + 0x238]
	fldcw	word ptr [rsp + 0x136]
	mov	rdx, qword ptr [rsp + 0x238]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x148], rdx
	mov	rbp, rbp
	fild	qword ptr [rsp + 0x148]
	fmulp	st(1)
	lea	rsi, [rsi]
	fsub	st(1), st(0)
	nop	
	fldz	
	mov	rsp, rsp
	mov	edx, r15d
	nop	
	cmp	r15d, 4
	ja	.label_171
	nop	
	fstp	st(0)
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_220]]
.label_807:
	fnstcw	word ptr [rsp + 0x11e]
	mov	dx, word ptr [rsp + 0x11e]
	lea	rdi, [rdi]
	mov	word ptr [rsp + 0x11e], 0xc7f
	lea	rdi, [rdi]
	fldcw	word ptr [rsp + 0x11e]
	mov	word ptr [rsp + 0x11e], dx
	mov	rbp, rbp
	fld	st(1)
	mov	rsp, rsp
	fistp	qword ptr [rsp + 0x120]
	mov	rbp, rbp
	fldcw	word ptr [rsp + 0x11e]
	mov	rsi, qword ptr [rsp + 0x120]
	mov	qword ptr [rsp + 0x1c0], rsi
	fild	qword ptr [rsp + 0x1c0]
	jmp	.label_164
.label_808:
	fxch	st(1)
	fchs	
	fnstcw	word ptr [rsp + 0x274]
	mov	dx, word ptr [rsp + 0x274]
	mov	word ptr [rsp + 0x274], 0xc7f
	mov	rbp, rbp
	fldcw	word ptr [rsp + 0x274]
	lea	rsi, [rsi]
	mov	word ptr [rsp + 0x274], dx
	lea	rdi, [rdi]
	fld	st(0)
	fistp	qword ptr [rsp + 0x228]
	fldcw	word ptr [rsp + 0x274]
	mov	rsi, qword ptr [rsp + 0x228]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xe8], rsi
	fild	qword ptr [rsp + 0xe8]
	nop	
	jmp	.label_205
.label_809:
	lea	rdi, [rdi]
	fldz	
	fucomip	st(2)
	lea	rdi, [rdi]
	jbe	.label_99
	fxch	st(1)
	mov	rsp, rsp
	fchs	
	fnstcw	word ptr [rsp + 0x1d6]
	lea	rdi, [rdi]
	mov	dx, word ptr [rsp + 0x1d6]
	mov	rsp, rsp
	mov	word ptr [rsp + 0x1d6], 0xc7f
	fldcw	word ptr [rsp + 0x1d6]
	mov	word ptr [rsp + 0x1d6], dx
	fld	st(0)
	fistp	qword ptr [rsp + 0x240]
	mov	rbp, rbp
	fldcw	word ptr [rsp + 0x1d6]
	mov	rsi, qword ptr [rsp + 0x240]
	mov	qword ptr [rsp + 0x160], rsi
	lea	rsi, [rsi]
	fild	qword ptr [rsp + 0x160]
.label_205:
	fxch	st(1)
	lea	rsi, [rsi]
	fucomip	st(1)
	fstp	st(0)
	seta	dl
	movzx	edx, dl
	add	rdx, rsi
	neg	rdx
	jmp	.label_159
.label_810:
	mov	rsp, rsp
	fnstcw	word ptr [rsp + 0x10e]
	mov	dx, word ptr [rsp + 0x10e]
	mov	word ptr [rsp + 0x10e], 0xc7f
	lea	rsi, [rsi]
	fldcw	word ptr [rsp + 0x10e]
	mov	word ptr [rsp + 0x10e], dx
	fxch	st(1)
	nop	
	fistp	qword ptr [rsp + 0x220]
	lea	rdi, [rdi]
	fldcw	word ptr [rsp + 0x10e]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x220]
	jmp	.label_159
.label_811:
	mov	rsp, rsp
	fldz	
	fucomip	st(2)
	seta	dl
	movzx	edx, dl
	shl	rdx, 4
	lea	rdi, [rdi]
	fld	xword ptr [word ptr [rdx + label_175]]
	nop	
	faddp	st(2)
	fnstcw	word ptr [rsp + 0x1a6]
	mov	dx, word ptr [rsp + 0x1a6]
	mov	word ptr [rsp + 0x1a6], 0xc7f
	fldcw	word ptr [rsp + 0x1a6]
	mov	word ptr [rsp + 0x1a6], dx
	fxch	st(1)
	fistp	qword ptr [rsp + 0xb8]
	fldcw	word ptr [rsp + 0x1a6]
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	jmp	.label_159
.label_126:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.134
	nop	
	jmp	.label_227
.label_180:
	xor	r12d, r12d
	jmp	.label_118
.label_716:
	lea	rsi, [rsi]
	fxch	st(1)
	lea	rdi, [rdi]
	fchs	
	fnstcw	word ptr [rsp + 0x16e]
	lea	rsi, [rsi]
	mov	ax, word ptr [rsp + 0x16e]
	lea	rsi, [rsi]
	mov	word ptr [rsp + 0x16e], 0xc7f
	mov	rsp, rsp
	fldcw	word ptr [rsp + 0x16e]
	mov	word ptr [rsp + 0x16e], ax
	fld	st(0)
	fistp	qword ptr [rsp + 0xc8]
	mov	rbp, rbp
	fldcw	word ptr [rsp + 0x16e]
	mov	rcx, qword ptr [rsp + 0xc8]
	nop	
	mov	qword ptr [rsp + 0xc0], rcx
	fild	qword ptr [rsp + 0xc0]
	jmp	.label_131
.label_717:
	mov	rbp, rbp
	fldz	
	nop	
	fucomip	st(2)
	jbe	.label_231
	mov	rbp, rbp
	fxch	st(1)
	lea	rdi, [rdi]
	fchs	
	fnstcw	word ptr [rsp + 0x17e]
	mov	ax, word ptr [rsp + 0x17e]
	mov	word ptr [rsp + 0x17e], 0xc7f
	nop	
	fldcw	word ptr [rsp + 0x17e]
	mov	word ptr [rsp + 0x17e], ax
	mov	rbp, rbp
	fld	st(0)
	mov	rsp, rsp
	fistp	qword ptr [rsp + 0x248]
	mov	rbp, rbp
	fldcw	word ptr [rsp + 0x17e]
	mov	rcx, qword ptr [rsp + 0x248]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x100], rcx
	lea	rdi, [rdi]
	fild	qword ptr [rsp + 0x100]
.label_131:
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rbp, rbp
	neg	rax
	lea	rdi, [rdi]
	jmp	.label_155
.label_718:
	fnstcw	word ptr [rsp + 0x13e]
	lea	rdi, [rdi]
	mov	ax, word ptr [rsp + 0x13e]
	mov	rbp, rbp
	mov	word ptr [rsp + 0x13e], 0xc7f
	lea	rsi, [rsi]
	fldcw	word ptr [rsp + 0x13e]
	mov	word ptr [rsp + 0x13e], ax
	fxch	st(1)
	lea	rsi, [rsi]
	fistp	qword ptr [rsp + 0x1c8]
	lea	rdi, [rdi]
	fldcw	word ptr [rsp + 0x13e]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x1c8]
	lea	rdi, [rdi]
	jmp	.label_155
.label_719:
	lea	rsi, [rsi]
	fldz	
	fucomip	st(2)
	lea	rdi, [rdi]
	seta	al
	nop	
	movzx	eax, al
	mov	rsp, rsp
	shl	rax, 4
	lea	rsi, [rsi]
	fld	xword ptr [word ptr [rax + label_175]]
	faddp	st(2)
	mov	rbp, rbp
	fnstcw	word ptr [rsp + 0xae]
	mov	ax, word ptr [rsp + 0xae]
	mov	rsp, rsp
	mov	word ptr [rsp + 0xae], 0xc7f
	nop	
	fldcw	word ptr [rsp + 0xae]
	lea	rdi, [rdi]
	mov	word ptr [rsp + 0xae], ax
	fxch	st(1)
	fistp	qword ptr [rsp + 0x268]
	nop	
	fldcw	word ptr [rsp + 0xae]
	mov	rax, qword ptr [rsp + 0x268]
	lea	rsi, [rsi]
	jmp	.label_155
.label_99:
	fnstcw	word ptr [rsp + 0xda]
	mov	dx, word ptr [rsp + 0xda]
	mov	word ptr [rsp + 0xda], 0xc7f
	fldcw	word ptr [rsp + 0xda]
	mov	word ptr [rsp + 0xda], dx
	fld	st(1)
	mov	rbp, rbp
	fistp	qword ptr [rsp + 0x1a8]
	lea	rsi, [rsi]
	fldcw	word ptr [rsp + 0xda]
	nop	
	mov	rsi, qword ptr [rsp + 0x1a8]
	nop	
	mov	qword ptr [rsp + 0x250], rsi
	mov	rbp, rbp
	fild	qword ptr [rsp + 0x250]
.label_164:
	fxch	st(2)
	nop	
	fucomip	st(2)
	fstp	st(1)
	seta	dl
	mov	rbp, rbp
	movzx	edx, dl
	add	rdx, rsi
.label_159:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x140], rdx
	fild	qword ptr [rsp + 0x140]
	faddp	st(1)
	lea	rsi, [rsi]
	fldz	
	mov	rbp, rbp
	fldz	
	fxch	st(2)
.label_171:
	lea	rsi, [rsi]
	fstp	st(1)
	fstp	st(1)
	mov	rbp, rbp
	fld1	
	lea	rsi, [rsi]
	test	cl, cl
	lea	rdi, [rdi]
	fldz	
	lea	rdi, [rdi]
	fldz	
	jne	.label_145
	fstp	st(2)
	fstp	st(0)
	fstp	st(0)
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	dec	ecx
	fld	dword ptr [dword ptr [rip + label_111]]
	fldz	
	lea	rsi, [rsi]
	fldz	
	mov	rbp, rbp
	je	.label_145
	lea	rsi, [rsi]
	fstp	st(2)
	fstp	st(0)
	fstp	st(0)
	nop	
	lea	edx, [rax + 7]
	add	eax, -2
	fld	dword ptr [dword ptr [rip + label_111]]
	lea	rdi, [rdi]
	fldz	
	test	dl, 7
	lea	rdi, [rdi]
	je	.label_204
	nop	
	fstp	st(0)
	mov	rsp, rsp
	fstp	st(0)
	mov	rsp, rsp
	and	edx, 7
	neg	edx
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_111]]
	fldz	
	fxch	st(1)
	nop	word ptr [rax + rax]
.label_127:
	lea	rsi, [rsi]
	fstp	st(1)
	mov	rbp, rbp
	fmul	dword ptr [dword ptr [rip + label_111]]
	mov	rbp, rbp
	dec	ecx
	mov	rsp, rsp
	inc	edx
	lea	rdi, [rdi]
	fld	st(0)
	fxch	st(1)
	jne	.label_127
.label_204:
	lea	rsi, [rsi]
	cmp	eax, 7
	nop	
	fldz	
	mov	rsp, rsp
	fxch	st(1)
	fxch	st(2)
	fxch	st(1)
	jb	.label_145
	nop	
	fstp	st(2)
	fstp	st(1)
	fld	dword ptr [dword ptr [rip + label_111]]
	fldz	
	lea	rsi, [rsi]
	fxch	st(1)
	nop	word ptr [rax + rax]
.label_162:
	mov	rbp, rbp
	fstp	st(1)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	lea	rdi, [rdi]
	fmul	st(1), st(0)
	lea	rsi, [rsi]
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	nop	
	add	ecx, -8
	fldz	
	lea	rdi, [rdi]
	fxch	st(1)
	mov	rsp, rsp
	jne	.label_162
.label_145:
	mov	rsp, rsp
	fstp	st(1)
	lea	rdi, [rdi]
	fstp	st(0)
	fdivp	st(1)
	mov	rsp, rsp
	fldz	
	mov	rbp, rbp
	fucomi	st(1)
	fld	st(1)
	fchs	
	mov	rsp, rsp
	fld	st(2)
	fcmovnbe	st(0), st(1)
	fstp	st(1)
	lea	rdi, [rdi]
	movsd	qword ptr [rsp + 0x260], xmm0
	mov	rbp, rbp
	fld	qword ptr [rsp + 0x260]
	lea	rdi, [rdi]
	fxch	st(1)
	mov	rsp, rsp
	fucomip	st(1)
	mov	rbp, rbp
	jae	.label_178
	fstp	st(0)
	jmp	.label_173
.label_178:
	mov	rbp, rbp
	fdivp	st(2)
	inc	ebp
.label_173:
	lea	rsi, [rsi]
	fxch	st(1)
	lea	rdi, [rdi]
	fucomi	st(1)
	mov	rsp, rsp
	jne	.label_194
	lea	rdi, [rdi]
	jp	.label_194
	lea	rdi, [rdi]
	jmp	.label_199
.label_194:
	nop	
	fxch	st(1)
	fucomip	st(1)
	fld	st(0)
	fchs	
	lea	rsi, [rsi]
	fld	st(1)
	nop	
	fcmovnbe	st(0), st(1)
	nop	
	fstp	st(1)
	lea	rsi, [rsi]
	fld	dword ptr [dword ptr [rip + label_111]]
	fucomip	st(1)
	nop	
	fstp	st(0)
	jbe	.label_200
	test	ebp, ebp
	nop	
	setne	bl
	mov	rsp, rsp
	jmp	.label_129
.label_199:
	fstp	st(1)
	lea	rdi, [rdi]
	xor	ebx, ebx
	jmp	.label_129
.label_200:
	xor	ebx, ebx
.label_129:
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_168
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	fld	st(0)
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.145
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	ecx, ebp
	fstp	xword ptr [rsp + 0x150]
	call	__fprintf_chk
	mov	rbp, rbp
	fld	xword ptr [rsp + 0x150]
.label_168:
	mov	byte ptr [r14 + 6], 0
	lea	rsi, [rsi]
	mov	word ptr [r14 + 4], 0x7325
	mov	dword ptr [r14], 0x664c2a2e
	mov	r9,  qword ptr [word ptr [rip + user_precision]]
	cmp	r9, -1
	lea	rdi, [rdi]
	movzx	eax, bl
	mov	rbp, rbp
	cmove	r9d, eax
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.157
	cmp	ebp, 8
	mov	rbp, rbp
	ja	.label_228
	mov	rsp, rsp
	movsxd	rax, ebp
	mov	rax,  qword ptr [word ptr [+ (rax * 8) + label_183]]
.label_228:
	mov	qword ptr [rsp + 0x10], rax
	fld	st(0)
	fstp	xword ptr [rsp]
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x20]
	lea	r8, [rsp + 0x1e0]
	lea	rsi, [rsi]
	mov	esi, 0x7f
	mov	rsp, rsp
	mov	edx, 1
	mov	ecx, 0x80
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	fstp	xword ptr [rsp + 0x150]
	call	__snprintf_chk
	cmp	eax, 0x7f
	jae	.label_130
	lea	rsi, [rsi]
	cmp	r12d, 4
	nop	
	jne	.label_160
	mov	rsp, rsp
	test	ebp, ebp
	je	.label_160
	cdqe	
	mov	edx, 0x7f
	mov	rbp, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0x20]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.147
	mov	rsp, rsp
	mov	ecx, 0x80
	call	__strncat_chk
.label_160:
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	lea	rdi, [rdi]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_93
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x20]
	mov	rbp, rbp
	call	quote
	mov	rcx, rax
	mov	rsp, rsp
	mov	esi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.148
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	call	__fprintf_chk
	jmp	.label_93
.label_231:
	fnstcw	word ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	mov	ax, word ptr [rsp + 0xd8]
	lea	rdi, [rdi]
	mov	word ptr [rsp + 0xd8], 0xc7f
	lea	rdi, [rdi]
	fldcw	word ptr [rsp + 0xd8]
	nop	
	mov	word ptr [rsp + 0xd8], ax
	fld	st(1)
	mov	rbp, rbp
	fistp	qword ptr [rsp + 0x1d8]
	fldcw	word ptr [rsp + 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x1d8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x190], rcx
	nop	
	fild	qword ptr [rsp + 0x190]
.label_190:
	fxch	st(2)
	fucomip	st(2)
	fstp	st(1)
	mov	rbp, rbp
	seta	al
	movzx	eax, al
	nop	
	add	rax, rcx
.label_155:
	nop	
	mov	qword ptr [rsp + 0x170], rax
	fild	qword ptr [rsp + 0x170]
	lea	rdi, [rdi]
	faddp	st(1)
	lea	rsi, [rsi]
	fldz	
	fldz	
	fxch	st(2)
.label_133:
	lea	rdi, [rdi]
	fstp	st(1)
	mov	rbp, rbp
	fstp	st(1)
	mov	rbp, rbp
	fld1	
	test	r9d, r9d
	fldz	
	fldz	
	mov	rbp, rbp
	je	.label_121
	mov	rbp, rbp
	fstp	st(2)
	mov	rbp, rbp
	fstp	st(0)
	fstp	st(0)
	mov	eax, r9d
	lea	rdi, [rdi]
	dec	eax
	fld	dword ptr [dword ptr [rip + label_111]]
	fldz	
	nop	
	fldz	
	mov	rbp, rbp
	je	.label_121
	fstp	st(2)
	mov	rbp, rbp
	fstp	st(0)
	mov	rsp, rsp
	fstp	st(0)
	lea	edx, [r9 + 7]
	lea	ecx, [r9 - 2]
	fld	dword ptr [dword ptr [rip + label_111]]
	lea	rdi, [rdi]
	fldz	
	mov	rsp, rsp
	test	dl, 7
	mov	rbp, rbp
	je	.label_148
	fstp	st(0)
	fstp	st(0)
	mov	dl, r9b
	add	dl, 7
	movzx	edx, dl
	lea	rsi, [rsi]
	and	edx, 7
	nop	
	neg	edx
	fld	dword ptr [dword ptr [rip + label_111]]
	lea	rdi, [rdi]
	fldz	
	fxch	st(1)
.label_216:
	mov	rbp, rbp
	fstp	st(1)
	fmul	dword ptr [dword ptr [rip + label_111]]
	dec	eax
	mov	rsp, rsp
	inc	edx
	mov	rsp, rsp
	fld	st(0)
	mov	rsp, rsp
	fxch	st(1)
	lea	rsi, [rsi]
	jne	.label_216
.label_148:
	cmp	ecx, 7
	nop	
	fldz	
	fxch	st(1)
	fxch	st(2)
	fxch	st(1)
	jb	.label_121
	fstp	st(2)
	nop	
	fstp	st(1)
	mov	rbp, rbp
	fld	dword ptr [dword ptr [rip + label_111]]
	nop	
	fldz	
	fxch	st(1)
.label_134:
	fstp	st(1)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	lea	rdi, [rdi]
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	fmul	st(1), st(0)
	lea	rsi, [rsi]
	fmul	st(1), st(0)
	mov	rsp, rsp
	add	eax, -8
	fldz	
	mov	rbp, rbp
	fxch	st(1)
	jne	.label_134
.label_121:
	mov	rsp, rsp
	fstp	st(1)
	fstp	st(0)
	fxch	st(2)
	fstp	xword ptr [rsp + 0x19c]
	lea	rsi, [rsi]
	fdivrp	st(1)
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	nop	
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_151
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	eax, OFFSET FLAT:.str.140
	mov	edx, OFFSET FLAT:.str.141
	test	r13b, r13b
	lea	rsi, [rsi]
	cmovne	rdx, rax
	lea	rdi, [rdi]
	fld	st(0)
	nop	
	fstp	xword ptr [rsp]
	mov	rbp, rbp
	mov	esi, 1
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, r9d
	mov	rbx, r9
	lea	rdi, [rdi]
	fstp	xword ptr [rsp + 0x150]
	mov	rbp, rbp
	call	__fprintf_chk
	fld	xword ptr [rsp + 0x150]
	mov	r9, rbx
.label_151:
	fld	st(0)
	mov	rbp, rbp
	fstp	xword ptr [rsp + 0x150]
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 4], 0
	mov	dword ptr [r14], 0x664c2a2e
	mov	rsp, rsp
	fstp	xword ptr [rsp]
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x20]
	lea	r8, [rsp + 0x1e0]
	mov	rsp, rsp
	mov	esi, 0x80
	mov	edx, 1
	nop	
	mov	ecx, 0x80
	lea	rdi, [rdi]
	xor	eax, eax
	call	__snprintf_chk
	lea	rdi, [rdi]
	cmp	eax, 0x80
	jae	.label_130
.label_93:
	mov	rbx,  qword ptr [word ptr [rip + suffix]]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_109
	lea	rbp, [rsp + 0x20]
	mov	rdi, rbp
	call	strlen
	mov	edx, 0x7f
	sub	rdx, rax
	lea	rdi, [rdi]
	mov	ecx, 0x80
	nop	
	mov	rdi, rbp
	nop	
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	__strncat_chk
.label_109:
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	nop	
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_117
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x20]
	lea	rsi, [rsi]
	call	quote
	mov	rbp, rbp
	mov	rcx, rax
	fld	xword ptr [rsp + 0x19c]
	fstp	xword ptr [rsp]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.136
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_117:
	nop	
	mov	rbx,  qword ptr [word ptr [rip + padding_width]]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_100
	mov	rbp, rbp
	lea	rdi, [rsp + 0x20]
	call	strlen
	lea	rdi, [rdi]
	cmp	rax, rbx
	nop	
	jae	.label_100
	mov	qword ptr [rsp + 0x1e0], rbx
	mov	rsi,  qword ptr [word ptr [rip + padding_buffer]]
	mov	rdx,  qword ptr [word ptr [rip + padding_buffer_size]]
	mov	rbp, rbp
	movzx	r8d,  byte ptr [byte ptr [rip + padding_alignment]]
	lea	rsi, [rsi]
	and	r8d, 1
	mov	rbp, rbp
	xor	r8d, 1
	lea	rdi, [rsp + 0x20]
	nop	
	lea	rcx, [rsp + 0x1e0]
	mov	r9d, 2
	nop	
	call	mbsalign
	movzx	eax,  byte ptr [byte ptr [rip + dev_debug]]
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_139
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	lea	rdi, [rdi]
	call	quote
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.137
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_139
.label_100:
	lea	rdi, [rsp + 0x20]
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	cmp	qword ptr [word ptr [rip + padding_buffer_size]],  rcx
	mov	rbp, rbp
	jbe	.label_157
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	jmp	.label_192
.label_157:
	add	rax, 2
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + padding_buffer_size]],  rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	xrealloc
	nop	
	mov	rdi, rax
	mov	qword ptr [word ptr [rip + padding_buffer]],  rdi
.label_192:
	mov	rbp, rbp
	lea	rsi, [rsp + 0x20]
	call	strcpy
.label_139:
	mov	bl, 1
.label_177:
	nop	
	fldz	
.label_232:
	fstp	st(0)
	test	bl, bl
	mov	rdi, qword ptr [rsp + 0xe0]
	je	.label_179
	nop	
	mov	rdi,  qword ptr [word ptr [rip + format_str_prefix]]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_198
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
.label_198:
	mov	rdi,  qword ptr [word ptr [rip + padding_buffer]]
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + format_str_suffix]]
	test	rdi, rdi
	mov	rsp, rsp
	je	.label_211
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	lea	rdi, [rdi]
	jmp	.label_211
.label_179:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_211
.label_130:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.143
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	nop	
	fld	xword ptr [rsp + 0x150]
	fstp	xword ptr [rsp]
	mov	rbp, rbp
	mov	edi, 1
	nop	
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
.label_744:
	mov	rsp, rsp
	fstp	st(0)
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405600

	.globl set_fields
	.type set_fields, @function
set_fields:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	dword ptr [rsp + 0x10], esi
	mov	rbx, rdi
	xor	r12d, r12d
	and	esi, 1
	mov	dword ptr [rsp + 0x14], esi
	mov	rbp, rbp
	mov	ebp, 0
	lea	rdi, [rdi]
	je	.label_242
	nop	
	movzx	edx, byte ptr [rbx]
	mov	rbp, rbp
	lea	rax, [rbx + 1]
	mov	ecx, 0x2d
	sub	ecx, edx
	jne	.label_267
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax]
	neg	ecx
.label_267:
	test	ecx, ecx
	sete	bpl
	movzx	r12d, bpl
	cmove	rbx, rax
.label_242:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r13b, bpl
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	jmp	.label_279
	nop	dword ptr [rax]
.label_294:
	nop	
	inc	rbx
	xor	r12d, r12d
.label_279:
	mov	dword ptr [rsp + 0xc], ebp
	lea	rdi, [rdi]
	xor	r14d, r14d
	mov	al, bpl
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xb], al
	jne	.label_289
	jmp	.label_293
	nop	word ptr cs:[rax + rax]
.label_316:
	inc	rbx
	mov	rsp, rsp
	mov	r14b, 1
	lea	rdi, [rdi]
	mov	r13b, 1
.label_293:
	movzx	ebp, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	rbp, 0x2c
	lea	rsi, [rsi]
	je	.label_297
	movzx	eax, bpl
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_302
	call	__ctype_b_loc
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_297
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	and	eax, 1
	lea	rdi, [rdi]
	test	ax, ax
	jne	.label_297
	mov	rbp, rbp
	movsx	eax, bpl
	lea	rdi, [rdi]
	add	eax, -0x30
	cmp	eax, 9
	nop	
	ja	.label_248
	mov	rbp,  qword ptr [word ptr [rip + set_fields.num_start]]
	mov	rsp, rsp
	test	rbp, rbp
	mov	rbp, rbp
	setne	al
	lea	rsi, [rsi]
	test	r14b, al
	nop	
	jne	.label_256
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + set_fields.num_start]],  rbx
	mov	rbp, rbp
	mov	rbp, rbx
.label_256:
	movabs	rax, 0x1999999999999999
	cmp	r12, rax
	mov	rsp, rsp
	ja	.label_262
	lea	rax, [r12 + r12*4]
	lea	rdi, [rdi]
	movsx	rcx, byte ptr [rbx]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, r12
	cmovae	r12, rax
	jb	.label_262
	cmp	r12, -1
	mov	rsp, rsp
	jne	.label_316
	jmp	.label_262
	nop	word ptr cs:[rax + rax]
.label_278:
	inc	rbx
	mov	r14b, 1
	lea	rdi, [rdi]
	mov	r15b, 1
.label_289:
	lea	rdi, [rdi]
	movzx	ebp, byte ptr [rbx]
	nop	
	cmp	rbp, 0x2c
	je	.label_297
	movzx	eax, bpl
	cmp	eax, 0x2d
	je	.label_302
	call	__ctype_b_loc
	test	bpl, bpl
	je	.label_297
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	nop	
	and	eax, 1
	lea	rdi, [rdi]
	test	ax, ax
	mov	rsp, rsp
	jne	.label_297
	movsx	eax, bpl
	add	eax, -0x30
	nop	
	cmp	eax, 9
	lea	rdi, [rdi]
	ja	.label_248
	nop	
	mov	rbp,  qword ptr [word ptr [rip + set_fields.num_start]]
	mov	rsp, rsp
	test	rbp, rbp
	setne	al
	nop	
	test	r14b, al
	lea	rdi, [rdi]
	jne	.label_245
	mov	qword ptr [word ptr [rip + set_fields.num_start]],  rbx
	mov	rbp, rbx
.label_245:
	nop	
	movabs	rax, 0x1999999999999999
	cmp	r12, rax
	ja	.label_262
	lea	rax, [r12 + r12*4]
	lea	rdi, [rdi]
	movsx	rcx, byte ptr [rbx]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, r12
	mov	rsp, rsp
	cmovae	r12, rax
	jb	.label_262
	cmp	r12, -1
	lea	rdi, [rdi]
	jne	.label_278
	jmp	.label_262
	nop	
.label_297:
	mov	ebp, dword ptr [rsp + 0xc]
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xb], 0
	lea	rdi, [rdi]
	jne	.label_283
	mov	rbp, rbp
	test	r12, r12
	je	.label_287
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	mov	rsp, rsp
	cmp	rsi,  qword ptr [word ptr [rip + n_frp_allocated]]
	mov	rsp, rsp
	jne	.label_291
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_295
	mov	rbp, rbp
	movabs	rax, 0x555555555555555
	cmp	rsi, rax
	jae	.label_253
	mov	rax, rsi
	mov	rsp, rsp
	shr	rax, 1
	lea	rsi, [rsi + rax + 1]
	jmp	.label_307
	nop	dword ptr [rax]
.label_283:
	lea	rdi, [rdi]
	or	r13b, r15b
	and	r13b, 1
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp]
	lea	rdi, [rdi]
	cmove	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rsp], rcx
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x14], 0
	lea	rdi, [rdi]
	jne	.label_315
	test	r13b, r13b
	je	.label_259
.label_315:
	test	r15b, 1
	lea	rsi, [rsi]
	jne	.label_263
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	mov	rsp, rsp
	cmp	rcx,  qword ptr [word ptr [rip + n_frp_allocated]]
	jne	.label_268
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_273
	nop	
	movabs	rax, 0x555555555555555
	cmp	rcx, rax
	mov	rsp, rsp
	jae	.label_253
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rsp, rsp
	shr	rax, 1
	nop	
	lea	rsi, [rcx + rax + 1]
	jmp	.label_247
	nop	dword ptr [rax + rax]
.label_302:
	cmp	byte ptr [rsp + 0xb], 0
	jne	.label_292
	mov	al, r13b
	lea	rdi, [rdi]
	and	al, 1
	lea	rsi, [rsi]
	sete	cl
	test	r12, r12
	jne	.label_296
	test	cl, cl
	je	.label_303
.label_296:
	test	al, al
	mov	eax, 1
	cmove	r12, rax
	nop	
	mov	bpl, 1
	mov	qword ptr [rsp], r12
	jmp	.label_294
.label_291:
	nop	
	mov	rax,  qword ptr [word ptr [rip + frp]]
	jmp	.label_310
.label_263:
	nop	
	cmp	r12, qword ptr [rsp]
	lea	rsi, [rsi]
	jb	.label_288
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	cmp	rcx,  qword ptr [word ptr [rip + n_frp_allocated]]
	jne	.label_308
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	test	rdi, rdi
	nop	
	je	.label_249
	movabs	rax, 0x555555555555555
	cmp	rcx, rax
	jae	.label_253
	mov	rsp, rsp
	mov	rax, rcx
	lea	rdi, [rdi]
	shr	rax, 1
	lea	rsi, [rsi]
	lea	rsi, [rcx + rax + 1]
	jmp	.label_257
.label_268:
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	rsp, rsp
	jmp	.label_271
.label_308:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + frp]]
	lea	rsi, [rsi]
	jmp	.label_274
.label_295:
	mov	rsp, rsp
	test	rsi, rsi
	mov	eax, 8
	cmove	rsi, rax
	mov	rbp, rbp
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	lea	rdi, [rdi]
	ja	.label_282
.label_307:
	nop	
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rsi
	shl	rsi, 4
	mov	rsp, rsp
	call	xrealloc
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
.label_310:
	shl	rsi, 4
	lea	rsi, [rsi]
	mov	qword ptr [rax + rsi], r12
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r12
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	inc	rsi
	nop	
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
	jmp	.label_300
.label_273:
	test	rcx, rcx
	nop	
	mov	esi, 8
	nop	
	cmovne	rsi, rcx
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	lea	rsi, [rsi]
	ja	.label_313
.label_247:
	nop	
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
.label_271:
	shl	rcx, 4
	mov	rdx, qword ptr [rsp]
	nop	
	mov	qword ptr [rax + rcx], rdx
	nop	
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	nop	
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], -1
	mov	rbp, rbp
	jmp	.label_265
.label_249:
	test	rcx, rcx
	mov	esi, 8
	lea	rsi, [rsi]
	cmovne	rsi, rcx
	lea	rsi, [rsi]
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_276
.label_257:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rsi
	mov	rbp, rbp
	shl	rsi, 4
	mov	rsp, rsp
	call	xrealloc
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + frp]],  rax
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
.label_274:
	nop	
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp]
	mov	qword ptr [rax + rcx], rdx
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	rbp, rbp
	mov	qword ptr [rax + rcx + 8], r12
.label_265:
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	lea	rsi, [rsi]
	inc	rsi
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
	mov	rsp, rsp
	xor	ebp, ebp
.label_300:
	mov	rbp, rbp
	cmp	byte ptr [rbx], 0
	je	.label_312
	xor	r15d, r15d
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_294
.label_312:
	test	rsi, rsi
	je	.label_243
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:compare_ranges
	mov	rdi, rax
	nop	
	call	qsort
	mov	rbx,  qword ptr [word ptr [rip + n_frp]]
	xor	r14d, r14d
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_298
	nop	word ptr cs:[rax + rax]
.label_285:
	lea	rbp, [r14 + 1]
	mov	rsp, rsp
	jmp	.label_270
	nop	dword ptr [rax]
.label_299:
	lea	rsi, [rsi]
	lea	rsi, [rax + rsi + 8]
	lea	rdi, [rax + rcx]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rax + rcx + 8]
	mov	rsp, rsp
	cmp	rbx, rdx
	nop	
	cmova	rdx, rbx
	mov	qword ptr [rsi], rdx
	mov	rsp, rsp
	lea	rsi, [rax + rcx + 0x10]
	nop	
	mov	rdx,  qword ptr [word ptr [rip + n_frp]]
	lea	rdi, [rdi]
	sub	rdx, rbp
	shl	rdx, 4
	lea	rdi, [rdi]
	add	rdx, -0x10
	mov	rbp, rbp
	call	memmove
	mov	rbx,  qword ptr [word ptr [rip + n_frp]]
	nop	
	dec	rbx
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + n_frp]],  rbx
.label_270:
	cmp	rbp, rbx
	jae	.label_277
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	rcx, rbp
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	shl	rsi, 4
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + rsi + 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rcx], rdx
	mov	rbp, rbp
	jbe	.label_299
.label_277:
	mov	rsp, rsp
	cmp	rbp, rbx
	mov	r14, rbp
	jb	.label_285
	jmp	.label_290
.label_298:
	lea	rsi, [rsi]
	xor	ebx, ebx
.label_290:
	mov	eax, dword ptr [rsp + 0x10]
	test	al, 2
	je	.label_260
	lea	rdi, [rdi]
	mov	r14,  qword ptr [word ptr [rip + frp]]
	mov	qword ptr [word ptr [rip + frp]],  0
	mov	qword ptr [word ptr [rip + n_frp]],  0
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  0
	mov	rsp, rsp
	mov	rbp, qword ptr [r14]
	xor	esi, esi
	cmp	rbp, 2
	mov	rsp, rsp
	jb	.label_250
	dec	rbp
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  8
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 0x80
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	mov	rbp, rbp
	shl	rcx, 4
	mov	qword ptr [rax + rcx], 1
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx + 8], rbp
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	nop	
	inc	rsi
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
	jmp	.label_269
.label_250:
	mov	rsp, rsp
	xor	eax, eax
.label_269:
	cmp	rbx, 2
	jb	.label_301
	mov	rsp, rsp
	lea	rbp, [r14 + 0x10]
	mov	rsp, rsp
	mov	r15d, 1
	nop	word ptr cs:[rax + rax]
.label_304:
	mov	r12, qword ptr [rbp - 8]
	nop	
	mov	r13, qword ptr [rbp]
	inc	r12
	nop	
	cmp	r12, r13
	mov	rbp, rbp
	je	.label_311
	lea	rdi, [rdi]
	cmp	rsi,  qword ptr [word ptr [rip + n_frp_allocated]]
	nop	
	jne	.label_258
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_246
	movabs	rcx, 0x555555555555555
	cmp	rsi, rcx
	jae	.label_253
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	rbp, rbp
	shr	rcx, 1
	lea	rsi, [rsi + rcx + 1]
	jmp	.label_309
.label_246:
	mov	rbp, rbp
	test	rsi, rsi
	mov	ecx, 8
	lea	rdi, [rdi]
	cmove	rsi, rcx
	movabs	rcx, 0x7ffffffffffffff
	cmp	rsi, rcx
	nop	
	ja	.label_266
.label_309:
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rsi
	nop	
	shl	rsi, 4
	mov	rdi, rax
	lea	rsi, [rsi]
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
.label_258:
	mov	rbp, rbp
	dec	r13
	nop	
	shl	rsi, 4
	mov	qword ptr [rax + rsi], r12
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 8], r13
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	inc	rsi
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
.label_311:
	mov	rsp, rsp
	inc	r15
	add	rbp, 0x10
	cmp	r15, rbx
	nop	
	jb	.label_304
.label_301:
	shl	rbx, 4
	mov	rbx, qword ptr [rbx + r14 - 8]
	mov	rsp, rsp
	cmp	rbx, -1
	lea	rsi, [rsi]
	je	.label_305
	nop	
	cmp	rsi,  qword ptr [word ptr [rip + n_frp_allocated]]
	mov	rsp, rsp
	jne	.label_286
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_314
	mov	rbp, rbp
	movabs	rcx, 0x555555555555555
	cmp	rsi, rcx
	jae	.label_253
	mov	rcx, rsi
	shr	rcx, 1
	lea	rdi, [rdi]
	lea	rcx, [rsi + rcx + 1]
	jmp	.label_251
.label_314:
	nop	
	test	rsi, rsi
	mov	rbp, rbp
	mov	ecx, 8
	cmovne	rcx, rsi
	movabs	rdx, 0x7ffffffffffffff
	cmp	rcx, rdx
	mov	rbp, rbp
	ja	.label_255
.label_251:
	nop	
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rcx
	nop	
	shl	rcx, 4
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
.label_286:
	inc	rbx
	lea	rsi, [rsi]
	shl	rsi, 4
	mov	qword ptr [rax + rsi], rbx
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	rsp, rsp
	mov	qword ptr [rax + rcx + 8], -1
	inc	qword ptr [word ptr [rip + n_frp]]
.label_305:
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + n_frp]]
.label_260:
	inc	rbx
	mov	qword ptr [word ptr [rip + n_frp]],  rbx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	lea	rsi, [rsi]
	shl	rbx, 4
	mov	rsi, rbx
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rax - 8], -1
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	rsp, rsp
	mov	qword ptr [rcx + rax - 0x10], -1
	nop	
	add	rsp, 0x18
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	nop	
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_262:
	mov	esi, OFFSET FLAT:.str.7_0
	nop	
	mov	rdi, rbp
	call	strspn
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, rax
	mov	rbp, rbp
	call	xstrndup
	lea	rsi, [rsi]
	mov	rbx, rax
	nop	
	mov	eax, dword ptr [rsp + 0x10]
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	test	al, 4
	lea	rdi, [rdi]
	jne	.label_272
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.9_0
	jmp	.label_281
.label_248:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x10]
	xor	edi, edi
	mov	rsp, rsp
	test	al, 4
	nop	
	jne	.label_284
	mov	esi, OFFSET FLAT:.str.11_0
	jmp	.label_254
.label_272:
	mov	esi, OFFSET FLAT:.str.8_0
.label_281:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	rdi, rbx
	mov	rsp, rsp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
	mov	rsp, rsp
	mov	edi, 1
	call	usage
.label_284:
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.10_0
.label_254:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	quote
	nop	
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbp
	nop	
	call	error
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
.label_287:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x10]
	nop	
	xor	edi, edi
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_261
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.4_0
	jmp	.label_252
.label_259:
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	jmp	.label_252
.label_253:
	call	xalloc_die
.label_292:
	mov	eax, dword ptr [rsp + 0x10]
	xor	edi, edi
	test	al, 4
	mov	rsp, rsp
	jne	.label_275
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rsi, [rsi]
	jmp	.label_280
.label_303:
	mov	eax, dword ptr [rsp + 0x10]
	xor	edi, edi
	test	al, 4
	jne	.label_264
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_0
	jmp	.label_280
.label_288:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_0
	mov	rsp, rsp
	jmp	.label_252
.label_261:
	mov	esi, OFFSET FLAT:.str.3_0
.label_252:
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	jmp	.label_306
.label_275:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_280
.label_264:
	mov	esi, OFFSET FLAT:.str.3_0
.label_280:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
.label_306:
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	call	usage
.label_282:
	call	xalloc_die
.label_313:
	call	xalloc_die
.label_276:
	lea	rsi, [rsi]
	call	xalloc_die
.label_243:
	mov	eax, dword ptr [rsp + 0x10]
	xor	edi, edi
	mov	rbp, rbp
	test	al, 4
	jne	.label_244
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_252
.label_266:
	call	xalloc_die
.label_244:
	mov	esi, OFFSET FLAT:.str.12_0
	jmp	.label_252
.label_255:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406240

	.globl compare_ranges
	.type compare_ranges, @function
compare_ranges:
	mov	eax, dword ptr [rdi]
	cmp	eax, dword ptr [rsi]
	nop	
	setg	al
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rsp, rsp
	mov	eax, 0xffffffff
	cmovge	eax, ecx
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406260
	.globl reset_fields
	.type reset_fields, @function
reset_fields:

	lea	rsi, [rsi]
	push	rax
	nop	
	mov	qword ptr [word ptr [rip + n_frp]],  0
	nop	
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  0
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	call	free
	mov	qword ptr [word ptr [rip + frp]],  0
	pop	rax
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062a0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x4062b0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_323
	lea	rdi, [rdi]
	test	r14, r14
	nop	
	je	.label_325
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	rbp, rbp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_324:
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_317
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, r12
	lea	rsi, [rsi]
	je	.label_320
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_322
	mov	rdi, rax
	mov	rsp, rsp
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, r13
	mov	rbp, rbp
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_317
	mov	al, 1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_317
.label_322:
	mov	qword ptr [rsp + 0x18], rbx
	nop	dword ptr [rax + rax]
.label_317:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	lea	rsi, [rsi]
	add	r14, r13
	test	rbp, rbp
	jne	.label_324
	nop	
	jmp	.label_318
.label_323:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], -1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	nop	
	jmp	.label_318
.label_325:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_321:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rsp, rsp
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_319
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	nop	
	cmp	rax, r12
	je	.label_320
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	rax, -1
	nop	
	cmove	rax, rbx
	mov	qword ptr [rsp + 0x18], rax
	je	.label_319
	lea	rdi, [rdi]
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax + rax]
.label_319:
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	nop	
	jne	.label_321
.label_318:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 0x18]
.label_320:
	lea	rdi, [rdi]
	mov	rax, rbx
	lea	rdi, [rdi]
	add	rsp, 0x28
	nop	
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4064b0
	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:

	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_326
	mov	esi, OFFSET FLAT:.str.1_1
	nop	
	jmp	.label_327
.label_326:
	nop	
	mov	esi, OFFSET FLAT:.str_1
.label_327:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	nop	
	mov	r15, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	nop	
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	jmp	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x406550

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], rbx
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx]
	nop	
	test	rbx, rbx
	je	.label_333
	lea	rdi, [rdi]
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_329:
	test	r15, r15
	mov	rbp, rbp
	je	.label_328
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_332
.label_328:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_331
	nop	dword ptr [rax]
.label_332:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_1
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_331:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	lea	rsi, [rsi]
	test	rbx, rbx
	jne	.label_329
.label_333:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_330
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_330:
	mov	rsp, rsp
	mov	esi, 0xa
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066d0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_336
	mov	qword ptr [rsp + 8], rbp
	mov	rbp, rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_334
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	jmp	.label_335
.label_334:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_1
.label_335:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 8
	mov	rbp, rbp
	mov	rdx, r14
	call	quotearg_n_style
	nop	
	mov	r14, rax
	nop	
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r12
	mov	rdx, r15
	mov	rbp, rbp
	call	argmatch_valid
	mov	rsp, rsp
	call	rbx
	mov	rbp, rbp
	mov	rax, -1
.label_336:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067f0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rcx
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	nop	
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_337
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_338:
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, r14
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r13
	nop	
	je	.label_337
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_338
.label_337:
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406880
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406890
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_342
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_339
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_339
.label_342:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_341
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_339:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_340
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_341:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_340:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_2
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4069a0

	.globl mbsalign
	.type mbsalign, @function
mbsalign:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x48
	mov	ebp, r9d
	nop	
	mov	dword ptr [rsp + 0x1c], r8d
	mov	r15, rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rsp, rsp
	mov	rbx, rdi
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	mov	r14, rax
	test	bpl, 2
	lea	rsi, [rsi]
	jne	.label_356
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 2
	mov	rbp, rbp
	jb	.label_356
	mov	rsp, rsp
	xor	edi, edi
	xor	edx, edx
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	mbstowcs
	xor	edi, edi
	mov	r13, rax
	lea	rdi, [rdi]
	cmp	r13, -1
	je	.label_348
	lea	rdi, [r13*4 + 4]
	call	malloc
	nop	
	mov	rdi, rax
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_348
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x34], ebp
	mov	qword ptr [rsp + 0x38], r15
	lea	rbp, [r13 + 1]
	mov	rsi, rbx
	mov	rdx, rbp
	mov	r15, rdi
	nop	
	call	mbstowcs
	test	rax, rax
	je	.label_362
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x40], r12
	lea	rsi, [rsi]
	mov	dword ptr [r15 + r13*4], 0
	mov	rsp, rsp
	mov	edi, dword ptr [r15]
	nop	
	test	edi, edi
	je	.label_364
	mov	qword ptr [rsp + 0x28], rbx
	mov	rbx, r15
	mov	r13, r15
	nop	
	add	rbx, 4
	nop	
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_357:
	lea	rdi, [rdi]
	call	iswprint
	nop	
	test	eax, eax
	nop	
	jne	.label_354
	lea	rsi, [rsi]
	mov	dword ptr [rbx - 4], 0xfffd
	mov	bpl, 1
.label_354:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbx]
	add	rbx, 4
	mov	rbp, rbp
	test	edi, edi
	jne	.label_357
	jmp	.label_360
.label_356:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x34], ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x28], rbx
	xor	edi, edi
	mov	rbx, r14
.label_343:
	mov	rbp, r15
	mov	rsp, rsp
	mov	r15, qword ptr [rbp]
	cmp	rbx, r15
	cmova	rbx, r15
	cmova	r14, r15
	xor	r13d, r13d
	lea	rsi, [rsi]
	sub	r15, rbx
	mov	rsp, rsp
	cmovbe	r15, r13
	mov	qword ptr [rbp], rbx
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x1c]
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_353
	cmp	eax, 1
	nop	
	jne	.label_350
	mov	rsp, rsp
	mov	r13, r15
	nop	
	xor	r15d, r15d
	jmp	.label_353
.label_350:
	mov	rax, r15
	mov	rsp, rsp
	shr	rax, 1
	and	r15d, 1
	mov	rbp, rbp
	add	r15, rax
	lea	rdi, [rdi]
	mov	r13, r15
	mov	r15, rax
.label_353:
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x34]
	test	cl, 4
	cmovne	r13, rax
	test	cl, 8
	lea	rsi, [rsi]
	cmovne	r15, rax
	lea	rdi, [rdi]
	test	r12, r12
	mov	rsp, rsp
	je	.label_361
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rsp + 8]
	nop	
	lea	rbx, [rax + r12 - 1]
	mov	qword ptr [rsp + 0x40], r12
	mov	rsp, rsp
	cmp	rbx, rax
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	jbe	.label_344
	lea	rdi, [rdi]
	test	r13, r13
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	je	.label_344
	mov	rbp, rbp
	mov	rbp, r13
	neg	rbp
	lea	rdi, [rdi]
	mov	rdx, rax
	sub	rdx, rbx
	lea	rdi, [rdi]
	cmp	rdx, rbp
	mov	rbp, rbp
	cmovb	rdx, rbp
	lea	rdi, [rdi]
	neg	rdx
	nop	
	mov	esi, 0x20
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	mov	r12, rax
	mov	rsp, rsp
	call	memset
	mov	eax, 1
	mov	rsp, rsp
	sub	rax, qword ptr [rsp + 0x40]
	cmp	rax, rbp
	cmovb	rax, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	sub	rdi, rax
	lea	rdi, [rdi]
	mov	rax, r12
.label_344:
	mov	rsp, rsp
	mov	r12, rax
	mov	rsp, rsp
	mov	byte ptr [rdi], 0
	mov	rdx, rbx
	lea	rdi, [rdi]
	sub	rdx, rdi
	nop	
	cmp	r14, rdx
	cmovb	rdx, r14
	lea	rdi, [rdi]
	mov	rcx, -1
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	call	__mempcpy_chk
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	test	r15, r15
	je	.label_359
	mov	rdx, rbp
	mov	rsp, rsp
	sub	rdx, rbx
	jae	.label_359
	mov	rbp, rbp
	mov	rbx, r15
	mov	rsp, rsp
	neg	rbx
	lea	rdi, [rdi]
	cmp	rdx, rbx
	nop	
	cmovb	rdx, rbx
	neg	rdx
	mov	rbp, rbp
	mov	esi, 0x20
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rbp, rbp
	call	memset
	mov	eax, 1
	lea	rsi, [rsi]
	sub	rax, r12
	sub	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	add	rax, rbp
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rax, rbx
	nop	
	sub	rbp, rax
.label_359:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	byte ptr [rbp], 0
.label_361:
	add	r13, r14
	lea	rsi, [rsi]
	add	r13, r15
.label_346:
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	call	free
	mov	rax, r13
	mov	rbp, rbp
	add	rsp, 0x48
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_348:
	mov	qword ptr [rsp + 0x28], rbx
	mov	r13, -1
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	test	bpl, 1
	mov	dword ptr [rsp + 0x34], ebp
	mov	rbx, r14
	jne	.label_343
	lea	rdi, [rdi]
	jmp	.label_346
.label_362:
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rbx
	lea	rdi, [rdi]
	mov	rbx, r14
	mov	rbp, rbp
	mov	rdi, r15
	jmp	.label_345
.label_364:
	mov	qword ptr [rsp + 0x28], rbx
	lea	rdi, [rdi]
	mov	r13, r15
	lea	rdi, [rdi]
	xor	ebp, ebp
.label_360:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x10]
	call	wcswidth
	movsxd	rbx, eax
	test	bpl, 1
	jne	.label_363
	mov	r15, r13
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rbx, qword ptr [rax]
	mov	r13, r14
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x40]
	ja	.label_365
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	jmp	.label_345
.label_363:
	xor	edi, edi
	mov	rbp, rbp
	xor	edx, edx
	mov	rsi, r13
	mov	r15, r13
	call	wcstombs
	mov	r13, rax
	mov	r12, qword ptr [rsp + 0x40]
.label_365:
	inc	r13
	mov	rdi, r13
	lea	rsi, [rsi]
	call	malloc
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_358
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r15
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	edi, edi
	lea	rdi, [rdi]
	je	.label_352
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], r12
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r14, qword ptr [rcx]
	mov	rbp, rax
	nop	
	mov	qword ptr [rsp + 0x20], rax
	nop	dword ptr [rax]
.label_349:
	lea	rdi, [rdi]
	call	wcwidth
	nop	
	cmp	eax, -1
	nop	
	jne	.label_351
	lea	rsi, [rsi]
	mov	dword ptr [rbp], 0xfffd
	mov	eax, 1
.label_351:
	movsxd	rbx, eax
	lea	rdi, [rdi]
	add	rbx, r15
	nop	
	cmp	rbx, r14
	nop	
	ja	.label_355
	mov	rbp, rbp
	mov	edi, dword ptr [rbp + 4]
	add	rbp, 4
	test	edi, edi
	mov	r15, rbx
	lea	rsi, [rsi]
	jne	.label_349
	jmp	.label_347
.label_358:
	mov	r13, -1
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x34]
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	mov	rdi, r15
	mov	r15, qword ptr [rsp + 0x38]
	nop	
	jne	.label_343
	jmp	.label_346
.label_352:
	mov	qword ptr [rsp + 0x40], r12
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rbp, rax
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_347
.label_355:
	lea	rsi, [rsi]
	mov	rbx, r15
.label_347:
	nop	
	mov	dword ptr [rbp], 0
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rdi, rbp
	mov	r14, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r13
	call	wcstombs
	mov	rdi, r14
	mov	r14, rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rbp
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x40]
.label_345:
	mov	r15, qword ptr [rsp + 0x38]
	nop	
	jmp	.label_343
	.section	.text
	.align	16
	#Procedure 0x406f00
	.globl ambsalign
	.type ambsalign, @function
ambsalign:

	lea	rdi, [rdi]
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 4], ecx
	mov	dword ptr [rsp], edx
	mov	r13, rsi
	mov	rbp, rbp
	mov	r12, rdi
	mov	r15, qword ptr [r13]
	xor	ebp, ebp
	mov	rbp, rbp
	mov	rax, r15
	mov	rsp, rsp
	mov	rbx, r15
	nop	
.label_369:
	lea	rsi, [rsi]
	cmp	rax, rbx
	mov	rsp, rsp
	jb	.label_366
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	inc	rbx
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	nop	
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_368
	mov	qword ptr [r13], r15
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	mov	rsp, rsp
	mov	rcx, r13
	mov	r8d, dword ptr [rsp]
	nop	
	mov	r9d, dword ptr [rsp + 4]
	mov	rsp, rsp
	call	mbsalign
	cmp	rax, -1
	mov	rbp, r14
	lea	rsi, [rsi]
	jne	.label_369
	mov	rdi, r14
	jmp	.label_367
.label_368:
	mov	rdi, rbp
.label_367:
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	ebp, ebp
.label_366:
	mov	rax, rbp
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406fe0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_370
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	lea	r14, [rax + 1]
	lea	rdi, [rdi]
	cmove	r14, rbx
	mov	rax, r14
	nop	
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 7
	lea	rsi, [rsi]
	jl	.label_372
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_372
	mov	esi, OFFSET FLAT:.str.2_2
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_371
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_371:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_372:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_370:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_4
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4070d0
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	rsp, rsp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	xmemdup
	nop	
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407120
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407140
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	nop	
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rax], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407160
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	cmovne	rsi, rdi
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	r8d, al
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	rsp, rsp
	mov	edi, r9d
	mov	rsp, rsp
	shr	edi, cl
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	xor	edi, edx
	mov	rbp, rbp
	and	edi, 1
	mov	rsp, rsp
	shl	edi, cl
	lea	rsi, [rsi]
	xor	edi, r9d
	mov	rbp, rbp
	mov	dword ptr [rsi + r8*4 + 8], edi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071d0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	rsp, rsp
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4071f0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rdi, [rdi]
	cmovne	rax, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_373
	test	rdx, rdx
	nop	
	je	.label_373
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_373:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407230
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	nop	
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rdi]
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	r14d, dword ptr [rbx]
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x30]
	mov	rsp, rsp
	add	rbp, 8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4072e0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0xf8
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x24], ebx
	mov	r12d, r8d
	mov	r15, rcx
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	qword ptr [rsp + 0xb8], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x18], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa8], rax
	mov	dl, bl
	mov	rbp, rbp
	shr	dl, 1
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x94], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x5c], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
.label_473:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_491
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_449]]
.label_796:
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_1
	nop	
	mov	esi, r12d
	mov	r14, r10
	nop	
	mov	r13b, r8b
	mov	bl, dl
	mov	rbp, rbp
	call	gettext_quote
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, OFFSET FLAT:.str.12_1
	mov	rsp, rsp
	mov	esi, r12d
	call	gettext_quote
	mov	rsp, rsp
	mov	dl, bl
	mov	rsp, rsp
	mov	edi, r15d
	mov	r8b, r13b
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x98], rax
.label_797:
	nop	
	mov	qword ptr [rsp + 0xd8], r10
	mov	byte ptr [rsp + 0xf7], r8b
	mov	dword ptr [rsp + 0x38], edi
	test	dl, 1
	mov	rbp, rbp
	mov	r15b, dl
	mov	rbp, rbp
	mov	r14d, 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jne	.label_397
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_397
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_427:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_420
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_420:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_427
.label_397:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x98]
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r9d, r12d
	mov	qword ptr [rsp + 0x68], rbx
	mov	r13b, 1
	mov	rbp, rbp
	mov	sil, r15b
	mov	r10, qword ptr [rsp + 0xd8]
	nop	
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	edi, dword ptr [rsp + 0x38]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	jmp	.label_435
.label_789:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_435
.label_792:
	lea	rsi, [rsi]
	mov	al, 1
.label_790:
	lea	rsi, [rsi]
	mov	dl, 1
.label_793:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_457
	mov	rbp, rbp
	mov	cl, al
.label_457:
	mov	al, cl
.label_791:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_462
	test	rbp, rbp
	je	.label_466
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_440
.label_462:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_440
.label_794:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_475
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_480
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_381
.label_795:
	mov	r13b, 1
	mov	rsp, rsp
	mov	r9d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xa0], rax
	mov	sil, 1
	lea	rsi, [rsi]
	jmp	.label_435
.label_466:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_440:
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_435
.label_475:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_381
.label_480:
	nop	
	mov	r14d, 1
.label_381:
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0x68], rax
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	lea	rdi, [rdi]
	mov	r13b, 1
	mov	sil, dl
	nop	word ptr cs:[rax + rax]
.label_435:
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x46], r13b
	cmp	qword ptr [rsp + 0x130], 0
	mov	rbp, rbp
	setne	r12b
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	r15b
	sete	al
	mov	cl, r13b
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rsp + 0x37], cl
	lea	rsi, [rsi]
	sete	byte ptr [rsp + 0xf6]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0x83], bl
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0xa0], 0
	lea	rsi, [rsi]
	setne	cl
	mov	dl, cl
	lea	rsi, [rsi]
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x56], dl
	mov	rbp, rbp
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc6], bl
	sete	dl
	lea	rdi, [rdi]
	and	al, bl
	mov	byte ptr [rsp + 0x47], al
	and	r12b, bl
	mov	byte ptr [rsp + 0x57], r12b
	mov	rsp, rsp
	or	dl, r15b
	mov	byte ptr [rsp + 0xc7], dl
	and	r13b, sil
	mov	rbp, rbp
	and	r13b, cl
	mov	byte ptr [rsp + 0xb7], r13b
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_399
	nop	dword ptr [rax]
.label_394:
	mov	rsp, rsp
	inc	r15
.label_399:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_451
	cmp	r15, r10
	jne	.label_453
	jmp	.label_454
	nop	dword ptr [rax]
.label_451:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_455
.label_453:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_459
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_471
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_471
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	rdi, r11
	mov	r12b, r8b
	mov	r13, r9
	mov	r15, r14
	lea	rsi, [rsi]
	mov	r14, r11
	nop	
	call	strlen
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, r15
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x38]
	mov	r9, r13
	mov	r8b, r12b
	mov	r10, rax
.label_471:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_489
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_402
	nop	dword ptr [rax]
.label_459:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_402
	nop	word ptr cs:[rax + rax]
.label_489:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], r14
	mov	r15d, edi
	lea	rdi, [rdi]
	mov	r13, r9
	mov	rsp, rsp
	mov	r12b, r8b
	lea	rsi, [rsi]
	mov	rbx, r10
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [r11 + rax]
	nop	
	mov	r14, r11
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xa0]
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	sete	al
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x84], eax
	mov	rsp, rsp
	jne	.label_396
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xc6], 0
	mov	rsp, rsp
	mov	r10, rbx
	nop	
	mov	r8b, r12b
	lea	rsi, [rsi]
	mov	r9, r13
	nop	
	mov	edi, r15d
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r15, qword ptr [rsp + 0x88]
	je	.label_402
	jmp	.label_383
.label_396:
	mov	r10, rbx
	mov	r8b, r12b
	mov	r9, r13
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	r11, r14
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x88]
	nop	dword ptr [rax + rax]
.label_402:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_432
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_434]]
.label_696:
	test	r15, r15
	jne	.label_398
	jmp	.label_442
.label_700:
	xor	eax, eax
	cmp	r10, -1
	je	.label_444
	test	r15, r15
	jne	.label_496
	nop	
	cmp	r10, 1
	je	.label_442
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_390
.label_689:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_405
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_383
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_463
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_463
	cmp	r14, rbp
	jae	.label_465
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_465:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_428
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_428:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_479
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_479:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_463:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_487
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_487:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_494
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_500
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_501
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_380
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_380:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_458
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_458:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_390
.label_690:
	mov	bl, 0x62
	nop	
	jmp	.label_410
.label_691:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_391
.label_692:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_410
.label_693:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_410
.label_694:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_391
.label_697:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_418
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_424
	nop	
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, rcx
	mov	rsp, rsp
	test	rdx, rdx
	setne	cl
	lea	rsi, [rsi]
	or	cl, al
	mov	rbp, rbp
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x48], rdx
	mov	rsp, rsp
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_429
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_429:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_443
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_443:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_411
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_411:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_418:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_390
.label_698:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_461
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_398
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_398
	nop	
	jmp	.label_472
.label_699:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_474
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_477
	jmp	.label_481
.label_432:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_483
	mov	rbp, rbp
	mov	rbx, r10
	mov	rbp, r11
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	r11, rbp
	nop	
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r12*2]
	shr	r13d, 0xe
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_498
.label_444:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_378
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_378
.label_442:
	mov	dl, 1
.label_695:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_386
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_390
.label_405:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_394
	jmp	.label_398
.label_474:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_391
.label_477:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_403
.label_391:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_409
.label_410:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_390
	jmp	.label_417
.label_483:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_422
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_422:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_375
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_376:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [r11 + rax]
	mov	rsp, rsp
	mov	rdx, r10
	lea	rsi, [rsi]
	sub	rdx, rax
	lea	rdi, [rsp + 0x58]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -2
	lea	rdi, [rdi]
	je	.label_416
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_412
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_385
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_419
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_492:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_485
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_488
.label_485:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_492
.label_419:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_497
	mov	rbp, rbp
	xor	r13d, r13d
.label_497:
	lea	rbp, [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	add	rax, rbx
	mov	rdi, rbp
	nop	
	mov	rbx, rax
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	je	.label_376
	jmp	.label_384
	nop	
.label_375:
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, r10
	lea	rdi, [rdi]
	sub	rdx, rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_407
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_412
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_416
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_425
	xor	r13d, r13d
.label_425:
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	add	rax, rbp
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_375
	lea	rsi, [rsi]
	jmp	.label_384
.label_378:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_390
.label_461:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_398
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_398
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_398
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_456
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_460
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_400
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_470
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_470:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_476
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_476:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_377
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_377:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_439
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_439:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_390
.label_398:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_390:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_374
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_379
	nop	
	jmp	.label_433
	nop	dword ptr [rax + rax]
.label_374:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_433
.label_379:
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rdi, [rdi]
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	lea	rsi, [rsi]
	mov	cl, r12b
	shl	esi, cl
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
	jne	.label_392
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_401
	nop	word ptr cs:[rax + rax]
.label_433:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_401:
	mov	bl, r12b
	je	.label_403
	jmp	.label_417
.label_392:
	mov	bl, r12b
.label_417:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_383
	cmp	r9d, 2
	jne	.label_421
	mov	al, dil
	and	al, 1
	jne	.label_421
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_426
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_426:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_431
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_431:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_445
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_445:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_421:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_441
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_441:
	mov	rbp, rbp
	inc	r14
	jmp	.label_448
.label_496:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_390
.label_494:
	xor	r13d, r13d
	jmp	.label_390
.label_500:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_390
.label_501:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_390
.label_412:
	xor	r13d, r13d
.label_407:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_384
.label_416:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_467
	lea	rax, [r11 + r15]
.label_484:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_469
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_484
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_384
.label_467:
	xor	r13d, r13d
	jmp	.label_384
.label_469:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_384
.label_385:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_384:
	mov	rbp, rbp
	mov	rbx, r10
.label_498:
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	cl, r13b
	lea	rdi, [rdi]
	or	cl, byte ptr [rsp + 0xf6]
	cmp	rdx, 1
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0xd0]
	mov	edi, dword ptr [rsp + 0x38]
	ja	.label_387
	test	cl, cl
	je	.label_387
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_390
.label_387:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_393
	nop	dword ptr [rax]
.label_382:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_393:
	mov	rsp, rsp
	test	cl, cl
	je	.label_404
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_408
	cmp	r14, rbp
	jae	.label_413
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_413:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_408:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_423
	nop	dword ptr [rax + rax]
.label_404:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_430
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_388
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_388
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_436
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_436:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_493
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_493:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_447
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_447:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_388:
	cmp	r14, rbp
	jae	.label_502
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_502:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_486
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_486:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_438
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_438:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_423:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_403
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_389
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_389
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_452
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_452:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_406
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_406:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_389:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_382
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_382
	nop	word ptr cs:[rax + rax]
.label_403:
	test	dil, 1
	je	.label_395
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_395
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_478
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_478:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_414
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_414:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_395:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_448:
	cmp	r14, rbp
	jae	.label_468
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_468:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_394
.label_456:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_390
.label_460:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_390
	nop	word ptr [rax + rax]
.label_454:
	nop	
	mov	rcx, r15
.label_455:
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	al
	mov	rbp, rbp
	test	r14, r14
	mov	rsp, rsp
	setne	dl
	cmp	byte ptr [rsp + 0xc6], 0
	lea	rsi, [rsi]
	je	.label_437
	mov	rsp, rsp
	or	al, dl
	je	.label_446
.label_437:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], r11
	cmp	r9d, 2
	nop	
	setne	al
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x46]
	nop	
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	je	.label_450
	mov	rsp, rsp
	or	al, dl
	jne	.label_450
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_464
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_450
	mov	rbp, rbp
	test	rbp, rbp
	mov	rbp, rbp
	mov	r12d, r9d
	mov	al, bl
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	dl, sil
	mov	r13, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	je	.label_473
.label_450:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_482
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_482
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_482
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_499:
	cmp	r14, rbp
	jae	.label_495
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_495:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_499
.label_482:
	cmp	r14, rbp
	jae	.label_490
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_490
.label_386:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_383
.label_488:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_383
.label_430:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_383
.label_446:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_383
.label_409:
	nop	
	mov	r9d, 2
.label_383:
	cmp	byte ptr [rsp + 0x37], 0
	mov	r8d, 4
	mov	rbp, rbp
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	nop	
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r11
	nop	
	mov	rcx, r10
.label_415:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_490:
	lea	rdi, [rdi]
	mov	rax, r14
	lea	rdi, [rdi]
	add	rsp, 0xf8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_464:
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x130]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x24]
	jmp	.label_415
.label_424:
	mov	r9d, 2
	jmp	.label_383
.label_481:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_383
.label_472:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_383
.label_400:
	mov	r9d, 5
	nop	
	jmp	.label_383
.label_491:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408780
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rbp, rbp
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r14d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r14, rdx
	lea	rsi, [rsi]
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24], ecx
	mov	rsp, rsp
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	mov	rbp, rbp
	or	ebp, 1
	mov	rbp, rbp
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r15
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r9d, ebp
	nop	
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	nop	
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r12
	mov	r9d, ebp
	lea	rsi, [rsi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4088c0
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], ecx
	test	rbx, rbx
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	lea	rsi, [rsi]
	or	ebp, dword ptr [r12 + 4]
	mov	rbp, rbp
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r9d, ebp
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	r15, [rbx + 1]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	xmalloc
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	r8d, dword ptr [r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x3c]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_503
	mov	qword ptr [rax], rbx
.label_503:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x48
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
	#Procedure 0x408a10
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_504
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_506:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_506
.label_504:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_507
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_508]], OFFSET FLAT:slot0
.label_507:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_505
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_505:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ad0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x408ae0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	nop	
	mov	r12, rcx
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_509
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_514
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_513
.label_514:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_515
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	mov	rsp, rsp
	lea	r15d, [rbx + 1]
	mov	rbp, rbp
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_512
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_512:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rsi, [rsi]
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_513:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	movsxd	r13, ebx
	mov	rsp, rsp
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_510
	nop	
	lea	rax, [rbp + r13]
	lea	rsi, [rsi]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	mov	rbp, rbp
	je	.label_511
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_511:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xmalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_510:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_509:
	lea	rdi, [rdi]
	call	abort
.label_515:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x408d50
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408d60
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	nop	
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d90
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408dc0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	sub	rsp, 0x78
	mov	rbp, rbp
	mov	rax, rdx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	je	.label_516
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x64], xmm2
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x54], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rbp, rbp
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsp, rsp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_516:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408e50
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	mov	rbp, rbp
	sub	rsp, 0x78
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	je	.label_517
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x40], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	nop	
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rsp, rsp
	lea	rax, [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_517:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ef0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	mov	rsp, rsp
	je	.label_518
	mov	dword ptr [rsp + 0x40], edi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x30]
	nop	
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	nop	
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x78
	lea	rsi, [rsi]
	ret	
.label_518:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f80
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_519
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	nop	
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x78
	ret	
.label_519:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x408ff0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_520]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_521]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_522]]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	al, cl
	nop	
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + rax*4 + 8]
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, cl
	not	edi
	mov	rbp, rbp
	and	edi, 1
	lea	rsi, [rsi]
	shl	edi, cl
	xor	edi, esi
	nop	
	mov	dword ptr [rsp + rax*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r8
	nop	
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409090
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_520]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_521]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_522]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	mov	rbp, rbp
	shr	dl, 5
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	lea	rdi, [rdi]
	mov	edi, esi
	shr	edi, cl
	nop	
	not	edi
	mov	rsp, rsp
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409130

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_520]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_521]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_522]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4091a0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_520]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_521]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_522]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rsi, [rsi]
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409210
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	sub	rsp, 0xb8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_523
	nop	
	mov	ecx, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x70], ecx
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rsp]
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x80], esi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x70]
	nop	
	mov	dword ptr [rsp + 0xb4], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	nop	
	movups	xmmword ptr [rsp + 0xa4], xmm2
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x94], xmm1
	movups	xmmword ptr [rsp + 0x84], xmm0
	or	byte ptr [rsp + 0x8f], 4
	lea	rcx, [rsp + 0x80]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0xb8
	mov	rsp, rsp
	ret	
.label_523:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4092f0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_520]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_521]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_522]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_524
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_524
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rax
	mov	rbp, rbp
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	ret	
.label_524:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409380
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_520]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_521]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_522]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_525
	test	rdx, rdx
	je	.label_525
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	nop	
	call	quotearg_n_options
	mov	rbp, rbp
	add	rsp, 0x38
	ret	
.label_525:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409410
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_520]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_521]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_522]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_526
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_526
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rdi]
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
.label_526:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094b0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_520]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_521]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_522]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_527
	test	rsi, rsi
	je	.label_527
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rsp, rsp
	ret	
.label_527:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409550
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409560
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rdx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x409580

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4095a0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	lea	rdi, [rdi]
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4095d0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbp, rbp
	cmp	rax, rbx
	jne	.label_530
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_528
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_529
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_529
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_529
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_529
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_529
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_529
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_530
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_530
.label_528:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_529
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_529
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_529
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_529
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_529
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_529
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_531
.label_529:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_1
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_530:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_531:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_530
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_530
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409740

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	lea	rdi, [rdi]
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_532
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_5
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_534
.label_532:
	mov	edx, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_534:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_2
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, r14
	nop	
	call	fputs_unlocked
	nop	
	cmp	r12, 9
	mov	rbp, rbp
	ja	.label_536
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_537]]
.label_779:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_2
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_536:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_539
.label_780:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_1
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	__fprintf_chk
.label_781:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rsp, 0x38
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	nop	
	pop	r15
	jmp	__fprintf_chk
.label_782:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_541
.label_783:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_540
.label_784:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_538
.label_785:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_2
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_538:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_540:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_541:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_535
.label_787:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_539:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_533
.label_786:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_2
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	nop	
	mov	rdx, qword ptr [r15 + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
.label_533:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_535:
	mov	rbp, rbp
	call	__fprintf_chk
.label_778:
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409b30
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_542:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_542
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b60
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_546:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_543
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_545
	nop	word ptr cs:[rax + rax]
.label_543:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_545:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_544
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_546
.label_544:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bf0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_547
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0xc0], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm5
	movaps	xmmword ptr [rsp + 0xe0], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xf0], xmm7
.label_547:
	mov	qword ptr [rsp + 0x78], r9
	nop	
	mov	qword ptr [rsp + 0x70], r8
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x110], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0x120]
	mov	qword ptr [rsp + 0x108], rax
	mov	dword ptr [rsp + 0x104], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x100], 0x20
	xor	r9d, r9d
	mov	rsp, rsp
	mov	r8d, dword ptr [rsp + 0x100]
	nop	word ptr [rax + rax]
.label_549:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_548
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_550
	nop	dword ptr [rax + rax]
.label_548:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_550:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_551
	inc	r9
	cmp	r9, 0xa
	jb	.label_549
.label_551:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d30
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	16
	#Procedure 0x409dc0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	div	rbx
	cmp	rax, rdi
	jb	.label_552
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_553
	test	rax, rax
	je	.label_552
.label_553:
	nop	
	pop	rbx
	ret	
.label_552:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409e10

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_554
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_555
.label_554:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_555:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e40
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdx
	nop	
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	cmp	rax, rsi
	jb	.label_557
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_556
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_556
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_556:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_558
	test	rax, rax
	je	.label_557
.label_558:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_557:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ec0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_559
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_559
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_559:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_560
	test	rax, rax
	nop	
	je	.label_561
.label_560:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_561:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f10
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_566
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_562
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_568
.label_566:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_565
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_565:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_567
.label_568:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_564
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_564
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_564:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_563
	test	rax, rax
	mov	rbp, rbp
	je	.label_562
.label_563:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_562:
	call	xalloc_die
.label_567:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ff0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_570
	test	rax, rax
	mov	rbp, rbp
	je	.label_569
.label_570:
	pop	rbx
	ret	
.label_569:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40a010
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_574
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_575
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_573
	call	free
	xor	eax, eax
	jmp	.label_571
.label_574:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_572
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_573:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_571
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_572
.label_571:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_572:
	mov	rbp, rbp
	call	xalloc_die
.label_575:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a0a0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	nop	
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_576
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_577
.label_576:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_577:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a100
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	jb	.label_578
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_578
	pop	rcx
	ret	
.label_578:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a130

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_580
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_579
.label_580:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_579:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a190

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	inc	rbx
	lea	rsi, [rsi]
	je	.label_581
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_582
.label_581:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	nop	
	pop	r15
	nop	
	ret	
.label_582:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a1f0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a240

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	mov	rbp, rbp
	call	__strndup
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_583
	pop	rcx
	lea	rsi, [rsi]
	ret	
.label_583:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a260

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r14, r8
	mov	qword ptr [rsp + 8], rcx
	mov	ebp, edx
	mov	rbp, rbp
	mov	r13, rdi
	nop	
	cmp	ebp, 0x25
	jae	.label_611
	test	rsi, rsi
	lea	rsi, [rsi]
	lea	r15, [rsp + 0x10]
	nop	
	cmovne	r15, rsi
	mov	rsp, rsp
	call	__errno_location
	mov	rbx, rax
	mov	rsp, rsp
	mov	dword ptr [rbx], 0
	mov	rdi, r13
	mov	rsi, r15
	mov	edx, ebp
	call	strtol
	nop	
	mov	r12, rax
	mov	rcx, qword ptr [r15]
	cmp	rcx, r13
	nop	
	je	.label_631
	mov	eax, dword ptr [rbx]
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_633
	lea	rdi, [rdi]
	mov	ebp, 4
	lea	rdi, [rdi]
	cmp	eax, 0x22
	mov	rsp, rsp
	jne	.label_593
	lea	rdi, [rdi]
	mov	ebp, 1
.label_633:
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_585
	mov	rbp, rbp
	mov	edx, ebp
	jmp	.label_589
.label_631:
	nop	
	mov	ebp, 4
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_593
	mov	rbx, rcx
	movsx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_593
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strchr
	lea	rsi, [rsi]
	xor	edx, edx
	mov	r12d, 1
	mov	rsp, rsp
	test	rax, rax
	mov	rcx, rbx
	je	.label_593
.label_589:
	lea	rsi, [rsi]
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_610
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24], edx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rcx
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, r13d
	call	strchr
	mov	rbp, rbp
	test	rax, rax
	je	.label_602
	mov	r8d, 1
	mov	r11d, 0x400
	nop	
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	ja	.label_597
	movabs	rcx, 0x814400308945
	lea	rdi, [rdi]
	bt	rcx, rax
	jae	.label_597
	mov	rbp, rbp
	mov	esi, 0x30
	mov	rsp, rsp
	mov	rdi, r14
	nop	
	call	strchr
	mov	r8d, 1
	lea	rsi, [rsi]
	mov	r11d, 0x400
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_597
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rax + 1]
	mov	r8d, 1
	mov	r11d, 0x400
	lea	rdi, [rdi]
	cmp	eax, 0x42
	je	.label_584
	cmp	eax, 0x44
	lea	rdi, [rdi]
	je	.label_584
	cmp	eax, 0x69
	mov	rbp, rbp
	jne	.label_597
	mov	rax, qword ptr [rsp + 0x18]
	movzx	eax, byte ptr [rax + 2]
	mov	r8d, 3
	lea	rdi, [rdi]
	cmp	eax, 0x42
	lea	rdi, [rdi]
	je	.label_600
	lea	rdi, [rdi]
	mov	r8d, 1
.label_600:
	mov	r11d, 0x400
	nop	
	jmp	.label_597
.label_585:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [rax], r12
	jmp	.label_593
.label_610:
	nop	
	mov	r13, r12
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_614
.label_584:
	lea	rsi, [rsi]
	mov	r8d, 2
	lea	rsi, [rsi]
	mov	r11d, 0x3e8
.label_597:
	mov	rbp, rbp
	movabs	r10, 0x7fffffffffffffff
	cmp	r13d, 0x59
	jg	.label_621
	lea	rdi, [rdi]
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_624
	jmp	qword ptr [word ptr [+ (rax * 8) + label_627]]
.label_733:
	movabs	rax, 0xffe0000000000000
	mov	rbp, rbp
	cmp	r12, rax
	lea	rsi, [rsi]
	jl	.label_594
	mov	r13, r12
	shl	r13, 0xa
	movabs	rax, 0x1fffffffffffff
	nop	
	jmp	.label_598
.label_621:
	cmp	r13d, 0x73
	jg	.label_638
	lea	eax, [r13 - 0x62]
	cmp	eax, 0xb
	lea	rsi, [rsi]
	ja	.label_640
	xor	ebx, ebx
	mov	rsp, rsp
	mov	r13, r12
	jmp	qword ptr [word ptr [+ (rax * 8) + label_587]]
.label_705:
	movabs	rax, 0xffc0000000000000
	cmp	r12, rax
	mov	rsp, rsp
	jl	.label_594
	lea	rdi, [rdi]
	mov	r13, r12
	lea	rsi, [rsi]
	shl	r13, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_598
.label_624:
	cmp	r13d, 0x54
	je	.label_606
	lea	rdi, [rdi]
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_602
	nop	
	lea	r13, [r10 + 1]
	mov	rax, r13
	lea	rdi, [rdi]
	cqo	
	idiv	r11
	mov	rbp, rbp
	mov	r9, rax
	lea	rdi, [rdi]
	cmp	r12, r9
	nop	
	mov	ecx, 1
	mov	rsp, rsp
	mov	rbx, r13
	mov	edi, 1
	lea	rdi, [rdi]
	jl	.label_612
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	mov	rbx, r12
	lea	rsi, [rsi]
	imul	rbx, r11
	lea	rsi, [rsi]
	cmp	rax, r12
	mov	rsp, rsp
	setl	al
	cmovl	rbx, r10
	mov	rbp, rbp
	movzx	edi, al
.label_612:
	cmp	rbx, r9
	mov	rbp, rbp
	mov	rsi, r13
	jl	.label_630
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r10
	div	r11
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rsp, rsp
	imul	rsi, r11
	nop	
	cmp	rax, rbx
	setl	al
	lea	rsi, [rsi]
	cmovl	rsi, r10
	mov	rsp, rsp
	movzx	ecx, al
.label_630:
	or	ecx, edi
	mov	rbp, rbp
	cmp	rsi, r9
	lea	rsi, [rsi]
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rbp, r13
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	jl	.label_641
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	div	r11
	mov	rbp, rsi
	lea	rsi, [rsi]
	imul	rbp, r11
	lea	rdi, [rdi]
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_641:
	or	edi, ecx
	cmp	rbp, r9
	mov	rsi, r13
	mov	rbp, rbp
	jl	.label_605
	xor	edx, edx
	nop	
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	mov	rsi, rbp
	imul	rsi, r11
	lea	rdi, [rdi]
	cmp	rax, rbp
	setl	al
	nop	
	cmovl	rsi, r10
	movzx	ebx, al
.label_605:
	mov	rsp, rsp
	or	ebx, edi
	lea	rdi, [rdi]
	cmp	rsi, r9
	mov	edi, 1
	mov	rbp, rbp
	mov	rbp, r13
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rsi, [rsi]
	jl	.label_616
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r10
	nop	
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	lea	rdi, [rdi]
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	lea	rdi, [rdi]
	movzx	ecx, al
.label_616:
	or	ecx, ebx
	cmp	rbp, r9
	lea	rdi, [rdi]
	mov	rsi, r13
	jl	.label_629
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rbp, rbp
	mov	rsi, rbp
	imul	rsi, r11
	nop	
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	mov	rsp, rsp
	movzx	edi, al
.label_629:
	mov	rsp, rsp
	or	edi, ecx
	mov	rsp, rsp
	cmp	rsi, r9
	mov	ebx, 1
	mov	rbp, r13
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	rsp, rsp
	jl	.label_639
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r10
	div	r11
	mov	rsp, rsp
	mov	rbp, rsi
	imul	rbp, r11
	mov	rbp, rbp
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	movzx	ecx, al
.label_639:
	or	ecx, edi
	cmp	rbp, r9
	mov	rbp, rbp
	jl	.label_601
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rbp
	mov	rsp, rsp
	cmp	rax, rbp
	lea	rsi, [rsi]
	setl	al
	mov	rbp, rbp
	cmovl	r11, r10
	mov	rbp, rbp
	movzx	ebx, al
	mov	r13, r11
.label_601:
	nop	
	or	ebx, ecx
	jmp	.label_591
.label_638:
	mov	rbp, rbp
	cmp	r13d, 0x74
	je	.label_606
	cmp	r13d, 0x77
	jne	.label_602
	nop	
	movabs	rax, 0xc000000000000000
	nop	
	cmp	r12, rax
	nop	
	jge	.label_618
.label_594:
	lea	rsi, [rsi]
	inc	r10
	lea	rdi, [rdi]
	mov	ebx, 1
	mov	r13, r10
	lea	rsi, [rsi]
	jmp	.label_591
.label_706:
	lea	r13, [r10 + 1]
	mov	rax, r13
	lea	rsi, [rsi]
	cqo	
	mov	rbp, rbp
	idiv	r11
	mov	rdi, rax
	cmp	r12, rdi
	lea	rsi, [rsi]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rbp, r13
	mov	rsp, rsp
	mov	ebx, 1
	mov	rsp, rsp
	jl	.label_628
	xor	edx, edx
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	lea	rdi, [rdi]
	mov	rbp, r12
	imul	rbp, r11
	mov	rbp, rbp
	cmp	rax, r12
	mov	rsp, rsp
	setl	al
	lea	rdi, [rdi]
	cmovl	rbp, r10
	mov	rbp, rbp
	movzx	ebx, al
.label_628:
	cmp	rbp, rdi
	lea	rdi, [rdi]
	mov	rsi, r13
	jl	.label_625
	xor	edx, edx
	mov	rax, r10
	div	r11
	lea	rsi, [rsi]
	mov	rsi, rbp
	lea	rdi, [rdi]
	imul	rsi, r11
	mov	rbp, rbp
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_625:
	mov	rsp, rsp
	or	ecx, ebx
	cmp	rsi, rdi
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_607
	xor	edx, edx
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	r13, r11
.label_607:
	or	ebx, ecx
	jmp	.label_591
.label_707:
	mov	rsp, rsp
	lea	r13, [r10 + 1]
	mov	rbp, rbp
	mov	rax, r13
	cqo	
	idiv	r11
	cmp	r12, rax
	lea	rdi, [rdi]
	mov	ebx, 1
	jl	.label_591
	mov	rsp, rsp
	xor	edx, edx
	nop	
	mov	rax, r10
	div	r11
	mov	rsp, rsp
	imul	r11, r12
	lea	rdi, [rdi]
	cmp	rax, r12
	lea	rsi, [rsi]
	setl	al
	lea	rdi, [rdi]
	cmovl	r11, r10
	movzx	ebx, al
	mov	rbp, rbp
	mov	r13, r11
	jmp	.label_591
.label_708:
	mov	rsp, rsp
	lea	r13, [r10 + 1]
	mov	rsp, rsp
	mov	rax, r13
	nop	
	cqo	
	idiv	r11
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	cmp	r12, rdi
	lea	rdi, [rdi]
	mov	ebx, 1
	nop	
	mov	rsi, r13
	mov	rsp, rsp
	mov	ecx, 1
	jl	.label_634
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r10
	nop	
	div	r11
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rbp, rbp
	imul	rsi, r11
	cmp	rax, r12
	lea	rsi, [rsi]
	setl	al
	cmovl	rsi, r10
	mov	rbp, rbp
	movzx	ecx, al
.label_634:
	lea	rdi, [rdi]
	cmp	rsi, rdi
	jl	.label_603
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	mov	rsp, rsp
	setl	al
	mov	rsp, rsp
	cmovl	r11, r10
	movzx	ebx, al
	lea	rsi, [rsi]
	mov	r13, r11
.label_603:
	or	ebx, ecx
	mov	rsp, rsp
	jmp	.label_591
.label_606:
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	lea	rdi, [rdi]
	mov	r9, rax
	nop	
	cmp	r12, r9
	lea	rsi, [rsi]
	mov	ecx, 1
	nop	
	mov	rbx, r13
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	jl	.label_617
	xor	edx, edx
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	lea	rdi, [rdi]
	mov	rbx, r12
	nop	
	imul	rbx, r11
	cmp	rax, r12
	setl	al
	nop	
	cmovl	rbx, r10
	nop	
	movzx	edi, al
.label_617:
	mov	rbp, rbp
	cmp	rbx, r9
	mov	rsi, r13
	jl	.label_632
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	mov	rsi, rbx
	mov	rsp, rsp
	imul	rsi, r11
	cmp	rax, rbx
	mov	rsp, rsp
	setl	al
	mov	rsp, rsp
	cmovl	rsi, r10
	lea	rsi, [rsi]
	movzx	ecx, al
.label_632:
	mov	rsp, rsp
	or	ecx, edi
	lea	rdi, [rdi]
	cmp	rsi, r9
	mov	ebx, 1
	lea	rsi, [rsi]
	mov	rbp, r13
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_588
	xor	edx, edx
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	mov	rbp, rsi
	lea	rdi, [rdi]
	imul	rbp, r11
	cmp	rax, rsi
	setl	al
	cmovl	rbp, r10
	nop	
	movzx	edi, al
.label_588:
	lea	rdi, [rdi]
	or	edi, ecx
	mov	rbp, rbp
	cmp	rbp, r9
	mov	rbp, rbp
	jl	.label_608
	nop	
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	div	r11
	imul	r11, rbp
	mov	rbp, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	setl	al
	cmovl	r11, r10
	lea	rsi, [rsi]
	movzx	ebx, al
	mov	rsp, rsp
	mov	r13, r11
.label_608:
	or	ebx, edi
	jmp	.label_591
.label_640:
	nop	
	cmp	r13d, 0x5a
	lea	rdi, [rdi]
	jne	.label_602
	mov	rbp, rbp
	lea	r13, [r10 + 1]
	mov	rax, r13
	cqo	
	idiv	r11
	lea	rsi, [rsi]
	mov	r9, rax
	lea	rdi, [rdi]
	cmp	r12, r9
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	rbx, r13
	mov	edi, 1
	jl	.label_623
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r10
	div	r11
	lea	rsi, [rsi]
	mov	rbx, r12
	lea	rsi, [rsi]
	imul	rbx, r11
	mov	rsp, rsp
	cmp	rax, r12
	mov	rsp, rsp
	setl	al
	nop	
	cmovl	rbx, r10
	lea	rsi, [rsi]
	movzx	edi, al
.label_623:
	cmp	rbx, r9
	mov	rsi, r13
	lea	rsi, [rsi]
	jl	.label_642
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r10
	div	r11
	mov	rsi, rbx
	imul	rsi, r11
	lea	rdi, [rdi]
	cmp	rax, rbx
	setl	al
	lea	rsi, [rsi]
	cmovl	rsi, r10
	mov	rsp, rsp
	movzx	ecx, al
.label_642:
	or	ecx, edi
	cmp	rsi, r9
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rbp, r13
	nop	
	mov	edi, 1
	mov	rsp, rsp
	jl	.label_592
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r10
	lea	rsi, [rsi]
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	nop	
	cmp	rax, rsi
	mov	rsp, rsp
	setl	al
	cmovl	rbp, r10
	movzx	edi, al
.label_592:
	or	edi, ecx
	mov	rbp, rbp
	cmp	rbp, r9
	nop	
	mov	rsi, r13
	jl	.label_615
	xor	edx, edx
	mov	rax, r10
	lea	rsi, [rsi]
	div	r11
	mov	rsp, rsp
	mov	rsi, rbp
	imul	rsi, r11
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rdi, [rdi]
	setl	al
	nop	
	cmovl	rsi, r10
	lea	rsi, [rsi]
	movzx	ebx, al
.label_615:
	lea	rsi, [rsi]
	or	ebx, edi
	mov	rbp, rbp
	cmp	rsi, r9
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, r13
	mov	rbp, rbp
	mov	ecx, 1
	jl	.label_626
	mov	rbp, rbp
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r10
	mov	rbp, rbp
	div	r11
	mov	rbp, rsi
	imul	rbp, r11
	cmp	rax, rsi
	nop	
	setl	al
	mov	rsp, rsp
	cmovl	rbp, r10
	lea	rsi, [rsi]
	movzx	ecx, al
.label_626:
	mov	rsp, rsp
	or	ecx, ebx
	lea	rdi, [rdi]
	cmp	rbp, r9
	nop	
	mov	rsi, r13
	nop	
	jl	.label_637
	xor	edx, edx
	nop	
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	lea	rsi, [rsi]
	mov	rsi, rbp
	imul	rsi, r11
	cmp	rax, rbp
	setl	al
	cmovl	rsi, r10
	movzx	edi, al
.label_637:
	or	edi, ecx
	mov	rbp, rbp
	cmp	rsi, r9
	mov	ebx, 1
	jl	.label_599
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r10
	div	r11
	imul	r11, rsi
	cmp	rax, rsi
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	nop	
	mov	r13, r11
.label_599:
	mov	rbp, rbp
	or	ebx, edi
	jmp	.label_591
.label_602:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x24]
	nop	
	or	eax, 2
	mov	rbp, rbp
	mov	ebp, eax
	lea	rdi, [rdi]
	jmp	.label_593
.label_734:
	lea	rsi, [rsi]
	lea	r13, [r10 + 1]
	mov	rsp, rsp
	mov	rax, r13
	nop	
	cqo	
	lea	rdi, [rdi]
	idiv	r11
	mov	r9, rax
	nop	
	cmp	r12, r9
	mov	ebx, 1
	mov	rbp, rbp
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_619
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, r10
	div	r11
	mov	rsi, r12
	imul	rsi, r11
	cmp	rax, r12
	mov	rbp, rbp
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_619:
	mov	rsp, rsp
	cmp	rsi, r9
	mov	rdi, r13
	mov	rbp, rbp
	jl	.label_635
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	lea	rdi, [rdi]
	movzx	ebx, al
.label_635:
	or	ebx, ecx
	lea	rdi, [rdi]
	cmp	rdi, r9
	lea	rdi, [rdi]
	mov	r14d, 1
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rbp, rbp
	mov	ecx, 1
	jl	.label_590
	mov	rsp, rsp
	xor	edx, edx
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	mov	rbp, rbp
	mov	rsi, rdi
	lea	rsi, [rsi]
	imul	rsi, r11
	lea	rsi, [rsi]
	cmp	rax, rdi
	mov	rsp, rsp
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_590:
	or	ecx, ebx
	cmp	rsi, r9
	mov	rdi, r13
	jl	.label_604
	xor	edx, edx
	mov	rax, r10
	mov	rsp, rsp
	div	r11
	lea	rdi, [rdi]
	mov	rdi, rsi
	lea	rsi, [rsi]
	imul	rdi, r11
	mov	rsp, rsp
	cmp	rax, rsi
	mov	rbp, rbp
	setl	al
	cmovl	rdi, r10
	movzx	r14d, al
.label_604:
	or	r14d, ecx
	lea	rsi, [rsi]
	cmp	rdi, r9
	lea	rdi, [rdi]
	mov	ebx, 1
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	ecx, 1
	jl	.label_586
	nop	
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	lea	rsi, [rsi]
	div	r11
	lea	rdi, [rdi]
	mov	rsi, rdi
	mov	rsp, rsp
	imul	rsi, r11
	cmp	rax, rdi
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_586:
	lea	rsi, [rsi]
	or	ecx, r14d
	mov	rsp, rsp
	cmp	rsi, r9
	jl	.label_609
	xor	edx, edx
	mov	rax, r10
	nop	
	div	r11
	nop	
	imul	r11, rsi
	mov	rsp, rsp
	cmp	rax, rsi
	lea	rdi, [rdi]
	setl	al
	cmovl	r11, r10
	movzx	ebx, al
	mov	rbp, rbp
	mov	r13, r11
.label_609:
	or	ebx, ecx
	lea	rsi, [rsi]
	jmp	.label_591
.label_735:
	nop	
	lea	r13, [r10 + 1]
	mov	rbp, rbp
	mov	rax, r13
	cqo	
	nop	
	idiv	r11
	mov	r9, rax
	lea	rsi, [rsi]
	cmp	r12, r9
	lea	rsi, [rsi]
	mov	ecx, 1
	mov	rbx, r13
	mov	edi, 1
	jl	.label_595
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, r10
	div	r11
	lea	rsi, [rsi]
	mov	rbx, r12
	imul	rbx, r11
	cmp	rax, r12
	mov	rsp, rsp
	setl	al
	cmovl	rbx, r10
	nop	
	movzx	edi, al
.label_595:
	cmp	rbx, r9
	nop	
	mov	rsi, r13
	mov	rbp, rbp
	jl	.label_613
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r10
	mov	rbp, rbp
	div	r11
	mov	rsi, rbx
	nop	
	imul	rsi, r11
	cmp	rax, rbx
	setl	al
	cmovl	rsi, r10
	movzx	ecx, al
.label_613:
	lea	rdi, [rdi]
	or	ecx, edi
	lea	rdi, [rdi]
	cmp	rsi, r9
	nop	
	mov	r14d, 1
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	ebx, 1
	jl	.label_622
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, r10
	lea	rsi, [rsi]
	div	r11
	mov	rdi, rsi
	imul	rdi, r11
	cmp	rax, rsi
	setl	al
	cmovl	rdi, r10
	mov	rbp, rbp
	movzx	ebx, al
.label_622:
	or	ebx, ecx
	mov	rbp, rbp
	cmp	rdi, r9
	lea	rdi, [rdi]
	mov	rcx, r13
	mov	rbp, rbp
	jl	.label_636
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, r10
	lea	rdi, [rdi]
	div	r11
	lea	rdi, [rdi]
	mov	rcx, rdi
	mov	rsp, rsp
	imul	rcx, r11
	lea	rdi, [rdi]
	cmp	rax, rdi
	mov	rsp, rsp
	setl	al
	nop	
	cmovl	rcx, r10
	movzx	r14d, al
.label_636:
	nop	
	or	r14d, ebx
	mov	rsp, rsp
	cmp	rcx, r9
	lea	rsi, [rsi]
	mov	ebx, 1
	lea	rdi, [rdi]
	jl	.label_596
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r10
	mov	rbp, rbp
	div	r11
	imul	r11, rcx
	cmp	rax, rcx
	lea	rsi, [rsi]
	setl	al
	nop	
	cmovl	r11, r10
	nop	
	movzx	ebx, al
	mov	r13, r11
.label_596:
	nop	
	or	ebx, r14d
	mov	rsp, rsp
	jmp	.label_591
.label_618:
	lea	r13, [r12 + r12]
	movabs	rax, 0x3fffffffffffffff
.label_598:
	cmp	r12, rax
	lea	rsi, [rsi]
	setg	al
	lea	rdi, [rdi]
	cmovg	r13, r10
	lea	rdi, [rdi]
	movzx	ebx, al
.label_591:
	or	ebx, dword ptr [rsp + 0x24]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rax, [rcx + r8]
	mov	qword ptr [r15], rax
	lea	rdi, [rdi]
	cmp	byte ptr [rcx + r8], 0
	je	.label_620
	or	ebx, 2
.label_620:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, ebx
.label_614:
	mov	rsp, rsp
	mov	qword ptr [rax], r13
	mov	ebp, edx
.label_593:
	nop	
	mov	eax, ebp
	add	rsp, 0x28
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_611:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtol
	lea	rsi, [rsi]
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b000

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r14, r8
	nop	
	mov	r12d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_643
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	dword ptr [rax]
.label_660:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_660
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsp + 8]
	cmovne	rsi, rbp
	nop	
	movzx	eax, al
	mov	rbp, rbp
	mov	r13d, 4
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_646
	mov	dword ptr [rsp + 4], 0
	xor	ecx, ecx
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	edx, r12d
	call	__strtoul_internal
	nop	
	mov	rcx, rbp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	r12, qword ptr [rcx]
	nop	
	cmp	r12, rbx
	nop	
	je	.label_656
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rsp, rsp
	je	.label_661
	mov	rsp, rsp
	cmp	eax, 0x22
	jne	.label_646
	mov	dword ptr [rsp + 4], 1
.label_661:
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_667
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	lea	rsi, [rsi]
	jmp	.label_646
.label_656:
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_646
	movsx	esi, byte ptr [rbx]
	lea	rsi, [rsi]
	test	esi, esi
	lea	rsi, [rsi]
	je	.label_646
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rbx, rcx
	call	strchr
	mov	rsp, rsp
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_646
.label_667:
	lea	rdi, [rdi]
	movsx	r13d, byte ptr [r12]
	mov	rbp, rbp
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_663
	lea	rdi, [rdi]
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rbp, rbp
	mov	esi, r13d
	call	strchr
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_650
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_645
	nop	
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_645
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	mov	rbp, rbp
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	test	rax, rax
	mov	rsp, rsp
	je	.label_645
	movsx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	mov	ecx, 1
	nop	
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_644
	cmp	eax, 0x44
	nop	
	je	.label_644
	cmp	eax, 0x69
	jne	.label_645
	movzx	eax, byte ptr [r12 + 2]
	mov	rbp, rbp
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_648
	lea	rdi, [rdi]
	mov	ecx, 1
.label_648:
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_645
.label_663:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_654
.label_644:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_645:
	cmp	r13d, 0x59
	lea	rdi, [rdi]
	jg	.label_662
	mov	rsp, rsp
	lea	eax, [r13 - 0x42]
	nop	
	cmp	eax, 0xe
	nop	
	ja	.label_664
	jmp	qword ptr [word ptr [+ (rax * 8) + label_666]]
.label_720:
	mov	rax, rbp
	mov	rsp, rsp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_668
.label_662:
	lea	rsi, [rsi]
	cmp	r13d, 0x73
	mov	rsp, rsp
	jg	.label_669
	mov	rbp, rbp
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	mov	rbp, rbp
	ja	.label_649
	mov	rsp, rsp
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_653]]
.label_755:
	mov	rax, rbp
	shr	rax, 0x37
	lea	rsi, [rsi]
	setne	dl
	nop	
	shl	rbp, 9
.label_668:
	cmp	rax, 1
	nop	
	sbb	rax, rax
	lea	rdi, [rdi]
	not	rax
	or	rbp, rax
	lea	rdi, [rdi]
	movzx	eax, dl
	nop	
	jmp	.label_647
.label_664:
	cmp	r13d, 0x54
	nop	
	je	.label_651
	cmp	r13d, 0x59
	mov	rsp, rsp
	jne	.label_650
	nop	
	mov	rdi, -1
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	lea	rdi, [rdi]
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rdi, [rdi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	lea	rsi, [rsi]
	imul	rbx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	r11b, r11b
	lea	rdi, [rdi]
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	r14b, r14b
	mov	rbp, rbx
	lea	rdi, [rdi]
	imul	rbp, rsi
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rsi, [rsi]
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	mov	rsp, rsp
	or	dl, r11b
	lea	rsi, [rsi]
	and	dl, 1
	lea	rdi, [rdi]
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_652
.label_669:
	cmp	r13d, 0x74
	je	.label_651
	mov	rbp, rbp
	cmp	r13d, 0x77
	mov	rbp, rbp
	jne	.label_650
	lea	rdi, [rdi]
	lea	rax, [rbp + rbp]
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rsi, [rsi]
	mov	rdx, -1
	nop	
	cmovns	rdx, rax
	lea	rdi, [rdi]
	shr	rbp, 0x3f
	lea	rsi, [rsi]
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_647
.label_722:
	nop	
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	lea	rdi, [rdi]
	imul	rsi, rbp
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_665
.label_723:
	mov	rdi, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	mov	rbp, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rsi, rdi
	nop	
	sbb	eax, eax
	mov	rsp, rsp
	and	eax, 1
	nop	
	jmp	.label_657
.label_724:
	mov	rbp, rbp
	mov	rdi, -1
	lea	rdi, [rdi]
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rbx, rdi
	nop	
	cmp	rax, rbx
	nop	
	sbb	dl, dl
	lea	rsi, [rsi]
	imul	rsi, rbx
	nop	
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_655
.label_651:
	mov	rsp, rsp
	mov	r9, -1
	mov	rax, -1
	mov	rbp, rbp
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	cmovb	rbx, r9
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rsp, rsp
	mov	rdi, rbp
	imul	rdi, rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	mov	rbp, rbp
	sbb	bl, bl
	imul	rsi, rdi
	lea	rdi, [rdi]
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_659
.label_649:
	cmp	r13d, 0x5a
	jne	.label_650
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	lea	rsi, [rsi]
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
	nop	
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	lea	rdi, [rdi]
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	nop	
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rsp, rsp
	cmp	rax, rbx
	lea	rdi, [rdi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	nop	
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	mov	rbp, rbp
	imul	rsi, rbp
	cmp	rax, rbp
	mov	rsp, rsp
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	mov	rbp, rbp
	or	dl, r14b
	lea	rsi, [rsi]
	or	dl, bl
.label_652:
	movzx	eax, dl
	mov	rsp, rsp
	and	eax, 1
	lea	rsi, [rsi]
	jmp	.label_657
.label_650:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	lea	rdi, [rdi]
	mov	r13d, eax
	jmp	.label_646
.label_721:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbx, rbp
	mov	rsp, rsp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	mov	rsp, rsp
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r9b, r9b
	nop	
	mov	rbx, rbp
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	mov	rsp, rsp
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
	lea	rdi, [rdi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rbx, rdi
	mov	rbp, rbp
	cmp	rax, rbx
	sbb	bpl, bpl
	lea	rsi, [rsi]
	imul	rsi, rbx
	cmp	rax, rbx
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	lea	rdi, [rdi]
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	nop	
	jmp	.label_655
.label_725:
	mov	rdi, -1
	mov	rax, -1
	nop	
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r9b, r9b
	mov	rbp, rbp
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	lea	rsi, [rsi]
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rbx
	nop	
	cmovb	rbp, rdi
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	lea	rsi, [rsi]
	cmp	rax, rbp
	nop	
	cmovb	rsi, rdi
	or	dl, r8b
	lea	rdi, [rdi]
	or	dl, r9b
.label_659:
	or	dl, r10b
.label_665:
	lea	rsi, [rsi]
	or	dl, bl
.label_655:
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
.label_657:
	mov	rsp, rsp
	mov	rbp, rsi
.label_647:
	lea	rsi, [rsi]
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + rcx], 0
	je	.label_658
	or	eax, 2
.label_658:
	lea	rdi, [rdi]
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 0x10]
.label_654:
	mov	qword ptr [rax], rbp
.label_646:
	nop	
	mov	eax, r13d
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_643:
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_7
	mov	edx, 0x54
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b8c0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_670
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_671
	lea	rdi, [rdi]
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	cmp	rax, rdi
	nop	
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_671
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
.label_670:
	mov	ecx, 1
.label_671:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b930

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	mov	rsp, rsp
	je	.label_672
	nop	
	cmp	r15, -2
	jb	.label_672
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_672
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_672:
	mov	rbp, rbp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b9c0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	lea	rsi, [rsi]
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b9e0

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	__fpending
	nop	
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	nop	
	jne	.label_673
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_674
	test	cl, cl
	mov	rsp, rsp
	jne	.label_674
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_674
.label_673:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_674
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_674:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ba70

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbx
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_676
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_675
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_677
.label_675:
	nop	
	mov	esi, OFFSET FLAT:.str.1_8
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_676
.label_677:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_676:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40bac0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	test	rax, rax
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_9
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_678
	nop	
	mov	rax, rcx
.label_678:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bb00

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_679
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_681
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_679
.label_681:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_679
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_680
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_680:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_679:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x40bbb0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_682
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_682
	test	byte ptr [rbx + 1], 1
	je	.label_682
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_682:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section .text
	.align	16
	#Procedure 0x40bbf0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jne	.label_683
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_683
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_684
.label_683:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	mov	edx, r14d
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	fseeko
.label_684:
	mov	rdi, rbx
	call	fileno
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_685
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_685:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
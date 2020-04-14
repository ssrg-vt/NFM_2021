	.section	.text
	.align	32
	#Procedure 0x401780

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
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
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
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.12
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:.str.43
	xor	eax, eax
	call	__printf_chk
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a40

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r15, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.14
	mov	esi, OFFSET FLAT:.str.15
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.14
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [dword ptr [rip + operating_mode]],  0
	mov	byte ptr [byte ptr [rip + suppress_non_delimited]],  0
	mov	byte ptr [byte ptr [rip + delim]],  0
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	xor	r12d, r12d
	jmp	.label_9
.label_24:
	mov	byte ptr [byte ptr [rip + complement]],  1
	nop	word ptr cs:[rax + rax]
.label_9:
	mov	edx, OFFSET FLAT:.str.16
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x6d
	jg	.label_32
	cmp	eax, 0x61
	jle	.label_22
	lea	ecx, [rax - 0x62]
	cmp	ecx, 2
	jb	.label_34
	cmp	eax, 0x64
	je	.label_35
	cmp	eax, 0x66
	jne	.label_20
	cmp	dword ptr [dword ptr [rip + operating_mode]],  0
	jne	.label_33
	mov	dword ptr [dword ptr [rip + operating_mode]],  2
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_9
	nop	
.label_32:
	cmp	eax, 0x79
	jle	.label_19
	cmp	eax, 0x7a
	je	.label_21
	cmp	eax, 0x80
	je	.label_23
	cmp	eax, 0x81
	je	.label_24
	jmp	.label_20
.label_19:
	cmp	eax, 0x6e
	je	.label_9
	cmp	eax, 0x73
	jne	.label_20
	mov	byte ptr [byte ptr [rip + suppress_non_delimited]],  1
	jmp	.label_9
.label_34:
	cmp	dword ptr [dword ptr [rip + operating_mode]],  0
	jne	.label_33
	mov	dword ptr [dword ptr [rip + operating_mode]],  1
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_9
.label_21:
	mov	byte ptr [byte ptr [rip + line_delim]],  1
	jmp	.label_9
.label_23:
	mov	byte ptr [byte ptr [rip + output_delimiter_specified]],  1
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	cmp	byte ptr [rbx], 0
	mov	eax, 1
	je	.label_13
	mov	rdi, rbx
	call	strlen
.label_13:
	mov	qword ptr [word ptr [rip + output_delimiter_length]],  rax
	mov	rdi, rbx
	call	xstrdup
	mov	qword ptr [word ptr [rip + output_delimiter_string]],  rax
	jmp	.label_9
.label_35:
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	mov	al, byte ptr [rcx]
	test	al, al
	je	.label_27
	cmp	byte ptr [rcx + 1], 0
	jne	.label_31
.label_27:
	mov	byte ptr [byte ptr [rip + delim]],  al
	mov	r12b, 1
	jmp	.label_9
.label_22:
	cmp	eax, -1
	jne	.label_36
	mov	eax,  dword ptr [dword ptr [rip + operating_mode]]
	test	eax, eax
	je	.label_28
	test	r12b, r12b
	je	.label_10
	cmp	eax, 2
	jne	.label_12
.label_10:
	cmp	eax, 2
	je	.label_15
	test	byte ptr [byte ptr [rip + suppress_non_delimited]],  1
	jne	.label_14
.label_15:
	cmp	eax, 2
	setne	al
	movzx	eax, al
	shl	eax, 2
	movzx	ecx,  byte ptr [byte ptr [rip + complement]]
	and	ecx, 1
	lea	esi, [rax + rcx*2]
	mov	rdi, r14
	call	set_fields
	test	r12b, r12b
	jne	.label_26
	mov	byte ptr [byte ptr [rip + delim]],  9
.label_26:
	cmp	qword ptr [word ptr [rip + output_delimiter_string]],  0
	jne	.label_30
	mov	al,  byte ptr [byte ptr [rip + delim]]
	mov	byte ptr [byte ptr [rip + main.dummy]],  al
	mov	byte ptr [byte ptr [rip + label_37]],  0
	mov	qword ptr [word ptr [rip + output_delimiter_string]], OFFSET FLAT:main.dummy
	mov	qword ptr [word ptr [rip + output_delimiter_length]],  1
.label_30:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	jne	.label_18
	mov	edi, OFFSET FLAT:.str.26
	call	cut_file
	mov	bl, al
	jmp	.label_16
.label_18:
	mov	bl, 1
	jge	.label_16
	nop	word ptr cs:[rax + rax]
.label_25:
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	call	cut_file
	and	bl, al
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, ebp
	jl	.label_25
.label_16:
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_29
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_29
	call	__errno_location
	mov	esi, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.26
	xor	eax, eax
	call	error
.label_29:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_36:
	cmp	eax, 0xffffff7d
	je	.label_17
	cmp	eax, 0xffffff7e
	jne	.label_20
	xor	edi, edi
	call	usage
.label_17:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.22
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.20
	mov	r9d, OFFSET FLAT:.str.21
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_20:
	mov	edi, 1
	call	usage
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	jmp	.label_11
.label_12:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	jmp	.label_11
.label_14:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	jmp	.label_11
.label_33:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
	jmp	.label_11
.label_31:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
.label_11:
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401dd0

	.globl cut_file
	.type cut_file, @function
cut_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_90
	cmp	byte ptr [rbx + 1], 0
	je	.label_92
.label_90:
	mov	esi, OFFSET FLAT:.str.54
	mov	rdi, rbx
	call	fopen
	mov	r15, rax
	test	r15, r15
	jne	.label_96
	jmp	.label_40
.label_92:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	r15,  qword ptr [word ptr [rip + stdin]]
.label_96:
	mov	esi, 2
	mov	rdi, r15
	call	fadvise
	mov	eax,  dword ptr [dword ptr [rip + operating_mode]]
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	mov	qword ptr [word ptr [rip + current_rp]],  rcx
	cmp	eax, 1
	jne	.label_86
	mov	qword ptr [rsp + 0x10], rbx
	xor	r14d, r14d
	jmp	.label_58
	nop	dword ptr [rax + rax]
.label_74:
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	qword ptr [word ptr [rip + current_rp]],  rax
.label_58:
	xor	ebx, ebx
	xor	r12d, r12d
	jmp	.label_41
.label_51:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bpl
	mov	r12b, r13b
	nop	word ptr cs:[rax + rax]
.label_41:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_72
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_50:
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	esi, 0xa
	cmovne	esi, r14d
	cmp	ebp, esi
	je	.label_78
	cmp	ebp, -1
	je	.label_82
	inc	rbx
	mov	rax,  qword ptr [word ptr [rip + current_rp]]
	cmp	rbx, qword ptr [rax + 8]
	jbe	.label_84
	add	rax, 0x10
	mov	qword ptr [word ptr [rip + current_rp]],  rax
.label_84:
	mov	rax, qword ptr [rax]
	cmp	rax, rbx
	ja	.label_41
	movzx	ecx,  byte ptr [byte ptr [rip + output_delimiter_specified]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_88
	mov	r13b, 1
	test	r12b, 1
	je	.label_47
	cmp	rax, rbx
	jne	.label_47
	mov	rdi,  qword ptr [word ptr [rip + output_delimiter_string]]
	mov	rdx,  qword ptr [word ptr [rip + output_delimiter_length]]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_47
.label_72:
	mov	rdi, r15
	call	__uflow
	mov	ebp, eax
	jmp	.label_50
.label_88:
	mov	r13b, r12b
.label_47:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_51
	movzx	esi, bpl
	call	__overflow
	mov	r12b, r13b
	jmp	.label_41
	nop	word ptr cs:[rax + rax]
.label_78:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_64
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bpl
	jmp	.label_74
.label_64:
	movzx	esi, bpl
	call	__overflow
	jmp	.label_74
.label_86:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_76
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	edi, byte ptr [rax]
.label_68:
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsi, r15
	call	ungetc
	mov	rax,  qword ptr [word ptr [rip + current_rp]]
	cmp	qword ptr [rax], 1
	seta	al
	xor	al,  byte ptr [byte ptr [rip + suppress_non_delimited]]
	xor	al, 1
	mov	byte ptr [rsp + 0x1f], al
	xor	r13d, r13d
	mov	ecx, 1
	xor	r12d, r12d
	xor	ebp, ebp
	jmp	.label_57
.label_82:
	test	rbx, rbx
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_38
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_93
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
	jmp	.label_38
.label_87:
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	qword ptr [word ptr [rip + current_rp]],  rax
	xor	r12d, r12d
	mov	ecx, 1
	nop	word ptr [rax + rax]
.label_57:
	cmp	rcx, 1
	setne	al
	or	al, byte ptr [rsp + 0x1f]
	test	al, 1
	je	.label_49
	mov	rax,  qword ptr [word ptr [rip + current_rp]]
	jmp	.label_69
	nop	dword ptr [rax + rax]
.label_42:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_49:
	movzx	r8d,  byte ptr [byte ptr [rip + delim]]
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	r9d, 0xa
	cmovne	r9d, r13d
	mov	qword ptr [rsp], r15
	mov	edi, OFFSET FLAT:field_1_buffer
	mov	esi, OFFSET FLAT:field_1_bufsize
	xor	edx, edx
	mov	rcx, -1
	call	getndelim2
	mov	rbx, rax
	test	rbx, rbx
	js	.label_77
	test	rbx, rbx
	je	.label_81
	mov	rdi,  qword ptr [word ptr [rip + field_1_buffer]]
	movzx	eax, byte ptr [rdi + rbx - 1]
	movzx	ecx,  byte ptr [byte ptr [rip + delim]]
	cmp	eax, ecx
	je	.label_80
	movzx	eax,  byte ptr [byte ptr [rip + suppress_non_delimited]]
	and	eax, 1
	cmp	eax, 1
	je	.label_49
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	mov	rax,  qword ptr [word ptr [rip + field_1_buffer]]
	movsx	eax, byte ptr [rax + rbx - 1]
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	and	cl, 1
	mov	esi, 0xa
	cmovne	esi, r13d
	cmp	eax, esi
	je	.label_49
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_42
	call	__overflow
	jmp	.label_49
	nop	word ptr cs:[rax + rax]
.label_80:
	mov	rax,  qword ptr [word ptr [rip + current_rp]]
	cmp	qword ptr [rax], 1
	ja	.label_52
	dec	rbx
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	movzx	eax,  byte ptr [byte ptr [rip + delim]]
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	and	cl, 1
	mov	ecx, 0xa
	cmovne	ecx, r13d
	cmp	eax, ecx
	jne	.label_60
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_59
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	edi, byte ptr [rax]
.label_65:
	mov	rsi, r15
	call	ungetc
.label_60:
	mov	r12b, 1
.label_52:
	mov	rax,  qword ptr [word ptr [rip + current_rp]]
	xor	ebp, ebp
	cmp	qword ptr [rax + 8], 1
	ja	.label_71
	add	rax, 0x10
	mov	qword ptr [word ptr [rip + current_rp]],  rax
.label_71:
	mov	ecx, 2
.label_69:
	cmp	qword ptr [rax], rcx
	jbe	.label_56
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_54
	nop	word ptr cs:[rax + rax]
.label_56:
	test	r12b, 1
	jne	.label_85
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_63
.label_94:
	mov	rdi, r15
	call	__uflow
	mov	ebp, eax
	jmp	.label_91
	nop	dword ptr [rax]
.label_54:
	mov	r14d, ebp
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_94
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebp, byte ptr [rax]
.label_91:
	movzx	eax,  byte ptr [byte ptr [rip + delim]]
	cmp	ebp, eax
	je	.label_43
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	and	cl, 1
	mov	ecx, 0xa
	cmovne	ecx, r13d
	cmp	ebp, -1
	je	.label_43
	cmp	ebp, ecx
	jne	.label_54
	jmp	.label_43
.label_85:
	mov	qword ptr [rsp + 0x20], rcx
	mov	rdi,  qword ptr [word ptr [rip + output_delimiter_string]]
	mov	rdx,  qword ptr [word ptr [rip + output_delimiter_length]]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_63
	nop	word ptr cs:[rax + rax]
.label_62:
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
	mov	ebp, ebx
.label_63:
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_70
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	ebx, byte ptr [rax]
.label_89:
	movzx	eax,  byte ptr [byte ptr [rip + delim]]
	mov	r12b, 1
	cmp	ebx, eax
	je	.label_66
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	and	cl, 1
	mov	ecx, 0xa
	cmovne	ecx, r13d
	cmp	ebx, -1
	je	.label_66
	cmp	ebx, ecx
	je	.label_66
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jb	.label_62
	movzx	esi, bl
	call	__overflow
	mov	ebp, ebx
	jmp	.label_63
.label_70:
	mov	rdi, r15
	call	__uflow
	mov	ebx, eax
	jmp	.label_89
	nop	word ptr cs:[rax + rax]
.label_66:
	mov	r14d, ebp
	mov	ebp, ebx
.label_43:
	movzx	ecx, al
	mov	dl,  byte ptr [byte ptr [rip + line_delim]]
	and	dl, 1
	mov	edx, 0xa
	cmovne	edx, r13d
	cmp	ebp, ecx
	jne	.label_45
	cmp	ecx, edx
	jne	.label_45
	mov	rax, qword ptr [r15 + 8]
	cmp	rax, qword ptr [r15 + 0x10]
	jae	.label_46
	lea	rcx, [rax + 1]
	mov	qword ptr [r15 + 8], rcx
	movzx	edi, byte ptr [rax]
.label_95:
	mov	rsi, r15
	call	ungetc
	mov	al,  byte ptr [byte ptr [rip + delim]]
.label_45:
	movzx	eax, al
	cmp	ebp, eax
	jne	.label_55
	mov	rcx, qword ptr [rsp + 0x20]
	inc	rcx
	mov	rax,  qword ptr [word ptr [rip + current_rp]]
	cmp	rcx, qword ptr [rax + 8]
	jbe	.label_57
	add	rax, 0x10
	mov	qword ptr [word ptr [rip + current_rp]],  rax
	jmp	.label_57
	nop	dword ptr [rax]
.label_55:
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	and	cl, 1
	mov	esi, 0xa
	cmovne	esi, r13d
	cmp	ebp, -1
	sete	bl
	je	.label_67
	cmp	ebp, esi
	mov	rcx, qword ptr [rsp + 0x20]
	jne	.label_57
	jmp	.label_39
.label_67:
	mov	rcx, qword ptr [rsp + 0x20]
.label_39:
	test	r12b, 1
	jne	.label_79
	cmp	rcx, 1
	jne	.label_79
	test	byte ptr [byte ptr [rip + suppress_non_delimited]],  1
	jne	.label_53
.label_79:
	cmp	r14d, esi
	jne	.label_83
	cmp	ebp, esi
	je	.label_83
	cmp	eax, r14d
	jne	.label_53
.label_83:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_73
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_53:
	test	bl, bl
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_87
	jmp	.label_38
.label_46:
	mov	rdi, r15
	call	__uflow
	mov	edi, eax
	cmp	edi, -1
	jne	.label_95
	movzx	eax,  byte ptr [byte ptr [rip + delim]]
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	and	cl, 1
	mov	esi, 0xa
	cmovne	esi, r13d
	mov	ebp, 0xffffffff
	mov	bl, 1
	mov	rcx, qword ptr [rsp + 0x20]
	jmp	.label_39
.label_73:
	call	__overflow
	jmp	.label_53
.label_59:
	mov	rdi, r15
	call	__uflow
	mov	edi, eax
	cmp	edi, -1
	jne	.label_65
	jmp	.label_52
.label_77:
	mov	rdi,  qword ptr [word ptr [rip + field_1_buffer]]
	call	free
	mov	qword ptr [word ptr [rip + field_1_buffer]],  0
	test	byte ptr [r15], 0x30
	mov	rbx, qword ptr [rsp + 0x10]
	je	.label_61
.label_38:
	test	byte ptr [r15], 0x20
	jne	.label_40
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_48
	cmp	byte ptr [rbx + 1], 0
	je	.label_44
.label_48:
	mov	rdi, r15
	call	rpl_fclose
	mov	bpl, 1
	cmp	eax, -1
	jne	.label_75
.label_40:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_75:
	mov	al, bpl
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_44:
	mov	rdi, r15
	call	clearerr_unlocked
	mov	bpl, 1
	jmp	.label_75
.label_76:
	mov	rdi, r15
	call	__uflow
	mov	edi, eax
	cmp	edi, -1
	jne	.label_68
	jmp	.label_38
.label_93:
	call	__overflow
	jmp	.label_38
.label_81:
	mov	edi, OFFSET FLAT:.str.56
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 0x149
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cut_fields
	call	__assert_fail
.label_61:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402530

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
	je	.label_106
	mov	dword ptr [rsp + 0xc], esi
	movzx	edx, byte ptr [rbx]
	lea	rax, [rbx + 1]
	mov	ecx, 0x2d
	sub	ecx, edx
	jne	.label_122
	movzx	ecx, byte ptr [rax]
	neg	ecx
.label_122:
	test	ecx, ecx
	sete	bpl
	movzx	r14d, bpl
	cmove	rbx, rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	dword ptr [rsp + 0x20], 0
	mov	al, bpl
	mov	dword ptr [rsp + 0x24], eax
	jmp	.label_136
.label_106:
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	dword ptr [rsp + 0xc], esi
	mov	dword ptr [rsp + 0x20], 0
	mov	dword ptr [rsp + 0x24], 0
	jmp	.label_136
	nop	word ptr cs:[rax + rax]
.label_129:
	mov	dword ptr [rsp + 0x24], edx
	inc	rbx
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x18], r15
.label_136:
	mov	dword ptr [rsp + 0x14], ebp
	mov	r13b, bpl
	and	r13b, 1
	xor	r15d, r15d
	movabs	r12, 0x1999999999999999
	jmp	.label_159
	nop	dword ptr [rax]
.label_140:
	inc	rbx
	mov	r15b, 1
.label_159:
	movzx	ebp, byte ptr [rbx]
	cmp	rbp, 0x2c
	je	.label_103
	movzx	eax, bpl
	cmp	eax, 0x2d
	je	.label_97
	call	__ctype_b_loc
	test	bpl, bpl
	je	.label_103
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	and	eax, 1
	test	ax, ax
	jne	.label_103
	movsx	eax, bpl
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_113
	mov	rbp,  qword ptr [word ptr [rip + set_fields.num_start]]
	test	rbp, rbp
	setne	al
	test	r15b, al
	jne	.label_135
	mov	qword ptr [word ptr [rip + set_fields.num_start]],  rbx
	mov	rbp, rbx
.label_135:
	mov	al, 1
	test	r13b, r13b
	je	.label_125
	mov	dword ptr [rsp + 0x20], eax
	jmp	.label_124
	nop	word ptr [rax + rax]
.label_125:
	mov	dword ptr [rsp + 0x24], eax
.label_124:
	cmp	r14, r12
	ja	.label_130
	lea	rax, [r14 + r14*4]
	movsx	rcx, byte ptr [rbx]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, r14
	cmovae	r14, rax
	jb	.label_130
	cmp	r14, -1
	jne	.label_140
	jmp	.label_130
	nop	word ptr cs:[rax + rax]
.label_103:
	test	r13b, r13b
	jne	.label_151
	test	r14, r14
	je	.label_152
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	cmp	rcx,  qword ptr [word ptr [rip + n_frp_allocated]]
	mov	ebp, dword ptr [rsp + 0x14]
	jne	.label_155
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	test	rdi, rdi
	je	.label_161
	movabs	rax, 0x555555555555555
	cmp	rcx, rax
	jae	.label_120
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	mov	r15, qword ptr [rsp + 0x18]
	jmp	.label_170
	nop	
.label_151:
	mov	eax, dword ptr [rsp + 0x20]
	mov	ecx, dword ptr [rsp + 0x24]
	or	cl, al
	and	cl, 1
	mov	r15d, 1
	cmovne	r15, qword ptr [rsp + 0x18]
	cmp	dword ptr [rsp + 0x10], 0
	jne	.label_101
	test	cl, cl
	je	.label_112
.label_101:
	test	al, 1
	jne	.label_115
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	cmp	rcx,  qword ptr [word ptr [rip + n_frp_allocated]]
	jne	.label_118
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	test	rdi, rdi
	je	.label_104
	movabs	rax, 0x555555555555555
	cmp	rcx, rax
	jae	.label_120
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_131
	nop	word ptr [rax + rax]
.label_97:
	test	r13b, r13b
	jne	.label_137
	mov	edx, dword ptr [rsp + 0x24]
	mov	al, dl
	and	al, 1
	sete	cl
	test	r14, r14
	jne	.label_141
	test	cl, cl
	je	.label_148
.label_141:
	test	al, al
	mov	r15d, 1
	cmovne	r15, r14
	mov	bpl, 1
	jmp	.label_129
.label_155:
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	r15, qword ptr [rsp + 0x18]
	jmp	.label_157
.label_115:
	cmp	r14, r15
	jb	.label_123
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	cmp	rcx,  qword ptr [word ptr [rip + n_frp_allocated]]
	jne	.label_163
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	test	rdi, rdi
	je	.label_167
	movabs	rax, 0x555555555555555
	cmp	rcx, rax
	jae	.label_120
	mov	rax, rcx
	shr	rax, 1
	lea	rsi, [rcx + rax + 1]
	jmp	.label_102
.label_118:
	mov	rax,  qword ptr [word ptr [rip + frp]]
	jmp	.label_107
.label_163:
	mov	rax,  qword ptr [word ptr [rip + frp]]
	jmp	.label_111
.label_161:
	test	rcx, rcx
	mov	esi, 8
	cmovne	rsi, rcx
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	mov	r15, qword ptr [rsp + 0x18]
	ja	.label_117
.label_170:
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
.label_157:
	shl	rcx, 4
	mov	qword ptr [rax + rcx], r14
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r14
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	inc	rsi
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
	jmp	.label_132
.label_104:
	test	rcx, rcx
	mov	esi, 8
	cmovne	rsi, rcx
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_149
.label_131:
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
.label_107:
	shl	rcx, 4
	mov	qword ptr [rax + rcx], r15
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], -1
	jmp	.label_165
.label_167:
	test	rcx, rcx
	mov	esi, 8
	cmovne	rsi, rcx
	movabs	rax, 0x7ffffffffffffff
	cmp	rsi, rax
	ja	.label_98
.label_102:
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rsi
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
.label_111:
	shl	rcx, 4
	mov	qword ptr [rax + rcx], r15
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r14
.label_165:
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	inc	rsi
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
	xor	ebp, ebp
.label_132:
	cmp	byte ptr [rbx], 0
	je	.label_127
	mov	dword ptr [rsp + 0x20], 0
	xor	edx, edx
	jmp	.label_129
.label_127:
	test	rsi, rsi
	je	.label_134
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:compare_ranges
	mov	rdi, rax
	call	qsort
	mov	rbx,  qword ptr [word ptr [rip + n_frp]]
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_144
	nop	
.label_110:
	lea	rbp, [r14 + 1]
	jmp	.label_168
	nop	word ptr cs:[rax + rax]
.label_99:
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
.label_168:
	cmp	rbp, rbx
	jae	.label_166
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	rcx, rbp
	shl	rcx, 4
	mov	rsi, r14
	shl	rsi, 4
	mov	rdx, qword ptr [rax + rsi + 8]
	cmp	qword ptr [rax + rcx], rdx
	jbe	.label_99
.label_166:
	cmp	rbp, rbx
	mov	r14, rbp
	jb	.label_110
	jmp	.label_114
.label_144:
	xor	ebx, ebx
.label_114:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 2
	je	.label_108
	mov	r14,  qword ptr [word ptr [rip + frp]]
	mov	qword ptr [word ptr [rip + frp]],  0
	mov	qword ptr [word ptr [rip + n_frp]],  0
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  0
	mov	rbp, qword ptr [r14]
	xor	esi, esi
	cmp	rbp, 2
	jb	.label_119
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
	jmp	.label_138
.label_119:
	xor	eax, eax
.label_138:
	cmp	rbx, 2
	jb	.label_160
	lea	rbp, [r14 + 0x10]
	mov	r15d, 1
	nop	word ptr cs:[rax + rax]
.label_145:
	mov	r12, qword ptr [rbp - 8]
	mov	r13, qword ptr [rbp]
	inc	r12
	cmp	r12, r13
	je	.label_147
	cmp	rsi,  qword ptr [word ptr [rip + n_frp_allocated]]
	jne	.label_116
	test	rax, rax
	je	.label_100
	movabs	rcx, 0x555555555555555
	cmp	rsi, rcx
	jae	.label_120
	mov	rcx, rsi
	shr	rcx, 1
	lea	rsi, [rsi + rcx + 1]
	jmp	.label_109
.label_100:
	test	rsi, rsi
	mov	ecx, 8
	cmove	rsi, rcx
	movabs	rcx, 0x7ffffffffffffff
	cmp	rsi, rcx
	ja	.label_126
.label_109:
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rsi
	shl	rsi, 4
	mov	rdi, rax
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
.label_116:
	dec	r13
	shl	rsi, 4
	mov	qword ptr [rax + rsi], r12
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], r13
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	inc	rsi
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
.label_147:
	inc	r15
	add	rbp, 0x10
	cmp	r15, rbx
	jb	.label_145
.label_160:
	shl	rbx, 4
	mov	rbx, qword ptr [rbx + r14 - 8]
	cmp	rbx, -1
	je	.label_150
	cmp	rsi,  qword ptr [word ptr [rip + n_frp_allocated]]
	jne	.label_156
	test	rax, rax
	je	.label_154
	movabs	rcx, 0x555555555555555
	cmp	rsi, rcx
	jae	.label_120
	mov	rcx, rsi
	shr	rcx, 1
	lea	rcx, [rsi + rcx + 1]
	jmp	.label_164
.label_154:
	test	rsi, rsi
	mov	ecx, 8
	cmovne	rcx, rsi
	movabs	rdx, 0x7ffffffffffffff
	cmp	rcx, rdx
	ja	.label_143
.label_164:
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  rcx
	shl	rcx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
.label_156:
	inc	rbx
	shl	rsi, 4
	mov	qword ptr [rax + rsi], rbx
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	qword ptr [rax + rcx + 8], -1
	inc	qword ptr [word ptr [rip + n_frp]]
.label_150:
	mov	rdi, r14
	call	free
	mov	rbx,  qword ptr [word ptr [rip + n_frp]]
.label_108:
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
.label_130:
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
	jne	.label_162
	mov	esi, OFFSET FLAT:.str.9_0
	jmp	.label_153
.label_113:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_139
	mov	esi, OFFSET FLAT:.str.11_0
	jmp	.label_169
.label_162:
	mov	esi, OFFSET FLAT:.str.8_0
.label_153:
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
.label_139:
	mov	esi, OFFSET FLAT:.str.10_0
.label_169:
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
.label_152:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_128
	mov	esi, OFFSET FLAT:.str.4_0
	jmp	.label_105
.label_112:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	jmp	.label_105
.label_120:
	call	xalloc_die
.label_137:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_121
	mov	esi, OFFSET FLAT:.str.2_0
	jmp	.label_142
.label_148:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_146
	mov	esi, OFFSET FLAT:.str.4_0
	jmp	.label_142
.label_123:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
	jmp	.label_105
.label_128:
	mov	esi, OFFSET FLAT:.str.3_0
.label_105:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	jmp	.label_158
.label_121:
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_142
.label_146:
	mov	esi, OFFSET FLAT:.str.3_0
.label_142:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_158:
	call	error
	mov	edi, 1
	call	usage
.label_117:
	call	xalloc_die
.label_149:
	call	xalloc_die
.label_98:
	call	xalloc_die
.label_134:
	mov	eax, dword ptr [rsp + 0xc]
	xor	edi, edi
	test	al, 4
	jne	.label_133
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_105
.label_126:
	call	xalloc_die
.label_133:
	mov	esi, OFFSET FLAT:.str.12_0
	jmp	.label_105
.label_143:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e40

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
	.align	32
	#Procedure 0x402e60
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
	.align	32
	#Procedure 0x402e90
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ea0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402eb0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_174
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_173
	cmp	dword ptr [rbp], 0x20
	jne	.label_173
.label_174:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_172
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_173:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_171
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_172:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_171:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f70
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f80

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_175
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_175:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402fa0

	.globl getndelim2
	.type getndelim2, @function
getndelim2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r13d, r9d
	mov	dword ptr [rsp + 0x40], r8d
	mov	rbx, rcx
	mov	r15, rsi
	mov	rbp, rdi
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_188
	mov	r14, qword ptr [r15]
	jmp	.label_195
.label_188:
	cmp	rbx, 0x40
	mov	r14d, 0x40
	cmovb	r14, rbx
	mov	rdi, r14
	mov	r12, rdx
	call	malloc
	mov	rdx, r12
	mov	rcx, rax
	mov	rax, -1
	test	rcx, rcx
	je	.label_193
.label_195:
	mov	qword ptr [rsp + 0x48], rbx
	mov	rbx, rcx
	mov	r12, r14
	sub	r12, rdx
	jae	.label_196
	mov	qword ptr [rsp + 0x28], -1
	mov	qword ptr [rsp + 0x18], rbp
	mov	qword ptr [rsp + 0x20], r15
	jmp	.label_176
.label_196:
	mov	qword ptr [rsp + 0x28], -1
	mov	qword ptr [rsp + 0x18], rbp
	mov	qword ptr [rsp + 0x20], r15
	jne	.label_182
	cmp	r14, qword ptr [rsp + 0x48]
	jb	.label_182
	mov	r14, rdx
	jmp	.label_176
.label_182:
	mov	rbp, qword ptr [rsp + 0x90]
	lea	r15, [rbx + rdx]
	cmp	r13d, -1
	mov	ecx, r13d
	mov	eax, dword ptr [rsp + 0x40]
	cmove	ecx, eax
	cmp	eax, -1
	cmove	ecx, r13d
	mov	dword ptr [rsp + 0x3c], ecx
	cmove	eax, r13d
	mov	dword ptr [rsp + 0x40], eax
	movabs	rax, 0x8000000000000000
	xor	rax, rdx
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x30], rdx
	mov	dword ptr [rsp + 0x44], 0
	mov	dword ptr [rsp + 0x38], eax
	nop	dword ptr [rax + rax]
.label_181:
	mov	rdi, rbp
	lea	rsi, [rsp + 0x50]
	call	freadptr
	mov	r13, rax
	test	r13, r13
	je	.label_184
	mov	esi, dword ptr [rsp + 0x40]
	cmp	esi, -1
	mov	rbp, qword ptr [rsp + 0x50]
	je	.label_186
	mov	rdi, r13
	mov	edx, dword ptr [rsp + 0x3c]
	mov	rcx, rbp
	call	memchr2
	test	rax, rax
	je	.label_186
	mov	ebp, 1
	sub	rbp, r13
	add	rbp, rax
	mov	qword ptr [rsp + 0x50], rbp
	mov	al, 1
	jmp	.label_192
	nop	dword ptr [rax + rax]
.label_184:
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbp + 0x10]
	jae	.label_194
	lea	rcx, [rax + 1]
	mov	qword ptr [rbp + 8], rcx
	movzx	eax, byte ptr [rax]
.label_185:
	cmp	eax, dword ptr [rsp + 0x3c]
	mov	dl, 1
	mov	cl, 1
	je	.label_177
	mov	ecx, dword ptr [rsp + 0x44]
.label_177:
	cmp	eax, dword ptr [rsp + 0x40]
	mov	dword ptr [rsp + 0x38], eax
	je	.label_180
	mov	dl, cl
.label_180:
	mov	qword ptr [rsp + 0x50], 1
	mov	ebp, 1
	mov	al, dl
.label_192:
	mov	dword ptr [rsp + 0x44], eax
.label_186:
	cmp	r14, qword ptr [rsp + 0x48]
	jae	.label_187
	lea	rax, [rbp + 1]
	cmp	r12, rax
	jae	.label_187
	lea	rcx, [r14 + 0x40]
	lea	rdx, [r14 + r14]
	cmp	r14, 0x40
	cmovb	rdx, rcx
	sub	r15, rbx
	mov	rcx, rdx
	sub	rcx, r15
	cmp	rcx, rax
	lea	rax, [r15 + rbp + 1]
	cmovae	rax, rdx
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rax, rcx
	mov	rbp, rax
	cmova	rbp, rcx
	cmp	r14, rax
	cmovae	rbp, rcx
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rbp, rax
	jns	.label_191
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r14, rax
	mov	rbp, rax
	je	.label_178
.label_191:
	mov	rdi, rbx
	mov	rsi, rbp
	call	realloc
	test	rax, rax
	je	.label_176
	mov	r12, rbp
	sub	r12, r15
	add	r15, rax
	mov	rbx, rax
	mov	r14, rbp
.label_187:
	cmp	r12, 2
	jb	.label_189
	lea	rbp, [r12 - 1]
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rax, rbp
	cmovb	rbp, rax
	test	r13, r13
	je	.label_190
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	jmp	.label_179
.label_190:
	mov	eax, dword ptr [rsp + 0x38]
	mov	byte ptr [r15], al
.label_179:
	add	r15, rbp
	sub	r12, rbp
.label_189:
	mov	rbp, qword ptr [rsp + 0x90]
	test	r13, r13
	je	.label_197
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdi, rbp
	call	freadseek
	test	eax, eax
	jne	.label_176
.label_197:
	mov	eax, dword ptr [rsp + 0x44]
	test	al, 1
	je	.label_181
	jmp	.label_183
.label_194:
	mov	rdi, rbp
	call	__uflow
	cmp	eax, -1
	jne	.label_185
	cmp	r15, rbx
	je	.label_176
.label_183:
	mov	byte ptr [r15], 0
	mov	rax, qword ptr [rsp + 0x30]
	add	rax, rbx
	sub	r15, rax
	mov	qword ptr [rsp + 0x28], r15
.label_176:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax], rbx
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	rcx, 1
	sbb	rax, rax
	or	rax, rcx
.label_193:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_178:
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_176
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403290

	.globl memchr2
	.type memchr2, @function
memchr2:
	push	r14
	push	rbx
	movzx	esi, sil
	movzx	r8d, dl
	cmp	esi, r8d
	jne	.label_203
	mov	rdx, rcx
	pop	rbx
	pop	r14
	jmp	memchr
.label_203:
	mov	eax, edi
	and	eax, 7
	test	rcx, rcx
	je	.label_198
	nop	word ptr cs:[rax + rax]
.label_202:
	test	rax, rax
	je	.label_198
	movzx	eax, byte ptr [rdi]
	cmp	eax, esi
	je	.label_207
	cmp	eax, r8d
	je	.label_208
	inc	rdi
	mov	eax, edi
	and	eax, 7
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jne	.label_202
.label_198:
	mov	eax, esi
	shl	eax, 8
	or	eax, esi
	mov	edx, r8d
	shl	edx, 8
	or	edx, r8d
	cmp	rcx, 8
	jb	.label_200
	mov	r10, rax
	shl	r10, 0x10
	or	r10, rax
	mov	rax, rdx
	shl	rax, 0x10
	or	rax, rdx
	mov	r9, r10
	shl	r9, 0x20
	or	r9, r10
	mov	r11, rax
	shl	r11, 0x20
	or	r11, rax
	movabs	r14, 0x8080808080808080
	movabs	r10, 0xfefefefefefefeff
	nop	word ptr cs:[rax + rax]
.label_201:
	mov	rdx, rcx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	rcx, rax
	xor	rcx, r9
	xor	rax, r11
	lea	rdi, [rcx + r10]
	xor	rcx, r14
	and	rcx, rdi
	lea	rdi, [rax + r10]
	xor	rax, r14
	and	rax, rdi
	or	rax, rcx
	lea	rdi, [rbx + 8]
	lea	rcx, [rdx - 8]
	and	rax, r14
	cmovne	rdi, rbx
	cmovne	rcx, rdx
	test	rax, rax
	jne	.label_200
	cmp	rcx, 7
	ja	.label_201
.label_200:
	xor	eax, eax
	test	rcx, rcx
	je	.label_199
	xor	eax, eax
.label_206:
	movzx	edx, byte ptr [rdi]
	cmp	edx, esi
	je	.label_204
	cmp	edx, r8d
	je	.label_205
	inc	rdi
	dec	rcx
	jne	.label_206
	jmp	.label_199
.label_207:
	mov	rax, rdi
	jmp	.label_199
.label_208:
	mov	rax, rdi
	jmp	.label_199
.label_204:
	mov	rax, rdi
	jmp	.label_199
.label_205:
	mov	rax, rdi
.label_199:
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4033d0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_210
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_211
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_211
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_209
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_209:
	mov	rbx, r14
.label_211:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_210:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_3
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403480
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
	#Procedure 0x4034c0
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
	#Procedure 0x4034d0
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
	#Procedure 0x4034e0
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
	#Procedure 0x403520
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
	#Procedure 0x403540
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_212
	test	rdx, rdx
	je	.label_212
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_212:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403570
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
	.align	32
	#Procedure 0x4035f0

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
.label_322:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_259
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_262]]
.label_497:
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
.label_498:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_283
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_283
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_272:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_236
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_236:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_272
.label_283:
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
	jmp	.label_243
.label_490:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_243
.label_493:
	mov	al, 1
.label_491:
	mov	r12b, 1
.label_494:
	test	r12b, 1
	mov	cl, 1
	je	.label_336
	mov	cl, al
.label_336:
	mov	al, cl
.label_492:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_213
	test	r10, r10
	je	.label_216
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_217
.label_213:
	xor	ecx, ecx
	jmp	.label_217
.label_495:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_280
	test	r10, r10
	je	.label_233
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_237
.label_496:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_243
.label_216:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_217:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_243
.label_280:
	xor	eax, eax
	jmp	.label_237
.label_233:
	mov	eax, 1
.label_237:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_243:
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
	jmp	.label_318
.label_222:
	inc	rdi
.label_318:
	cmp	rbp, -1
	je	.label_313
	cmp	rdi, rbp
	jne	.label_315
	jmp	.label_316
	nop	word ptr cs:[rax + rax]
.label_313:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_320
.label_315:
	test	r12b, r12b
	je	.label_324
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_326
	cmp	rbp, -1
	jne	.label_326
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
.label_326:
	cmp	rbx, rbp
	jbe	.label_223
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_235
	nop	word ptr [rax + rax]
.label_324:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_235
.label_223:
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
	jne	.label_252
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_235
	jmp	.label_227
.label_252:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_235:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_317
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_278]]
.label_508:
	test	rdi, rdi
	jne	.label_264
	jmp	.label_285
.label_512:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_286
	test	rdi, rdi
	jne	.label_288
	cmp	rbp, 1
	je	.label_285
	xor	r13d, r13d
	jmp	.label_251
.label_501:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_292
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_227
	cmp	r9d, 2
	jne	.label_297
	mov	al, r14b
	and	al, 1
	jne	.label_299
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_304
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_304:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_310
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_310:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_225
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_225:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_327
.label_502:
	mov	bl, 0x62
	jmp	.label_294
.label_503:
	mov	cl, 0x74
	jmp	.label_215
.label_504:
	mov	bl, 0x76
	jmp	.label_294
.label_505:
	mov	bl, 0x66
	jmp	.label_294
.label_506:
	mov	cl, 0x72
	jmp	.label_215
.label_509:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_214
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_218
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
	jae	.label_273
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_273:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_248
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_248:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_255
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_255:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_214:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_251
.label_510:
	cmp	r9d, 5
	je	.label_263
	cmp	r9d, 2
	jne	.label_264
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_264
	jmp	.label_269
.label_511:
	cmp	r9d, 2
	jne	.label_305
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_275
	jmp	.label_279
.label_317:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_281
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
.label_239:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_293
	test	cl, cl
	je	.label_293
	xor	eax, eax
	jmp	.label_251
.label_286:
	test	rdi, rdi
	jne	.label_308
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_308
.label_285:
	mov	dl, 1
.label_507:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_312
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_251
.label_292:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_222
	jmp	.label_264
.label_305:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_215
.label_275:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_257
.label_215:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_329
.label_294:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_251
	jmp	.label_258
.label_281:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_337
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_337:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_284:
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
	je	.label_247
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_250
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_256
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_334
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_270:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_266
	bt	rsi, rdx
	jb	.label_267
.label_266:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_270
.label_334:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_332
	xor	r13d, r13d
.label_332:
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
	je	.label_284
	jmp	.label_239
.label_308:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_251
.label_263:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_264
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_264
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_264
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_300
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_306
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_303
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_268
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_268:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_323
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_323:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_331
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_331:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_328
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_328:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_251
.label_264:
	xor	eax, eax
	xor	r13d, r13d
.label_251:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_228
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_232
	jmp	.label_238
	nop	word ptr [rax + rax]
.label_228:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_238
.label_232:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_244
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_249
	nop	word ptr cs:[rax + rax]
.label_238:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_249:
	mov	bl, r15b
	je	.label_257
	jmp	.label_258
.label_244:
	mov	bl, r15b
.label_258:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_227
	cmp	r9d, 2
	jne	.label_260
	mov	al, r14b
	and	al, 1
	jne	.label_260
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_254
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_254:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_290
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_290:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_277
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_277:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_260:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_287
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_287:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_333
.label_288:
	xor	r13d, r13d
	jmp	.label_251
.label_293:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_295
	nop	word ptr [rax + rax]
.label_289:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_295:
	test	cl, cl
	je	.label_307
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_261
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_314
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_314:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_261
	nop	word ptr [rax + rax]
.label_307:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_227
	cmp	r9d, 2
	jne	.label_296
	mov	al, r14b
	and	al, 1
	jne	.label_296
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_309
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_309:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_231
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_231:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_224
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_224:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_296:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_241
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_241:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_253
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_253:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_274
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_274:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_261:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_257
	test	r14b, 1
	je	.label_219
	mov	bl, al
	and	bl, 1
	jne	.label_219
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_311
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_311:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_282
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_282:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_219:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_289
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_289
	nop	dword ptr [rax]
.label_257:
	test	r14b, 1
	je	.label_301
	and	al, 1
	jne	.label_301
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_246
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_246:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_335
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_335:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_301:
	mov	bl, r15b
.label_333:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_325
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_325:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_222
.label_297:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_327
.label_299:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_327:
	cmp	rcx, r10
	jae	.label_242
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_242:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_221
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_229
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_234
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_240
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_240:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_245
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_245:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_251
.label_221:
	xor	r13d, r13d
	jmp	.label_251
.label_229:
	xor	r13d, r13d
	jmp	.label_251
.label_234:
	xor	r13d, r13d
	jmp	.label_251
.label_250:
	xor	r13d, r13d
.label_247:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_239
.label_256:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_265
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_321:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_271
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_321
	xor	r13d, r13d
	jmp	.label_239
.label_265:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_239
.label_271:
	xor	r13d, r13d
	jmp	.label_239
.label_300:
	xor	r13d, r13d
	jmp	.label_251
.label_306:
	xor	r13d, r13d
	jmp	.label_251
	nop	dword ptr [rax]
.label_316:
	mov	r13, rdi
.label_320:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_291
	or	al, dl
	je	.label_302
.label_291:
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
	je	.label_298
	or	al, dl
	jne	.label_298
	test	r8b, 1
	jne	.label_319
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_298
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_322
.label_298:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_330
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_330
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_330
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_220:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_230
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_230:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_220
.label_330:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_226
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_226
.label_312:
	mov	r9d, 2
	jmp	.label_227
.label_267:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_227
.label_302:
	mov	rbp, r13
	jmp	.label_227
.label_329:
	mov	r9d, 2
.label_227:
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
.label_276:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_226:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_319:
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
	jmp	.label_276
.label_218:
	mov	r9d, 2
	jmp	.label_227
.label_279:
	mov	r9d, 2
	jmp	.label_227
.label_269:
	mov	r9d, 2
	jmp	.label_227
.label_303:
	mov	r9d, 5
	jmp	.label_227
.label_259:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404780
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
	.align	32
	#Procedure 0x404850
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
	je	.label_338
	mov	qword ptr [rax], rbx
.label_338:
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
	#Procedure 0x404950
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_339
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_341:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_341
.label_339:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_342
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_343]], OFFSET FLAT:slot0
.label_342:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_340
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_340:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049f0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404a00

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
	js	.label_344
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_346
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_350
.label_346:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_347
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
	jne	.label_345
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_345:
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
.label_350:
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
	ja	.label_348
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_349
	mov	rdi, rbx
	call	free
.label_349:
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
.label_348:
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
.label_344:
	call	abort
.label_347:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bd0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404be0
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
	.align	32
	#Procedure 0x404c00
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
	.align	32
	#Procedure 0x404c20
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
	je	.label_351
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
.label_351:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404c90
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
	je	.label_352
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
.label_352:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d00
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
	je	.label_353
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
.label_353:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d70
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
	je	.label_354
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
.label_354:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404de0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_355]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
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
	.align	32
	#Procedure 0x404e50
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_355]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
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
	.align	32
	#Procedure 0x404ec0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_355]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
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
	.align	32
	#Procedure 0x404f20
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_355]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
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
	.align	32
	#Procedure 0x404f80

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
	je	.label_358
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
.label_358:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405030
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_355]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_359
	test	rdx, rdx
	je	.label_359
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_359:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4050a0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_355]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_360
	test	rdx, rdx
	je	.label_360
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_360:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405110
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_355]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_361
	test	rsi, rsi
	je	.label_361
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_361:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405180
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_355]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_356]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_357]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_362
	test	rsi, rsi
	je	.label_362
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
.label_362:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4051f0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405200
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
	.align	32
	#Procedure 0x405220
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405240

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
	.align	32
	#Procedure 0x405260

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
	jne	.label_363
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_366
	cmp	ecx, 0x55
	jne	.label_364
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_364
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_364
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_364
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_364
	cmp	byte ptr [rax + 5], 0
	jne	.label_364
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_363
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_363
.label_366:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_364
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_364
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_364
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_364
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_364
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_364
	cmp	byte ptr [rax + 7], 0
	je	.label_365
.label_364:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_1
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_363:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_365:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_363
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_363
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405350

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
	je	.label_369
	mov	edx, OFFSET FLAT:.str_4
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_368
.label_369:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_368:
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
	ja	.label_374
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_375]]
.label_451:
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
.label_374:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_373
.label_452:
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
.label_453:
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
.label_454:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_376
.label_455:
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
	jmp	.label_372
.label_456:
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
	jmp	.label_367
.label_457:
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
.label_367:
	mov	qword ptr [rsp + 0x10], rdi
.label_372:
	mov	qword ptr [rsp + 8], rsi
.label_376:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_370
.label_459:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_373:
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
	jmp	.label_371
.label_458:
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
.label_371:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_370:
	call	__fprintf_chk
.label_450:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405640
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_377:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_377
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405670
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_380:
	cmp	r10d, 0x28
	ja	.label_378
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_379
	nop	word ptr cs:[rax + rax]
.label_378:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_379:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_381
	inc	r9
	cmp	r9, 0xa
	jb	.label_380
.label_381:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4056d0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_382
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_382:
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
.label_386:
	cmp	r8d, 0x28
	ja	.label_383
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_385
	nop	
.label_383:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_385:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_384
	inc	r9
	cmp	r9, 0xa
	jb	.label_386
.label_384:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057d0
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
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
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
	#Procedure 0x405850
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_387
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_388
	test	rax, rax
	je	.label_387
.label_388:
	pop	rbx
	ret	
.label_387:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405890

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_389
	test	rax, rax
	je	.label_390
.label_389:
	pop	rbx
	ret	
.label_390:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058b0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_391
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_392
	test	rbx, rbx
	jne	.label_392
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_392:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_393
	test	rax, rax
	je	.label_391
.label_393:
	pop	rbx
	ret	
.label_391:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405900

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_394
	test	rbx, rbx
	jne	.label_394
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_394:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_396
	test	rax, rax
	je	.label_395
.label_396:
	pop	rbx
	ret	
.label_395:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405930
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_401
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_402
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_397
.label_401:
	test	rcx, rcx
	jne	.label_403
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_403:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_399
.label_397:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_398
	test	rbx, rbx
	jne	.label_398
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_398:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_400
	test	rax, rax
	je	.label_402
.label_400:
	pop	rbx
	ret	
.label_402:
	call	xalloc_die
.label_399:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059d0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_404
	test	rax, rax
	je	.label_405
.label_404:
	pop	rbx
	ret	
.label_405:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059f0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_408
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_410
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_407
	call	free
	xor	eax, eax
	jmp	.label_409
.label_408:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_406
	mov	qword ptr [rsi], rbx
.label_407:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_409
	test	rax, rax
	je	.label_406
.label_409:
	pop	rbx
	ret	
.label_406:
	call	xalloc_die
.label_410:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a60
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
	je	.label_412
	test	r14, r14
	je	.label_411
.label_412:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_411:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405aa0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_413
	call	rpl_calloc
	test	rax, rax
	je	.label_413
	pop	rcx
	ret	
.label_413:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ad0

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
	je	.label_414
	test	r15, r15
	je	.label_415
.label_414:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_415:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b10

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
	je	.label_417
	test	r15, r15
	je	.label_416
.label_417:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_416:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b60

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405b90

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_418
	pop	rcx
	ret	
.label_418:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405bb0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_419
	test	rsi, rsi
	mov	ecx, 1
	je	.label_420
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_420
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_419:
	mov	ecx, 1
.label_420:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c00

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_421
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_423
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_421
.label_423:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_421
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_422
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_422:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_421:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405c80

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_424
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_424
	test	byte ptr [rbx + 1], 1
	je	.label_424
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_424:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405cc0

	.globl freadptr
	.type freadptr, @function
freadptr:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_425
	mov	rcx, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x10]
	xor	eax, eax
	sub	rdx, rcx
	je	.label_425
	mov	qword ptr [rsi], rdx
	mov	rax, rcx
.label_425:
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405cf0

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
	jne	.label_426
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_426
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_427
.label_426:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_427:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_428
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_428:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405d60

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
	je	.label_429
	cmp	r15, -2
	jb	.label_429
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_429
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_429:
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
	#Procedure 0x405dc0

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
	jne	.label_431
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_430
	test	cl, cl
	jne	.label_430
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_430
.label_431:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_430
	call	__errno_location
	mov	dword ptr [rax], 0
.label_430:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e20

	.globl freadseek
	.type freadseek, @function
freadseek:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1008
	mov	rbx, rsi
	mov	r14, rdi
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_435
	mov	rdi, r14
	call	freadahead
	mov	rbp, rax
	lea	r12, [rsp]
	nop	word ptr cs:[rax + rax]
.label_436:
	test	rbp, rbp
	je	.label_433
	mov	rdi, r14
	mov	rsi, r12
	call	freadptr
	test	rax, rax
	je	.label_437
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_437
	cmp	rax, rbx
	cmovae	rax, rbx
	add	qword ptr [r14 + 8], rax
	sub	rbx, rax
	je	.label_435
	sub	rbp, rax
	je	.label_433
.label_437:
	mov	rdi, r14
	call	fgetc
	cmp	eax, -1
	je	.label_434
	mov	rax, rbx
	dec	rax
	setne	al
	movzx	eax, al
	sub	rbp, rax
	dec	rbx
	jne	.label_436
	jmp	.label_435
.label_433:
	mov	rdi, r14
	call	fileno
	test	eax, eax
	js	.label_432
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	test	rax, rax
	js	.label_432
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	rpl_fseeko
	mov	r15d, eax
	jmp	.label_435
.label_432:
	mov	r12d, 0x1000
	lea	r15, [rsp]
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_438:
	cmp	rbx, 0x1000
	mov	rbp, rbx
	cmova	rbp, r12
	mov	esi, 1
	mov	rdi, r15
	mov	rdx, rbp
	mov	rcx, r14
	call	fread
	cmp	rax, rbp
	cmovb	rbp, r13
	jb	.label_434
	sub	rbx, rbp
	jne	.label_438
	xor	r15d, r15d
	jmp	.label_435
.label_434:
	mov	rdi, r14
	call	ferror
	neg	eax
	sbb	r15d, r15d
.label_435:
	mov	eax, r15d
	add	rsp, 0x1008
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
	#Procedure 0x405f70

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_440
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_441
	cmp	byte ptr [rax + 1], 0
	je	.label_439
.label_441:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_440
.label_439:
	xor	ebx, ebx
.label_440:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405fb0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	je	.label_442
	mov	rax, rcx
.label_442:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fe0

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_443
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_444
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_444:
	add	rax, rcx
.label_443:
	ret	
	nop	dword ptr [rax + rax]
	.section .text
	.align	32
	#Procedure 0x406010

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
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
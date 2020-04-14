	.section	.text
	.align	32
	#Procedure 0x401c00

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
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
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
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
	mov	rsi, rax
	mov	edi, 1
	mov	edx, 0xa
	mov	ecx, 5
	xor	eax, eax
	call	__printf_chk
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
	mov	esi, OFFSET FLAT:.str.33
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
	je	.label_9
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_9:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.13
	mov	ecx, OFFSET FLAT:.str.40
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401ef0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2188
	mov	r13, rsi
	mov	r15d, edi
	mov	qword ptr [rsp + 0xc8], 0xa
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.15
	mov	esi, OFFSET FLAT:.str.16
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.15
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	byte ptr [byte ptr [rip + count_lines]],  1
	mov	byte ptr [byte ptr [rip + print_headers]],  0
	mov	byte ptr [byte ptr [rip + from_start]],  0
	mov	byte ptr [byte ptr [rip + forever]],  0
	mov	byte ptr [byte ptr [rip + line_end]],  1
	cmp	r15d, 2
	je	.label_81
	cmp	r15d, 3
	jne	.label_285
	mov	rax, qword ptr [r13 + 0x10]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_81
	mov	cl, byte ptr [rax + 1]
	test	cl, cl
	jne	.label_227
	jmp	.label_81
.label_285:
	lea	eax, [r15 - 3]
	cmp	eax, 1
	ja	.label_287
	mov	rax, qword ptr [r13 + 0x10]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_288
	mov	cl, byte ptr [rax + 1]
.label_227:
	movzx	ecx, cl
	cmp	ecx, 0x2d
	jne	.label_292
	cmp	byte ptr [rax + 2], 0
	je	.label_81
	xor	ebx, ebx
	jmp	.label_13
.label_81:
	call	posix2_version
	mov	rdi, qword ptr [r13 + 8]
	movsx	ecx, byte ptr [rdi]
	inc	rdi
	cmp	ecx, 0x2d
	je	.label_294
	cmp	ecx, 0x2b
	jne	.label_282
	add	eax, 0xfffcf250
	mov	bl, 1
	cmp	eax, 0x2b8
	ja	.label_12
	xor	ebx, ebx
	jmp	.label_13
.label_294:
	cmp	eax, 0x30db0
	jge	.label_297
	xor	ebx, ebx
	jmp	.label_12
.label_282:
	xor	ebx, ebx
	jmp	.label_13
.label_287:
	xor	ebx, ebx
	jmp	.label_13
.label_297:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x63
	sete	al
	movzx	eax, al
	xor	ebx, ebx
	cmp	byte ptr [rdi + rax], 0
	je	.label_13
.label_12:
	mov	rdx, rdi
.label_20:
	mov	rax, rdx
	mov	cl, byte ptr [rax]
	movsx	esi, cl
	lea	ebp, [rsi - 0x30]
	lea	rdx, [rax + 1]
	cmp	ebp, 0xa
	jb	.label_20
	mov	r14b, 1
	mov	r8d, 0xa
	cmp	esi, 0x6c
	je	.label_78
	cmp	esi, 0x63
	je	.label_25
	cmp	esi, 0x62
	mov	rsi, rax
	jne	.label_27
	mov	r8d, 0x1400
.label_25:
	xor	r14d, r14d
.label_78:
	mov	cl, byte ptr [rdx]
	mov	rsi, rdx
.label_27:
	movzx	ecx, cl
	lea	rdx, [rsi + 1]
	cmp	ecx, 0x66
	sete	r12b
	cmovne	rdx, rsi
	cmp	byte ptr [rdx], 0
	je	.label_32
	xor	ebx, ebx
	jmp	.label_13
.label_32:
	cmp	rdi, rax
	je	.label_36
	lea	rcx, [rsp + 0xc8]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str.42
	call	xstrtoumax
	test	eax, 0xfffffffd
	je	.label_40
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [r13 + 8]
	call	quote
	mov	rbp, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, r14d
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_292:
	xor	ebx, ebx
	jmp	.label_13
.label_288:
	xor	ebx, ebx
	jmp	.label_13
.label_36:
	mov	qword ptr [rsp + 0xc8], r8
.label_40:
	mov	byte ptr [byte ptr [rip + from_start]],  bl
	mov	byte ptr [byte ptr [rip + count_lines]],  r14b
	mov	byte ptr [byte ptr [rip + forever]],  r12b
	mov	bl, 1
.label_13:
	movzx	eax, bl
	sub	r15d, eax
	lea	r14, [r13 + rax*8]
	movsd	xmm0,  qword ptr [word ptr [rip + label_57]]
	movsd	qword ptr [rsp + 0x60], xmm0
	xor	eax, eax
	jmp	.label_58
.label_88:
	mov	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  1
	mov	eax, r12d
.label_58:
	mov	r12d, eax
	mov	edx, OFFSET FLAT:.str.45
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	mov	ebp, eax
	cmp	ebp, 0x62
	jle	.label_70
	lea	ecx, [rbp - 0x6e]
	cmp	ecx, 0x17
	ja	.label_73
	mov	eax, 2
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_75]]
.label_1040:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtod
	lea	rdx, [rsp + 0xd0]
	call	xstrtod
	test	al, al
	je	.label_53
	movsd	xmm0, qword ptr [rsp + 0xd0]
	movsd	qword ptr [rsp + 0x60], xmm0
	ucomisd	xmm0,  qword ptr [word ptr [label_52]]
	jb	.label_53
	mov	eax, r12d
	jmp	.label_58
	nop	dword ptr [rax]
.label_70:
	cmp	ebp, 0x2f
	jle	.label_83
	cmp	ebp, 0x46
	jne	.label_84
	mov	byte ptr [byte ptr [rip + forever]],  1
	mov	dword ptr [dword ptr [rip + follow_mode]],  1
	jmp	.label_88
.label_73:
	cmp	ebp, 0x63
	je	.label_91
	cmp	ebp, 0x66
	jne	.label_93
.label_1046:
	mov	byte ptr [byte ptr [rip + forever]],  1
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_97
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.49
	mov	edx, OFFSET FLAT:follow_mode_string
	mov	ecx, OFFSET FLAT:follow_mode_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + follow_mode_map]]
	mov	dword ptr [dword ptr [rip + follow_mode]],  eax
	mov	eax, r12d
	jmp	.label_58
.label_91:
	cmp	ebp, 0x6e
	sete	byte ptr [byte ptr [rip + count_lines]]
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	je	.label_111
	movzx	eax, al
	cmp	eax, 0x2b
	jne	.label_115
	mov	byte ptr [byte ptr [rip + from_start]],  1
	jmp	.label_115
.label_1047:
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
	mov	eax, r12d
	jmp	.label_58
.label_1043:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [word ptr [rip + max_n_unchanged_stats_between_opens]],  rax
	mov	eax, r12d
	jmp	.label_58
.label_1045:
	mov	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	mov	eax, r12d
	jmp	.label_58
.label_1041:
	mov	eax, 1
	jmp	.label_58
.label_1044:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [dword ptr [rip + pid]],  eax
	mov	eax, r12d
	jmp	.label_58
.label_1042:
	mov	byte ptr [byte ptr [rip + line_end]],  0
	mov	eax, r12d
	jmp	.label_58
.label_97:
	mov	dword ptr [dword ptr [rip + follow_mode]],  2
	mov	eax, r12d
	jmp	.label_58
.label_111:
	inc	rbx
	mov	qword ptr [word ptr [rip + optarg]],  rbx
.label_115:
	xor	edi, edi
	cmp	ebp, 0x6e
	jne	.label_147
	mov	esi, OFFSET FLAT:.str.47
	jmp	.label_148
.label_147:
	mov	esi, OFFSET FLAT:.str.48
.label_148:
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.46
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0xc8], rax
	mov	eax, r12d
	jmp	.label_58
.label_83:
	cmp	ebp, -1
	jne	.label_157
	movzx	eax,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_159
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_162
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	jne	.label_159
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	jmp	.label_163
.label_162:
	mov	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  0
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
.label_163:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_159:
	mov	edi,  dword ptr [dword ptr [rip + pid]]
	test	edi, edi
	je	.label_171
	mov	al,  byte ptr [byte ptr [rip + forever]]
	test	al, al
	jne	.label_171
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_177
.label_171:
	test	edi, edi
	je	.label_177
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_177
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_177
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	dword ptr [dword ptr [rip + pid]],  0
.label_177:
	mov	r8b,  byte ptr [byte ptr [rip + from_start]]
	mov	r9, qword ptr [rsp + 0xc8]
	test	r8b, r8b
	je	.label_186
	test	r9, r9
	je	.label_186
	dec	r9
	mov	qword ptr [rsp + 0xc8], r9
.label_186:
	movsxd	rcx,  dword ptr [dword ptr [rip + optind]]
	mov	r13d, OFFSET FLAT:main.dummy_stdin
	mov	eax, 1
	cmp	r15d, ecx
	jle	.label_191
	sub	r15d, ecx
	lea	r13, [r14 + rcx*8]
	jne	.label_194
	mov	cl, 1
	mov	dl,  byte ptr [byte ptr [rip + forever]]
	xor	r15d, r15d
	jmp	.label_196
.label_194:
	movsxd	rax, r15d
.label_191:
	xor	esi, esi
	test	al, 1
	mov	r15, rax
	jne	.label_198
	xor	edi, edi
	jmp	.label_200
.label_198:
	mov	rdx, qword ptr [r13]
	movzx	eax, byte ptr [rdx]
	mov	ecx, 0x2d
	sub	ecx, eax
	jne	.label_201
	movzx	ecx, byte ptr [rdx + 1]
	neg	ecx
.label_201:
	test	ecx, ecx
	sete	al
	mov	esi, 1
	mov	dil, al
.label_200:
	cmp	r15, 1
	je	.label_206
	mov	rdx, r15
	sub	rdx, rsi
	lea	rsi, [r13 + rsi*8 + 8]
	nop	dword ptr [rax + rax]
.label_223:
	mov	rax, qword ptr [rsi - 8]
	movzx	ebp, byte ptr [rax]
	mov	ecx, 0x2d
	sub	ecx, ebp
	jne	.label_215
	movzx	ecx, byte ptr [rax + 1]
	neg	ecx
.label_215:
	mov	rax, qword ptr [rsi]
	movzx	ebx, byte ptr [rax]
	mov	ebp, 0x2d
	sub	ebp, ebx
	jne	.label_219
	movzx	ebp, byte ptr [rax + 1]
	neg	ebp
.label_219:
	test	ecx, ecx
	mov	al, 1
	mov	cl, 1
	je	.label_220
	mov	cl, dil
.label_220:
	test	ebp, ebp
	je	.label_221
	mov	al, cl
.label_221:
	add	rsi, 0x10
	add	rdx, -2
	mov	dil, al
	jne	.label_223
.label_206:
	and	al, 1
	mov	esi,  dword ptr [dword ptr [rip + follow_mode]]
	je	.label_226
	cmp	esi, 1
	je	.label_228
.label_226:
	mov	dl,  byte ptr [byte ptr [rip + forever]]
	test	al, al
	sete	al
	xor	ecx, ecx
	test	dl, dl
	je	.label_196
	test	al, al
	jne	.label_196
	cmp	r15, 1
	jne	.label_231
	mov	eax,  dword ptr [dword ptr [rip + pid]]
	test	eax, eax
	jne	.label_231
	cmp	esi, 2
	jne	.label_231
	lea	rdx, [rsp + 0xd0]
	mov	edi, 1
	xor	esi, esi
	call	__fxstat
	test	eax, eax
	jne	.label_231
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xe8]
	cmp	eax, 0x8000
	jne	.label_240
.label_231:
	xor	edi, edi
	call	isatty
	test	eax, eax
	je	.label_240
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_240:
	mov	r9, qword ptr [rsp + 0xc8]
	mov	dl,  byte ptr [byte ptr [rip + forever]]
	xor	ecx, ecx
	mov	r8b,  byte ptr [byte ptr [rip + from_start]]
.label_196:
	mov	qword ptr [rsp + 0x68], r15
	test	r9, r9
	jne	.label_246
	xor	eax, eax
	or	r8b, dl
	je	.label_247
.label_246:
	mov	ebx, ecx
	movabs	rax, 0x155555555555556
	cmp	r15, rax
	jae	.label_65
	mov	rax, r15
	shl	rax, 5
	lea	rdi, [rax + rax*2]
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [rsp + 0x50], r14
	mov	ebp, ebx
	test	bpl, bpl
	jne	.label_256
	lea	rcx, [r15 - 1]
	xor	eax, eax
	test	r15b, 3
	je	.label_261
	mov	edx, r15d
	and	edx, 3
	xor	eax, eax
	mov	rsi, r14
	nop	word ptr cs:[rax + rax]
.label_267:
	mov	rdi, qword ptr [r13 + rax*8]
	mov	qword ptr [rsi], rdi
	inc	rax
	add	rsi, 0x60
	cmp	rdx, rax
	jne	.label_267
.label_261:
	cmp	rcx, 3
	jb	.label_256
	mov	rcx, r15
	sub	rcx, rax
	lea	rdx, [rax + rax*2]
	shl	rdx, 5
	add	rdx, r14
	lea	rax, [r13 + rax*8 + 0x18]
.label_271:
	mov	rsi, qword ptr [rax - 0x18]
	mov	qword ptr [rdx], rsi
	mov	rsi, qword ptr [rax - 0x10]
	mov	qword ptr [rdx + 0x60], rsi
	mov	rsi, qword ptr [rax - 8]
	mov	qword ptr [rdx + 0xc0], rsi
	mov	rsi, qword ptr [rax]
	mov	qword ptr [rdx + 0x120], rsi
	add	rdx, 0x180
	add	rax, 0x20
	add	rcx, -4
	jne	.label_271
.label_256:
	cmp	r12d, 1
	je	.label_72
	test	r12d, r12d
	jne	.label_71
	cmp	r15, 2
	jb	.label_71
.label_72:
	mov	byte ptr [byte ptr [rip + print_headers]],  1
.label_71:
	mov	al, 1
	test	bpl, bpl
	mov	dword ptr [rsp + 0x48], ebp
	jne	.label_277
	mov	al, 1
	xor	ecx, ecx
	jmp	.label_87
.label_235:
	mov	qword ptr [rsp + 0xb8], rax
	xor	r14d, r14d
	lea	rbp, [rsp + 0xd0]
.label_239:
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	ebx, 0
	mov	eax, 0xa
	cmovne	ebx, eax
	mov	rdx, r14
.label_283:
	test	rdx, rdx
	je	.label_281
	mov	rdi, rbp
	mov	esi, ebx
	call	memrchr
	test	rax, rax
	je	.label_281
	mov	rdx, rax
	sub	rdx, rbp
	dec	r15
	cmp	r15, -1
	jne	.label_283
	jmp	.label_184
.label_281:
	mov	rsi, qword ptr [rsp + 0xc0]
	cmp	r12, rsi
	je	.label_279
	add	r12, -0x2000
	xor	edx, edx
	mov	rbx, qword ptr [rsp + 0xa8]
	mov	edi, ebx
	mov	rsi, r12
	mov	rcx, qword ptr [rsp + 0x70]
	call	xlseek
	mov	edx, 0x2000
	mov	edi, ebx
	lea	rsi, [rsp + 0xd0]
	call	safe_read
	mov	r14, rax
	cmp	r14, -1
	je	.label_290
	test	r14, r14
	lea	rax, [r14 + r12]
	mov	qword ptr [rsp + 0xb8], rax
	lea	rbp, [rsp + 0xd0]
	jne	.label_239
	jmp	.label_28
.label_184:
	lea	rsi, [r14 - 1]
	sub	rsi, rdx
	je	.label_295
	inc	rax
	mov	rdi, rax
	call	xwrite_stdout
.label_295:
	mov	rcx, qword ptr [rsp + 0x88]
	sub	rcx, r14
	sub	rcx, r12
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0xa8]
	call	dump_remainder
	add	qword ptr [rsp + 0xb8], rax
.label_28:
	mov	r15, qword ptr [rsp + 0x68]
	mov	r14, qword ptr [rsp + 0x50]
	mov	r12, qword ptr [rsp + 0xa8]
	jmp	.label_16
.label_279:
	xor	edx, edx
	mov	rbx, qword ptr [rsp + 0xa8]
	mov	edi, ebx
	mov	r14, rsi
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rcx, rbp
	call	xlseek
	xor	edi, edi
	mov	rsi, rbp
	mov	edx, ebx
	mov	rcx, qword ptr [rsp + 0x88]
	call	dump_remainder
	add	rax, r14
	mov	qword ptr [rsp + 0xb8], rax
	jmp	.label_28
.label_290:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x70]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	rax, qword ptr [rsp + 0xb8]
	jmp	.label_39
.label_87:
	mov	byte ptr [rsp + 0x9f], al
	mov	r13, qword ptr [rsp + 0xc8]
	mov	qword ptr [rsp + 0xa0], r13
	lea	rbx, [rcx + rcx*2]
	shl	rbx, 5
	mov	rdi, qword ptr [r14 + rbx]
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	jne	.label_42
	cmp	byte ptr [rdi + 1], 0
	je	.label_46
.label_42:
	mov	qword ptr [rsp + 0x90], rcx
	mov	dword ptr [rsp + 0x78], 0
	xor	esi, esi
	xor	eax, eax
	call	open_safer
	mov	r12d, eax
	jmp	.label_50
.label_46:
	mov	qword ptr [rsp + 0x90], rcx
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	r12d, r12d
	mov	al, 1
	mov	dword ptr [rsp + 0x78], eax
	nop	word ptr [rax + rax]
.label_50:
	mov	qword ptr [rsp + 0xa8], r12
	mov	rcx, rbx
	mov	qword ptr [rsp + 0x80], rcx
	lea	rax, [r14 + rcx]
	mov	qword ptr [rsp + 0xb0], rax
	mov	bl,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	bl, 1
	cmp	r12d, -1
	sete	al
	and	al, bl
	xor	al, 1
	cmp	r12d, -1
	mov	byte ptr [r14 + rcx + 0x36], al
	je	.label_60
	movzx	eax,  byte ptr [byte ptr [rip + print_headers]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_24
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rcx, qword ptr [rax]
	movzx	eax, byte ptr [rcx]
	cmp	eax, 0x2d
	jne	.label_77
	cmp	byte ptr [rcx + 1], 0
	jne	.label_77
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
.label_77:
	mov	al,  byte ptr [byte ptr [rip + write_header.first_file]]
	and	al, 1
	mov	edx, OFFSET FLAT:.str_0
	mov	eax, OFFSET FLAT:.str.85
	cmovne	rdx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.84
	xor	eax, eax
	call	__printf_chk
	mov	byte ptr [byte ptr [rip + write_header.first_file]],  1
.label_24:
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rax, qword ptr [rax]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_86
	cmp	byte ptr [rax + 1], 0
	jne	.label_86
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	nop	dword ptr [rax + rax]
.label_86:
	mov	qword ptr [rsp + 0x70], rax
	cmp	byte ptr [byte ptr [rip + count_lines]],  0
	je	.label_173
	mov	edi, 1
	mov	esi, r12d
	lea	rdx, [rsp + 0x20d8]
	call	__fxstat
	test	eax, eax
	jne	.label_104
	cmp	byte ptr [byte ptr [rip + from_start]],  0
	je	.label_106
	test	r13, r13
	mov	eax, 0
	mov	qword ptr [rsp + 0xb8], rax
	je	.label_110
.label_168:
	mov	rbx, r13
	mov	edx, 0x2000
	mov	edi, r12d
	lea	rsi, [rsp + 0xd0]
	call	safe_read
	mov	r13b, 1
	test	rax, rax
	je	.label_16
	cmp	rax, -1
	mov	r13, rbx
	je	.label_121
	lea	rbx, [rsp + rax + 0xd0]
	add	qword ptr [rsp + 0xb8], rax
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	ebp, 0
	mov	eax, 0xa
	cmovne	ebp, eax
	lea	rax, [rsp + 0xd0]
.label_128:
	mov	rdx, rbx
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, ebp
	call	memchr
	test	rax, rax
	je	.label_168
	inc	rax
	dec	r13
	jne	.label_128
	cmp	rax, rbx
	jae	.label_110
	sub	rbx, rax
	mov	rdi, rax
	mov	rsi, rbx
	call	xwrite_stdout
.label_110:
	xor	edi, edi
	mov	rcx, -1
	mov	rsi, qword ptr [rsp + 0x70]
	mov	edx, r12d
	call	dump_remainder
	add	qword ptr [rsp + 0xb8], rax
	jmp	.label_134
	nop	word ptr cs:[rax + rax]
.label_60:
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_137
	mov	rbp, qword ptr [rsp + 0x80]
	mov	dword ptr [r14 + rbp + 0x38], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [r14 + rbp + 0x3c], ecx
	xor	bl, 1
	mov	byte ptr [r14 + rbp + 0x34], bl
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [r14 + rbp + 0x20], xmm0
	jmp	.label_273
	nop	
.label_173:
	mov	edi, 1
	mov	esi, r12d
	lea	rdx, [rsp + 0x20d8]
	call	__fxstat
	test	eax, eax
	je	.label_151
.label_104:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rsp + 0xb8], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x70]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	xor	r13d, r13d
	jmp	.label_16
.label_137:
	call	__errno_location
.label_273:
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.79
.label_278:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rax]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	jne	.label_166
	cmp	byte ptr [rsi + 1], 0
	jne	.label_166
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	nop	word ptr cs:[rax + rax]
.label_166:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	r13d, r13d
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_80
.label_151:
	mov	cl,  byte ptr [byte ptr [rip + presume_input_pipe]]
	xor	cl, 1
	test	r13, r13
	setns	al
	and	al, cl
	cmp	byte ptr [byte ptr [rip + from_start]],  0
	je	.label_178
	test	al, al
	je	.label_156
	mov	eax, dword ptr [rsp + 0x20f0]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_102
	mov	edx, 1
	mov	edi, r12d
	mov	rsi, r13
	mov	rcx, qword ptr [rsp + 0x70]
	call	xlseek
	test	rax, rax
	jns	.label_189
.label_102:
	mov	edx, 1
	mov	edi, r12d
	mov	rsi, r13
	call	lseek
	cmp	rax, -1
	je	.label_156
.label_189:
	mov	rbx, r13
	mov	r13, -1
	jmp	.label_192
.label_106:
	mov	al,  byte ptr [byte ptr [rip + presume_input_pipe]]
	and	al, 1
	jne	.label_195
	mov	eax, dword ptr [rsp + 0x20f0]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_195
	xor	esi, esi
	mov	edx, 1
	mov	edi, r12d
	call	lseek
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_195
	xor	esi, esi
	mov	edx, 2
	mov	edi, r12d
	call	lseek
	mov	rdx, rax
	sub	rdx, rbx
	jle	.label_210
	mov	r15, r13
	mov	r13b, 1
	test	rax, rax
	je	.label_214
	mov	qword ptr [rsp + 0xa8], r12
	mov	qword ptr [rsp + 0x50], r14
	test	r15, r15
	je	.label_218
	mov	qword ptr [rsp + 0xc0], rbx
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x33
	add	rcx, rdx
	and	rcx, 0xffffffffffffe000
	sub	rdx, rcx
	mov	ebx, 0x2000
	cmovne	rbx, rdx
	mov	r12, rax
	mov	qword ptr [rsp + 0x88], rax
	sub	r12, rbx
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0xa8]
	mov	edi, ebp
	mov	rsi, r12
	mov	rcx, qword ptr [rsp + 0x70]
	call	xlseek
	mov	edi, ebp
	lea	rsi, [rsp + 0xd0]
	mov	rdx, rbx
	call	safe_read
	mov	r14, rax
	cmp	r14, -1
	je	.label_234
	lea	rax, [r14 + r12]
	test	r14, r14
	je	.label_235
	mov	qword ptr [rsp + 0xb8], rax
	lea	rbp, [rsp + 0xd0]
	movsx	eax, byte ptr [r14 + rbp - 1]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	and	cl, 1
	mov	ecx, 0
	mov	edx, 0xa
	cmovne	ecx, edx
	cmp	eax, ecx
	setne	al
	movzx	eax, al
	sub	r15, rax
	jmp	.label_239
.label_156:
	test	r13, r13
	mov	ebx, 0
	je	.label_244
	nop	word ptr [rax + rax]
.label_254:
	mov	rbp, r13
	mov	edx, 0x2000
	mov	edi, r12d
	lea	rsi, [rsp + 0xd0]
	call	safe_read
	mov	r13b, 1
	test	rax, rax
	je	.label_248
	cmp	rax, -1
	je	.label_250
	add	rbx, rax
	mov	rcx, rbp
	sub	rcx, rax
	jb	.label_251
	mov	r13, rcx
	jne	.label_254
	jmp	.label_244
.label_178:
	mov	rbx, -1
	test	al, al
	je	.label_255
	mov	eax, dword ptr [rsp + 0x20f0]
	mov	ecx, 0x2000
	or	eax, ecx
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_257
	mov	rbp, qword ptr [rsp + 0x2108]
	jmp	.label_264
.label_255:
	mov	rbp, -1
	jmp	.label_264
.label_251:
	sub	rax, rbp
	jne	.label_266
.label_244:
	mov	r13, -1
	jmp	.label_192
.label_257:
	mov	rsi, r13
	neg	rsi
	mov	edx, 2
	mov	edi, r12d
	call	lseek
	mov	rbx, rax
	lea	rbp, [rbx + r13]
	cmp	rbx, -1
	cmove	rbp, rbx
.label_264:
	mov	rax, qword ptr [rsp + 0x2110]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	cmovb	rcx, rax
	test	rax, rax
	mov	eax, 0x200
	cmovle	rcx, rax
	cmp	rbp, rcx
	jle	.label_270
	cmp	rbx, -1
	jne	.label_275
	xor	esi, esi
	mov	edx, 1
	mov	edi, r12d
	mov	rcx, qword ptr [rsp + 0x70]
	call	xlseek
	mov	rbx, rax
.label_275:
	mov	rax, rbp
	sub	rax, rbx
	jle	.label_192
	cmp	rax, r13
	jbe	.label_192
	sub	rbp, r13
	xor	edx, edx
	mov	edi, r12d
	mov	rsi, rbp
	mov	rcx, qword ptr [rsp + 0x70]
	call	xlseek
	mov	rbx, rbp
	jmp	.label_192
.label_270:
	mov	r13, r12
	mov	qword ptr [rsp + 0x68], r15
	mov	edi, 0x2010
	call	xmalloc
	mov	r15, rax
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [r15 + 0x2000], xmm0
	mov	edi, 0x2010
	call	xmalloc
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xb8], rcx
	xor	ecx, ecx
	mov	r14, r15
	jmp	.label_284
.label_210:
	xor	edx, edx
	mov	edi, r12d
	mov	rsi, rbx
	mov	rcx, qword ptr [rsp + 0x70]
	call	xlseek
.label_195:
	mov	edi, 0x2018
	call	xmalloc
	mov	rbx, rax
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [rbx + 0x2000], xmm0
	mov	qword ptr [rbx + 0x2010], 0
	mov	edi, 0x2018
	call	xmalloc
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xb8], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x58], rbx
	jmp	.label_291
.label_250:
	call	__errno_location
	mov	qword ptr [rsp + 0xb8], rbx
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x70]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rbx, qword ptr [rsp + 0xb8]
	mov	rdx, rbp
	call	error
.label_248:
	mov	qword ptr [rsp + 0xb8], rbx
	jmp	.label_16
.label_266:
	lea	rdi, [rsp + rbp + 0xd0]
	mov	rsi, rax
	call	xwrite_stdout
	mov	r13, -1
.label_192:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x70]
	mov	edx, r12d
	mov	rcx, r13
	call	dump_remainder
	add	rax, rbx
	mov	qword ptr [rsp + 0xb8], rax
.label_134:
	mov	r13b, 1
	jmp	.label_16
.label_121:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x70]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_16
.label_214:
	xor	eax, eax
	mov	qword ptr [rsp + 0xb8], rax
	mov	r15, qword ptr [rsp + 0x68]
	jmp	.label_16
.label_116:
	mov	rdx, rax
	mov	rdx, qword ptr [rdx + 0x2010]
	mov	qword ptr [rsp + 0x58], rdx
	mov	r12, qword ptr [rsp + 0xa8]
	nop	dword ptr [rax + rax]
.label_291:
	mov	qword ptr [rsp + 0xc0], rcx
	mov	rbp, rbx
	jmp	.label_45
	nop	dword ptr [rax]
.label_109:
	mov	qword ptr [rsp + 0xc0], rdx
	mov	edi, 0x2018
	call	xmalloc
	mov	rbp, rbx
	mov	r12, qword ptr [rsp + 0xa8]
.label_45:
	mov	qword ptr [rsp + 0x88], rbp
	mov	rbx, rax
	lea	r14, [rbx + 0x2008]
	jmp	.label_51
	nop	word ptr cs:[rax + rax]
.label_99:
	mov	qword ptr [rsp + 0xc0], rdx
	add	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r15
	call	memcpy
	movdqu	xmm0, xmmword ptr [rbx + 0x2000]
	movdqu	xmm1, xmmword ptr [rbp + 0x2000]
	paddq	xmm1, xmm0
	movdqu	xmmword ptr [rbp + 0x2000], xmm1
	mov	r12, qword ptr [rsp + 0xa8]
	mov	r13, qword ptr [rsp + 0xa0]
.label_51:
	mov	edx, 0x2000
	mov	edi, r12d
	mov	rsi, rbx
	call	safe_read
	mov	r15, rax
	lea	rax, [r15 + 1]
	cmp	rax, 2
	jb	.label_41
	mov	qword ptr [rbx + 0x2000], r15
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [r14], xmm0
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	r13d, 0
	mov	eax, 0xa
	cmovne	r13d, eax
	mov	rdi, rbx
	mov	esi, r13d
	mov	rdx, r15
	call	memchr
	test	rax, rax
	je	.label_82
	lea	rbp, [rbx + r15]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_92:
	inc	rax
	inc	r12
	mov	qword ptr [r14], r12
	mov	rdx, rbp
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r13d
	call	memchr
	test	rax, rax
	jne	.label_92
	jmp	.label_94
	nop	word ptr cs:[rax + rax]
.label_82:
	xor	r12d, r12d
.label_94:
	add	qword ptr [rsp + 0xb8], r15
	mov	rax, qword ptr [rsp + 0xc0]
	add	rax, r12
	mov	rdx, rax
	mov	rbp, qword ptr [rsp + 0x88]
	mov	rdi, qword ptr [rbp + 0x2000]
	mov	rax, r15
	add	rax, rdi
	cmp	rax, 0x1fff
	jbe	.label_99
	mov	qword ptr [rbp + 0x2010], rbx
	mov	rcx, rdx
	mov	rax, qword ptr [rsp + 0x58]
	sub	rcx, qword ptr [rax + 0x2008]
	mov	r13, qword ptr [rsp + 0xa0]
	cmp	rcx, r13
	jbe	.label_109
	jmp	.label_116
.label_41:
	mov	rdi, rbx
	call	free
	cmp	r15, -1
	je	.label_118
	test	r13, r13
	mov	rdx, r13
	mov	r13b, 1
	mov	r15, qword ptr [rsp + 0x68]
	mov	r14, qword ptr [rsp + 0x50]
	je	.label_120
	mov	rax, qword ptr [rbp + 0x2000]
	test	rax, rax
	je	.label_120
	mov	qword ptr [rsp + 0xa8], r12
	movsx	eax, byte ptr [rax + rbp - 1]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	and	cl, 1
	mov	r15d, 0
	mov	ecx, 0xa
	cmovne	r15d, ecx
	cmp	eax, r15d
	jne	.label_126
	mov	rdi, qword ptr [rsp + 0xc0]
	jmp	.label_129
.label_118:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x70]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r15, qword ptr [rsp + 0x68]
	mov	r14, qword ptr [rsp + 0x50]
	jmp	.label_120
.label_126:
	inc	qword ptr [rbp + 0x2008]
	mov	rdi, qword ptr [rsp + 0xc0]
	inc	rdi
.label_129:
	mov	rbp, r14
	mov	rax, rdi
	mov	rsi, qword ptr [rsp + 0x58]
	sub	rax, qword ptr [rsi + 0x2008]
	mov	r12, rdx
	cmp	rax, r12
	mov	rbx, rsi
	jbe	.label_142
	nop	dword ptr [rax]
.label_209:
	mov	rdi, rax
	mov	rbx, qword ptr [rbx + 0x2010]
	sub	rax, qword ptr [rbx + 0x2008]
	cmp	rax, r12
	ja	.label_209
.label_142:
	mov	r14, qword ptr [rbx + 0x2000]
	add	r14, rbx
	cmp	rdi, r12
	jbe	.label_152
	sub	r12, rdi
	mov	rax, rbx
	nop	dword ptr [rax + rax]
.label_158:
	mov	rdx, r14
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r15d
	call	memchr
	test	rax, rax
	je	.label_229
	inc	rax
	inc	r12
	jne	.label_158
	jmp	.label_160
.label_152:
	mov	rax, rbx
.label_160:
	sub	r14, rax
	mov	rdi, rax
	mov	rsi, r14
	jmp	.label_161
	nop	word ptr cs:[rax + rax]
.label_165:
	mov	rsi, qword ptr [rbx + 0x2000]
	mov	rdi, rbx
.label_161:
	call	xwrite_stdout
	mov	rbx, qword ptr [rbx + 0x2010]
	test	rbx, rbx
	jne	.label_165
	mov	r15, qword ptr [rsp + 0x68]
	mov	r14, rbp
	mov	r12, qword ptr [rsp + 0xa8]
.label_120:
	mov	rdi, qword ptr [rsp + 0x58]
	test	rdi, rdi
	je	.label_169
	nop	word ptr cs:[rax + rax]
.label_175:
	mov	rbx, qword ptr [rdi + 0x2010]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_175
.label_169:
	test	r13b, r13b
	setne	r13b
	jmp	.label_16
.label_218:
	mov	qword ptr [rsp + 0xb8], rax
	jmp	.label_28
.label_234:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x70]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	rax, qword ptr [rsp + 0x88]
.label_39:
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xb8], rax
	jmp	.label_28
.label_259:
	mov	rax, r14
	mov	r14, qword ptr [r14 + 0x2008]
.label_284:
	mov	r12, r15
	mov	r15, rax
	mov	rbx, rcx
	jmp	.label_190
	nop	word ptr cs:[rax + rax]
.label_204:
	add	rdi, r12
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	mov	rax, qword ptr [r15 + 0x2000]
	add	qword ptr [r12 + 0x2000], rax
.label_190:
	mov	edx, 0x2000
	mov	edi, r13d
	mov	rsi, r15
	call	safe_read
	mov	rbp, rax
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_199
	add	qword ptr [rsp + 0xb8], rbp
	mov	qword ptr [r15 + 0x2000], rbp
	mov	qword ptr [r15 + 0x2008], 0
	add	rbx, rbp
	mov	rdi, qword ptr [r12 + 0x2000]
	mov	rax, rbp
	add	rax, rdi
	cmp	rax, 0x1fff
	jbe	.label_204
	mov	qword ptr [r12 + 0x2008], r15
	mov	rcx, rbx
	sub	rcx, qword ptr [r14 + 0x2000]
	cmp	rcx, qword ptr [rsp + 0xa0]
	ja	.label_259
	mov	edi, 0x2010
	call	xmalloc
	mov	r12, r15
	mov	r15, rax
	jmp	.label_190
.label_199:
	mov	rdi, r15
	call	free
	cmp	rbp, -1
	je	.label_293
	mov	rsi, qword ptr [r14 + 0x2000]
	mov	rax, rbx
	sub	rax, rsi
	mov	rcx, qword ptr [rsp + 0xa0]
	cmp	rax, rcx
	mov	rbp, r14
	mov	r15, qword ptr [rsp + 0x68]
	jbe	.label_224
	nop	word ptr cs:[rax + rax]
.label_230:
	mov	rbx, rax
	mov	rbp, qword ptr [rbp + 0x2008]
	mov	rsi, qword ptr [rbp + 0x2000]
	sub	rax, rsi
	cmp	rax, rcx
	ja	.label_230
.label_224:
	sub	rbx, rcx
	mov	eax, 0
	cmovbe	rbx, rax
	lea	rdi, [rbp + rbx]
	sub	rsi, rbx
	call	xwrite_stdout
	mov	rbx, qword ptr [rbp + 0x2008]
	mov	bpl, 1
	test	rbx, rbx
	mov	r12, r13
	je	.label_105
	nop	word ptr cs:[rax + rax]
.label_243:
	mov	rsi, qword ptr [rbx + 0x2000]
	mov	rdi, rbx
	call	xwrite_stdout
	mov	rbx, qword ptr [rbx + 0x2008]
	test	rbx, rbx
	jne	.label_243
	jmp	.label_105
.label_293:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x70]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
	mov	r15, qword ptr [rsp + 0x68]
	mov	r12, r13
.label_105:
	test	r14, r14
	je	.label_253
	nop	dword ptr [rax]
.label_242:
	mov	rbx, qword ptr [r14 + 0x2008]
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_242
.label_253:
	test	bpl, bpl
	setne	r13b
	mov	r14, qword ptr [rsp + 0x50]
	nop	word ptr cs:[rax + rax]
.label_16:
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_265
	mov	al, r13b
	not	al
	movzx	eax, al
	shl	eax, 0x1f
	sar	eax, 0x1f
	mov	r15, qword ptr [rsp + 0x80]
	lea	rbx, [r14 + r15 + 0x3c]
	mov	dword ptr [r14 + r15 + 0x3c], eax
	mov	edi, 1
	mov	esi, r12d
	lea	rdx, [rsp + 0xd0]
	call	__fxstat
	test	eax, eax
	js	.label_269
	mov	eax, dword ptr [rsp + 0xe8]
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0x7fff
	jg	.label_272
	cmp	ecx, 0x1000
	je	.label_274
	cmp	ecx, 0x2000
	je	.label_274
	jmp	.label_276
	nop	word ptr [rax + rax]
.label_265:
	mov	eax, dword ptr [rsp + 0x78]
	test	al, al
	jne	.label_80
	mov	edi, r12d
	call	close
	test	eax, eax
	je	.label_80
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	jmp	.label_278
.label_269:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbx], ecx
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rax]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	jne	.label_280
	cmp	byte ptr [rsi + 1], 0
	jne	.label_280
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_280:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_286
.label_272:
	cmp	ecx, 0x8000
	je	.label_274
	cmp	ecx, 0xc000
	jne	.label_276
.label_274:
	test	r13b, r13b
	je	.label_286
	mov	ecx, dword ptr [rsp + 0x78]
	test	cl, cl
	mov	ecx, 1
	mov	edx, 0xffffffff
	cmovne	ecx, edx
	mov	dword ptr [r14 + r15 + 0x38], r12d
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	qword ptr [r14 + r15 + 8], rdx
	movups	xmm0, xmmword ptr [rsp + 0x128]
	movups	xmmword ptr [r14 + r15 + 0x10], xmm0
	movapd	xmm0, xmmword ptr [rsp + 0xd0]
	movupd	xmmword ptr [r14 + r15 + 0x20], xmm0
	mov	dword ptr [r14 + r15 + 0x30], eax
	mov	dword ptr [r14 + r15 + 0x40], ecx
	mov	qword ptr [r14 + r15 + 0x58], 0
	mov	byte ptr [r14 + r15 + 0x34], 0
	mov	rbx, r15
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rsi, qword ptr [rax]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	jne	.label_289
	cmp	byte ptr [rsi + 1], 0
	mov	r15, qword ptr [rsp + 0x68]
	jne	.label_22
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	jmp	.label_22
.label_276:
	mov	r13, r12
	lea	rax, [r14 + r15 + 0x36]
	mov	dword ptr [rbx], 0xffffffff
	mov	byte ptr [rax], 0
	lea	rbx, [r14 + r15 + 0x34]
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	al, 1
	xor	al, 1
	mov	byte ptr [r14 + r15 + 0x34], al
	mov	r12, r14
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rdx, qword ptr [rax]
	movzx	eax, byte ptr [rdx]
	cmp	eax, 0x2d
	jne	.label_34
	cmp	byte ptr [rdx + 1], 0
	jne	.label_34
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
.label_34:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rbp, rax
	cmp	byte ptr [rbx], 0
	mov	r8d, OFFSET FLAT:.str_0
	je	.label_43
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
.label_43:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	call	error
	mov	r14, r12
	mov	r12, r13
	nop	word ptr cs:[rax + rax]
.label_286:
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	al, 1
	xor	al, 1
	mov	byte ptr [r14 + r15 + 0x34], al
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rbx, qword ptr [rax]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_61
	cmp	byte ptr [rbx + 1], 0
	jne	.label_61
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	nop	dword ptr [rax]
.label_61:
	lea	eax, [r12 + 1]
	cmp	eax, 2
	jb	.label_68
	mov	edi, r12d
	call	close
	test	eax, eax
	je	.label_68
	call	__errno_location
	mov	r13, r12
	mov	r12, r14
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	r14, r12
	mov	rdx, rbp
	mov	r8d, r13d
	call	error
.label_68:
	mov	dword ptr [r14 + r15 + 0x38], 0xffffffff
	xor	r13d, r13d
	mov	r15, qword ptr [rsp + 0x68]
	jmp	.label_80
.label_289:
	mov	r15, qword ptr [rsp + 0x68]
.label_22:
	mov	edi, r12d
	call	fremote
	mov	byte ptr [r14 + rbx + 0x35], al
	nop	word ptr cs:[rax + rax]
.label_80:
	test	r13b, r13b
	setne	al
	mov	cl, byte ptr [rsp + 0x9f]
	and	cl, al
	mov	al, cl
	mov	rcx, qword ptr [rsp + 0x90]
	inc	rcx
	cmp	rcx, r15
	jb	.label_87
.label_277:
	mov	byte ptr [rsp + 0x9f], al
	cmp	byte ptr [byte ptr [rip + forever]],  0
	sete	al
	mov	ecx, dword ptr [rsp + 0x48]
	or	al, cl
	jne	.label_54
	lea	rcx, [r14 + 0x38]
	xor	eax, eax
	mov	edx, 0xf000
	mov	rsi, r15
.label_117:
	mov	rdi, qword ptr [rcx - 0x38]
	movzx	ebp, byte ptr [rdi]
	cmp	ebp, 0x2d
	jne	.label_103
	cmp	byte ptr [rdi + 1], 0
	jne	.label_103
	cmp	byte ptr [rcx - 4], 0
	jne	.label_103
	cmp	dword ptr [rcx], 0
	js	.label_103
	mov	edi, dword ptr [rcx - 8]
	and	edi, edx
	cmp	edi, 0x1000
	jne	.label_103
	mov	dword ptr [rcx], 0xffffffff
	mov	byte ptr [rcx - 4], 1
	jmp	.label_112
	nop	word ptr cs:[rax + rax]
.label_103:
	inc	rax
.label_112:
	add	rcx, 0x60
	dec	rsi
	jne	.label_117
	test	rax, rax
	je	.label_54
	lea	rdx, [rsp + 0x20d8]
	mov	edi, 1
	mov	esi, 1
	call	__fxstat
	test	eax, eax
	js	.label_124
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20f0]
	cmp	eax, 0x1000
	sete	byte ptr [byte ptr [rip + monitor_output]]
	mov	cl,  byte ptr [byte ptr [rip + disable_inotify]]
	xor	eax, eax
	and	cl, 1
	jne	.label_119
	mov	rcx, r14
.label_67:
	cmp	byte ptr [rcx + 0x34], 0
	jne	.label_127
	mov	rdx, qword ptr [rcx]
	movzx	esi, byte ptr [rdx]
	cmp	esi, 0x2d
	jne	.label_127
	cmp	byte ptr [rdx + 1], 0
	je	.label_47
	nop	word ptr [rax + rax]
.label_127:
	inc	rax
	add	rcx, 0x60
	cmp	rax, r15
	jb	.label_67
	lea	rax, [r14 + 0x38]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_136:
	cmp	dword ptr [rax], 0
	js	.label_135
	cmp	byte ptr [rax - 3], 0
	jne	.label_47
.label_135:
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r15
	jb	.label_136
	lea	rax, [r14 + 0x38]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_143:
	mov	r13, r14
	cmp	dword ptr [rax], 0
	js	.label_139
	cmp	byte ptr [rax - 3], 0
	je	.label_140
.label_139:
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r15
	mov	r14, r13
	jb	.label_143
.label_47:
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
.label_119:
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
	xor	eax, eax
	cmp	r15, 1
	jne	.label_149
	mov	ecx,  dword ptr [dword ptr [rip + pid]]
	test	ecx, ecx
	jne	.label_149
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	jne	.label_149
	cmp	dword ptr [r14 + 0x38], -1
	je	.label_154
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x30]
	cmp	eax, 0x8000
	setne	al
	jmp	.label_149
.label_154:
	xor	eax, eax
.label_149:
	lea	rcx, [r15 - 1]
	mov	qword ptr [rsp + 0x70], rcx
	movzx	eax, al
	mov	dword ptr [rsp + 0xc0], eax
	test	al, al
	sete	al
	movzx	eax, al
	shl	eax, 0xb
	mov	dword ptr [rsp + 0x78], eax
	lea	rax, [r14 + 0x38]
	mov	qword ptr [rsp + 0x88], rax
	mov	rbp, r14
	xor	ebx, ebx
.label_63:
	mov	dword ptr [rsp + 0x58], ebx
	xor	r12d, r12d
	xor	r14d, r14d
	jmp	.label_10
.label_258:
	mov	rax,  qword ptr [word ptr [rip + max_n_unchanged_stats_between_opens]]
	mov	rcx, qword ptr [rbp + r13 + 0x58]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + r13 + 0x58], rdx
	cmp	rax, rcx
	ja	.label_164
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_164
	lea	rbx, [rbp + r13 + 0x58]
	cmp	dword ptr [rsi], 0
	setne	al
	movzx	esi, al
	mov	rdi, qword ptr [rsp + 0x80]
	call	recheck
	mov	qword ptr [rbx], 0
	jmp	.label_164
	nop	word ptr [rax + rax]
.label_10:
	lea	r13, [r12 + r12*2]
	shl	r13, 5
	cmp	byte ptr [rbp + r13 + 0x34], 0
	jne	.label_164
	lea	rdi, [rbp + r13]
	mov	edx, dword ptr [rbp + r13 + 0x38]
	test	edx, edx
	js	.label_179
	mov	rbx, qword ptr [rdi]
	mov	qword ptr [rsp + 0x80], rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_182
	cmp	byte ptr [rbx + 1], 0
	jne	.label_182
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	ebx, edx
	mov	edx, 5
	call	dcgettext
	mov	edx, ebx
	mov	rbx, rax
	nop	word ptr [rax + rax]
.label_182:
	lea	rax, [rbp + r13 + 0x30]
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, dword ptr [rbp + r13 + 0x30]
	mov	dword ptr [rsp + 0x90], eax
	lea	rsi, [rbp + r13 + 0x40]
	mov	eax, dword ptr [rsp + 0xc0]
	cmp	dword ptr [rbp + r13 + 0x40], eax
	je	.label_188
	mov	qword ptr [rsp + 0xb0], rsi
	mov	qword ptr [rsp + 0xb8], rbx
	mov	esi, 3
	xor	eax, eax
	mov	edi, edx
	mov	dword ptr [rsp + 0xa0], edx
	call	rpl_fcntl
	test	eax, eax
	js	.label_202
	mov	edx, eax
	or	edx, dword ptr [rsp + 0x78]
	cmp	edx, eax
	je	.label_203
	mov	esi, 4
	xor	eax, eax
	mov	edi, dword ptr [rsp + 0xa0]
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_202
.label_203:
	mov	eax, dword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	dword ptr [rsi], eax
	mov	rbx, qword ptr [rsp + 0xb8]
	mov	edx, dword ptr [rsp + 0xa0]
	jmp	.label_188
.label_179:
	mov	esi, dword ptr [rsp + 0xc0]
	call	recheck
	jmp	.label_164
.label_202:
	mov	rbx, r15
	mov	rax, qword ptr [rsp + 0xa8]
	mov	r15d, dword ptr [rax]
	and	r15d, 0xf000
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	r15d, 0x8000
	jne	.label_222
	cmp	eax, 1
	jne	.label_222
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	eax, dword ptr [rsi]
	mov	r15, rbx
	mov	edx, dword ptr [rsp + 0xa0]
	mov	rbx, qword ptr [rsp + 0xb8]
.label_188:
	test	eax, eax
	jne	.label_153
	mov	qword ptr [rsp + 0xb0], rsi
	mov	qword ptr [rsp + 0xb8], rbx
	mov	edi, 1
	mov	esi, edx
	mov	ebx, edx
	lea	rdx, [rsp + 0xd0]
	call	__fxstat
	test	eax, eax
	je	.label_237
	lea	rax, [rbp + r13 + 0x38]
	mov	dword ptr [rax], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp + r13 + 0x3c], ecx
	mov	r13d, ebx
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0xb8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebx
	call	error
	mov	edi, r13d
	call	close
	jmp	.label_164
.label_237:
	mov	dword ptr [rsp + 0xa0], ebx
	mov	rax, qword ptr [rsp + 0xa8]
	mov	ecx, dword ptr [rax]
	mov	eax, dword ptr [rsp + 0xe8]
	cmp	ecx, eax
	mov	rsi, qword ptr [rsp + 0xb0]
	jne	.label_245
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_249
	mov	rcx, qword ptr [rbp + r13 + 8]
	cmp	rcx, qword ptr [rsp + 0x100]
	jne	.label_245
.label_249:
	mov	rcx, qword ptr [rbp + r13 + 0x10]
	cmp	rcx, qword ptr [rsp + 0x128]
	jne	.label_245
	mov	ecx, dword ptr [rbp + r13 + 0x18]
	cmp	ecx, dword ptr [rsp + 0x130]
	je	.label_258
.label_245:
	movupd	xmm0, xmmword ptr [rsp + 0x128]
	movupd	xmmword ptr [rbp + r13 + 0x10], xmm0
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	dword ptr [rcx], eax
	mov	qword ptr [rbp + r13 + 0x58], 0
	mov	eax, dword ptr [rsp + 0x90]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_262
	mov	rax, qword ptr [rsp + 0x100]
	cmp	rax, qword ptr [rbp + r13 + 8]
	jge	.label_262
	mov	qword ptr [rsp + 0x68], r15
	lea	rax, [rbp + r13 + 8]
	mov	qword ptr [rsp + 0xa8], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.115
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	r15, qword ptr [rsp + 0xb8]
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	xor	esi, esi
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0xa0]
	mov	rcx, r15
	call	xlseek
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	rax, qword ptr [rsp + 0xa8]
	mov	qword ptr [rax], 0
	mov	r15, qword ptr [rsp + 0x68]
.label_262:
	cmp	r12, qword ptr [rsp + 0x70]
	mov	rbx, qword ptr [rsp + 0xb8]
	mov	edx, dword ptr [rsp + 0xa0]
	je	.label_153
	movzx	eax,  byte ptr [byte ptr [rip + print_headers]]
	and	eax, 1
	cmp	eax, 1
	mov	qword ptr [rsp + 0x70], r12
	jne	.label_153
	mov	al,  byte ptr [byte ptr [rip + write_header.first_file]]
	and	al, 1
	mov	edx, OFFSET FLAT:.str_0
	mov	eax, OFFSET FLAT:.str.85
	cmovne	rdx, rax
	mov	edi, 1
	mov	qword ptr [rsp + 0xb0], rsi
	mov	esi, OFFSET FLAT:.str.84
	xor	eax, eax
	mov	rcx, rbx
	call	__printf_chk
	mov	rsi, qword ptr [rsp + 0xb0]
	mov	edx, dword ptr [rsp + 0xa0]
	mov	byte ptr [byte ptr [rip + write_header.first_file]],  1
	mov	qword ptr [rsp + 0x70], r12
.label_153:
	mov	rcx, -2
	cmp	dword ptr [rsi], 0
	jne	.label_238
	mov	eax, dword ptr [rsp + 0x90]
	and	eax, 0xf000
	mov	rcx, -1
	cmp	eax, 0x8000
	jne	.label_238
	cmp	byte ptr [rbp + r13 + 0x35], 0
	je	.label_238
	mov	rcx, qword ptr [rsp + 0x100]
	sub	rcx, qword ptr [rbp + r13 + 8]
.label_238:
	xor	edi, edi
	mov	rsi, rbx
	call	dump_remainder
	test	rax, rax
	setne	cl
	and	r14b, 1
	or	r14b, cl
	add	qword ptr [rbp + r13 + 8], rax
	nop	word ptr cs:[rax + rax]
.label_164:
	inc	r12
	cmp	r12, r15
	jb	.label_10
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 1
	jne	.label_14
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	je	.label_18
.label_14:
	xor	al, 1
	mov	rcx, qword ptr [rsp + 0x88]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_26:
	cmp	dword ptr [rcx], 0
	jns	.label_18
	cmp	byte ptr [rcx - 4], 0
	setne	bl
	or	bl, al
	movzx	esi, bl
	cmp	esi, 1
	jne	.label_18
	inc	rdx
	add	rcx, 0x60
	cmp	rdx, r15
	jb	.label_26
	jmp	.label_29
	nop	word ptr [rax + rax]
.label_18:
	and	r14b, 1
	sete	al
	cmp	dword ptr [rsp + 0xc0], 0
	jne	.label_33
	test	al, al
	je	.label_35
.label_33:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_37
.label_35:
	cmp	byte ptr [byte ptr [rip + monitor_output]],  0
	je	.label_38
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0x2170], xmm0
	xor	eax, eax
	mov	ecx, 0x10
	lea	rbx, [rsp + 0xd0]
	mov	rdi, rbx
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	edi, 1
	call	__fdelt_chk
	or	byte ptr [rsp + rax*8 + 0xd0], 2
	mov	edi, 2
	xor	edx, edx
	xor	ecx, ecx
	mov	rsi, rbx
	lea	r8, [rsp + 0x2170]
	call	select
	cmp	eax, 1
	je	.label_49
.label_38:
	xor	r12d, r12d
	test	r14b, r14b
	mov	r14d, 0
	jne	.label_10
	mov	eax, dword ptr [rsp + 0x58]
	test	al, 1
	jne	.label_54
	mov	edi,  dword ptr [dword ptr [rip + pid]]
	xor	ebx, ebx
	test	edi, edi
	je	.label_62
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_62
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	bl
	jne	.label_63
.label_62:
	movsd	xmm0, qword ptr [rsp + 0x60]
	call	xnanosleep
	test	eax, eax
	je	.label_63
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.117
	jmp	.label_268
.label_29:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.101
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_54:
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_55
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_98
.label_55:
	movzx	eax, byte ptr [rsp + 0x9f]
	xor	eax, 1
.label_247:
	add	rsp, 0x2188
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_140:
	mov	r12, r15
	xor	ebp, ebp
	lea	r15, [rsp + 0xd0]
	mov	r14d, 0xf000
	mov	rbx, r13
	nop	word ptr cs:[rax + rax]
.label_100:
	mov	rsi, qword ptr [rbx]
	mov	edi, 1
	mov	rdx, r15
	call	__lxstat
	test	eax, eax
	jne	.label_95
	mov	eax, dword ptr [rsp + 0xe8]
	and	eax, r14d
	cmp	eax, 0xa000
	je	.label_96
.label_95:
	inc	rbp
	add	rbx, 0x60
	cmp	rbp, r12
	jb	.label_100
	mov	r14, r13
	lea	rax, [r14 + 0x38]
	xor	ecx, ecx
	mov	edx, 0xf000
	mov	r15, r12
	nop	word ptr cs:[rax + rax]
.label_113:
	cmp	dword ptr [rax], 0
	js	.label_108
	mov	esi, dword ptr [rax - 8]
	and	esi, edx
	cmp	esi, 0x8000
	je	.label_108
	cmp	esi, 0x1000
	jne	.label_47
.label_108:
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r15
	jb	.label_113
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	jne	.label_114
	mov	al, byte ptr [rsp + 0x9f]
	xor	al, 1
	jne	.label_47
.label_114:
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	and	al, 1
	jne	.label_119
	call	inotify_init
	mov	r12d, eax
	mov	dword ptr [rsp + 0xb8], r12d
	test	r12d, r12d
	js	.label_66
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_37
	xor	esi, esi
	mov	edx, OFFSET FLAT:wd_hasher
	mov	ecx, OFFSET FLAT:wd_comparator
	xor	r8d, r8d
	mov	rdi, r15
	call	hash_initialize
	mov	qword ptr [rsp + 0xa8], rax
	test	rax, rax
	je	.label_11
	mov	dword ptr [rsp + 0xb0], 0xc06
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	je	.label_130
	mov	dword ptr [rsp + 0xb0], 2
.label_130:
	mov	rbp, r14
	xor	eax, eax
	mov	qword ptr [rsp + 0xa0], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x90], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0xc0], rax
	xor	r13d, r13d
.label_187:
	cmp	byte ptr [rbp + 0x34], 0
	jne	.label_125
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	strlen
	mov	rcx, qword ptr [rsp + 0xc0]
	cmp	rcx, rax
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0xc0], rcx
	mov	dword ptr [rbp + 0x44], 0xffffffff
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_141
	mov	r12, r14
	mov	qword ptr [rsp + 0x68], r15
	mov	rdi, rbx
	call	dir_len
	mov	r15, rax
	mov	r14b, byte ptr [rbx + r15]
	mov	rdi, rbx
	call	last_component
	sub	rax, rbx
	mov	qword ptr [rbp + 0x50], rax
	mov	byte ptr [rbx + r15], 0
	test	r15, r15
	mov	esi, OFFSET FLAT:.str.96
	je	.label_155
	mov	rsi, qword ptr [rbp]
.label_155:
	mov	edx, 0x784
	mov	edi, dword ptr [rsp + 0xb8]
	call	inotify_add_watch
	mov	dword ptr [rbp + 0x48], eax
	mov	rax, qword ptr [rbp]
	mov	byte ptr [rax + r15], r14b
	cmp	dword ptr [rbp + 0x48], 0
	js	.label_241
	mov	rbx, qword ptr [rbp]
	mov	r15, qword ptr [rsp + 0x68]
	mov	r14, r12
	mov	r12d, dword ptr [rsp + 0xb8]
.label_141:
	mov	edi, r12d
	mov	rsi, rbx
	mov	edx, dword ptr [rsp + 0xb0]
	call	inotify_add_watch
	mov	dword ptr [rbp + 0x44], eax
	test	eax, eax
	js	.label_167
	mov	rdi, qword ptr [rsp + 0xa8]
	mov	rsi, rbp
	call	hash_insert
	mov	cl, 1
	mov	qword ptr [rsp + 0xa0], rcx
	test	rax, rax
	jne	.label_125
	jmp	.label_11
.label_167:
	mov	qword ptr [rsp + 0x50], r14
	mov	r14, r15
	cmp	dword ptr [rbp + 0x38], -1
	je	.label_174
	mov	al, 1
	mov	qword ptr [rsp + 0x90], rax
.label_174:
	call	__errno_location
	mov	rbx, rax
	mov	r15d, dword ptr [rbx]
	mov	eax, r15d
	or	eax, 0x10
	cmp	eax, 0x1c
	je	.label_176
	cmp	r15d, dword ptr [rbp + 0x3c]
	je	.label_180
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.99
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rbp]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
.label_180:
	mov	r15, r14
	mov	r14, qword ptr [rsp + 0x50]
.label_125:
	inc	r13
	add	rbp, 0x60
	cmp	r13, r15
	jb	.label_187
	mov	eax,  dword ptr [dword ptr [rip + follow_mode]]
	mov	rcx, qword ptr [rsp + 0x90]
	test	cl, 1
	je	.label_145
	cmp	eax, 2
	jne	.label_145
	call	__errno_location
	mov	rbx, rax
	jmp	.label_193
.label_96:
	mov	r15, r12
	mov	r14, r13
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
	jmp	.label_119
.label_145:
	mov	r13, r14
	mov	rdx, qword ptr [rsp + 0xa0]
	test	dl, 1
	jne	.label_197
	cmp	eax, 2
	je	.label_205
.label_197:
	lea	rax, [r15 + r15*2]
	mov	r14, r15
	shl	rax, 5
	lea	rax, [rax + r13 - 0x60]
	mov	qword ptr [rsp + 0x2168], rax
	xor	ebp, ebp
	lea	r15, [rsp + 0x2168]
	mov	rbx, r13
.label_31:
	cmp	byte ptr [rbx + 0x34], 0
	jne	.label_208
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_211
	xor	esi, esi
	mov	rdi, rbx
	call	recheck
	jmp	.label_216
.label_211:
	cmp	dword ptr [rbx + 0x38], -1
	je	.label_216
	mov	rsi, qword ptr [rbx]
	mov	edi, 1
	lea	rdx, [rsp + 0xd0]
	call	__xstat
	test	eax, eax
	jne	.label_216
	mov	rax, qword ptr [rbx + 0x20]
	cmp	rax, qword ptr [rsp + 0xd0]
	jne	.label_185
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rsp + 0xd8]
	jne	.label_185
.label_216:
	mov	rdi, rbx
	mov	rsi, r15
	call	check_fspec
.label_208:
	inc	rbp
	add	rbx, 0x60
	cmp	rbp, r14
	jb	.label_31
	mov	rdi, qword ptr [rsp + 0xc0]
	add	rdi, 0x11
	mov	qword ptr [rsp + 0xc0], rdi
	call	xmalloc
	mov	dword ptr [rsp + 0xb8], r12d
	mov	edx, r12d
	sar	edx, 0x1f
	shr	edx, 0x1a
	add	edx, r12d
	and	edx, 0xc0
	mov	ecx, r12d
	sub	ecx, edx
	mov	edx, 1
	shl	rdx, cl
	mov	qword ptr [rsp + 0x80], rdx
	movsxd	rcx, r12d
	mov	qword ptr [rsp + 0x78], rcx
	test	r12d, r12d
	mov	ecx, 1
	cmovg	ecx, r12d
	inc	ecx
	mov	dword ptr [rsp + 0x70], ecx
	movsd	xmm1, qword ptr [rsp + 0x60]
	cvttsd2si	rcx, xmm1
	mov	qword ptr [rsp + 0x30], rcx
	cvtsi2sd	xmm0, rcx
	subsd	xmm1, xmm0
	mulsd	xmm1,  qword ptr [word ptr [rip + label_232]]
	cvttsd2si	rcx, xmm1
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 0x50], r13
	lea	rcx, [r13 + 0x48]
	mov	qword ptr [rsp + 0x48], rcx
	lea	rcx, [r13 + 0x50]
	mov	qword ptr [rsp + 0x38], rcx
	mov	ebx, 3
	mov	dword ptr [rsp + 0x88], 0
	jmp	.label_233
.label_241:
	call	__errno_location
	mov	rbx, rax
	mov	r13d, dword ptr [rbx]
	cmp	r13d, 0x1c
	mov	r14, r12
	jne	.label_252
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.98
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_263
.label_176:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.98
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r15, r14
	mov	r14, qword ptr [rsp + 0x50]
	jmp	.label_193
.label_252:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.97
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rsi, qword ptr [rbp]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, r15
	call	error
.label_263:
	mov	r15, qword ptr [rsp + 0x68]
	mov	r12d, dword ptr [rsp + 0xb8]
.label_193:
	mov	rdi, qword ptr [rsp + 0xa8]
	call	hash_free
	mov	dword ptr [rbx], 0
	jmp	.label_66
.label_185:
	call	__errno_location
	mov	rbp, rax
	mov	eax, dword ptr [rbp]
	mov	dword ptr [rsp + 0xc0], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.100
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rsi, qword ptr [rbx]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	jne	.label_236
	cmp	byte ptr [rsi + 1], 0
	jne	.label_236
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_236:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0xc0]
	mov	rdx, r15
	call	error
	mov	rdi, qword ptr [rsp + 0xa8]
	call	hash_free
	mov	dword ptr [rbp], 0
	mov	r15, r14
	mov	r14, r13
	jmp	.label_66
.label_84:
	lea	eax, [rbp - 0x30]
	cmp	eax, 0xa
	jae	.label_93
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebp
	call	error
.label_76:
	mov	rsi, qword ptr [rsp + 0xc0]
	add	rsi, rsi
	mov	qword ptr [rsp + 0xc0], rsi
	mov	rdi, r13
	call	xrealloc
.label_233:
	mov	qword ptr [rsp + 0x40], rax
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x90], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
	mov	ecx, ebx
	mov	qword ptr [rsp + 0x58], rcx
	mov	r13, rax
	jmp	.label_138
.label_183:
	xor	esi, esi
	mov	rdi, r12
	call	recheck
.label_138:
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_296
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	al, 1
	jne	.label_296
	mov	rdi, qword ptr [rsp + 0xa8]
	call	hash_get_n_entries
	test	rax, rax
	je	.label_15
.label_296:
	mov	rbp, qword ptr [rsp + 0x90]
	mov	rax, qword ptr [rsp + 0xa0]
	cmp	rbp, rax
	mov	r12d, dword ptr [rsp + 0xb8]
	ja	.label_17
.label_56:
	mov	edi,  dword ptr [dword ptr [rip + pid]]
	test	edi, edi
	je	.label_21
	mov	eax, dword ptr [rsp + 0x88]
	test	al, 1
	jne	.label_23
	mov	dword ptr [rsp + 0x88], 0
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_30
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	al
	mov	dword ptr [rsp + 0x88], eax
	je	.label_30
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0x2170], xmm0
	jmp	.label_21
.label_30:
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x2170], rax
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x2178], rax
.label_21:
	xor	eax, eax
	mov	ecx, 0x10
	lea	rdi, [rsp + 0xd0]
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	rdi, qword ptr [rsp + 0x78]
	call	__fdelt_chk
	mov	rcx, qword ptr [rsp + 0x80]
	or	qword ptr [rsp + rax*8 + 0xd0], rcx
	cmp	byte ptr [byte ptr [rip + monitor_output]],  0
	je	.label_44
	mov	edi, 1
	call	__fdelt_chk
	or	byte ptr [rsp + rax*8 + 0xd0], 2
.label_44:
	cmp	dword ptr [dword ptr [rip + pid]],  0
	lea	r8, [rsp + 0x2170]
	jne	.label_48
	xor	r8d, r8d
.label_48:
	xor	edx, edx
	xor	ecx, ecx
	mov	edi, dword ptr [rsp + 0x70]
	lea	rsi, [rsp + 0xd0]
	call	select
	test	eax, eax
	je	.label_56
	cmp	eax, -1
	je	.label_59
	mov	edi, 1
	call	__fdelt_chk
	test	byte ptr [rsp + rax*8 + 0xd0], 2
	jne	.label_64
	mov	edi, r12d
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0xc0]
	call	safe_read
	mov	rbp, rax
	test	rbp, rbp
	je	.label_69
	cmp	rbp, -1
	jne	.label_19
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_74
.label_69:
	mov	rax, qword ptr [rsp + 0x58]
	lea	ebx, [rax - 1]
	test	eax, eax
	jne	.label_76
	mov	eax, ebx
	mov	qword ptr [rsp + 0x58], rax
.label_19:
	mov	rax, rbp
	inc	rax
	cmp	rax, 1
	mov	eax, 0
	jbe	.label_74
.label_17:
	mov	qword ptr [rsp + 0xa0], rax
	lea	rbx, [r13 + rax]
	mov	r15d, dword ptr [r13 + rax + 4]
	mov	eax, dword ptr [r13 + rax + 0xc]
	test	rax, rax
	jne	.label_79
	mov	ecx, r15d
	and	ecx, 0x400
	je	.label_79
	mov	ecx, dword ptr [rbx]
	mov	rdx, qword ptr [rsp + 0x48]
	xor	esi, esi
.label_89:
	cmp	ecx, dword ptr [rdx]
	je	.label_85
	inc	rsi
	add	rdx, 0x60
	cmp	rsi, r14
	jb	.label_89
.label_79:
	mov	qword ptr [rsp + 0x90], rbp
	mov	rcx, qword ptr [rsp + 0xa0]
	lea	rcx, [rcx + rax + 0x10]
	mov	qword ptr [rsp + 0xa0], rcx
	test	eax, eax
	je	.label_90
	lea	r12, [rbx + 0x10]
	mov	qword ptr [rsp + 0x20], rbx
	mov	ebx, dword ptr [rbx]
	mov	r13, qword ptr [rsp + 0x38]
	xor	ebp, ebp
.label_107:
	cmp	dword ptr [r13 - 8], ebx
	jne	.label_101
	mov	rsi, qword ptr [r13 - 0x50]
	add	rsi, qword ptr [r13]
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_212
.label_101:
	inc	rbp
	add	r13, 0x60
	cmp	rbp, r14
	jb	.label_107
.label_212:
	cmp	rbp, r14
	mov	r13, qword ptr [rsp + 0x40]
	je	.label_138
	lea	rbx, [rbp + rbp*2]
	shl	rbx, 5
	mov	rax, qword ptr [rsp + 0x50]
	lea	r12, [rax + rbx]
	mov	eax, r15d
	test	ah, 2
	jne	.label_132
	mov	rsi, qword ptr [r12]
	mov	edi, dword ptr [rsp + 0xb8]
	mov	edx, dword ptr [rsp + 0xb0]
	call	inotify_add_watch
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_122
	call	__errno_location
	mov	qword ptr [rsp + 0x18], rax
	mov	r15d, dword ptr [rax]
	mov	eax, r15d
	or	eax, 0x10
	xor	edi, edi
	cmp	eax, 0x1c
	je	.label_123
	mov	esi, OFFSET FLAT:.str.99
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x18], rax
	mov	rsi, qword ptr [r12]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, qword ptr [rsp + 0x18]
	call	error
.label_122:
	mov	rax, qword ptr [rsp + 0x50]
	mov	esi, dword ptr [rax + rbx + 0x44]
	test	esi, esi
	js	.label_131
	cmp	ebp, esi
	je	.label_132
.label_131:
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [rax + rbx + 0x44]
	test	esi, esi
	js	.label_133
	mov	edi, dword ptr [rsp + 0xb8]
	call	inotify_rm_watch
	mov	rdi, qword ptr [rsp + 0xa8]
	mov	rsi, r12
	call	hash_delete
.label_133:
	mov	dword ptr [rbx], ebp
	cmp	ebp, -1
	je	.label_138
	mov	rdi, qword ptr [rsp + 0xa8]
	mov	rsi, r12
	call	hash_delete
	mov	rbp, rax
	test	rbp, rbp
	je	.label_144
	cmp	rbp, r12
	je	.label_144
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_146
	xor	esi, esi
	mov	rdi, rbp
	call	recheck
.label_146:
	mov	dword ptr [rbp + 0x44], 0xffffffff
	mov	ebx, dword ptr [rbp + 0x38]
	mov	rbp, qword ptr [rbp]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	jne	.label_150
	cmp	byte ptr [rbp + 1], 0
	jne	.label_150
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
.label_150:
	lea	eax, [rbx + 1]
	cmp	eax, 2
	jb	.label_144
	mov	edi, ebx
	call	close
	test	eax, eax
	je	.label_144
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r8d, ebx
	call	error
.label_144:
	mov	rdi, qword ptr [rsp + 0xa8]
	mov	rsi, r12
	call	hash_insert
	test	rax, rax
	je	.label_170
.label_132:
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	mov	rbx, qword ptr [rsp + 0x20]
	jne	.label_172
	xor	esi, esi
	mov	rdi, r12
	call	recheck
	jmp	.label_172
.label_90:
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 0x114], eax
	mov	rdi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsp + 0xd0]
	call	hash_lookup
	mov	r12, rax
.label_172:
	test	r12, r12
	je	.label_138
	mov	eax, dword ptr [rbx + 4]
	test	ax, 0xe04
	je	.label_181
	test	ah, 4
	je	.label_183
	mov	esi, dword ptr [r12 + 0x44]
	mov	edi, dword ptr [rsp + 0xb8]
	call	inotify_rm_watch
	mov	rdi, qword ptr [rsp + 0xa8]
	mov	rsi, r12
	call	hash_delete
	jmp	.label_183
.label_181:
	mov	rdi, r12
	lea	rsi, [rsp + 0x2168]
	call	check_fspec
	jmp	.label_138
.label_85:
	mov	rdi, qword ptr [rsp + 0xa8]
	call	hash_free
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.104
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	r15, r14
	mov	r14, qword ptr [rsp + 0x50]
.label_66:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	lea	rbx, [r14 + 0x48]
	mov	rbp, r15
.label_217:
	mov	esi, dword ptr [rbx - 4]
	cmp	esi, -1
	je	.label_207
	mov	edi, r12d
	call	inotify_rm_watch
.label_207:
	mov	esi, dword ptr [rbx]
	cmp	esi, -1
	je	.label_213
	mov	edi, r12d
	call	inotify_rm_watch
.label_213:
	add	rbx, 0x60
	dec	rbp
	jne	.label_217
	jmp	.label_119
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.101
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_205:
	mov	eax, 1
	jmp	.label_247
.label_157:
	cmp	ebp, 0xffffff7d
	je	.label_225
	cmp	ebp, 0xffffff7e
	jne	.label_93
	xor	edi, edi
	call	usage
.label_229:
	mov	edi, OFFSET FLAT:.str.91
	mov	esi, OFFSET FLAT:.str.92
	mov	edx, 0x2e0
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pipe_lines
	call	__assert_fail
.label_225:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 0x10], 0
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.56
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.55
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.53
	mov	r9d, OFFSET FLAT:.str.54
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_123:
	mov	esi, OFFSET FLAT:.str.98
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rdi, qword ptr [rsp + 0xa8]
	call	hash_free
	mov	rax, qword ptr [rsp + 0x18]
	mov	dword ptr [rax], 0
	mov	r15, r14
	mov	r14, qword ptr [rsp + 0x50]
	mov	r12d, dword ptr [rsp + 0xb8]
	jmp	.label_66
.label_93:
	mov	edi, 1
	call	usage
.label_228:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str.17_0
	call	quotearg_style
	jmp	.label_260
.label_49:
	call	die_pipe
.label_65:
	call	xalloc_die
.label_53:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
.label_260:
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_37:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	jmp	.label_268
.label_98:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17_0
	xor	eax, eax
	call	error
.label_124:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
.label_268:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_222:
	xor	edi, edi
	mov	ebp, eax
	mov	esi, OFFSET FLAT:.str.116
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0xb8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
.label_11:
	call	xalloc_die
.label_59:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.102
	jmp	.label_268
.label_74:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.103
	jmp	.label_268
.label_23:
	xor	edi, edi
	call	exit
.label_64:
	call	die_pipe
.label_170:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f60

	.globl fremote
	.type fremote, @function
fremote:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x78
	mov	r14, rsi
	lea	rsi, [rsp]
	call	fstatfs
	test	eax, eax
	je	.label_341
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	bl, 1
	cmp	ebp, 0x26
	je	.label_314
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.94
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	call	error
	jmp	.label_314
.label_341:
	mov	cl, 2
	mov	rax, qword ptr [rsp]
	cmp	rax, 0x2fc12fc0
	jg	.label_349
	cmp	rax, 0xadfe
	jle	.label_350
	cmp	rax, 0x13111a7
	jg	.label_351
	cmp	rax, 0x1021993
	jg	.label_353
	cmp	rax, 0x11953
	jle	.label_348
	cmp	rax, 0x414a52
	jle	.label_298
	cmp	rax, 0x414a53
	je	.label_299
	cmp	rax, 0xc0ffee
	je	.label_299
	cmp	rax, 0xc36400
	je	.label_303
	jmp	.label_300
.label_349:
	cmp	rax, 0x65735542
	jle	.label_307
	mov	edx, 0x858458f5
	cmp	rax, rdx
	jle	.label_308
	mov	edx, 0xc97e8167
	cmp	rax, rdx
	jg	.label_309
	mov	edx, 0xaad7aae9
	cmp	rax, rdx
	jg	.label_311
	mov	edx, 0x958458f5
	cmp	rax, rdx
	jg	.label_313
	mov	edx, 0x858458f6
	cmp	rax, rdx
	je	.label_299
	mov	edx, 0x9123683e
	jmp	.label_304
.label_350:
	cmp	rax, 0x482a
	jg	.label_317
	cmp	rax, 0x2467
	jg	.label_319
	cmp	rax, 0x1372
	jle	.label_321
	lea	rdx, [rax - 0x1373]
	cmp	rdx, 0x1c
	ja	.label_323
	mov	esi, 0x10001401
	bt	rsi, rdx
	jb	.label_299
.label_323:
	cmp	rax, 0x1cd1
	je	.label_299
	jmp	.label_300
.label_307:
	cmp	rax, 0x541900ff
	jg	.label_327
	cmp	rax, 0x47504652
	jle	.label_328
	cmp	rax, 0x5346414e
	jg	.label_330
	cmp	rax, 0x52654972
	jg	.label_331
	cmp	rax, 0x47504653
	je	.label_303
	cmp	rax, 0x50495045
	je	.label_303
	jmp	.label_300
.label_308:
	cmp	rax, 0x73636672
	jle	.label_334
	cmp	rax, 0x7461636e
	jg	.label_335
	cmp	rax, 0x73727278
	jg	.label_337
	cmp	rax, 0x73636673
	je	.label_299
	cmp	rax, 0x73717368
	je	.label_299
	jmp	.label_300
.label_317:
	cmp	rax, 0x6968
	jle	.label_339
	cmp	rax, 0x965f
	jg	.label_342
	cmp	rax, 0x6969
	je	.label_303
	cmp	rax, 0x7275
	je	.label_299
	cmp	rax, 0x72b6
	je	.label_299
	jmp	.label_300
.label_327:
	cmp	rax, 0x6165676b
	jle	.label_345
	cmp	rax, 0x62656571
	jg	.label_347
	cmp	rax, 0x62646575
	jg	.label_324
	cmp	rax, 0x6165676c
	je	.label_299
	cmp	rax, 0x61756673
	je	.label_303
	jmp	.label_300
.label_351:
	cmp	rax, 0x15013345
	jg	.label_354
	cmp	rax, 0xbad1de9
	jle	.label_355
	cmp	rax, 0x11307853
	jg	.label_302
	cmp	rax, 0xbad1dea
	je	.label_299
	cmp	rax, 0xbd00bd0
	je	.label_303
	jmp	.label_300
.label_353:
	cmp	rax, 0x12fd16c
	jg	.label_306
	cmp	rax, 0x1021994
	je	.label_299
	cmp	rax, 0x1021997
	je	.label_299
	cmp	rax, 0x1161970
	je	.label_303
	jmp	.label_300
.label_309:
	mov	edx, 0xf97cff8b
	cmp	rax, rdx
	jg	.label_312
	mov	edx, 0xde5e81e3
	cmp	rax, rdx
	jg	.label_315
	mov	edx, 0xc97e8168
	cmp	rax, rdx
	je	.label_299
	mov	edx, 0xcafe4a11
	jmp	.label_304
.label_319:
	cmp	rax, 0x3fff
	jle	.label_318
	lea	rdx, [rax - 0x4000]
	cmp	rdx, 6
	ja	.label_320
	mov	esi, 0x51
	bt	rsi, rdx
	jb	.label_299
.label_320:
	cmp	rax, 0x4244
	je	.label_299
	jmp	.label_300
.label_328:
	cmp	rax, 0x42494e4c
	jle	.label_325
	cmp	rax, 0x453dcd27
	jg	.label_326
	cmp	rax, 0x42494e4d
	je	.label_299
	cmp	rax, 0x43415d53
	je	.label_299
	jmp	.label_300
.label_334:
	cmp	rax, 0x68191121
	jle	.label_332
	cmp	rax, 0x6e667363
	jg	.label_333
	cmp	rax, 0x68191122
	je	.label_299
	cmp	rax, 0x6b414653
	je	.label_303
	jmp	.label_300
.label_339:
	cmp	rax, 0x4d59
	jle	.label_336
	cmp	rax, 0x564b
	jg	.label_338
	cmp	rax, 0x4d5a
	je	.label_299
	cmp	rax, 0x517b
	je	.label_303
	jmp	.label_300
.label_345:
	cmp	rax, 0x58465341
	jle	.label_340
	cmp	rax, 0x5dca2df4
	jg	.label_343
	cmp	rax, 0x58465342
	je	.label_299
	cmp	rax, 0x5a3c69f0
	je	.label_299
	jmp	.label_300
.label_354:
	cmp	rax, 0x1badfacd
	jle	.label_344
	cmp	rax, 0x28cd3d44
	jg	.label_346
	cmp	rax, 0x1badface
	je	.label_299
	cmp	rax, 0x24051905
	je	.label_299
	jmp	.label_300
.label_348:
	cmp	rax, 0xef52
	jg	.label_352
	cmp	rax, 0xadff
	je	.label_299
	cmp	rax, 0xef51
	je	.label_299
	jmp	.label_300
.label_311:
	mov	edx, 0xbacbacbb
	cmp	rax, rdx
	jg	.label_301
	mov	edx, 0xaad7aaea
	cmp	rax, rdx
	je	.label_303
	mov	edx, 0xabba1974
	jmp	.label_304
.label_330:
	cmp	rax, 0x5346544d
	jg	.label_305
	cmp	rax, 0x5346414f
	je	.label_303
	cmp	rax, 0x53464846
	je	.label_299
	jmp	.label_300
.label_335:
	cmp	rax, 0x794c762f
	jg	.label_310
	cmp	rax, 0x7461636f
	je	.label_303
	cmp	rax, 0x74726163
	je	.label_299
	jmp	.label_300
.label_342:
	lea	rdx, [rax - 0x9fa0]
	cmp	rdx, 3
	jb	.label_299
	cmp	rax, 0x9660
	je	.label_299
	cmp	rax, 0xadf5
	je	.label_299
	jmp	.label_300
.label_347:
	cmp	rax, 0x6462671f
	jg	.label_322
	cmp	rax, 0x62656572
	je	.label_299
	cmp	rax, 0x63677270
	je	.label_299
	jmp	.label_300
.label_306:
	lea	rdx, [rax - 0x12ff7b4]
	cmp	rdx, 4
	jb	.label_299
	cmp	rax, 0x12fd16d
	je	.label_299
	jmp	.label_300
.label_312:
	mov	edx, 0xfe534d41
	cmp	rax, rdx
	jg	.label_329
	mov	edx, 0xf97cff8c
	cmp	rax, rdx
	je	.label_299
	mov	edx, 0xf995e849
	jmp	.label_304
.label_321:
	cmp	rax, 0x2f
	je	.label_299
	cmp	rax, 0x187
	je	.label_299
	cmp	rax, 0x7c0
	je	.label_299
	jmp	.label_300
.label_355:
	cmp	rax, 0x13111a8
	je	.label_303
	cmp	rax, 0x7655821
	je	.label_299
	cmp	rax, 0x9041934
	je	.label_299
	jmp	.label_300
.label_318:
	cmp	rax, 0x2468
	je	.label_299
	cmp	rax, 0x2478
	je	.label_299
	cmp	rax, 0x3434
	je	.label_299
	jmp	.label_300
.label_325:
	cmp	rax, 0x2fc12fc1
	je	.label_299
	cmp	rax, 0x3153464a
	je	.label_299
	cmp	rax, 0x42465331
	je	.label_299
	jmp	.label_300
.label_332:
	cmp	rax, 0x65735543
	je	.label_303
	cmp	rax, 0x65735546
	je	.label_303
	cmp	rax, 0x67596969
	je	.label_299
	jmp	.label_300
.label_336:
	cmp	rax, 0x482b
	je	.label_299
	cmp	rax, 0x4858
	je	.label_299
	cmp	rax, 0x4d44
	je	.label_299
	jmp	.label_300
.label_340:
	cmp	rax, 0x54190100
	je	.label_299
	cmp	rax, 0x565a4653
	je	.label_299
	cmp	rax, 0x58295829
	je	.label_299
	jmp	.label_300
.label_344:
	cmp	rax, 0x15013346
	je	.label_299
	cmp	rax, 0x19800202
	je	.label_299
	cmp	rax, 0x19830326
	je	.label_303
	jmp	.label_300
.label_298:
	cmp	rax, 0x11954
	je	.label_299
	cmp	rax, 0x27e0eb
	je	.label_299
	jmp	.label_300
.label_313:
	mov	edx, 0x958458f6
	cmp	rax, rdx
	je	.label_299
	mov	ecx, 0xa501fcf5
	jmp	.label_316
.label_331:
	cmp	rax, 0x52654973
	je	.label_299
	cmp	rax, 0x5346314d
	je	.label_299
	jmp	.label_300
.label_337:
	cmp	rax, 0x73727279
	je	.label_299
	cmp	rax, 0x73757245
	je	.label_303
	jmp	.label_300
.label_324:
	cmp	rax, 0x62646576
	je	.label_299
	cmp	rax, 0x62656570
	je	.label_299
	jmp	.label_300
.label_302:
	cmp	rax, 0x11307854
	je	.label_299
	cmp	rax, 0x13661366
	je	.label_299
	jmp	.label_300
.label_315:
	mov	edx, 0xde5e81e4
	cmp	rax, rdx
	je	.label_299
	mov	edx, 0xf2f52010
.label_304:
	cmp	rax, rdx
	je	.label_299
	jmp	.label_300
.label_326:
	cmp	rax, 0x453dcd28
	je	.label_299
	cmp	rax, 0x45584653
	je	.label_299
	jmp	.label_300
.label_333:
	cmp	rax, 0x6e667364
	je	.label_303
	cmp	rax, 0x6e736673
	je	.label_299
	jmp	.label_300
.label_338:
	cmp	rax, 0x564c
	je	.label_303
	cmp	rax, 0x5df5
	je	.label_299
	jmp	.label_300
.label_343:
	cmp	rax, 0x5dca2df5
	je	.label_299
	cmp	rax, 0x61636673
	je	.label_303
	jmp	.label_300
.label_346:
	cmp	rax, 0x28cd3d45
	je	.label_299
	cmp	rax, 0x2bad1dea
	je	.label_299
	jmp	.label_300
.label_352:
	cmp	rax, 0xef53
	je	.label_299
	cmp	rax, 0xf15f
	je	.label_299
	jmp	.label_300
.label_301:
	mov	ecx, 0xbacbacbc
	cmp	rax, rcx
	je	.label_303
	mov	ecx, 0xbeefdead
	jmp	.label_316
.label_305:
	cmp	rax, 0x5346544e
	je	.label_299
	cmp	rax, 0x534f434b
	je	.label_299
	jmp	.label_300
.label_310:
	cmp	rax, 0x794c7630
	je	.label_303
	cmp	rax, 0x7c7c6673
	je	.label_303
	jmp	.label_300
.label_322:
	cmp	rax, 0x64626720
	je	.label_299
	cmp	rax, 0x64646178
	je	.label_299
	jmp	.label_300
.label_329:
	mov	ecx, 0xfe534d42
	cmp	rax, rcx
	je	.label_303
	mov	ecx, 0xff534d42
.label_316:
	cmp	rax, rcx
	jne	.label_300
.label_303:
	mov	cl, 1
.label_299:
	and	cl, 7
	mov	bl, 3
	shr	bl, cl
	and	bl, 1
.label_314:
	mov	al, bl
	add	rsp, 0x78
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_300:
	xor	ecx, ecx
	jmp	.label_299
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405850

	.globl dump_remainder
	.type dump_remainder, @function
dump_remainder:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2018
	mov	r12, rcx
	mov	dword ptr [rsp + 0xc], edx
	mov	qword ptr [rsp], rsi
	mov	ebp, edi
	xor	ebx, ebx
	lea	r13, [rsp + 0x10]
	mov	r15, r12
	jmp	.label_360
	nop	word ptr [rax + rax]
.label_356:
	sub	r15, r14
.label_360:
	cmp	r15, 0x2000
	mov	edx, 0x2000
	cmovb	rdx, r15
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, r13
	call	safe_read
	mov	r14, rax
	test	r14, r14
	je	.label_358
	cmp	r14, -1
	je	.label_357
	test	bpl, 1
	je	.label_359
	mov	al,  byte ptr [byte ptr [rip + write_header.first_file]]
	and	al, 1
	mov	edx, OFFSET FLAT:.str_0
	mov	eax, OFFSET FLAT:.str.85
	cmovne	rdx, rax
	xor	ebp, ebp
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.84
	xor	eax, eax
	mov	rcx, qword ptr [rsp]
	call	__printf_chk
	mov	byte ptr [byte ptr [rip + write_header.first_file]],  1
.label_359:
	mov	rdi, r13
	mov	rsi, r14
	call	xwrite_stdout
	add	rbx, r14
	cmp	r12, -1
	je	.label_360
	cmp	r12, -2
	je	.label_358
	cmp	r15, r14
	jne	.label_356
	jmp	.label_358
.label_357:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0xb
	jne	.label_361
.label_358:
	mov	rax, rbx
	add	rsp, 0x2018
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_361:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405970

	.globl xlseek
	.type xlseek, @function
xlseek:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r15, rcx
	mov	ebp, edx
	mov	rbx, rsi
	call	lseek
	test	rax, rax
	js	.label_364
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_364:
	lea	rsi, [rsp]
	mov	rdi, rbx
	call	offtostr
	mov	r14, rax
	cmp	ebp, 2
	je	.label_363
	cmp	ebp, 1
	je	.label_366
	test	ebp, ebp
	jne	.label_362
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.88
	jmp	.label_365
.label_363:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.90
	jmp	.label_365
.label_366:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.89
.label_365:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	mov	r8, r14
	call	error
	mov	edi, 1
	call	exit
.label_362:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a30

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	test	rbx, rbx
	je	.label_367
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jb	.label_368
.label_367:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_368:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.87
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str.20
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ab0

	.globl wd_hasher
	.type wd_hasher, @function
wd_hasher:
	movsxd	rax, dword ptr [rdi + 0x44]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405ac0

	.globl wd_comparator
	.type wd_comparator, @function
wd_comparator:
	mov	eax, dword ptr [rdi + 0x44]
	cmp	eax, dword ptr [rsi + 0x44]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ad0

	.globl recheck
	.type recheck, @function
recheck:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	ebp, esi
	mov	r12, rdi
	mov	rdi, qword ptr [r12]
	movzx	eax, byte ptr [rdi]
	lea	r14, [r12 + 0x36]
	cmp	eax, 0x2d
	jne	.label_405
	lea	r13, [r12 + 0x3c]
	cmp	byte ptr [rdi + 1], 0
	mov	al, byte ptr [r12 + 0x36]
	mov	byte ptr [rsp + 8], al
	mov	r15d, dword ptr [r12 + 0x3c]
	jne	.label_407
	xor	ebx, ebx
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jmp	.label_371
.label_405:
	mov	al, byte ptr [r12 + 0x36]
	mov	byte ptr [rsp + 8], al
	lea	r13, [r12 + 0x3c]
	mov	r15d, dword ptr [r12 + 0x3c]
.label_407:
	test	bpl, bpl
	sete	al
	movzx	esi, al
	shl	esi, 0xb
	mov	dword ptr [rsp + 4], 0
	xor	eax, eax
	call	open_safer
	mov	ebx, eax
.label_371:
	mov	rax, qword ptr [r12 + 0x38]
	cmp	eax, -1
	sete	cl
	shr	rax, 0x20
	sete	al
	xor	al, cl
	je	.label_402
	cmp	ebx, -1
	sete	al
	and	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	xor	al, 1
	mov	byte ptr [r14], al
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	and	al, 1
	jne	.label_389
	mov	rsi, qword ptr [r12]
	lea	rdx, [rsp + 0x10]
	mov	edi, 1
	call	__lxstat
	test	eax, eax
	jne	.label_389
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x28]
	cmp	eax, 0xa000
	jne	.label_389
	mov	rbp, rbx
	mov	dword ptr [r13], 0xffffffff
	mov	byte ptr [r12 + 0x34], 1
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.106
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	jne	.label_403
	cmp	byte ptr [rsi + 1], 0
	jne	.label_403
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_403:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rbx, rbp
	jmp	.label_382
.label_389:
	cmp	ebx, -1
	je	.label_372
	lea	rdx, [rsp + 0x10]
	mov	edi, 1
	mov	esi, ebx
	call	__fxstat
	test	eax, eax
	js	.label_372
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x28]
	cmp	eax, 0x7fff
	jg	.label_380
	cmp	eax, 0x1000
	je	.label_379
	cmp	eax, 0x2000
	je	.label_379
	jmp	.label_376
.label_372:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	dword ptr [r13], ebp
	cmp	byte ptr [r14], 0
	je	.label_392
	mov	ebp, dword ptr [rax]
	cmp	r15d, ebp
	je	.label_382
	mov	rdx, qword ptr [r12]
	movzx	eax, byte ptr [rdx]
	cmp	eax, 0x2d
	jne	.label_396
	cmp	byte ptr [rdx + 1], 0
	jne	.label_396
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
.label_396:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_382
.label_392:
	cmp	byte ptr [rsp + 8], 0
	je	.label_382
	mov	r14, rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.107
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	jne	.label_406
	cmp	byte ptr [rsi + 1], 0
	jne	.label_406
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_406:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	jmp	.label_377
.label_380:
	cmp	eax, 0x8000
	je	.label_379
	cmp	eax, 0xc000
	jne	.label_376
.label_379:
	mov	rsi, qword ptr [r12]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	jne	.label_385
	cmp	byte ptr [rsi + 1], 0
	jne	.label_385
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_385:
	mov	edi, ebx
	mov	r14, rbx
	call	fremote
	mov	byte ptr [r12 + 0x35], al
	test	al, al
	je	.label_393
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	and	al, 1
	je	.label_395
.label_393:
	mov	dword ptr [r13], 0
	or	r15d, 2
	cmp	r15d, 2
	jne	.label_398
	cmp	dword ptr [r12 + 0x38], -1
	je	.label_399
	mov	rax, qword ptr [r12 + 0x28]
	cmp	rax, qword ptr [rsp + 0x18]
	jne	.label_401
	mov	rax, qword ptr [r12 + 0x20]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_401
	mov	rbx, qword ptr [r12]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_404
	cmp	byte ptr [rbx + 1], 0
	mov	rcx, r14
	jne	.label_390
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	mov	rbx, rcx
	call	dcgettext
	mov	rcx, rbx
	mov	rbx, rax
	jmp	.label_390
.label_376:
	mov	dword ptr [r13], 0xffffffff
	mov	byte ptr [r14], 0
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	al, 1
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	sete	cl
	and	cl, al
	xor	cl, 1
	mov	byte ptr [r12 + 0x34], cl
	cmp	byte ptr [rsp + 8], 0
	jne	.label_369
	cmp	r15d, -1
	je	.label_382
.label_369:
	mov	r14, rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r12]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	jne	.label_391
	cmp	byte ptr [rsi + 1], 0
	jne	.label_391
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_391:
	mov	edi, 4
	call	quotearg_style
	mov	rbx, rax
	mov	r8d, OFFSET FLAT:.str_0
	cmp	byte ptr [r12 + 0x34], 0
	je	.label_397
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
.label_397:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	rcx, rbx
	call	error
	jmp	.label_377
.label_395:
	mov	dword ptr [r13], 0xffffffff
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.110
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	jne	.label_370
	cmp	byte ptr [rsi + 1], 0
	jne	.label_370
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_370:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	word ptr [r12 + 0x34], 0x101
.label_377:
	mov	rbx, r14
.label_382:
	mov	rbp, qword ptr [r12]
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	jne	.label_375
	cmp	byte ptr [rbp + 1], 0
	jne	.label_375
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
.label_375:
	lea	eax, [rbx + 1]
	cmp	eax, 2
	jb	.label_386
	mov	edi, ebx
	call	close
	mov	rcx, rbx
	test	eax, eax
	je	.label_386
	mov	r14, rcx
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	mov	r8d, r14d
	call	error
.label_386:
	mov	ebp, dword ptr [r12 + 0x38]
	mov	rbx, qword ptr [r12]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_400
	cmp	byte ptr [rbx + 1], 0
	jne	.label_400
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
.label_400:
	lea	eax, [rbp + 1]
	cmp	eax, 2
	jb	.label_394
	mov	edi, ebp
	call	close
	test	eax, eax
	je	.label_394
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	mov	r8d, ebp
	call	error
.label_394:
	mov	dword ptr [r12 + 0x38], 0xffffffff
	jmp	.label_373
.label_398:
	cmp	dword ptr [r12 + 0x38], -1
	jne	.label_378
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.112
	jmp	.label_384
.label_401:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.114
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	jne	.label_388
	cmp	byte ptr [rsi + 1], 0
	jne	.label_388
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_388:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r15d, dword ptr [r12 + 0x38]
	mov	rbx, qword ptr [r12]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_381
	cmp	byte ptr [rbx + 1], 0
	jne	.label_381
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
.label_381:
	lea	eax, [r15 + 1]
	cmp	eax, 2
	jb	.label_374
	mov	edi, r15d
	call	close
	test	eax, eax
	je	.label_374
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, qword ptr [rsp + 8]
	mov	r8d, r15d
	call	error
	jmp	.label_374
.label_399:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.113
.label_384:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	jne	.label_383
	cmp	byte ptr [rsi + 1], 0
	jne	.label_383
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_383:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_374:
	movzx	eax, bpl
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	mov	ecx, 0xffffffff
	cmove	ecx, eax
	mov	rbp, r14
	mov	dword ptr [r12 + 0x38], ebp
	mov	qword ptr [r12 + 8], 0
	movups	xmm0, xmmword ptr [rsp + 0x68]
	movups	xmmword ptr [r12 + 0x10], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	eax, dword ptr [rsp + 0x28]
	mov	dword ptr [r12 + 0x30], eax
	mov	dword ptr [r12 + 0x40], ecx
	mov	qword ptr [r12 + 0x58], 0
	mov	byte ptr [r12 + 0x34], 0
	mov	rcx, qword ptr [r12]
	movzx	eax, byte ptr [rcx]
	cmp	eax, 0x2d
	jne	.label_387
	cmp	byte ptr [rcx + 1], 0
	jne	.label_387
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
.label_387:
	xor	esi, esi
	xor	edx, edx
	mov	edi, ebp
	call	xlseek
.label_373:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_404:
	mov	rcx, r14
.label_390:
	lea	eax, [rcx + 1]
	cmp	eax, 2
	jb	.label_373
	mov	edi, ecx
	mov	rbp, rcx
	call	close
	mov	rcx, rbp
	test	eax, eax
	je	.label_373
	mov	r14, rcx
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	r8d, r14d
	call	error
	jmp	.label_373
.label_402:
	mov	edi, OFFSET FLAT:.str.105
	mov	esi, OFFSET FLAT:.str.92
	mov	edx, 0x3df
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.recheck
	call	__assert_fail
.label_378:
	mov	edi, OFFSET FLAT:.str.111
	mov	esi, OFFSET FLAT:.str.92
	mov	edx, 0x42c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.recheck
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062b0

	.globl check_fspec
	.type check_fspec, @function
check_fspec:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x90
	mov	r15, rsi
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x38]
	cmp	esi, -1
	je	.label_415
	mov	r14, qword ptr [rbx]
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	jne	.label_413
	cmp	byte ptr [r14 + 1], 0
	jne	.label_413
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	esi, dword ptr [rbx + 0x38]
.label_413:
	lea	rdx, [rsp]
	mov	edi, 1
	call	__fxstat
	test	eax, eax
	je	.label_410
	call	__errno_location
	mov	r12, rax
	mov	eax, dword ptr [r12]
	mov	dword ptr [rbx + 0x3c], eax
	mov	r15d, dword ptr [rbx + 0x38]
	lea	eax, [r15 + 1]
	cmp	eax, 2
	jb	.label_414
	mov	edi, r15d
	call	close
	test	eax, eax
	je	.label_414
	mov	r12d, dword ptr [r12]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbp
	mov	r8d, r15d
	call	error
.label_414:
	mov	dword ptr [rbx + 0x38], 0xffffffff
	jmp	.label_415
.label_410:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x30]
	cmp	eax, 0x8000
	jne	.label_416
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rax, qword ptr [rbx + 8]
	jge	.label_411
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.115
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, dword ptr [rbx + 0x38]
	xor	esi, esi
	xor	edx, edx
	mov	rcx, r14
	call	xlseek
	mov	qword ptr [rbx + 8], 0
	jmp	.label_416
.label_411:
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_416
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rsp + 0x58]
	jne	.label_416
	mov	eax, dword ptr [rbx + 0x18]
	cmp	eax, dword ptr [rsp + 0x60]
	je	.label_415
.label_416:
	movzx	eax,  byte ptr [byte ptr [rip + print_headers]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_408
	cmp	qword ptr [r15], rbx
	setne	al
	jmp	.label_412
.label_408:
	xor	eax, eax
.label_412:
	mov	edx, dword ptr [rbx + 0x38]
	movzx	edi, al
	mov	rcx, -1
	mov	rsi, r14
	call	dump_remainder
	add	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_415
	mov	qword ptr [r15], rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_409
.label_415:
	add	rsp, 0x90
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_409:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406490

	.globl die_pipe
	.type die_pipe, @function
die_pipe:
	push	rax
	mov	edi, 0xd
	call	raise
	mov	edi, 1
	call	exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064b0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064c0

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
	je	.label_418
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_417:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_422
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_420
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_421
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_423
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_422
.label_423:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_422
.label_421:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_422:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_417
	jmp	.label_419
.label_418:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_419:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_420:
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
	.align	32
	#Procedure 0x4065c0
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
	je	.label_424
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_425
.label_424:
	mov	esi, OFFSET FLAT:.str_4
.label_425:
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
	.align	32
	#Procedure 0x406630

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
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbx]
	test	rbx, rbx
	je	.label_427
	xor	r13d, r13d
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_430:
	test	r15, r15
	je	.label_426
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_429
.label_426:
	mov	r13,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_0
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_431
	nop	word ptr cs:[rax + rax]
.label_429:
	mov	rbp,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, rbp
	call	__fprintf_chk
.label_431:
	mov	rax, qword ptr [rsp]
	mov	rbx, qword ptr [rax + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_430
.label_427:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_428
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
.label_428:
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
	.align	32
	#Procedure 0x406760

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
	jns	.label_433
	mov	qword ptr [rsp + 0x10], rbp
	xor	edi, edi
	cmp	rax, -1
	je	.label_434
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_432
.label_434:
	mov	esi, OFFSET FLAT:.str_4
.label_432:
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
.label_433:
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
	#Procedure 0x406820
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
	je	.label_435
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_436:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_435
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_436
.label_435:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406890

	.globl cl_strtod
	.type cl_strtod, @function
cl_strtod:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 0x18]
	call	strtod
	mov	r12, qword ptr [rsp + 0x18]
	cmp	byte ptr [r12], 0
	je	.label_439
	movsd	qword ptr [rsp + 8], xmm0
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x10]
	mov	rdi, rbx
	call	c_strtod
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r12, rax
	jae	.label_438
	mov	qword ptr [rsp + 0x18], rax
	mov	r12, rax
	jmp	.label_439
.label_438:
	mov	dword ptr [r15], ebp
	movsd	xmm0, qword ptr [rsp + 8]
.label_439:
	test	r14, r14
	je	.label_437
	mov	qword ptr [r14], r12
.label_437:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406910
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406920
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406930

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_443
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_442
	cmp	dword ptr [rbp], 0x20
	jne	.label_442
.label_443:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_441
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_442:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_440
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_441:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_440:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4069f0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	sete	al
	movzx	r14d, al
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	
.label_444:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_445
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_444
.label_445:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406a30
	.globl mdir_name
	.type mdir_name, @function
mdir_name:

	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2f
	sete	al
	movzx	r15d, al
	call	last_component
	sub	rax, r14
	nop	
.label_447:
	mov	rbx, rax
	cmp	r15, rbx
	jae	.label_446
	lea	rax, [rbx - 1]
	movzx	ecx, byte ptr [r14 + rbx - 1]
	cmp	ecx, 0x2f
	je	.label_447
.label_446:
	test	rbx, rbx
	sete	al
	movzx	eax, al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_448
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_449
	mov	byte ptr [r15], 0x2e
	mov	ebx, 1
.label_449:
	mov	byte ptr [r15 + rbx], 0
	mov	rax, r15
.label_448:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ab0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_450:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	edx, 0x2f
	je	.label_450
	xor	r8d, r8d
	mov	rax, rdi
	jmp	.label_454
	nop	word ptr cs:[rax + rax]
.label_451:
	mov	dl, byte ptr [rax + 1]
	inc	rax
	mov	r8b, cl
.label_454:
	mov	cl, 1
	movzx	esi, dl
	cmp	esi, 0x2f
	je	.label_451
	test	dl, dl
	je	.label_452
	mov	cl, r8b
	and	cl, 1
	je	.label_453
	xor	r8d, r8d
.label_453:
	test	cl, cl
	cmovne	rdi, rax
	mov	cl, r8b
	jmp	.label_451
.label_452:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b20
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_455:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_456
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_455
.label_456:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406b50

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_457
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_457:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_460
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_459
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_458
.label_459:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_458:
	mov	edx, dword ptr [rax]
.label_460:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c30
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c40
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c50

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c60
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdx
	jae	.label_461
	mov	rdi, rcx
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	eax, eax
	bt	rdi, 4
	jb	.label_468
	xor	eax, eax
	cmp	qword ptr [rcx], 0
	je	.label_463
	mov	rdi, rcx
	nop	word ptr cs:[rax + rax]
.label_466:
	mov	rdi, qword ptr [rdi + 8]
	inc	rax
	test	rdi, rdi
	jne	.label_466
.label_463:
	add	rcx, 0x10
.label_468:
	test	rsi, rsi
	je	.label_461
	nop	word ptr cs:[rax + rax]
.label_465:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_462
	nop	
.label_469:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_469
	cmp	rsi, rax
	cmova	rax, rsi
.label_462:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_464
	lea	rdi, [rcx + 0x10]
	xor	esi, esi
.label_467:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_467
	cmp	rsi, rax
	cmova	rax, rsi
.label_464:
	add	rcx, 0x20
	cmp	rcx, rdx
	jb	.label_465
.label_461:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406d10
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rcx, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	edx, edx
	cmp	rcx, r9
	mov	esi, 0
	jae	.label_477
	mov	rax, rcx
	not	rax
	add	rax, r9
	mov	r8, rax
	shr	r8, 4
	xor	edx, edx
	bt	rax, 4
	jb	.label_478
	xor	edx, edx
	cmp	qword ptr [rcx], 0
	je	.label_470
	mov	esi, 1
	mov	rax, rcx
.label_473:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_473
	jmp	.label_474
.label_478:
	xor	esi, esi
	jmp	.label_475
.label_470:
	xor	esi, esi
.label_474:
	add	rcx, 0x10
.label_475:
	test	r8, r8
	je	.label_477
	nop	dword ptr [rax]
.label_479:
	cmp	qword ptr [rcx], 0
	mov	rax, rcx
	je	.label_480
	nop	dword ptr [rax]
.label_471:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_471
	inc	rsi
.label_480:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_472
	lea	rax, [rcx + 0x10]
	nop	word ptr [rax + rax]
.label_476:
	inc	rdx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_476
	inc	rsi
.label_472:
	add	rcx, 0x20
	cmp	rcx, r9
	jb	.label_479
.label_477:
	cmp	rsi, qword ptr [rdi + 0x18]
	jne	.label_481
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 0x20]
	je	.label_482
.label_481:
	xor	eax, eax
.label_482:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406dd0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdx
	jae	.label_483
	mov	rdi, rax
	not	rdi
	add	rdi, rdx
	mov	rsi, rdi
	shr	rsi, 4
	xor	ebx, ebx
	bt	rdi, 4
	jb	.label_493
	xor	ebx, ebx
	cmp	qword ptr [rax], 0
	je	.label_486
	mov	rdi, rax
	nop	dword ptr [rax]
.label_485:
	mov	rdi, qword ptr [rdi + 8]
	inc	rbx
	test	rdi, rdi
	jne	.label_485
.label_486:
	add	rax, 0x10
.label_493:
	test	rsi, rsi
	je	.label_483
	nop	word ptr cs:[rax + rax]
.label_487:
	cmp	qword ptr [rax], 0
	mov	esi, 0
	mov	rdi, rax
	je	.label_492
	nop	
.label_488:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_488
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_492:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_484
	lea	rdi, [rax + 0x10]
	xor	esi, esi
.label_494:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_494
	cmp	rsi, rbx
	cmova	rbx, rsi
.label_484:
	add	rax, 0x20
	cmp	rax, rdx
	jb	.label_487
.label_483:
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_489]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_490]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_491]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_1
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f40

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
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_499
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_496
	add	rbx, rax
	je	.label_496
	cmp	rsi, r12
	je	.label_498
	xor	r15d, r15d
	nop	
.label_497:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_495
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_496
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_497
.label_498:
	mov	r15, r12
	jmp	.label_496
.label_495:
	mov	r15, qword ptr [rbx]
.label_496:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_499:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fc0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_500
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_503
	nop	word ptr cs:[rax + rax]
.label_502:
	add	rcx, 0x10
.label_503:
	cmp	rcx, rdx
	jae	.label_501
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_502
.label_500:
	ret	
.label_501:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407000
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_507
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_508:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_506
	test	rdx, rdx
	jne	.label_508
	jmp	.label_504
.label_506:
	test	rdx, rdx
	je	.label_504
	mov	rax, qword ptr [rdx]
	jmp	.label_505
.label_504:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rax + rcx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_509:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_505
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_509
.label_505:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_507:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407090
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	jmp	.label_510
	nop	dword ptr [rax + rax]
.label_513:
	add	r9, 0x10
.label_510:
	cmp	r9, r8
	jae	.label_511
	cmp	qword ptr [r9], 0
	je	.label_513
	test	r9, r9
	mov	r10, r9
	je	.label_513
	nop	word ptr [rax + rax]
.label_512:
	cmp	rax, rdx
	jae	.label_511
	mov	rcx, qword ptr [r10]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r10, qword ptr [r10 + 8]
	test	r10, r10
	jne	.label_512
	mov	r8, qword ptr [rdi + 8]
	jmp	.label_513
.label_511:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4070e0
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
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	jmp	.label_514
	nop	word ptr cs:[rax + rax]
.label_515:
	add	r13, 0x10
.label_514:
	cmp	r13, rax
	jae	.label_516
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_515
	test	r13, r13
	je	.label_515
	mov	rsi, r14
	call	r15
	test	al, al
	mov	rbp, r13
	je	.label_516
	nop	word ptr cs:[rax + rax]
.label_518:
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_517
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_518
	jmp	.label_516
	nop	dword ptr [rax]
.label_517:
	mov	rax, qword ptr [r12 + 8]
	jmp	.label_515
.label_516:
	mov	rax, rbx
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
	#Procedure 0x407180
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_519
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_520:
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
	jne	.label_520
.label_519:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071c0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_521]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071e0

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
	mov	r14, r8
	mov	rbx, rsi
	mov	r12, rdi
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	cmovne	r13, rdx
	test	rcx, rcx
	mov	ebp, OFFSET FLAT:raw_comparator
	cmovne	rbp, rcx
	mov	edi, 0x50
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_527
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_533
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_536]]
	jbe	.label_524
	movss	xmm1,  dword ptr [dword ptr [rip + label_525]]
	ucomiss	xmm1, xmm0
	jbe	.label_524
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_531]]
	jbe	.label_524
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_524
	addss	xmm1,  dword ptr [dword ptr [rip + label_536]]
	ucomiss	xmm0, xmm1
	jbe	.label_524
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_526]]
	ucomiss	xmm2, xmm0
	jb	.label_524
	ucomiss	xmm0, xmm1
	jbe	.label_524
.label_533:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_528
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_535
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_522
.label_535:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_522:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_529]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_530]]
	jae	.label_524
.label_528:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_532
	nop	
.label_537:
	add	rbx, 2
.label_532:
	cmp	rbx, -1
	je	.label_524
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_523
	nop	word ptr cs:[rax + rax]
.label_534:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_523
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_534
.label_523:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_537
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_524
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_524
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_524
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	jmp	.label_527
.label_524:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_527:
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
	.align	32
	#Procedure 0x407400

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x407410

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407420
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_538
	nop	word ptr cs:[rax + rax]
.label_541:
	add	r14, 0x10
.label_538:
	cmp	r14, rax
	jae	.label_540
	cmp	qword ptr [r14], 0
	je	.label_541
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_542
	nop	word ptr cs:[rax + rax]
.label_544:
	test	cl, 1
	je	.label_543
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_543:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_544
.label_542:
	test	cl, cl
	je	.label_539
	mov	rdi, qword ptr [r14]
	call	rax
.label_539:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_541
.label_540:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074d0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_545
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_545
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_553
	nop	
.label_546:
	add	r15, 0x10
.label_553:
	cmp	r15, rax
	jae	.label_545
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_546
	test	r15, r15
	je	.label_546
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_547
.label_550:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_547:
	test	rbx, rbx
	jne	.label_550
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_546
.label_545:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_552
	nop	
.label_548:
	add	r15, 0x10
.label_552:
	cmp	r15, rax
	jae	.label_555
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_548
	nop	word ptr cs:[rax + rax]
.label_549:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_549
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_548
.label_555:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_554
.label_551:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_551
.label_554:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075a0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rax, qword ptr [r14 + 0x28]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_567
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_572
	cvtsi2ss	xmm0, rsi
	jmp	.label_558
.label_572:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_558:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_529]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_530]]
	jae	.label_560
.label_567:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_563
	nop	dword ptr [rax + rax]
.label_574:
	add	rbx, 2
.label_563:
	cmp	rbx, -1
	je	.label_560
	cmp	rbx, 0xa
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	jb	.label_556
	nop	word ptr cs:[rax + rax]
.label_570:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_556
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_570
.label_556:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_574
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_560
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_564
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_560
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_561
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_564
.label_561:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_573
	nop	
.label_565:
	add	r12, 0x10
.label_573:
	cmp	r12, r15
	jae	.label_562
	cmp	qword ptr [r12], 0
	je	.label_565
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_568
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_566:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_559
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_571
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_569
	nop	word ptr [rax + rax]
.label_571:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_569:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_566
.label_568:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_565
.label_562:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_557
	mov	rdi, qword ptr [rsp]
	call	free
.label_560:
	xor	ebp, ebp
.label_564:
	mov	al, bpl
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_559:
	call	abort
.label_557:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407830

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
	mov	dword ptr [rsp + 4], edx
	mov	r12, rsi
	mov	rbp, rdi
	mov	r14, qword ptr [r12]
	mov	al, 1
	cmp	r14, qword ptr [r12 + 8]
	jae	.label_586
	nop	word ptr cs:[rax + rax]
.label_584:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_582
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_585
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_580:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_577
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_579
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_588
	nop	dword ptr [rax]
.label_579:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_588:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_580
	mov	r13, qword ptr [r14]
.label_585:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_582
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_575
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_578
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_581
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_583
.label_578:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_587
.label_581:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_576
.label_583:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_587:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_582:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_584
	mov	al, 1
.label_586:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_576:
	xor	eax, eax
	jmp	.label_586
.label_577:
	call	abort
.label_575:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079a0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	r13, rdi
	test	r14, r14
	je	.label_607
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_607
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_591
	cmp	rsi, r14
	je	.label_615
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_617
	mov	rax, qword ptr [r12]
	jmp	.label_609
.label_615:
	mov	rax, r14
	jmp	.label_589
.label_617:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_591
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr cs:[rax + rax]
.label_605:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_596
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_602
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_605
	jmp	.label_591
.label_596:
	mov	rax, r14
	jmp	.label_609
.label_602:
	mov	rax, qword ptr [rbp]
.label_609:
	test	rax, rax
	je	.label_591
.label_589:
	xor	ebp, ebp
	test	r15, r15
	je	.label_613
	mov	qword ptr [r15], rax
	jmp	.label_613
.label_591:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_614
	cvtsi2ss	xmm1, rax
	jmp	.label_618
.label_614:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_618:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_592
	cvtsi2ss	xmm0, rcx
	jmp	.label_598
.label_592:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_598:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_601
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_603
	ucomiss	xmm2,  dword ptr [dword ptr [rip + label_536]]
	jbe	.label_590
	movss	xmm3,  dword ptr [dword ptr [rip + label_525]]
	ucomiss	xmm3, xmm2
	jbe	.label_590
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_531]]
	jbe	.label_590
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_590
	addss	xmm3,  dword ptr [dword ptr [rip + label_536]]
	ucomiss	xmm2, xmm3
	jbe	.label_590
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_526]]
	ucomiss	xmm5, xmm4
	jb	.label_590
	ucomiss	xmm4, xmm3
	ja	.label_597
.label_590:
	mov	qword ptr [word ptr [r13 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2,  dword ptr [dword ptr [rip + label_599]]
	jmp	.label_597
.label_603:
	mov	eax, OFFSET FLAT:default_tuning
.label_597:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_601
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_619
	mulss	xmm0, xmm2
.label_619:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_530]]
	jae	.label_613
	movss	xmm1,  dword ptr [dword ptr [rip + label_529]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	je	.label_613
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_607
	mov	r15, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [r15 + rbp]
	mov	rsi, qword ptr [r15 + rbp]
	test	rsi, rsi
	je	.label_601
	cmp	rsi, r14
	mov	rax, r14
	je	.label_600
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_616
	mov	rax, qword ptr [r12]
	jmp	.label_600
.label_616:
	mov	rax, qword ptr [r15 + rbp + 8]
	test	rax, rax
	je	.label_601
	lea	rbp, [r15 + rbp + 8]
.label_594:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_595
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_593
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_594
	jmp	.label_601
.label_595:
	mov	rax, r14
	jmp	.label_600
.label_593:
	mov	rax, qword ptr [rbp]
.label_600:
	test	rax, rax
	jne	.label_604
.label_601:
	cmp	qword ptr [r12], 0
	je	.label_606
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_608
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_610
.label_606:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0,  xmmword ptr [word ptr [rip + label_611]]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_612
.label_608:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_613
.label_610:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_612:
	mov	ebp, 1
.label_613:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_607:
	call	abort
.label_604:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407cc0

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
	je	.label_620
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_620:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407cf0

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_622
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_626
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_631
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_634
	mov	r14, qword ptr [r13]
.label_631:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_639
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_633
.label_634:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_626
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_628:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_624
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_627
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_628
	jmp	.label_626
.label_639:
	mov	qword ptr [r13], 0
	jmp	.label_633
.label_624:
	mov	rcx, rax
	jmp	.label_636
.label_627:
	mov	r14, qword ptr [rcx]
.label_636:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_633:
	xor	r12d, r12d
	test	r14, r14
	je	.label_626
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_629
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_623
	cvtsi2ss	xmm1, rax
	jmp	.label_625
.label_623:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_625:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_630
	cvtsi2ss	xmm0, rcx
	jmp	.label_635
.label_630:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_635:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_629
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_640
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3,  dword ptr [dword ptr [rip + label_536]]
	jbe	.label_621
	movss	xmm4,  dword ptr [dword ptr [rip + label_525]]
	ucomiss	xmm4, xmm3
	jbe	.label_621
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_621
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4,  dword ptr [dword ptr [rip + label_531]]
	jbe	.label_621
	movss	xmm4,  dword ptr [dword ptr [rip + label_536]]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_621
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5,  dword ptr [dword ptr [rip + label_526]]
	ucomiss	xmm5, xmm3
	jb	.label_621
	ucomiss	xmm3, xmm4
	ja	.label_637
.label_621:
	mov	qword ptr [word ptr [r15 + 40]], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_637
.label_640:
	mov	eax, OFFSET FLAT:default_tuning
.label_637:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_629
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_641
	mulss	xmm0, dword ptr [rax + 8]
.label_641:
	movss	xmm1,  dword ptr [dword ptr [rip + label_529]]
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
	jne	.label_629
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_632
	nop	
.label_638:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_638
.label_632:
	mov	qword ptr [r15 + 0x48], 0
.label_629:
	mov	r12, r14
.label_626:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_622:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407f80

	.globl offtostr
	.type offtostr, @function
offtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_642
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_643:
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
	ja	.label_643
	jmp	.label_645
.label_642:
	add	rsi, 0x15
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_644:
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
	mov	byte ptr [rsi - 2], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_644
	mov	byte ptr [rsi - 2], 0x2d
	add	rsi, -2
.label_645:
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408040

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:.str_6
	call	getenv
	mov	rcx, rax
	mov	eax, 0x31069
	test	rcx, rcx
	je	.label_646
	mov	eax, 0x31069
	cmp	byte ptr [rcx], 0
	je	.label_646
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rcx
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	je	.label_646
	mov	eax, 0x31069
.label_646:
	cmp	rax, 0x7fffffff
	mov	ecx, 0x7fffffff
	cmovl	ecx, eax
	cmp	rax, -0x80000000
	mov	eax, 0x80000000
	cmovge	eax, ecx
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4080a0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_647
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_648
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_648
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_649
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_649:
	mov	rbx, r14
.label_648:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_647:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_7
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408150
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
	#Procedure 0x408190
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
	#Procedure 0x4081a0
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
	#Procedure 0x4081b0
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
	#Procedure 0x4081f0
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
	#Procedure 0x408210
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_650
	test	rdx, rdx
	je	.label_650
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_650:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408240
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
	#Procedure 0x4082c0

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
.label_692:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_751
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_753]]
.label_985:
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_986:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_655
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_655
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_673:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_738
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_738:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_673
.label_655:
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
	jmp	.label_689
.label_978:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_689
.label_981:
	mov	al, 1
.label_979:
	mov	r12b, 1
.label_982:
	test	r12b, 1
	mov	cl, 1
	je	.label_707
	mov	cl, al
.label_707:
	mov	al, cl
.label_980:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_712
	test	r10, r10
	je	.label_715
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_716
.label_712:
	xor	ecx, ecx
	jmp	.label_716
.label_983:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_755
	test	r10, r10
	je	.label_730
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_734
.label_984:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_689
.label_715:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_716:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_689
.label_755:
	xor	eax, eax
	jmp	.label_734
.label_730:
	mov	eax, 1
.label_734:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_689:
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
	jmp	.label_691
.label_690:
	inc	rdi
.label_691:
	cmp	rbp, -1
	je	.label_680
	cmp	rdi, rbp
	jne	.label_684
	jmp	.label_685
	nop	word ptr cs:[rax + rax]
.label_680:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_727
.label_684:
	test	r12b, r12b
	je	.label_694
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_695
	cmp	rbp, -1
	jne	.label_695
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
.label_695:
	cmp	rbx, rbp
	jbe	.label_720
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_733
	nop	word ptr [rax + rax]
.label_694:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_733
.label_720:
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
	jne	.label_747
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_733
	jmp	.label_663
.label_747:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_733:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_774
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_767]]
.label_1014:
	test	rdi, rdi
	jne	.label_660
	jmp	.label_654
.label_1018:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_772
	test	rdi, rdi
	jne	.label_775
	cmp	rbp, 1
	je	.label_654
	xor	r13d, r13d
	jmp	.label_651
.label_1007:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_659
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_663
	cmp	r9d, 2
	jne	.label_665
	mov	al, r14b
	and	al, 1
	jne	.label_668
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_672
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_672:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_682
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_682:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_731
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_731:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_698
.label_1008:
	mov	bl, 0x62
	jmp	.label_658
.label_1009:
	mov	cl, 0x74
	jmp	.label_686
.label_1010:
	mov	bl, 0x76
	jmp	.label_658
.label_1011:
	mov	bl, 0x66
	jmp	.label_658
.label_1012:
	mov	cl, 0x72
	jmp	.label_686
.label_1015:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_713
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_717
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
	jae	.label_723
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_723:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_743
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_743:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_754
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_754:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_713:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_651
.label_1016:
	cmp	r9d, 5
	je	.label_750
	cmp	r9d, 2
	jne	.label_660
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_660
	jmp	.label_759
.label_1017:
	cmp	r9d, 2
	jne	.label_760
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_764
	jmp	.label_768
.label_774:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_769
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
.label_653:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_661
	test	cl, cl
	je	.label_661
	xor	eax, eax
	jmp	.label_651
.label_772:
	test	rdi, rdi
	jne	.label_676
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_676
.label_654:
	mov	dl, 1
.label_1013:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_683
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_651
.label_659:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_690
	jmp	.label_660
.label_760:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_686
.label_764:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_697
.label_686:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_699
.label_658:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_651
	jmp	.label_709
.label_769:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_710
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_710:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_771:
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
	je	.label_742
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_746
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_748
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_763
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_671:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_757
	bt	rsi, rdx
	jb	.label_758
.label_757:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_671
.label_763:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_721
	xor	r13d, r13d
.label_721:
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
	je	.label_771
	jmp	.label_653
.label_676:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_651
.label_750:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_660
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_660
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_660
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_669
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_674
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_677
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_701
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_701:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_693
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_693:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_702
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_702:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_703
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_703:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_651
.label_660:
	xor	eax, eax
	xor	r13d, r13d
.label_651:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_726
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_729
	jmp	.label_706
	nop	word ptr [rax + rax]
.label_726:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_706
.label_729:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_739
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_744
	nop	word ptr cs:[rax + rax]
.label_706:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_744:
	mov	bl, r15b
	je	.label_697
	jmp	.label_709
.label_739:
	mov	bl, r15b
.label_709:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_663
	cmp	r9d, 2
	jne	.label_752
	mov	al, r14b
	and	al, 1
	jne	.label_752
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_749
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_749:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_662
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_662:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_766
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_766:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_752:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_773
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_773:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_687
.label_775:
	xor	r13d, r13d
	jmp	.label_651
.label_661:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_664
	nop	word ptr [rax + rax]
.label_656:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_664:
	test	cl, cl
	je	.label_675
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_678
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_681
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_681:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_678
	nop	word ptr [rax + rax]
.label_675:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_663
	cmp	r9d, 2
	jne	.label_652
	mov	al, r14b
	and	al, 1
	jne	.label_652
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_705
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_705:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_735
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_735:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_722
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_722:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_652:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_737
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_737:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_741
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_741:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_762
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_762:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_678:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_697
	test	r14b, 1
	je	.label_708
	mov	bl, al
	and	bl, 1
	jne	.label_708
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_679
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_679:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_770
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_770:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_708:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_656
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_656
	nop	dword ptr [rax]
.label_697:
	test	r14b, 1
	je	.label_670
	and	al, 1
	jne	.label_670
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_761
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_761:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_704
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_704:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_670:
	mov	bl, r15b
.label_687:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_724
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_724:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_690
.label_665:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_698
.label_668:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_698:
	cmp	rcx, r10
	jae	.label_714
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_714:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_719
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_728
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_732
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_736
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_736:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_740
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_740:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_651
.label_719:
	xor	r13d, r13d
	jmp	.label_651
.label_728:
	xor	r13d, r13d
	jmp	.label_651
.label_732:
	xor	r13d, r13d
	jmp	.label_651
.label_746:
	xor	r13d, r13d
.label_742:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_653
.label_748:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_756
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_696:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_745
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_696
	xor	r13d, r13d
	jmp	.label_653
.label_756:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_653
.label_745:
	xor	r13d, r13d
	jmp	.label_653
.label_669:
	xor	r13d, r13d
	jmp	.label_651
.label_674:
	xor	r13d, r13d
	jmp	.label_651
	nop	dword ptr [rax]
.label_685:
	mov	r13, rdi
.label_727:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_657
	or	al, dl
	je	.label_666
.label_657:
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
	je	.label_667
	or	al, dl
	jne	.label_667
	test	r8b, 1
	jne	.label_688
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_667
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_692
.label_667:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_700
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_700
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_700
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_718:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_711
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_711:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_718
.label_700:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_725
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_725
.label_683:
	mov	r9d, 2
	jmp	.label_663
.label_758:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_663
.label_666:
	mov	rbp, r13
	jmp	.label_663
.label_699:
	mov	r9d, 2
.label_663:
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
.label_765:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_725:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_688:
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
	jmp	.label_765
.label_717:
	mov	r9d, 2
	jmp	.label_663
.label_768:
	mov	r9d, 2
	jmp	.label_663
.label_759:
	mov	r9d, 2
	jmp	.label_663
.label_677:
	mov	r9d, 5
	jmp	.label_663
.label_751:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409450
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
	#Procedure 0x409520
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
	je	.label_776
	mov	qword ptr [rax], rbx
.label_776:
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
	#Procedure 0x409620
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_777
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_779:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_779
.label_777:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_780
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_781]], OFFSET FLAT:slot0
.label_780:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_778
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_778:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096c0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4096d0

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
	js	.label_782
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_787
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_783
.label_787:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_786
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
	jne	.label_785
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_785:
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
.label_783:
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
	ja	.label_788
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_784
	mov	rdi, rbx
	call	free
.label_784:
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
.label_788:
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
.label_782:
	call	abort
.label_786:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098a0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098b0
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
	#Procedure 0x4098d0
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
	#Procedure 0x4098f0

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
	je	.label_789
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
.label_789:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409960
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
	je	.label_790
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
.label_790:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4099d0

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
	je	.label_791
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
.label_791:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a40
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
	je	.label_792
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
.label_792:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ab0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_793]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_794]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_795]]
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
	#Procedure 0x409b20
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_793]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_794]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_795]]
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
	#Procedure 0x409b90

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_793]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_794]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_795]]
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
	#Procedure 0x409bf0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_793]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_794]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_795]]
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
	#Procedure 0x409c50

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
	je	.label_796
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
.label_796:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409d00
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_793]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_794]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_795]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_797
	test	rdx, rdx
	je	.label_797
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_797:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409d70
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_793]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_794]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_795]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_798
	test	rdx, rdx
	je	.label_798
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_798:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409de0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_793]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_794]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_795]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_799
	test	rsi, rsi
	je	.label_799
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_799:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409e50
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_793]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_794]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_795]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_800
	test	rsi, rsi
	je	.label_800
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
.label_800:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409ec0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ed0
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
	#Procedure 0x409ef0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f10

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
	#Procedure 0x409f30

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
	jne	.label_802
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_803
	cmp	ecx, 0x55
	jne	.label_801
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_801
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_801
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_801
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_801
	cmp	byte ptr [rax + 5], 0
	jne	.label_801
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_802
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_802
.label_803:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_801
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_801
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_801
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_801
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_801
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_801
	cmp	byte ptr [rax + 7], 0
	je	.label_804
.label_801:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_802:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_804:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_802
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_802
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a020

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_806:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_805
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_806
	cmp	rbx, 0x7ff00001
	jb	.label_805
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_806
.label_805:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a080

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
	ja	.label_807
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
	jmp	.label_808
.label_807:
	mov	eax, ebx
.label_808:
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
	#Procedure 0x40a0d0

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
	je	.label_811
	mov	edx, OFFSET FLAT:.str_8
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_810
.label_811:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_810:
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
	ja	.label_816
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_817]]
.label_962:
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
.label_816:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_815
.label_963:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
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
.label_964:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
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
.label_965:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_813
.label_966:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_814
.label_967:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_809
.label_968:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
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
.label_809:
	mov	qword ptr [rsp + 0x10], rdi
.label_814:
	mov	qword ptr [rsp + 8], rsi
.label_813:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_818
.label_970:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_815:
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
	jmp	.label_812
.label_969:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
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
.label_812:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_818:
	call	__fprintf_chk
.label_961:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a3c0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_819:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_819
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a3f0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_823:
	cmp	r10d, 0x28
	ja	.label_820
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_821
	nop	word ptr cs:[rax + rax]
.label_820:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_821:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_822
	inc	r9
	cmp	r9, 0xa
	jb	.label_823
.label_822:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a450

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_824
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_824:
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
.label_828:
	cmp	r8d, 0x28
	ja	.label_825
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_827
	nop	
.label_825:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_827:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_826
	inc	r9
	cmp	r9, 0xa
	jb	.label_828
.label_826:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a550
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
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
	.align	32
	#Procedure 0x40a5d0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_829
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_830
	test	rax, rax
	je	.label_829
.label_830:
	pop	rbx
	ret	
.label_829:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a610

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_831
	test	rax, rax
	je	.label_832
.label_831:
	pop	rbx
	ret	
.label_832:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a630
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_833
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_834
	test	rbx, rbx
	jne	.label_834
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_834:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_835
	test	rax, rax
	je	.label_833
.label_835:
	pop	rbx
	ret	
.label_833:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a680

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_836
	test	rbx, rbx
	jne	.label_836
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_836:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_838
	test	rax, rax
	je	.label_837
.label_838:
	pop	rbx
	ret	
.label_837:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40a6b0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_842
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_843
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_839
.label_842:
	test	rcx, rcx
	jne	.label_845
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_845:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_844
.label_839:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_840
	test	rbx, rbx
	jne	.label_840
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_840:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_841
	test	rax, rax
	je	.label_843
.label_841:
	pop	rbx
	ret	
.label_843:
	call	xalloc_die
.label_844:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a750
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_846
	test	rax, rax
	je	.label_847
.label_846:
	pop	rbx
	ret	
.label_847:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a770
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_850
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_852
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_849
	call	free
	xor	eax, eax
	jmp	.label_851
.label_850:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_848
	mov	qword ptr [rsi], rbx
.label_849:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_851
	test	rax, rax
	je	.label_848
.label_851:
	pop	rbx
	ret	
.label_848:
	call	xalloc_die
.label_852:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7e0
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
	je	.label_854
	test	r14, r14
	je	.label_853
.label_854:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_853:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a820
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_855
	call	rpl_calloc
	test	rax, rax
	je	.label_855
	pop	rcx
	ret	
.label_855:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a850

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
	je	.label_856
	test	r15, r15
	je	.label_857
.label_856:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_857:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a890
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
	je	.label_859
	test	r15, r15
	je	.label_858
.label_859:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_858:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a8e0

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
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a910

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_863
	cmp	eax, 1
	je	.label_864
	cmp	eax, 3
	jne	.label_866
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_860
.label_864:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_860
.label_863:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_865
	cmp	rbx, r15
	jbe	.label_862
.label_865:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_861
	mov	dword ptr [rax], 0x4b
	jmp	.label_860
.label_866:
	call	__errno_location
	jmp	.label_860
.label_861:
	mov	dword ptr [rax], 0x22
.label_860:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_862:
	mov	rax, rbx
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
	.align	32
	#Procedure 0x40a9e0

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40aa10

	.globl xnanosleep
	.type xnanosleep, @function
xnanosleep:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	call	dtotimespec
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdx
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	lea	rdi, [rsp]
	xor	esi, esi
	call	rpl_nanosleep
	test	eax, eax
	je	.label_867
	lea	r15, [rsp]
	nop	dword ptr [rax + rax]
.label_868:
	mov	eax, dword ptr [r14]
	mov	ebx, 0xffffffff
	or	eax, 4
	cmp	eax, 4
	jne	.label_867
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	xor	esi, esi
	mov	rdi, r15
	call	rpl_nanosleep
	test	eax, eax
	jne	.label_868
.label_867:
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40aa90

	.globl xstrtod
	.type xstrtod, @function
xstrtod:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	r13
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, rbx
	je	.label_869
	test	r15, r15
	jne	.label_871
	cmp	byte ptr [rcx], 0
	je	.label_871
	xor	eax, eax
	jmp	.label_872
.label_871:
	mov	al, 1
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.label_873
	jnp	.label_870
.label_873:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_870
.label_869:
	xor	eax, eax
.label_870:
	test	r15, r15
	je	.label_872
	mov	qword ptr [r15], rcx
.label_872:
	movsd	qword ptr [r14], xmm0
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab10

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
	jae	.label_878
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_883:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_883
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	r13d, 4
	cmp	eax, 0x2d
	je	.label_889
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
	je	.label_884
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_888
	cmp	eax, 0x22
	jne	.label_889
	mov	dword ptr [rsp + 4], 1
.label_888:
	test	r14, r14
	jne	.label_891
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_889
.label_884:
	test	r14, r14
	je	.label_889
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_889
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	mov	dword ptr [rsp + 4], 0
	mov	ebp, 1
	test	rax, rax
	je	.label_889
.label_891:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_880
	mov	r15, rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_886
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_875
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_875
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_875
	movsx	eax, byte ptr [r12 + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_874
	cmp	eax, 0x44
	je	.label_874
	cmp	eax, 0x69
	jne	.label_875
	movzx	eax, byte ptr [r12 + 2]
	mov	ecx, 3
	cmp	eax, 0x42
	je	.label_882
	mov	ecx, 1
.label_882:
	mov	esi, 0x400
	jmp	.label_875
.label_880:
	mov	rax, qword ptr [rsp + 8]
	mov	r13d, dword ptr [rsp + 4]
	jmp	.label_890
.label_874:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_875:
	cmp	r13d, 0x59
	jg	.label_895
	lea	eax, [r13 - 0x42]
	cmp	eax, 0xe
	ja	.label_896
	jmp	qword ptr [word ptr [+ (rax * 8) + label_898]]
.label_994:
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	shl	rbp, 0xa
	jmp	.label_899
.label_895:
	cmp	r13d, 0x73
	jg	.label_900
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_876
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_879]]
.label_1002:
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_899:
	cmp	rax, 1
	sbb	rax, rax
	not	rax
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_887
.label_896:
	cmp	r13d, 0x54
	je	.label_881
	cmp	r13d, 0x59
	jne	.label_886
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
	jmp	.label_893
.label_900:
	cmp	r13d, 0x74
	je	.label_881
	cmp	r13d, 0x77
	jne	.label_886
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rdx, -1
	cmovns	rdx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rdx
	jmp	.label_887
.label_996:
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
	jmp	.label_894
.label_997:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	and	eax, 1
	jmp	.label_885
.label_998:
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
	jmp	.label_892
.label_881:
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
	jmp	.label_877
.label_876:
	cmp	r13d, 0x5a
	jne	.label_886
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
.label_893:
	movzx	eax, dl
	and	eax, 1
	jmp	.label_885
.label_886:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	eax, dword ptr [rsp + 4]
	or	eax, 2
	mov	r13d, eax
	jmp	.label_889
.label_995:
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
	jmp	.label_892
.label_999:
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
.label_877:
	or	dl, r10b
.label_894:
	or	dl, bl
.label_892:
	and	dl, 1
	movzx	eax, dl
.label_885:
	mov	rbp, rsi
.label_887:
	or	eax, dword ptr [rsp + 4]
	lea	rdx, [r12 + rcx]
	mov	qword ptr [r15], rdx
	cmp	byte ptr [r12 + rcx], 0
	je	.label_897
	or	eax, 2
.label_897:
	mov	r13d, eax
	mov	rax, qword ptr [rsp + 8]
.label_890:
	mov	qword ptr [rax], rbp
.label_889:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_878:
	mov	edi, OFFSET FLAT:.str_9
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b1c0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_901
	test	rsi, rsi
	mov	ecx, 1
	je	.label_902
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_902
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_901:
	mov	ecx, 1
.label_902:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b210

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_906
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_906:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_913
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_912
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_909
	test	esi, esi
	jne	.label_913
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_914
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_916
.label_913:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_919
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_909
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_922
.label_912:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_918
.label_909:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_905
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_907
.label_905:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_907:
	mov	edx, dword ptr [rax]
.label_917:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
.label_918:
	mov	ebp, eax
.label_904:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_922:
	cmp	eax, 6
	jne	.label_919
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_920
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_915
.label_919:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_910
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_908
.label_914:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_916:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	jmp	.label_917
.label_920:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_915:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_921
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_903
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_903
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_904
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	mov	al, 1
	jmp	.label_923
.label_903:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_904
.label_910:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_908:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_918
.label_921:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	sete	al
.label_923:
	test	al, al
	je	.label_904
	test	ebp, ebp
	js	.label_904
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_911
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_904
.label_911:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_904
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b4f0

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
	je	.label_924
	cmp	r15, -2
	jb	.label_924
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_924
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_924:
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
	#Procedure 0x40b550

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, 0x3b9aca00
	jb	.label_925
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	jmp	.label_927
.label_925:
	mov	rbx, qword ptr [rdi]
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_928:
	mov	qword ptr [rsp + 8], rcx
	cmp	rbx, 0x1fa401
	jl	.label_926
	mov	qword ptr [rsp], 0x1fa400
	mov	rdi, r14
	mov	rsi, r15
	call	nanosleep
	add	rbx, -0x1fa400
	test	eax, eax
	mov	ecx, 0
	je	.label_928
	test	r15, r15
	je	.label_927
	add	qword ptr [r15], rbx
	jmp	.label_927
.label_926:
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp]
	mov	rsi, r15
	call	nanosleep
.label_927:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b5f0

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_929
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:.str_10
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
.label_929:
	mov	rdx,  qword ptr [word ptr [rip + c_locale_cache]]
	test	rdx, rdx
	je	.label_931
	mov	rdi, r14
	mov	rsi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strtod_l
.label_931:
	test	rbx, rbx
	je	.label_930
	mov	qword ptr [rbx], r14
.label_930:
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b650

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
	jne	.label_933
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_932
	test	cl, cl
	jne	.label_932
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_932
.label_933:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_932
	call	__errno_location
	mov	dword ptr [rax], 0
.label_932:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b6b0

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	movabs	rcx, 0x7fffffffffffffff
	xor	edx, edx
	ucomisd	xmm0,  qword ptr [word ptr [rip + label_934]]
	jbe	.label_935
	mov	edx, 0x3b9ac9ff
	movsd	xmm1,  qword ptr [word ptr [rip + label_936]]
	ucomisd	xmm1, xmm0
	jbe	.label_937
	cvttsd2si	rsi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rsi
	subsd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_938]]
	cvttsd2si	rax, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	ucomisd	xmm0, xmm1
	seta	cl
	movzx	ecx, cl
	add	rcx, rax
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rdx, 0x3f
	sar	rax, 0x1a
	add	rax, rdx
	imul	rdi, rax, 0x3b9aca00
	mov	rdx, rcx
	sub	rdx, rdi
	add	rdx, 0x3b9aca00
	sub	rcx, rdi
	cmovns	rdx, rcx
	add	rax, rsi
	sar	rcx, 0x3f
	add	rcx, rax
.label_937:
	mov	rax, rcx
	ret	
.label_935:
	inc	rcx
	mov	rax, rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b760

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_940
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_941
	cmp	byte ptr [rax + 1], 0
	je	.label_939
.label_941:
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_940
.label_939:
	xor	ebx, ebx
.label_940:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b7a0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	je	.label_942
	mov	rax, rcx
.label_942:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b7d0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b7e0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_943
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_944
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_943
.label_944:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_943
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_945
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_945:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_943:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b860

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_946
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_946
	test	byte ptr [rbx + 1], 1
	je	.label_946
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_946:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b8a0

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
	jne	.label_947
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_947
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_948
.label_947:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_948:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_949
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_949:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x40b910

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
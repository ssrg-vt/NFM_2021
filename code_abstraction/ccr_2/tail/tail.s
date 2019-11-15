	.section	.text
	.align	32
	#Procedure 0x401ca0

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
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, 0xa
	mov	ecx, 5
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_13
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_22
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_22
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	mov	ecx, OFFSET FLAT:label_20
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_15:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401f90

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2168
	mov	r13, rsi
	mov	r14d, edi
	mov	qword ptr [rsp + 0x78], 0xa
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_126
	call	setlocale
	mov	edi, OFFSET FLAT:label_250
	mov	esi, OFFSET FLAT:label_373
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_250
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + have_read_stdin],  0
	mov	byte ptr [rip + count_lines],  1
	mov	byte ptr [rip + print_headers],  0
	mov	byte ptr [rip + from_start],  0
	mov	byte ptr [rip + forever],  0
	mov	byte ptr [rip + line_end],  1
	cmp	r14d, 2
	je	.label_43
	cmp	r14d, 3
	jne	.label_41
	mov	rax, qword ptr [r13 + 0x10]
	cmp	byte ptr [rax], 0x2d
	jne	.label_43
	mov	cl, byte ptr [rax + 1]
	test	cl, cl
	jne	.label_45
	jmp	.label_43
.label_41:
	lea	eax, [r14 - 3]
	cmp	eax, 1
	ja	.label_47
	mov	rax, qword ptr [r13 + 0x10]
	cmp	byte ptr [rax], 0x2d
	jne	.label_51
	mov	cl, byte ptr [rax + 1]
.label_45:
	cmp	cl, 0x2d
	jne	.label_51
	cmp	byte ptr [rax + 2], 0
	je	.label_43
	xor	ebx, ebx
	jmp	.label_55
.label_43:
	call	posix2_version
	mov	rcx, qword ptr [r13 + 8]
	lea	rdi, [rcx + 1]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x2d
	je	.label_57
	cmp	edx, 0x2b
	jne	.label_47
	add	eax, 0xfffcf250
	mov	bl, 1
	cmp	eax, 0x2b8
	ja	.label_61
	xor	ebx, ebx
	jmp	.label_55
.label_47:
	xor	ebx, ebx
	jmp	.label_55
.label_57:
	cmp	eax, 0x30db0
	jge	.label_65
	xor	ebx, ebx
	jmp	.label_61
.label_51:
	xor	ebx, ebx
	jmp	.label_55
.label_65:
	xor	eax, eax
	cmp	byte ptr [rdi], 0x63
	sete	al
	xor	ebx, ebx
	cmp	byte ptr [rdi + rax], 0
	je	.label_55
.label_61:
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_73:
	movzx	edx, byte ptr [rcx + rax + 1]
	movsx	esi, dl
	lea	ebp, [rsi - 0x30]
	inc	rax
	cmp	ebp, 0xa
	jb	.label_73
	mov	r15b, 1
	mov	r8d, 0xa
	cmp	esi, 0x6c
	je	.label_75
	cmp	esi, 0x63
	je	.label_76
	cmp	esi, 0x62
	jne	.label_77
	mov	r8d, 0x1400
.label_76:
	xor	r15d, r15d
.label_75:
	lea	rsi, [rcx + rax + 1]
	mov	dl, byte ptr [rcx + rax + 1]
	jmp	.label_81
.label_77:
	add	rcx, rax
	mov	rsi, rcx
.label_81:
	lea	rcx, [rsi + 1]
	cmp	dl, 0x66
	sete	r12b
	cmovne	rcx, rsi
	cmp	byte ptr [rcx], 0
	je	.label_83
	xor	ebx, ebx
	jmp	.label_55
.label_83:
	cmp	rax, 1
	jne	.label_87
	mov	qword ptr [rsp + 0x78], r8
	jmp	.label_89
.label_87:
	lea	rcx, [rsp + 0x78]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_352
	call	xstrtoumax
	test	eax, 0xfffffffd
	jne	.label_95
.label_89:
	mov	byte ptr [rip + from_start],  bl
	mov	byte ptr [rip + count_lines],  r15b
	mov	byte ptr [rip + forever],  r12b
	mov	bl, 1
.label_55:
	movzx	eax, bl
	sub	r14d, eax
	lea	r15, [r13 + rax*8]
	movsd	xmm0, qword ptr [rip + label_98]
	movsd	qword ptr [rsp + 0x98], xmm0
	xor	eax, eax
	jmp	.label_99
.label_106:
	mov	byte ptr [rip + reopen_inaccessible_files],  1
	mov	eax, r12d
	jmp	.label_99
.label_1095:
	mov	byte ptr [rip + forever],  1
	mov	dword ptr [rip + follow_mode],  1
	jmp	.label_106
	nop	word ptr cs:[rax + rax]
.label_99:
	mov	r12d, eax
	mov	edx, OFFSET FLAT:label_112
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r15
	call	getopt_long
	mov	ebx, eax
	lea	ecx, [rbx + 0x83]
	cmp	ecx, 0x108
	ja	.label_115
	mov	eax, 2
	jmp	qword ptr [(rcx * 8) + label_118]
.label_1096:
	cmp	ebx, 0x6e
	sete	byte ptr [rip + count_lines]
	mov	rbp, qword ptr [rip + optarg]
	movzx	eax, byte ptr [rbp]
	cmp	al, 0x2d
	je	.label_121
	cmp	al, 0x2b
	jne	.label_131
	mov	byte ptr [rip + from_start],  1
	jmp	.label_131
.label_1097:
	mov	byte ptr [rip + forever],  1
	mov	rsi, qword ptr [rip + optarg]
	test	rsi, rsi
	je	.label_269
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_141
	mov	edx, OFFSET FLAT:follow_mode_string
	mov	ecx, OFFSET FLAT:follow_mode_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + follow_mode_map]
	mov	dword ptr [rip + follow_mode],  eax
	mov	eax, r12d
	jmp	.label_99
.label_1101:
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_153
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_126
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rip + max_n_unchanged_stats_between_opens],  rax
	mov	eax, r12d
	jmp	.label_99
.label_1103:
	mov	byte ptr [rip + presume_input_pipe],  1
	mov	eax, r12d
	jmp	.label_99
.label_1098:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtod
	lea	rdx, [rsp + 0x160]
	call	xstrtod
	test	al, al
	je	.label_184
	movsd	xmm0, qword ptr [rsp + 0x160]
	movsd	qword ptr [rsp + 0x98], xmm0
	ucomisd	xmm0, qword ptr [label_183]
	jb	.label_184
	mov	eax, r12d
	jmp	.label_99
.label_1100:
	mov	byte ptr [rip + line_end],  0
	mov	eax, r12d
	jmp	.label_99
.label_1099:
	mov	eax, 1
	jmp	.label_99
.label_1102:
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_126
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [rip + pid],  eax
	mov	eax, r12d
	jmp	.label_99
.label_1104:
	mov	byte ptr [rip + disable_inotify],  1
	mov	eax, r12d
	jmp	.label_99
.label_269:
	mov	dword ptr [rip + follow_mode],  2
	mov	eax, r12d
	jmp	.label_99
.label_121:
	inc	rbp
	mov	qword ptr [rip + optarg],  rbp
.label_131:
	xor	edi, edi
	cmp	ebx, 0x6e
	jne	.label_215
	mov	esi, OFFSET FLAT:label_216
	jmp	.label_217
.label_215:
	mov	esi, OFFSET FLAT:label_219
.label_217:
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_223
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x78], rax
	mov	eax, r12d
	jmp	.label_99
.label_1093:
	cmp	byte ptr [rip + reopen_inaccessible_files],  1
	jne	.label_231
	cmp	byte ptr [rip + forever],  0
	je	.label_365
	cmp	dword ptr [rip + follow_mode],  2
	jne	.label_231
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
	jmp	.label_368
.label_365:
	mov	byte ptr [rip + reopen_inaccessible_files],  0
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_236
.label_368:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_231:
	mov	edi, dword ptr [rip + pid]
	test	edi, edi
	je	.label_241
	mov	al, byte ptr [rip + forever]
	test	al, al
	jne	.label_241
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_130
.label_241:
	test	edi, edi
	je	.label_130
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_130
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_130
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_258
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	dword ptr [rip + pid],  0
.label_130:
	mov	r8b, byte ptr [rip + from_start]
	mov	r9, qword ptr [rsp + 0x78]
	test	r8b, r8b
	je	.label_266
	test	r9, r9
	je	.label_266
	dec	r9
	mov	qword ptr [rsp + 0x78], r9
.label_266:
	movsxd	rax, dword ptr [rip + optind]
	mov	r13d, OFFSET FLAT:main.dummy_stdin
	mov	ecx, 1
	cmp	r14d, eax
	jle	.label_272
	sub	r14d, eax
	lea	r13, [r15 + rax*8]
	je	.label_275
	movsxd	rcx, r14d
.label_272:
	mov	r10d, ecx
	and	r10d, 1
	xor	esi, esi
	cmp	rcx, 1
	mov	qword ptr [rsp + 0x20], rcx
	jne	.label_279
	xor	ecx, ecx
	jmp	.label_285
.label_279:
	mov	rbp, rcx
	sub	rbp, r10
	xor	esi, esi
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_296:
	mov	rax, qword ptr [r13 + rsi*8]
	movzx	edx, byte ptr [rax]
	mov	ecx, 0x2d
	sub	ecx, edx
	jne	.label_287
	movzx	ecx, byte ptr [rax + 1]
	neg	ecx
.label_287:
	mov	rdx, qword ptr [r13 + rsi*8 + 8]
	movzx	ebx, byte ptr [rdx]
	mov	eax, 0x2d
	sub	eax, ebx
	jne	.label_226
	movzx	eax, byte ptr [rdx + 1]
	neg	eax
.label_226:
	test	ecx, ecx
	mov	cl, 1
	mov	dl, 1
	je	.label_292
	mov	edx, edi
.label_292:
	test	eax, eax
	je	.label_294
	mov	cl, dl
.label_294:
	add	rsi, 2
	cmp	rbp, rsi
	mov	dil, cl
	jne	.label_296
.label_285:
	test	r10, r10
	je	.label_297
	mov	rdx, qword ptr [r13 + rsi*8]
	movzx	esi, byte ptr [rdx]
	mov	eax, 0x2d
	sub	eax, esi
	jne	.label_298
	movzx	eax, byte ptr [rdx + 1]
	neg	eax
.label_298:
	test	eax, eax
	mov	al, 1
	je	.label_300
	mov	eax, ecx
.label_300:
	mov	cl, al
.label_297:
	and	cl, 1
	mov	esi, dword ptr [rip + follow_mode]
	je	.label_303
	cmp	esi, 1
	je	.label_305
.label_303:
	mov	dl, byte ptr [rip + forever]
	test	cl, cl
	sete	al
	xor	ecx, ecx
	test	dl, dl
	je	.label_306
	test	al, al
	jne	.label_306
	cmp	qword ptr [rsp + 0x20], 1
	jne	.label_310
	mov	eax, dword ptr [rip + pid]
	test	eax, eax
	jne	.label_310
	cmp	esi, 2
	jne	.label_310
	lea	rdx, [rsp + 0x160]
	mov	edi, 1
	xor	esi, esi
	call	__fxstat
	test	eax, eax
	jne	.label_310
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x178]
	cmp	eax, 0x8000
	jne	.label_316
.label_310:
	xor	edi, edi
	call	isatty
	test	eax, eax
	je	.label_316
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_316:
	mov	r9, qword ptr [rsp + 0x78]
	mov	dl, byte ptr [rip + forever]
	xor	ecx, ecx
	mov	r8b, byte ptr [rip + from_start]
	jmp	.label_306
.label_275:
	mov	cl, 1
	mov	dl, byte ptr [rip + forever]
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
.label_306:
	test	r9, r9
	jne	.label_326
	xor	eax, eax
	or	r8b, dl
	je	.label_147
.label_326:
	mov	dword ptr [rsp + 0x74], ecx
	movabs	rax, 0x155555555555556
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, rax
	jae	.label_322
	mov	rax, rcx
	shl	rax, 5
	lea	rdi, [rax + rax*2]
	call	xmalloc
	mov	r14, rax
	mov	rbp, r14
	mov	ebx, dword ptr [rsp + 0x74]
	test	bl, bl
	jne	.label_337
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdx, [rax - 1]
	and	eax, 3
	xor	ecx, ecx
	cmp	rdx, 3
	jb	.label_340
	mov	rdx, qword ptr [rsp + 0x20]
	sub	rdx, rax
	xor	ecx, ecx
	mov	rsi, r14
	nop	word ptr cs:[rax + rax]
.label_345:
	mov	rdi, qword ptr [r13 + rcx*8]
	mov	qword ptr [rsi], rdi
	mov	rdi, qword ptr [r13 + rcx*8 + 8]
	mov	qword ptr [rsi + 0x60], rdi
	mov	rdi, qword ptr [r13 + rcx*8 + 0x10]
	mov	qword ptr [rsi + 0xc0], rdi
	mov	rdi, qword ptr [r13 + rcx*8 + 0x18]
	mov	qword ptr [rsi + 0x120], rdi
	add	rcx, 4
	add	rsi, 0x180
	cmp	rdx, rcx
	jne	.label_345
.label_340:
	test	rax, rax
	je	.label_337
	lea	rdx, [rcx + rcx*2]
	shl	rdx, 5
	add	rdx, rbp
	lea	rcx, [r13 + rcx*8]
	neg	rax
	nop	word ptr cs:[rax + rax]
.label_356:
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rdx], rsi
	add	rdx, 0x60
	add	rcx, 8
	inc	rax
	jne	.label_356
.label_337:
	cmp	r12d, 1
	je	.label_358
	test	r12d, r12d
	jne	.label_359
	cmp	qword ptr [rsp + 0x20], 2
	jb	.label_359
.label_358:
	mov	byte ptr [rip + print_headers],  1
.label_359:
	mov	al, 1
	test	bl, bl
	mov	r12, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x38], rbp
	mov	qword ptr [rsp + 0x30], r14
	jne	.label_251
	mov	al, 1
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x20], r12
	jmp	.label_78
.label_176:
	xor	ebp, ebp
.label_315:
	mov	rcx, qword ptr [rsp + 0x68]
	add	rax, rcx
	mov	r13, rax
.label_69:
	lea	rax, [rbp - 1]
	mov	qword ptr [rsp + 0x18], rax
	mov	r14, qword ptr [rsp + 0x50]
	sub	r14, rbp
	mov	qword ptr [rsp + 0x68], rcx
	sub	r14, rcx
	mov	qword ptr [rsp + 0x28], rbp
.label_44:
	test	rbp, rbp
	je	.label_369
	movzx	eax, byte ptr [rip + line_end]
	test	al, al
	mov	esi, 0
	mov	eax, 0xa
	cmovne	esi, eax
	lea	rbx, [rsp + 0x160]
	mov	rdi, rbx
	mov	rdx, rbp
	call	memrchr
	mov	ecx, 5
	test	rax, rax
	je	.label_234
	mov	rbp, rax
	sub	rbp, rbx
	xor	ecx, ecx
	mov	rdx, qword ptr [rsp + 0x10]
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	mov	qword ptr [rsp + 0x10], rdx
	jne	.label_234
	mov	rsi, qword ptr [rsp + 0x18]
	sub	rsi, rbp
	je	.label_376
	inc	rax
	mov	rdi, rax
	call	xwrite_stdout
.label_376:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x58]
	mov	edx, dword ptr [rsp]
	mov	rcx, r14
	call	dump_remainder
	add	r13, rax
	mov	ecx, 1
.label_234:
	mov	eax, ecx
	and	al, 7
	je	.label_44
	cmp	al, 5
	jne	.label_88
.label_369:
	lea	rbp, [rsp + 0x160]
	mov	r14, qword ptr [rsp + 0x68]
	cmp	r14, qword ptr [rsp + 0x88]
	mov	edi, dword ptr [rsp]
	mov	rbx, qword ptr [rsp + 0x58]
	je	.label_92
	mov	qword ptr [rsp + 0x28], r13
	add	r14, -0x2000
	xor	edx, edx
	mov	rsi, r14
	mov	r13d, edi
	mov	rcx, rbx
	call	xlseek
	mov	edx, 0x2000
	mov	edi, r13d
	mov	rsi, rbp
	call	safe_read
	mov	rbp, rax
	cmp	rbp, -1
	je	.label_187
	mov	r13, rbp
	add	r13, r14
	mov	rcx, r14
	jmp	.label_199
.label_88:
	test	ecx, ecx
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rbp, qword ptr [rsp + 0x28]
	jne	.label_67
.label_199:
	test	rbp, rbp
	jne	.label_69
	jmp	.label_67
.label_92:
	xor	edx, edx
	mov	rbp, qword ptr [rsp + 0x88]
	mov	rsi, rbp
	mov	r14d, edi
	mov	rcx, rbx
	call	xlseek
	xor	edi, edi
	mov	rsi, rbx
	mov	edx, r14d
	mov	rcx, qword ptr [rsp + 0x50]
	call	dump_remainder
	mov	r13, rax
	add	r13, rbp
	jmp	.label_67
.label_187:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
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
	mov	rdx, rbp
	call	error
	mov	r13, qword ptr [rsp + 0x28]
.label_229:
	xor	r15d, r15d
	jmp	.label_67
.label_78:
	mov	byte ptr [rsp + 0xf], al
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rsp + 0x10], rax
	lea	rbp, [r15 + r15*2]
	shl	rbp, 5
	mov	rdi, qword ptr [r14 + rbp]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_91
	cmp	byte ptr [rdi + 1], 0
	je	.label_96
.label_91:
	mov	dword ptr [rsp + 0x80], 0
	xor	esi, esi
	xor	eax, eax
	call	open_safer
	mov	ecx, eax
.label_196:
	mov	rax, qword ptr [rsp + 0x38]
	lea	rax, [rax + rbp]
	mov	qword ptr [rsp + 0x48], rax
	mov	bl, byte ptr [rip + reopen_inaccessible_files]
	cmp	ecx, -1
	sete	al
	and	al, bl
	xor	al, 1
	cmp	ecx, -1
	mov	byte ptr [r14 + rbp + 0x36], al
	mov	qword ptr [rsp + 0x40], r15
	je	.label_100
	cmp	byte ptr [rip + print_headers],  1
	mov	dword ptr [rsp], ecx
	jne	.label_110
	mov	rax, qword ptr [rsp + 0x48]
	mov	rcx, qword ptr [rax]
	cmp	byte ptr [rcx], 0x2d
	jne	.label_111
	cmp	byte ptr [rcx + 1], 0
	jne	.label_111
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_111:
	mov	al, byte ptr [rip + write_header.first_file]
	test	al, al
	mov	edx, OFFSET FLAT:label_126
	mov	eax, OFFSET FLAT:label_202
	cmovne	rdx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_203
	xor	eax, eax
	call	__printf_chk
	mov	byte ptr [rip + write_header.first_file],  1
	mov	ecx, dword ptr [rsp]
.label_110:
	mov	rax, qword ptr [rsp + 0x48]
	mov	r14, qword ptr [rax]
	cmp	byte ptr [r14], 0x2d
	jne	.label_134
	cmp	byte ptr [r14 + 1], 0
	jne	.label_134
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	ecx, dword ptr [rsp]
	mov	r14, rax
	nop	dword ptr [rax]
.label_134:
	cmp	byte ptr [rip + count_lines],  0
	mov	qword ptr [rsp + 0x60], rbp
	mov	edi, 1
	mov	esi, ecx
	lea	rdx, [rsp + 0xd0]
	je	.label_143
	call	__fxstat
	test	eax, eax
	jne	.label_150
	cmp	byte ptr [rip + from_start],  0
	je	.label_152
	mov	r13, r14
	cmp	qword ptr [rsp + 0x10], 0
	mov	r14d, 0
	je	.label_155
	xor	r14d, r14d
	jmp	.label_162
.label_100:
	cmp	byte ptr [rip + forever],  0
	je	.label_163
	mov	dword ptr [r14 + rbp + 0x38], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [r14 + rbp + 0x3c], ecx
	xor	bl, 1
	mov	byte ptr [r14 + rbp + 0x34], bl
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [r14 + rbp + 0x20], xmm0
	jmp	.label_171
	nop	word ptr [rax + rax]
.label_143:
	call	__fxstat
	test	eax, eax
	je	.label_181
.label_150:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	rbx, r14
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
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
	call	error
	xor	r15d, r15d
	jmp	.label_60
.label_96:
	mov	byte ptr [rip + have_read_stdin],  1
	xor	ecx, ecx
	mov	al, 1
	mov	dword ptr [rsp + 0x80], eax
	jmp	.label_196
.label_163:
	call	__errno_location
.label_171:
	mov	r13d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rax]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_205
	cmp	byte ptr [rsi + 1], 0
	jne	.label_205
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_205:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	r15d, r15d
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	call	error
	mov	r14, qword ptr [rsp + 0x30]
	mov	r12, qword ptr [rsp + 0x20]
	jmp	.label_220
.label_181:
	mov	cl, byte ptr [rip + presume_input_pipe]
	xor	cl, 1
	cmp	qword ptr [rsp + 0x10], 0
	setns	al
	and	al, cl
	cmp	byte ptr [rip + from_start],  0
	je	.label_224
	test	al, al
	je	.label_230
	mov	eax, dword ptr [rsp + 0xe8]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_232
	mov	edx, 1
	mov	edi, dword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, r14
	call	xlseek
	test	rax, rax
	jns	.label_37
.label_232:
	mov	edx, 1
	mov	edi, dword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x10]
	call	lseek
	cmp	rax, -1
	je	.label_230
.label_37:
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rcx, -1
	mov	ebp, dword ptr [rsp]
	jmp	.label_244
	nop	word ptr cs:[rax + rax]
.label_270:
	mov	qword ptr [rsp + 0x10], rbp
.label_162:
	mov	edx, 0x2000
	mov	edi, dword ptr [rsp]
	lea	rsi, [rsp + 0x160]
	call	safe_read
	mov	r15b, 1
	test	rax, rax
	je	.label_60
	cmp	rax, -1
	mov	rbp, qword ptr [rsp + 0x10]
	je	.label_257
	lea	r15, [rsp + rax + 0x160]
	add	r14, rax
	mov	al, byte ptr [rip + line_end]
	test	al, al
	mov	ebx, 0
	mov	eax, 0xa
	cmovne	ebx, eax
	lea	rax, [rsp + 0x160]
	nop	dword ptr [rax]
.label_271:
	mov	rdx, r15
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, ebx
	call	memchr
	test	rax, rax
	je	.label_270
	inc	rax
	dec	rbp
	jne	.label_271
	cmp	rax, r15
	jae	.label_155
	sub	r15, rax
	mov	rdi, rax
	mov	rsi, r15
	call	xwrite_stdout
.label_155:
	xor	edi, edi
	mov	rcx, -1
	mov	rsi, r13
	mov	edx, dword ptr [rsp]
	call	dump_remainder
	add	r14, rax
	jmp	.label_280
.label_152:
	mov	al, byte ptr [rip + presume_input_pipe]
	test	al, al
	mov	qword ptr [rsp + 0x58], r14
	jne	.label_282
	mov	eax, dword ptr [rsp + 0xe8]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_282
	xor	esi, esi
	mov	edx, 1
	mov	edi, dword ptr [rsp]
	call	lseek
	mov	rbp, rax
	cmp	rbp, -1
	je	.label_282
	xor	esi, esi
	mov	edx, 2
	mov	ebx, dword ptr [rsp]
	mov	edi, ebx
	call	lseek
	mov	r13, rax
	sub	rax, rbp
	jle	.label_293
	mov	r15b, 1
	test	r13, r13
	je	.label_80
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_67
	mov	qword ptr [rsp + 0x88], rbp
	mov	rcx, rax
	sar	rcx, 0x3f
	shr	rcx, 0x33
	add	rcx, rax
	and	rcx, 0xffffffffffffe000
	sub	rax, rcx
	mov	ebx, 0x2000
	cmovne	rbx, rax
	mov	rsi, r13
	sub	rsi, rbx
	xor	edx, edx
	mov	ebp, dword ptr [rsp]
	mov	edi, ebp
	mov	qword ptr [rsp + 0x68], rsi
	mov	rcx, r14
	call	xlseek
	mov	edi, ebp
	lea	rsi, [rsp + 0x160]
	mov	rdx, rbx
	call	safe_read
	cmp	rax, -1
	je	.label_311
	test	rax, rax
	mov	qword ptr [rsp + 0x50], r13
	je	.label_176
	movsx	esi, byte ptr [rsp + rax + 0x15f]
	mov	cl, byte ptr [rip + line_end]
	test	cl, cl
	mov	ecx, 0
	mov	edx, 0xa
	cmovne	ecx, edx
	xor	edx, edx
	cmp	esi, ecx
	setne	dl
	sub	qword ptr [rsp + 0x10], rdx
	mov	rbp, rax
	jmp	.label_315
.label_230:
	mov	r13, r14
	mov	rcx, qword ptr [rsp + 0x10]
	test	rcx, rcx
	mov	r14d, 0
	je	.label_323
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_330:
	mov	rbx, rcx
	mov	edx, 0x2000
	mov	edi, dword ptr [rsp]
	lea	rsi, [rsp + 0x160]
	call	safe_read
	mov	r15b, 1
	test	rax, rax
	je	.label_60
	cmp	rax, -1
	je	.label_257
	add	r14, rax
	mov	rcx, rbx
	sub	rcx, rax
	jb	.label_327
	jne	.label_330
	jmp	.label_323
.label_224:
	mov	rbx, -1
	test	al, al
	mov	qword ptr [rsp + 0x58], r14
	je	.label_331
	movzx	eax, word ptr [rsp + 0xe8]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_335
	mov	r14, qword ptr [rsp + 0x100]
	jmp	.label_342
.label_331:
	mov	r14, -1
	jmp	.label_342
.label_327:
	sub	rax, rbx
	je	.label_323
	lea	rdi, [rsp + rbx + 0x160]
	mov	rsi, rax
	call	xwrite_stdout
.label_323:
	mov	rcx, -1
	mov	rbx, r14
	mov	ebp, dword ptr [rsp]
	mov	r14, r13
	jmp	.label_244
.label_335:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	neg	rsi
	mov	edx, 2
	mov	edi, dword ptr [rsp]
	call	lseek
	mov	rbx, rax
	lea	r14, [rbx + rbp]
	cmp	rbx, -1
	cmove	r14, rbx
.label_342:
	mov	rax, qword ptr [rsp + 0x108]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	cmovb	rcx, rax
	test	rax, rax
	mov	eax, 0x200
	cmovle	rcx, rax
	cmp	r14, rcx
	jle	.label_350
	cmp	rbx, -1
	jne	.label_105
	xor	esi, esi
	mov	edx, 1
	mov	edi, dword ptr [rsp]
	mov	rcx, qword ptr [rsp + 0x58]
	call	xlseek
	mov	rbx, rax
.label_105:
	mov	rax, r14
	sub	rax, rbx
	mov	ebp, dword ptr [rsp]
	jle	.label_222
	mov	r13, qword ptr [rsp + 0x10]
	cmp	rax, r13
	jbe	.label_360
	sub	r14, r13
	xor	edx, edx
	mov	edi, ebp
	mov	rsi, r14
	mov	r15, qword ptr [rsp + 0x58]
	mov	rcx, r15
	call	xlseek
	mov	ebp, dword ptr [rsp]
	mov	rbx, r14
	mov	r14, r15
	mov	rcx, r13
	jmp	.label_244
.label_350:
	mov	edi, 0x2010
	call	xmalloc
	mov	r15, rax
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [r15 + 0x2000], xmm0
	mov	edi, 0x2010
	call	xmalloc
	xor	r13d, r13d
	xor	ecx, ecx
	mov	r14, r15
	jmp	.label_370
.label_257:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_60
.label_293:
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, rbp
	mov	rcx, r14
	call	xlseek
.label_282:
	mov	edi, 0x2018
	call	xmalloc
	mov	rbp, rax
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [rbp + 0x2000], xmm0
	mov	qword ptr [rbp + 0x2010], 0
	mov	edi, 0x2018
	call	xmalloc
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_50
.label_360:
	mov	rcx, r13
	jmp	.label_53
.label_222:
	mov	rcx, qword ptr [rsp + 0x10]
.label_53:
	mov	r14, qword ptr [rsp + 0x58]
.label_244:
	xor	edi, edi
	mov	rsi, r14
	mov	edx, ebp
	call	dump_remainder
	mov	r14, rax
	add	r14, rbx
.label_280:
	mov	r15b, 1
	jmp	.label_60
.label_80:
	xor	r14d, r14d
	jmp	.label_60
.label_119:
	mov	rax, rdx
	mov	rdx, qword ptr [rdx + 0x2010]
	mov	qword ptr [rsp + 0x50], rdx
	nop	word ptr [rax + rax]
.label_50:
	mov	qword ptr [rsp + 0x18], rcx
	jmp	.label_208
	nop	word ptr [rax + rax]
.label_157:
	mov	edi, 0x2018
	call	xmalloc
.label_208:
	mov	rbx, rbp
	mov	rbp, rax
	lea	r14, [rbp + 0x2008]
	mov	edi, dword ptr [rsp]
	mov	qword ptr [rsp + 0x68], rbx
	jmp	.label_70
	nop	word ptr cs:[rax + rax]
.label_107:
	add	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r15
	call	memcpy
	movdqu	xmm0, xmmword ptr [rbp + 0x2000]
	movdqu	xmm1, xmmword ptr [rbx + 0x2000]
	paddq	xmm1, xmm0
	movdqu	xmmword ptr [rbx + 0x2000], xmm1
	mov	edi, dword ptr [rsp]
.label_70:
	mov	edx, 0x2000
	mov	rsi, rbp
	call	safe_read
	mov	r15, rax
	lea	rax, [r15 + 1]
	cmp	rax, 2
	jb	.label_85
	mov	qword ptr [rbp + 0x2000], r15
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [r14], xmm0
	mov	al, byte ptr [rip + line_end]
	test	al, al
	mov	r13d, 0
	mov	eax, 0xa
	cmovne	r13d, eax
	mov	rdi, rbp
	mov	esi, r13d
	mov	rdx, r15
	call	memchr
	test	rax, rax
	mov	r12d, 0
	je	.label_97
	lea	rbx, [rbp + r15]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_104:
	inc	rax
	inc	r12
	mov	qword ptr [r14], r12
	mov	rdx, rbx
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r13d
	call	memchr
	test	rax, rax
	jne	.label_104
.label_97:
	add	qword ptr [rsp + 0x28], r15
	mov	rsi, qword ptr [rsp + 0x18]
	add	rsi, r12
	mov	rbx, qword ptr [rsp + 0x68]
	mov	rdi, qword ptr [rbx + 0x2000]
	mov	rax, r15
	add	rax, rdi
	cmp	rax, 0x1fff
	mov	qword ptr [rsp + 0x18], rsi
	jbe	.label_107
	mov	qword ptr [rbx + 0x2010], rbp
	mov	rcx, rsi
	mov	rdx, qword ptr [rsp + 0x50]
	sub	rcx, qword ptr [rdx + 0x2008]
	cmp	rcx, qword ptr [rsp + 0x10]
	jbe	.label_157
	jmp	.label_119
.label_85:
	mov	rdi, rbp
	call	free
	cmp	r15, -1
	je	.label_122
	cmp	qword ptr [rsp + 0x10], 0
	mov	r13b, 1
	mov	r12, qword ptr [rsp + 0x20]
	mov	r14, qword ptr [rsp + 0x28]
	je	.label_124
	mov	rax, qword ptr [rbx + 0x2000]
	test	rax, rax
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_133
	movsx	eax, byte ptr [rbx + rax - 1]
	mov	cl, byte ptr [rip + line_end]
	test	cl, cl
	mov	r15d, 0
	mov	ecx, 0xa
	cmovne	r15d, ecx
	cmp	eax, r15d
	jne	.label_136
	mov	rdx, qword ptr [rsp + 0x18]
	jmp	.label_144
.label_122:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x58]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r12, qword ptr [rsp + 0x20]
	jmp	.label_161
.label_136:
	inc	qword ptr [rbx + 0x2008]
	mov	rdx, qword ptr [rsp + 0x18]
	inc	rdx
.label_144:
	mov	rax, rdx
	sub	rax, qword ptr [rdi + 0x2008]
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	rax, rcx
	mov	rbp, rdi
	jbe	.label_168
	mov	rbp, rdi
	nop	word ptr [rax + rax]
.label_178:
	mov	rdx, rax
	mov	rbp, qword ptr [rbp + 0x2010]
	sub	rax, qword ptr [rbp + 0x2008]
	cmp	rax, rcx
	ja	.label_178
.label_168:
	mov	r14, qword ptr [rbp + 0x2000]
	add	r14, rbp
	cmp	rdx, rcx
	mov	rax, rbp
	jbe	.label_182
	mov	rax, rbp
	je	.label_182
	sub	qword ptr [rsp + 0x10], rdx
	mov	rax, rbp
	nop	word ptr cs:[rax + rax]
.label_194:
	mov	rdx, r14
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r15d
	call	memchr
	test	rax, rax
	je	.label_193
	inc	rax
	inc	qword ptr [rsp + 0x10]
	jne	.label_194
.label_182:
	sub	r14, rax
	mov	rdi, rax
	mov	rsi, r14
	call	xwrite_stdout
	mov	rbx, qword ptr [rbp + 0x2010]
	jmp	.label_200
	nop	dword ptr [rax + rax]
.label_239:
	mov	rsi, qword ptr [rbx + 0x2000]
	mov	rdi, rbx
	call	xwrite_stdout
	mov	rbx, qword ptr [rbx + 0x2010]
.label_200:
	test	rbx, rbx
	jne	.label_239
.label_161:
	mov	r14, qword ptr [rsp + 0x28]
.label_124:
	mov	rdi, qword ptr [rsp + 0x50]
.label_133:
	test	rdi, rdi
	je	.label_210
	nop	word ptr [rax + rax]
.label_214:
	mov	rbx, qword ptr [rdi + 0x2010]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_214
.label_210:
	test	r13b, r13b
	setne	r15b
	jmp	.label_60
.label_311:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
	jmp	.label_229
.label_255:
	mov	rax, r14
	mov	r14, qword ptr [r14 + 0x2008]
.label_370:
	mov	r12, r15
	mov	r15, rax
	mov	rbp, rcx
	jmp	.label_261
	nop	word ptr cs:[rax + rax]
.label_247:
	add	rdi, r12
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rax, qword ptr [r15 + 0x2000]
	add	qword ptr [r12 + 0x2000], rax
.label_261:
	mov	edi, dword ptr [rsp]
	mov	edx, 0x2000
	mov	rsi, r15
	call	safe_read
	mov	rbx, rax
	lea	rax, [rbx + 1]
	cmp	rax, 2
	jb	.label_240
	add	r13, rbx
	mov	qword ptr [r15 + 0x2000], rbx
	mov	qword ptr [r15 + 0x2008], 0
	add	rbp, rbx
	mov	rdi, qword ptr [r12 + 0x2000]
	mov	rax, rbx
	add	rax, rdi
	cmp	rax, 0x1fff
	jbe	.label_247
	mov	qword ptr [r12 + 0x2008], r15
	mov	rcx, rbp
	sub	rcx, qword ptr [r14 + 0x2000]
	cmp	rcx, qword ptr [rsp + 0x10]
	ja	.label_255
	mov	edi, 0x2010
	call	xmalloc
	mov	r12, r15
	mov	r15, rax
	jmp	.label_261
.label_240:
	mov	rdi, r15
	call	free
	cmp	rbx, -1
	je	.label_263
	mov	rsi, qword ptr [r14 + 0x2000]
	mov	rax, rbp
	sub	rax, rsi
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	rax, rcx
	mov	rbx, r14
	mov	r12, qword ptr [rsp + 0x20]
	jbe	.label_265
	nop	dword ptr [rax + rax]
.label_273:
	mov	rbp, rax
	mov	rbx, qword ptr [rbx + 0x2008]
	mov	rsi, qword ptr [rbx + 0x2000]
	sub	rax, rsi
	cmp	rax, rcx
	ja	.label_273
.label_265:
	sub	rbp, rcx
	mov	eax, 0
	cmovbe	rbp, rax
	lea	rdi, [rbx + rbp]
	sub	rsi, rbp
	call	xwrite_stdout
	mov	rbx, qword ptr [rbx + 0x2008]
	mov	bpl, 1
	jmp	.label_283
	nop	dword ptr [rax]
.label_207:
	mov	rsi, qword ptr [rbx + 0x2000]
	mov	rdi, rbx
	call	xwrite_stdout
	mov	rbx, qword ptr [rbx + 0x2008]
.label_283:
	test	rbx, rbx
	jne	.label_207
	jmp	.label_289
.label_263:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x58]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
	mov	r12, qword ptr [rsp + 0x20]
.label_289:
	test	r14, r14
	je	.label_192
	nop	word ptr cs:[rax + rax]
.label_302:
	mov	rbx, qword ptr [r14 + 0x2008]
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_302
.label_192:
	test	bpl, bpl
	setne	r15b
.label_67:
	mov	r14, r13
	nop	word ptr cs:[rax + rax]
.label_60:
	cmp	byte ptr [rip + forever],  0
	je	.label_309
	mov	eax, r15d
	not	al
	movzx	eax, al
	shl	eax, 0x1f
	sar	eax, 0x1f
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rbp, [rcx + rdx + 0x3c]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	dword ptr [rcx + rdx + 0x3c], eax
	mov	edi, 1
	mov	esi, dword ptr [rsp]
	lea	rdx, [rsp + 0x160]
	call	__fxstat
	test	eax, eax
	js	.label_318
	mov	eax, dword ptr [rsp + 0x178]
	mov	ecx, eax
	and	ecx, 0xfffff000
	movsx	edx, cx
	movzx	ecx, cx
	cmp	edx, 0xfff
	jg	.label_319
	cmp	ecx, 0x8000
	je	.label_324
	cmp	ecx, 0xc000
	je	.label_324
	jmp	.label_325
	nop	
.label_309:
	mov	eax, dword ptr [rsp + 0x80]
	test	al, al
	jne	.label_206
	mov	edi, dword ptr [rsp]
	call	close
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_220
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rax]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_329
	cmp	byte ptr [rsi + 1], 0
	jne	.label_329
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_329:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	r15d, r15d
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_206:
	mov	r14, qword ptr [rsp + 0x30]
	jmp	.label_220
.label_318:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp], ecx
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rax]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_348
	cmp	byte ptr [rsi + 1], 0
	jne	.label_348
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_348:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_354
.label_319:
	cmp	ecx, 0x1000
	je	.label_324
	cmp	ecx, 0x2000
	jne	.label_325
.label_324:
	test	r15b, r15b
	je	.label_354
	mov	ecx, dword ptr [rsp + 0x80]
	test	cl, cl
	mov	ecx, 1
	mov	edx, 0xffffffff
	cmovne	ecx, edx
	mov	rdi, r14
	mov	r14, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp]
	mov	dword ptr [r14 + rdx + 0x38], esi
	mov	qword ptr [r14 + rdx + 8], rdi
	movups	xmm0, xmmword ptr [rsp + 0x1b8]
	movups	xmmword ptr [r14 + rdx + 0x10], xmm0
	movapd	xmm0, xmmword ptr [rsp + 0x160]
	movupd	xmmword ptr [r14 + rdx + 0x20], xmm0
	mov	dword ptr [r14 + rdx + 0x30], eax
	mov	dword ptr [r14 + rdx + 0x40], ecx
	mov	qword ptr [r14 + rdx + 0x58], 0
	mov	byte ptr [r14 + rdx + 0x34], 0
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rax]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_212
	cmp	byte ptr [rsi + 1], 0
	jne	.label_212
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_212:
	mov	edi, dword ptr [rsp]
	call	fremote
	mov	rcx, qword ptr [rsp + 0x60]
	mov	byte ptr [r14 + rcx + 0x35], al
	jmp	.label_220
.label_325:
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rax + rdx + 0x36]
	mov	dword ptr [rbp], 0xffffffff
	mov	byte ptr [rbx], 0
	mov	al, byte ptr [rip + reopen_inaccessible_files]
	xor	al, 1
	mov	rcx, qword ptr [rsp + 0x30]
	mov	byte ptr [rcx + rdx + 0x34], al
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rax]
	cmp	byte ptr [rdx], 0x2d
	jne	.label_42
	cmp	byte ptr [rdx + 1], 0
	jne	.label_42
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
.label_42:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rbp, rax
	cmp	byte ptr [rbx - 2], 0
	mov	r8d, OFFSET FLAT:label_126
	je	.label_127
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
.label_127:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	call	error
	nop	dword ptr [rax + rax]
.label_354:
	mov	al, byte ptr [rip + reopen_inaccessible_files]
	xor	al, 1
	mov	r14, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x60]
	mov	byte ptr [r14 + rbx + 0x34], al
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rax]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_170
	cmp	byte ptr [rsi + 1], 0
	mov	edi, dword ptr [rsp]
	jne	.label_72
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	edi, dword ptr [rsp]
	mov	rsi, rax
	jmp	.label_72
.label_170:
	mov	edi, dword ptr [rsp]
.label_72:
	call	close_fd
	mov	dword ptr [r14 + rbx + 0x38], 0xffffffff
	xor	r15d, r15d
.label_220:
	test	r15b, r15b
	setne	al
	mov	cl, byte ptr [rsp + 0xf]
	and	cl, al
	mov	eax, ecx
	mov	r15, qword ptr [rsp + 0x40]
	inc	r15
	cmp	r15, r12
	jb	.label_78
.label_251:
	mov	byte ptr [rsp + 0xf], al
	cmp	byte ptr [rip + forever],  0
	sete	al
	mov	ecx, dword ptr [rsp + 0x74]
	or	al, cl
	jne	.label_84
	mov	rax, qword ptr [rsp + 0x38]
	lea	rcx, [rax + 0x38]
	xor	eax, eax
	mov	edx, 0xf000
	mov	rsi, r12
	nop	word ptr cs:[rax + rax]
.label_103:
	mov	rdi, qword ptr [rcx - 0x38]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_94
	cmp	byte ptr [rdi + 1], 0
	jne	.label_94
	cmp	byte ptr [rcx - 4], 0
	jne	.label_94
	cmp	dword ptr [rcx], 0
	js	.label_94
	mov	edi, dword ptr [rcx - 8]
	and	edi, edx
	cmp	edi, 0x1000
	jne	.label_94
	mov	dword ptr [rcx], 0xffffffff
	mov	byte ptr [rcx - 4], 1
	jmp	.label_59
	nop	word ptr cs:[rax + rax]
.label_94:
	inc	rax
.label_59:
	add	rcx, 0x60
	dec	rsi
	jne	.label_103
	test	rax, rax
	je	.label_84
	lea	rdx, [rsp + 0xd0]
	mov	edi, 1
	mov	esi, 1
	call	__fxstat
	test	eax, eax
	js	.label_132
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xe8]
	cmp	eax, 0x1000
	sete	byte ptr [rip + monitor_output]
	mov	al, byte ptr [rip + disable_inotify]
	test	al, al
	jne	.label_113
	xor	eax, eax
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rcx, rsi
	nop	word ptr cs:[rax + rax]
.label_372:
	cmp	byte ptr [rcx + 0x34], 0
	jne	.label_123
	mov	rdx, qword ptr [rcx]
	cmp	byte ptr [rdx], 0x2d
	jne	.label_123
	cmp	byte ptr [rdx + 1], 0
	je	.label_36
	nop	word ptr cs:[rax + rax]
.label_123:
	inc	rax
	add	rcx, 0x60
	cmp	rax, r12
	jb	.label_372
	mov	rax, qword ptr [rsp + 0x38]
	lea	rax, [rax + 0x38]
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_142:
	cmp	dword ptr [rax], 0
	js	.label_139
	cmp	byte ptr [rax - 3], 0
	jne	.label_36
.label_139:
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r12
	jb	.label_142
	mov	rax, qword ptr [rsp + 0x38]
	lea	rax, [rax + 0x38]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_154:
	cmp	dword ptr [rax], 0
	js	.label_149
	cmp	byte ptr [rax - 3], 0
	je	.label_151
.label_149:
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r12
	jb	.label_154
.label_36:
	mov	byte ptr [rip + disable_inotify],  1
.label_113:
	mov	byte ptr [rip + disable_inotify],  1
	xor	eax, eax
	cmp	r12, 1
	jne	.label_160
	mov	ecx, dword ptr [rip + pid]
	test	ecx, ecx
	jne	.label_160
	cmp	dword ptr [rip + follow_mode],  2
	mov	r15, qword ptr [rsp + 0x30]
	jne	.label_167
	cmp	dword ptr [r15 + 0x38], -1
	je	.label_169
	mov	eax, 0xf000
	and	eax, dword ptr [r15 + 0x30]
	cmp	eax, 0x8000
	setne	al
	jmp	.label_167
.label_160:
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_167
.label_169:
	xor	eax, eax
.label_167:
	lea	rcx, [r12 - 1]
	mov	qword ptr [rsp + 0x10], rcx
	movzx	r13d, al
	xor	eax, eax
	test	r13b, r13b
	sete	al
	shl	eax, 0xb
	mov	dword ptr [rsp + 0x40], eax
	add	qword ptr [rsp + 0x38], 0x38
	mov	dword ptr [rsp + 0x28], 0
	mov	dword ptr [rsp + 0x48], r13d
	nop	dword ptr [rax]
.label_209:
	xor	r14d, r14d
	mov	rbp, r15
	xor	eax, eax
	mov	qword ptr [rsp], rax
	jmp	.label_189
.label_274:
	mov	rax, qword ptr [rip + max_n_unchanged_stats_between_opens]
	mov	rcx, qword ptr [rbp + 0x58]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x58], rdx
	cmp	rax, rcx
	ja	.label_191
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_191
	xor	esi, esi
	cmp	dword ptr [rbp + 0x40], 0
	setne	sil
	mov	rdi, rbp
	call	recheck
	mov	qword ptr [rbp + 0x58], 0
	jmp	.label_191
	nop	word ptr cs:[rax + rax]
.label_189:
	cmp	byte ptr [rbp + 0x34], 0
	jne	.label_191
	mov	ebx, dword ptr [rbp + 0x38]
	test	ebx, ebx
	js	.label_260
	mov	r15, qword ptr [rbp]
	cmp	byte ptr [r15], 0x2d
	jne	.label_211
	cmp	byte ptr [r15 + 1], 0
	jne	.label_211
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_211:
	mov	eax, dword ptr [rbp + 0x30]
	mov	dword ptr [rsp + 0x18], eax
	cmp	dword ptr [rbp + 0x40], r13d
	mov	eax, r13d
	je	.label_221
	mov	esi, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	test	eax, eax
	js	.label_225
	mov	edx, eax
	or	edx, dword ptr [rsp + 0x40]
	cmp	edx, eax
	je	.label_227
	mov	esi, 4
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_225
.label_227:
	mov	dword ptr [rbp + 0x40], r13d
	mov	eax, r13d
	jmp	.label_221
.label_260:
	mov	rdi, rbp
	mov	esi, r13d
	call	recheck
	jmp	.label_191
.label_225:
	mov	r12d, dword ptr [rbp + 0x30]
	and	r12d, 0xf000
	call	__errno_location
	mov	r13d, dword ptr [rax]
	cmp	r12d, 0x8000
	jne	.label_66
	cmp	r13d, 1
	jne	.label_66
	mov	eax, dword ptr [rbp + 0x40]
	mov	r12, qword ptr [rsp + 0x20]
	mov	r13d, dword ptr [rsp + 0x48]
.label_221:
	test	eax, eax
	jne	.label_248
	mov	edi, 1
	mov	esi, ebx
	lea	rdx, [rsp + 0x160]
	call	__fxstat
	test	eax, eax
	je	.label_254
	mov	dword ptr [rbp + 0x38], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp + 0x3c], ecx
	mov	r13d, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_259
	xor	eax, eax
	mov	esi, r13d
	mov	r13d, dword ptr [rsp + 0x48]
	call	error
	mov	edi, ebx
	call	close
	jmp	.label_191
.label_254:
	mov	ecx, dword ptr [rbp + 0x30]
	mov	eax, dword ptr [rsp + 0x178]
	cmp	ecx, eax
	jne	.label_264
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_268
	mov	rcx, qword ptr [rbp + 8]
	cmp	rcx, qword ptr [rsp + 0x190]
	jne	.label_264
.label_268:
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	rcx, qword ptr [rsp + 0x1b8]
	jne	.label_264
	mov	ecx, dword ptr [rbp + 0x18]
	cmp	ecx, dword ptr [rsp + 0x1c0]
	je	.label_274
.label_264:
	movupd	xmm0, xmmword ptr [rsp + 0x1b8]
	movupd	xmmword ptr [rbp + 0x10], xmm0
	mov	dword ptr [rbp + 0x30], eax
	mov	qword ptr [rbp + 0x58], 0
	mov	eax, dword ptr [rsp + 0x18]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_278
	mov	rax, qword ptr [rsp + 0x190]
	cmp	rax, qword ptr [rbp + 8]
	jge	.label_278
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_288
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r13
	mov	r13d, dword ptr [rsp + 0x48]
	call	error
	xor	esi, esi
	xor	edx, edx
	mov	edi, ebx
	mov	rcx, r15
	call	xlseek
	mov	qword ptr [rbp + 8], 0
.label_278:
	cmp	r14, qword ptr [rsp + 0x10]
	je	.label_248
	cmp	byte ptr [rip + print_headers],  1
	mov	qword ptr [rsp + 0x10], r14
	jne	.label_248
	movzx	eax, byte ptr [rip + write_header.first_file]
	test	al, al
	mov	edx, OFFSET FLAT:label_126
	mov	eax, OFFSET FLAT:label_202
	cmovne	rdx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_203
	xor	eax, eax
	mov	rcx, r15
	call	__printf_chk
	mov	byte ptr [rip + write_header.first_file],  1
	mov	qword ptr [rsp + 0x10], r14
.label_248:
	mov	rcx, -2
	cmp	dword ptr [rbp + 0x40], 0
	jne	.label_137
	mov	eax, dword ptr [rsp + 0x18]
	and	eax, 0xf000
	mov	rcx, -1
	cmp	eax, 0x8000
	jne	.label_137
	cmp	byte ptr [rbp + 0x35], 0
	je	.label_137
	mov	rcx, qword ptr [rsp + 0x190]
	sub	rcx, qword ptr [rbp + 8]
.label_137:
	xor	edi, edi
	mov	rsi, r15
	mov	edx, ebx
	call	dump_remainder
	test	rax, rax
	setne	cl
	mov	rdx, qword ptr [rsp]
	and	dl, 1
	or	dl, cl
	mov	qword ptr [rsp], rdx
	add	qword ptr [rbp + 8], rax
	nop	word ptr [rax + rax]
.label_191:
	inc	r14
	add	rbp, 0x60
	cmp	r14, r12
	jb	.label_189
	mov	al, byte ptr [rip + reopen_inaccessible_files]
	cmp	al, 1
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp]
	jne	.label_114
	cmp	dword ptr [rip + follow_mode],  1
	je	.label_317
.label_114:
	xor	al, 1
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_328:
	cmp	dword ptr [rcx], 0
	jns	.label_317
	cmp	byte ptr [rcx - 4], 0
	setne	bl
	or	bl, al
	cmp	bl, 1
	jne	.label_317
	inc	rdx
	add	rcx, 0x60
	cmp	rdx, r12
	jb	.label_328
	jmp	.label_332
	nop	word ptr cs:[rax + rax]
.label_317:
	and	bpl, 1
	sete	al
	test	r13d, r13d
	jne	.label_336
	test	al, al
	je	.label_338
.label_336:
	mov	rdi, qword ptr [rip + stdout]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_286
.label_338:
	cmp	byte ptr [rip + monitor_output],  0
	je	.label_343
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0xa0], xmm0
	xor	eax, eax
	mov	ecx, 0x10
	lea	rbx, [rsp + 0x160]
	mov	rdi, rbx
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	edi, 1
	call	__fdelt_chk
	or	byte ptr [rsp + rax*8 + 0x160], 2
	mov	edi, 2
	xor	edx, edx
	xor	ecx, ecx
	mov	rsi, rbx
	lea	r8, [rsp + 0xa0]
	call	select
	cmp	eax, 1
	je	.label_351
.label_343:
	test	bpl, bpl
	jne	.label_209
	mov	eax, dword ptr [rsp + 0x28]
	test	al, 1
	jne	.label_84
	mov	edi, dword ptr [rip + pid]
	test	edi, edi
	je	.label_353
	mov	dword ptr [rsp + 0x28], 0
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_228
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	al
	mov	dword ptr [rsp + 0x28], eax
	jne	.label_209
	jmp	.label_228
.label_353:
	mov	dword ptr [rsp + 0x28], 0
.label_228:
	movsd	xmm0, qword ptr [rsp + 0x98]
	call	xnanosleep
	test	eax, eax
	je	.label_209
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
	jmp	.label_253
.label_332:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_84:
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_312
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_371
.label_312:
	movzx	eax, byte ptr [rsp + 0xf]
	xor	eax, 1
.label_147:
	add	rsp, 0x2168
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_151:
	xor	ebp, ebp
	lea	r15, [rsp + 0x160]
	mov	r14d, 0xf000
	mov	rbx, rsi
	nop	word ptr cs:[rax + rax]
.label_40:
	mov	rsi, qword ptr [rbx]
	mov	edi, 1
	mov	rdx, r15
	call	__lxstat
	test	eax, eax
	jne	.label_35
	mov	eax, dword ptr [rsp + 0x178]
	and	eax, r14d
	cmp	eax, 0xa000
	je	.label_36
.label_35:
	inc	rbp
	add	rbx, 0x60
	cmp	rbp, r12
	jb	.label_40
	mov	rax, qword ptr [rsp + 0x38]
	lea	rax, [rax + 0x38]
	xor	ecx, ecx
.label_56:
	cmp	dword ptr [rax], 0
	js	.label_46
	movzx	edx, word ptr [rax - 8]
	and	edx, 0xf000
	cmp	edx, 0x1000
	je	.label_46
	movzx	edx, dx
	cmp	edx, 0x8000
	jne	.label_36
.label_46:
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r12
	jb	.label_56
	cmp	dword ptr [rip + follow_mode],  2
	jne	.label_145
	mov	al, byte ptr [rsp + 0xf]
	xor	al, 1
	jne	.label_36
.label_145:
	mov	al, byte ptr [rip + disable_inotify]
	test	al, al
	jne	.label_113
	call	inotify_init
	mov	r15d, eax
	test	r15d, r15d
	js	.label_63
	mov	rdi, qword ptr [rip + stdout]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_286
	mov	r14, qword ptr [rsp + 0x38]
	xor	esi, esi
	mov	edx, OFFSET FLAT:wd_hasher
	mov	ecx, OFFSET FLAT:wd_comparator
	xor	r8d, r8d
	mov	rdi, r12
	call	hash_initialize
	mov	qword ptr [rsp + 0x40], rax
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x30]
	je	.label_74
	cmp	dword ptr [rip + follow_mode],  1
	mov	eax, 0xc06
	mov	ecx, 2
	cmove	ecx, eax
	mov	dword ptr [rsp + 0x48], ecx
	mov	rbx, rdx
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	xor	r13d, r13d
	mov	dword ptr [rsp + 0x18], r15d
.label_314:
	cmp	byte ptr [rbx + 0x34], 0
	jne	.label_86
	mov	rbp, qword ptr [rbx]
	mov	rdi, rbp
	call	strlen
	mov	rcx, qword ptr [rsp]
	cmp	rcx, rax
	cmovb	rcx, rax
	mov	qword ptr [rsp], rcx
	mov	dword ptr [rbx + 0x44], 0xffffffff
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_346
	mov	rdi, rbp
	call	dir_len
	mov	r15, rax
	movzx	r14d, byte ptr [rbp + r15]
	mov	rdi, rbp
	call	last_component
	sub	rax, rbp
	mov	qword ptr [rbx + 0x50], rax
	mov	byte ptr [rbp + r15], 0
	test	r15, r15
	mov	esi, OFFSET FLAT:label_158
	je	.label_159
	mov	rsi, qword ptr [rbx]
.label_159:
	mov	edx, 0x784
	mov	edi, dword ptr [rsp + 0x18]
	call	inotify_add_watch
	mov	dword ptr [rbx + 0x48], eax
	mov	rax, qword ptr [rbx]
	mov	byte ptr [rax + r15], r14b
	cmp	dword ptr [rbx + 0x48], 0
	js	.label_102
	mov	rbp, qword ptr [rbx]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r15d, dword ptr [rsp + 0x18]
.label_346:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x48]
	call	inotify_add_watch
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_276
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, rbx
	call	hash_insert
	mov	r12b, 1
	test	rax, rax
	mov	rdx, qword ptr [rsp + 0x30]
	jne	.label_86
	jmp	.label_74
.label_276:
	cmp	dword ptr [rbx + 0x38], -1
	je	.label_117
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
.label_117:
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	eax, r15d
	or	eax, 0x10
	cmp	eax, 0x1c
	je	.label_120
	cmp	r15d, dword ptr [rbx + 0x3c]
	je	.label_128
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rbx]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_128:
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r15d, dword ptr [rsp + 0x18]
.label_86:
	inc	r13
	add	rbx, 0x60
	cmp	r13, qword ptr [rsp + 0x20]
	jb	.label_314
	mov	eax, dword ptr [rip + follow_mode]
	mov	rcx, qword ptr [rsp + 0x10]
	test	cl, 1
	je	.label_320
	cmp	eax, 2
	jne	.label_320
	call	__errno_location
	mov	rbp, rax
	mov	r12, qword ptr [rsp + 0x20]
	jmp	.label_341
.label_320:
	test	r12b, 1
	jne	.label_262
	cmp	eax, 2
	je	.label_138
.label_262:
	mov	rcx, r14
	mov	r14, qword ptr [rsp + 0x20]
	lea	rax, [r14 + r14*2]
	shl	rax, 5
	lea	rax, [rcx + rax - 0x60]
	mov	qword ptr [rsp + 0xb0], rax
	xor	ebp, ebp
	lea	r15, [rsp + 0xb0]
	lea	r12, [rsp + 0x160]
	mov	rbx, rdx
.label_179:
	cmp	byte ptr [rbx + 0x34], 0
	jne	.label_177
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_180
	xor	esi, esi
	mov	rdi, rbx
	call	recheck
	jmp	.label_108
.label_180:
	cmp	dword ptr [rbx + 0x38], -1
	je	.label_108
	mov	rsi, qword ptr [rbx]
	mov	edi, 1
	mov	rdx, r12
	call	__xstat
	test	eax, eax
	jne	.label_108
	mov	rax, qword ptr [rbx + 0x20]
	cmp	rax, qword ptr [rsp + 0x160]
	jne	.label_186
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rsp + 0x168]
	jne	.label_186
.label_108:
	mov	rdi, rbx
	mov	rsi, r15
	call	check_fspec
.label_177:
	inc	rbp
	add	rbx, 0x60
	cmp	rbp, r14
	jb	.label_179
	mov	r14, qword ptr [rsp]
	mov	rdi, r14
	add	rdi, 0x11
	mov	qword ptr [rsp], rdi
	call	xmalloc
	mov	qword ptr [rsp + 0x68], rax
	mov	edx, dword ptr [rsp + 0x18]
	mov	eax, edx
	sar	eax, 0x1f
	shr	eax, 0x1a
	add	eax, edx
	and	eax, 0xc0
	mov	ecx, edx
	sub	ecx, eax
	mov	eax, 1
	shl	rax, cl
	mov	qword ptr [rsp + 0x80], rax
	movsxd	rax, edx
	mov	qword ptr [rsp + 0x58], rax
	test	edx, edx
	mov	eax, 1
	cmovg	eax, edx
	inc	eax
	mov	dword ptr [rsp + 0x74], eax
	movsd	xmm1, qword ptr [rsp + 0x98]
	cvttsd2si	rax, xmm1
	mov	qword ptr [rsp + 0xc0], rax
	cvtsi2sd	xmm0, rax
	subsd	xmm1, xmm0
	mulsd	xmm1, qword ptr [rip + label_213]
	cvttsd2si	rax, xmm1
	mov	qword ptr [rsp + 0xb8], rax
	mov	rax, qword ptr [rsp + 0x38]
	lea	rcx, [rax + 0x48]
	mov	qword ptr [rsp + 0xc8], rcx
	lea	rax, [rax + 0x50]
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 3
	mov	ecx, 0
	mov	qword ptr [rsp + 0x10], rcx
	xor	r15d, r15d
	mov	dword ptr [rsp + 0x28], 0
	jmp	.label_90
.label_102:
	call	__errno_location
	mov	rbp, rax
	mov	r12d, dword ptr [rbp]
	cmp	r12d, 0x1c
	jne	.label_237
.label_120:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_245
.label_237:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rsi, qword ptr [rbx]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r15
	call	error
.label_245:
	mov	r12, qword ptr [rsp + 0x20]
	mov	r15d, dword ptr [rsp + 0x18]
.label_341:
	mov	rdi, qword ptr [rsp + 0x40]
	call	hash_free
	mov	dword ptr [rbp], 0
	jmp	.label_63
.label_186:
	call	__errno_location
	mov	rbp, rax
	mov	r12d, dword ptr [rbp]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_233
	cmp	byte ptr [rsi + 1], 0
	jne	.label_233
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_233:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r13
	call	error
	mov	rdi, qword ptr [rsp + 0x40]
	call	hash_free
	mov	dword ptr [rbp], 0
.label_235:
	mov	r12, qword ptr [rsp + 0x20]
	jmp	.label_281
.label_1094:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_101:
	xor	esi, esi
	mov	rdi, r12
	call	recheck
	mov	rax, qword ptr [rsp + 0x60]
.label_90:
	mov	ebx, eax
	jmp	.label_291
.label_347:
	mov	rsi, qword ptr [rsp]
	add	rsi, rsi
	mov	rdi, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp], rsi
	call	xrealloc
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r15d, r15d
.label_291:
	mov	r13d, ebx
	mov	r12, qword ptr [rsp + 0x20]
	lea	rbx, [rsp + 0x160]
.label_366:
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_299
	mov	al, byte ptr [rip + reopen_inaccessible_files]
	test	al, al
	jne	.label_299
	mov	rdi, qword ptr [rsp + 0x40]
	call	hash_get_n_entries
	test	rax, rax
	je	.label_301
.label_299:
	mov	rbp, qword ptr [rsp + 0x10]
	cmp	rbp, r15
	ja	.label_304
.label_333:
	mov	edi, dword ptr [rip + pid]
	test	edi, edi
	je	.label_307
	mov	eax, dword ptr [rsp + 0x28]
	test	al, 1
	mov	ebp, dword ptr [rsp + 0x18]
	jne	.label_308
	mov	dword ptr [rsp + 0x28], 0
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_156
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	al
	mov	dword ptr [rsp + 0x28], eax
	je	.label_156
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0xa0], xmm0
	jmp	.label_313
.label_156:
	mov	rax, qword ptr [rsp + 0xc0]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rax, qword ptr [rsp + 0xb8]
	mov	qword ptr [rsp + 0xa8], rax
	jmp	.label_313
.label_307:
	mov	ebp, dword ptr [rsp + 0x18]
.label_313:
	xor	eax, eax
	mov	ecx, 0x10
	mov	rdi, rbx
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	rdi, qword ptr [rsp + 0x58]
	call	__fdelt_chk
	mov	rcx, qword ptr [rsp + 0x80]
	or	qword ptr [rsp + rax*8 + 0x160], rcx
	cmp	byte ptr [rip + monitor_output],  0
	je	.label_125
	mov	edi, 1
	call	__fdelt_chk
	or	byte ptr [rsp + rax*8 + 0x160], 2
.label_125:
	cmp	dword ptr [rip + pid],  0
	mov	r8d, 0
	lea	rax, [rsp + 0xa0]
	cmovne	r8, rax
	xor	edx, edx
	xor	ecx, ecx
	mov	edi, dword ptr [rsp + 0x74]
	mov	rsi, rbx
	call	select
	test	eax, eax
	je	.label_333
	cmp	eax, -1
	je	.label_334
	mov	edi, 1
	call	__fdelt_chk
	test	byte ptr [rsp + rax*8 + 0x160], 2
	jne	.label_339
	mov	edi, ebp
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp]
	call	safe_read
	mov	rbp, rax
	test	rbp, rbp
	je	.label_38
	cmp	rbp, -1
	jne	.label_344
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_62
.label_38:
	lea	ebx, [r13 - 1]
	test	r13d, r13d
	jne	.label_347
	mov	r13d, ebx
.label_344:
	mov	rax, rbp
	inc	rax
	cmp	rax, 1
	mov	r15d, 0
	jbe	.label_62
.label_304:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rax + r15]
	mov	r14d, dword ptr [rax + r15 + 4]
	mov	eax, dword ptr [rax + r15 + 0xc]
	test	rax, rax
	jne	.label_349
	mov	ecx, r14d
	and	ecx, 0x400
	je	.label_349
	mov	ecx, dword ptr [rdi]
	mov	rdx, qword ptr [rsp + 0xc8]
	xor	esi, esi
.label_357:
	cmp	ecx, dword ptr [rdx]
	je	.label_355
	inc	rsi
	add	rdx, 0x60
	cmp	rsi, r12
	jb	.label_357
.label_349:
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x60], r13
	lea	r15, [r15 + rax + 0x10]
	test	eax, eax
	mov	qword ptr [rsp + 0x88], rdi
	je	.label_198
	lea	r12, [rdi + 0x10]
	mov	ebx, dword ptr [rdi]
	mov	r13, qword ptr [rsp + 0x50]
	xor	ebp, ebp
.label_364:
	cmp	dword ptr [r13 - 8], ebx
	jne	.label_361
	mov	rsi, qword ptr [r13 - 0x50]
	add	rsi, qword ptr [r13]
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_363
.label_361:
	inc	rbp
	add	r13, 0x60
	cmp	rbp, qword ptr [rsp + 0x20]
	jb	.label_364
.label_363:
	mov	r12, qword ptr [rsp + 0x20]
	cmp	rbp, r12
	lea	rbx, [rsp + 0x160]
	mov	r13, qword ptr [rsp + 0x60]
	je	.label_366
	mov	r13, qword ptr [rsp]
	lea	rbx, [rbp + rbp*2]
	shl	rbx, 5
	mov	rax, qword ptr [rsp + 0x38]
	lea	r12, [rax + rbx]
	mov	eax, r14d
	test	ah, 2
	jne	.label_52
	mov	rsi, qword ptr [r12]
	mov	edi, dword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0x48]
	call	inotify_add_watch
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_290
	call	__errno_location
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, dword ptr [rax]
	mov	r14d, eax
	or	eax, 0x10
	xor	edi, edi
	cmp	eax, 0x1c
	je	.label_374
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x90], rax
	mov	rsi, qword ptr [r12]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, qword ptr [rsp + 0x90]
	call	error
.label_290:
	mov	rax, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rax + rbx + 0x44]
	test	esi, esi
	js	.label_49
	cmp	ebp, esi
	je	.label_52
.label_49:
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rax + rbx + 0x44]
	test	esi, esi
	js	.label_54
	mov	edi, dword ptr [rsp + 0x18]
	call	inotify_rm_watch
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r12
	call	hash_delete
.label_54:
	mov	dword ptr [rbx], ebp
	cmp	ebp, -1
	mov	rax, qword ptr [rsp + 0x60]
	je	.label_90
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r12
	call	hash_delete
	mov	rbp, rax
	test	rbp, rbp
	je	.label_64
	cmp	rbp, r12
	je	.label_64
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_68
	xor	esi, esi
	mov	rdi, rbp
	call	recheck
.label_68:
	mov	dword ptr [rbp + 0x44], 0xffffffff
	mov	ebx, dword ptr [rbp + 0x38]
	mov	rsi, qword ptr [rbp]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_71
	cmp	byte ptr [rsi + 1], 0
	jne	.label_71
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_71:
	mov	edi, ebx
	call	close_fd
.label_64:
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r12
	call	hash_insert
	test	rax, rax
	je	.label_79
.label_52:
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_82
	xor	esi, esi
	mov	rdi, r12
	call	recheck
	jmp	.label_82
.label_198:
	mov	r13, qword ptr [rsp]
	mov	eax, dword ptr [rdi]
	mov	dword ptr [rsp + 0x1a4], eax
	mov	rdi, qword ptr [rsp + 0x40]
	lea	rsi, [rsp + 0x160]
	call	hash_lookup
	mov	r12, rax
.label_82:
	mov	qword ptr [rsp], r13
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x60]
	je	.label_90
	mov	rax, qword ptr [rsp + 0x88]
	mov	eax, dword ptr [rax + 4]
	test	ax, 0xe04
	je	.label_93
	test	ah, 4
	je	.label_101
	mov	esi, dword ptr [r12 + 0x44]
	mov	edi, dword ptr [rsp + 0x18]
	call	inotify_rm_watch
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r12
	call	hash_delete
	jmp	.label_101
.label_93:
	mov	rdi, r12
	lea	rsi, [rsp + 0xb0]
	call	check_fspec
	mov	rax, qword ptr [rsp + 0x60]
	jmp	.label_90
.label_355:
	mov	rdi, qword ptr [rsp + 0x40]
	call	hash_free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
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
.label_281:
	mov	r15d, dword ptr [rsp + 0x18]
.label_63:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rax + 0x48]
	mov	rbp, r12
.label_277:
	mov	esi, dword ptr [rbx - 4]
	cmp	esi, -1
	je	.label_129
	mov	edi, r15d
	call	inotify_rm_watch
.label_129:
	mov	esi, dword ptr [rbx]
	cmp	esi, -1
	je	.label_135
	mov	edi, r15d
	call	inotify_rm_watch
.label_135:
	add	rbx, 0x60
	dec	rbp
	jne	.label_277
	jmp	.label_113
.label_301:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_138:
	mov	eax, 1
	jmp	.label_147
.label_66:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	call	error
.label_193:
	mov	edi, OFFSET FLAT:label_164
	mov	esi, OFFSET FLAT:label_165
	mov	edx, 0x2e0
	mov	ecx, OFFSET FLAT:label_166
	call	__assert_fail
.label_1091:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_12
	mov	edx, OFFSET FLAT:label_13
	mov	r8d, OFFSET FLAT:label_172
	mov	r9d, OFFSET FLAT:label_173
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_174
	push	OFFSET FLAT:label_175
	call	version_etc
	add	rsp, 0x20
	xor	edi, edi
	call	exit
.label_1092:
	xor	edi, edi
	call	usage
.label_115:
	mov	edi, 1
	call	usage
.label_184:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_190
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	call	quote
	jmp	.label_197
.label_305:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_201
	call	quotearg_style
.label_197:
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_351:
	call	die_pipe
.label_322:
	call	xalloc_die
.label_286:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
	jmp	.label_253
.label_371:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_201
	xor	eax, eax
	call	error
.label_132:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_218
.label_253:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_374:
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rdi, qword ptr [rsp + 0x40]
	call	hash_free
	mov	rax, qword ptr [rsp + 0x90]
	mov	dword ptr [rax], 0
	jmp	.label_235
.label_95:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [r13 + 8]
	call	quote
	mov	rbp, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_243
	xor	eax, eax
	mov	esi, r14d
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_74:
	call	xalloc_die
.label_334:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
	jmp	.label_253
.label_62:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_256
	jmp	.label_253
.label_308:
	xor	edi, edi
	call	exit
.label_339:
	call	die_pipe
.label_79:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c80

	.globl close_fd
	.type close_fd, @function
close_fd:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebx, edi
	lea	eax, [rbx + 1]
	cmp	eax, 2
	jb	.label_377
	mov	edi, ebx
	call	close
	test	eax, eax
	je	.label_377
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	r8d, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	error
.label_377:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d00

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
	je	.label_410
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	bl, 1
	cmp	ebp, 0x26
	je	.label_388
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_415
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
	jmp	.label_388
.label_410:
	mov	cl, 2
	mov	rax, qword ptr [rsp]
	cmp	rax, 0x2fc12fc0
	jg	.label_420
	cmp	rax, 0xadfe
	jle	.label_422
	cmp	rax, 0x13111a7
	jg	.label_423
	cmp	rax, 0x1021993
	jg	.label_425
	cmp	rax, 0x11953
	jle	.label_427
	cmp	rax, 0x414a52
	jle	.label_428
	cmp	rax, 0x414a53
	je	.label_380
	cmp	rax, 0xc0ffee
	je	.label_380
	cmp	rax, 0xc36400
	je	.label_381
	jmp	.label_379
.label_420:
	cmp	rax, 0x65735542
	jle	.label_433
	mov	edx, 0x858458f5
	cmp	rax, rdx
	jle	.label_434
	mov	edx, 0xc97e8167
	cmp	rax, rdx
	jg	.label_435
	mov	edx, 0xaad7aae9
	cmp	rax, rdx
	jg	.label_437
	mov	edx, 0x958458f5
	cmp	rax, rdx
	jg	.label_383
	mov	edx, 0x858458f6
	cmp	rax, rdx
	je	.label_380
	mov	edx, 0x9123683e
	jmp	.label_385
.label_422:
	cmp	rax, 0x482a
	jg	.label_387
	cmp	rax, 0x2467
	jg	.label_390
	cmp	rax, 0x1372
	jle	.label_392
	lea	rdx, [rax - 0x1373]
	cmp	rdx, 0x1c
	ja	.label_394
	mov	esi, 0x10001401
	bt	rsi, rdx
	jb	.label_380
.label_394:
	cmp	rax, 0x1cd1
	je	.label_380
	jmp	.label_379
.label_433:
	cmp	rax, 0x541900ff
	jg	.label_397
	cmp	rax, 0x47504652
	jle	.label_398
	cmp	rax, 0x5346414e
	jg	.label_400
	cmp	rax, 0x52654972
	jg	.label_401
	cmp	rax, 0x47504653
	je	.label_381
	cmp	rax, 0x50495045
	je	.label_381
	jmp	.label_379
.label_434:
	cmp	rax, 0x73636672
	jle	.label_404
	cmp	rax, 0x7461636e
	jg	.label_405
	cmp	rax, 0x73727278
	jg	.label_407
	cmp	rax, 0x73636673
	je	.label_380
	cmp	rax, 0x73717368
	je	.label_380
	jmp	.label_379
.label_387:
	cmp	rax, 0x6968
	jle	.label_408
	cmp	rax, 0x965f
	jg	.label_411
	cmp	rax, 0x6969
	je	.label_381
	cmp	rax, 0x7275
	je	.label_380
	cmp	rax, 0x72b6
	je	.label_380
	jmp	.label_379
.label_397:
	cmp	rax, 0x6165676b
	jle	.label_417
	cmp	rax, 0x62656571
	jg	.label_419
	cmp	rax, 0x62646575
	jg	.label_421
	cmp	rax, 0x6165676c
	je	.label_380
	cmp	rax, 0x61756673
	je	.label_381
	jmp	.label_379
.label_423:
	cmp	rax, 0x15013345
	jg	.label_426
	cmp	rax, 0xbad1de9
	jle	.label_414
	cmp	rax, 0x11307853
	jg	.label_430
	cmp	rax, 0xbad1dea
	je	.label_380
	cmp	rax, 0xbd00bd0
	je	.label_381
	jmp	.label_379
.label_425:
	cmp	rax, 0x12fd16c
	jg	.label_432
	cmp	rax, 0x1021994
	je	.label_380
	cmp	rax, 0x1021997
	je	.label_380
	cmp	rax, 0x1161970
	je	.label_381
	jmp	.label_379
.label_435:
	mov	edx, 0xf97cff8b
	cmp	rax, rdx
	jg	.label_382
	mov	edx, 0xde5e81e3
	cmp	rax, rdx
	jg	.label_384
	mov	edx, 0xc97e8168
	cmp	rax, rdx
	je	.label_380
	mov	edx, 0xcafe4a11
	jmp	.label_385
.label_390:
	cmp	rax, 0x3fff
	jle	.label_389
	lea	rdx, [rax - 0x4000]
	cmp	rdx, 6
	ja	.label_391
	mov	esi, 0x51
	bt	rsi, rdx
	jb	.label_380
.label_391:
	cmp	rax, 0x4244
	je	.label_380
	jmp	.label_379
.label_398:
	cmp	rax, 0x42494e4c
	jle	.label_395
	cmp	rax, 0x453dcd27
	jg	.label_396
	cmp	rax, 0x42494e4d
	je	.label_380
	cmp	rax, 0x43415d53
	je	.label_380
	jmp	.label_379
.label_404:
	cmp	rax, 0x68191121
	jle	.label_402
	cmp	rax, 0x6e667363
	jg	.label_403
	cmp	rax, 0x68191122
	je	.label_380
	cmp	rax, 0x6b414653
	je	.label_381
	jmp	.label_379
.label_408:
	cmp	rax, 0x4d59
	jle	.label_406
	cmp	rax, 0x564b
	jg	.label_412
	cmp	rax, 0x4d5a
	je	.label_380
	cmp	rax, 0x517b
	je	.label_381
	jmp	.label_379
.label_417:
	cmp	rax, 0x58465341
	jle	.label_409
	cmp	rax, 0x5dca2df4
	jg	.label_413
	cmp	rax, 0x58465342
	je	.label_380
	cmp	rax, 0x5a3c69f0
	je	.label_380
	jmp	.label_379
.label_426:
	cmp	rax, 0x1badfacd
	jle	.label_416
	cmp	rax, 0x28cd3d44
	jg	.label_418
	cmp	rax, 0x1badface
	je	.label_380
	cmp	rax, 0x24051905
	je	.label_380
	jmp	.label_379
.label_427:
	cmp	rax, 0xef52
	jg	.label_424
	cmp	rax, 0xadff
	je	.label_380
	cmp	rax, 0xef51
	je	.label_380
	jmp	.label_379
.label_437:
	mov	edx, 0xbacbacbb
	cmp	rax, rdx
	jg	.label_429
	mov	edx, 0xaad7aaea
	cmp	rax, rdx
	je	.label_381
	mov	edx, 0xabba1974
	jmp	.label_385
.label_400:
	cmp	rax, 0x5346544d
	jg	.label_431
	cmp	rax, 0x5346414f
	je	.label_381
	cmp	rax, 0x53464846
	je	.label_380
	jmp	.label_379
.label_405:
	cmp	rax, 0x794c762f
	jg	.label_436
	cmp	rax, 0x7461636f
	je	.label_381
	cmp	rax, 0x74726163
	je	.label_380
	jmp	.label_379
.label_411:
	lea	rdx, [rax - 0x9fa0]
	cmp	rdx, 3
	jb	.label_380
	cmp	rax, 0x9660
	je	.label_380
	cmp	rax, 0xadf5
	je	.label_380
	jmp	.label_379
.label_419:
	cmp	rax, 0x6462671f
	jg	.label_393
	cmp	rax, 0x62656572
	je	.label_380
	cmp	rax, 0x63677270
	je	.label_380
	jmp	.label_379
.label_432:
	lea	rdx, [rax - 0x12ff7b4]
	cmp	rdx, 4
	jb	.label_380
	cmp	rax, 0x12fd16d
	je	.label_380
	jmp	.label_379
.label_382:
	mov	edx, 0xfe534d41
	cmp	rax, rdx
	jg	.label_399
	mov	edx, 0xf97cff8c
	cmp	rax, rdx
	je	.label_380
	mov	edx, 0xf995e849
	jmp	.label_385
.label_392:
	cmp	rax, 0x2f
	je	.label_380
	cmp	rax, 0x187
	je	.label_380
	cmp	rax, 0x7c0
	je	.label_380
	jmp	.label_379
.label_414:
	cmp	rax, 0x13111a8
	je	.label_381
	cmp	rax, 0x7655821
	je	.label_380
	cmp	rax, 0x9041934
	je	.label_380
	jmp	.label_379
.label_389:
	cmp	rax, 0x2468
	je	.label_380
	cmp	rax, 0x2478
	je	.label_380
	cmp	rax, 0x3434
	je	.label_380
	jmp	.label_379
.label_395:
	cmp	rax, 0x2fc12fc1
	je	.label_380
	cmp	rax, 0x3153464a
	je	.label_380
	cmp	rax, 0x42465331
	je	.label_380
	jmp	.label_379
.label_402:
	cmp	rax, 0x65735543
	je	.label_381
	cmp	rax, 0x65735546
	je	.label_381
	cmp	rax, 0x67596969
	je	.label_380
	jmp	.label_379
.label_406:
	cmp	rax, 0x482b
	je	.label_380
	cmp	rax, 0x4858
	je	.label_380
	cmp	rax, 0x4d44
	je	.label_380
	jmp	.label_379
.label_409:
	cmp	rax, 0x54190100
	je	.label_380
	cmp	rax, 0x565a4653
	je	.label_380
	cmp	rax, 0x58295829
	je	.label_380
	jmp	.label_379
.label_416:
	cmp	rax, 0x15013346
	je	.label_380
	cmp	rax, 0x19800202
	je	.label_380
	cmp	rax, 0x19830326
	je	.label_381
	jmp	.label_379
.label_428:
	cmp	rax, 0x11954
	je	.label_380
	cmp	rax, 0x27e0eb
	je	.label_380
	jmp	.label_379
.label_383:
	mov	edx, 0x958458f6
	cmp	rax, rdx
	je	.label_380
	mov	ecx, 0xa501fcf5
	jmp	.label_386
.label_401:
	cmp	rax, 0x52654973
	je	.label_380
	cmp	rax, 0x5346314d
	je	.label_380
	jmp	.label_379
.label_407:
	cmp	rax, 0x73727279
	je	.label_380
	cmp	rax, 0x73757245
	je	.label_381
	jmp	.label_379
.label_421:
	cmp	rax, 0x62646576
	je	.label_380
	cmp	rax, 0x62656570
	je	.label_380
	jmp	.label_379
.label_430:
	cmp	rax, 0x11307854
	je	.label_380
	cmp	rax, 0x13661366
	je	.label_380
	jmp	.label_379
.label_384:
	mov	edx, 0xde5e81e4
	cmp	rax, rdx
	je	.label_380
	mov	edx, 0xf2f52010
.label_385:
	cmp	rax, rdx
	je	.label_380
	jmp	.label_379
.label_396:
	cmp	rax, 0x453dcd28
	je	.label_380
	cmp	rax, 0x45584653
	je	.label_380
	jmp	.label_379
.label_403:
	cmp	rax, 0x6e667364
	je	.label_381
	cmp	rax, 0x6e736673
	je	.label_380
	jmp	.label_379
.label_412:
	cmp	rax, 0x564c
	je	.label_381
	cmp	rax, 0x5df5
	je	.label_380
	jmp	.label_379
.label_413:
	cmp	rax, 0x5dca2df5
	je	.label_380
	cmp	rax, 0x61636673
	je	.label_381
	jmp	.label_379
.label_418:
	cmp	rax, 0x28cd3d45
	je	.label_380
	cmp	rax, 0x2bad1dea
	je	.label_380
	jmp	.label_379
.label_424:
	cmp	rax, 0xef53
	je	.label_380
	cmp	rax, 0xf15f
	je	.label_380
	jmp	.label_379
.label_429:
	mov	ecx, 0xbacbacbc
	cmp	rax, rcx
	je	.label_381
	mov	ecx, 0xbeefdead
	jmp	.label_386
.label_431:
	cmp	rax, 0x5346544e
	je	.label_380
	cmp	rax, 0x534f434b
	je	.label_380
	jmp	.label_379
.label_436:
	cmp	rax, 0x794c7630
	je	.label_381
	cmp	rax, 0x7c7c6673
	je	.label_381
	jmp	.label_379
.label_393:
	cmp	rax, 0x64626720
	je	.label_380
	cmp	rax, 0x64646178
	je	.label_380
	jmp	.label_379
.label_399:
	mov	ecx, 0xfe534d42
	cmp	rax, rcx
	je	.label_381
	mov	ecx, 0xff534d42
.label_386:
	cmp	rax, rcx
	jne	.label_379
.label_381:
	mov	cl, 1
.label_380:
	and	cl, 7
	mov	bl, 3
	shr	bl, cl
	and	bl, 1
.label_388:
	mov	eax, ebx
	add	rsp, 0x78
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_379:
	xor	ecx, ecx
	jmp	.label_380
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055f0

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
	mov	dword ptr [rsp + 4], edx
	mov	qword ptr [rsp + 8], rsi
	mov	ebp, edi
	xor	ebx, ebx
	lea	r13, [rsp + 0x10]
	mov	r15, r12
	nop	dword ptr [rax]
.label_441:
	cmp	r15, 0x2000
	mov	edx, 0x2000
	cmovb	rdx, r15
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, r13
	call	safe_read
	mov	r14, rax
	test	r14, r14
	je	.label_439
	cmp	r14, -1
	je	.label_438
	test	bpl, 1
	je	.label_440
	movzx	eax, byte ptr [rip + write_header.first_file]
	test	al, al
	mov	edx, OFFSET FLAT:label_126
	mov	eax, OFFSET FLAT:label_202
	cmovne	rdx, rax
	xor	ebp, ebp
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_203
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 8]
	call	__printf_chk
	mov	byte ptr [rip + write_header.first_file],  1
.label_440:
	mov	rdi, r13
	mov	rsi, r14
	call	xwrite_stdout
	add	rbx, r14
	cmp	r12, -1
	je	.label_441
	cmp	r12, -2
	je	.label_439
	sub	r15, r14
	jne	.label_441
	jmp	.label_439
.label_438:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0xb
	jne	.label_442
.label_439:
	mov	rax, rbx
	add	rsp, 0x2018
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_442:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_146
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
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
	#Procedure 0x405710

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
	js	.label_445
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_445:
	lea	rsi, [rsp]
	mov	rdi, rbx
	call	offtostr
	mov	r14, rax
	cmp	ebp, 2
	je	.label_444
	cmp	ebp, 1
	je	.label_448
	test	ebp, ebp
	jne	.label_443
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_449
	jmp	.label_447
.label_444:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_446
	jmp	.label_447
.label_448:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_450
.label_447:
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
.label_443:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057d0

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	test	rbx, rbx
	je	.label_451
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jb	.label_453
.label_451:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_453:
	mov	rdi, qword ptr [rip + stdout]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_452
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_218
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
	#Procedure 0x405850

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
	#Procedure 0x405860

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
	#Procedure 0x405870

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
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_477
	lea	r15, [rbx + 0x36]
	lea	r13, [rbx + 0x3c]
	cmp	byte ptr [rdi + 1], 0
	mov	r14b, byte ptr [rbx + 0x36]
	mov	r12d, dword ptr [rbx + 0x3c]
	jne	.label_484
	xor	edx, edx
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_486
.label_477:
	lea	r15, [rbx + 0x36]
	mov	r14b, byte ptr [rbx + 0x36]
	lea	r13, [rbx + 0x3c]
	mov	r12d, dword ptr [rbx + 0x3c]
.label_484:
	xor	esi, esi
	test	bpl, bpl
	sete	sil
	shl	esi, 0xb
	mov	dword ptr [rsp + 0xc], 0
	xor	eax, eax
	call	open_safer
	mov	edx, eax
.label_486:
	mov	rax, qword ptr [rbx + 0x38]
	cmp	eax, -1
	sete	cl
	shr	rax, 0x20
	sete	al
	xor	al, cl
	je	.label_492
	cmp	edx, -1
	sete	al
	and	al, byte ptr [rip + reopen_inaccessible_files]
	xor	al, 1
	mov	byte ptr [r15], al
	mov	al, byte ptr [rip + disable_inotify]
	test	al, al
	mov	dword ptr [rsp + 8], edx
	jne	.label_463
	mov	rsi, qword ptr [rbx]
	lea	rdx, [rsp + 0x10]
	mov	edi, 1
	call	__lxstat
	mov	edx, dword ptr [rsp + 8]
	test	eax, eax
	jne	.label_463
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x28]
	cmp	eax, 0xa000
	jne	.label_463
	mov	dword ptr [r13], 0xffffffff
	mov	byte ptr [rbx + 0x34], 1
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_468
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_473
	cmp	byte ptr [rsi + 1], 0
	jne	.label_473
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_473:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_455
.label_463:
	cmp	edx, -1
	je	.label_485
	lea	rdx, [rsp + 0x10]
	mov	edi, 1
	mov	esi, dword ptr [rsp + 8]
	call	__fxstat
	test	eax, eax
	js	.label_485
	movzx	eax, word ptr [rsp + 0x28]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jg	.label_489
	cmp	eax, 0x8000
	je	.label_461
	cmp	eax, 0xc000
	je	.label_461
	jmp	.label_488
.label_485:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	dword ptr [r13], ebp
	cmp	byte ptr [r15], 0
	je	.label_493
	mov	ebp, dword ptr [rax]
	cmp	r12d, ebp
	je	.label_455
	mov	rdx, qword ptr [rbx]
	cmp	byte ptr [rdx], 0x2d
	jne	.label_457
	cmp	byte ptr [rdx + 1], 0
	jne	.label_457
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
.label_457:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_259
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_455
.label_493:
	test	r14b, r14b
	je	.label_455
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_475
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_478
	cmp	byte ptr [rsi + 1], 0
	jne	.label_478
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_478:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	call	error
	jmp	.label_455
.label_489:
	cmp	eax, 0x1000
	je	.label_461
	cmp	eax, 0x2000
	jne	.label_488
.label_461:
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_470
	cmp	byte ptr [rsi + 1], 0
	jne	.label_470
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_470:
	mov	edi, dword ptr [rsp + 8]
	call	fremote
	mov	byte ptr [rbx + 0x35], al
	test	al, al
	je	.label_497
	mov	al, byte ptr [rip + disable_inotify]
	test	al, al
	je	.label_498
.label_497:
	mov	dword ptr [r13], 0
	or	r12d, 2
	cmp	r12d, 2
	jne	.label_456
	cmp	dword ptr [rbx + 0x38], -1
	je	.label_460
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rsp + 0x18]
	jne	.label_467
	mov	rax, qword ptr [rbx + 0x20]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_467
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_465
	cmp	byte ptr [rsi + 1], 0
	jne	.label_465
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_465:
	mov	edi, dword ptr [rsp + 8]
	call	close_fd
	jmp	.label_487
.label_488:
	mov	dword ptr [r13], 0xffffffff
	mov	byte ptr [r15], 0
	cmp	dword ptr [rip + follow_mode],  1
	sete	al
	and	al, byte ptr [rip + reopen_inaccessible_files]
	xor	al, 1
	mov	byte ptr [rbx + 0x34], al
	test	r14b, r14b
	jne	.label_480
	cmp	r12d, -1
	je	.label_455
.label_480:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_495
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_479
	cmp	byte ptr [rsi + 1], 0
	jne	.label_479
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_479:
	mov	edi, 4
	call	quotearg_style
	mov	rbp, rax
	mov	r8d, OFFSET FLAT:label_126
	cmp	byte ptr [rbx + 0x34], 0
	je	.label_494
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
.label_494:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	call	error
	jmp	.label_455
.label_498:
	mov	dword ptr [r13], 0xffffffff
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_458
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_466
	cmp	byte ptr [rsi + 1], 0
	jne	.label_466
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_466:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	word ptr [rbx + 0x34], 0x101
.label_455:
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_482
	cmp	byte ptr [rsi + 1], 0
	jne	.label_482
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_482:
	mov	edi, dword ptr [rsp + 8]
	call	close_fd
	mov	ebp, dword ptr [rbx + 0x38]
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_464
	cmp	byte ptr [rsi + 1], 0
	jne	.label_464
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_464:
	mov	edi, ebp
	call	close_fd
	mov	dword ptr [rbx + 0x38], 0xffffffff
.label_487:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_456:
	cmp	dword ptr [rbx + 0x38], -1
	jne	.label_496
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_490
	jmp	.label_491
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_454
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_459
	cmp	byte ptr [rsi + 1], 0
	jne	.label_459
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_459:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	call	error
	mov	r12d, dword ptr [rbx + 0x38]
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_474
	cmp	byte ptr [rsi + 1], 0
	jne	.label_474
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_474:
	mov	edi, r12d
	call	close_fd
	jmp	.label_483
.label_460:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_469
.label_491:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_481
	cmp	byte ptr [rsi + 1], 0
	jne	.label_481
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_481:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	call	error
.label_483:
	movzx	eax, bpl
	mov	ecx, dword ptr [rsp + 0xc]
	test	cl, cl
	mov	ecx, 0xffffffff
	cmove	ecx, eax
	mov	eax, dword ptr [rsp + 8]
	mov	dword ptr [rbx + 0x38], eax
	mov	qword ptr [rbx + 8], 0
	movups	xmm0, xmmword ptr [rsp + 0x68]
	movups	xmmword ptr [rbx + 0x10], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	eax, dword ptr [rsp + 0x28]
	mov	dword ptr [rbx + 0x30], eax
	mov	dword ptr [rbx + 0x40], ecx
	mov	qword ptr [rbx + 0x58], 0
	mov	byte ptr [rbx + 0x34], 0
	mov	rcx, qword ptr [rbx]
	cmp	byte ptr [rcx], 0x2d
	jne	.label_462
	cmp	byte ptr [rcx + 1], 0
	jne	.label_462
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
.label_462:
	xor	esi, esi
	xor	edx, edx
	mov	edi, dword ptr [rsp + 8]
	call	xlseek
	jmp	.label_487
.label_492:
	mov	edi, OFFSET FLAT:label_471
	mov	esi, OFFSET FLAT:label_165
	mov	edx, 0x3df
	mov	ecx, OFFSET FLAT:label_472
	call	__assert_fail
.label_496:
	mov	edi, OFFSET FLAT:label_476
	mov	esi, OFFSET FLAT:label_165
	mov	edx, 0x42c
	mov	ecx, OFFSET FLAT:label_472
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e90

	.globl check_fspec
	.type check_fspec, @function
check_fspec:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, rsi
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x38]
	cmp	esi, -1
	je	.label_500
	mov	r15, qword ptr [rbx]
	cmp	byte ptr [r15], 0x2d
	jne	.label_506
	cmp	byte ptr [r15 + 1], 0
	jne	.label_506
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	esi, dword ptr [rbx + 0x38]
.label_506:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	call	__fxstat
	test	eax, eax
	je	.label_504
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x3c], eax
	mov	edi, dword ptr [rbx + 0x38]
	mov	rsi, r15
	call	close_fd
	mov	dword ptr [rbx + 0x38], 0xffffffff
	jmp	.label_500
.label_504:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x30]
	cmp	eax, 0x8000
	jne	.label_499
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rbx + 8]
	jge	.label_502
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_288
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	call	error
	mov	edi, dword ptr [rbx + 0x38]
	xor	esi, esi
	xor	edx, edx
	mov	rcx, r15
	call	xlseek
	mov	qword ptr [rbx + 8], 0
	jmp	.label_499
.label_502:
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_499
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rsp + 0x60]
	jne	.label_499
	mov	eax, dword ptr [rbx + 0x18]
	cmp	eax, dword ptr [rsp + 0x68]
	je	.label_500
.label_499:
	cmp	byte ptr [rip + print_headers],  1
	jne	.label_501
	cmp	qword ptr [r14], rbx
	setne	al
	jmp	.label_503
.label_501:
	xor	eax, eax
.label_503:
	mov	edx, dword ptr [rbx + 0x38]
	movzx	edi, al
	mov	rcx, -1
	mov	rsi, r15
	call	dump_remainder
	add	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_500
	mov	qword ptr [r14], rbx
	mov	rdi, qword ptr [rip + stdout]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_505
.label_500:
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_505:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	.section	.text
	.align	32
	#Procedure 0x406010

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
	#Procedure 0x406030

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406040

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
	je	.label_513
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_507:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_511
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_509
	cmp	qword ptr [rsp + 8], -1
	je	.label_510
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_512
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_511
.label_512:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_511
.label_510:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_511:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_507
	jmp	.label_508
.label_513:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_508:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_509:
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
	#Procedure 0x406140

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
	je	.label_514
	mov	esi, OFFSET FLAT:label_515
	jmp	.label_516
.label_514:
	mov	esi, OFFSET FLAT:label_517
.label_516:
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
	#Procedure 0x4061b0

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
	mov	esi, OFFSET FLAT:label_522
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_519
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_524:
	test	r15, r15
	je	.label_518
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_523
.label_518:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_520
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_526
	nop	word ptr cs:[rax + rax]
.label_523:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_525
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_526:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_524
.label_519:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_521
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
.label_521:
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
	#Procedure 0x4062e0

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
	jns	.label_527
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
	#Procedure 0x406350
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
	je	.label_528
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_529:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_528
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_529
.label_528:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063c0

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
	lea	rsi, [rsp + 8]
	call	strtod
	mov	r12, qword ptr [rsp + 8]
	cmp	byte ptr [r12], 0
	je	.label_532
	movsd	qword ptr [rsp + 0x10], xmm0
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbx
	call	c_strtod
	mov	rax, qword ptr [rsp + 0x18]
	cmp	r12, rax
	jae	.label_531
	mov	qword ptr [rsp + 8], rax
	mov	r12, rax
	jmp	.label_532
.label_531:
	mov	dword ptr [r15], ebp
	movsd	xmm0, qword ptr [rsp + 0x10]
.label_532:
	test	r14, r14
	je	.label_530
	mov	qword ptr [r14], r12
.label_530:
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
	#Procedure 0x406440
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406450
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406460

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_536
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_533
	cmp	dword ptr [rbp], 0x20
	jne	.label_533
.label_536:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_535
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_533:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_534
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_259
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_535:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_534:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_243
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406520

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	r14d, r14d
	cmp	byte ptr [rbx], 0x2f
	sete	r14b
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_538:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_537
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_538
.label_537:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406560
	.globl mdir_name
	.type mdir_name, @function
mdir_name:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	cmp	byte ptr [r14], 0x2f
	sete	r15b
	call	last_component
	inc	rax
	sub	rax, r14
	nop	word ptr cs:[rax + rax]
.label_542:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_539
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_542
.label_539:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_541
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_540
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_540:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_541:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406600

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_543:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_543
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_547
	nop	word ptr cs:[rax + rax]
.label_546:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_547:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_546
	test	dl, dl
	je	.label_545
	mov	ecx, esi
	and	cl, 1
	je	.label_544
	xor	esi, esi
.label_544:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_546
.label_545:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406660
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_548:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_549
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_548
.label_549:
	pop	rbx
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406690

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_550
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_550:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_551
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_553
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_552
.label_553:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_552:
	mov	edx, dword ptr [rax]
.label_551:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406760
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406770
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406780

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406790
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_559
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_555
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_561:
	cmp	qword ptr [rcx], 0
	je	.label_556
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_554:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_554
	cmp	rdi, rax
	cmova	rax, rdi
.label_556:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_560
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_557:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_557
	cmp	rdi, rax
	cmova	rax, rdi
.label_560:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_561
.label_555:
	test	r8, r8
	je	.label_559
	cmp	qword ptr [rcx], 0
	je	.label_559
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_558:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_558
	cmp	rdx, rax
	cmova	rax, rdx
.label_559:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406850
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_567
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_569
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_564:
	cmp	qword ptr [rax], 0
	je	.label_565
	mov	rdx, rax
	nop	dword ptr [rax]
.label_568:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_568
	inc	r10
.label_565:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_570
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_562:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_562
	inc	r10
.label_570:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_564
	jmp	.label_566
.label_569:
	xor	r10d, r10d
.label_566:
	test	r8, r8
	je	.label_567
	cmp	qword ptr [rax], 0
	je	.label_567
	nop	dword ptr [rax]
.label_571:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_571
	inc	r10
.label_567:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_572
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_563
.label_572:
	xor	eax, eax
.label_563:
	ret	
	.section	.text
	.align	32
	#Procedure 0x406910
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
	mov	rdi, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdi
	jae	.label_577
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_580
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_582:
	cmp	qword ptr [rax], 0
	je	.label_573
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_581:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_581
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_573:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_575
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_579:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_579
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_575:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_582
.label_580:
	test	r8, r8
	je	.label_577
	cmp	qword ptr [rax], 0
	je	.label_577
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_574:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_574
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_577:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_578
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_576
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_584]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_585]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_586]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_587
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_583
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	
	.section	.text
	.align	32
	#Procedure 0x406a80

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
	jae	.label_592
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_589
	add	rbx, rax
	je	.label_589
	cmp	rsi, r12
	je	.label_591
	xor	r15d, r15d
	nop	
.label_590:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_588
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_589
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_590
.label_591:
	mov	r15, r12
	jmp	.label_589
.label_588:
	mov	r15, qword ptr [rbx]
.label_589:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_592:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b00
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_593
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_596
	nop	word ptr cs:[rax + rax]
.label_595:
	add	rcx, 0x10
.label_596:
	cmp	rcx, rdx
	jae	.label_594
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_595
.label_593:
	ret	
.label_594:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b40
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
	jae	.label_600
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_601:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_599
	test	rdx, rdx
	jne	.label_601
	jmp	.label_597
.label_599:
	test	rdx, rdx
	je	.label_597
	mov	rax, qword ptr [rdx]
	jmp	.label_598
.label_597:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_602:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_598
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_602
.label_598:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_600:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406bd0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_603
	xor	eax, eax
.label_605:
	cmp	qword ptr [r9], 0
	je	.label_604
	test	r9, r9
	je	.label_604
	mov	r8, r9
	nop	
.label_606:
	cmp	rax, rdx
	jae	.label_603
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_606
	mov	r8, qword ptr [rdi + 8]
.label_604:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_605
.label_603:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c20
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
	cmp	r13, rax
	jae	.label_607
	xor	ebx, ebx
.label_611:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_609
	test	r13, r13
	je	.label_609
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_607
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_608:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_610
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_608
	jmp	.label_607
	nop	dword ptr [rax]
.label_610:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_609:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_611
.label_607:
	mov	rax, rbx
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
	#Procedure 0x406cc0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_612
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_613:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_613
.label_612:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d00
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_614]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d20

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
	je	.label_620
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_626
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_629]
	jbe	.label_618
	movss	xmm1, dword ptr [rip + label_617]
	ucomiss	xmm1, xmm0
	jbe	.label_618
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_624]
	jbe	.label_618
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_618
	addss	xmm1, dword ptr [rip + label_629]
	ucomiss	xmm0, xmm1
	jbe	.label_618
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_619]
	ucomiss	xmm2, xmm0
	jb	.label_618
	ucomiss	xmm0, xmm1
	jbe	.label_618
.label_626:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_621
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_628
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_615
.label_628:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_615:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_622]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_623]
	jae	.label_618
.label_621:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_625
	nop	
.label_630:
	add	rbx, 2
.label_625:
	cmp	rbx, -1
	je	.label_618
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_616
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_627:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_616
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_627
.label_616:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_630
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_618
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_618
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_618
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
	jmp	.label_620
.label_618:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_620:
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
	#Procedure 0x406f40

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
	#Procedure 0x406f50

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f60
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_631
	nop	word ptr cs:[rax + rax]
.label_634:
	add	r14, 0x10
.label_631:
	cmp	r14, rax
	jae	.label_633
	cmp	qword ptr [r14], 0
	je	.label_634
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_635
	nop	word ptr cs:[rax + rax]
.label_637:
	test	cl, 1
	je	.label_636
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_636:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_637
.label_635:
	test	cl, cl
	je	.label_632
	mov	rdi, qword ptr [r14]
	call	rax
.label_632:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_634
.label_633:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407010

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_641
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_641
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_644
	nop	
.label_638:
	add	r15, 0x10
.label_644:
	cmp	r15, rax
	jae	.label_641
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_638
	test	r15, r15
	je	.label_638
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_639
.label_642:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_639:
	test	rbx, rbx
	jne	.label_642
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_638
.label_641:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_643
	nop	
.label_646:
	add	r15, 0x10
.label_643:
	cmp	r15, rax
	jae	.label_647
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_646
	nop	word ptr cs:[rax + rax]
.label_640:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_640
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_646
.label_647:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_645
.label_648:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_648
.label_645:
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
	#Procedure 0x4070e0

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
	jne	.label_659
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_665
	cvtsi2ss	xmm0, rsi
	jmp	.label_651
.label_665:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_651:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_622]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_623]
	jae	.label_653
.label_659:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_656
	nop	dword ptr [rax + rax]
.label_667:
	add	rbx, 2
.label_656:
	cmp	rbx, -1
	je	.label_653
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_649
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_663:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_649
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_663
.label_649:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_667
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_653
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_657
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_653
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
	je	.label_654
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_657
.label_654:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_666
	nop	
.label_658:
	add	r12, 0x10
.label_666:
	cmp	r12, r15
	jae	.label_655
	cmp	qword ptr [r12], 0
	je	.label_658
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_660
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_664:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_652
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_662
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_661
	nop	word ptr [rax + rax]
.label_662:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_661:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_664
.label_660:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_658
.label_655:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_650
	mov	rdi, qword ptr [rsp]
	call	free
.label_653:
	xor	ebp, ebp
.label_657:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_652:
	call	abort
.label_650:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407370

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
	jae	.label_671
	nop	word ptr cs:[rax + rax]
.label_678:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_676
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_679
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_674:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_670
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_673
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_681
	nop	dword ptr [rax]
.label_673:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_681:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_674
	mov	r13, qword ptr [r14]
.label_679:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_676
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_668
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_672
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_675
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_677
.label_672:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_680
.label_675:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_669
.label_677:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_680:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_676:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_678
	mov	al, 1
.label_671:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_669:
	xor	eax, eax
	jmp	.label_671
.label_670:
	call	abort
.label_668:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074e0

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
	je	.label_684
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_684
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_688
	cmp	rsi, r14
	je	.label_694
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_695
	mov	rax, qword ptr [r12]
.label_693:
	test	rax, rax
	jne	.label_699
	jmp	.label_688
.label_694:
	mov	rax, r14
.label_699:
	xor	ebp, ebp
	test	r15, r15
	je	.label_689
	mov	qword ptr [r15], rax
	jmp	.label_689
.label_695:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_688
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_686:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_711
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_682
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_686
.label_688:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_690
	cvtsi2ss	xmm1, rax
	jmp	.label_696
.label_690:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_696:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_700
	cvtsi2ss	xmm0, rcx
	jmp	.label_706
.label_700:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_706:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_709
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_712
	ucomiss	xmm2, dword ptr [rip + label_629]
	jbe	.label_687
	movss	xmm3, dword ptr [rip + label_617]
	ucomiss	xmm3, xmm2
	jbe	.label_687
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_624]
	jbe	.label_687
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_687
	addss	xmm3, dword ptr [rip + label_629]
	ucomiss	xmm2, xmm3
	jbe	.label_687
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_619]
	ucomiss	xmm5, xmm4
	jb	.label_687
	ucomiss	xmm4, xmm3
	ja	.label_692
.label_687:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_691]
	jmp	.label_692
.label_712:
	mov	eax, OFFSET FLAT:default_tuning
.label_692:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_709
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_685
	mulss	xmm0, xmm2
.label_685:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_623]
	jae	.label_689
	movss	xmm1, dword ptr [rip + label_622]
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
	je	.label_689
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_684
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_709
	cmp	rsi, r14
	mov	rax, r14
	je	.label_707
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_702
	mov	rax, qword ptr [r12]
.label_707:
	test	rax, rax
	jne	.label_683
.label_709:
	cmp	qword ptr [r12], 0
	je	.label_697
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_698
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_701
.label_697:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_704]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_705
.label_698:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_689
.label_701:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_705:
	mov	ebp, 1
.label_689:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_711:
	mov	rax, r14
	jmp	.label_693
.label_682:
	mov	rax, qword ptr [rbp]
	jmp	.label_693
.label_702:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_709
	lea	rbp, [rbx + rbp + 8]
.label_710:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_703
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_708
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_710
	jmp	.label_709
.label_703:
	mov	rax, r14
	jmp	.label_707
.label_708:
	mov	rax, qword ptr [rbp]
	jmp	.label_707
.label_684:
	call	abort
.label_683:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407820

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
	je	.label_713
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_713:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407850

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
	jae	.label_731
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_719
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_718
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_723
	mov	r14, qword ptr [r13]
.label_718:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_726
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_727
.label_723:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_719
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_716:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_732
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_734
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_716
	jmp	.label_719
.label_726:
	mov	qword ptr [r13], 0
	jmp	.label_727
.label_732:
	mov	rcx, rax
	jmp	.label_725
.label_734:
	mov	r14, qword ptr [rcx]
.label_725:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_727:
	xor	r12d, r12d
	test	r14, r14
	je	.label_719
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_720
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_722
	cvtsi2ss	xmm1, rax
	jmp	.label_733
.label_722:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_733:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_717
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_724
.label_717:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_724:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_720
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_729
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_629]
	jbe	.label_714
	movss	xmm4, dword ptr [rip + label_617]
	ucomiss	xmm4, xmm3
	jbe	.label_714
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_714
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_624]
	jbe	.label_714
	movss	xmm4, dword ptr [rip + label_629]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_714
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_619]
	ucomiss	xmm5, xmm3
	jb	.label_714
	ucomiss	xmm3, xmm4
	ja	.label_721
.label_714:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_721
.label_729:
	mov	eax, OFFSET FLAT:default_tuning
.label_721:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_720
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_730
	mulss	xmm0, dword ptr [rax + 8]
.label_730:
	movss	xmm1, dword ptr [rip + label_622]
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
	jne	.label_720
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_715
	nop	word ptr cs:[rax + rax]
.label_728:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_728
.label_715:
	mov	qword ptr [r15 + 0x48], 0
.label_720:
	mov	r12, r14
.label_719:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_731:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407af0

	.globl offtostr
	.type offtostr, @function
offtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_735
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_736:
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
	ja	.label_736
	jmp	.label_738
.label_735:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_737:
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
	ja	.label_737
	mov	byte ptr [rsi], 0x2d
.label_738:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407bb0

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:label_739
	call	getenv
	mov	ecx, 0x31069
	test	rax, rax
	je	.label_740
	mov	ecx, 0x31069
	cmp	byte ptr [rax], 0
	je	.label_740
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	ecx, 0x31069
	cmove	rcx, rax
.label_740:
	cmp	rcx, 0x7fffffff
	mov	edx, 0x7fffffff
	cmovl	edx, ecx
	cmp	rcx, -0x80000000
	mov	eax, 0x80000000
	cmovge	eax, edx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x407c10

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_744
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_746
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_741
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_746
	mov	esi, OFFSET FLAT:label_743
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_742
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_742:
	mov	rbx, r14
.label_746:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_744:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_745
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407cc0
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
	#Procedure 0x407d00
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
	#Procedure 0x407d10
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
	#Procedure 0x407d20
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
	.align	32
	#Procedure 0x407d60
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
	#Procedure 0x407d80
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_747
	test	rdx, rdx
	je	.label_747
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_747:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407db0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e30

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
.label_811:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_809
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_843]
.label_1122:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_817
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_749
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1123:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_832
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_832
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_847:
	cmp	r14, r11
	jae	.label_844
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_844:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_847
.label_832:
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
	jmp	.label_750
.label_1115:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_750
.label_1118:
	mov	al, 1
.label_1116:
	mov	r12b, 1
.label_1119:
	test	r12b, 1
	mov	cl, 1
	je	.label_862
	mov	ecx, eax
.label_862:
	mov	al, cl
.label_1117:
	test	r12b, 1
	jne	.label_864
	test	r11, r11
	je	.label_848
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_848:
	mov	r14d, 1
	jmp	.label_868
.label_864:
	xor	r14d, r14d
.label_868:
	mov	ecx, OFFSET FLAT:label_749
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_750
.label_1120:
	test	r12b, 1
	jne	.label_763
	test	r11, r11
	je	.label_767
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_767:
	mov	r14d, 1
	jmp	.label_770
.label_1121:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_772
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_750
.label_763:
	xor	r14d, r14d
.label_770:
	mov	eax, OFFSET FLAT:label_772
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_750:
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
	jmp	.label_789
	nop	dword ptr [rax]
.label_849:
	inc	rsi
.label_789:
	cmp	rbp, -1
	je	.label_824
	cmp	rsi, rbp
	jne	.label_826
	jmp	.label_828
	nop	word ptr cs:[rax + rax]
.label_824:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_833
.label_826:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_865
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_838
	cmp	rbp, -1
	jne	.label_838
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
.label_838:
	cmp	rbx, rbp
	jbe	.label_853
.label_865:
	xor	r8d, r8d
.label_755:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_856
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_859]
.label_1185:
	test	rsi, rsi
	jne	.label_754
	jmp	.label_782
	nop	word ptr cs:[rax + rax]
.label_853:
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
	jne	.label_751
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_755
	jmp	.label_769
.label_751:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_755
.label_1189:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_778
	test	rsi, rsi
	jne	.label_780
	cmp	rbp, 1
	je	.label_782
	xor	r13d, r13d
	jmp	.label_765
.label_1178:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_787
	cmp	byte ptr [rsp + 6], 0
	jne	.label_840
	cmp	r12d, 2
	jne	.label_792
	mov	eax, r9d
	and	al, 1
	jne	.label_792
	cmp	r14, r11
	jae	.label_796
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_796:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_799
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_799:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_798
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_798:
	add	r14, 3
	mov	r9b, 1
.label_792:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_812
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_812:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_815
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_815
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_815
	cmp	r14, r11
	jae	.label_757
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_757:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_807
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_807:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_765
.label_1179:
	mov	bl, 0x62
	jmp	.label_836
.label_1180:
	mov	cl, 0x74
	jmp	.label_756
.label_1181:
	mov	bl, 0x76
	jmp	.label_836
.label_1182:
	mov	bl, 0x66
	jmp	.label_836
.label_1183:
	mov	cl, 0x72
	jmp	.label_756
.label_1186:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_846
	cmp	byte ptr [rsp + 6], 0
	jne	.label_761
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
	jae	.label_852
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_852:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_861
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_861:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_863
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_863:
	add	r14, 3
	xor	r9d, r9d
.label_846:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_765
.label_1187:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_869
	cmp	r12d, 2
	jne	.label_754
	cmp	byte ptr [rsp + 6], 0
	je	.label_754
	jmp	.label_761
.label_1188:
	cmp	r12d, 2
	jne	.label_764
	cmp	byte ptr [rsp + 6], 0
	jne	.label_761
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_800
.label_856:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_775
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
.label_776:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_791
	test	r8b, r8b
	je	.label_791
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_765
.label_778:
	test	rsi, rsi
	jne	.label_814
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_814
.label_782:
	mov	dl, 1
.label_1184:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_761
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_765:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_821
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_788
	jmp	.label_823
	nop	word ptr cs:[rax + rax]
.label_821:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_823
.label_788:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_830
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_800
	jmp	.label_794
	nop	dword ptr [rax]
.label_823:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_794
	jmp	.label_800
.label_830:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_794
.label_787:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_849
	xor	r15d, r15d
	jmp	.label_754
.label_764:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_756
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_800
.label_756:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_761
.label_836:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_765
	nop	word ptr cs:[rax + rax]
.label_794:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_840
	cmp	r12d, 2
	jne	.label_867
	mov	eax, r9d
	and	al, 1
	jne	.label_867
	cmp	r14, r11
	jae	.label_834
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_834:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_752
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_752:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_825
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_825:
	add	r14, 3
	mov	r9b, 1
.label_867:
	cmp	r14, r11
	jae	.label_768
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_768:
	inc	r14
	jmp	.label_773
.label_775:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_777
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_777:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_759:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_797
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_802
	cmp	rbp, -2
	je	.label_806
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_820
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_813:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_779
	bt	rsi, rdx
	jb	.label_822
.label_779:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_813
.label_820:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_839
	xor	r13d, r13d
.label_839:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_759
	jmp	.label_776
.label_815:
	xor	r13d, r13d
	jmp	.label_765
.label_814:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_765
.label_869:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_754
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_754
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_754
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_858
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_784
	cmp	byte ptr [rsp + 6], 0
	jne	.label_810
	cmp	r14, r11
	jae	.label_795
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_795:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_855
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_855:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_748
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_748:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_783
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_783:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_765
.label_754:
	xor	eax, eax
.label_780:
	xor	r13d, r13d
	jmp	.label_765
.label_791:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_774
	nop	word ptr cs:[rax + rax]
.label_850:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_774:
	test	r8b, r8b
	je	.label_808
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_781
	cmp	r14, r11
	jae	.label_785
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_785:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_781
	nop	dword ptr [rax]
.label_808:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_769
	cmp	r12d, 2
	jne	.label_766
	mov	eax, r9d
	and	al, 1
	jne	.label_766
	cmp	r14, r11
	jae	.label_801
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_801:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_854
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_854:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_804
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_804:
	add	r14, 3
	mov	r9b, 1
.label_766:
	cmp	r14, r11
	jae	.label_857
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_857:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_818
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_818:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_866
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_866:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_781:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_800
	test	r9b, 1
	je	.label_837
	mov	ebx, eax
	and	bl, 1
	jne	.label_837
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_841
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_841:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_845
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_845:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_837:
	cmp	r14, r11
	jae	.label_850
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_850
	nop	word ptr cs:[rax + rax]
.label_800:
	test	r9b, 1
	je	.label_762
	and	al, 1
	jne	.label_762
	cmp	r14, r11
	jae	.label_860
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_860:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_851
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_851:
	add	r14, 2
	xor	r9d, r9d
.label_762:
	mov	ebx, r15d
.label_773:
	cmp	r14, r11
	jae	.label_827
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_827:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_849
.label_802:
	xor	r13d, r13d
.label_797:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_776
.label_806:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_760
	mov	rsi, qword ptr [rsp + 0x58]
.label_771:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_842
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_771
	xor	r13d, r13d
	jmp	.label_776
.label_760:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_776
.label_842:
	xor	r13d, r13d
	jmp	.label_776
.label_858:
	xor	r13d, r13d
	jmp	.label_765
.label_784:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_765
	nop	dword ptr [rax + rax]
.label_828:
	mov	rcx, rsi
.label_833:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_786
	or	al, dl
	je	.label_790
.label_786:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_793
	or	al, dl
	jne	.label_793
	test	r10b, 1
	jne	.label_805
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_793
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_811
.label_793:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_816
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_819
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_819
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_831:
	cmp	r14, r11
	jae	.label_829
	mov	byte ptr [rcx + r14], al
.label_829:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_831
	jmp	.label_819
.label_840:
	mov	qword ptr [rsp + 0x20], rbp
.label_769:
	mov	rdx, rdi
	jmp	.label_835
.label_761:
	mov	qword ptr [rsp + 0x20], rbp
.label_822:
	mov	rdx, rdi
	mov	eax, 2
.label_803:
	mov	qword ptr [rsp + 0x38], rax
.label_835:
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
.label_753:
	mov	r14, rax
.label_758:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_790:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_835
.label_805:
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
	jmp	.label_753
.label_816:
	mov	rcx, qword ptr [rsp + 8]
.label_819:
	cmp	r14, r11
	jae	.label_758
	mov	byte ptr [rcx + r14], 0
	jmp	.label_758
.label_810:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_803
.label_809:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c40
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d10
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
	je	.label_870
	mov	qword ptr [rax], rbx
.label_870:
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
	.align	32
	#Procedure 0x408e00
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_871
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_873:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_873
.label_871:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_874
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_875], OFFSET FLAT:slot0
.label_874:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_872
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_872:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ea0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x408eb0

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
	js	.label_879
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_882
	cmp	r12d, 0x7fffffff
	je	.label_877
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
	jne	.label_880
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_880:
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
.label_882:
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
	jbe	.label_878
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_881
.label_878:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_876
	mov	rdi, r14
	call	free
.label_876:
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
.label_881:
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
.label_879:
	call	abort
.label_877:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409070
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409080
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
	#Procedure 0x4090a0
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
	#Procedure 0x4090c0

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
	je	.label_883
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
.label_883:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409130
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
	je	.label_884
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
.label_884:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091a0

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
	je	.label_885
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
.label_885:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409210
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
	je	.label_886
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
.label_886:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409280
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_887]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_888]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_889]
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x4092f0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_887]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_888]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_889]
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x409360

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_887]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_888]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_889]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_887]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_888]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_889]
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409420

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
	je	.label_890
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
.label_890:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094c0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_887]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_888]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_889]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_891
	test	rdx, rdx
	je	.label_891
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_891:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409530
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_887]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_888]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_889]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_892
	test	rdx, rdx
	je	.label_892
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_892:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095a0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_887]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_888]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_889]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_893
	test	rsi, rsi
	je	.label_893
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_893:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409610
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_887]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_888]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_889]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_894
	test	rsi, rsi
	je	.label_894
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
.label_894:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409680
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409690
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
	#Procedure 0x4096b0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096d0

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
	#Procedure 0x4096f0

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
	jne	.label_896
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_901
	cmp	ecx, 0x55
	jne	.label_895
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_895
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_895
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_895
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_895
	cmp	byte ptr [rax + 5], 0
	jne	.label_895
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_898
	mov	eax, OFFSET FLAT:label_899
	jmp	.label_900
.label_901:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_895
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_895
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_895
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_895
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_895
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_895
	cmp	byte ptr [rax + 7], 0
	je	.label_897
.label_895:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_772
	mov	eax, OFFSET FLAT:label_749
.label_900:
	cmove	rax, rcx
.label_896:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_897:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_902
	mov	eax, OFFSET FLAT:label_903
	jmp	.label_900
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097c0

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
.label_905:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_904
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_905
	cmp	rbx, 0x7ff00001
	jb	.label_904
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_905
.label_904:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409820

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
	ja	.label_906
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
	jmp	.label_907
.label_906:
	mov	eax, ebx
.label_907:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409870

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
	je	.label_918
	mov	edx, OFFSET FLAT:label_913
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_920
.label_918:
	mov	edx, OFFSET FLAT:label_921
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_920:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_926
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
	mov	esi, OFFSET FLAT:label_922
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_909
	jmp	qword ptr [(r12 * 8) + label_910]
.label_1150:
	add	rsp, 8
	jmp	.label_908
.label_909:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_917
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
	jmp	.label_908
.label_1151:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_923
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
.label_1152:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_924
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
.label_1153:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_915
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
.label_1154:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_911
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
	jmp	.label_908
.label_1155:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_914
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
	jmp	.label_908
.label_1156:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_912
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
	jmp	.label_908
.label_1157:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_916
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
	jmp	.label_908
.label_1159:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_919
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
	jmp	.label_908
.label_1158:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_925
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
.label_908:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409bd0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_927:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_927
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c00

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_928
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_930
.label_928:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_930:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_931
	cmp	r10d, 0x29
	jae	.label_940
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_929
.label_940:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_929:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_931
	cmp	r10d, 0x29
	jae	.label_938
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_939
.label_938:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_939:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_931
	cmp	r10d, 0x29
	jae	.label_936
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_937
.label_936:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_937:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_931
	cmp	r10d, 0x29
	jae	.label_934
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_935
.label_934:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_935:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_931
	cmp	r10d, 0x29
	jae	.label_932
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_933
.label_932:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_933:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_931
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_931
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_931
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_931
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_931:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409df0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_941
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_941:
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
	.align	32
	#Procedure 0x409e80
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_942
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_943
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_945
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_13
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_944
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f00
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_946
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_947
	test	rax, rax
	je	.label_946
.label_947:
	pop	rbx
	ret	
.label_946:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f40

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_948
	test	rax, rax
	je	.label_949
.label_948:
	pop	rbx
	ret	
.label_949:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f60
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_950
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_951
	test	rbx, rbx
	jne	.label_951
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_951:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_952
	test	rax, rax
	je	.label_950
.label_952:
	pop	rbx
	ret	
.label_950:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409fb0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_953
	test	rbx, rbx
	jne	.label_953
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_953:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_955
	test	rax, rax
	je	.label_954
.label_955:
	pop	rbx
	ret	
.label_954:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x409fe0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_956
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_959
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_957
.label_956:
	test	rcx, rcx
	jne	.label_962
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_962:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_958
.label_957:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_961
	test	rbx, rbx
	jne	.label_961
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_961:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_960
	test	rax, rax
	je	.label_959
.label_960:
	pop	rbx
	ret	
.label_959:
	call	xalloc_die
.label_958:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a080
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_963
	test	rax, rax
	je	.label_964
.label_963:
	pop	rbx
	ret	
.label_964:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a0a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_965
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_968
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_969
	call	free
	xor	eax, eax
	jmp	.label_966
.label_965:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_967
	mov	qword ptr [rsi], rbx
.label_969:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_966
	test	rax, rax
	je	.label_967
.label_966:
	pop	rbx
	ret	
.label_967:
	call	xalloc_die
.label_968:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a110
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
	je	.label_971
	test	r14, r14
	je	.label_970
.label_971:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_970:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a150
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_972
	call	rpl_calloc
	test	rax, rax
	je	.label_972
	pop	rcx
	ret	
.label_972:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a180

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
	je	.label_973
	test	r15, r15
	je	.label_974
.label_973:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_974:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a1c0
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
	je	.label_976
	test	r15, r15
	je	.label_975
.label_976:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_975:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a210

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_977
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_259
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a240

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
	je	.label_979
	cmp	eax, 1
	je	.label_981
	cmp	eax, 3
	jne	.label_983
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_978
.label_981:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_978
.label_979:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_982
	cmp	rbx, r15
	jbe	.label_984
.label_982:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_980
	mov	dword ptr [rax], 0x4b
	jmp	.label_978
.label_983:
	call	__errno_location
	jmp	.label_978
.label_980:
	mov	dword ptr [rax], 0x22
.label_978:
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
	mov	edx, OFFSET FLAT:label_243
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_984:
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
	#Procedure 0x40a310

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
	.section	.text
	.align	32
	#Procedure 0x40a340

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
	je	.label_985
	lea	r15, [rsp]
	nop	dword ptr [rax + rax]
.label_986:
	mov	eax, dword ptr [r14]
	mov	ebx, 0xffffffff
	or	eax, 4
	cmp	eax, 4
	jne	.label_985
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	xor	esi, esi
	mov	rdi, r15
	call	rpl_nanosleep
	test	eax, eax
	jne	.label_986
.label_985:
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a3c0

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
	je	.label_990
	test	r15, r15
	jne	.label_989
	cmp	byte ptr [rcx], 0
	je	.label_989
	xor	eax, eax
	jmp	.label_987
.label_989:
	mov	al, 1
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.label_988
	jnp	.label_991
.label_988:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_991
.label_990:
	xor	eax, eax
.label_991:
	test	r15, r15
	je	.label_987
	mov	qword ptr [r15], rcx
.label_987:
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
	#Procedure 0x40a440

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_1002
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_994:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_994
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_992
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rax]
	cmp	rcx, rbx
	je	.label_1004
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_1011
	cmp	eax, 0x22
	jne	.label_992
	mov	ebp, 1
.label_1011:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_996
	jmp	.label_999
.label_1004:
	test	r14, r14
	je	.label_992
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_992
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_992
.label_996:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_999
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_1005
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_993
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_993
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_993
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_995
	cmp	eax, 0x44
	je	.label_995
	cmp	eax, 0x69
	jne	.label_993
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_993
.label_995:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_993:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_1005
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_1012]
.label_1220:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
	jmp	.label_1013
.label_1005:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_1003
.label_1221:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_1006
.label_1222:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_1000
.label_1224:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
	jmp	.label_1001
.label_1218:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_998
.label_1219:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
	jmp	.label_1000
.label_1223:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
.label_1001:
	or	dl, r10b
.label_1013:
	or	dl, bl
.label_1000:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_997
.label_1225:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
	mov	r13d, r15d
	sbb	r15b, r15b
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
	or	dl, r15b
	mov	r15d, r13d
	or	dl, bpl
	jmp	.label_1007
.label_1226:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
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
.label_1007:
	movzx	eax, dl
.label_1006:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_997
.label_1227:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_998:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_997
.label_1228:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_997:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_999:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_1003:
	mov	r13d, r15d
.label_992:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1002:
	mov	edi, OFFSET FLAT:label_1008
	mov	esi, OFFSET FLAT:label_1009
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_1010
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aa80

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1014
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1015
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1015
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1014:
	mov	ecx, 1
.label_1015:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aad0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_1032
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1032:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_1020
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1033
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1021
	test	esi, esi
	jne	.label_1020
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1035
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1036
.label_1020:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1016
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1021
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1023
.label_1033:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1027
.label_1021:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1028
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1030
.label_1028:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1030:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_1031:
	call	fcntl
.label_1027:
	mov	ebp, eax
.label_1017:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1023:
	cmp	eax, 6
	jne	.label_1016
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1019
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1029
.label_1016:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1022
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1025
.label_1035:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1036:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_1031
.label_1019:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1029:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_1034
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_1018
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1018
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1017
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_1024
.label_1018:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_1017
.label_1022:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1025:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1027
.label_1034:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_1024:
	test	al, al
	je	.label_1017
	test	ebp, ebp
	js	.label_1017
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1026
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1017
.label_1026:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_1017
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ad70

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
	je	.label_1037
	cmp	r15, -2
	jb	.label_1037
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1037
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1037:
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
	#Procedure 0x40add0

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
	jb	.label_1038
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	jmp	.label_1040
.label_1038:
	mov	rbx, qword ptr [rdi]
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_1041:
	mov	qword ptr [rsp + 8], rcx
	cmp	rbx, 0x1fa401
	jl	.label_1039
	mov	qword ptr [rsp], 0x1fa400
	mov	rdi, r14
	mov	rsi, r15
	call	nanosleep
	add	rbx, -0x1fa400
	test	eax, eax
	mov	ecx, 0
	je	.label_1041
	test	r15, r15
	je	.label_1040
	add	qword ptr [r15], rbx
	jmp	.label_1040
.label_1039:
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp]
	mov	rsi, r15
	call	nanosleep
.label_1040:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae70

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	qword ptr [rip + c_locale_cache],  0
	jne	.label_1042
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_1043
	xor	edx, edx
	call	newlocale
	mov	qword ptr [rip + c_locale_cache],  rax
.label_1042:
	mov	rdx, qword ptr [rip + c_locale_cache]
	test	rdx, rdx
	je	.label_1045
	mov	rdi, r14
	mov	rsi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strtod_l
.label_1045:
	test	rbx, rbx
	je	.label_1044
	mov	qword ptr [rbx], r14
.label_1044:
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40aed0

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
	jne	.label_1047
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1046
	test	cl, cl
	jne	.label_1046
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_1046
.label_1047:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1046
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1046:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40af30

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	movabs	rcx, 0x7fffffffffffffff
	xor	edx, edx
	ucomisd	xmm0, qword ptr [rip + label_1048]
	jbe	.label_1049
	mov	edx, 0x3b9ac9ff
	movsd	xmm1, qword ptr [rip + label_1050]
	ucomisd	xmm1, xmm0
	jbe	.label_1051
	cvttsd2si	rsi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rsi
	subsd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_1052]
	cvttsd2si	rax, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	xor	ecx, ecx
	ucomisd	xmm0, xmm1
	seta	cl
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
.label_1051:
	mov	rax, rcx
	ret	
.label_1049:
	inc	rcx
	mov	rax, rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40afe0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1054
	cmp	byte ptr [rax], 0x43
	jne	.label_1056
	cmp	byte ptr [rax + 1], 0
	je	.label_1053
.label_1056:
	mov	esi, OFFSET FLAT:label_1055
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1054
.label_1053:
	xor	ebx, ebx
.label_1054:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b020

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_126
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1057
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b050

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
	#Procedure 0x40b060

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1058
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1060
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1058
.label_1060:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1058
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1059
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1059:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1058:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b0e0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1061
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1061
	test	byte ptr [rbx + 1], 1
	je	.label_1061
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1061:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b120

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
	jne	.label_1062
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1062
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1063
.label_1062:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1063:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1064
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1064:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x40b190

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

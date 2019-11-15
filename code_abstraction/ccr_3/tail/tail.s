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
	sub	rsp, 0x2178
	mov	r13, rsi
	mov	r14d, edi
	mov	qword ptr [rsp + 0x88], 0xa
	mov	rdi, qword ptr [r13]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_84
	call	setlocale
	mov	edi, OFFSET FLAT:label_348
	mov	esi, OFFSET FLAT:label_371
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_348
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
	je	.label_45
	cmp	r14d, 3
	jne	.label_43
	mov	rax, qword ptr [r13 + 0x10]
	cmp	byte ptr [rax], 0x2d
	jne	.label_45
	mov	cl, byte ptr [rax + 1]
	test	cl, cl
	jne	.label_47
	jmp	.label_45
.label_43:
	lea	eax, [r14 - 3]
	cmp	eax, 1
	ja	.label_51
	mov	rax, qword ptr [r13 + 0x10]
	cmp	byte ptr [rax], 0x2d
	jne	.label_54
	mov	cl, byte ptr [rax + 1]
.label_47:
	cmp	cl, 0x2d
	jne	.label_54
	cmp	byte ptr [rax + 2], 0
	je	.label_45
	xor	ebx, ebx
	jmp	.label_59
.label_45:
	call	posix2_version
	mov	rcx, qword ptr [r13 + 8]
	lea	rdi, [rcx + 1]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x2d
	je	.label_61
	cmp	edx, 0x2b
	jne	.label_51
	add	eax, 0xfffcf250
	mov	bl, 1
	cmp	eax, 0x2b8
	ja	.label_66
	xor	ebx, ebx
	jmp	.label_59
.label_51:
	xor	ebx, ebx
	jmp	.label_59
.label_61:
	cmp	eax, 0x30db0
	jge	.label_74
	xor	ebx, ebx
	jmp	.label_66
.label_54:
	xor	ebx, ebx
	jmp	.label_59
.label_74:
	xor	eax, eax
	cmp	byte ptr [rdi], 0x63
	sete	al
	xor	ebx, ebx
	cmp	byte ptr [rdi + rax], 0
	je	.label_59
.label_66:
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_79:
	movzx	edx, byte ptr [rcx + rax + 1]
	movsx	esi, dl
	lea	ebp, [rsi - 0x30]
	inc	rax
	cmp	ebp, 0xa
	jb	.label_79
	mov	r15b, 1
	mov	r8d, 0xa
	cmp	esi, 0x6c
	je	.label_86
	cmp	esi, 0x63
	je	.label_90
	cmp	esi, 0x62
	jne	.label_93
	mov	r8d, 0x1400
.label_90:
	xor	r15d, r15d
.label_86:
	lea	rsi, [rcx + rax + 1]
	mov	dl, byte ptr [rcx + rax + 1]
	jmp	.label_309
.label_93:
	add	rcx, rax
	mov	rsi, rcx
.label_309:
	lea	rcx, [rsi + 1]
	cmp	dl, 0x66
	sete	r12b
	cmovne	rcx, rsi
	cmp	byte ptr [rcx], 0
	je	.label_319
	xor	ebx, ebx
	jmp	.label_59
.label_319:
	cmp	rax, 1
	jne	.label_100
	mov	qword ptr [rsp + 0x88], r8
	jmp	.label_101
.label_100:
	lea	rcx, [rsp + 0x88]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_103
	call	xstrtoumax
	test	eax, 0xfffffffd
	jne	.label_111
.label_101:
	mov	byte ptr [rip + from_start],  bl
	mov	byte ptr [rip + count_lines],  r15b
	mov	byte ptr [rip + forever],  r12b
	mov	bl, 1
.label_59:
	movzx	eax, bl
	sub	r14d, eax
	lea	r15, [r13 + rax*8]
	movsd	xmm0, qword ptr [rip + label_115]
	movsd	qword ptr [rsp + 0x98], xmm0
	xor	eax, eax
	lea	r13, [rsp + 0x170]
	jmp	.label_116
.label_124:
	mov	byte ptr [rip + reopen_inaccessible_files],  1
	mov	eax, r12d
	jmp	.label_116
.label_1136:
	mov	byte ptr [rip + forever],  1
	mov	dword ptr [rip + follow_mode],  1
	jmp	.label_124
	nop	
.label_116:
	mov	r12d, eax
	mov	edx, OFFSET FLAT:label_129
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r15
	call	getopt_long
	mov	ebx, eax
	lea	ecx, [rbx + 0x83]
	cmp	ecx, 0x108
	ja	.label_135
	mov	eax, 2
	jmp	qword ptr [(rcx * 8) + label_137]
.label_1137:
	cmp	ebx, 0x6e
	sete	byte ptr [rip + count_lines]
	mov	rbp, qword ptr [rip + optarg]
	movzx	eax, byte ptr [rbp]
	cmp	al, 0x2d
	je	.label_140
	cmp	al, 0x2b
	jne	.label_146
	mov	byte ptr [rip + from_start],  1
	jmp	.label_146
.label_1138:
	mov	byte ptr [rip + forever],  1
	mov	rsi, qword ptr [rip + optarg]
	test	rsi, rsi
	je	.label_149
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_152
	mov	edx, OFFSET FLAT:follow_mode_string
	mov	ecx, OFFSET FLAT:follow_mode_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + follow_mode_map]
	mov	dword ptr [rip + follow_mode],  eax
	mov	eax, r12d
	jmp	.label_116
.label_1142:
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_84
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rip + max_n_unchanged_stats_between_opens],  rax
	mov	eax, r12d
	jmp	.label_116
.label_1144:
	mov	byte ptr [rip + presume_input_pipe],  1
	mov	eax, r12d
	jmp	.label_116
.label_1139:
	mov	rdi, qword ptr [rip + optarg]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtod
	mov	rdx, r13
	call	xstrtod
	test	al, al
	je	.label_178
	movsd	xmm0, qword ptr [rsp + 0x170]
	movsd	qword ptr [rsp + 0x98], xmm0
	ucomisd	xmm0, qword ptr [label_180]
	jb	.label_178
	mov	eax, r12d
	jmp	.label_116
.label_1141:
	mov	byte ptr [rip + line_end],  0
	mov	eax, r12d
	jmp	.label_116
.label_1140:
	mov	eax, 1
	jmp	.label_116
.label_1143:
	mov	rbx, qword ptr [rip + optarg]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_188
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_84
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [rip + pid],  eax
	mov	eax, r12d
	jmp	.label_116
.label_1145:
	mov	byte ptr [rip + disable_inotify],  1
	mov	eax, r12d
	jmp	.label_116
.label_149:
	mov	dword ptr [rip + follow_mode],  2
	mov	eax, r12d
	jmp	.label_116
.label_140:
	inc	rbp
	mov	qword ptr [rip + optarg],  rbp
.label_146:
	xor	edi, edi
	cmp	ebx, 0x6e
	jne	.label_206
	mov	esi, OFFSET FLAT:label_208
	jmp	.label_209
.label_206:
	mov	esi, OFFSET FLAT:label_211
.label_209:
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_217
	xor	r9d, r9d
	mov	rdi, rbp
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x88], rax
	mov	eax, r12d
	jmp	.label_116
.label_1134:
	cmp	byte ptr [rip + reopen_inaccessible_files],  1
	jne	.label_225
	cmp	byte ptr [rip + forever],  0
	je	.label_229
	cmp	dword ptr [rip + follow_mode],  2
	jne	.label_225
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
	jmp	.label_233
.label_229:
	mov	byte ptr [rip + reopen_inaccessible_files],  0
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
.label_233:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_225:
	mov	edi, dword ptr [rip + pid]
	test	edi, edi
	je	.label_242
	mov	al, byte ptr [rip + forever]
	test	al, al
	jne	.label_242
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
	jmp	.label_154
.label_242:
	test	edi, edi
	je	.label_154
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_154
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_154
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	dword ptr [rip + pid],  0
.label_154:
	mov	r8b, byte ptr [rip + from_start]
	mov	r9, qword ptr [rsp + 0x88]
	test	r8b, r8b
	je	.label_212
	test	r9, r9
	je	.label_212
	dec	r9
	mov	qword ptr [rsp + 0x88], r9
.label_212:
	movsxd	rax, dword ptr [rip + optind]
	mov	r13d, OFFSET FLAT:main.dummy_stdin
	mov	ecx, 1
	cmp	r14d, eax
	jle	.label_253
	sub	r14d, eax
	lea	r13, [r15 + rax*8]
	je	.label_278
	movsxd	rcx, r14d
.label_253:
	mov	r10d, ecx
	and	r10d, 1
	xor	esi, esi
	cmp	rcx, 1
	mov	qword ptr [rsp + 0x28], rcx
	jne	.label_293
	xor	ecx, ecx
	jmp	.label_277
.label_293:
	mov	rbp, rcx
	sub	rbp, r10
	xor	esi, esi
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_292:
	mov	rax, qword ptr [r13 + rsi*8]
	movzx	edx, byte ptr [rax]
	mov	ecx, 0x2d
	sub	ecx, edx
	jne	.label_282
	movzx	ecx, byte ptr [rax + 1]
	neg	ecx
.label_282:
	mov	rdx, qword ptr [r13 + rsi*8 + 8]
	movzx	ebx, byte ptr [rdx]
	mov	eax, 0x2d
	sub	eax, ebx
	jne	.label_287
	movzx	eax, byte ptr [rdx + 1]
	neg	eax
.label_287:
	test	ecx, ecx
	mov	cl, 1
	mov	dl, 1
	je	.label_290
	mov	edx, edi
.label_290:
	test	eax, eax
	je	.label_291
	mov	cl, dl
.label_291:
	add	rsi, 2
	cmp	rbp, rsi
	mov	dil, cl
	jne	.label_292
.label_277:
	test	r10, r10
	je	.label_132
	mov	rdx, qword ptr [r13 + rsi*8]
	movzx	esi, byte ptr [rdx]
	mov	eax, 0x2d
	sub	eax, esi
	jne	.label_296
	movzx	eax, byte ptr [rdx + 1]
	neg	eax
.label_296:
	test	eax, eax
	mov	al, 1
	je	.label_81
	mov	eax, ecx
.label_81:
	mov	cl, al
.label_132:
	and	cl, 1
	mov	esi, dword ptr [rip + follow_mode]
	je	.label_301
	cmp	esi, 1
	je	.label_303
.label_301:
	mov	dl, byte ptr [rip + forever]
	test	cl, cl
	sete	al
	mov	dword ptr [rsp + 0x80], 0
	test	dl, dl
	je	.label_119
	test	al, al
	jne	.label_119
	cmp	qword ptr [rsp + 0x28], 1
	jne	.label_310
	mov	eax, dword ptr [rip + pid]
	test	eax, eax
	jne	.label_310
	cmp	esi, 2
	jne	.label_310
	lea	rdx, [rsp + 0x170]
	mov	edi, 1
	xor	esi, esi
	call	__fxstat
	test	eax, eax
	jne	.label_310
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x188]
	cmp	eax, 0x8000
	jne	.label_313
.label_310:
	xor	edi, edi
	call	isatty
	test	eax, eax
	je	.label_313
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_313:
	mov	r9, qword ptr [rsp + 0x88]
	mov	dl, byte ptr [rip + forever]
	mov	dword ptr [rsp + 0x80], 0
	mov	r8b, byte ptr [rip + from_start]
	jmp	.label_119
.label_278:
	mov	al, 1
	mov	dword ptr [rsp + 0x80], eax
	mov	dl, byte ptr [rip + forever]
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
.label_119:
	test	r9, r9
	jne	.label_323
	xor	eax, eax
	or	r8b, dl
	je	.label_223
.label_323:
	movabs	rax, 0x155555555555556
	mov	rcx, qword ptr [rsp + 0x28]
	cmp	rcx, rax
	jae	.label_329
	mov	rax, rcx
	shl	rax, 5
	lea	rdi, [rax + rax*2]
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [rsp + 0x38], r14
	mov	eax, dword ptr [rsp + 0x80]
	test	al, al
	jne	.label_334
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdx, [rax - 1]
	and	eax, 3
	xor	ecx, ecx
	cmp	rdx, 3
	jb	.label_336
	mov	rdx, qword ptr [rsp + 0x28]
	sub	rdx, rax
	xor	ecx, ecx
	mov	rsi, qword ptr [rsp + 0x38]
	nop	word ptr cs:[rax + rax]
.label_342:
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
	jne	.label_342
.label_336:
	test	rax, rax
	je	.label_334
	lea	rdx, [rcx + rcx*2]
	shl	rdx, 5
	add	rdx, r14
	lea	rcx, [r13 + rcx*8]
	neg	rax
	nop	word ptr cs:[rax + rax]
.label_204:
	mov	rsi, qword ptr [rcx]
	mov	qword ptr [rdx], rsi
	add	rdx, 0x60
	add	rcx, 8
	inc	rax
	jne	.label_204
.label_334:
	cmp	r12d, 1
	je	.label_354
	test	r12d, r12d
	jne	.label_355
	cmp	qword ptr [rsp + 0x28], 2
	jb	.label_355
.label_354:
	mov	byte ptr [rip + print_headers],  1
.label_355:
	mov	al, 1
	mov	ecx, dword ptr [rsp + 0x80]
	test	cl, cl
	mov	r12, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], r14
	mov	r13, qword ptr [rsp + 0x38]
	jne	.label_357
	mov	al, 1
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x28], r12
	jmp	.label_130
.label_320:
	test	rbx, rbx
	mov	r15d, 0
	je	.label_44
	xor	r15d, r15d
	nop	
.label_379:
	mov	edx, 0x2000
	mov	edi, ebp
	lea	rsi, [rsp + 0x170]
	call	safe_read
	mov	r14b, 1
	test	rax, rax
	je	.label_369
	cmp	rax, -1
	je	.label_372
	add	r15, rax
	mov	rcx, rbx
	sub	rcx, rax
	jb	.label_374
	mov	rbx, rcx
	jne	.label_379
	jmp	.label_44
.label_315:
	mov	r14, -1
	test	al, al
	je	.label_380
	movzx	eax, word ptr [rsp + 0xf8]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_381
	mov	rbp, qword ptr [rsp + 0x110]
	jmp	.label_37
.label_380:
	mov	rbp, -1
	jmp	.label_37
.label_374:
	sub	rax, rbx
	je	.label_44
	lea	rdi, [rsp + rbx + 0x170]
	mov	rsi, rax
	call	xwrite_stdout
.label_44:
	mov	rbx, -1
	mov	r14, r15
	jmp	.label_52
.label_381:
	mov	rsi, rbx
	neg	rsi
	mov	edx, 2
	mov	edi, ebp
	call	lseek
	mov	rbx, qword ptr [rsp + 0x18]
	mov	r14, rax
	lea	rbp, [r14 + rbx]
	cmp	r14, -1
	cmove	rbp, r14
.label_37:
	mov	rax, qword ptr [rsp + 0x118]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	cmovb	rcx, rax
	test	rax, rax
	mov	eax, 0x200
	cmovle	rcx, rax
	cmp	rbp, rcx
	jle	.label_63
	cmp	r14, -1
	jne	.label_76
	xor	esi, esi
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x40]
	call	xlseek
	mov	rbx, qword ptr [rsp + 0x18]
	mov	r14, rax
.label_76:
	mov	rax, rbp
	sub	rax, r14
	jle	.label_83
	cmp	rax, rbx
	jbe	.label_83
	sub	rbp, rbx
	xor	edx, edx
	mov	r15, qword ptr [rsp + 8]
	mov	edi, r15d
	mov	rsi, rbp
	mov	rcx, qword ptr [rsp + 0x40]
	call	xlseek
	mov	rbx, qword ptr [rsp + 0x18]
	mov	r14, rbp
	mov	rbp, r15
	jmp	.label_52
.label_63:
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
	jmp	.label_98
.label_83:
	mov	rbp, qword ptr [rsp + 8]
.label_52:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x40]
	mov	edx, ebp
	mov	rcx, rbx
	call	dump_remainder
	mov	r15, rax
	add	r15, r14
	mov	bpl, 1
	jmp	.label_107
.label_365:
	xor	edx, edx
	mov	edi, ebp
	mov	rcx, qword ptr [rsp + 0x40]
	call	xlseek
.label_353:
	mov	edi, 0x2018
	call	xmalloc
	mov	rbx, rax
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [rbx + 0x2000], xmm0
	mov	qword ptr [rbx + 0x2010], 0
	mov	edi, 0x2018
	call	xmalloc
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x68], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x78], rbx
	jmp	.label_122
.label_372:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_369:
	mov	rbp, r14
	jmp	.label_107
.label_338:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	xor	ebp, ebp
	call	error
	jmp	.label_148
.label_321:
	xor	r15d, r15d
	mov	bpl, 1
	jmp	.label_148
.label_205:
	mov	rax, rdx
	mov	rdx, qword ptr [rdx + 0x2010]
	mov	qword ptr [rsp + 0x78], rdx
	nop	word ptr [rax + rax]
.label_122:
	mov	qword ptr [rsp + 0x48], rcx
	jmp	.label_155
	nop	word ptr [rax + rax]
.label_198:
	mov	edi, 0x2018
	call	xmalloc
.label_155:
	mov	qword ptr [rsp + 0x50], rbx
	mov	rbx, rax
	lea	r14, [rbx + 0x2008]
	jmp	.label_159
	nop	dword ptr [rax + rax]
.label_192:
	add	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r15
	call	memcpy
	movdqu	xmm0, xmmword ptr [rbx + 0x2000]
	movdqu	xmm1, xmmword ptr [rbp + 0x2000]
	paddq	xmm1, xmm0
	movdqu	xmmword ptr [rbp + 0x2000], xmm1
	mov	rbp, qword ptr [rsp + 8]
.label_159:
	mov	edx, 0x2000
	mov	edi, ebp
	mov	rsi, rbx
	call	safe_read
	mov	r15, rax
	lea	rax, [r15 + 1]
	cmp	rax, 2
	jb	.label_172
	mov	qword ptr [rbx + 0x2000], r15
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [r14], xmm0
	mov	al, byte ptr [rip + line_end]
	test	al, al
	mov	r13d, 0
	mov	eax, 0xa
	cmovne	r13d, eax
	mov	rdi, rbx
	mov	esi, r13d
	mov	rdx, r15
	call	memchr
	test	rax, rax
	mov	r12d, 0
	je	.label_184
	lea	rbp, [rbx + r15]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_191:
	inc	rax
	inc	r12
	mov	qword ptr [r14], r12
	mov	rdx, rbp
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r13d
	call	memchr
	test	rax, rax
	jne	.label_191
.label_184:
	add	qword ptr [rsp + 0x68], r15
	mov	rsi, qword ptr [rsp + 0x48]
	add	rsi, r12
	mov	rbp, qword ptr [rsp + 0x50]
	mov	rdi, qword ptr [rbp + 0x2000]
	mov	rax, r15
	add	rax, rdi
	cmp	rax, 0x1fff
	mov	qword ptr [rsp + 0x48], rsi
	jbe	.label_192
	mov	qword ptr [rbp + 0x2010], rbx
	mov	rcx, rsi
	mov	rdx, qword ptr [rsp + 0x78]
	sub	rcx, qword ptr [rdx + 0x2008]
	cmp	rcx, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 8]
	jbe	.label_198
	jmp	.label_205
.label_172:
	mov	rdi, rbx
	call	free
	cmp	r15, -1
	je	.label_210
	mov	rdx, qword ptr [rsp + 0x18]
	test	rdx, rdx
	mov	r13b, 1
	mov	r12, qword ptr [rsp + 0x28]
	mov	r14, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x68]
	je	.label_213
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsi + 0x2000]
	test	rax, rax
	mov	rdi, qword ptr [rsp + 0x78]
	je	.label_221
	movsx	eax, byte ptr [rsi + rax - 1]
	mov	cl, byte ptr [rip + line_end]
	test	cl, cl
	mov	r15d, 0
	mov	ecx, 0xa
	cmovne	r15d, ecx
	cmp	eax, r15d
	jne	.label_227
	mov	rcx, qword ptr [rsp + 0x48]
	jmp	.label_378
.label_210:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r12, qword ptr [rsp + 0x28]
	jmp	.label_250
.label_227:
	inc	qword ptr [rsi + 0x2008]
	mov	rcx, qword ptr [rsp + 0x48]
	inc	rcx
.label_378:
	mov	rax, rcx
	sub	rax, qword ptr [rdi + 0x2008]
	cmp	rax, rdx
	mov	rbx, rdi
	jbe	.label_251
	mov	rbx, rdi
	nop	word ptr cs:[rax + rax]
.label_254:
	mov	rcx, rax
	mov	rbx, qword ptr [rbx + 0x2010]
	sub	rax, qword ptr [rbx + 0x2008]
	cmp	rax, rdx
	ja	.label_254
.label_251:
	mov	r14, qword ptr [rbx + 0x2000]
	add	r14, rbx
	cmp	rcx, rdx
	mov	rax, rbx
	jbe	.label_260
	mov	rax, rbx
	je	.label_260
	sub	rdx, rcx
	mov	rax, rbx
	nop	word ptr cs:[rax + rax]
.label_268:
	mov	rbp, rdx
	mov	rdx, r14
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r15d
	call	memchr
	test	rax, rax
	je	.label_265
	inc	rax
	mov	rdx, rbp
	inc	rdx
	jne	.label_268
.label_260:
	sub	r14, rax
	mov	rdi, rax
	mov	rsi, r14
	jmp	.label_271
	nop	word ptr cs:[rax + rax]
.label_279:
	mov	rsi, qword ptr [rbx + 0x2000]
	mov	rdi, rbx
.label_271:
	call	xwrite_stdout
	mov	rbx, qword ptr [rbx + 0x2010]
	test	rbx, rbx
	jne	.label_279
.label_250:
	mov	r14, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x68]
.label_213:
	mov	rdi, qword ptr [rsp + 0x78]
.label_221:
	test	rdi, rdi
	je	.label_285
	nop	
.label_288:
	mov	rbx, qword ptr [rdi + 0x2010]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_288
.label_285:
	test	r13b, r13b
	setne	bpl
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_148
.label_367:
	mov	r15, rax
	jmp	.label_71
.label_40:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r15, qword ptr [rsp + 0x90]
	jmp	.label_99
.label_317:
	mov	rax, r14
	mov	r14, qword ptr [r14 + 0x2008]
.label_98:
	mov	rdi, qword ptr [rsp + 8]
	mov	r12, r15
	mov	r15, rax
	mov	rbx, rcx
	jmp	.label_308
	nop	
.label_314:
	add	rdi, r12
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	mov	rax, qword ptr [r15 + 0x2000]
	add	qword ptr [r12 + 0x2000], rax
	mov	rdi, qword ptr [rsp + 8]
.label_308:
	mov	edx, 0x2000
	mov	rsi, r15
	call	safe_read
	mov	rbp, rax
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_312
	add	r13, rbp
	mov	qword ptr [r15 + 0x2000], rbp
	mov	qword ptr [r15 + 0x2008], 0
	add	rbx, rbp
	mov	rdi, qword ptr [r12 + 0x2000]
	mov	rax, rbp
	add	rax, rdi
	cmp	rax, 0x1fff
	jbe	.label_314
	mov	qword ptr [r12 + 0x2008], r15
	mov	rcx, rbx
	sub	rcx, qword ptr [r14 + 0x2000]
	cmp	rcx, qword ptr [rsp + 0x18]
	ja	.label_317
	mov	edi, 0x2010
	call	xmalloc
	mov	r12, r15
	mov	r15, rax
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_308
.label_312:
	mov	rdi, r15
	call	free
	cmp	rbp, -1
	je	.label_324
	mov	rsi, qword ptr [r14 + 0x2000]
	mov	rax, rbx
	sub	rax, rsi
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rax, rcx
	mov	rbp, r14
	mov	r12, qword ptr [rsp + 0x28]
	jbe	.label_327
	nop	
.label_332:
	mov	rbx, rax
	mov	rbp, qword ptr [rbp + 0x2008]
	mov	rsi, qword ptr [rbp + 0x2000]
	sub	rax, rsi
	cmp	rax, rcx
	ja	.label_332
.label_327:
	sub	rbx, rcx
	mov	eax, 0
	cmovbe	rbx, rax
	lea	rdi, [rbp + rbx]
	sub	rsi, rbx
	call	xwrite_stdout
	mov	rbx, qword ptr [rbp + 0x2008]
	mov	bpl, 1
	test	rbx, rbx
	mov	r15, r13
	je	.label_337
	nop	word ptr cs:[rax + rax]
.label_341:
	mov	rsi, qword ptr [rbx + 0x2000]
	mov	rdi, rbx
	call	xwrite_stdout
	mov	rbx, qword ptr [rbx + 0x2008]
	test	rbx, rbx
	jne	.label_341
	jmp	.label_337
.label_324:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
	mov	r12, qword ptr [rsp + 0x28]
	mov	r15, r13
.label_337:
	mov	r13, qword ptr [rsp + 0x38]
	test	r14, r14
	je	.label_351
	nop	
.label_230:
	mov	rbx, qword ptr [r14 + 0x2008]
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_230
.label_351:
	test	bpl, bpl
	setne	bpl
.label_107:
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_148
.label_261:
	xor	eax, eax
	mov	rbx, qword ptr [rsp + 0x18]
.label_48:
	mov	r14, qword ptr [rsp + 0x50]
	add	r15, r14
.label_214:
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rcx, qword ptr [rsp + 0x90]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x50], r14
	sub	rcx, r14
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x78], rax
	mov	r14, rax
.label_50:
	test	r14, r14
	je	.label_364
	movzx	eax, byte ptr [rip + line_end]
	test	al, al
	mov	esi, 0
	mov	eax, 0xa
	cmovne	esi, eax
	lea	rbp, [rsp + 0x170]
	mov	rdi, rbp
	mov	rdx, r14
	call	memrchr
	mov	ecx, 5
	test	rax, rax
	je	.label_373
	mov	r14, rax
	sub	r14, rbp
	xor	ecx, ecx
	test	rbx, rbx
	lea	rbx, [rbx - 1]
	je	.label_375
.label_373:
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_361
	nop	word ptr cs:[rax + rax]
.label_375:
	mov	rsi, qword ptr [rsp + 0x18]
	sub	rsi, r14
	mov	rbp, qword ptr [rsp + 8]
	je	.label_35
	inc	rax
	mov	rdi, rax
	call	xwrite_stdout
.label_35:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x40]
	mov	edx, ebp
	mov	rcx, qword ptr [rsp + 0x48]
	call	dump_remainder
	add	r15, rax
	mov	ecx, 1
.label_361:
	mov	eax, ecx
	and	al, 7
	je	.label_50
	cmp	al, 5
	jne	.label_120
.label_364:
	mov	r14, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x68]
	cmp	r14, rsi
	je	.label_55
	add	r14, -0x2000
	xor	edx, edx
	mov	edi, ebp
	mov	rsi, r14
	mov	rcx, qword ptr [rsp + 0x40]
	call	xlseek
	mov	edx, 0x2000
	mov	edi, ebp
	lea	rsi, [rsp + 0x170]
	call	safe_read
	cmp	rax, -1
	je	.label_68
	mov	r15, rax
	add	r15, r14
	jmp	.label_70
.label_120:
	test	ecx, ecx
	mov	r14, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0x78]
	jne	.label_71
.label_70:
	test	rax, rax
	jne	.label_214
	jmp	.label_71
.label_55:
	xor	edx, edx
	mov	edi, ebp
	mov	rbx, qword ptr [rsp + 0x40]
	mov	r14, rsi
	mov	rcx, rbx
	call	xlseek
	xor	edi, edi
	mov	rsi, rbx
	mov	edx, ebp
	mov	rcx, qword ptr [rsp + 0x90]
	call	dump_remainder
	mov	r15, rax
	add	r15, r14
.label_71:
	mov	r14, qword ptr [rsp + 0x20]
	mov	bpl, 1
	jmp	.label_148
.label_68:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_99
	nop	word ptr cs:[rax + rax]
.label_130:
	mov	byte ptr [rsp + 0x17], al
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x18], rax
	lea	rax, [r15 + r15*2]
	shl	rax, 5
	mov	qword ptr [rsp + 0x60], rax
	mov	rdi, qword ptr [r13 + rax]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_105
	cmp	byte ptr [rdi + 1], 0
	je	.label_38
.label_105:
	mov	dword ptr [rsp + 0x74], 0
	xor	esi, esi
	xor	eax, eax
	call	open_safer
	mov	ebp, eax
.label_141:
	mov	rcx, qword ptr [rsp + 0x60]
	lea	rax, [r14 + rcx]
	mov	qword ptr [rsp + 0x30], rax
	mov	bl, byte ptr [rip + reopen_inaccessible_files]
	cmp	ebp, -1
	sete	al
	and	al, bl
	xor	al, 1
	cmp	ebp, -1
	mov	byte ptr [r13 + rcx + 0x36], al
	mov	qword ptr [rsp + 0x58], r15
	je	.label_118
	cmp	byte ptr [rip + print_headers],  1
	jne	.label_125
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rax]
	cmp	byte ptr [rcx], 0x2d
	jne	.label_128
	cmp	byte ptr [rcx + 1], 0
	jne	.label_128
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_128:
	mov	al, byte ptr [rip + write_header.first_file]
	test	al, al
	mov	edx, OFFSET FLAT:label_84
	mov	eax, OFFSET FLAT:label_138
	cmovne	rdx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_139
	xor	eax, eax
	call	__printf_chk
	mov	byte ptr [rip + write_header.first_file],  1
.label_125:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	cmp	byte ptr [rax], 0x2d
	jne	.label_145
	cmp	byte ptr [rax + 1], 0
	jne	.label_145
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	nop	word ptr cs:[rax + rax]
.label_145:
	mov	qword ptr [rsp + 0x40], rax
	cmp	byte ptr [rip + count_lines],  0
	mov	qword ptr [rsp + 8], rbp
	mov	edi, 1
	mov	esi, ebp
	lea	rdx, [rsp + 0xe0]
	je	.label_284
	call	__fxstat
	test	eax, eax
	jne	.label_162
	cmp	byte ptr [rip + from_start],  0
	je	.label_163
	cmp	qword ptr [rsp + 0x18], 0
	mov	r15d, 0
	je	.label_165
	xor	r15d, r15d
	jmp	.label_168
	nop	word ptr [rax + rax]
.label_118:
	cmp	byte ptr [rip + forever],  0
	je	.label_368
	mov	r12, r14
	mov	r14, r13
	mov	rbp, qword ptr [rsp + 0x60]
	mov	dword ptr [r14 + rbp + 0x38], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [r14 + rbp + 0x3c], ecx
	xor	bl, 1
	mov	byte ptr [r14 + rbp + 0x34], bl
	xorpd	xmm0, xmm0
	movupd	xmmword ptr [r14 + rbp + 0x20], xmm0
	jmp	.label_175
	nop	word ptr cs:[rax + rax]
.label_284:
	call	__fxstat
	test	eax, eax
	je	.label_133
.label_162:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x40]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_99:
	xor	ebp, ebp
.label_148:
	cmp	byte ptr [rip + forever],  0
	je	.label_193
	mov	rbx, rbp
	mov	eax, ebp
	not	al
	movzx	eax, al
	shl	eax, 0x1f
	sar	eax, 0x1f
	mov	rcx, qword ptr [rsp + 0x60]
	lea	rbp, [r14 + rcx + 0x3c]
	mov	dword ptr [r13 + rcx + 0x3c], eax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 8]
	lea	rdx, [rsp + 0x170]
	call	__fxstat
	test	eax, eax
	js	.label_203
	mov	eax, dword ptr [rsp + 0x188]
	mov	ecx, eax
	and	ecx, 0xfffff000
	movsx	edx, cx
	movzx	ecx, cx
	cmp	edx, 0xfff
	jg	.label_207
	cmp	ecx, 0x8000
	je	.label_219
	cmp	ecx, 0xc000
	je	.label_219
	jmp	.label_112
	nop	word ptr cs:[rax + rax]
.label_193:
	mov	eax, dword ptr [rsp + 0x74]
	test	al, al
	jne	.label_231
	mov	rdi, qword ptr [rsp + 8]
	call	close
	test	eax, eax
	je	.label_231
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rax]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_237
	cmp	byte ptr [rsi + 1], 0
	jne	.label_237
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_237:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	xor	ebp, ebp
	call	error
	jmp	.label_231
.label_38:
	mov	byte ptr [rip + have_read_stdin],  1
	xor	ebp, ebp
	mov	al, 1
	mov	dword ptr [rsp + 0x74], eax
	jmp	.label_141
.label_203:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp], ecx
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rax]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_259
	cmp	byte ptr [rsi + 1], 0
	jne	.label_259
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_259:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_267
.label_368:
	mov	r12, r14
	call	__errno_location
.label_175:
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rax]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_275
	cmp	byte ptr [rsi + 1], 0
	jne	.label_275
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	nop	word ptr cs:[rax + rax]
.label_275:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	ebp, ebp
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
	mov	r14, r12
	mov	r12, qword ptr [rsp + 0x28]
	jmp	.label_231
.label_207:
	cmp	ecx, 0x1000
	je	.label_219
	cmp	ecx, 0x2000
	jne	.label_112
.label_219:
	mov	rbp, rbx
	test	bpl, bpl
	je	.label_267
	mov	ecx, dword ptr [rsp + 0x74]
	test	cl, cl
	mov	ecx, 1
	mov	edx, 0xffffffff
	cmovne	ecx, edx
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rbx, qword ptr [rsp + 8]
	mov	dword ptr [r13 + rdx + 0x38], ebx
	mov	qword ptr [r13 + rdx + 8], r15
	movups	xmm0, xmmword ptr [rsp + 0x1c8]
	movups	xmmword ptr [r13 + rdx + 0x10], xmm0
	movapd	xmm0, xmmword ptr [rsp + 0x170]
	movupd	xmmword ptr [r13 + rdx + 0x20], xmm0
	mov	dword ptr [r13 + rdx + 0x30], eax
	mov	dword ptr [r13 + rdx + 0x40], ecx
	mov	qword ptr [r13 + rdx + 0x58], 0
	mov	byte ptr [r13 + rdx + 0x34], 0
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rax]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_298
	cmp	byte ptr [rsi + 1], 0
	jne	.label_298
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_298:
	mov	edi, ebx
	call	fremote
	mov	rcx, qword ptr [rsp + 0x60]
	mov	byte ptr [r13 + rcx + 0x35], al
	jmp	.label_231
.label_133:
	mov	cl, byte ptr [rip + presume_input_pipe]
	xor	cl, 1
	mov	rbx, qword ptr [rsp + 0x18]
	test	rbx, rbx
	setns	al
	and	al, cl
	cmp	byte ptr [rip + from_start],  0
	je	.label_315
	test	al, al
	je	.label_320
	mov	eax, dword ptr [rsp + 0xf8]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_322
	mov	edx, 1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, qword ptr [rsp + 0x40]
	call	xlseek
	mov	rbx, qword ptr [rsp + 0x18]
	test	rax, rax
	jns	.label_325
.label_322:
	mov	edx, 1
	mov	edi, ebp
	mov	rsi, rbx
	call	lseek
	mov	rbx, qword ptr [rsp + 0x18]
	cmp	rax, -1
	je	.label_320
.label_325:
	mov	r14, rbx
	mov	rbx, -1
	jmp	.label_52
.label_345:
	mov	rbp, qword ptr [rsp + 8]
.label_168:
	mov	edx, 0x2000
	mov	edi, ebp
	lea	rsi, [rsp + 0x170]
	call	safe_read
	mov	bpl, 1
	test	rax, rax
	je	.label_148
	cmp	rax, -1
	mov	rcx, qword ptr [rsp + 0x18]
	je	.label_338
	lea	rbx, [rsp + rax + 0x170]
	add	r15, rax
	mov	al, byte ptr [rip + line_end]
	test	al, al
	mov	ebp, 0
	mov	eax, 0xa
	cmovne	ebp, eax
	lea	rax, [rsp + 0x170]
	nop	dword ptr [rax]
.label_346:
	mov	qword ptr [rsp + 0x18], rcx
	mov	rdx, rbx
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, ebp
	call	memchr
	test	rax, rax
	je	.label_345
	inc	rax
	mov	rcx, qword ptr [rsp + 0x18]
	dec	rcx
	jne	.label_346
	cmp	rax, rbx
	mov	rbp, qword ptr [rsp + 8]
	jae	.label_165
	sub	rbx, rax
	mov	rdi, rax
	mov	rsi, rbx
	call	xwrite_stdout
.label_165:
	xor	edi, edi
	mov	rcx, -1
	mov	rsi, qword ptr [rsp + 0x40]
	mov	edx, ebp
	call	dump_remainder
	add	r15, rax
	mov	bpl, 1
	jmp	.label_148
.label_163:
	mov	al, byte ptr [rip + presume_input_pipe]
	test	al, al
	jne	.label_353
	mov	eax, dword ptr [rsp + 0xf8]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_353
	xor	esi, esi
	mov	edx, 1
	mov	edi, ebp
	call	lseek
	cmp	rax, -1
	je	.label_353
	xor	esi, esi
	mov	edx, 2
	mov	edi, ebp
	mov	qword ptr [rsp + 0x68], rax
	call	lseek
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, rax
	sub	rdx, rsi
	jle	.label_365
	test	rax, rax
	je	.label_321
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_367
	mov	rcx, rdx
	sar	rcx, 0x3f
	shr	rcx, 0x33
	add	rcx, rdx
	and	rcx, 0xffffffffffffe000
	sub	rdx, rcx
	mov	ebx, 0x2000
	cmovne	rbx, rdx
	mov	qword ptr [rsp + 0x90], rax
	mov	rsi, rax
	sub	rsi, rbx
	xor	edx, edx
	mov	edi, ebp
	mov	qword ptr [rsp + 0x50], rsi
	mov	rcx, qword ptr [rsp + 0x40]
	call	xlseek
	mov	edi, ebp
	lea	rsi, [rsp + 0x170]
	mov	rdx, rbx
	call	safe_read
	mov	r15, rax
	cmp	r15, -1
	je	.label_40
	test	r15, r15
	je	.label_261
	movsx	eax, byte ptr [rsp + r15 + 0x16f]
	mov	cl, byte ptr [rip + line_end]
	test	cl, cl
	mov	ecx, 0
	mov	edx, 0xa
	cmovne	ecx, edx
	xor	edx, edx
	cmp	eax, ecx
	setne	dl
	mov	rbx, qword ptr [rsp + 0x18]
	sub	rbx, rdx
	mov	rax, r15
	jmp	.label_48
.label_112:
	mov	rcx, qword ptr [rsp + 0x60]
	lea	rbx, [r14 + rcx + 0x36]
	mov	dword ptr [rbp], 0xffffffff
	mov	byte ptr [rbx], 0
	mov	al, byte ptr [rip + reopen_inaccessible_files]
	xor	al, 1
	mov	byte ptr [r13 + rcx + 0x34], al
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rax]
	cmp	byte ptr [rdx], 0x2d
	jne	.label_75
	cmp	byte ptr [rdx + 1], 0
	jne	.label_75
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
.label_75:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rbp, rax
	cmp	byte ptr [rbx - 2], 0
	mov	r8d, OFFSET FLAT:label_84
	je	.label_85
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
.label_85:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	call	error
	mov	r14, qword ptr [rsp + 0x20]
	nop	word ptr [rax + rax]
.label_267:
	mov	al, byte ptr [rip + reopen_inaccessible_files]
	xor	al, 1
	mov	rcx, qword ptr [rsp + 0x60]
	mov	byte ptr [r13 + rcx + 0x34], al
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rax]
	cmp	byte ptr [rbx], 0x2d
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_96
	cmp	byte ptr [rbx + 1], 0
	jne	.label_96
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	nop	
.label_96:
	lea	eax, [rbp + 1]
	cmp	eax, 2
	jb	.label_113
	mov	edi, ebp
	call	close
	test	eax, eax
	je	.label_113
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	r15, rbp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	r14, qword ptr [rsp + 0x20]
	mov	rdx, rbp
	mov	r8d, r15d
	call	error
.label_113:
	mov	rax, qword ptr [rsp + 0x60]
	mov	dword ptr [r13 + rax + 0x38], 0xffffffff
	xor	ebp, ebp
.label_231:
	test	bpl, bpl
	setne	al
	mov	cl, byte ptr [rsp + 0x17]
	and	cl, al
	mov	eax, ecx
	mov	r15, qword ptr [rsp + 0x58]
	inc	r15
	cmp	r15, r12
	jb	.label_130
.label_357:
	mov	byte ptr [rsp + 0x17], al
	cmp	byte ptr [rip + forever],  0
	sete	al
	mov	ecx, dword ptr [rsp + 0x80]
	or	al, cl
	jne	.label_136
	lea	rcx, [r14 + 0x38]
	xor	eax, eax
	mov	edx, 0xf000
	mov	rsi, r12
	nop	word ptr cs:[rax + rax]
.label_157:
	mov	rdi, qword ptr [rcx - 0x38]
	cmp	byte ptr [rdi], 0x2d
	jne	.label_147
	cmp	byte ptr [rdi + 1], 0
	jne	.label_147
	cmp	byte ptr [rcx - 4], 0
	jne	.label_147
	cmp	dword ptr [rcx], 0
	js	.label_147
	mov	edi, dword ptr [rcx - 8]
	and	edi, edx
	cmp	edi, 0x1000
	jne	.label_147
	mov	dword ptr [rcx], 0xffffffff
	mov	byte ptr [rcx - 4], 1
	jmp	.label_153
	nop	word ptr cs:[rax + rax]
.label_147:
	inc	rax
.label_153:
	add	rcx, 0x60
	dec	rsi
	jne	.label_157
	test	rax, rax
	je	.label_136
	lea	rdx, [rsp + 0xe0]
	mov	edi, 1
	mov	esi, 1
	call	__fxstat
	test	eax, eax
	js	.label_164
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xf8]
	cmp	eax, 0x1000
	sete	byte ptr [rip + monitor_output]
	mov	al, byte ptr [rip + disable_inotify]
	test	al, al
	jne	.label_36
	xor	eax, eax
	mov	rcx, r13
	nop	
.label_177:
	cmp	byte ptr [rcx + 0x34], 0
	jne	.label_173
	mov	rdx, qword ptr [rcx]
	cmp	byte ptr [rdx], 0x2d
	jne	.label_173
	cmp	byte ptr [rdx + 1], 0
	je	.label_102
	nop	word ptr cs:[rax + rax]
.label_173:
	inc	rax
	add	rcx, 0x60
	cmp	rax, r12
	jb	.label_177
	lea	rax, [r14 + 0x38]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_185:
	cmp	dword ptr [rax], 0
	js	.label_183
	cmp	byte ptr [rax - 3], 0
	jne	.label_102
.label_183:
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r12
	jb	.label_185
	lea	rax, [r14 + 0x38]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_189:
	cmp	dword ptr [rax], 0
	js	.label_160
	cmp	byte ptr [rax - 3], 0
	je	.label_187
.label_160:
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r12
	jb	.label_189
.label_102:
	mov	byte ptr [rip + disable_inotify],  1
.label_36:
	mov	byte ptr [rip + disable_inotify],  1
	xor	eax, eax
	cmp	r12, 1
	jne	.label_80
	mov	ecx, dword ptr [rip + pid]
	test	ecx, ecx
	jne	.label_80
	cmp	dword ptr [rip + follow_mode],  2
	jne	.label_80
	cmp	dword ptr [r13 + 0x38], -1
	je	.label_197
	mov	eax, 0xf000
	and	eax, dword ptr [r13 + 0x30]
	cmp	eax, 0x8000
	setne	al
	jmp	.label_80
.label_197:
	xor	eax, eax
.label_80:
	lea	rcx, [r12 - 1]
	mov	qword ptr [rsp + 0x30], rcx
	movzx	eax, al
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x18], eax
	test	al, al
	sete	cl
	shl	ecx, 0xb
	mov	dword ptr [rsp + 0x48], ecx
	add	r14, 0x38
	mov	qword ptr [rsp + 0x20], r14
	mov	dword ptr [rsp + 0x58], 0
.label_42:
	xor	r14d, r14d
	mov	rbp, r13
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_215
.label_302:
	mov	rax, qword ptr [rip + max_n_unchanged_stats_between_opens]
	mov	rcx, qword ptr [rbp + 0x58]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x58], rdx
	cmp	rax, rcx
	ja	.label_220
	cmp	dword ptr [rip + follow_mode],  1
	mov	r13, qword ptr [rsp + 0x38]
	jne	.label_224
	xor	esi, esi
	cmp	dword ptr [rbp + 0x40], 0
	setne	sil
	mov	rdi, rbp
	call	recheck
	mov	qword ptr [rbp + 0x58], 0
	jmp	.label_224
.label_220:
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_224
	nop	word ptr cs:[rax + rax]
.label_215:
	cmp	byte ptr [rbp + 0x34], 0
	jne	.label_224
	mov	ebx, dword ptr [rbp + 0x38]
	test	ebx, ebx
	js	.label_241
	mov	r15, qword ptr [rbp]
	cmp	byte ptr [r15], 0x2d
	jne	.label_82
	cmp	byte ptr [r15 + 1], 0
	jne	.label_82
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_82:
	mov	eax, dword ptr [rbp + 0x30]
	mov	dword ptr [rsp + 0x60], eax
	mov	eax, dword ptr [rsp + 0x18]
	cmp	dword ptr [rbp + 0x40], eax
	je	.label_201
	mov	esi, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	test	eax, eax
	js	.label_255
	mov	edx, eax
	or	edx, dword ptr [rsp + 0x48]
	cmp	edx, eax
	je	.label_256
	mov	esi, 4
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_255
.label_256:
	mov	eax, dword ptr [rsp + 0x18]
	mov	dword ptr [rbp + 0x40], eax
	jmp	.label_201
.label_241:
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x18]
	call	recheck
	jmp	.label_224
.label_255:
	mov	r12d, dword ptr [rbp + 0x30]
	and	r12d, 0xf000
	call	__errno_location
	mov	r13d, dword ptr [rax]
	cmp	r12d, 0x8000
	jne	.label_142
	cmp	r13d, 1
	jne	.label_142
	mov	eax, dword ptr [rbp + 0x40]
	mov	r12, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x38]
.label_201:
	test	eax, eax
	jne	.label_274
	mov	edi, 1
	mov	esi, ebx
	lea	rdx, [rsp + 0x170]
	call	__fxstat
	test	eax, eax
	je	.label_280
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
	mov	edx, OFFSET FLAT:label_258
	xor	eax, eax
	mov	esi, r13d
	call	error
	mov	edi, ebx
	call	close
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_224
.label_280:
	mov	ecx, dword ptr [rbp + 0x30]
	mov	eax, dword ptr [rsp + 0x188]
	cmp	ecx, eax
	jne	.label_297
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_294
	mov	rcx, qword ptr [rbp + 8]
	cmp	rcx, qword ptr [rsp + 0x1a0]
	jne	.label_297
.label_294:
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	rcx, qword ptr [rsp + 0x1c8]
	jne	.label_297
	mov	ecx, dword ptr [rbp + 0x18]
	cmp	ecx, dword ptr [rsp + 0x1d0]
	je	.label_302
.label_297:
	movupd	xmm0, xmmword ptr [rsp + 0x1c8]
	movupd	xmmword ptr [rbp + 0x10], xmm0
	mov	dword ptr [rbp + 0x30], eax
	mov	qword ptr [rbp + 0x58], 0
	mov	eax, dword ptr [rsp + 0x60]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_306
	mov	rax, qword ptr [rsp + 0x1a0]
	cmp	rax, qword ptr [rbp + 8]
	jge	.label_306
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
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
	call	error
	xor	esi, esi
	xor	edx, edx
	mov	edi, ebx
	mov	rcx, r15
	call	xlseek
	mov	qword ptr [rbp + 8], 0
.label_306:
	cmp	r14, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rsp + 0x38]
	je	.label_274
	cmp	byte ptr [rip + print_headers],  1
	mov	qword ptr [rsp + 0x30], r14
	jne	.label_274
	movzx	eax, byte ptr [rip + write_header.first_file]
	test	al, al
	mov	edx, OFFSET FLAT:label_84
	mov	eax, OFFSET FLAT:label_138
	cmovne	rdx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_139
	xor	eax, eax
	mov	rcx, r15
	call	__printf_chk
	mov	byte ptr [rip + write_header.first_file],  1
	mov	qword ptr [rsp + 0x30], r14
.label_274:
	mov	rcx, -2
	cmp	dword ptr [rbp + 0x40], 0
	jne	.label_328
	mov	eax, dword ptr [rsp + 0x60]
	and	eax, 0xf000
	mov	rcx, -1
	cmp	eax, 0x8000
	jne	.label_328
	cmp	byte ptr [rbp + 0x35], 0
	je	.label_328
	mov	rcx, qword ptr [rsp + 0x1a0]
	sub	rcx, qword ptr [rbp + 8]
.label_328:
	xor	edi, edi
	mov	rsi, r15
	mov	edx, ebx
	call	dump_remainder
	test	rax, rax
	setne	cl
	mov	rdx, qword ptr [rsp + 8]
	and	dl, 1
	or	dl, cl
	mov	qword ptr [rsp + 8], rdx
	add	qword ptr [rbp + 8], rax
	nop	word ptr cs:[rax + rax]
.label_224:
	inc	r14
	add	rbp, 0x60
	cmp	r14, r12
	jb	.label_215
	mov	al, byte ptr [rip + reopen_inaccessible_files]
	cmp	al, 1
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 8]
	jne	.label_108
	cmp	dword ptr [rip + follow_mode],  1
	je	.label_56
.label_108:
	test	al, al
	je	.label_343
	mov	rax, rcx
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_347:
	cmp	dword ptr [rax], 0
	jns	.label_56
	cmp	byte ptr [rax - 4], 0
	je	.label_56
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r12
	jb	.label_347
	jmp	.label_350
.label_343:
	mov	rax, rcx
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_352:
	cmp	dword ptr [rax], 0
	jns	.label_56
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r12
	jb	.label_352
	jmp	.label_350
	nop	word ptr cs:[rax + rax]
.label_56:
	and	bpl, 1
	sete	al
	cmp	dword ptr [rsp + 0x18], 0
	jne	.label_356
	test	al, al
	je	.label_358
.label_356:
	mov	rdi, qword ptr [rip + stdout]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_121
.label_358:
	cmp	byte ptr [rip + monitor_output],  0
	je	.label_360
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0xa0], xmm0
	xor	eax, eax
	mov	ecx, 0x10
	lea	rbx, [rsp + 0x170]
	mov	rdi, rbx
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	edi, 1
	call	__fdelt_chk
	or	byte ptr [rsp + rax*8 + 0x170], 2
	mov	edi, 2
	xor	edx, edx
	xor	ecx, ecx
	mov	rsi, rbx
	lea	r8, [rsp + 0xa0]
	call	select
	cmp	eax, 1
	je	.label_376
.label_360:
	test	bpl, bpl
	jne	.label_42
	mov	eax, dword ptr [rsp + 0x58]
	test	al, 1
	jne	.label_136
	mov	edi, dword ptr [rip + pid]
	test	edi, edi
	je	.label_382
	mov	dword ptr [rsp + 0x58], 0
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_39
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	al
	mov	dword ptr [rsp + 0x58], eax
	jne	.label_42
	jmp	.label_39
.label_382:
	mov	dword ptr [rsp + 0x58], 0
.label_39:
	movsd	xmm0, qword ptr [rsp + 0x98]
	call	xnanosleep
	test	eax, eax
	je	.label_42
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	jmp	.label_58
.label_350:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_136:
	cmp	byte ptr [rip + have_read_stdin],  1
	jne	.label_69
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_73
.label_69:
	movzx	eax, byte ptr [rsp + 0x17]
	xor	eax, 1
.label_223:
	add	rsp, 0x2178
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_187:
	xor	ebp, ebp
	lea	r15, [rsp + 0x170]
	mov	r14d, 0xf000
	mov	rbx, r13
	nop	word ptr [rax + rax]
.label_94:
	mov	rsi, qword ptr [rbx]
	mov	edi, 1
	mov	rdx, r15
	call	__lxstat
	test	eax, eax
	jne	.label_89
	mov	eax, dword ptr [rsp + 0x188]
	and	eax, r14d
	cmp	eax, 0xa000
	je	.label_91
.label_89:
	inc	rbp
	add	rbx, 0x60
	cmp	rbp, r12
	jb	.label_94
	mov	r14, qword ptr [rsp + 0x20]
	lea	rax, [r14 + 0x38]
	xor	ecx, ecx
.label_106:
	cmp	dword ptr [rax], 0
	js	.label_97
	movzx	edx, word ptr [rax - 8]
	and	edx, 0xf000
	cmp	edx, 0x1000
	je	.label_97
	movzx	edx, dx
	cmp	edx, 0x8000
	jne	.label_102
.label_97:
	inc	rcx
	add	rax, 0x60
	cmp	rcx, r12
	jb	.label_106
	cmp	dword ptr [rip + follow_mode],  2
	jne	.label_109
	mov	al, byte ptr [rsp + 0x17]
	xor	al, 1
	jne	.label_102
.label_109:
	mov	al, byte ptr [rip + disable_inotify]
	test	al, al
	jne	.label_36
	call	inotify_init
	mov	r15d, eax
	test	r15d, r15d
	js	.label_117
	mov	rdi, qword ptr [rip + stdout]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_121
	xor	esi, esi
	mov	edx, OFFSET FLAT:wd_hasher
	mov	ecx, OFFSET FLAT:wd_comparator
	xor	r8d, r8d
	mov	rdi, r12
	call	hash_initialize
	mov	qword ptr [rsp + 0x48], rax
	test	rax, rax
	je	.label_134
	cmp	dword ptr [rip + follow_mode],  1
	mov	eax, 0xc06
	mov	ecx, 2
	cmove	ecx, eax
	mov	dword ptr [rsp + 0x60], ecx
	mov	rbp, r13
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	r13d, r13d
	mov	dword ptr [rsp + 8], r15d
.label_186:
	cmp	byte ptr [rbp + 0x34], 0
	jne	.label_169
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	strlen
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, rax
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	dword ptr [rbp + 0x44], 0xffffffff
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_143
	mov	rdi, rbx
	call	dir_len
	mov	r15, rax
	movzx	r14d, byte ptr [rbx + r15]
	mov	rdi, rbx
	call	last_component
	sub	rax, rbx
	mov	qword ptr [rbp + 0x50], rax
	mov	byte ptr [rbx + r15], 0
	test	r15, r15
	mov	esi, OFFSET FLAT:label_150
	je	.label_151
	mov	rsi, qword ptr [rbp]
.label_151:
	mov	edx, 0x784
	mov	edi, dword ptr [rsp + 8]
	call	inotify_add_watch
	mov	dword ptr [rbp + 0x48], eax
	mov	rax, qword ptr [rbp]
	mov	byte ptr [rax + r15], r14b
	cmp	dword ptr [rbp + 0x48], 0
	js	.label_318
	mov	rbx, qword ptr [rbp]
	mov	r14, qword ptr [rsp + 0x20]
	mov	r15d, dword ptr [rsp + 8]
.label_143:
	mov	edi, r15d
	mov	rsi, rbx
	mov	edx, dword ptr [rsp + 0x60]
	call	inotify_add_watch
	mov	dword ptr [rbp + 0x44], eax
	test	eax, eax
	js	.label_167
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, rbp
	call	hash_insert
	mov	r12b, 1
	test	rax, rax
	jne	.label_169
	jmp	.label_171
.label_167:
	cmp	dword ptr [rbp + 0x38], -1
	je	.label_234
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
.label_234:
	call	__errno_location
	mov	rbx, rax
	mov	r15d, dword ptr [rbx]
	mov	eax, r15d
	or	eax, 0x10
	cmp	eax, 0x1c
	je	.label_67
	cmp	r15d, dword ptr [rbp + 0x3c]
	je	.label_179
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
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
.label_179:
	mov	r15d, dword ptr [rsp + 8]
.label_169:
	inc	r13
	add	rbp, 0x60
	cmp	r13, qword ptr [rsp + 0x28]
	jb	.label_186
	mov	eax, dword ptr [rip + follow_mode]
	mov	rcx, qword ptr [rsp + 0x30]
	test	cl, 1
	je	.label_190
	cmp	eax, 2
	jne	.label_190
	call	__errno_location
	mov	rbx, rax
	mov	r12, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_194
.label_91:
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_102
.label_190:
	test	r12b, 1
	mov	rdx, qword ptr [rsp + 0x38]
	jne	.label_247
	cmp	eax, 2
	je	.label_200
.label_247:
	mov	rcx, r14
	mov	r14, qword ptr [rsp + 0x28]
	lea	rax, [r14 + r14*2]
	shl	rax, 5
	lea	rax, [rcx + rax - 0x60]
	mov	qword ptr [rsp + 0xb8], rax
	xor	ebp, ebp
	lea	r15, [rsp + 0xb8]
	lea	r12, [rsp + 0x170]
	mov	rbx, rdx
.label_236:
	cmp	byte ptr [rbx + 0x34], 0
	jne	.label_216
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_218
	xor	esi, esi
	mov	rdi, rbx
	call	recheck
	jmp	.label_222
.label_218:
	cmp	dword ptr [rbx + 0x38], -1
	je	.label_222
	mov	rsi, qword ptr [rbx]
	mov	edi, 1
	mov	rdx, r12
	call	__xstat
	test	eax, eax
	jne	.label_222
	mov	rax, qword ptr [rbx + 0x20]
	cmp	rax, qword ptr [rsp + 0x170]
	jne	.label_228
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rsp + 0x178]
	jne	.label_228
.label_222:
	mov	rdi, rbx
	mov	rsi, r15
	call	check_fspec
.label_216:
	inc	rbp
	add	rbx, 0x60
	cmp	rbp, r14
	jb	.label_236
	mov	rdi, qword ptr [rsp + 0x18]
	add	rdi, 0x11
	mov	qword ptr [rsp + 0x18], rdi
	call	xmalloc
	mov	qword ptr [rsp + 0x68], rax
	mov	r15d, dword ptr [rsp + 8]
	mov	eax, r15d
	sar	eax, 0x1f
	shr	eax, 0x1a
	add	eax, r15d
	and	eax, 0xc0
	mov	ecx, r15d
	sub	ecx, eax
	mov	eax, 1
	shl	rax, cl
	mov	qword ptr [rsp + 0x40], rax
	movsxd	rax, r15d
	mov	qword ptr [rsp + 0x80], rax
	test	r15d, r15d
	mov	eax, 1
	cmovg	eax, r15d
	inc	eax
	mov	dword ptr [rsp + 0x78], eax
	movsd	xmm1, qword ptr [rsp + 0x98]
	cvttsd2si	rax, xmm1
	mov	qword ptr [rsp + 0xc8], rax
	cvtsi2sd	xmm0, rax
	subsd	xmm1, xmm0
	mulsd	xmm1, qword ptr [rip + label_248]
	cvttsd2si	rax, xmm1
	mov	qword ptr [rsp + 0xc0], rax
	mov	r14, qword ptr [rsp + 0x20]
	lea	rax, [r14 + 0x48]
	mov	qword ptr [rsp + 0xd0], rax
	lea	rax, [r14 + 0x50]
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, 3
	mov	ecx, 0
	mov	qword ptr [rsp + 0x30], rcx
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x74], 0
	jmp	.label_114
.label_318:
	call	__errno_location
	mov	rbx, rax
	mov	r12d, dword ptr [rbx]
	cmp	r12d, 0x1c
	mov	r14, qword ptr [rsp + 0x20]
	jne	.label_272
.label_67:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_289
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_170
.label_272:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_283
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rsi, qword ptr [rbp]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r15
	call	error
.label_170:
	mov	r12, qword ptr [rsp + 0x28]
	mov	r13, qword ptr [rsp + 0x38]
	mov	r15d, dword ptr [rsp + 8]
.label_194:
	mov	rdi, qword ptr [rsp + 0x48]
	call	hash_free
	mov	dword ptr [rbx], 0
	jmp	.label_117
.label_228:
	call	__errno_location
	mov	rbp, rax
	mov	r12d, dword ptr [rbp]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_300
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	rsi, qword ptr [rbx]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_304
	cmp	byte ptr [rsi + 1], 0
	jne	.label_304
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_304:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r13
	call	error
	mov	rdi, qword ptr [rsp + 0x48]
	call	hash_free
	mov	dword ptr [rbp], 0
.label_295:
	mov	r12, qword ptr [rsp + 0x28]
	mov	r14, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 0x38]
	mov	r15d, dword ptr [rsp + 8]
	jmp	.label_117
.label_166:
	mov	r14, qword ptr [rsp + 0x20]
	mov	r15d, dword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x58]
	jmp	.label_114
.label_307:
	mov	rdi, r12
	lea	rsi, [rsp + 0xb8]
	call	check_fspec
	jmp	.label_166
.label_114:
	mov	qword ptr [rsp + 0x58], rcx
	mov	ebx, eax
	jmp	.label_264
.label_377:
	mov	rsi, qword ptr [rsp + 0x18]
	add	rsi, rsi
	mov	rdi, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x18], rsi
	call	xrealloc
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
.label_264:
	mov	eax, ebx
	mov	qword ptr [rsp + 0x50], rax
	mov	r12, qword ptr [rsp + 0x28]
.label_359:
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_326
	mov	al, byte ptr [rip + reopen_inaccessible_files]
	test	al, al
	jne	.label_326
	mov	rdi, qword ptr [rsp + 0x48]
	call	hash_get_n_entries
	test	rax, rax
	je	.label_331
.label_326:
	mov	rbp, qword ptr [rsp + 0x58]
	cmp	qword ptr [rsp + 0x30], rbp
	jbe	.label_333
	mov	r8, qword ptr [rsp + 0x50]
	jmp	.label_235
.label_333:
	lea	rbx, [rsp + 0x170]
	mov	r13, rbx
	mov	rbp, qword ptr [rsp + 0x50]
	mov	ebx, dword ptr [rsp + 0x74]
.label_266:
	mov	edi, dword ptr [rip + pid]
	test	edi, edi
	je	.label_335
	test	bl, 1
	jne	.label_339
	xor	ebx, ebx
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_340
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	bl
	je	.label_340
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0xa0], xmm0
	jmp	.label_335
.label_340:
	mov	rax, qword ptr [rsp + 0xc8]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rax, qword ptr [rsp + 0xc0]
	mov	qword ptr [rsp + 0xa8], rax
.label_335:
	xor	eax, eax
	mov	ecx, 0x10
	mov	rdi, r13
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	rdi, qword ptr [rsp + 0x80]
	call	__fdelt_chk
	mov	rcx, qword ptr [rsp + 0x40]
	or	qword ptr [rsp + rax*8 + 0x170], rcx
	cmp	byte ptr [rip + monitor_output],  0
	je	.label_349
	mov	edi, 1
	call	__fdelt_chk
	or	byte ptr [rsp + rax*8 + 0x170], 2
.label_349:
	cmp	dword ptr [rip + pid],  0
	mov	r8d, 0
	lea	rax, [rsp + 0xa0]
	cmovne	r8, rax
	xor	edx, edx
	xor	ecx, ecx
	mov	edi, dword ptr [rsp + 0x78]
	mov	rsi, r13
	call	select
	test	eax, eax
	je	.label_266
	cmp	eax, -1
	je	.label_276
	mov	dword ptr [rsp + 0x74], ebx
	mov	edi, 1
	call	__fdelt_chk
	test	byte ptr [rsp + rax*8 + 0x170], 2
	jne	.label_362
	mov	edi, r15d
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x18]
	call	safe_read
	mov	rcx, rax
	mov	qword ptr [rsp + 0x30], rcx
	test	rax, rax
	mov	r8, rbp
	je	.label_366
	cmp	qword ptr [rsp + 0x30], -1
	jne	.label_370
	call	__errno_location
	mov	r8, rbp
	cmp	dword ptr [rax], 0x16
	jne	.label_46
.label_366:
	lea	ebx, [r8 - 1]
	test	r8d, r8d
	jne	.label_377
	mov	r8d, ebx
.label_370:
	mov	rax, qword ptr [rsp + 0x30]
	inc	rax
	cmp	rax, 1
	mov	ebp, 0
	jbe	.label_46
.label_235:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rax + rbp]
	mov	r13d, dword ptr [rax + rbp + 4]
	mov	eax, dword ptr [rax + rbp + 0xc]
	test	rax, rax
	jne	.label_41
	mov	ecx, r13d
	and	ecx, 0x400
	je	.label_41
	mov	ecx, dword ptr [rdi]
	mov	rdx, qword ptr [rsp + 0xd0]
	xor	esi, esi
.label_53:
	cmp	ecx, dword ptr [rdx]
	je	.label_49
	inc	rsi
	add	rdx, 0x60
	cmp	rsi, r12
	jb	.label_53
.label_41:
	mov	qword ptr [rsp + 0x50], r8
	lea	rbp, [rbp + rax + 0x10]
	mov	qword ptr [rsp + 0x58], rbp
	test	eax, eax
	mov	qword ptr [rsp + 0xd8], rdi
	je	.label_127
	lea	r12, [rdi + 0x10]
	mov	ebx, dword ptr [rdi]
	mov	r15, qword ptr [rsp + 0x90]
	xor	ebp, ebp
.label_72:
	cmp	dword ptr [r15 - 8], ebx
	jne	.label_65
	mov	rsi, qword ptr [r15 - 0x50]
	add	rsi, qword ptr [r15]
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_195
.label_65:
	inc	rbp
	add	r15, 0x60
	cmp	rbp, qword ptr [rsp + 0x28]
	jb	.label_72
.label_195:
	mov	r12, qword ptr [rsp + 0x28]
	cmp	rbp, r12
	mov	r15d, dword ptr [rsp + 8]
	je	.label_359
	lea	rbx, [rbp + rbp*2]
	shl	rbx, 5
	lea	r12, [r14 + rbx]
	mov	eax, r13d
	test	ah, 2
	jne	.label_78
	mov	rsi, qword ptr [r12]
	mov	edi, dword ptr [rsp + 8]
	mov	edx, dword ptr [rsp + 0x60]
	call	inotify_add_watch
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_87
	call	__errno_location
	mov	r14, rax
	mov	r15d, dword ptr [r14]
	mov	eax, r15d
	or	eax, 0x10
	xor	edi, edi
	cmp	eax, 0x1c
	je	.label_286
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [r12]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r14
	call	error
.label_87:
	mov	rax, qword ptr [rsp + 0x38]
	mov	esi, dword ptr [rax + rbx + 0x44]
	test	esi, esi
	js	.label_104
	cmp	ebp, esi
	je	.label_78
.label_104:
	mov	rax, qword ptr [rsp + 0x20]
	lea	rbx, [rax + rbx + 0x44]
	test	esi, esi
	js	.label_110
	mov	edi, dword ptr [rsp + 8]
	call	inotify_rm_watch
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r12
	call	hash_delete
.label_110:
	mov	dword ptr [rbx], ebp
	cmp	ebp, -1
	mov	r14, qword ptr [rsp + 0x20]
	mov	r15d, dword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x58]
	je	.label_114
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r12
	call	hash_delete
	mov	rbp, rax
	test	rbp, rbp
	je	.label_123
	cmp	rbp, r12
	je	.label_123
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_126
	xor	esi, esi
	mov	rdi, rbp
	call	recheck
.label_126:
	mov	dword ptr [rbp + 0x44], 0xffffffff
	mov	ebx, dword ptr [rbp + 0x38]
	mov	rbp, qword ptr [rbp]
	cmp	byte ptr [rbp], 0x2d
	jne	.label_131
	cmp	byte ptr [rbp + 1], 0
	jne	.label_131
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
.label_131:
	lea	eax, [rbx + 1]
	cmp	eax, 2
	jb	.label_123
	mov	edi, ebx
	call	close
	test	eax, eax
	je	.label_123
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	mov	r8d, ebx
	call	error
.label_123:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r12
	call	hash_insert
	test	rax, rax
	je	.label_156
.label_78:
	cmp	dword ptr [rip + follow_mode],  1
	jne	.label_161
	xor	esi, esi
	mov	rdi, r12
	call	recheck
	jmp	.label_161
.label_127:
	mov	eax, dword ptr [rdi]
	mov	dword ptr [rsp + 0x1b4], eax
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsp + 0x170]
	call	hash_lookup
	mov	r12, rax
.label_161:
	test	r12, r12
	mov	r14, qword ptr [rsp + 0x20]
	mov	r15d, dword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x58]
	je	.label_114
	mov	rax, qword ptr [rsp + 0xd8]
	mov	eax, dword ptr [rax + 4]
	test	ax, 0xe04
	je	.label_307
	test	ah, 4
	je	.label_174
	mov	esi, dword ptr [r12 + 0x44]
	mov	edi, dword ptr [rsp + 8]
	call	inotify_rm_watch
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r12
	call	hash_delete
.label_174:
	xor	esi, esi
	mov	rdi, r12
	call	recheck
	jmp	.label_166
.label_49:
	mov	rdi, qword ptr [rsp + 0x48]
	call	hash_free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
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
	mov	r13, qword ptr [rsp + 0x38]
.label_117:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_181
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	lea	rbx, [r14 + 0x48]
	mov	rbp, r12
.label_344:
	mov	esi, dword ptr [rbx - 4]
	cmp	esi, -1
	je	.label_196
	mov	edi, r15d
	call	inotify_rm_watch
.label_196:
	mov	esi, dword ptr [rbx]
	cmp	esi, -1
	je	.label_199
	mov	edi, r15d
	call	inotify_rm_watch
.label_199:
	add	rbx, 0x60
	dec	rbp
	jne	.label_344
	jmp	.label_36
.label_1135:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_331:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_200:
	mov	eax, 1
	jmp	.label_223
.label_142:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_226
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
.label_265:
	mov	edi, OFFSET FLAT:label_238
	mov	esi, OFFSET FLAT:label_239
	mov	edx, 0x2e0
	mov	ecx, OFFSET FLAT:label_240
	call	__assert_fail
.label_1132:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_12
	mov	edx, OFFSET FLAT:label_13
	mov	r8d, OFFSET FLAT:label_243
	mov	r9d, OFFSET FLAT:label_244
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_245
	push	OFFSET FLAT:label_246
	call	version_etc
	add	rsp, 0x20
	xor	edi, edi
	call	exit
.label_1133:
	xor	edi, edi
	call	usage
.label_135:
	mov	edi, 1
	call	usage
.label_178:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_257
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + optarg]
	call	quote
	jmp	.label_262
.label_303:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_263
	call	quotearg_style
.label_262:
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_329:
	call	xalloc_die
.label_376:
	call	die_pipe
.label_121:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
	jmp	.label_58
.label_73:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_263
	xor	eax, eax
	call	error
.label_164:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
.label_58:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_286:
	mov	esi, OFFSET FLAT:label_289
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rdi, qword ptr [rsp + 0x48]
	call	hash_free
	mov	dword ptr [r14], 0
	jmp	.label_295
.label_111:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [r13 + 8]
	call	quote
	mov	rbp, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_305
	xor	eax, eax
	mov	esi, r14d
	mov	rcx, rbx
	mov	r8, rbp
	call	error
.label_171:
	call	xalloc_die
.label_134:
	call	xalloc_die
.label_276:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_158
	jmp	.label_58
.label_46:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_176
	jmp	.label_58
.label_339:
	xor	edi, edi
	call	exit
.label_362:
	call	die_pipe
.label_156:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404df0

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
	je	.label_386
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	bl, 1
	cmp	ebp, 0x26
	je	.label_389
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_392
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
	jmp	.label_389
.label_386:
	mov	cl, 2
	mov	rax, qword ptr [rsp]
	cmp	rax, 0x2fc12fc0
	jg	.label_396
	cmp	rax, 0xadfe
	jle	.label_397
	cmp	rax, 0x13111a7
	jg	.label_399
	cmp	rax, 0x1021993
	jg	.label_401
	cmp	rax, 0x11953
	jle	.label_419
	cmp	rax, 0x414a52
	jle	.label_404
	cmp	rax, 0x414a53
	je	.label_387
	cmp	rax, 0xc0ffee
	je	.label_387
	cmp	rax, 0xc36400
	je	.label_391
	jmp	.label_383
.label_396:
	cmp	rax, 0x65735542
	jle	.label_410
	mov	edx, 0x858458f5
	cmp	rax, rdx
	jle	.label_411
	mov	edx, 0xc97e8167
	cmp	rax, rdx
	jg	.label_412
	mov	edx, 0xaad7aae9
	cmp	rax, rdx
	jg	.label_414
	mov	edx, 0x958458f5
	cmp	rax, rdx
	jg	.label_416
	mov	edx, 0x858458f6
	cmp	rax, rdx
	je	.label_387
	mov	edx, 0x9123683e
	jmp	.label_407
.label_397:
	cmp	rax, 0x482a
	jg	.label_420
	cmp	rax, 0x2467
	jg	.label_423
	cmp	rax, 0x1372
	jle	.label_425
	lea	rdx, [rax - 0x1373]
	cmp	rdx, 0x1c
	ja	.label_427
	mov	esi, 0x10001401
	bt	rsi, rdx
	jb	.label_387
.label_427:
	cmp	rax, 0x1cd1
	je	.label_387
	jmp	.label_383
.label_410:
	cmp	rax, 0x541900ff
	jg	.label_430
	cmp	rax, 0x47504652
	jle	.label_431
	cmp	rax, 0x5346414e
	jg	.label_433
	cmp	rax, 0x52654972
	jg	.label_441
	cmp	rax, 0x47504653
	je	.label_391
	cmp	rax, 0x50495045
	je	.label_391
	jmp	.label_383
.label_411:
	cmp	rax, 0x73636672
	jle	.label_436
	cmp	rax, 0x7461636e
	jg	.label_437
	cmp	rax, 0x73727278
	jg	.label_440
	cmp	rax, 0x73636673
	je	.label_387
	cmp	rax, 0x73717368
	je	.label_387
	jmp	.label_383
.label_420:
	cmp	rax, 0x6968
	jle	.label_384
	cmp	rax, 0x965f
	jg	.label_388
	cmp	rax, 0x6969
	je	.label_391
	cmp	rax, 0x7275
	je	.label_387
	cmp	rax, 0x72b6
	je	.label_387
	jmp	.label_383
.label_430:
	cmp	rax, 0x6165676b
	jle	.label_394
	cmp	rax, 0x62656571
	jg	.label_439
	cmp	rax, 0x62646575
	jg	.label_418
	cmp	rax, 0x6165676c
	je	.label_387
	cmp	rax, 0x61756673
	je	.label_391
	jmp	.label_383
.label_399:
	cmp	rax, 0x15013345
	jg	.label_402
	cmp	rax, 0xbad1de9
	jle	.label_403
	cmp	rax, 0x11307853
	jg	.label_406
	cmp	rax, 0xbad1dea
	je	.label_387
	cmp	rax, 0xbd00bd0
	je	.label_391
	jmp	.label_383
.label_401:
	cmp	rax, 0x12fd16c
	jg	.label_409
	cmp	rax, 0x1021994
	je	.label_387
	cmp	rax, 0x1021997
	je	.label_387
	cmp	rax, 0x1161970
	je	.label_391
	jmp	.label_383
.label_412:
	mov	edx, 0xf97cff8b
	cmp	rax, rdx
	jg	.label_415
	mov	edx, 0xde5e81e3
	cmp	rax, rdx
	jg	.label_417
	mov	edx, 0xc97e8168
	cmp	rax, rdx
	je	.label_387
	mov	edx, 0xcafe4a11
	jmp	.label_407
.label_423:
	cmp	rax, 0x3fff
	jle	.label_422
	lea	rdx, [rax - 0x4000]
	cmp	rdx, 6
	ja	.label_424
	mov	esi, 0x51
	bt	rsi, rdx
	jb	.label_387
.label_424:
	cmp	rax, 0x4244
	je	.label_387
	jmp	.label_383
.label_431:
	cmp	rax, 0x42494e4c
	jle	.label_428
	cmp	rax, 0x453dcd27
	jg	.label_429
	cmp	rax, 0x42494e4d
	je	.label_387
	cmp	rax, 0x43415d53
	je	.label_387
	jmp	.label_383
.label_436:
	cmp	rax, 0x68191121
	jle	.label_434
	cmp	rax, 0x6e667363
	jg	.label_435
	cmp	rax, 0x68191122
	je	.label_387
	cmp	rax, 0x6b414653
	je	.label_391
	jmp	.label_383
.label_384:
	cmp	rax, 0x4d59
	jle	.label_438
	cmp	rax, 0x564b
	jg	.label_421
	cmp	rax, 0x4d5a
	je	.label_387
	cmp	rax, 0x517b
	je	.label_391
	jmp	.label_383
.label_394:
	cmp	rax, 0x58465341
	jle	.label_385
	cmp	rax, 0x5dca2df4
	jg	.label_390
	cmp	rax, 0x58465342
	je	.label_387
	cmp	rax, 0x5a3c69f0
	je	.label_387
	jmp	.label_383
.label_402:
	cmp	rax, 0x1badfacd
	jle	.label_393
	cmp	rax, 0x28cd3d44
	jg	.label_395
	cmp	rax, 0x1badface
	je	.label_387
	cmp	rax, 0x24051905
	je	.label_387
	jmp	.label_383
.label_419:
	cmp	rax, 0xef52
	jg	.label_400
	cmp	rax, 0xadff
	je	.label_387
	cmp	rax, 0xef51
	je	.label_387
	jmp	.label_383
.label_414:
	mov	edx, 0xbacbacbb
	cmp	rax, rdx
	jg	.label_405
	mov	edx, 0xaad7aaea
	cmp	rax, rdx
	je	.label_391
	mov	edx, 0xabba1974
	jmp	.label_407
.label_433:
	cmp	rax, 0x5346544d
	jg	.label_408
	cmp	rax, 0x5346414f
	je	.label_391
	cmp	rax, 0x53464846
	je	.label_387
	jmp	.label_383
.label_437:
	cmp	rax, 0x794c762f
	jg	.label_413
	cmp	rax, 0x7461636f
	je	.label_391
	cmp	rax, 0x74726163
	je	.label_387
	jmp	.label_383
.label_388:
	lea	rdx, [rax - 0x9fa0]
	cmp	rdx, 3
	jb	.label_387
	cmp	rax, 0x9660
	je	.label_387
	cmp	rax, 0xadf5
	je	.label_387
	jmp	.label_383
.label_439:
	cmp	rax, 0x6462671f
	jg	.label_426
	cmp	rax, 0x62656572
	je	.label_387
	cmp	rax, 0x63677270
	je	.label_387
	jmp	.label_383
.label_409:
	lea	rdx, [rax - 0x12ff7b4]
	cmp	rdx, 4
	jb	.label_387
	cmp	rax, 0x12fd16d
	je	.label_387
	jmp	.label_383
.label_415:
	mov	edx, 0xfe534d41
	cmp	rax, rdx
	jg	.label_432
	mov	edx, 0xf97cff8c
	cmp	rax, rdx
	je	.label_387
	mov	edx, 0xf995e849
	jmp	.label_407
.label_425:
	cmp	rax, 0x2f
	je	.label_387
	cmp	rax, 0x187
	je	.label_387
	cmp	rax, 0x7c0
	je	.label_387
	jmp	.label_383
.label_403:
	cmp	rax, 0x13111a8
	je	.label_391
	cmp	rax, 0x7655821
	je	.label_387
	cmp	rax, 0x9041934
	je	.label_387
	jmp	.label_383
.label_422:
	cmp	rax, 0x2468
	je	.label_387
	cmp	rax, 0x2478
	je	.label_387
	cmp	rax, 0x3434
	je	.label_387
	jmp	.label_383
.label_428:
	cmp	rax, 0x2fc12fc1
	je	.label_387
	cmp	rax, 0x3153464a
	je	.label_387
	cmp	rax, 0x42465331
	je	.label_387
	jmp	.label_383
.label_434:
	cmp	rax, 0x65735543
	je	.label_391
	cmp	rax, 0x65735546
	je	.label_391
	cmp	rax, 0x67596969
	je	.label_387
	jmp	.label_383
.label_438:
	cmp	rax, 0x482b
	je	.label_387
	cmp	rax, 0x4858
	je	.label_387
	cmp	rax, 0x4d44
	je	.label_387
	jmp	.label_383
.label_385:
	cmp	rax, 0x54190100
	je	.label_387
	cmp	rax, 0x565a4653
	je	.label_387
	cmp	rax, 0x58295829
	je	.label_387
	jmp	.label_383
.label_393:
	cmp	rax, 0x15013346
	je	.label_387
	cmp	rax, 0x19800202
	je	.label_387
	cmp	rax, 0x19830326
	je	.label_391
	jmp	.label_383
.label_404:
	cmp	rax, 0x11954
	je	.label_387
	cmp	rax, 0x27e0eb
	je	.label_387
	jmp	.label_383
.label_416:
	mov	edx, 0x958458f6
	cmp	rax, rdx
	je	.label_387
	mov	ecx, 0xa501fcf5
	jmp	.label_398
.label_441:
	cmp	rax, 0x52654973
	je	.label_387
	cmp	rax, 0x5346314d
	je	.label_387
	jmp	.label_383
.label_440:
	cmp	rax, 0x73727279
	je	.label_387
	cmp	rax, 0x73757245
	je	.label_391
	jmp	.label_383
.label_418:
	cmp	rax, 0x62646576
	je	.label_387
	cmp	rax, 0x62656570
	je	.label_387
	jmp	.label_383
.label_406:
	cmp	rax, 0x11307854
	je	.label_387
	cmp	rax, 0x13661366
	je	.label_387
	jmp	.label_383
.label_417:
	mov	edx, 0xde5e81e4
	cmp	rax, rdx
	je	.label_387
	mov	edx, 0xf2f52010
.label_407:
	cmp	rax, rdx
	je	.label_387
	jmp	.label_383
.label_429:
	cmp	rax, 0x453dcd28
	je	.label_387
	cmp	rax, 0x45584653
	je	.label_387
	jmp	.label_383
.label_435:
	cmp	rax, 0x6e667364
	je	.label_391
	cmp	rax, 0x6e736673
	je	.label_387
	jmp	.label_383
.label_421:
	cmp	rax, 0x564c
	je	.label_391
	cmp	rax, 0x5df5
	je	.label_387
	jmp	.label_383
.label_390:
	cmp	rax, 0x5dca2df5
	je	.label_387
	cmp	rax, 0x61636673
	je	.label_391
	jmp	.label_383
.label_395:
	cmp	rax, 0x28cd3d45
	je	.label_387
	cmp	rax, 0x2bad1dea
	je	.label_387
	jmp	.label_383
.label_400:
	cmp	rax, 0xef53
	je	.label_387
	cmp	rax, 0xf15f
	je	.label_387
	jmp	.label_383
.label_405:
	mov	ecx, 0xbacbacbc
	cmp	rax, rcx
	je	.label_391
	mov	ecx, 0xbeefdead
	jmp	.label_398
.label_408:
	cmp	rax, 0x5346544e
	je	.label_387
	cmp	rax, 0x534f434b
	je	.label_387
	jmp	.label_383
.label_413:
	cmp	rax, 0x794c7630
	je	.label_391
	cmp	rax, 0x7c7c6673
	je	.label_391
	jmp	.label_383
.label_426:
	cmp	rax, 0x64626720
	je	.label_387
	cmp	rax, 0x64646178
	je	.label_387
	jmp	.label_383
.label_432:
	mov	ecx, 0xfe534d42
	cmp	rax, rcx
	je	.label_391
	mov	ecx, 0xff534d42
.label_398:
	cmp	rax, rcx
	jne	.label_383
.label_391:
	mov	cl, 1
.label_387:
	and	cl, 7
	mov	bl, 3
	shr	bl, cl
	and	bl, 1
.label_389:
	mov	eax, ebx
	add	rsp, 0x78
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_383:
	xor	ecx, ecx
	jmp	.label_387
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056e0

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
	mov	rbp, rcx
	mov	r15d, edx
	mov	qword ptr [rsp + 8], rsi
	mov	r12d, edi
	cmp	rbp, -2
	je	.label_449
	xor	ebx, ebx
	cmp	rbp, -1
	jne	.label_444
	lea	r14, [rsp + 0x10]
	mov	r13d, OFFSET FLAT:label_138
	jmp	.label_448
	nop	word ptr cs:[rax + rax]
.label_450:
	mov	rdi, r14
	mov	rsi, rbp
	call	xwrite_stdout
	add	rbx, rbp
.label_448:
	mov	edx, 0x2000
	mov	edi, r15d
	mov	rsi, r14
	call	safe_read
	mov	rbp, rax
	cmp	rbp, -1
	je	.label_442
	test	rbp, rbp
	je	.label_446
	test	r12b, 1
	je	.label_450
	movzx	eax, byte ptr [rip + write_header.first_file]
	test	al, al
	mov	edx, OFFSET FLAT:label_84
	cmovne	rdx, r13
	xor	r12d, r12d
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_139
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 8]
	call	__printf_chk
	mov	byte ptr [rip + write_header.first_file],  1
	jmp	.label_450
.label_449:
	lea	rsi, [rsp + 0x10]
	mov	edx, 0x2000
	mov	edi, r15d
	call	safe_read
	mov	rbp, rax
	xor	ebx, ebx
	cmp	rbp, -1
	je	.label_442
	test	rbp, rbp
	je	.label_446
	test	r12b, r12b
	je	.label_443
	mov	al, byte ptr [rip + write_header.first_file]
	mov	ecx, OFFSET FLAT:label_138
	mov	edx, OFFSET FLAT:label_84
	test	al, al
	cmovne	rdx, rcx
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_139
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 8]
	call	__printf_chk
	mov	byte ptr [rip + write_header.first_file],  1
.label_443:
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	xwrite_stdout
	mov	rbx, rbp
	jmp	.label_446
.label_444:
	lea	r13, [rsp + 0x10]
	nop	word ptr [rax + rax]
.label_447:
	cmp	rbp, 0x2000
	mov	edx, 0x2000
	cmovb	rdx, rbp
	mov	edi, r15d
	mov	rsi, r13
	call	safe_read
	mov	r14, rax
	test	r14, r14
	je	.label_446
	cmp	r14, -1
	je	.label_442
	test	r12b, 1
	je	.label_451
	movzx	eax, byte ptr [rip + write_header.first_file]
	test	al, al
	mov	edx, OFFSET FLAT:label_84
	mov	eax, OFFSET FLAT:label_138
	cmovne	rdx, rax
	xor	r12d, r12d
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_139
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 8]
	call	__printf_chk
	mov	byte ptr [rip + write_header.first_file],  1
.label_451:
	mov	rdi, r13
	mov	rsi, r14
	call	xwrite_stdout
	add	rbx, r14
	sub	rbp, r14
	jne	.label_447
	jmp	.label_446
.label_442:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0xb
	jne	.label_445
.label_446:
	mov	rax, rbx
	add	rsp, 0x2018
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_445:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
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
	#Procedure 0x405900

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
	js	.label_455
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_455:
	lea	rsi, [rsp]
	mov	rdi, rbx
	call	offtostr
	mov	r14, rax
	cmp	ebp, 2
	je	.label_454
	cmp	ebp, 1
	je	.label_458
	test	ebp, ebp
	jne	.label_452
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_459
	jmp	.label_457
.label_454:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_456
	jmp	.label_457
.label_458:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_453
.label_457:
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
.label_452:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059c0

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	test	rbx, rbx
	je	.label_460
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jb	.label_462
.label_460:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_462:
	mov	rdi, qword ptr [rip + stdout]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_461
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_281
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
	#Procedure 0x405a40

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
	#Procedure 0x405a50

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
	#Procedure 0x405a60

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
	cmp	byte ptr [rdi], 0x2d
	jne	.label_491
	lea	r14, [r12 + 0x36]
	lea	rbx, [r12 + 0x3c]
	cmp	byte ptr [rdi + 1], 0
	mov	r13b, byte ptr [r12 + 0x36]
	mov	r15d, dword ptr [r12 + 0x3c]
	jne	.label_514
	xor	esi, esi
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_497
.label_491:
	lea	r14, [r12 + 0x36]
	mov	r13b, byte ptr [r12 + 0x36]
	lea	rbx, [r12 + 0x3c]
	mov	r15d, dword ptr [r12 + 0x3c]
.label_514:
	xor	esi, esi
	test	bpl, bpl
	sete	sil
	shl	esi, 0xb
	mov	dword ptr [rsp + 0xc], 0
	xor	eax, eax
	call	open_safer
	mov	esi, eax
.label_497:
	mov	rax, qword ptr [r12 + 0x38]
	cmp	eax, -1
	sete	cl
	shr	rax, 0x20
	sete	al
	xor	al, cl
	je	.label_512
	cmp	esi, -1
	sete	al
	and	al, byte ptr [rip + reopen_inaccessible_files]
	xor	al, 1
	mov	byte ptr [r14], al
	mov	al, byte ptr [rip + disable_inotify]
	test	al, al
	mov	qword ptr [rsp], rsi
	jne	.label_473
	mov	rsi, qword ptr [r12]
	lea	rdx, [rsp + 0x10]
	mov	edi, 1
	call	__lxstat
	mov	rsi, qword ptr [rsp]
	test	eax, eax
	jne	.label_473
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x28]
	cmp	eax, 0xa000
	jne	.label_473
	mov	dword ptr [rbx], 0xffffffff
	mov	byte ptr [r12 + 0x34], 1
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_480
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_489
	cmp	byte ptr [rsi + 1], 0
	jne	.label_489
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_489:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_495
.label_473:
	cmp	esi, -1
	je	.label_496
	lea	rdx, [rsp + 0x10]
	mov	edi, 1
	call	__fxstat
	mov	rdi, qword ptr [rsp]
	test	eax, eax
	js	.label_496
	movzx	eax, word ptr [rsp + 0x28]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jg	.label_503
	cmp	eax, 0x8000
	je	.label_478
	cmp	eax, 0xc000
	je	.label_478
	jmp	.label_505
.label_496:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	dword ptr [rbx], ebp
	cmp	byte ptr [r14], 0
	je	.label_509
	mov	ebx, dword ptr [rax]
	cmp	r15d, ebx
	mov	rdi, qword ptr [rsp]
	je	.label_499
	mov	rdx, qword ptr [r12]
	cmp	byte ptr [rdx], 0x2d
	jne	.label_466
	cmp	byte ptr [rdx + 1], 0
	jne	.label_466
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
.label_466:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_258
	xor	eax, eax
	mov	esi, ebx
	call	error
	jmp	.label_474
.label_509:
	test	r13b, r13b
	mov	rdi, qword ptr [rsp]
	je	.label_499
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_490
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_492
	cmp	byte ptr [rsi + 1], 0
	jne	.label_492
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_492:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
.label_495:
	mov	rdx, rbx
	call	error
	jmp	.label_474
.label_503:
	cmp	eax, 0x1000
	je	.label_478
	cmp	eax, 0x2000
	jne	.label_505
.label_478:
	mov	rsi, qword ptr [r12]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_507
	cmp	byte ptr [rsi + 1], 0
	jne	.label_507
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rdi, qword ptr [rsp]
	mov	rsi, rax
.label_507:
	call	fremote
	mov	byte ptr [r12 + 0x35], al
	test	al, al
	je	.label_510
	mov	al, byte ptr [rip + disable_inotify]
	test	al, al
	je	.label_513
.label_510:
	mov	dword ptr [rbx], 0
	or	r15d, 2
	cmp	r15d, 2
	jne	.label_477
	cmp	dword ptr [r12 + 0x38], -1
	je	.label_472
	mov	rax, qword ptr [r12 + 0x28]
	cmp	rax, qword ptr [rsp + 0x18]
	jne	.label_479
	mov	rax, qword ptr [r12 + 0x20]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_479
	mov	rbx, qword ptr [r12]
	cmp	byte ptr [rbx], 0x2d
	jne	.label_485
	cmp	byte ptr [rbx + 1], 0
	mov	rdi, qword ptr [rsp]
	jne	.label_488
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rdi, qword ptr [rsp]
	mov	rbx, rax
	jmp	.label_488
.label_505:
	mov	dword ptr [rbx], 0xffffffff
	mov	byte ptr [r14], 0
	cmp	dword ptr [rip + follow_mode],  1
	sete	al
	and	al, byte ptr [rip + reopen_inaccessible_files]
	xor	al, 1
	mov	byte ptr [r12 + 0x34], al
	test	r13b, r13b
	jne	.label_494
	cmp	r15d, -1
	je	.label_499
.label_494:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_501
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r12]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_506
	cmp	byte ptr [rsi + 1], 0
	jne	.label_506
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_506:
	mov	edi, 4
	call	quotearg_style
	mov	rbx, rax
	mov	r8d, OFFSET FLAT:label_84
	cmp	byte ptr [r12 + 0x34], 0
	je	.label_500
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
.label_500:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	rcx, rbx
	call	error
	jmp	.label_474
.label_513:
	mov	dword ptr [rbx], 0xffffffff
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_475
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_482
	cmp	byte ptr [rsi + 1], 0
	jne	.label_482
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_482:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	word ptr [r12 + 0x34], 0x101
.label_474:
	mov	rdi, qword ptr [rsp]
.label_499:
	mov	rbp, qword ptr [r12]
	cmp	byte ptr [rbp], 0x2d
	jne	.label_486
	cmp	byte ptr [rbp + 1], 0
	jne	.label_486
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rdi, qword ptr [rsp]
	mov	rbp, rax
.label_486:
	lea	eax, [rdi + 1]
	cmp	eax, 2
	jb	.label_504
	call	close
	mov	rcx, qword ptr [rsp]
	test	eax, eax
	je	.label_504
	mov	r14, rcx
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
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
.label_504:
	mov	ebp, dword ptr [r12 + 0x38]
	mov	rbx, qword ptr [r12]
	cmp	byte ptr [rbx], 0x2d
	jne	.label_468
	cmp	byte ptr [rbx + 1], 0
	jne	.label_468
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
.label_468:
	lea	eax, [rbp + 1]
	cmp	eax, 2
	jb	.label_483
	mov	edi, ebp
	call	close
	test	eax, eax
	je	.label_483
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
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
.label_483:
	mov	dword ptr [r12 + 0x38], 0xffffffff
.label_476:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_477:
	cmp	dword ptr [r12 + 0x38], -1
	jne	.label_498
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_464
	jmp	.label_465
.label_479:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_493
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_508
	cmp	byte ptr [rsi + 1], 0
	jne	.label_508
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_508:
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
	cmp	byte ptr [rbx], 0x2d
	jne	.label_467
	cmp	byte ptr [rbx + 1], 0
	mov	rdi, qword ptr [rsp]
	jne	.label_471
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rdi, qword ptr [rsp]
	mov	rbx, rax
	jmp	.label_471
.label_472:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_484
.label_465:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	cmp	byte ptr [rsi], 0x2d
	jne	.label_487
	cmp	byte ptr [rsi + 1], 0
	jne	.label_487
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
.label_487:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_502:
	mov	rdi, qword ptr [rsp]
.label_481:
	movzx	eax, bpl
	mov	ecx, dword ptr [rsp + 0xc]
	test	cl, cl
	mov	ecx, 0xffffffff
	cmove	ecx, eax
	mov	dword ptr [r12 + 0x38], edi
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
	cmp	byte ptr [rcx], 0x2d
	jne	.label_463
	cmp	byte ptr [rcx + 1], 0
	jne	.label_463
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rdi, qword ptr [rsp]
	mov	rcx, rax
.label_463:
	xor	esi, esi
	xor	edx, edx
	call	xlseek
	jmp	.label_476
.label_467:
	mov	rdi, qword ptr [rsp]
.label_471:
	lea	eax, [r15 + 1]
	cmp	eax, 2
	jb	.label_481
	mov	edi, r15d
	call	close
	mov	rdi, qword ptr [rsp]
	test	eax, eax
	je	.label_481
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r13
	mov	r8d, r15d
	call	error
	jmp	.label_502
.label_485:
	mov	rdi, qword ptr [rsp]
.label_488:
	lea	eax, [rdi + 1]
	cmp	eax, 2
	jb	.label_476
	call	close
	mov	rcx, qword ptr [rsp]
	test	eax, eax
	je	.label_476
	mov	r14, rcx
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
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
	jmp	.label_476
.label_512:
	mov	edi, OFFSET FLAT:label_511
	mov	esi, OFFSET FLAT:label_239
	mov	edx, 0x3df
	mov	ecx, OFFSET FLAT:label_470
	call	__assert_fail
.label_498:
	mov	edi, OFFSET FLAT:label_469
	mov	esi, OFFSET FLAT:label_239
	mov	edx, 0x42c
	mov	ecx, OFFSET FLAT:label_470
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406230

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
	je	.label_521
	mov	r14, qword ptr [rbx]
	cmp	byte ptr [r14], 0x2d
	jne	.label_518
	cmp	byte ptr [r14 + 1], 0
	jne	.label_518
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	esi, dword ptr [rbx + 0x38]
.label_518:
	lea	rdx, [rsp]
	mov	edi, 1
	call	__fxstat
	test	eax, eax
	je	.label_515
	call	__errno_location
	mov	r12, rax
	mov	eax, dword ptr [r12]
	mov	dword ptr [rbx + 0x3c], eax
	mov	r15d, dword ptr [rbx + 0x38]
	lea	eax, [r15 + 1]
	cmp	eax, 2
	jb	.label_517
	mov	edi, r15d
	call	close
	test	eax, eax
	je	.label_517
	mov	r12d, dword ptr [r12]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
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
.label_517:
	mov	dword ptr [rbx + 0x38], 0xffffffff
	jmp	.label_521
.label_515:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x30]
	cmp	eax, 0x8000
	jne	.label_519
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rax, qword ptr [rbx + 8]
	jge	.label_516
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
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
	jmp	.label_519
.label_516:
	mov	rax, qword ptr [rsp + 0x30]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_519
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rsp + 0x58]
	jne	.label_519
	mov	eax, dword ptr [rbx + 0x18]
	cmp	eax, dword ptr [rsp + 0x60]
	je	.label_521
.label_519:
	cmp	byte ptr [rip + print_headers],  1
	jne	.label_523
	cmp	qword ptr [r15], rbx
	setne	al
	jmp	.label_522
.label_523:
	xor	eax, eax
.label_522:
	mov	edx, dword ptr [rbx + 0x38]
	movzx	edi, al
	mov	rcx, -1
	mov	rsi, r14
	call	dump_remainder
	add	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_521
	mov	qword ptr [r15], rbx
	mov	rdi, qword ptr [rip + stdout]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_520
.label_521:
	add	rsp, 0x90
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_520:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x406400

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
	#Procedure 0x406420

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406430

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
	mov	rbx, rsi
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_528
	test	r14, r14
	je	.label_530
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r14
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_529:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_526
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_525
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	je	.label_532
	mov	rdi, rax
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_526
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_526
.label_532:
	mov	qword ptr [rsp + 8], rbx
	nop	word ptr [rax + rax]
.label_526:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	add	r14, r13
	test	rbp, rbp
	jne	.label_529
	jmp	.label_524
.label_528:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_524
.label_530:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_531:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_527
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_525
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	cmove	rax, rbx
	mov	qword ptr [rsp + 8], rax
	je	.label_527
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	word ptr [rax + rax]
.label_527:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	jne	.label_531
.label_524:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	cmove	rbx, qword ptr [rsp + 8]
.label_525:
	mov	rax, rbx
	add	rsp, 0x28
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
	#Procedure 0x4065b0
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
	je	.label_533
	mov	esi, OFFSET FLAT:label_534
	jmp	.label_535
.label_533:
	mov	esi, OFFSET FLAT:label_536
.label_535:
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
	#Procedure 0x406620

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
	mov	esi, OFFSET FLAT:label_537
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_542
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_539:
	test	r15, r15
	je	.label_541
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_538
.label_541:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_543
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_540
	nop	word ptr cs:[rax + rax]
.label_538:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_544
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_540:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_539
.label_542:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_545
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
.label_545:
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
	#Procedure 0x406750

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
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_546
	cmp	rax, -1
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, r14
	je	.label_547
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_534
	jmp	.label_548
.label_547:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_536
.label_548:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, rbp
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
.label_546:
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
	je	.label_549
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_550:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_549
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_550
.label_549:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
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
	lea	rsi, [rsp + 8]
	call	strtod
	mov	r12, qword ptr [rsp + 8]
	cmp	byte ptr [r12], 0
	je	.label_553
	movsd	qword ptr [rsp + 0x10], xmm0
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbx
	call	c_strtod
	mov	rax, qword ptr [rsp + 0x18]
	cmp	r12, rax
	jae	.label_552
	mov	qword ptr [rsp + 8], rax
	mov	r12, rax
	jmp	.label_553
.label_552:
	mov	dword ptr [r15], ebp
	movsd	xmm0, qword ptr [rsp + 0x10]
.label_553:
	test	r14, r14
	je	.label_551
	mov	qword ptr [r14], r12
.label_551:
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

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406920
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
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
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_557
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_556
	cmp	dword ptr [rbp], 0x20
	jne	.label_556
.label_557:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_555
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_556:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_554
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_258
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_555:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_554:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_305
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
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
	xor	r14d, r14d
	cmp	byte ptr [rbx], 0x2f
	sete	r14b
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_559:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_558
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_559
.label_558:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a30
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
.label_563:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_560
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_563
.label_560:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_562
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_561
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_561:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_562:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ad0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_564:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_564
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_568
	nop	word ptr cs:[rax + rax]
.label_565:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_568:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_565
	test	dl, dl
	je	.label_567
	mov	ecx, esi
	and	cl, 1
	je	.label_566
	xor	esi, esi
.label_566:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_565
.label_567:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406b30
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_570:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_569
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_570
.label_569:
	pop	rbx
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b60

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_571
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_571:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_572
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_574
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_573
.label_574:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_573:
	mov	edx, dword ptr [rax]
.label_572:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
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
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_575
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_581
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_578:
	cmp	qword ptr [rcx], 0
	je	.label_576
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_580:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_580
	cmp	rdi, rax
	cmova	rax, rdi
.label_576:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_577
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_582:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_582
	cmp	rdi, rax
	cmova	rax, rdi
.label_577:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_578
.label_581:
	test	r8, r8
	je	.label_575
	cmp	qword ptr [rcx], 0
	je	.label_575
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_579:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_579
	cmp	rdx, rax
	cmova	rax, rdx
.label_575:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d20
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_589
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_592
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_588:
	cmp	qword ptr [rax], 0
	je	.label_584
	mov	rdx, rax
	nop	dword ptr [rax]
.label_591:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_591
	inc	r10
.label_584:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_593
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_586:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_586
	inc	r10
.label_593:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_588
	jmp	.label_590
.label_592:
	xor	r10d, r10d
.label_590:
	test	r8, r8
	je	.label_589
	cmp	qword ptr [rax], 0
	je	.label_589
	nop	dword ptr [rax]
.label_583:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_583
	inc	r10
.label_589:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_585
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_587
.label_585:
	xor	eax, eax
.label_587:
	ret	
	.section	.text
	.align	32
	#Procedure 0x406de0
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
	jae	.label_594
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_597
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_608:
	cmp	qword ptr [rax], 0
	je	.label_603
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_606:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_606
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_603:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_604
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_607:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_607
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_604:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_608
.label_597:
	test	r8, r8
	je	.label_594
	cmp	qword ptr [rax], 0
	je	.label_594
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_595:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_595
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_594:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_596
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_605
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_599]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_600]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_601]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_602
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_598
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
	#Procedure 0x406f50

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
	jae	.label_612
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_609
	add	rbx, rax
	je	.label_609
	cmp	rsi, r12
	je	.label_611
	xor	r15d, r15d
	nop	
.label_610:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_613
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_609
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_610
.label_611:
	mov	r15, r12
	jmp	.label_609
.label_613:
	mov	r15, qword ptr [rbx]
.label_609:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_612:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406fd0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_614
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_617
	nop	word ptr cs:[rax + rax]
.label_616:
	add	rcx, 0x10
.label_617:
	cmp	rcx, rdx
	jae	.label_615
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_616
.label_614:
	ret	
.label_615:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407010
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
	jae	.label_620
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_621:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_618
	test	rdx, rdx
	jne	.label_621
	jmp	.label_619
.label_618:
	test	rdx, rdx
	je	.label_619
	mov	rax, qword ptr [rdx]
	jmp	.label_622
.label_619:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_623:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_622
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_623
.label_622:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_620:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070a0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_624
	xor	eax, eax
.label_626:
	cmp	qword ptr [r9], 0
	je	.label_625
	test	r9, r9
	je	.label_625
	mov	r8, r9
	nop	
.label_627:
	cmp	rax, rdx
	jae	.label_624
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_627
	mov	r8, qword ptr [rdi + 8]
.label_625:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_626
.label_624:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070f0
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
	jae	.label_631
	xor	ebx, ebx
.label_630:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_632
	test	r13, r13
	je	.label_632
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_631
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_629:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_628
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_629
	jmp	.label_631
	nop	dword ptr [rax]
.label_628:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_632:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_630
.label_631:
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
	#Procedure 0x407190
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_633
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_634:
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
	jne	.label_634
.label_633:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071d0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_635]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071f0

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
	je	.label_636
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_649
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_639]
	jbe	.label_637
	movss	xmm1, dword ptr [rip + label_643]
	ucomiss	xmm1, xmm0
	jbe	.label_637
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_648]
	jbe	.label_637
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_637
	addss	xmm1, dword ptr [rip + label_639]
	ucomiss	xmm0, xmm1
	jbe	.label_637
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_644]
	ucomiss	xmm2, xmm0
	jb	.label_637
	ucomiss	xmm0, xmm1
	jbe	.label_637
.label_649:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_650
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_638
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_641
.label_638:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_641:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_646]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_647]
	jae	.label_637
.label_650:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_645
	nop	
.label_642:
	add	rbx, 2
.label_645:
	cmp	rbx, -1
	je	.label_637
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_640
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_651:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_640
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_651
.label_640:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_642
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_637
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_637
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_637
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
	jmp	.label_636
.label_637:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_636:
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
	#Procedure 0x407410

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
	#Procedure 0x407420

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407430
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_654
	nop	word ptr cs:[rax + rax]
.label_657:
	add	r14, 0x10
.label_654:
	cmp	r14, rax
	jae	.label_656
	cmp	qword ptr [r14], 0
	je	.label_657
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_658
	nop	word ptr cs:[rax + rax]
.label_653:
	test	cl, 1
	je	.label_652
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_652:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_653
.label_658:
	test	cl, cl
	je	.label_655
	mov	rdi, qword ptr [r14]
	call	rax
.label_655:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_657
.label_656:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074e0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_664
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_664
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_668
	nop	
.label_661:
	add	r15, 0x10
.label_668:
	cmp	r15, rax
	jae	.label_664
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_661
	test	r15, r15
	je	.label_661
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_663
.label_666:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_663:
	test	rbx, rbx
	jne	.label_666
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_661
.label_664:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_660
	nop	
.label_667:
	add	r15, 0x10
.label_660:
	cmp	r15, rax
	jae	.label_659
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_667
	nop	word ptr cs:[rax + rax]
.label_665:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_665
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_667
.label_659:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_662
.label_669:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_669
.label_662:
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
	#Procedure 0x4075b0

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
	jne	.label_684
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_671
	cvtsi2ss	xmm0, rsi
	jmp	.label_676
.label_671:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_676:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_646]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_647]
	jae	.label_670
.label_684:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_680
	nop	dword ptr [rax + rax]
.label_674:
	add	rbx, 2
.label_680:
	cmp	rbx, -1
	je	.label_670
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_673
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_688:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_673
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_688
.label_673:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_674
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_670
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_681
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_670
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
	je	.label_677
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_681
.label_677:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_672
	nop	
.label_682:
	add	r12, 0x10
.label_672:
	cmp	r12, r15
	jae	.label_679
	cmp	qword ptr [r12], 0
	je	.label_682
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_686
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_683:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_678
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_685
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_687
	nop	word ptr [rax + rax]
.label_685:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_687:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_683
.label_686:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_682
.label_679:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_675
	mov	rdi, qword ptr [rsp]
	call	free
.label_670:
	xor	ebp, ebp
.label_681:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_678:
	call	abort
.label_675:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407840

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
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	cmp	r13, rax
	jae	.label_689
	test	dl, dl
	je	.label_702
	nop	dword ptr [rax]
.label_690:
	cmp	qword ptr [r13], 0
	je	.label_705
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	je	.label_708
	mov	rsi, qword ptr [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_704:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_694
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_703
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_698
	nop	word ptr [rax + rax]
.label_703:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_698:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_704
	mov	rax, qword ptr [r15 + 8]
.label_708:
	mov	qword ptr [r13 + 8], 0
.label_705:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_690
	jmp	.label_689
	nop	word ptr cs:[rax + rax]
.label_702:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_701
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	je	.label_696
	nop	word ptr [rax + rax]
.label_697:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_694
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_699
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_695
	nop	word ptr [rax + rax]
.label_699:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_695:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_697
	mov	r12, qword ptr [r13]
.label_696:
	mov	qword ptr [r13 + 8], 0
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r14 + 0x10]
	jae	.label_707
	mov	rbp, qword ptr [r14]
	shl	rbx, 4
	cmp	qword ptr [rbp + rbx], 0
	je	.label_692
	mov	rax, qword ptr [r14 + 0x48]
	test	rax, rax
	je	.label_709
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 0x48], rcx
	jmp	.label_700
	nop	dword ptr [rax + rax]
.label_692:
	add	rbp, rbx
	mov	qword ptr [rbp], r12
	inc	qword ptr [r14 + 0x18]
	jmp	.label_706
.label_709:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_693
.label_700:
	mov	qword ptr [rax], r12
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + rbx + 8], rax
.label_706:
	mov	qword ptr [r13], 0
	dec	qword ptr [r15 + 0x18]
	mov	rax, qword ptr [r15 + 8]
.label_701:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_702
.label_689:
	mov	al, 1
.label_691:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_693:
	xor	eax, eax
	jmp	.label_691
.label_694:
	call	abort
.label_707:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407a60

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
	je	.label_712
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_712
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_715
	cmp	rsi, r14
	je	.label_721
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_724
	mov	rax, qword ptr [r12]
.label_720:
	test	rax, rax
	jne	.label_728
	jmp	.label_715
.label_721:
	mov	rax, r14
.label_728:
	xor	ebp, ebp
	test	r15, r15
	je	.label_716
	mov	qword ptr [r15], rax
	jmp	.label_716
.label_724:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_715
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_713:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_739
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_710
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_713
.label_715:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_717
	cvtsi2ss	xmm1, rax
	jmp	.label_723
.label_717:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_723:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_730
	cvtsi2ss	xmm0, rcx
	jmp	.label_736
.label_730:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_736:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_726
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_740
	ucomiss	xmm2, dword ptr [rip + label_639]
	jbe	.label_714
	movss	xmm3, dword ptr [rip + label_643]
	ucomiss	xmm3, xmm2
	jbe	.label_714
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_648]
	jbe	.label_714
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_714
	addss	xmm3, dword ptr [rip + label_639]
	ucomiss	xmm2, xmm3
	jbe	.label_714
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_644]
	ucomiss	xmm5, xmm4
	jb	.label_714
	ucomiss	xmm4, xmm3
	ja	.label_719
.label_714:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_718]
	jmp	.label_719
.label_740:
	mov	eax, OFFSET FLAT:default_tuning
.label_719:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_726
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_725
	mulss	xmm0, xmm2
.label_725:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_647]
	jae	.label_716
	movss	xmm1, dword ptr [rip + label_646]
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
	je	.label_716
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_712
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_726
	cmp	rsi, r14
	mov	rax, r14
	je	.label_711
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_732
	mov	rax, qword ptr [r12]
.label_711:
	test	rax, rax
	jne	.label_722
.label_726:
	cmp	qword ptr [r12], 0
	je	.label_729
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_727
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_731
.label_729:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_734]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_735
.label_727:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_716
.label_731:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_735:
	mov	ebp, 1
.label_716:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_739:
	mov	rax, r14
	jmp	.label_720
.label_710:
	mov	rax, qword ptr [rbp]
	jmp	.label_720
.label_732:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_726
	lea	rbp, [rbx + rbp + 8]
.label_738:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_733
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_737
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_738
	jmp	.label_726
.label_733:
	mov	rax, r14
	jmp	.label_711
.label_737:
	mov	rax, qword ptr [rbp]
	jmp	.label_711
.label_712:
	call	abort
.label_722:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407da0

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
	je	.label_741
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_741:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407dd0

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
	jae	.label_758
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_746
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_745
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_748
	mov	r14, qword ptr [r13]
.label_745:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_752
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_750
.label_748:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_746
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_742:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_759
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_762
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_742
	jmp	.label_746
.label_752:
	mov	qword ptr [r13], 0
	jmp	.label_750
.label_759:
	mov	rcx, rax
	jmp	.label_751
.label_762:
	mov	r14, qword ptr [rcx]
.label_751:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_750:
	xor	r12d, r12d
	test	r14, r14
	je	.label_746
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_747
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_760
	cvtsi2ss	xmm1, rax
	jmp	.label_761
.label_760:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_761:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_744
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_749
.label_744:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_749:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_747
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_756
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_639]
	jbe	.label_743
	movss	xmm4, dword ptr [rip + label_643]
	ucomiss	xmm4, xmm3
	jbe	.label_743
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_743
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_648]
	jbe	.label_743
	movss	xmm4, dword ptr [rip + label_639]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_743
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_644]
	ucomiss	xmm5, xmm3
	jb	.label_743
	ucomiss	xmm3, xmm4
	ja	.label_754
.label_743:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_754
.label_756:
	mov	eax, OFFSET FLAT:default_tuning
.label_754:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_747
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_757
	mulss	xmm0, dword ptr [rax + 8]
.label_757:
	movss	xmm1, dword ptr [rip + label_646]
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
	jne	.label_747
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_753
	nop	word ptr cs:[rax + rax]
.label_755:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_755
.label_753:
	mov	qword ptr [r15 + 0x48], 0
.label_747:
	mov	r12, r14
.label_746:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_758:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408070

	.globl offtostr
	.type offtostr, @function
offtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_763
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_764:
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
	ja	.label_764
	jmp	.label_765
.label_763:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_766:
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
	ja	.label_766
	mov	byte ptr [rsi], 0x2d
.label_765:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408130

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:label_767
	call	getenv
	mov	ecx, 0x31069
	test	rax, rax
	je	.label_768
	mov	ecx, 0x31069
	cmp	byte ptr [rax], 0
	je	.label_768
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	ecx, 0x31069
	cmove	rcx, rax
.label_768:
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
	#Procedure 0x408190

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_772
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_770
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_769
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_770
	mov	esi, OFFSET FLAT:label_774
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_771
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_771:
	mov	rbx, r14
.label_770:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_772:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_773
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408240
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
	#Procedure 0x408280
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
	#Procedure 0x408290
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
	#Procedure 0x4082a0
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
	#Procedure 0x4082e0
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
	#Procedure 0x408300
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_775
	test	rdx, rdx
	je	.label_775
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_775:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408330
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
	#Procedure 0x4083b0

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
	jmp	.label_825
	nop	
.label_823:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_807
	or	al, dl
	jne	.label_807
	test	dil, 1
	jne	.label_822
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_807
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_825
	jmp	.label_807
.label_1192:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_875
	test	rbp, rbp
	je	.label_840
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_840:
	mov	r14d, 1
	jmp	.label_836
.label_1193:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_813
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_782
.label_875:
	xor	r14d, r14d
.label_836:
	mov	eax, OFFSET FLAT:label_813
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_814
	nop	
.label_825:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_856
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_881]
.label_1194:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_868
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_805
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_1195:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_880
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_880
	xor	r14d, r14d
	nop	
.label_833:
	cmp	r14, rbp
	jae	.label_890
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_890:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_833
.label_880:
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
	jmp	.label_782
.label_1187:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_782
.label_1190:
	mov	al, 1
.label_1188:
	mov	r12b, 1
.label_1191:
	test	r12b, 1
	mov	cl, 1
	je	.label_788
	mov	ecx, eax
.label_788:
	mov	al, cl
.label_1189:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_790
	test	rbp, rbp
	je	.label_797
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_797:
	mov	r14d, 1
	jmp	.label_800
.label_790:
	xor	r14d, r14d
.label_800:
	mov	ecx, OFFSET FLAT:label_805
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_814:
	mov	sil, r12b
.label_782:
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
	jmp	.label_811
	nop	word ptr cs:[rax + rax]
.label_777:
	inc	r12
.label_811:
	cmp	r11, -1
	je	.label_842
	cmp	r12, r11
	jne	.label_845
	jmp	.label_847
	nop	word ptr cs:[rax + rax]
.label_842:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_902
.label_845:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_857
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_860
	cmp	r11, -1
	jne	.label_860
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_860:
	cmp	rbx, r11
	jbe	.label_872
.label_857:
	xor	esi, esi
.label_895:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_873
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_877]
.label_1115:
	test	r12, r12
	jne	.label_832
	jmp	.label_787
	nop	word ptr cs:[rax + rax]
.label_872:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_892
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_895
	jmp	.label_776
.label_892:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_895
.label_1119:
	xor	eax, eax
	cmp	r11, -1
	je	.label_780
	test	r12, r12
	jne	.label_786
	cmp	r11, 1
	je	.label_787
	xor	r13d, r13d
	jmp	.label_801
.label_1108:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_792
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_776
	cmp	r8d, 2
	jne	.label_803
	mov	eax, r9d
	and	al, 1
	jne	.label_803
	cmp	r14, rbp
	jae	.label_806
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_806:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_808
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_808:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_816
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_816:
	add	r14, 3
	mov	r9b, 1
.label_803:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_820
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_820:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_819
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_819
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_819
	cmp	r14, rbp
	jae	.label_837
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_837:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_861
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_861:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_801
.label_1109:
	mov	bl, 0x62
	jmp	.label_843
.label_1110:
	mov	cl, 0x74
	jmp	.label_838
.label_1111:
	mov	bl, 0x76
	jmp	.label_843
.label_1112:
	mov	bl, 0x66
	jmp	.label_843
.label_1113:
	mov	cl, 0x72
	jmp	.label_838
.label_1116:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_853
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_799
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
	jae	.label_862
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_862:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_874
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_874:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_879
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_879:
	add	r14, 3
	xor	r9d, r9d
.label_853:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_801
.label_1117:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_886
	cmp	r8d, 2
	jne	.label_832
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_832
	jmp	.label_799
.label_1118:
	cmp	r8d, 2
	jne	.label_897
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_799
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_882
.label_873:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_901
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_789
.label_780:
	test	r12, r12
	jne	.label_804
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_804
.label_787:
	mov	dl, 1
.label_1114:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_799
	xor	eax, eax
	mov	r13b, dl
.label_801:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_812
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_817
	jmp	.label_818
	nop	word ptr cs:[rax + rax]
.label_812:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_818
.label_817:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_781
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_827
	nop	dword ptr [rax]
.label_818:
	test	sil, sil
.label_827:
	mov	ebx, r15d
	je	.label_828
	jmp	.label_831
.label_781:
	mov	ebx, r15d
	jmp	.label_831
.label_792:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_777
	xor	r15d, r15d
	jmp	.label_832
.label_897:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_838
	xor	eax, eax
	mov	r15b, 0x5c
.label_882:
	xor	r13d, r13d
	jmp	.label_828
.label_838:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_799
.label_843:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_801
	nop	
.label_831:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_776
	cmp	r8d, 2
	jne	.label_854
	mov	eax, r9d
	and	al, 1
	jne	.label_854
	cmp	r14, rbp
	jae	.label_859
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_859:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_863
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_863:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_867
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_867:
	add	r14, 3
	mov	r9b, 1
.label_854:
	cmp	r14, rbp
	jae	.label_826
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_826:
	inc	r14
	jmp	.label_844
.label_901:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_878
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_878:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_900
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_888:
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
	je	.label_778
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_783
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_802
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_795
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_864:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_883
	bt	rsi, rdx
	jb	.label_799
.label_883:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_864
.label_795:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_798
	xor	r13d, r13d
.label_798:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_888
	jmp	.label_785
.label_819:
	xor	r13d, r13d
	jmp	.label_801
.label_804:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_801
.label_886:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_832
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_832
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_832
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_841
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_794
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_849
	cmp	r14, rbp
	jae	.label_851
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_851:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_858
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_858:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_884
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_884:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_835
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_835:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_794:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_801
.label_832:
	xor	eax, eax
.label_786:
	xor	r13d, r13d
	jmp	.label_801
.label_900:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_779:
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
	je	.label_893
	cmp	rbp, -1
	je	.label_896
	cmp	rbp, -2
	je	.label_778
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_899
	xor	r13d, r13d
.label_899:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_779
	jmp	.label_785
.label_778:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_793
	lea	rax, [r10 + r12]
.label_850:
	cmp	byte ptr [rax + rsi], 0
	je	.label_793
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_850
.label_793:
	mov	qword ptr [rsp + 0x40], rsi
.label_783:
	xor	r13d, r13d
	jmp	.label_802
.label_896:
	xor	r13d, r13d
.label_893:
	mov	r10, qword ptr [rsp + 0x28]
.label_802:
	mov	r12, qword ptr [rsp + 0x40]
.label_785:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_789:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_810
	test	al, al
	je	.label_810
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_801
.label_810:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_824
	nop	word ptr [rax + rax]
.label_784:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_824:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_830
	test	sil, 1
	je	.label_839
	cmp	r14, rbp
	jae	.label_834
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_834:
	inc	r14
	xor	esi, esi
	jmp	.label_839
	nop	word ptr cs:[rax + rax]
.label_830:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_776
	cmp	r8d, 2
	jne	.label_846
	mov	eax, r9d
	and	al, 1
	jne	.label_846
	cmp	r14, rbp
	jae	.label_821
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_821:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_852
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_852:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_855
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_855:
	add	r14, 3
	mov	r9b, 1
.label_846:
	cmp	r14, rbp
	jae	.label_865
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_865:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_870
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_870:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_876
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_876:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_839:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_828
	test	r9b, 1
	je	.label_887
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_815
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_891
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_891:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_898
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_898:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_887
	nop	word ptr cs:[rax + rax]
.label_815:
	mov	rbx, rcx
.label_887:
	cmp	r14, rbp
	jae	.label_784
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_784
	nop	
.label_828:
	test	r9b, 1
	je	.label_791
	and	al, 1
	jne	.label_791
	cmp	r14, rbp
	jae	.label_796
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_796:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_848
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_848:
	add	r14, 2
	xor	r9d, r9d
.label_791:
	mov	ebx, r15d
.label_844:
	cmp	r14, rbp
	jae	.label_809
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_809:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_777
.label_841:
	xor	r13d, r13d
	jmp	.label_801
	nop	word ptr cs:[rax + rax]
.label_847:
	mov	rcx, r12
.label_902:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_823
	or	al, dl
	jne	.label_823
	mov	r11, rcx
	jmp	.label_776
.label_799:
	mov	eax, 2
.label_894:
	mov	qword ptr [rsp + 0x38], rax
.label_776:
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
.label_885:
	mov	r14, rax
.label_889:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_807:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_866
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_829
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_829
	inc	rdx
	nop	dword ptr [rax + rax]
.label_871:
	cmp	r14, rbp
	jae	.label_869
	mov	byte ptr [rcx + r14], al
.label_869:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_871
	jmp	.label_829
.label_822:
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
	jmp	.label_885
.label_866:
	mov	rcx, qword ptr [rsp + 0x10]
.label_829:
	cmp	r14, rbp
	jae	.label_889
	mov	byte ptr [rcx + r14], 0
	jmp	.label_889
.label_849:
	mov	eax, 5
	jmp	.label_894
.label_856:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4091e0
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
	#Procedure 0x4092b0
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
	je	.label_903
	mov	qword ptr [rax], rbx
.label_903:
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
	#Procedure 0x4093a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_904
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_907:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_907
.label_904:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_908
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_905], OFFSET FLAT:slot0
.label_908:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_906
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_906:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409440
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x409450

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
	js	.label_912
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_915
	cmp	r12d, 0x7fffffff
	je	.label_910
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
	jne	.label_913
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_913:
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
.label_915:
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
	jbe	.label_911
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_914
.label_911:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_909
	mov	rdi, r14
	call	free
.label_909:
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
.label_914:
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
.label_912:
	call	abort
.label_910:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409610
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409620
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
	#Procedure 0x409640
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
	#Procedure 0x409660

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
	je	.label_916
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
.label_916:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4096d0
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
	je	.label_917
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
.label_917:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409740

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
	je	.label_918
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
.label_918:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097b0
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
	je	.label_919
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
.label_919:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409820
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_920]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_921]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_922]
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
	#Procedure 0x409890
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_920]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_921]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_922]
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
	#Procedure 0x409900

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_920]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_921]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_922]
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
	#Procedure 0x409960
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_920]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_921]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_922]
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
	#Procedure 0x4099c0

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
	je	.label_923
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
.label_923:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a60
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_920]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_921]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_922]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_924
	test	rdx, rdx
	je	.label_924
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_924:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409ad0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_920]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_921]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_922]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_925
	test	rdx, rdx
	je	.label_925
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_925:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b40
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_920]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_921]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_922]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_926
	test	rsi, rsi
	je	.label_926
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_926:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409bb0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_920]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_921]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_922]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_927
	test	rsi, rsi
	je	.label_927
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
.label_927:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409c20
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c30
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
	#Procedure 0x409c50

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c70

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
	#Procedure 0x409c90

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
	jne	.label_932
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_936
	cmp	ecx, 0x55
	jne	.label_928
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_928
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_928
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_928
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_928
	cmp	byte ptr [rax + 5], 0
	jne	.label_928
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_934
	mov	eax, OFFSET FLAT:label_935
	jmp	.label_931
.label_936:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_928
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_928
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_928
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_928
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_928
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_928
	cmp	byte ptr [rax + 7], 0
	je	.label_933
.label_928:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_813
	mov	eax, OFFSET FLAT:label_805
.label_931:
	cmove	rax, rcx
.label_932:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_933:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_929
	mov	eax, OFFSET FLAT:label_930
	jmp	.label_931
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d60

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
.label_938:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_937
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_938
	cmp	rbx, 0x7ff00001
	jb	.label_937
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_938
.label_937:
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
	#Procedure 0x409dc0

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
	ja	.label_939
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
	jmp	.label_940
.label_939:
	mov	eax, ebx
.label_940:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e10

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
	je	.label_950
	mov	edx, OFFSET FLAT:label_956
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_943
.label_950:
	mov	edx, OFFSET FLAT:label_945
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_943:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_949
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
	mov	esi, OFFSET FLAT:label_946
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_951
	jmp	qword ptr [(r12 * 8) + label_952]
.label_1229:
	add	rsp, 8
	jmp	.label_944
.label_951:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_959
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
	jmp	.label_944
.label_1230:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_947
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
.label_1231:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_941
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
.label_1232:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_957
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
.label_1233:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_954
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
	jmp	.label_944
.label_1234:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_953
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
	jmp	.label_944
.label_1235:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_955
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
	jmp	.label_944
.label_1236:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_958
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
	jmp	.label_944
.label_1238:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_942
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
	jmp	.label_944
.label_1237:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_948
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
.label_944:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a170
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_960:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_960
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a1a0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_971
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_973
.label_971:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_973:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_962
	cmp	r10d, 0x29
	jae	.label_970
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_972
.label_970:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_972:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_962
	cmp	r10d, 0x29
	jae	.label_968
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_969
.label_968:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_969:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_962
	cmp	r10d, 0x29
	jae	.label_966
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_967
.label_966:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_967:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_962
	cmp	r10d, 0x29
	jae	.label_964
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_965
.label_964:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_965:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_962
	cmp	r10d, 0x29
	jae	.label_961
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_963
.label_961:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_963:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_962
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_962
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_962
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_962
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_962:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a390

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_974
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_974:
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
	#Procedure 0x40a420
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_975
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_976
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_978
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_13
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_977
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a4a0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_979
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_980
	test	rax, rax
	je	.label_979
.label_980:
	pop	rbx
	ret	
.label_979:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a4e0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_981
	test	rax, rax
	je	.label_982
.label_981:
	pop	rbx
	ret	
.label_982:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a500
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_983
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_984
	test	rbx, rbx
	jne	.label_984
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_984:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_985
	test	rax, rax
	je	.label_983
.label_985:
	pop	rbx
	ret	
.label_983:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a550

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_986
	test	rbx, rbx
	jne	.label_986
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_986:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_988
	test	rax, rax
	je	.label_987
.label_988:
	pop	rbx
	ret	
.label_987:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40a580
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_989
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_992
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_990
.label_989:
	test	rcx, rcx
	jne	.label_995
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_995:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_991
.label_990:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_994
	test	rbx, rbx
	jne	.label_994
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_994:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_993
	test	rax, rax
	je	.label_992
.label_993:
	pop	rbx
	ret	
.label_992:
	call	xalloc_die
.label_991:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a620
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_996
	test	rax, rax
	je	.label_997
.label_996:
	pop	rbx
	ret	
.label_997:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a640
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_998
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_1001
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1002
	call	free
	xor	eax, eax
	jmp	.label_999
.label_998:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_1000
	mov	qword ptr [rsi], rbx
.label_1002:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_999
	test	rax, rax
	je	.label_1000
.label_999:
	pop	rbx
	ret	
.label_1000:
	call	xalloc_die
.label_1001:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6b0
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
	je	.label_1004
	test	r14, r14
	je	.label_1003
.label_1004:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1003:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6f0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1005
	call	rpl_calloc
	test	rax, rax
	je	.label_1005
	pop	rcx
	ret	
.label_1005:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a720

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
	je	.label_1006
	test	r15, r15
	je	.label_1007
.label_1006:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1007:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a760
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
	je	.label_1009
	test	r15, r15
	je	.label_1008
.label_1009:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1008:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7b0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1010
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_258
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a7e0

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
	je	.label_1012
	cmp	eax, 1
	je	.label_1014
	cmp	eax, 3
	jne	.label_1016
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_1011
.label_1014:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_1011
.label_1012:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_1015
	cmp	rbx, r15
	jbe	.label_1017
.label_1015:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_1013
	mov	dword ptr [rax], 0x4b
	jmp	.label_1011
.label_1016:
	call	__errno_location
	jmp	.label_1011
.label_1013:
	mov	dword ptr [rax], 0x22
.label_1011:
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
	mov	edx, OFFSET FLAT:label_305
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_1017:
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
	#Procedure 0x40a8b0

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
	#Procedure 0x40a8e0

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
	je	.label_1018
	lea	r15, [rsp]
	nop	dword ptr [rax + rax]
.label_1019:
	mov	eax, dword ptr [r14]
	mov	ebx, 0xffffffff
	or	eax, 4
	cmp	eax, 4
	jne	.label_1018
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	xor	esi, esi
	mov	rdi, r15
	call	rpl_nanosleep
	test	eax, eax
	jne	.label_1019
.label_1018:
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a960

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
	je	.label_1023
	test	r15, r15
	jne	.label_1022
	cmp	byte ptr [rcx], 0
	je	.label_1022
	xor	eax, eax
	jmp	.label_1020
.label_1022:
	mov	al, 1
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.label_1021
	jnp	.label_1024
.label_1021:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_1024
.label_1023:
	xor	eax, eax
.label_1024:
	test	r15, r15
	je	.label_1020
	mov	qword ptr [r15], rcx
.label_1020:
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
	#Procedure 0x40a9e0

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
	jae	.label_1036
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_1033:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_1033
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_1026
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
	je	.label_1039
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_1046
	cmp	eax, 0x22
	jne	.label_1026
	mov	ebp, 1
.label_1046:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_1029
	jmp	.label_1031
.label_1039:
	test	r14, r14
	je	.label_1026
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_1026
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_1026
.label_1029:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_1031
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_1040
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_1028
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_1028
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_1028
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_1034
	cmp	eax, 0x44
	je	.label_1034
	cmp	eax, 0x69
	jne	.label_1028
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_1028
.label_1034:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_1028:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_1040
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_1027]
.label_1202:
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
	jmp	.label_1037
.label_1040:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_1038
.label_1203:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_1041
.label_1204:
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
	jmp	.label_1030
.label_1206:
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
	jmp	.label_1032
.label_1200:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_1035
.label_1201:
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
	jmp	.label_1030
.label_1205:
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
.label_1032:
	or	dl, r10b
.label_1037:
	or	dl, bl
.label_1030:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_1025
.label_1207:
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
	jmp	.label_1042
.label_1208:
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
.label_1042:
	movzx	eax, dl
.label_1041:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_1025
.label_1209:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_1035:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_1025
.label_1210:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_1025:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_1031:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_1038:
	mov	r13d, r15d
.label_1026:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1036:
	mov	edi, OFFSET FLAT:label_1043
	mov	esi, OFFSET FLAT:label_1044
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_1045
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b020

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1047
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1048
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1048
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1047:
	mov	ecx, 1
.label_1048:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b070

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_1069
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1069:
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
	ja	.label_1051
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1063
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1050
	test	esi, esi
	jne	.label_1051
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1052
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1055
.label_1051:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1053
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1050
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1062
.label_1063:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1049
.label_1050:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1066
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1067
.label_1066:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1067:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_1068:
	call	fcntl
.label_1049:
	mov	ebp, eax
.label_1056:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1062:
	cmp	eax, 6
	jne	.label_1053
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1058
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1060
.label_1053:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1061
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1065
.label_1052:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1055:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_1068
.label_1058:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1060:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_1059
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_1057
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1057
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1056
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_1064
.label_1057:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_1056
.label_1061:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1065:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1049
.label_1059:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_1064:
	test	al, al
	je	.label_1056
	test	ebp, ebp
	js	.label_1056
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1054
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1056
.label_1054:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_1056
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b310

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
	je	.label_1070
	cmp	r15, -2
	jb	.label_1070
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1070
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1070:
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
	#Procedure 0x40b370

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
	jb	.label_1071
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	jmp	.label_1073
.label_1071:
	mov	rbx, qword ptr [rdi]
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_1074:
	mov	qword ptr [rsp + 8], rcx
	cmp	rbx, 0x1fa401
	jl	.label_1072
	mov	qword ptr [rsp], 0x1fa400
	mov	rdi, r14
	mov	rsi, r15
	call	nanosleep
	add	rbx, -0x1fa400
	test	eax, eax
	mov	ecx, 0
	je	.label_1074
	test	r15, r15
	je	.label_1073
	add	qword ptr [r15], rbx
	jmp	.label_1073
.label_1072:
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp]
	mov	rsi, r15
	call	nanosleep
.label_1073:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b410

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	qword ptr [rip + c_locale_cache],  0
	jne	.label_1075
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_1076
	xor	edx, edx
	call	newlocale
	mov	qword ptr [rip + c_locale_cache],  rax
.label_1075:
	mov	rdx, qword ptr [rip + c_locale_cache]
	test	rdx, rdx
	je	.label_1078
	mov	rdi, r14
	mov	rsi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strtod_l
.label_1078:
	test	rbx, rbx
	je	.label_1077
	mov	qword ptr [rbx], r14
.label_1077:
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b470

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
	jne	.label_1080
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1079
	test	cl, cl
	jne	.label_1079
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_1079
.label_1080:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1079
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1079:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b4d0

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	movabs	rcx, 0x7fffffffffffffff
	xor	edx, edx
	ucomisd	xmm0, qword ptr [rip + label_1081]
	jbe	.label_1082
	mov	edx, 0x3b9ac9ff
	movsd	xmm1, qword ptr [rip + label_1083]
	ucomisd	xmm1, xmm0
	jbe	.label_1084
	cvttsd2si	rsi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rsi
	subsd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_1085]
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
.label_1084:
	mov	rax, rcx
	ret	
.label_1082:
	inc	rcx
	mov	rax, rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b580

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1087
	cmp	byte ptr [rax], 0x43
	jne	.label_1089
	cmp	byte ptr [rax + 1], 0
	je	.label_1086
.label_1089:
	mov	esi, OFFSET FLAT:label_1088
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1087
.label_1086:
	xor	ebx, ebx
.label_1087:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b5c0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_84
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1090
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b5f0

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
	#Procedure 0x40b600

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1091
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1093
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1091
.label_1093:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1091
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1092
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1092:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1091:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b680

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1094
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1094
	test	byte ptr [rbx + 1], 1
	je	.label_1094
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1094:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b6c0

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
	jne	.label_1095
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1095
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1096
.label_1095:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1096:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1097
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1097:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x40b730

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
